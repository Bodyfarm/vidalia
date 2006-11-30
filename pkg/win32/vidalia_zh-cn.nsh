;; $Id: $
;; 
;; Vidalia installer and bundle English translation
;; 
;; All translations should be derived from this file.
;;
;; To translate this file:
;;   
;;    1) Copy this file (vidalia_en.nsh), creating a new file with "en"
;;       replaced by the two-letter language code of your translated language.
;;       For example, if you are creating a German translation, your new file
;;       would be named "vidalia_de.nsh".
;;
;;    2) Replace all ${LANG_ENGLISH} tags with whatever language you are
;;       translating this file into. For example, if you are creating a German
;;       translation, all ${LANG_ENGLISH} tags would become ${LANG_GERMAN}.
;;
;;    3) Translate the quoted strings. You can move string replacement tags
;;       (e.g., ${BUNDLE_NAME}) around within the quoted strings, but you 
;;       should not alter the tags themselves.
;;
;; Your resulting file should use a non-Unicode character encoding, since NSIS 
;; does not support Unicode.
;; 


; Bundle
LangString BundleSetupCaption         ${LANG_CHINESE} "��װ ${BUNDLE_NAME}"
LangString BundleWelcomeText          ${LANG_CHINESE} "���򵼽�ָ������ΰ�װ Tor��Vidalia��Privoxy �� Torbutton��\r\n\r\n�����������װ�� Tor��Vidalia �� Firefox���ڼ�����װǰ��ȷ������û�����С�\r\n\r\n$_CLICK"
LangString BundleWelcomeTitle         ${LANG_CHINESE} "��ӭ���� ${BUNDLE_NAME} ��װ��"
LangString BundleLinkText             ${LANG_CHINESE} "${TOR_NAME} ��װ�ĵ�"
LangString BundleFinishText           ${LANG_CHINESE} "��װ�Ѿ�������r\n����� http://tor.eff.org/docs/tor-doc-win32.html ѧϰ����������Ӧ�ó���ʹ�� Tor��\r\n\r\n�����װ�� Torbutton������Ҫ�������� Firefox��"
LangString BundleRunNow               ${LANG_CHINESE} "�������а�װ�Ĳ���"

; Vidalia
LangString VidaliaGroupDesc           ${LANG_CHINESE} "��װ ${VIDALIA_DESC}��"
LangString VidaliaSetupCaption        ${LANG_CHINESE} "��װ ${VIDALIA_NAME}"
LangString VidaliaWelcomeText         ${LANG_CHINESE} "���򵼽�ָ������ΰ�װ ${VIDALIA_DESC}��\r\n\r\n$_CLICK"
LangString VidaliaWelcomeTitle        ${LANG_CHINESE} "��ӭ���� ${VIDALIA_NAME} ��װ��"
LangString VidaliaLinkText            ${LANG_CHINESE} "${VIDALIA_NAME} ��ҳ"
LangString VidaliaAppDesc             ${LANG_CHINESE} "��װ ${VIDALIA_DESC}��"
LangString VidaliaStartup             ${LANG_CHINESE} "����ʱ����"
LangString VidaliaStartupDesc         ${LANG_CHINESE} "ϵͳ����ʱ�Զ����� ${VIDALIA_NAME}��"
LangString VidaliaShortcuts           ${LANG_CHINESE} "��ӵ���ʼ�˵�"
LangString VidaliaShortcutsDesc       ${LANG_CHINESE} "�� ${VIDALIA_NAME} ��ӵ���Ŀ�ʼ�˵���"
LangString VidaliaRunNow              ${LANG_CHINESE} "�������� ${VIDALIA_NAME}"

; Tor
LangString TorGroupDesc               ${LANG_CHINESE} "��װ ${TOR_DESC}��"
LangString TorAppDesc                 ${LANG_CHINESE} "��װ ${TOR_DESC}��"
LangString TorAskOverwriteTorrc       ${LANG_CHINESE} "������һ�� Tor �����ļ���$\r$\n������ȱʡ��ʾ�������ļ�������"
LangString TorOpenSSL                 ${LANG_CHINESE} "OpenSSL ${OPENSSL_APPVERSION}"
LangString TorOpenSSLDesc             ${LANG_CHINESE} "��װ ${OPENSSL_DESC}��"
LangString TorDocumentation           ${LANG_CHINESE} "�ĵ�"
LangString TorDocumentationDesc       ${LANG_CHINESE} "��װ ${TOR_NAME} �ĵ���"
LangString TorShortcuts               ${LANG_CHINESE} "��ӵ���ʼ�˵�"
LangString TorShortcutsDesc           ${LANG_CHINESE} "�� ${TOR_NAME} ��ӵ���Ŀ�ʼ�˵���"

; Privoxy
LangString PrivoxyGroupDesc           ${LANG_CHINESE} "��װ ${PRIVOXY_DESC}"
LangString PrivoxyAppDesc             ${LANG_CHINESE} "��װ ${PRIVOXY_DESC}��"
LangString PrivoxyShortcuts           ${LANG_CHINESE} "��ӵ���ʼ�˵�"
LangString PrivoxyShortcutsDesc       ${LANG_CHINESE} "�� ${PRIVOXY_NAME} ��ӵ���Ŀ�ʼ�˵���"
LangString PrivoxyStartup             ${LANG_CHINESE} "����ʱ����"
LangString PrivoxyStartupDesc         ${LANG_CHINESE} "ϵͳ����ʱ�Զ����� ${PRIVOXY_NAME}��"

; Torbutton
LangString TorbuttonGroupDesc         ${LANG_CHINESE} "��װ ${TORBUTTON_DESC}��"
LangString TorbuttonAppDesc           ${LANG_CHINESE} "��װ ${TORBUTTON_DESC}��"
LangString TorbuttonAddToFirefox      ${LANG_CHINESE} "��ӵ� Firefox"
LangString TorbuttonAddToFirefoxDesc  ${LANG_CHINESE} "�� ${TORBUTTON_DESC} ��չ��ӵ� Firefox��"
LangString TorbuttonFirefoxNotFound   ${LANG_CHINESE} "���ϵͳ��û���ҵ� Firefox��Torbutton ������װ��"
