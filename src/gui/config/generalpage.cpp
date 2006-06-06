/****************************************************************
 *  Vidalia is distributed under the following license:
 *
 *  Copyright (C) 2006,  Matt Edman, Justin Hipple
 *
 *  This program is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU General Public License
 *  as published by the Free Software Foundation; either version 2
 *  of the License, or (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, 
 *  Boston, MA  02110-1301, USA.
 ****************************************************************/

/** 
 * \file generalpage.cpp
 * \version $Id$
 */

#include "generalpage.h"

/** Constructor */
GeneralPage::GeneralPage(QWidget *parent)
: ConfigPage(parent)
{
  /* Invoke the Qt Designer generated object setup routine */
  ui.setupUi(this);

  /* Create settings objects */
  _vidaliaSettings = new VidaliaSettings;
  _torSettings = new TorSettings;
  
  /* Bind event to actions */
  connect(ui.btnBrowseTorExecutable, SIGNAL(clicked()), 
          this, SLOT(browseTorPath()));

  /* Hide platform specific features */
#ifndef Q_WS_WIN
  ui.chkRunWithSys->setVisible(false);
#endif
}

/** Destructor */
GeneralPage::~GeneralPage()
{
  delete _vidaliaSettings;
  delete _torSettings;
}

/* Open a QFileDialog to browse for Tor executable */
void
GeneralPage::browseTorPath()
{
#if defined(Q_OS_WIN32)
  QString filter = tr("Executables (*.exe)");
#else
  QString filter = "";
#endif
 
  /* Prompt the user for an executable file. If we're on windows, filter for
   * only .exe files. */
  QString filename = QDir::convertSeparators(
                          QFileDialog::getOpenFileName(this,
                              tr("Select Path to Tor"), 
                              ui.lineTorExecutable->text(),
                              filter));
  if (!filename.isEmpty()) {
    ui.lineTorExecutable->setText(filename);
  }
}

/* Saves all settings for this page */
bool
GeneralPage::save(QString &errmsg)
{
  Q_UNUSED(errmsg);
  _torSettings->setExecutable(ui.lineTorExecutable->text());
  _vidaliaSettings->setRunTorAtStart(ui.chkRunTor->isChecked());
  _vidaliaSettings->setRunVidaliaOnBoot(ui.chkRunWithSys->isChecked());
  return true;
}

/* Loads previously saved settings */
void
GeneralPage::load()
{
  ui.lineTorExecutable->setText(_torSettings->getExecutable());
  ui.chkRunTor->setChecked(_vidaliaSettings->runTorAtStart());
  ui.chkRunWithSys->setChecked(_vidaliaSettings->runVidaliaOnBoot());
}

