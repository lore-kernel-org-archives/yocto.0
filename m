Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5EFCE00B5F; Mon,  8 Apr 2019 22:48:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEB39E0091D
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 22:48:31 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id t16so8716671plo.0
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 22:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=sCxTmQvY/3ifKcYQGiMzJTntWUOt0mtyUhbT53dJz7w=;
	b=j3YnLXdzVUUrBrLFpy4Jp5BlnQjGpa7N28tp1M+4hWKrbHMMVB+GUTW/p00/i6tTxc
	5GT2vS6z+TVI4VmE5cETdvcH26+uWr9fhLnkV8hxVoVlyU5x3IbtVN6ptVQ6Y9uqVnI9
	mai4/dm2/8+C+ysmPthDHdakBHRZIJy7Ql0kqI27S1Hl1CbgtFkmcAsb/+SBd3tIs4NT
	cOCW//68Bp9HXGp4TmYhusJRh0h9c1kOPeQWUO6o52qpST3m2ds6M04DIc2x+92xF9V4
	StANHFKPndinHHiJbDVPcCnuMDmz9eRI1QYujr3UIA6Hc7uVUKmhc/v9c5ZARH045gfu
	iDrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=sCxTmQvY/3ifKcYQGiMzJTntWUOt0mtyUhbT53dJz7w=;
	b=i0cKbiCg7hgYf+CPa3QM52wAQzSJIReFZULAkwua5yibrxgi4l127TB+7UD50FPHVl
	P+rdgO8oy7UUuflrisY0tC9XMAJO6lHxwx5avcuT9klej4QBX8EuZqfwyIlIRkmfMz6p
	HlDU2nttDFpWlvMwq1xVQLXIZIv9G8fL0RahDWiEpXKuq4OX3aYquUv1V0DZZzSJPHKI
	XPs4QOatGCd3/axi36vkm85/Dc4F7P6MYihlYzyAvkQi94/DVZh0oXz2K8rlz7inhXlL
	l1uiUujv7z+x6YslNVYqi6sAVOH2ayJSEMj1ElR78nwYQILXtZpK0+HML4t1Rq1HUH2W
	BZXA==
X-Gm-Message-State: APjAAAVS84jb0t0Ye7KUeqGguQYycXULYY2RazRNUmmxMbwO0wNCd5ka
	4BHkQeB2jngIUABth37QmVxBRr9XcoI=
X-Google-Smtp-Source: APXvYqwUcDLbXkPXIx2MLSTucQ1JUZlMrJs6gFG8i7pn6RRNS+tNWQnnzxRwLbDhKB+IA80LjYFOJA==
X-Received: by 2002:a17:902:421:: with SMTP id
	30mr33719252ple.142.1554788910788; 
	Mon, 08 Apr 2019 22:48:30 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([182.72.92.62])
	by smtp.gmail.com with ESMTPSA id
	143sm64692278pge.50.2019.04.08.22.48.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 08 Apr 2019 22:48:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Apr 2019 11:18:15 +0530
Message-Id: <1554788895-5759-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] clamav: add clamav-cvd package for cvd db
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Apr 2019 05:48:34 -0000

Add native package to support creating a mirror
of the clamav cvd and supply it in a new package.

Provide a INSTALL_CLAMAV_CVD flag to bypass this creation

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb           |  41 +++-
 .../clamav/files/freshclam-native.conf             | 224 +++++++++++++++++++++
 2 files changed, 259 insertions(+), 6 deletions(-)
 create mode 100644 recipes-security/clamav/files/freshclam-native.conf

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 3fc48e7..32dc59c 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -4,8 +4,9 @@ HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "libtool db libmspack chrpath-replacement-native"
-
+DEPENDS = "libtool db libmspack chrpath-replacement-native clamav-native"
+DEPENDS_class-native = "db-native"
+ 
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
 SRCREV = "b66e5e27b48c0a07494f9df9b809ed933cede047"
@@ -15,6 +16,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
     file://freshclam.conf \
     file://volatiles.03_clamav \
     file://${BPN}.service \
