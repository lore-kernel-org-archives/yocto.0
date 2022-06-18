Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682A0C43334
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 17:54:20 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.11512.1655574859764872724
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 10:54:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=allARALZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id a17so4400244pls.6
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 10:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YsNCuNmC/YNJCn4nxrCfBhJV7FBWhqmHQ0gRbV1CDDk=;
        b=allARALZ/DQYqWgTakzz6fJvedm3jQ46LKOwN8P/aQ+WsvlTeAadKpRHEOrRNE3pwL
         zJ8sFXhpmbORXJ3c+XeFzKXF8bpkTDvZcC/MXOKKAg8tCdWff6irbZsDIIpJ9U2clEGS
         egHCtJ5xHbL7rpjZPadp/I2zr4h+2iWfn79AHuOYziFzA+6Onp4HNSU15yQx6EgMNeo8
         s6r4KZ1xwcXqlMWkCp2bJOeGuDgQ1VRnlI+K+5hJ1kt9+Mujqh5GhRr/XqGL4NO/Gn/D
         OjK3U4xI3YrZYCw0eIYFUTp4U39ZV5A5N4fs3GztkwZylehzyC21Z6BCBU59tz416Q+9
         qvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YsNCuNmC/YNJCn4nxrCfBhJV7FBWhqmHQ0gRbV1CDDk=;
        b=z0FgQXQN+Me3bHY0OYyhh3DWCvX0p1LGqAOdF9gGfACEdeFUB8hS38dcoSyhg8opv7
         cZQzXo3jVVT+zXkVlJLQzibECUfFGdgM/rzuPTMT01jap4lIkXDYYYbLeJHZAggZKPXF
         USSb825QWb3fXolxTB1vVXA/JdacbYp1VhzIVrBivhKAbN6sY1br4v4RFlIIlysrGY9r
         o40qUHAr43Bu4YHklNJdy0zBBffZIpFH19a6Uc1vFSY2b5fK3IS+y5TpDEjL99Q4D2kA
         6bwBXA+uqCl72ln8bySNdn/FdLFDT6htWYORCFwxdyV359po+3B40ZTKJTCHNtZ2irq8
         /mhg==
X-Gm-Message-State: AJIora8wHqp1fKCIUbiCcLHVs7eTaYhD4/rKDpOQWFUzG0LcuX6vExbm
	bp+vChqNjw1uJN3NEPBKRJrzAahbyIM=
X-Google-Smtp-Source: 
 AGRyM1vcnsai0lg58FwoQHuyJusc/lQKIZ37vGhJJZkY3aLt8ZwnHFyhnf7cUGymMV3/4XW8N9p/IA==
X-Received: by 2002:a17:90a:6fe1:b0:1ec:8101:953f with SMTP id
 e88-20020a17090a6fe100b001ec8101953fmr7441955pjk.225.1655574858643;
        Sat, 18 Jun 2022 10:54:18 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:3fa4:9838:f434:b609])
        by smtp.gmail.com with ESMTPSA id
 q4-20020a170902f78400b001641670d1adsm5668776pln.131.2022.06.18.10.54.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 10:54:17 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] firejail: Add new package
Date: Sat, 18 Jun 2022 10:54:15 -0700
Message-Id: <20220618175416.65055-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 17:54:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57352

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../exclude_seccomp_util_compiles.patch       | 45 ++++++++++++++
 recipes-security/Firejail/firejail_0.9.70.bb  | 61 +++++++++++++++++++
 2 files changed, 106 insertions(+)
 create mode 100644 recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch
 create mode 100644 recipes-security/Firejail/firejail_0.9.70.bb

