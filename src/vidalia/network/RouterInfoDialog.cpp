/*
**  This file is part of Vidalia, and is subject to the license terms in the
**  LICENSE file, found in the top level directory of this distribution. If you
**  did not receive the LICENSE file with this file, you may obtain it from the
**  Vidalia source package distributed by the Vidalia Project at
**  http://www.torproject.org/projects/vidalia.html. No part of Vidalia,
**  including this file, may be copied, modified, propagated, or distributed
**  except according to the terms described in the LICENSE file.
*/

/*
** \file RouterInfoDialog.cpp
** \brief Displays detailed information about a particular router
*/

#include "RouterInfoDialog.h"

#include "stringutil.h"


RouterInfoDialog::RouterInfoDialog(QWidget *parent)
  : QDialog(parent)
{
  ui.setupUi(this);
}

quint64
RouterInfoDialog::adjustUptime(quint64 uptime, const QDateTime &published)
{
  QDateTime now = QDateTime::currentDateTime().toUTC();

  if (now < published)
    return uptime;

  return (uptime + (now.toTime_t() - published.toTime_t()));
}

void
RouterInfoDialog::setRouterInfo(const QStringList &desc,
                                const RouterStatus &status)
{
  RouterDescriptor rd(desc);

  ui.lblName->setText(rd.name());
  ui.lblIPAddress->setText(rd.ip().toString());
  ui.lblPlatform->setText(rd.platform());
  ui.lblBandwidth->setText(string_format_bandwidth(rd.observedBandwidth()));
  ui.lblLastUpdated->setText(string_format_datetime(rd.published()) + " GMT");
  ui.lblUptime->setText(string_format_uptime(adjustUptime(rd.uptime(),
                                                          rd.published())));

  if (rd.hibernating()) {
    ui.lblStatus->setText(tr("Hibernating"));
  } else if (status.isValid()) {
    if (status.flags() & RouterStatus::Running)
      ui.lblStatus->setText(tr("Online"));
    else
      ui.lblStatus->setText(tr("Offline"));
  } else {
    ui.lblStatus->setText(tr("Unknown"));
  }

  if (! rd.contact().isEmpty()) {
    ui.lblContact->setText(rd.contact());
  } else {
    ui.lblContact->setVisible(false);
    ui.lblContactLabel->setVisible(false);
  }

  ui.textDescriptor->setPlainText(desc.join("\n"));
}

void
RouterInfoDialog::setLocation(const QString &location)
{
  ui.lblLocation->setText(location);
}

