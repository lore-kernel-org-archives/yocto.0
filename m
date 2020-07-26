Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.36202.1595794235131411825
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jul 2020 13:10:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGmTpbKb;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id l2so1605725pff.0
        for <yocto@lists.yoctoproject.org>; Sun, 26 Jul 2020 13:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=9a57nE8WkKPP5EtgVz1h2/kXfbmeOWLm4FSu2bDKs4c=;
        b=BGmTpbKbSUwQF9YxVq1r8Kek8YKdf7DhqD1TfmnSabTdtreMUcEASKxUrfcjWA+v2L
         lMnDCBPvRRd3r99pb2P4ba3mafMWp41MwywbWnCv++BG49Q/5RKUrfHLUf0OB1Mkftwq
         67dc1opDvgKJV9H82MN3tbR+9sRst4RCMok9QwhpPbDNPGkYzIbW0xIV6BTEhxldr3Js
         WzOlSmpbecIMhkM9G1A5kFfdMdFDPU2EyY/UjAT3IZ6buWmjOWu6pnqPQCDAuJaHJgjI
         AMYgPLOPwXQf6PhQtj2BwTl2FaIQUwDgJlzTgTvtdCXQxuyxpvBJx9RqEhvOc+FBlnIe
         N34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=9a57nE8WkKPP5EtgVz1h2/kXfbmeOWLm4FSu2bDKs4c=;
        b=qBA+K6eyha9WRrQKCl3HtKsfCr36bxK6TrLs9EYrDsKMVnnuhivhQR0FOIT+w8yYPH
         as8MAgig3/mfT/U6gP/7Sd2SESaMw5GMUyUbF380mefWApuD9dk3VXntigou34nvdLhb
         /TKEEll7YJUuo3kHfKLhoVYotzedUkYdgFhn/8HeiaZ+MeYlcB+5gXO/NHHaz1mUjgrD
         Ow1HZV7agnFVFd+I5epK4AxTaCPR3+INAvuCHXa4kwBva5xt7hOC2heWSVL6wr7u3z/b
         lvLXvXmnr/9DZ82moM6vFMVJcMUqMan2pfJ09wJY2R8nuA8XVSSghXRvY9F4y/yHU5s3
         GBqw==
X-Gm-Message-State: AOAM5310+HU1plV78d8f8Mrcqu5ud9NSsutFLRw7s4zDTeKH47ykZp37
	L/yPSX2LOEycpPHsGy7HjaWZgfFOTCM=
X-Google-Smtp-Source: ABdhPJxzIAuMhVr4uCRrHFO4M9v++HvbqgkhrEOsI7aVnEdXXfrG6HrJR3f0ISK+ZMwgaro5NyS1Vg==
X-Received: by 2002:a62:3185:: with SMTP id x127mr17203317pfx.290.1595794234074;
        Sun, 26 Jul 2020 13:10:34 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:957c:826:e40f:5fde])
        by smtp.gmail.com with ESMTPSA id h2sm12579080pfk.93.2020.07.26.13.10.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2020 13:10:33 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][meta-hardening][PATCH] meta-harden: Add a layer to demo harding OE/YP
