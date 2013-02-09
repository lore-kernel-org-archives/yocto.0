Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3AF7FE01459
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:31 -0800 (PST)
Received: by mail-ea0-f175.google.com with SMTP id d1so2128358eab.6
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=EFBWQSYnFgmWxg08S9MNlCXcCCflWsbn7symLfxUUMw=;
	b=Es+lVN3sCeUsVRIef6W8xGI7wbXyw2wLETKzm672sjdOfOh38PbWoZ0VJ3cNFtPFFf
	HF4Of9Uk/cByXlR8rc2VUJEow19VrpvbYRDwroZ0MZo52X09wxiynbmVXbpFbYpoYEFv
	iM+ntLaP6Hyp10A/569YH8Mm7/u2hzpzFZekdlj4m47iM1nZuGM3LzeBVxPLZCInYt8s
	Lg8isNivbXzJdZmjDKWdfYg0gWfgq2q9E4hnPbqIey/U0J5pFWXhrKdFgHmewYSg95Ej
	6Chk4yYQb61k8hgD6IR7AmT5qEjecyze6D62fkUdRktJaYASkX3Vab7GlTW2mr0S89Qf
	+jow==
X-Received: by 10.14.213.7 with SMTP id z7mr31988552eeo.2.1360447889633;
	Sat, 09 Feb 2013 14:11:29 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.28
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:28 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:10 +0200
Message-Id: <1360447871-10982-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQmwEfkDw6WPG6UYFa7qRj4/Jixng8/z1D6d75WrdKHKuaPEOGuo4dvBpBe9jN8pbtrwv9rH
Subject: [meta-raspberrypi][PATCH 6/7] userland: Update to 8700279495e266378d36092ccf86424f0ee2539f
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 22:11:31 -0000

* install_vmcs not needed anymore
* By default package is installed in /opt/vc. Move everything in ${prefix}.
* Move recipe in recipes-graphics
* Add PACKAGE_ARCH = MACHINE_ARCH

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/userland/userland-git/install_vmcs |  279 ------------------------
 recipes-bcm/userland/userland_git.bb           |   43 ----
 recipes-graphics/userland/userland_git.bb      |   39 ++++
 3 files changed, 39 insertions(+), 322 deletions(-)
 delete mode 100755 recipes-bcm/userland/userland-git/install_vmcs
 delete mode 100644 recipes-bcm/userland/userland_git.bb
 create mode 100644 recipes-graphics/userland/userland_git.bb

