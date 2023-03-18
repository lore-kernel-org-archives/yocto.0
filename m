Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D749DC74A5B
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 20:00:06 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.3807.1679169599122410709
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SR4mbtBE;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id c18so9166053qte.5
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FSsNb953aUW4LxU9nJvV4Y52eGzk6ELfmu9x8WCMbE4=;
        b=SR4mbtBEGbhZmDDevKmiKyT/8vZBj72Pt3vxgizDmgXhBSdgKxVOoHcf5v5tMRjW14
         H6EzHqleMXyjFKUItjUEy8ijAxLoJXj2b7MUCUNa55oZJkoqcFsUrbPRtG7J25j/H1fJ
         FrIUyq/t6INXYILvOlDka2c2K1hYmrHMTwhwvbiiIRevuLM5+4WZ++bWKb/oVRlle5yR
         TNHtWVCZpiR8R05+SaLjcu3Tm2VvcaIapEnXXdnbat7cWhwg1MCpgBIxK3iCarNzq5MC
         0toVr64K8HKhdLx+K0AZkwZUXMdNM5pNHVx1Grsez/BPkfy7MkYzm8LzhGf5/x7jJTNh
         kCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FSsNb953aUW4LxU9nJvV4Y52eGzk6ELfmu9x8WCMbE4=;
        b=SZG0tnWio1/kqkHZsst0roQ2wzE5r8KsWTDRINJs81/0sWRlonCZ58zs31Hxut5Bcy
         Jtn5aD9QYYK+uSndvnjMrqRS2o4VdVmd5GvaHU3Q0t+DFWUBXikBkHBF0X+VK/vQobKN
         w7cd26cN09CLMRwmG5imB2mwNpvmkygv/PRlMrI/+v8U9gJGWdQN2yVUl16JXqWl2KeQ
         PaSe/X/czPpoo2wNSZQE9VXLSqw0clSIirDVxHDIi688RRwk6Qrv3aQLb0atO8M2vNAc
         3oqw2t8Wfw4vyf2xE+DJT14xWnhs6qiQ5THhSzpvr+ktsYAgTlsqUUnn+Q/ktRrUtMIc
         2A5A==
X-Gm-Message-State: AO0yUKXPlnLg2IHacjlbD6q2l276m8itsJuisvdxfFQXP6Beh1FlDuah
	6oAohAeqZvjlIqPP4oxq9MKgUzAg670=
X-Google-Smtp-Source: AK7set+CDO1TnUnjoh0fz5iu7Z+6dmjdusQHcM03fbp7o+xIel5q9b3VY/TQ9Mi2AsKnzcm958sCDQ==
X-Received: by 2002:a05:622a:1b8a:b0:3b0:b9a4:a20f with SMTP id bp10-20020a05622a1b8a00b003b0b9a4a20fmr19281462qtb.4.1679169598100;
        Sat, 18 Mar 2023 12:59:58 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 9/9] firejail: update 0.9.72
Date: Sat, 18 Mar 2023 15:59:52 -0400
Message-Id: <20230318195952.538375-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 20:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59461

refresh patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../exclude_seccomp_util_compiles.patch       | 20 +++++++++----------
 ...{firejail_0.9.70.bb => firejail_0.9.72.bb} |  3 ++-
 2 files changed, 12 insertions(+), 11 deletions(-)
 rename recipes-security/Firejail/{firejail_0.9.70.bb => firejail_0.9.72.bb} (96%)

diff --git a/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch b/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch
index a32720a..7e70692 100644
--- a/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch
+++ b/recipes-security/Firejail/firejail/exclude_seccomp_util_compiles.patch
@@ -5,28 +5,28 @@ There are some files that need to run to generate the appropriate files
 we are currently doing this on the target. 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-Index: git/Makefile.in
+Index: git/Makefile
 ===================================================================
