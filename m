Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 785DBE00A30; Mon, 31 Oct 2016 11:26:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97350E00BC3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:26:16 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id n85so9349024pfi.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=sIHL36tWpAwYSmYidP2W3DRdOpJttEnpV5KPEwIulXM=;
	b=ynMDX90qfYmzuomhMJejuKrb7LCws/x1A9T2mToVE+ULtaoK3NxCunccBaq6cxjLbj
	6WC+jtKaYFTBc1dUK/HKzm9Ezg0GzQoGp/S2ar6c7aRryZKrqbKt6fm82yAbRE/5E06I
	rehkLi+cereEckmnt1hUhCzU2GCFAYOW4mtMtvvC97GfN3uzHrCJX2X9Cdj6wXZNm1nm
	/YQakKgbonbRmgrffTd+UOiNUIrR9aPb7ypNVyw9MN+dUH2kkycbMioWVA4rvxet6QW1
	CY6WsRbZoJI7SpOW5mbiBSm3hJvdLo/pI0w9aVsnCRDStrEXQ0RJMeHaMoqDZ8ytejKQ
	Oi7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=sIHL36tWpAwYSmYidP2W3DRdOpJttEnpV5KPEwIulXM=;
	b=SpCe8n0XkxxcHRmqofyGXnicuz7PMfqdgHhyTNtQKNkAQNK4aGwsxVe56YCGDesLee
	XOxuWvx7IkCo1MeIWo4+FjHQKw7nM9Ch/6GlV0Rdhg5cB3l3sio2Z69ajPdsU9pc30t9
	NXsWCu8vzBCin6QDvNpX1iAOJCZTafgoJjNaySwZj9SoM2EM/CtjAMXHBYMdGT0BDxF+
	Q5sszr72/blNNj+GB+iWZts4LIILAKbQAgVpDWXY51VPMLTmjBK5tfWxfR8TXD0rG1AT
	Eg34QT4GkW/NB4v9HKbk1m29bfgHd//VVXme9j3YERjsWIe7gz5+POAEAj+WsoAIsuB6
	nZaw==
X-Gm-Message-State: ABUngvcCAqCOrAkUhWB0YKcKs51h+ZeqiQoIA/eDjMMsLV+R0XsCwpzEOrD3wnkodrwDIA==
X-Received: by 10.98.130.194 with SMTP id w185mr24152320pfd.101.1477938375896; 
	Mon, 31 Oct 2016 11:26:15 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:a515:1856:7377:d74f])
	by smtp.gmail.com with ESMTPSA id
	qy2sm37183770pab.27.2016.10.31.11.26.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 11:26:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 11:26:13 -0700
Message-Id: <1477938373-9937-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1477938373-9937-1-git-send-email-akuster808@gmail.com>
References: <1477938373-9937-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][WIP]PATCH 2/2] apparmor: Add new package
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
X-List-Received-Date: Mon, 31 Oct 2016 18:26:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/AppArmor/apparmor_2.10.95.bb     | 116 +++++++++
 recipes-security/AppArmor/files/apparmor          | 211 +++++++++++++++++
 recipes-security/AppArmor/files/apparmor.rc       |  98 ++++++++
 recipes-security/AppArmor/files/apparmor.service  |  22 ++
 recipes-security/AppArmor/files/disable_pdf.patch |  33 +++
 recipes-security/AppArmor/files/functions         | 271 ++++++++++++++++++++++
 6 files changed, 751 insertions(+)
 create mode 100644 recipes-security/AppArmor/apparmor_2.10.95.bb
 create mode 100644 recipes-security/AppArmor/files/apparmor
 create mode 100644 recipes-security/AppArmor/files/apparmor.rc
 create mode 100644 recipes-security/AppArmor/files/apparmor.service
 create mode 100644 recipes-security/AppArmor/files/disable_pdf.patch
 create mode 100644 recipes-security/AppArmor/files/functions