+    file://freshclam-native.conf \
     "
 
 S = "${WORKDIR}/git"
@@ -28,6 +30,7 @@ inherit autotools-brokensep pkgconfig useradd systemd
 
 UID = "clamav"
 GID = "clamav"
+INSTALL_CLAMAV_CVD ?= "1"
 
 # Clamav has a built llvm version 2 but does not build with gcc 6.x,
 # disable the internal one. This is a known issue
@@ -58,12 +61,27 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
             --disable-rpath \
             "
 
+EXTRA_OECONF_class-native += "--without-libcheck-prefix --disable-unrar \
+            --with-system-llvm --with-llvm-linking=dynamic --disable-llvm \
+            --disable-mempool \
+            --program-prefix="" \
+            --disable-yara \
+            --without-libbz2-prefix --without-zlib \
+            "
+
 do_configure () {
     cd ${S}
     ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
+    install -d ${S}/clamav_db
 }
 
-do_compile_append() {
+do_configure_class-native () {
+    cd ${S}
+    ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
+}
+
+
+do_compile_append_class-target() {
     # brute force removing RPATH
     chrpath -d  ${B}/libclamav/.libs/libclamav.so.${SO_VER}
     chrpath -d  ${B}/sigtool/.libs/sigtool
@@ -72,9 +90,14 @@ do_compile_append() {
     chrpath -d  ${B}/clamconf/.libs/clamconf
     chrpath -d  ${B}/clamd/.libs/clamd
     chrpath -d  ${B}/freshclam/.libs/freshclam
+
+    if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
+        bbnote "CLAMAV creating cvd"
+        ${STAGING_BINDIR_NATIVE}/freshclam --datadir=${S}/clamav_db --config=${WORKDIR}/freshclam-native.conf
+    fi
 }
 
-do_install_append() {
+do_install_append_class-target () {
     install -d ${D}/${sysconfdir}
     install -d ${D}/${localstatedir}/lib/clamav
     install -d ${D}${sysconfdir}/clamav ${D}${sysconfdir}/default/volatiles
@@ -84,6 +107,7 @@ do_install_append() {
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
     rm ${D}/${libdir}/libclamav.so
+    install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
     fi
@@ -93,11 +117,11 @@ pkg_postinst_ontarget_${PN} () {
     if [ -e /etc/init.d/populate-volatile.sh ] ; then
         ${sysconfdir}/init.d/populate-volatile.sh update
     fi
-    chown ${UID}:${GID} ${localstatedir}/lib/clamav
+    chown -R ${UID}:${GID} ${localstatedir}/lib/clamav
 }
 
 
-PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc \
+PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc ${PN}-cvd \
             ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-staticdev"
 
 FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit \
@@ -140,6 +164,8 @@ FILES_${PN}-doc = "${mandir}/man/* \
                    ${datadir}/man/* \
                    ${docdir}/* "
 
+FILES_${PN}-cvd =  "${localstatedir}/lib/clamav/*.cvd ${localstatedir}/lib/clamav/*.dat"
+
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${UID}"
 USERADD_PARAM_${PN} = "--system -g ${GID} --home-dir  \
@@ -152,3 +178,6 @@ RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
 RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
+RDEPENDS_${PN}_class-native = ""
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-security/clamav/files/freshclam-native.conf b/recipes-security/clamav/files/freshclam-native.conf
new file mode 100644
index 0000000..aaa8cf4
--- /dev/null
+++ b/recipes-security/clamav/files/freshclam-native.conf
@@ -0,0 +1,224 @@
+# Path to the database directory.
+# WARNING: It must match clamd.conf's directive!
+# Default: hardcoded (depends on installation options)
+#DatabaseDirectory /var/lib/clamav
+
+# Path to the log file (make sure it has proper permissions)
+# Default: disabled
+#UpdateLogFile /var/log/clamav/freshclam.log
+
+# Maximum size of the log file.
+# Value of 0 disables the limit.
+# You may use 'M' or 'm' for megabytes (1M = 1m = 1048576 bytes)
+# and 'K' or 'k' for kilobytes (1K = 1k = 1024 bytes).
+# in bytes just don't use modifiers. If LogFileMaxSize is enabled,
+# log rotation (the LogRotate option) will always be enabled.
+# Default: 1M
+LogFileMaxSize 2M
+
+# Log time with each message.
+# Default: no
+LogTime yes
+
+# Enable verbose logging.
+# Default: no
+#LogVerbose yes
+
+# Use system logger (can work together with UpdateLogFile).
+# Default: no
+#LogSyslog yes
+
+# Specify the type of syslog messages - please refer to 'man syslog'
+# for facility names.
+# Default: LOG_LOCAL6
+#LogFacility LOG_MAIL
+
+# Enable log rotation. Always enabled when LogFileMaxSize is enabled.
+# Default: no
+#LogRotate yes
+
+# This option allows you to save the process identifier of the daemon
+# Default: disabled
+#PidFile /var/run/freshclam.pid
+
+# By default when started freshclam drops privileges and switches to the
+# "clamav" user. This directive allows you to change the database owner.
+# Default: clamav (may depend on installation options)
+DatabaseOwner clamav
+
+# Initialize supplementary group access (freshclam must be started by root).
+# Default: no
+#AllowSupplementaryGroups yes
+
+# Use DNS to verify virus database version. Freshclam uses DNS TXT records
+# to verify database and software versions. With this directive you can change
+# the database verification domain.
+# WARNING: Do not touch it unless you're configuring freshclam to use your
+# own database verification domain.
+# Default: current.cvd.clamav.net
+#DNSDatabaseInfo current.cvd.clamav.net
+
+# Uncomment the following line and replace XY with your country
+# code. See http://www.iana.org/cctld/cctld-whois.htm for the full list.
+# You can use db.XY.ipv6.clamav.net for IPv6 connections.
+#DatabaseMirror db.XY.clamav.net
+
+# database.clamav.net is a round-robin record which points to our most 
+# reliable mirrors. It's used as a fall back in case db.XY.clamav.net is 
+# not working. DO NOT TOUCH the following line unless you know what you
+# are doing.
+DatabaseMirror database.clamav.net
+
+# How many attempts to make before giving up.
+# Default: 3 (per mirror)
+#MaxAttempts 5
+
+# With this option you can control scripted updates. It's highly recommended
+# to keep it enabled.
+# Default: yes
+#ScriptedUpdates yes
+
+# By default freshclam will keep the local databases (.cld) uncompressed to
+# make their handling faster. With this option you can enable the compression;
+# the change will take effect with the next database update.
+# Default: no
+#CompressLocalDatabase no
+
+# With this option you can provide custom sources (http:// or file://) for
+# database files. This option can be used multiple times.
+# Default: no custom URLs
+#DatabaseCustomURL http://myserver.com/mysigs.ndb
+#DatabaseCustomURL file:///mnt/nfs/local.hdb
+
+# This option allows you to easily point freshclam to private mirrors.
+# If PrivateMirror is set, freshclam does not attempt to use DNS
+# to determine whether its databases are out-of-date, instead it will
+# use the If-Modified-Since request or directly check the headers of the
+# remote database files. For each database, freshclam first attempts
+# to download the CLD file. If that fails, it tries to download the
+# CVD file. This option overrides DatabaseMirror, DNSDatabaseInfo
+# and ScriptedUpdates. It can be used multiple times to provide
+# fall-back mirrors.
+# Default: disabled
+#PrivateMirror mirror1.mynetwork.com
+#PrivateMirror mirror2.mynetwork.com
+
+# Number of database checks per day.
+# Default: 12 (every two hours)
+#Checks 24
+
+# Proxy settings
+# Default: disabled
+#HTTPProxyServer myproxy.com
+#HTTPProxyPort 1234
+#HTTPProxyUsername myusername
+#HTTPProxyPassword mypass
+
+# If your servers are behind a firewall/proxy which applies User-Agent
+# filtering you can use this option to force the use of a different
+# User-Agent header.
+# Default: clamav/version_number
+#HTTPUserAgent SomeUserAgentIdString
+
+# Use aaa.bbb.ccc.ddd as client address for downloading databases. Useful for
+# multi-homed systems.
+# Default: Use OS'es default outgoing IP address.
+#LocalIPAddress aaa.bbb.ccc.ddd
+
+# Send the RELOAD command to clamd.
+# Default: no
+#NotifyClamd /path/to/clamd.conf
+
+# Run command after successful database update.
+# Default: disabled
+#OnUpdateExecute command
+
+# Run command when database update process fails.
+# Default: disabled
+#OnErrorExecute command
+
+# Run command when freshclam reports outdated version.
+# In the command string %v will be replaced by the new version number.
+# Default: disabled
+#OnOutdatedExecute command
+
+# Don't fork into background.
+# Default: no
+#Foreground yes
+
+# Enable debug messages in libclamav.
+# Default: no
+#Debug yes
+
+# Timeout in seconds when connecting to database server.
+# Default: 30
+#ConnectTimeout 60
+
+# Timeout in seconds when reading from database server.
+# Default: 30
+#ReceiveTimeout 60
+
+# With this option enabled, freshclam will attempt to load new
+# databases into memory to make sure they are properly handled
+# by libclamav before replacing the old ones.
+# Default: yes
+#TestDatabases yes
+
+# When enabled freshclam will submit statistics to the ClamAV Project about
+# the latest virus detections in your environment. The ClamAV maintainers
+# will then use this data to determine what types of malware are the most
+# detected in the field and in what geographic area they are.
+# Freshclam will connect to clamd in order to get recent statistics.
+# Default: no
+#SubmitDetectionStats /path/to/clamd.conf
+
+# Country of origin of malware/detection statistics (for statistical
+# purposes only). The statistics collector at ClamAV.net will look up
+# your IP address to determine the geographical origin of the malware
+# reported by your installation. If this installation is mainly used to
+# scan data which comes from a different location, please enable this
+# option and enter a two-letter code (see http://www.iana.org/domains/root/db/)
+# of the country of origin.
+# Default: disabled
+#DetectionStatsCountry country-code
+
+# This option enables support for our "Personal Statistics" service. 
+# When this option is enabled, the information on malware detected by
+# your clamd installation is made available to you through our website.
+# To get your HostID, log on http://www.stats.clamav.net and add a new
+# host to your host list. Once you have the HostID, uncomment this option
+# and paste the HostID here. As soon as your freshclam starts submitting
+# information to our stats collecting service, you will be able to view
+# the statistics of this clamd installation by logging into
+# http://www.stats.clamav.net with the same credentials you used to
+# generate the HostID. For more information refer to:
+# http://www.clamav.net/documentation.html#cctts 
+# This feature requires SubmitDetectionStats to be enabled.
+# Default: disabled
+#DetectionStatsHostID unique-id
+
+# This option enables support for Google Safe Browsing. When activated for
+# the first time, freshclam will download a new database file (safebrowsing.cvd)
+# which will be automatically loaded by clamd and clamscan during the next
+# reload, provided that the heuristic phishing detection is turned on. This
+# database includes information about websites that may be phishing sites or
+# possible sources of malware. When using this option, it's mandatory to run
+# freshclam at least every 30 minutes.
+# Freshclam uses the ClamAV's mirror infrastructure to distribute the
+# database and its updates but all the contents are provided under Google's
+# terms of use. See http://www.google.com/transparencyreport/safebrowsing
+# and http://www.clamav.net/documentation.html#safebrowsing 
+# for more information.
+# Default: disabled
+#SafeBrowsing yes
+
+# This option enables downloading of bytecode.cvd, which includes additional
+# detection mechanisms and improvements to the ClamAV engine.
+# Default: enabled
+#Bytecode yes
+
+# Download an additional 3rd party signature database distributed through
+# the ClamAV mirrors. 
+# This option can be used multiple times.
+#ExtraDatabase dbname1
+#ExtraDatabase dbname2
-- 
2.7.4