diff --git a/recipes-bcm/userland/userland-git/install_vmcs b/recipes-bcm/userland/userland-git/install_vmcs
deleted file mode 100755
index 980522e..0000000
--- a/recipes-bcm/userland/userland-git/install_vmcs
+++ /dev/null
@@ -1,279 +0,0 @@
-#!/bin/sh
-
-# edit this file only at <vc4>\makefiles\cmake\scripts\install_vmcs
-# update (via root staging area) using cmake {args} <vc4>, etc.
-
-cmd="$0"
-cmd_dir="`dirname -- "$cmd"`"
-cmd_dir=`(cd "$cmd_dir">/dev/null;pwd)`
-cmd_name="`basename -- $cmd`"
-
-# this command should be run as root from ${dir_install}/sbin
-
-dir_install="`dirname -- "$cmd_dir"`"
-dir_data="$dir_install/share/install"
-dir_sd="/sd"
-
-do_force=false
-
-# install contents of $dir_data into the system
-
-if [ "`whoami`" != "root" ]; then
-    echo "$cmd_name: you need to be root to execute this command">&2
-    exit 1
-fi
-
-[ "_$1" = "_-f" -o "_$1" = "_--force" ] && { do_force=true; shift; }
-
-
-# Uninstall script
-
-#################################
-#################################
-
-create_uninstall()
-{  cat <<'EOF'
-#!/bin/sh
-
-####
-#### WARNING: this script is written and overwritten by $cmd - don't edit
-####
-
-cmd="$0"
-cmd_dir="`dirname -- "$cmd"`"
-cmd_dir=`(cd "$cmd_dir">/dev/null;pwd)`
-cmd_name="`basename -- "$cmd"`"
-
-# this command should be run from <dir_install>/sbin
-
-if [ "`whoami`" != "root" ]; then
-    echo "$cmd_name: you need to be root to execute this command">&2
-    exit 1
-fi
-
-# uninstall the new libraries
-
-if [ -f /etc/ld.so.conf.d/vmcs.conf ]; then
-    rm /etc/ld.so.conf.d/vmcs.conf
-    ldconfig 
-fi
-
-vcfiled=/etc/init.d/vcfiled
-if [ -x $vcfiled ]; then
-    $vcfiled stop
-    if update-rc.d -f vcfiled remove; then
-        rm -f $vcfiled
-    else
-        echo "$cmd_name: failed to install $vcfiled, sorry">&2
-    fi
-fi
-
-EOF
-}
-
-
-#################################
-#################################
-
-rc=0
-
-# install un-installation script
-
-if [ -f "$cmd_dir/uninstall_vmcs" ]; then
-    if mv -f "$cmd_dir/uninstall_vmcs" "$cmd_dir/uninstall_last_vmcs"; then
-        echo "$cmd_name: previous installation's uninstallation script saved in">&2
-        echo "$cmd_name: $cmd_dir/uninstall_last_vmcs">&2
-    else
-        echo "$cmd_name: failed to rename previous installation's uninstallation script">&2
-    fi
-fi
-create_uninstall > "$cmd_dir/uninstall_vmcs"
-chmod +x "$cmd_dir/uninstall_vmcs"
-
-# install the new libraries
-
-if $do_force || [ -d /etc/ld.so.conf.d ]; then
-    if $do_force || [ ! -f /etc/ld.so.conf.d/vmcs.conf ]; then
-        if [ ! -f "$dir_data/vmcs.conf" ]; then
-            echo "$cmd_name: expected file missing in $dir_data/vmcs.conf">&2
-            rc=1
-        else
-            mkdir -p /etc/ld.so.conf.d
-            cp -af "$dir_data/vmcs.conf" /etc/ld.so.conf.d/vmcs.conf
-            ldconfig 
-        fi
-    fi
-else
-    echo "$cmd_name: don't know how to install libraries, sorry">&2
-    rc=2
-fi
-
-# install VC file daemon
-
-if $do_force || [ ! -f /etc/init.d/vcfiled ]; then
-    if [ ! -f "$dir_data/vcfiled" ]; then
-        echo "$cmd_name: expected file missing in $dir_data/vcfiled">&2
-        rc=3
-    else
-        cp -af "$dir_data/vcfiled" /etc/init.d/vcfiled
-        if ! update-rc.d vcfiled defaults 16; then
-            echo "$cmd_name: don't know how to install new /etc/init.d/vcfiled, sorry">&2
-            rc=4
-        elif ! update-rc.d vcfiled enable; then
-            echo "$cmd_name: failed to enable new /etc/init.d/vcfiled, sorry">&2
-            rc=5
-        fi
-    fi
-fi
-
-# make sure vchiq device finder is installed 
-
-if $do_force || [ ! -f /etc/init.d/vchiq ]; then
-    if [ ! -f "$dir_data/vchiq" ]; then
-        echo "$cmd_name: expected file missing in $dir_data/vchiq">&2
-    else
-        cp -af "$dir_data/vchiq" /etc/init.d/vchiq
-        if ! update-rc.d vchiq defaults 12; then
-            echo "$cmd_name: don't know how to install new /etc/init.d/vchiq, sorry">&2
-            rc=6
-        elif ! update-rc.d vchiq enable; then
-            echo "$cmd_name: failed to enable new /etc/init.d/vchiq, sorry">&2
-            rc=7
-        fi
-    fi
-fi
-
-# set up a module directory from SD card if possible
-
-current_moddir=/lib/modules
-pkg_moddir=${dir_install}$current_moddir
-sd_moddir=/boot$current_moddir
-
-if [ -h "$pkg_moddir" ]; then
-    # this should never have been made into a symbolic link - it will mean
-    # different things on the ARM and the build machines
-    # Unfortunately a previous version of this script made it symbolic
-    rm "$pkg_moddir"
-    echo "------------------------"
-    echo "$cmd_name: Damage to $pkg_moddir caused by previous script version has"
-    echo "$cmd_name: been corrected.  Sorry, but you have to re-build the "
-    echo "$cmd_name: vchiq module now"
-    echo "------------------------"
-fi
-
-if $do_force || [ ! -f "$pkg_moddir" ]; then
-    if [ -d "$sd_moddir" ]; then
-        echo "$cmd_name: Installing any newer modules from SD card"
-        cp -auT "$sd_moddir" "$current_moddir"
-    fi
-fi
-
-# install the vchiq module from install dir (if present)
-
-current_mod=${current_moddir}/`uname -r`/extra/vchiq.ko
-pkg_mod=${dir_install}$current_mod
-
-if [ -f "$pkg_mod" ]; then
-    if $do_force || \
-       [ ! -f "$current_mod" ] || \
-       [ "$pkg_mod" -nt "$current_mod" ]; then
-        mkdir -p "`dirname -- "$current_mod"`"
-        # copy new vchiq module over - try to keep same date for debugging
-        if cp -af "$pkg_mod" "$current_mod"; then
-            echo "$cmd_name: updated vchiq module taken from $pkg_moddir">&2
-        else
-            echo "$cmd_name: couldn't overwrite $current_mod">&2
-            rc=8
-        fi
-    fi
-fi
-
-if [ ! -f "$current_mod" ]; then
-    echo "$cmd_name: no vchiq module found for this kernel (`uname -r`)">&2
-    rc=9
-else
-    # make sure the module is loaded automatically when we reboot
-    # before the vcqhiq script runs by placing its name in /etc/modules
-    # (This is suppose to have been done already in mklinux)
-    if ! grep "^vchiq$" /etc/modules>/dev/null; then
-        echo vchiq >> /etc/modules
-    fi
-fi
-
-if $do_force || [ ! -f "${current_moddir}/`uname -r`/modules.dep" ]; then
-    depmod
-fi
-    
-# install vlls
-
-if $do_force || [ ! -f "$dir_sd/vlls" ]; then
-    if [ -d /boot/vlls/ ]; then
-        # remove $dir_sd/vlls assuming it is a symbolic link
-        rm -f "$dir_sd/vlls"
-        ln -s /boot/vlls "$dir_sd/vlls"
-    else
-        echo "$cmd_name: Warning - no VLLs in $dir_sd/vlls">&2
-        echo "$cmd_name: installation would normally link this location to /boot/vlls"
-        echo "$cmd_name: ensure VLLs are present in /boot/vlls (probably the "
-        echo "$cmd_name: DOS partition of your SD card), and rerun this "
-        echo "$cmd_name: installation">&2 
-    fi
-fi
-
-# warn about empty media files ... player X needs some
-
-if [ -d "$dir_install/mediafiles/" -a ! -d "$dir_sd/mediafiles" ]; then
-    rm -f "$dir_sd/mediafiles"
-    ln -s "$dir_install/mediafiles" "$dir_sd/mediafiles"
-elif [ ! -d "$dir_sd/mediafiles/" ]; then
-    echo "$cmd_name: warning - $dir_sd/mediafiles does not exist, some applications require this">&2
-else
-    filecount=`ls "$dir_sd/mediafiles/" | wc -l`
-    if [ -z "$filecount" -o $filecount -eq 0 ]; then
-        echo "$cmd_name: warning - /sd/mediafiles is empty, some apps need content">&2
-    fi
-fi
-
-
-# start up anything we rely on
-
-if [ -x /sbin/modprobe -a -f /proc/modules ]; then
-    modprobe -q vchiq
-fi
-
-if [ -x /etc/init.d/vchiq ]; then
-    if ! /etc/init.d/vchiq start; then
-        echo "$cmd_name: /etc/init.d/vchiq failed - rc $?"
-        rc=10
-    fi
-else
-    echo "$cmd_name: couldn't find expected file - /etc/init.d/vchiq">&2
-    rc=11
-fi
-
-if [ -x /etc/init.d/vcfiled ]; then
-    if ! /etc/init.d/vcfiled start; then
-        echo "$cmd_name: /etc/init.d/vcfiled failed - rc $?"
-        rc=12
-    elif ! pidof vcfiled>/dev/null; then
-        echo "$cmd_name: vcfiled daemon not started"
-        if [ ! -x "${dir_install}/sbin/vcfiled" ]; then
-            echo "$cmd_name: ${dir_install}/sbin/vcfiled missing or bad?"
-            rc=13
-        elif ! head -0 /dev/vchiq >/dev/null; then
-            echo "$cmd_name: /dev/vchiq bad?"
-            echo "$cmd_name: vchiq module file information -"
-            ls -l "$current_mod"
-            rc=14
-        else
-            echo "$cmd_name: /etc/init.d/vcfiled bad?"
-            rc=15
-        fi
-    fi
-else
-    echo "$cmd_name: couldn't find expected file - /etc/init.d/vcfiled">&2
-    rc=16
-fi
-
-exit $rc
-
diff --git a/recipes-bcm/userland/userland_git.bb b/recipes-bcm/userland/userland_git.bb
deleted file mode 100644
index c2c6641..0000000
--- a/recipes-bcm/userland/userland_git.bb
+++ /dev/null
@@ -1,43 +0,0 @@
-DESCRIPTION = "This repository contains the source code for the ARM side \
-libraries used on Raspberry Pi. These typically are installed in /opt/vc/lib \
-and includes source for the ARM side code to interface to: EGL, mmal, GLESv2,\
-vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
-LICENSE = "Broadcom"
-LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
-
-PR = "r0"
-
-PROVIDES = "virtual/libgles2 \
-            virtual/egl"
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRCREV = "ef62d33406ee01864d58b80f6d0c0355ed86aaa1"
-SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
-           file://install_vmcs \
-          "
-S = "${WORKDIR}/git"
-
-inherit cmake
-
-EXTRA_OECMAKE = " \
-                 -DCMAKE_BUILD_TYPE=Release \
-                "
-
-do_configure_prepend () {
-    sed -i "/10-vchiq.rules/d" ${S}/interface/vchiq_arm/CMakeLists.txt
-    mkdir -p makefiles/cmake/scripts
-    cp ${WORKDIR}/install_vmcs ${S}/makefiles/cmake/scripts
-}
-
-FILES_${PN} = "/opt/vc/lib/*.so \
-               /opt/vc/sbin \
-               /opt/vc/bin \
-               /etc \
-              "
-FILES_${PN}-dbg += "/opt/vc/lib/.debug \
-                   /opt/vc/sbin/.debug \
-                   /opt/vc/bin/.debug \
-                  "
-FILES_${PN}-dev = "/opt/vc/include/"
-FILES_${PN}-staticdev = "/opt/vc/lib/*.a"
-FILES_${PN}-doc = "/opt/vc/share/"
\ No newline at end of file
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
new file mode 100644
index 0000000..fe4132a
--- /dev/null
+++ b/recipes-graphics/userland/userland_git.bb
@@ -0,0 +1,39 @@
+DESCRIPTION = "This repository contains the source code for the ARM side \
+libraries used on Raspberry Pi. These typically are installed in /opt/vc/lib \
+and includes source for the ARM side code to interface to: EGL, mmal, GLESv2,\
+vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
+LICENSE = "Broadcom"
+LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
+
+PR = "r1"
+
+PROVIDES = "virtual/libgles2 \
+            virtual/egl"
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRCREV = "8700279495e266378d36092ccf86424f0ee2539f"
+SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
+          "
+S = "${WORKDIR}/git"
+
+inherit cmake
+
+EXTRA_OECMAKE = " \
+                 -DCMAKE_BUILD_TYPE=Release \
+                "
+# The compiled binaries don't provide sonames.
+SOLIBS = "${SOLIBSDEV}"
+
+do_install_append() {
+    mkdir -p ${D}/${prefix}
+    mv ${D}/opt/vc/* ${D}/${prefix}
+    rm -rf ${D}/opt
+}
+
+FILES_${PN} += "${libdir}/*${SOLIBS}"
+FILES_${PN}-dev = "${includedir} \
+                   ${prefix}/src"
+FILES_${PN}-doc += "${datadir}/install"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
-- 
1.7.9.5