diff --git a/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch b/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch
new file mode 100644
index 0000000..a32720a
--- /dev/null
+++ b/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch
@@ -0,0 +1,45 @@
+Exclude all the seccomp files to run during build.
+
+Upstream-Status: Inappropriate [embedded specific]
+There are some files that need to run to generate the appropriate files
+we are currently doing this on the target. 
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/Makefile.in
+===================================================================
+--- git.orig/Makefile.in
++++ git/Makefile.in
+@@ -34,7 +34,6 @@ MYDIRS = src/lib $(MAN_SRC) $(COMPLETION
+ MYLIBS = src/libpostexecseccomp/libpostexecseccomp.so src/libtrace/libtrace.so src/libtracelog/libtracelog.so
+ COMPLETIONS = src/zsh_completion/_firejail src/bash_completion/firejail.bash_completion
+ MANPAGES = firejail.1 firemon.1 firecfg.1 firejail-profile.5 firejail-login.5 firejail-users.5 jailcheck.1
+-SECCOMP_FILTERS = seccomp seccomp.debug seccomp.32 seccomp.block_secondary seccomp.mdwx seccomp.mdwx.32
+ ALL_ITEMS = $(APPS) $(SBOX_APPS) $(SBOX_APPS_NON_DUMPABLE) $(MYLIBS)
+ 
+ .PHONY: all_items $(ALL_ITEMS)
+@@ -52,7 +51,7 @@ $(MANPAGES): src/man
+ 
+ man: $(MANPAGES)
+ 
+-filters: $(SECCOMP_FILTERS) $(SBOX_APPS_NON_DUMPABLE)
++filters: $(SBOX_APPS_NON_DUMPABLE)
+ seccomp: src/fseccomp/fseccomp src/fsec-optimize/fsec-optimize
+ 	src/fseccomp/fseccomp default seccomp
+ 	src/fsec-optimize/fsec-optimize seccomp
+@@ -81,7 +80,6 @@ clean:
+ 	done
+ 	$(MAKE) -C test clean
+ 	rm -f $(MANPAGES) $(MANPAGES:%=%.gz) firejail*.rpm
+-	rm -f $(SECCOMP_FILTERS)
+ 	rm -f test/utils/index.html*
+ 	rm -f test/utils/wget-log
+ 	rm -f test/utils/firejail-test-file*
+@@ -119,7 +117,7 @@ endif
+ 	# libraries and plugins
+ 	install -m 0755 -d $(DESTDIR)$(libdir)/firejail
+ 	install -m 0755 -t $(DESTDIR)$(libdir)/firejail src/firecfg/firejail-welcome.sh
+-	install -m 0644 -t $(DESTDIR)$(libdir)/firejail $(MYLIBS) $(SECCOMP_FILTERS)
++	install -m 0644 -t $(DESTDIR)$(libdir)/firejail $(MYLIBS) 
+ 	install -m 0755 -t $(DESTDIR)$(libdir)/firejail $(SBOX_APPS)
+ 	install -m 0755 -t $(DESTDIR)$(libdir)/firejail src/profstats/profstats
+ 	# plugins w/o read permission (non-dumpable)
diff --git a/recipes-security/Firejail/firejail_0.9.70.bb b/recipes-security/Firejail/firejail_0.9.70.bb
new file mode 100644
index 0000000..fc9066b
--- /dev/null
+++ b/recipes-security/Firejail/firejail_0.9.70.bb
@@ -0,0 +1,61 @@
+#
+# Copyright 2022 Armin Kuster <akuster808@gmail.com>
+#
+SUMMARY = "Linux namespaces and seccomp-bpf sandbox"
+DESCRIPTION = "Firejail is a SUID sandbox program that reduces the risk of security breaches \
+by restricting the running environment of untrusted applications using Linux namespaces, \
+seccomp-bpf and Linux capabilities."
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+LICENSE = "GPL-2.0-only"
+
+SRCREV = "b4b08d21cd95725c9d55dfdb6987fcc6d7893247"
+SRC_URI = "git://github.com/netblue30/firejail.git;protocol=https;branch=master \
+           file://exclude_seccomp_util_compiles.patch \
+           "
+
+DEPENDS = "libseccomp"
+
+S = "${WORKDIR}/git"
+
+inherit autotools-brokensep pkgconfig bash-completion features_check
+
+REQUIRED_DISTRO_FEATURES = "seccomp"
+
+PACKAGECONFIG ?= ""
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"
+
+PACKAGECONFIG[apparmor] = "--enable-apparmor, --disable-apparmor, apparmor, apparmor"
+PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux"
+PACKAGECONFIG[x11] = " --enable-x11, --disable-x11, "
+PACKAGECONFIG[dbusproxy] = ", --disable-dbusproxy, "
+PACKAGECONFIG[notmpfs] = ", --disable-usertmpfs  ,"
+PACKAGECONFIG[nofiretunnel] = ", --disable-firetunnel , "
+PACKAGECONFIG[noprivatehome] = ", --disable-private-home, "
+PACKAGECONFIG[nochroot] = ", --disable-chroot, "
+PACKAGECONFIG[nonetwork] = ", --disable-network, "
+PACKAGECONFIG[nouserns] = ", --disable-userns, "
+PACKAGECONFIG[nofiletransfer] = ", --disable-file-transfer, "
+PACKAGECONFIG[nosuid] = ", --disable-suid, "
+
+EXTRA_OECONF = "--disable-man --enable-busybox-workaround"
+
+PACKAGES:append = " ${PN}-vim ${PN}-zsh"
+
+FILES:${PN}-vim = "${datadir}/vim/"
+FILES:${PN}-zsh = "${datadir}/zsh/"
+
+pkg_postinst_ontarget:${PN} () {
+    ${libdir}/${BPN}/fseccomp default ${libdir}/${BPN}/seccomp
+    ${libdir}/${BPN}/fsec-optimize ${libdir}/${BPN}/seccomp
+    ${libdir}/${BPN}/fseccomp default ${libdir}/${BPN}/seccomp.debug allow-debuggers
+    ${libdir}/${BPN}/fsec-optimize ${libdir}/${BPN}/seccomp.debug
+    ${libdir}/${BPN}/fseccomp secondary 32 ${libdir}/${BPN}/seccomp.32
+    ${libdir}/${BPN}/fsec-optimize ${libdir}/${BPN}/seccomp.32
+    ${libdir}/${BPN}/fseccomp secondary block ${libdir}/${BPN}/seccomp.block_secondary
+    ${libdir}/${BPN}/fseccomp memory-deny-write-execute ${libdir}/${BPN}/seccomp.mdwx
+}
+
+RDEPENDS:${PN} = "bash"
-- 
2.25.1