diff --git a/recipes-security/AppArmor/apparmor_2.10.95.bb b/recipes-security/AppArmor/apparmor_2.10.95.bb
new file mode 100644
index 0000000..de09e29
--- /dev/null
+++ b/recipes-security/AppArmor/apparmor_2.10.95.bb
@@ -0,0 +1,116 @@
+SUMMARY = "AppArmor another MAC control system"
+DESCRIPTION = "user-space parser utility for AppArmor \
+ This provides the system initialization scripts needed to use the \
+ AppArmor Mandatory Access Control system, including the AppArmor Parser \
+ which is required to convert AppArmor text profiles into machine-readable \
+ policies that are loaded into the kernel for use with the AppArmor Linux \
+ Security Module."
+HOMEAPAGE = "http://apparmor.net/"
+SECTION = "admin"
+
+LICENSE = "GPLv2 & GPLv2+ & BSD-3-Clause & LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
+
+DEPENDS = "bison-native apr apache2"
+
+SRC_URI = " \
+	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
+	file://disable_pdf.patch \
+	file://apparmor.rc \
+	file://functions \
+	file://apparmor \
+	file://apparmor.service \
+	"
+
+SRC_URI[md5sum] = "71a13b9d6ae0bca4f5375984df1a51e7"
+SRC_URI[sha256sum] = "3f659a599718f4a5e2a33140916715f574a5cb3634a6b9ed6d29f7b0617e4d1a"
+
+PARALLEL_MAKE = ""
+
+inherit pkgconfig autotools-brokensep update-rc.d python-dir ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+
+S = "${WORKDIR}/apparmor-${PV}"
+
+PACKAGECONFIG ?="man"
+PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
+
+PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
+
+do_configure() {
+	cd ${S}/libraries/libapparmor
+	autoconf --force
+	libtoolize --automake -c
+	automake -ac
+	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+	sed -i -e 's#^YACC.*#YACC := bison#' ${S}/parser/Makefile
+	sed -i -e 's#^LEX.*#LEX := flex#' ${S}/parser/Makefile
+}
+
+do_compile () {
+	cd ${S}/libraries/libapparmor
+	oe_runmake
+        cd ${S}/binutils
+        oe_runmake
+        cd ${S}/utils
+        oe_runmake
+	cd ${S}/parser
+        oe_runmake
+	cd ${S}/profiles
+        oe_runmake
+
+ 	cd ${S}/changehat/mod_apparmor
+        oe_runmake
+
+	if test -z "${PAMLIB}" ; then
+		cd ${S}/changehat/pam_apparmor
+        	oe_runmake
+	fi
+}
+
+do_install () {
+	install -d ${D}/${INIT_D_DIR}
+	install -d ${D}/lib/apparmor
+		
+	cd ${S}/libraries/libapparmor
+	oe_runmake DESTDIR="${D}" install
+
+        cd ${S}/binutils
+	oe_runmake DESTDIR="${D}" install
+
+        cd ${S}/utils
+	oe_runmake DESTDIR="${D}" install
+
+	cd ${S}/parser
+	oe_runmake DESTDIR="${D}" install
+
+	cd ${S}/profiles
+	oe_runmake DESTDIR="${D}" install
+
+ 	cd ${S}/changehat/mod_apparmor
+	oe_runmake DESTDIR="${D}" install
+
+	if test -z "${PAMLIB}" ; then
+		cd ${S}/changehat/pam_apparmor
+		oe_runmake DESTDIR="${D}" install
+	fi
+
+	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
+
+	install ${WORKDIR}/functions ${D}/lib/apparmor
+}
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME = "apparmor"
+INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "apparmor.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+PACKAGES += "python-${PN} mod-${PN}"
+
+FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor"
+FILES_mod-${PN} = "${libdir}/apache2/modules/*"
+FILES_python-${PN} = "${PYTHON_SITEPACKAGES_DIR}"
+
+RDEPENDS_${PN} += "bash perl"
diff --git a/recipes-security/AppArmor/files/apparmor b/recipes-security/AppArmor/files/apparmor
new file mode 100644
index 0000000..c73c1ce
--- /dev/null
+++ b/recipes-security/AppArmor/files/apparmor
@@ -0,0 +1,211 @@
+#!/bin/sh
+# ----------------------------------------------------------------------
+#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
+#     NOVELL (All rights reserved)
+#    Copyright (c) 2008, 2009 Canonical, Ltd.
+#
+#    This program is free software; you can redistribute it and/or
+#    modify it under the terms of version 2 of the GNU General Public
+#    License published by the Free Software Foundation.
+#
+#    This program is distributed in the hope that it will be useful,
+#    but WITHOUT ANY WARRANTY; without even the implied warranty of
+#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+#    GNU General Public License for more details.
+#
+#    You should have received a copy of the GNU General Public License
+#    along with this program; if not, contact Novell, Inc.
+# ----------------------------------------------------------------------
+# Authors:
+#  Steve Beattie <steve.beattie@canonical.com>
+#  Kees Cook <kees@ubuntu.com>
+#
+# /etc/init.d/apparmor
+#
+### BEGIN INIT INFO
+# Provides: apparmor
+# Required-Start: $local_fs
+# Required-Stop: umountfs
+# Default-Start: S
+# Default-Stop:
+# Short-Description: AppArmor initialization
+# Description: AppArmor init script. This script loads all AppArmor profiles.
+### END INIT INFO
+
+. /lib/apparmor/functions
+. /lib/lsb/init-functions
+
+usage() {
+    echo "Usage: $0 {start|stop|restart|reload|force-reload|status|recache}"
+}
+
+test -x ${PARSER} || exit 0 # by debian policy
+# LSM is built-in, so it is either there or not enabled for this boot
+test -d /sys/module/apparmor || exit 0
+
+securityfs() {
+	# Need securityfs for any mode
+	if [ ! -d "${AA_SFS}" ]; then
+		if cut -d" " -f2,3 /proc/mounts | grep -q "^${SECURITYFS} securityfs"'$' ; then
+			log_action_msg "AppArmor not available as kernel LSM."
+			log_end_msg 1
+			exit 1
+		else
+			log_action_begin_msg "Mounting securityfs on ${SECURITYFS}"
+			if ! mount -t securityfs none "${SECURITYFS}"; then
+				log_action_end_msg 1
+				log_end_msg 1
+				exit 1
+			fi
+		fi
+	fi
+	if [ ! -w "$AA_SFS"/.load ]; then
+		log_action_msg "Insufficient privileges to change profiles."
+		log_end_msg 1
+		exit 1
+	fi
+}
+
+handle_system_policy_package_updates() {
+	apparmor_was_updated=0
+
+	if ! compare_previous_version ; then
+		# On snappy flavors, if the current and previous versions are
+		# different then clear the system cache. snappy will handle
+		# "$PROFILES_CACHE_VAR" itself (on Touch flavors
+		# compare_previous_version always returns '0' since snappy
+		# isn't available).
+		clear_cache_system
+		apparmor_was_updated=1
+	elif ! compare_and_save_debsums apparmor ; then
+		# If the system policy has been updated since the last time we
+		# ran, clear the cache to prevent potentially stale binary
+		# cache files after an Ubuntu image based upgrade (LP:
+		# #1350673). This can be removed once all system image flavors
+		# move to snappy (on snappy systems compare_and_save_debsums
+		# always returns '0' since /var/lib/dpkg doesn't exist).
+		clear_cache
+		apparmor_was_updated=1
+	fi
+
+	if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
+		# If packages for system policy that affect click packages have
+		# been updated since the last time we ran, run aa-clickhook -f
+                force_clickhook=0
+                force_profile_hook=0
+                if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
+                        force_clickhook=1
+                fi
+                if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
+                        force_clickhook=1
+                fi
+                if ! compare_and_save_debsums click-apparmor ; then
+                        force_clickhook=1
+                        force_profile_hook=1
+                fi
+                if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
+                        aa-clickhook -f
+                fi
+                if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
+                        aa-profile-hook -f
+                fi
+	fi
+}
+
+# Allow "recache" even when running on the liveCD
+if [ "$1" = "recache" ]; then
+	log_daemon_msg "Recaching AppArmor profiles"
+	recache_profiles
+	rc=$?
+	log_end_msg "$rc"
+	exit $rc
+fi
+
+# do not perform start/stop/reload actions when running from liveCD
+test -d /rofs/etc/apparmor.d && exit 0
+
+rc=255
+case "$1" in
+	start)
+		if systemd-detect-virt --quiet --container && \
+		   ! is_container_with_internal_policy; then
+			log_daemon_msg "Not starting AppArmor in container"
+			log_end_msg 0
+			exit 0
+		fi
+		log_daemon_msg "Starting AppArmor profiles"
+		securityfs
+		# That is only useful for click, snappy and system images,
+		# i.e. not in Debian. And it reads and writes to /var, that
+		# can be remote-mounted, so it would prevent us from using
+		# Before=sysinit.target without possibly introducing dependency
+		# loops.
+		handle_system_policy_package_updates
+		load_configured_profiles
+		rc=$?
+		log_end_msg "$rc"
+		;;
+	stop)
+		log_daemon_msg "Clearing AppArmor profiles cache"
+		clear_cache
+		rc=$?
+		log_end_msg "$rc"
+		cat >&2 <<EOM
+All profile caches have been cleared, but no profiles have been unloaded.
+Unloading profiles will leave already running processes permanently
+unconfined, which can lead to unexpected situations.
+
+To set a process to complain mode, use the command line tool
+'aa-complain'. To really tear down all profiles, run the init script
+with the 'teardown' option."
+EOM
+		;;
+	teardown)
+		if systemd-detect-virt --quiet --container && \
+		   ! is_container_with_internal_policy; then
+			log_daemon_msg "Not tearing down AppArmor in container"
+			log_end_msg 0
+			exit 0
+		fi
+		log_daemon_msg "Unloading AppArmor profiles"
+		securityfs
+		running_profile_names | while read profile; do
+			if ! unload_profile "$profile" ; then
+				log_end_msg 1
+				exit 1
+			fi
+		done
+		rc=0
+		log_end_msg $rc
+		;;
+	restart|reload|force-reload)
+		if systemd-detect-virt --quiet --container && \
+		   ! is_container_with_internal_policy; then
+			log_daemon_msg "Not reloading AppArmor in container"
+			log_end_msg 0
+			exit 0
+		fi
+		log_daemon_msg "Reloading AppArmor profiles"
+		securityfs
+		clear_cache
+		load_configured_profiles
+		rc=$?
+		unload_obsolete_profiles
+
+		log_end_msg "$rc"
+		;;
+	status)
+		securityfs
+		if [ -x /usr/sbin/aa-status ]; then
+			aa-status --verbose
+		else
+			cat "$AA_SFS"/profiles
+		fi
+		rc=$?
+		;;
+	*)
+		usage
+		rc=1
+		;;
+	esac
+exit $rc
diff --git a/recipes-security/AppArmor/files/apparmor.rc b/recipes-security/AppArmor/files/apparmor.rc
new file mode 100644
index 0000000..1507d7b
--- /dev/null
+++ b/recipes-security/AppArmor/files/apparmor.rc
@@ -0,0 +1,98 @@
+description "Pre-cache and pre-load apparmor profiles"
+author "Dimitri John Ledkov <xnox@ubuntu.com> and Jamie Strandboge <jamie@ubuntu.com>"
+
+task
+
+start on starting rc-sysinit
+
+script
+    [ -d /rofs/etc/apparmor.d ]  && exit 0 # do not load on liveCD
+    [ -d /sys/module/apparmor ]  || exit 0 # do not load without AppArmor
+    [ -x /sbin/apparmor_parser ] || exit 0 # do not load without parser
+
+    . /lib/apparmor/functions
+
+    systemd-detect-virt --quiet --container && ! is_container_with_internal_policy && exit 0 || true
+
+    # Need securityfs for any mode
+    if [ ! -d /sys/kernel/security/apparmor ]; then
+        if cut -d" " -f2,3 /proc/mounts | grep -q "^/sys/kernel/security securityfs"'$' ; then
+            exit 0
+        else
+            mount -t securityfs none /sys/kernel/security || exit 0
+        fi
+    fi
+
+    [ -w /sys/kernel/security/apparmor/.load ] || exit 0
+
+    apparmor_was_updated=0
+    if ! compare_previous_version ; then
+        # On snappy flavors, if the current and previous versions are
+        # different then clear the system cache. snappy will handle
+        # "$PROFILES_CACHE_VAR" itself  (on Touch flavors
+        # compare_previous_version  always returns '0' since snappy
+        # isn't available).
+        clear_cache_system
+        apparmor_was_updated=1
+    elif ! compare_and_save_debsums apparmor ; then
+        # If the system policy has been updated since the last time we
+        # ran, clear the cache to prevent potentially stale binary
+        # cache files after an Ubuntu image based upgrade (LP:
+        # #1350673). This can be removed once all system image flavors
+        # move to snappy (on snappy systems compare_and_save_debsums
+        # always returns '0' since /var/lib/dpkg doesn't exist).
+        clear_cache
+        apparmor_was_updated=1
+    fi
+
+    if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
+        # If packages for system policy that affect click packages have
+        # been updated since the last time we ran, run aa-clickhook -f
+        force_clickhook=0
+        force_profile_hook=0
+        if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
+            force_clickhook=1
+        fi
+        if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
+            force_clickhook=1
+        fi
+        if ! compare_and_save_debsums click-apparmor ; then
+            force_clickhook=1
+            force_profile_hook=1
+        fi
+        if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
+            aa-clickhook -f
+        fi
+        if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
+            aa-profile-hook -f
+        fi
+    fi
+
+    if [ "$ACTION" = "teardown" ]; then
+        running_profile_names | while read profile; do
+            unload_profile "$profile"
+        done
+        exit 0
+    fi
+
+    if [ "$ACTION" = "clear" ]; then
+        clear_cache
+        exit 0
+    fi
+
+    if [ "$ACTION" = "reload" ] || [ "$ACTION" = "force-reload" ]; then
+        clear_cache
+        load_configured_profiles
+	unload_obsolete_profiles
+        exit 0
+    fi
+
+    # Note: if apparmor-easyprof-ubuntu md5sums didn't match up above,
+    # aa-clickhook will have already compiled the policy, generated the cache
+    # files and loaded them into the kernel by this point, so reloading click
+    # policy from cache, while fairly fast (<2 seconds for 250 profiles on
+    # armhf), is redundant. Fixing this would complicate the logic quite a bit
+    # and it wouldn't improve the (by far) common case (ie, when
+    # 'aa-clickhook -f' is not run).
+    load_configured_profiles
+end script
diff --git a/recipes-security/AppArmor/files/apparmor.service b/recipes-security/AppArmor/files/apparmor.service
new file mode 100644
index 0000000..e66afe4
--- /dev/null
+++ b/recipes-security/AppArmor/files/apparmor.service
@@ -0,0 +1,22 @@
+[Unit]
+Description=AppArmor initialization
+After=local-fs.target
+Before=sysinit.target
+AssertPathIsReadWrite=/sys/kernel/security/apparmor/.load
+ConditionSecurity=apparmor
+DefaultDependencies=no
+Documentation=man:apparmor(7)
+Documentation=http://wiki.apparmor.net/
+
+# Don't start this unit on the Ubuntu Live CD
+ConditionPathExists=!/rofs/etc/apparmor.d
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+ExecStart=/etc/init.d/apparmor start
+ExecStop=/etc/init.d/apparmor stop
+ExecReload=/etc/init.d/apparmor reload
+
+[Install]
+WantedBy=sysinit.target
diff --git a/recipes-security/AppArmor/files/disable_pdf.patch b/recipes-security/AppArmor/files/disable_pdf.patch
new file mode 100644
index 0000000..c6b4bdd
--- /dev/null
+++ b/recipes-security/AppArmor/files/disable_pdf.patch
@@ -0,0 +1,33 @@
+Index: apparmor-2.10.95/parser/Makefile
+===================================================================
+--- apparmor-2.10.95.orig/parser/Makefile
++++ apparmor-2.10.95/parser/Makefile
+@@ -139,17 +139,6 @@ export Q VERBOSE BUILD_OUTPUT
+ po/${NAME}.pot: ${SRCS} ${HDRS}
+ 	$(MAKE) -C po ${NAME}.pot NAME=${NAME} SOURCES="${SRCS} ${HDRS}"
+ 
+-techdoc.pdf: techdoc.tex
+-	timestamp=$(shell date --utc "+%Y%m%d%H%M%S%z" -r $< );\
+-	while pdflatex "\def\fixedpdfdate{$$timestamp}\input $<" ${BUILD_OUTPUT} || exit 1 ; \
+-		grep -q "Label(s) may have changed" techdoc.log; \
+-	do :; done
+-
+-techdoc/index.html: techdoc.pdf
+-	latex2html -show_section_numbers -split 0 -noinfo -nonavigation -noaddress techdoc.tex ${BUILD_OUTPUT}
+-
+-techdoc.txt: techdoc/index.html
+-	w3m -dump $< > $@
+ 
+ # targets arranged this way so that people who don't want full docs can
+ # pick specific targets they want.
+@@ -159,9 +148,7 @@ manpages:	$(MANPAGES)
+ 
+ htmlmanpages:	$(HTMLMANPAGES)
+ 
+-pdf:	techdoc.pdf
+-
+-docs:	manpages htmlmanpages pdf
++docs:	manpages htmlmanpages 
+ 
+ indep: docs
+ 	$(Q)$(MAKE) -C po all
diff --git a/recipes-security/AppArmor/files/functions b/recipes-security/AppArmor/files/functions
new file mode 100644
index 0000000..cef8cfe
--- /dev/null
+++ b/recipes-security/AppArmor/files/functions
@@ -0,0 +1,271 @@
+# /lib/apparmor/functions for Debian -*- shell-script -*-
+# ----------------------------------------------------------------------
+#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
+#     NOVELL (All rights reserved)
+#    Copyright (c) 2008-2010 Canonical, Ltd.
+#
+#    This program is free software; you can redistribute it and/or
+#    modify it under the terms of version 2 of the GNU General Public
+#    License published by the Free Software Foundation.
+#
+#    This program is distributed in the hope that it will be useful,
+#    but WITHOUT ANY WARRANTY; without even the implied warranty of
+#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+#    GNU General Public License for more details.
+#
+#    You should have received a copy of the GNU General Public License
+#    along with this program; if not, contact Novell, Inc.
+# ----------------------------------------------------------------------
+# Authors:
+#  Kees Cook <kees@ubuntu.com>
+
+PROFILES="/etc/apparmor.d"
+PROFILES_CACHE="$PROFILES/cache"
+PROFILES_VAR="/var/lib/apparmor/profiles"
+PROFILES_SNAPPY="/var/lib/snapd/apparmor/profiles"
+PROFILES_CACHE_VAR="/var/cache/apparmor"
+PARSER="/sbin/apparmor_parser"
+SECURITYFS="/sys/kernel/security"
+export AA_SFS="$SECURITYFS/apparmor"
+
+# Suppress warnings when booting in quiet mode
+quiet_arg=""
+[ "${QUIET:-no}" = yes ] && quiet_arg="-q"
+[ "${quiet:-n}" = y ] && quiet_arg="-q"
+
+foreach_configured_profile() {
+	rc_all="0"
+	for pdir in "$PROFILES" "$PROFILES_VAR" "$PROFILES_SNAPPY" ; do
+		if [ ! -d "$pdir" ]; then
+			continue
+		fi
+		num=`find "$pdir" -type f ! -name '*.md5sums' | wc -l`
+		if [ "$num" = "0" ]; then
+			continue
+		fi
+
+		cache_dir="$PROFILES_CACHE"
+		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
+			cache_dir="$PROFILES_CACHE_VAR"
+		fi
+		cache_args="--cache-loc=$cache_dir"
+		if [ ! -d "$cache_dir" ]; then
+			cache_args=
+		fi
+
+		# LP: #1383858 - expr tree simplification is too slow for
+		# Touch policy on ARM, so disable it for now
+		cache_extra_args=
+		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
+			cache_extra_args="-O no-expr-simplify"
+		fi
+
+		# If need to compile everything, then use -n1 with xargs to
+		# take advantage of -P. When cache files are in use, omit -n1
+		# since it is considerably faster on moderately sized profile
+		# sets to give the parser all the profiles to load at once
+		n1_args=
+		num=`find "$cache_dir" -type f ! -name '.features' | wc -l`
+		if [ "$num" = "0" ]; then
+			n1_args="-n1"
+		fi
+
+		(ls -1 "$pdir" | egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
+		while read profile; do
+			if [ -f "$pdir"/"$profile" ]; then
+				echo "$pdir"/"$profile"
+			fi
+		done) | \
+		xargs $n1_args -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
+			rc_all="$?"
+			# FIXME: when the parser properly handles broken
+			# profiles (LP: #1377338), remove this if statement.
+			# For now, if the xargs returns with error, just run
+			# through everything with -n1. (This could be broken
+			# out and refactored, but this is temporary so make it
+			# easy to understand and revert)
+			if [ "$rc_all" != "0" ]; then
+				(ls -1 "$pdir" | \
+				egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
+				while read profile; do
+					if [ -f "$pdir"/"$profile" ]; then
+						echo "$pdir"/"$profile"
+					fi
+				done) | \
+				xargs -n1 -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
+					rc_all="$?"
+				}
+			fi
+		}
+	done
+	return $rc_all
+}
+
+load_configured_profiles() {
+	clear_cache_if_outdated
+	foreach_configured_profile $quiet_arg --write-cache --replace
+}
+
+load_configured_profiles_without_caching() {
+	foreach_configured_profile $quiet_arg --replace
+}
+
+recache_profiles() {
+	clear_cache
+	foreach_configured_profile $quiet_arg --write-cache --skip-kernel-load
+}
+
+configured_profile_names() {
+	foreach_configured_profile $quiet_arg -N 2>/dev/null | LC_COLLATE=C sort | grep -v '//'
+}
+
+running_profile_names() {
+	# Output a sorted list of loaded profiles, skipping libvirt's
+	# dynamically generated files
+	cat "$AA_SFS"/profiles | sed -e "s/ (\(enforce\|complain\))$//" | egrep -v '^libvirt-[0-9a-f\-]+$' | LC_COLLATE=C sort | grep -v '//'
+}
+
+unload_profile() {
+	echo -n "$1" > "$AA_SFS"/.remove
+}
+
+clear_cache() {
+	clear_cache_system
+	clear_cache_var
+}
+
+clear_cache_system() {
+	find "$PROFILES_CACHE" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
+}
+
+clear_cache_var() {
+	find "$PROFILES_CACHE_VAR" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
+}
+
+read_features_dir()
+{
+	for f in `ls -AU "$1"` ; do
+		if [ -f "$1/$f" ] ; then
+			read -r KF < "$1/$f" || true
+			echo -n "$f {$KF } "
+		elif [ -d "$1/$f" ] ; then
+			echo -n "$f {"
+			KF=`read_features_dir "$1/$f"` || true
+			echo -n "$KF} "
+		fi
+	done
+}
+
+clear_cache_if_outdated() {
+	if [ -r "$PROFILES_CACHE"/.features ]; then
+		if [ -d "$AA_SFS"/features ]; then
+			KERN_FEATURES=`read_features_dir "$AA_SFS"/features`
+		else
+			read -r KERN_FEATURES < "$AA_SFS"/features
+		fi
+		CACHE_FEATURES=`tr '\n' ' ' < "$PROFILES_CACHE"/.features`
+		if [ "$KERN_FEATURES" != "$CACHE_FEATURES" ]; then
+			clear_cache
+		fi
+	fi
+}
+
+unload_obsolete_profiles() {
+	# Currently we must re-parse all the profiles to get policy names.  :(
+	aa_configured=$(mktemp -t aa-XXXXXX)
+	configured_profile_names > "$aa_configured" || true
+	aa_loaded=$(mktemp -t aa-XXXXXX)
+	running_profile_names > "$aa_loaded" || true
+	LC_COLLATE=C comm -2 -3 "$aa_loaded" "$aa_configured" | while read profile ; do
+		unload_profile "$profile"
+        done
+	rm -f "$aa_configured" "$aa_loaded"
+}
+
+# If the system debsum differs from the saved debsum, the new system debsum is
+# saved and non-zero is returned. Returns 0 if the two debsums matched or if
+# the system debsum file does not exist. This can be removed when system image
+# flavors all move to snappy.
+compare_and_save_debsums() {
+	pkg="$1"
+
+	if [ -n $pkg ] && [ -d "$PROFILES_VAR" ]; then
+		sums="/var/lib/dpkg/info/${pkg}.md5sums"
+		# store saved md5sums in /var/lib/apparmor/profiles since
+		# /var/cache/apparmor might be cleared by apparmor
+		saved_sums="${PROFILES_VAR}/.${pkg}.md5sums"
+
+		if [ -f "$sums" ] && \
+		   ! diff -q "$sums" "$saved_sums" 2>&1 >/dev/null ; then
+			cp -f "$sums" "$saved_sums"
+			return 1
+		fi
+	fi
+
+	return 0
+}
+
+compare_previous_version() {
+	installed="/usr/share/snappy/security-policy-version"
+	previous="/var/lib/snappy/security-policy-version"
+
+	# When just $previous doesn't exist, assume this is a new system with
+	# no cache and don't do anything special.
+	if [ -f "$installed" ] && [ -f "$previous" ]; then
+		pv=`grep '^apparmor/' "$previous" | cut -d ' ' -f 2`
+		iv=`grep '^apparmor/' "$installed" | cut -d ' ' -f 2`
+		if [ -n "$iv" ] && [ -n "$pv" ] && [ "$iv" != "$pv" ]; then
+			# snappy updates $previous elsewhere, so just return
+			return 1
+		fi
+	fi
+
+	return 0
+}
+
+# Checks to see if the current container is capable of having internal AppArmor
+# profiles that should be loaded. Callers of this function should have already
+# verified that they're running inside of a container environment with
+# something like `systemd-detect-virt --container`.
+#
+# The only known container environments capable of supporting internal policy
+# are LXD and LXC environment.
+#
+# Returns 0 if the container environment is capable of having its own internal
+# policy and non-zero otherwise.
+#
+# IMPORTANT: This function will return 0 in the case of a non-LXD/non-LXC
+# system container technology being nested inside of a LXD/LXC container that
+# utilized an AppArmor namespace and profile stacking. The reason 0 will be
+# returned is because .ns_stacked will be "yes" and .ns_name will still match
+# "lx[dc]-*" since the nested system container technology will not have set up
+# a new AppArmor profile namespace. This will result in the nested system
+# container's boot process to experience failed policy loads but the boot
+# process should continue without any loss of functionality. This is an
+# unsupported configuration that cannot be properly handled by this function.
+is_container_with_internal_policy() {
+	local ns_stacked_path="${AA_SFS}/.ns_stacked"
+	local ns_name_path="${AA_SFS}/.ns_name"
+	local ns_stacked
+	local ns_name
+
+	if ! [ -f "$ns_stacked_path" ] || ! [ -f "$ns_name_path" ]; then
+		return 1
+	fi
+
+	read -r ns_stacked < "$ns_stacked_path"
+	if [ "$ns_stacked" != "yes" ]; then
+		return 1
+	fi
+
+	# LXD and LXC set up AppArmor namespaces starting with "lxd-" and
+	# "lxc-", respectively. Return non-zero for all other namespace
+	# identifiers.
+	read -r ns_name < "$ns_name_path"
+	if [ "${ns_name#lxd-*}" = "$ns_name" ] && \
+	   [ "${ns_name#lxc-*}" = "$ns_name" ]; then
+		return 1
+	fi
+
+	return 0
+}
-- 
2.7.4