Date: Sun, 26 Jul 2020 13:10:31 -0700
Message-Id: <20200726201031.23187-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-hardening/README                         | 86 +++++++++++++++++++
 meta-hardening/conf/distro/harden.conf        | 11 +++
 meta-hardening/conf/layer.conf                | 13 +++
 .../openssh/openssh_%.bbappend                | 13 +++
 .../base-files/base-files_%.bbappend          |  4 +
 .../images/harden-image-minimal.bb            | 25 ++++++
 .../initscripts/files/mountall.sh             | 41 +++++++++
 .../initscripts/initscripts_1.0.bbappend      |  8 ++
 .../packagegroups/packagegroup-hardening.bb   | 19 ++++
 .../recipes-extended/shadow/shadow_%.bbappend | 10 +++
 .../recipes-extended/sudo/sudo_%.bbappend     |  7 ++
 11 files changed, 237 insertions(+)
 create mode 100644 meta-hardening/README
 create mode 100644 meta-hardening/conf/distro/harden.conf
 create mode 100644 meta-hardening/conf/layer.conf
 create mode 100644 meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
 create mode 100644 meta-hardening/recipes-core/base-files/base-files_%.bbappend
 create mode 100644 meta-hardening/recipes-core/images/harden-image-minimal.bb
 create mode 100755 meta-hardening/recipes-core/initscripts/files/mountall.sh
 create mode 100644 meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
 create mode 100644 meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
 create mode 100644 meta-hardening/recipes-extended/shadow/shadow_%.bbappend
 create mode 100644 meta-hardening/recipes-extended/sudo/sudo_%.bbappend