---- git.orig/Makefile.in
-+++ git/Makefile.in
-@@ -34,7 +34,6 @@ MYDIRS = src/lib $(MAN_SRC) $(COMPLETION
+--- git.orig/Makefile
++++ git/Makefile
+@@ -18,7 +18,6 @@ MYDIRS = src/lib $(MAN_SRC) $(COMPLETION
  MYLIBS = src/libpostexecseccomp/libpostexecseccomp.so src/libtrace/libtrace.so src/libtracelog/libtracelog.so
  COMPLETIONS = src/zsh_completion/_firejail src/bash_completion/firejail.bash_completion
  MANPAGES = firejail.1 firemon.1 firecfg.1 firejail-profile.5 firejail-login.5 firejail-users.5 jailcheck.1
 -SECCOMP_FILTERS = seccomp seccomp.debug seccomp.32 seccomp.block_secondary seccomp.mdwx seccomp.mdwx.32
  ALL_ITEMS = $(APPS) $(SBOX_APPS) $(SBOX_APPS_NON_DUMPABLE) $(MYLIBS)
  
- .PHONY: all_items $(ALL_ITEMS)
-@@ -52,7 +51,7 @@ $(MANPAGES): src/man
+ .PHONY: all
+@@ -43,7 +42,7 @@ $(MANPAGES): src/man config.mk
  
  man: $(MANPAGES)
  
 -filters: $(SECCOMP_FILTERS) $(SBOX_APPS_NON_DUMPABLE)
-+filters: $(SBOX_APPS_NON_DUMPABLE)
++filters:  $(SBOX_APPS_NON_DUMPABLE)
  seccomp: src/fseccomp/fseccomp src/fsec-optimize/fsec-optimize
  	src/fseccomp/fseccomp default seccomp
  	src/fsec-optimize/fsec-optimize seccomp
-@@ -81,7 +80,6 @@ clean:
+@@ -72,7 +71,6 @@ clean:
  	done
  	$(MAKE) -C test clean
  	rm -f $(MANPAGES) $(MANPAGES:%=%.gz) firejail*.rpm
@@ -34,12 +34,12 @@ Index: git/Makefile.in
  	rm -f test/utils/index.html*
  	rm -f test/utils/wget-log
  	rm -f test/utils/firejail-test-file*
-@@ -119,7 +117,7 @@ endif
+@@ -110,7 +108,7 @@ endif
  	# libraries and plugins
  	install -m 0755 -d $(DESTDIR)$(libdir)/firejail
  	install -m 0755 -t $(DESTDIR)$(libdir)/firejail src/firecfg/firejail-welcome.sh
 -	install -m 0644 -t $(DESTDIR)$(libdir)/firejail $(MYLIBS) $(SECCOMP_FILTERS)
-+	install -m 0644 -t $(DESTDIR)$(libdir)/firejail $(MYLIBS) 
++	install -m 0644 -t $(DESTDIR)$(libdir)/firejail $(MYLIBS)
  	install -m 0755 -t $(DESTDIR)$(libdir)/firejail $(SBOX_APPS)
  	install -m 0755 -t $(DESTDIR)$(libdir)/firejail src/profstats/profstats
  	# plugins w/o read permission (non-dumpable)
diff --git a/recipes-security/Firejail/firejail_0.9.70.bb b/recipes-security/Firejail/firejail_0.9.72.bb
similarity index 96%
rename from recipes-security/Firejail/firejail_0.9.70.bb
rename to recipes-security/Firejail/firejail_0.9.72.bb
index 35f7b07..12a3105 100644
--- a/recipes-security/Firejail/firejail_0.9.70.bb
+++ b/recipes-security/Firejail/firejail_0.9.72.bb
@@ -9,7 +9,7 @@ seccomp-bpf and Linux capabilities."
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 LICENSE = "GPL-2.0-only"
 
-SRCREV = "b4b08d21cd95725c9d55dfdb6987fcc6d7893247"
+SRCREV = "2551bc71f14052344666f3ca2ad67f5b798020b9"
 SRC_URI = "git://github.com/netblue30/firejail.git;protocol=https;branch=master \
            file://exclude_seccomp_util_compiles.patch \
            "
@@ -46,6 +46,7 @@ PACKAGES:append = " ${PN}-vim ${PN}-zsh"
 
 FILES:${PN}-vim = "${datadir}/vim/"
 FILES:${PN}-zsh = "${datadir}/zsh/"
+FILES:${PN}-dev = "${datadir}/gtksourceview-5/"
 
 pkg_postinst_ontarget:${PN} () {
     ${libdir}/${BPN}/fseccomp default ${libdir}/${BPN}/seccomp
-- 
2.25.1


