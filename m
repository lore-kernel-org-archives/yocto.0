Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B1514C81199
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 09:22:54 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Oct 2010 07:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,350,1283756400"; d="scan'208";a="848680969"
Received: from kyu3-hedt.bj.intel.com (HELO localhost) ([172.16.182.108])
	by fmsmga001.fm.intel.com with ESMTP; 19 Oct 2010 07:22:53 -0700
From: ke.yu@intel.com
To: yocto@yoctoproject.org
Date: Tue, 19 Oct 2010 22:26:49 +0800
Message-Id: <1287498409-12928-2-git-send-email-ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1287498409-12928-1-git-send-email-ke.yu@intel.com>
References: <1287498409-12928-1-git-send-email-ke.yu@intel.com>
Subject: [PATCH] sysklogd: correct the syslog link and conf file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 14:22:54 -0000

From: Yu Ke <ke.yu@intel.com>

This commit fix [BUGID #482]

Two issues cause bug 482:
- firsty, there are two version of syslog: sysklogd and busybox.
  the busybox one is directly installed as /etc/init.d/syslog,
  and the sysklogd one is installed by update-alternative. the
  update-alternative will thus fail because the /etc/init.d/syslog
  (busybox one) already exist and not a link. so the correct way
  is to install busybox one by update-alternative, the layout will be:
  /etc/init.d/syslog.busybox
  /etc/init.d/syslog.sysklogd
  /etc/init.d/syslog -> syslog.busybox or
  /etc/init.d/syslog -> syslog.sysklogd

- secondly, sysklogd default conf is not comply with poky. Its dir /var/adm/
  does not exist. Check the debian /etc/syslog.conf and find it is more
  sophiscated and suitable, so port /etc/syslog.conf from debian.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-core/busybox/busybox.inc            |   13 ++++-
 meta/recipes-core/busybox/busybox_1.16.2.bb      |    2 +-
 meta/recipes-extended/sysklogd/files/syslog.conf |   70 ++++++++++++++++++++++
 meta/recipes-extended/sysklogd/sysklogd.inc      |    3 +-
 meta/recipes-extended/sysklogd/sysklogd_1.5.bb   |    2 +-
 5 files changed, 86 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-extended/sysklogd/files/syslog.conf

diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index b3c6c66..b8c009c 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -53,7 +53,7 @@ do_install () {
 	# Move back the sh symlink
 	test -h ${D}/busybox${base_bindir}/sh && mv ${D}/busybox${base_bindir}/sh ${D}${base_bindir}/
 
-	install -m 0755 ${WORKDIR}/syslog ${D}${sysconfdir}/init.d/
+	install -m 0755 ${WORKDIR}/syslog ${D}${sysconfdir}/init.d/syslog.${PN}
 	install -m 644 ${WORKDIR}/syslog.conf ${D}${sysconfdir}/
 	if grep "CONFIG_CROND=y" ${WORKDIR}/defconfig; then
 		# Move crond back to /usr/sbin/crond
@@ -107,6 +107,8 @@ pkg_postinst_${PN} () {
 	
 	# This adds the links, remember that this has to work when building an image too, hence the $D
 	while read link; do case "$link" in /*/*/*) to="../../bin/busybox";; /bin/*) to="busybox";; /*/*) to="../bin/busybox";; esac; bn=`basename $link`; update-alternatives --install $link $bn $to 50; done <$D/etc/busybox.links
+
+	update-alternatives --install ${sysconfdir}/init.d/syslog syslog-init syslog.${PN} 50
 }
 
 pkg_prerm_${PN} () {
@@ -138,4 +140,13 @@ pkg_prerm_${PN} () {
 		bn=`basename $link`
 		sh /usr/bin/update-alternatives --remove $bn $to
 	done </etc/busybox.links
+
+	# remove syslog
+	if test "x$D" = "x"; then
+		if test "$1" = "upgrade" -o "$1" = "remove"; then
+			/etc/init.d/syslog stop
+		fi
+	fi
+
+	update-alternatives --remove syslog-init syslog.${PN}
 }
diff --git a/meta/recipes-core/busybox/busybox_1.16.2.bb b/meta/recipes-core/busybox/busybox_1.16.2.bb
index 0952f4d..80dbeab 100644
--- a/meta/recipes-core/busybox/busybox_1.16.2.bb
+++ b/meta/recipes-core/busybox/busybox_1.16.2.bb
@@ -1,5 +1,5 @@
 require busybox.inc
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://udhcpscript.patch \
diff --git a/meta/recipes-extended/sysklogd/files/syslog.conf b/meta/recipes-extended/sysklogd/files/syslog.conf
new file mode 100644
index 0000000..795d735
--- /dev/null
+++ b/meta/recipes-extended/sysklogd/files/syslog.conf
@@ -0,0 +1,70 @@
+#  /etc/syslog.conf	Configuration file for syslogd.
+#
+#  Ported from debian by Yu Ke <ke.yu@intel.com>
+#
+
+#
+# First some standard logfiles.  Log by facility.
+#
+
+auth,authpriv.*			/var/log/auth.log
+*.*;auth,authpriv.none		-/var/log/syslog
+#cron.*				/var/log/cron.log
+daemon.*			-/var/log/daemon.log
+kern.*				-/var/log/kern.log
+lpr.*				-/var/log/lpr.log
+mail.*				-/var/log/mail.log
+user.*				-/var/log/user.log
+
+#
+# Logging for the mail system.  Split it up so that
+# it is easy to write scripts to parse these files.
+#
+mail.info			-/var/log/mail.info
+mail.warn			-/var/log/mail.warn
+mail.err			/var/log/mail.err
+
+# Logging for INN news system
+#
+news.crit			/var/log/news/news.crit
+news.err			/var/log/news/news.err
+news.notice			-/var/log/news/news.notice
+
+#
+# Some `catch-all' logfiles.
+#
+*.=debug;\
+	auth,authpriv.none;\
+	news.none;mail.none	-/var/log/debug
+*.=info;*.=notice;*.=warn;\
+	auth,authpriv.none;\
+	cron,daemon.none;\
+	mail,news.none		-/var/log/messages
+
+#
+# Emergencies are sent to everybody logged in.
+#
+*.emerg				*
+
+#
+# I like to have messages displayed on the console, but only on a virtual
+# console I usually leave idle.
+#
+#daemon,mail.*;\
+#	news.=crit;news.=err;news.=notice;\
+#	*.=debug;*.=info;\
+#	*.=notice;*.=warn	/dev/tty8
+
+# The named pipe /dev/xconsole is for the `xconsole' utility.  To use it,
+# you must invoke `xconsole' with the `-file' option:
+#
+#    $ xconsole -file /dev/xconsole [...]
+#
+# NOTE: adjust the list below, or you'll go crazy if you have a reasonably
+#      busy site..
+#
+daemon.*;mail.*;\
+	news.err;\
+	*.=debug;*.=info;\
+	*.=notice;*.=warn	|/dev/xconsole
+
diff --git a/meta/recipes-extended/sysklogd/sysklogd.inc b/meta/recipes-extended/sysklogd/sysklogd.inc
index 76ab707..9bd7728 100644
--- a/meta/recipes-extended/sysklogd/sysklogd.inc
+++ b/meta/recipes-extended/sysklogd/sysklogd.inc
@@ -18,6 +18,7 @@ RDEPENDS_${PN}_append = " ${@base_conditional("ONLINE_PACKAGE_MANAGEMENT", "none
 SRC_URI = "http://www.infodrom.org/projects/sysklogd/download/sysklogd-${PV}.tar.gz \
            file://no-strip-install.patch \
            file://sysklogd \
+           file://syslog.conf \
            "
 
 INITSCRIPT_NAME = "syslog"
@@ -33,7 +34,7 @@ do_install () {
 	mv ${D}${base_sbindir}/syslogd ${D}${base_sbindir}/syslogd.${PN}
 	mv ${D}${base_sbindir}/klogd ${D}${base_sbindir}/klogd.${PN}
 	install -d ${D}${sysconfdir}
-	install -m 644 ${S}/syslog.conf ${D}${sysconfdir}/syslog.conf
+	install -m 644 ${WORKDIR}/syslog.conf ${D}${sysconfdir}/syslog.conf
 	install -d ${D}${sysconfdir}/init.d
 	install -m 755 ${WORKDIR}/sysklogd ${D}${sysconfdir}/init.d/syslog.${PN}
 }
diff --git a/meta/recipes-extended/sysklogd/sysklogd_1.5.bb b/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
index 8344e27..27146c7 100644
--- a/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
+++ b/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
@@ -1,2 +1,2 @@
 require sysklogd.inc
-PR = "r0"
+PR = "r1"
-- 
1.7.0.4