diff --git a/meta-hardening/README b/meta-hardening/README
new file mode 100644
index 0000000..37a0b7e
--- /dev/null
+++ b/meta-hardening/README
@@ -0,0 +1,86 @@
+# This is an example for Security hardening an OE or Poky image
+
+
+Meta-hardening
+=============
+
+This layer provides examples for hardening OE/Yocto images.
+This layer does not provide 100% security protection.  This is only 
+a framework from which a user can build from and can possible contribute to.
+The goal here is to capture use cases and examples the community decided shares for
+everyones benefit.
+
+Building the meta-hardening layer
+-------------------------------
+In order to add hardening support to the poky/OE build this layer should be added
+to your projects bblayers.conf file.
+
+By default the hardening components are disabled.  This conforms to the
+Yocto Project compatible guideline that indicate that simply including a
+layer should not change the system behavior.
+
+In order to use the components in this layer to take affect the  'harden' keyword must
+set the DISTRO as in "DISTRO = harden".   This enables the "NO ROOT access" idea or framework.
+
+If one wants the a more complete example of a hardened image, one must also build the image:
+harden-image-minimal
+
+There are default example userid and passwards:
+These can be over written in your local.conf via:
+ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
+DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
+
+example:
+local.conf
+DISTRO = "harden"
+
+The default user and password are: 
+User: "myadmin"
+Password: "1SimplePw!"
+
+bitbake {qemu machine} harden-image-minimal
+
+Dependencies
+============
+
+Branch: master
+
+This layer depends on:
+
+URI: git://git.yoctoproject.org/poky
+
+or this normal combo: 
+
+URI: git://git.openembedded.org/meta-openembedded/meta-oe
+
+URI: git://git.openembedded.org/bitbake
+
+plus:
+
+URI: git://git.openembedded.org/meta-openembedded
+layers: meta-oe
+
+
+Maintenance
+-----------
+
+Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+
+When sending single patches, please using something like:
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-hardening][PATCH'
+
+These values can be set as defaults for this repository:
+
+$ git config sendemail.to yocto@yoctoproject.org
+$ git config format.subjectPrefix meta-hardening][PATCH
+
+Now you can just do 'git send-email origin/master' to send all local patches.
+
+Maintainers:  Armin Kuster <akuster808@gmail.com>
+
+License
+=======
+
+All metadata is MIT licensed unless otherwise stated. Source code included
+in tree for individual recipes is under the LICENSE stated in each recipe
+(.bb file) unless otherwise stated.
diff --git a/meta-hardening/conf/distro/harden.conf b/meta-hardening/conf/distro/harden.conf
new file mode 100644
index 0000000..66db9b7
--- /dev/null
+++ b/meta-hardening/conf/distro/harden.conf
@@ -0,0 +1,11 @@
+DISTRO = "harden"
+DISTRO_NAME = "Simple Security hardening example"
+DISTRO_VERSION = "1.0"
+
+DISTRO_FEATURES = " acl xattr pci ext2 pam ipv4 ipv6 ipsec largefile usbhost"
+
+VIRTUAL-RUNTIME_base-utils-syslog ?= "rsyslog"
+IMAGE_ROOTFS_EXTRA_SPACE = "524288"
+EXTRA_IMAGE_FEATURES_remove = "debug-tweaks"
+
+DISABLE_ROOT ?= "True"
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
new file mode 100644
index 0000000..5896214
--- /dev/null
+++ b/meta-hardening/conf/layer.conf
@@ -0,0 +1,13 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "harden-layer"
+BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
+BBFILE_PRIORITY_harden-layer = "10"
+
+LAYERSERIES_COMPAT_harden-layer = "dunfell"
+
+LAYERDEPENDS_harden-layer = "core openembedded-layer"
diff --git a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
new file mode 100644
index 0000000..67be3f3
--- /dev/null
+++ b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
@@ -0,0 +1,13 @@
+do_install_append_harden () {
+	# to hardend
+	sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwarding no:' ${D}${sysconfdir}/ssh/sshd_config
+	sed -i -e 's:ClientAliveCountMax 4:ClientAliveCountMax 2:' ${D}${sysconfdir}/ssh/sshd_config
+	sed -i -e 's:#LogLevel INFO:LogLevel VERBOSE:' ${D}${sysconfdir}/ssh/sshd_config
+	sed -i -e 's:#MaxSessions.*:MaxSessions 2:' ${D}${sysconfdir}/ssh/sshd_config
+	sed -i -e 's:#TCPKeepAlive yes:TCPKeepAlive no:' ${D}${sysconfdir}/ssh/sshd_config
+	sed -i -e 's:#AllowAgentForwarding yes:AllowAgentForwarding no:' ${D}${sysconfdir}/ssh/sshd_config
+
+    if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes', 'no', d)}" = "yes" ]; then
+        sed -i -e 's:#PermitRootLogin.*:PermitRootLogin prohibit-password:' ${D}${sysconfdir}/ssh/sshd_config
+    fi
+}
diff --git a/meta-hardening/recipes-core/base-files/base-files_%.bbappend b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
new file mode 100644
index 0000000..3956304
--- /dev/null
+++ b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
@@ -0,0 +1,4 @@
+
+do_install_append_harden () {
+    sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/profile
+}
diff --git a/meta-hardening/recipes-core/images/harden-image-minimal.bb b/meta-hardening/recipes-core/images/harden-image-minimal.bb
new file mode 100644
index 0000000..daed3fb
--- /dev/null
+++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
@@ -0,0 +1,25 @@
+SUMMARY = "A small image for an example hardening OE."
+
+IMAGE_INSTALL = "packagegroup-core-boot packagegroup-hardening"
+IMAGE_INSTALL_append = " os-release"
+
+IMAGE_FEATURES = ""
+IMAGE_LINGUAS = " "
+
+LICENSE = "MIT"
+
+IMAGE_ROOTFS_SIZE ?= "8192"
+
+inherit core-image extrausers
+
+ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
+DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
+DEFAULT_ADMIN_GROUP ?= "wheel"
+DEFAULT_ADMIN_ACCOUNT_PASSWORD ?= "1SimplePw!"
+
+EXTRA_USERS_PARAMS = "${@bb.utils.contains('DISABLE_ROOT', 'True', "usermod -L root;", "usermod -P '${ROOT_DEFAULT_PASSWORD}' root;", d)}"
+
+EXTRA_USERS_PARAMS += "useradd  ${DEFAULT_ADMIN_ACCOUNT};" 
+EXTRA_USERS_PARAMS += "groupadd  ${DEFAULT_ADMIN_GROUP};" 
+EXTRA_USERS_PARAMS += "usermod -P '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};" 
+EXTRA_USERS_PARAMS += "usermod -aG ${DEFAULT_ADMIN_GROUP}  ${DEFAULT_ADMIN_ACCOUNT};" 
diff --git a/meta-hardening/recipes-core/initscripts/files/mountall.sh b/meta-hardening/recipes-core/initscripts/files/mountall.sh
new file mode 100755
index 0000000..e093f96
--- /dev/null
+++ b/meta-hardening/recipes-core/initscripts/files/mountall.sh
@@ -0,0 +1,41 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides:          mountall
+# Required-Start:    mountvirtfs
+# Required-Stop: 
+# Default-Start:     S
+# Default-Stop:
+# Short-Description: Mount all filesystems.
+# Description:
+### END INIT INFO
+
+. /etc/default/rcS
+
+#
+# Mount local filesystems in /etc/fstab. For some reason, people
+# might want to mount "proc" several times, and mount -v complains
+# about this. So we mount "proc" filesystems without -v.
+#
+test "$VERBOSE" != no && echo "Mounting local filesystems..."
+mkdir -p /home
+mkdir -p /var
+mount -at nonfs,nosmbfs,noncpfs 2>/dev/null
+
+#
+# We might have mounted something over /dev, see if /dev/initctl is there.
+#
+if test ! -p /dev/initctl
+then
+	rm -f /dev/initctl
+	mknod -m 600 /dev/initctl p
+fi
+kill -USR1 1
+
+#
+# Execute swapon command again, in case we want to swap to
+# a file on a now mounted filesystem.
+#
+[ -x /sbin/swapon ] && swapon -a
+
+: exit 0
+
diff --git a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
new file mode 100644
index 0000000..896b039
--- /dev/null
+++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI_append_harden = " file://mountall.sh"
+
+do_install_append_harden() {
+    install -d ${D}${sysconfdir}/init.d
+    install -m 0755 ${WORKDIR}/mountall.sh ${D}${sysconfdir}/init.d
+}
diff --git a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
new file mode 100644
index 0000000..1dcd5fc
--- /dev/null
+++ b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
@@ -0,0 +1,19 @@
+#
+# 
+#
+
+SUMMARY = "Hardening example group"
+
+inherit packagegroup
+
+PROVIDES = "${PACKAGES}"
+PACKAGES = "${PN}  \
+    packagegroup-${PN} \
+"
+
+RDEPENDS_${PN} = "\
+    init-ifupdown \
+    ${VIRTUAL-RUNTIME_base-utils-syslog} \
+    sudo \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "pam-plugin-wheel", "",d)} \
+"
diff --git a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
new file mode 100644
index 0000000..3f363f0
--- /dev/null
+++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
@@ -0,0 +1,10 @@
+do_install_append_harden () {
+	# to hardend
+	sed -i -e 's:UMASK.*:UMASK 027:' ${D}${sysconfdir}/login.defs
+	sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:' ${D}${sysconfdir}/login.defs
+	sed -i -e 's:PASS_MIN_DAYS.*:PASS_MIN_DAYS 1:' ${D}${sysconfdir}/login.defs
+	sed -i -e 's:#PASS_MIN_LEN.*:PASS_MIN_LEN 11:' ${D}${sysconfdir}/login.defs
+	sed -i -e 's:PASS_WARN_AGE.*:PASS_WARN_AGE 14:' ${D}${sysconfdir}/login.defs
+	sed -i -e 's:LOGIN_RETRIES.*:LOGIN_RETRIES 3:' ${D}${sysconfdir}/login.defs
+	sed -i -e 's:LOGIN_TIMEOUT.*:LOGIN_TIMEOUT 30:' ${D}${sysconfdir}/login.defs
+}
diff --git a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
new file mode 100644
index 0000000..a31c081
--- /dev/null
+++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
@@ -0,0 +1,7 @@
+
+PACKAGECONFIG_append_harden = " pam-wheel"
+do_install_append_harden () {
+    if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes', 'no', d)}" = "yes" ]; then
+        sed -i -e 's:root ALL=(ALL) ALL:#root ALL=(ALL) ALL:' ${D}${sysconfdir}/sudoers
+    fi
+}
-- 
2.17.1

