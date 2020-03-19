Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3961.1584582825261448431
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FzjovwUT;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24ACBE01845; Wed, 18 Mar 2020 18:53:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27A3CE017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:40 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id x2so490511pfn.9
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=09AkLpUFcvBOntLww3p2gej5qsiQUSy46LnEsAOs29I=;
        b=FzjovwUTtnI50W8kasgzSwRjDMP99W1tRo38txvdl8PNvEjjO7zgz4O4d0MiT7Rrko
         tbqtRZGGb2/OgYYXtU8PVseS6EejRgXt5bj3kfRq7mbYLTsGv0kmHP5IxFmXpcPGAr4A
         pSH8GmDHOfQMtm2SHwQ1yX1ju9WTe0FVlE8iokpXjXXuYd5IBJYjdy4P2NbmNKegHDBL
         4xsDTPgulrEcXbPdXnBdLb6uKobeXkFQC9BIvaysCxYzkgtY+U9wCidyUyRCU/8KNoLL
         N9C/tTw2eD39egXp/gTpsEnqNd9jZ+k9HJ7o1I7tVBm9ykoXeTDukIBomLkNXTkk/VxZ
         1xtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=09AkLpUFcvBOntLww3p2gej5qsiQUSy46LnEsAOs29I=;
        b=BduLzm8o/Ns2YWrYhgoGdYerRkJ8V3rhkDIW5cXhfdTod8Pgel4vBS/P2AjDHtJcPn
         B3LQ+fMAGkKUHRux/dLoHQFhSbj/H2Qv+PYktI2SJWkOD5clkCfwXSJVvFWUYxonKBEY
         i+MUiMyJ9FYnMrdTjsBvArVmuzWjpGAbnaA27cEDr6I6PeMNIYeTk68jfyTjSUlEVlNC
         cIV9JZqz+GGG/tAHYz5ry2X6roV4q3Pf79pkG1zZV4/+Jot4p2jYk5a0FIphPZbhE5xk
         tsbx3djqhEsJevEDVEEToilIC37lliHsaHSk/rN4sIeEM9D43zeshuPAi+ht0lalvQ1m
         5Egw==
X-Gm-Message-State: ANhLgQ1LFBd2kYeahxkmSyFoMNmDneAc66oKIfWnxmJHnWUEV5cdjTw6
	yoXYkjzjzd0AiLqRG0lTCmFBgSjY+PA=
X-Google-Smtp-Source: ADFU+vsc4ohFznsAwyLtV3jvKWO8aCD8VJZb9/TDZWBbSE8ss3MYzLzCIItMf0NMB4sROrpd/zPhNA==
X-Received: by 2002:a65:4081:: with SMTP id t1mr791029pgp.134.1584582817635;
        Wed, 18 Mar 2020 18:53:37 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id e38sm300726pgb.32.2020.03.18.18.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 9FFE02A099A; Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 18/20] Update racoon2 to build in dumfell
Date: Wed, 18 Mar 2020 18:53:19 -0700
Message-Id: <20200319015321.15525-18-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

* Move to https://github.com/zoulasc/racoon2 which appears
to be actively maintained(rather then no changes in 10 years)
* Refresh patches for current
* Drop patches to .in file and move to more correct patches
* Fix up issue with building from all .am files.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../0001-Add-DESTDIR-to-install-commands.patch     | 163 +++++++++++++++++
 .../0002-Enable-turning-of-kinkd-and-iked.patch    |  55 ++++++
 ...Replace-perl_bindir-with-usr-bin-env-perl.patch |  22 +++
 ...=> 0004-racoon2-disable-hard-limit-timer.patch} |  35 ++--
 .../racoon2/0005-racoon2-fix-rekeying-reply.patch  |  25 +++
 ... 0006-racoon2-fix-sadb_msg_seq-collision.patch} |  25 ++-
 .../racoon2/0007-racoon2-fwrite-return-value.patch |  30 +++
 .../0008-racoon2-iked-needs-libcrypto.patch        |  24 +++
 .../racoon2/0009-racoon2-iked-initscript.patch     |  46 +++++
 .../racoon2/0010-racoon2-kinkd-initscript.patch    |  46 +++++
 .../racoon2/0011-racoon2-spmd-initscript.patch     |  44 +++++
 .../0012-racoon2-remove-deprecated-do-clause.patch |  27 +++
 ...=> 0013-racoon2-fix-hardcoded-sysconfdir.patch} | 141 +++++++-------
 .../racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch  |  32 ----
 .../racoon2/racoon2/racoon2-DESTDIR.patch          | 202 ---------------------
 .../racoon2/racoon2-Remove-INSTALL_OPTS.patch      |  87 ---------
 .../racoon2/racoon2-configure-autoheader.patch     |  60 ------
 .../racoon2/racoon2/racoon2-configure-memcmp.patch |  32 ----
 ...oon2-configure.in-remove-redundant-macros.patch | 199 --------------------
 .../racoon2-correct-openssl-include-path.patch     |  70 -------
 .../racoon2/racoon2-fix-configure-error.patch      |  50 -----
 .../racoon2/racoon2-fix-rekeying-reply.patch       |  28 ---
 ...oon2-fix-target-perl-path-to-generate-RPM.patch |  86 ---------
 .../racoon2/racoon2-fwrite-return-value.patch      |  34 ----
 .../racoon2/racoon2/racoon2-iked-initscript.patch  |  40 ----
 .../racoon2/racoon2-iked-needs-libcrypto.patch     |  34 ----
 .../racoon2/racoon2/racoon2-kinkd-initscript.patch |  40 ----
 .../racoon2/racoon2-reenable-the-ipv6-check.patch  |  65 -------
 .../racoon2-remove-deprecated-do-clause.patch      |  19 --
 .../racoon2-removed-conflicting-prototypes.patch   |  51 ------
 .../racoon2/racoon2/racoon2-spmd-initscript.patch  |  39 ----
 .../{racoon2_20100526a.bb => racoon2_202003018.bb} |  46 +++--
 32 files changed, 594 insertions(+), 1303 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0001-Add-DESTDIR-to-install-commands.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0002-Enable-turning-of-kinkd-and-iked.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0003-Replace-perl_bindir-with-usr-bin-env-perl.patch
 rename meta-cgl-common/recipes-cgl/racoon2/racoon2/{racoon2-disable-hard-limit-timer.patch => 0004-racoon2-disable-hard-limit-timer.patch} (61%)
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0005-racoon2-fix-rekeying-reply.patch
 rename meta-cgl-common/recipes-cgl/racoon2/racoon2/{racoon2-fix-sadb_msg_seq-collision.patch => 0006-racoon2-fix-sadb_msg_seq-collision.patch} (60%)
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0007-racoon2-fwrite-return-value.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0008-racoon2-iked-needs-libcrypto.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0009-racoon2-iked-initscript.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0010-racoon2-kinkd-initscript.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0011-racoon2-spmd-initscript.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/0012-racoon2-remove-deprecated-do-clause.patch
 rename meta-cgl-common/recipes-cgl/racoon2/racoon2/{racoon2-fix-hardcoded-sysconfdir.patch => 0013-racoon2-fix-hardcoded-sysconfdir.patch} (63%)
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch
 rename meta-cgl-common/recipes-cgl/racoon2/{racoon2_20100526a.bb => racoon2_202003018.bb} (70%)

diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0001-Add-DESTDIR-to-install-commands.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0001-Add-DESTDIR-to-install-commands.patch
new file mode 100644
index 0000000..5dd46ba
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0001-Add-DESTDIR-to-install-commands.patch
@@ -0,0 +1,163 @@
+From 56198a5bbe5380f53d75f5a5ea2e31714460fcd2 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Tue, 17 Mar 2020 21:11:28 +0000
+Subject: [PATCH 01/13] Add DESTDIR to install commands.
+
+---
+ pskgen/Makefile.am                    |  2 +-
+ samples/Makefile.am                   | 24 ++++++++++----------
+ samples/hook/Makefile.am              | 32 +++++++++++++--------------
+ samples/hook/child-down.d/Makefile.am |  8 +++----
+ samples/hook/child-up.d/Makefile.am   | 10 ++++-----
+ samples/hook/ikesa-up.d/Makefile.am   |  4 ++--
+ samples/init.d/Makefile.am            |  8 +++----
+ 7 files changed, 44 insertions(+), 44 deletions(-)
+
+diff --git a/pskgen/Makefile.am b/pskgen/Makefile.am
+index c7e8b78..998582f 100644
+--- a/pskgen/Makefile.am
++++ b/pskgen/Makefile.am
+@@ -6,5 +6,5 @@ sbin_SCRIPTS=pskgen
+ man_MANS=pskgen.8
+ 
+ install-exec-hook:
+-	$(INSTALL) -d $(sysconfdir)
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)
+ 	sh ./autogen.spmd.pwd
+diff --git a/samples/Makefile.am b/samples/Makefile.am
+index 56250cd..4e79e2d 100644
+--- a/samples/Makefile.am
++++ b/samples/Makefile.am
+@@ -6,15 +6,15 @@ SUBDIRS = @startup_scripts@ hook
+ 
+ install-exec-hook:
+ 	$(INSTALL) -d -o 0 -g 0 -m 700 $(DESTDIR)/var/run/racoon2
+-	$(INSTALL) -d $(sysconfdir)
+-	$(INSTALL) -m 600 racoon2.conf $(sysconfdir)/racoon2.conf.sample
+-	$(INSTALL) -m 600 vals.conf $(sysconfdir)/vals.conf.sample
+-	$(INSTALL) -m 600 default.conf $(sysconfdir)/default.conf.sample
+-	$(INSTALL) -m 600 transport_ike.conf $(sysconfdir)/transport_ike.conf.sample
+-	$(INSTALL) -m 600 tunnel_ike.conf $(sysconfdir)/tunnel_ike.conf.sample
+-	$(INSTALL) -m 600 tunnel_ike_natt.conf $(sysconfdir)/tunnel_ike_natt.conf.sample
+-	$(INSTALL) -m 600 transport_kink.conf $(sysconfdir)/transport_kink.conf.sample
+-	$(INSTALL) -m 600 tunnel_kink.conf $(sysconfdir)/tunnel_kink.conf.sample
+-	$(INSTALL) -m 600 local-test.conf $(sysconfdir)/local-test.conf.sample
+-	$(INSTALL) -d -m 700 $(sysconfdir)/psk
+-	$(INSTALL) -d -m 700 $(sysconfdir)/cert
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)
++	$(INSTALL) -m 600 racoon2.conf $(DESTDIR)$(sysconfdir)/racoon2.conf.sample
++	$(INSTALL) -m 600 vals.conf $(DESTDIR)$(sysconfdir)/vals.conf.sample
++	$(INSTALL) -m 600 default.conf $(DESTDIR)$(sysconfdir)/default.conf.sample
++	$(INSTALL) -m 600 transport_ike.conf $(DESTDIR)$(sysconfdir)/transport_ike.conf.sample
++	$(INSTALL) -m 600 tunnel_ike.conf $(DESTDIR)$(sysconfdir)/tunnel_ike.conf.sample
++	$(INSTALL) -m 600 tunnel_ike_natt.conf $(DESTDIR)$(sysconfdir)/tunnel_ike_natt.conf.sample
++	$(INSTALL) -m 600 transport_kink.conf $(DESTDIR)$(sysconfdir)/transport_kink.conf.sample
++	$(INSTALL) -m 600 tunnel_kink.conf $(DESTDIR)$(sysconfdir)/tunnel_kink.conf.sample
++	$(INSTALL) -m 600 local-test.conf $(DESTDIR)$(sysconfdir)/local-test.conf.sample
++	$(INSTALL) -d -m 700 $(DESTDIR)$(sysconfdir)/psk
++	$(INSTALL) -d -m 700 $(DESTDIR)$(sysconfdir)/cert
+diff --git a/samples/hook/Makefile.am b/samples/hook/Makefile.am
+index d3fabdb..f53a1f5 100644
+--- a/samples/hook/Makefile.am
++++ b/samples/hook/Makefile.am
+@@ -5,19 +5,19 @@ ACLOCAL_AMFLAGS = -I m4
+ SUBDIRS = child-down.d child-up.d ikesa-up.d
+ 
+ install-exec-hook:
+-	$(INSTALL) -d $(sysconfdir)/hook
+-	$(INSTALL_DATA) functions $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/ikesa-up.d
+-	$(INSTALL_SCRIPT) ikesa-up $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/ikesa-down.d
+-	$(INSTALL_SCRIPT) ikesa-down $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/ikesa-rekey.d
+-	$(INSTALL_SCRIPT) ikesa-rekey $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/child-up.d
+-	$(INSTALL_SCRIPT) child-up $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/child-down.d
+-	$(INSTALL_SCRIPT) child-down $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/child-rekey.d
+-	$(INSTALL_SCRIPT) child-rekey $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/migration.d
+-	$(INSTALL_SCRIPT) migration $(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL_DATA) functions $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-up.d
++	$(INSTALL_SCRIPT) ikesa-up $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-down.d
++	$(INSTALL_SCRIPT) ikesa-down $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-rekey.d
++	$(INSTALL_SCRIPT) ikesa-rekey $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-up.d
++	$(INSTALL_SCRIPT) child-up $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-down.d
++	$(INSTALL_SCRIPT) child-down $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-rekey.d
++	$(INSTALL_SCRIPT) child-rekey $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/migration.d
++	$(INSTALL_SCRIPT) migration $(DESTDIR)$(sysconfdir)/hook
+diff --git a/samples/hook/child-down.d/Makefile.am b/samples/hook/child-down.d/Makefile.am
+index ff8d741..bb28ff7 100644
+--- a/samples/hook/child-down.d/Makefile.am
++++ b/samples/hook/child-down.d/Makefile.am
+@@ -3,7 +3,7 @@
+ ACLOCAL_AMFLAGS = -I m4
+ 
+ install-exec-hook:
+-	$(INSTALL) -d $(sysconfdir)/hook/child-down.d
+-	$(INSTALL_DATA) 01setkey $(sysconfdir)/hook/child-down.d
+-	$(INSTALL_DATA) 02ifconfig-gif $(sysconfdir)/hook/child-down.d
+-	$(INSTALL_DATA) 03arp $(sysconfdir)/hook/child-down.d
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-down.d
++	$(INSTALL_DATA) 01setkey $(DESTDIR)$(sysconfdir)/hook/child-down.d
++	$(INSTALL_DATA) 02ifconfig-gif $(DESTDIR)$(sysconfdir)/hook/child-down.d
++	$(INSTALL_DATA) 03arp $(DESTDIR)$(sysconfdir)/hook/child-down.d
+diff --git a/samples/hook/child-up.d/Makefile.am b/samples/hook/child-up.d/Makefile.am
+index 71d03c9..9c9bbea 100644
+--- a/samples/hook/child-up.d/Makefile.am
++++ b/samples/hook/child-up.d/Makefile.am
+@@ -3,8 +3,8 @@
+ ACLOCAL_AMFLAGS = -I m4
+ 
+ install-exec-hook:
+-	$(INSTALL) -d $(sysconfdir)/hook/child-up.d
+-	$(INSTALL_DATA) 00childup_sample $(sysconfdir)/hook/child-up.d
+-	$(INSTALL_DATA) 01setkey $(sysconfdir)/hook/child-up.d
+-	$(INSTALL_DATA) 02ifconfig-gif $(sysconfdir)/hook/child-up.d
+-	$(INSTALL_DATA) 03arp $(sysconfdir)/hook/child-up.d
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-up.d
++	$(INSTALL_DATA) 00childup_sample $(DESTDIR)$(sysconfdir)/hook/child-up.d
++	$(INSTALL_DATA) 01setkey $(DESTDIR)$(sysconfdir)/hook/child-up.d
++	$(INSTALL_DATA) 02ifconfig-gif $(DESTDIR)$(sysconfdir)/hook/child-up.d
++	$(INSTALL_DATA) 03arp $(DESTDIR)$(sysconfdir)/hook/child-up.d
+diff --git a/samples/hook/ikesa-up.d/Makefile.am b/samples/hook/ikesa-up.d/Makefile.am
+index f117004..dba63ba 100644
+--- a/samples/hook/ikesa-up.d/Makefile.am
++++ b/samples/hook/ikesa-up.d/Makefile.am
+@@ -3,5 +3,5 @@
+ ACLOCAL_AMFLAGS = -I m4
+ 
+ install-exec-hook:
+-	$(INSTALL) -d $(sysconfdir)/hook/ikesa-up.d
+-	$(INSTALL_DATA) 00ikesaup_sample $(sysconfdir)/hook/ikesa-up.d
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-up.d
++	$(INSTALL_DATA) 00ikesaup_sample $(DESTDIR)$(sysconfdir)/hook/ikesa-up.d
+diff --git a/samples/init.d/Makefile.am b/samples/init.d/Makefile.am
+index 805c8eb..debe439 100644
+--- a/samples/init.d/Makefile.am
++++ b/samples/init.d/Makefile.am
+@@ -3,7 +3,7 @@
+ ACLOCAL_AMFLAGS = -I m4
+ 
+ install-exec-hook:
+-	$(INSTALL) -d $(sysconfdir)/init.d
+-	$(INSTALL_SCRIPT) iked $(sysconfdir)/init.d/iked
+-	$(INSTALL_SCRIPT) kinkd $(sysconfdir)/init.d/kinkd
+-	$(INSTALL_SCRIPT) spmd $(sysconfdir)/init.d/spmd
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/init.d
++	$(INSTALL_SCRIPT) iked $(DESTDIR)$(sysconfdir)/init.d/iked
++	$(INSTALL_SCRIPT) kinkd $(DESTDIR)$(sysconfdir)/init.d/kinkd
++	$(INSTALL_SCRIPT) spmd $(DESTDIR)$(sysconfdir)/init.d/spmd
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0002-Enable-turning-of-kinkd-and-iked.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0002-Enable-turning-of-kinkd-and-iked.patch
new file mode 100644
index 0000000..169ed5f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0002-Enable-turning-of-kinkd-and-iked.patch
@@ -0,0 +1,55 @@
+From a019e2b5c898629919a6b22e4cbadeac3e337fa8 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Tue, 17 Mar 2020 22:09:01 +0000
+Subject: [PATCH 02/13] Enable turning of kinkd and iked
+
+---
+ Makefile.am  |  2 +-
+ configure.ac | 22 +++++++++++++++++++++-
+ 2 files changed, 22 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 3d3f01b..358e97e 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -2,6 +2,6 @@
+ 
+ ACLOCAL_AMFLAGS = -I m4
+ 
+-SUBDIRS = lib spmd kinkd iked pskgen samples
++SUBDIRS = $(subdirs) pskgen samples
+ 
+
+diff --git a/configure.ac b/configure.ac
+index 955ebe5..e04bb6f 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -15,8 +15,27 @@ AC_PROG_INSTALL
+ AC_PROG_RANLIB
+ AC_PROG_MAKE_SET
+ RC_IF_INSTALL_OPTS
++AC_CONFIG_SUBDIRS(lib spmd)
++
++AC_MSG_CHECKING(if --enable-kinkd option is specified)
++AC_ARG_ENABLE(kinkd,
++    [ --enable-kinkd           enable kinkd[yes]],
++    AC_MSG_RESULT($enable_kinkd), 
++    AC_MSG_RESULT(default to yes)
++    enable_kinkd=yes
++    ac_configure_args="$ac_configure_args --enable-kinkd")
++
++if test "x$enable_kinkd" = xyes; then 
++   AC_CONFIG_SUBDIRS(kinkd)
++fi
++AC_MSG_CHECKING(if --enable-iked option is specified)
++AC_ARG_ENABLE(iked, [  --enable-iked           build iked [yes]],
++       , [enable_iked=yes])
++AC_MSG_RESULT($enable_iked)
++if test x"$enable_iked" = xyes; then
++   AC_CONFIG_SUBDIRS(iked)
++fi
+ 
+-AC_CONFIG_SUBDIRS([lib spmd iked kinkd])
+ 
+ dnl Set the debug option by default for now.
+ AC_MSG_CHECKING(if --enable-debug option is specified)
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0003-Replace-perl_bindir-with-usr-bin-env-perl.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0003-Replace-perl_bindir-with-usr-bin-env-perl.patch
new file mode 100644
index 0000000..7043d39
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0003-Replace-perl_bindir-with-usr-bin-env-perl.patch
@@ -0,0 +1,22 @@
+From 0fce50be1c7c39b43d9cb5fceaacf1c7c235d2a1 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Tue, 17 Mar 2020 22:09:52 +0000
+Subject: [PATCH 03/13] Replace perl_bindir with /usr/bin/env perl
+
+---
+ pskgen/pskgen.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/pskgen/pskgen.in b/pskgen/pskgen.in
+index 150baef..d2aa8e0 100755
+--- a/pskgen/pskgen.in
++++ b/pskgen/pskgen.in
+@@ -1,4 +1,4 @@
+-#!@perl_bindir@
++#!/usr/bin/env perl
+ 
+ # Copyright (C) 2004, 2005 WIDE Project.
+ # All rights reserved.
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0004-racoon2-disable-hard-limit-timer.patch
similarity index 61%
rename from meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch
rename to meta-cgl-common/recipes-cgl/racoon2/racoon2/0004-racoon2-disable-hard-limit-timer.patch
index e555695..0ba724f 100644
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0004-racoon2-disable-hard-limit-timer.patch
@@ -1,21 +1,17 @@
-Disable hard-limit timer
-
-Since we only deliver racoon2 on linux platform and linux
-kernel implemented a timer for monitoring the hard-limit,
-disable the one realized on racoon2.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yong Zhang <yong.zhang@windriver.com>
-Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+From 06da02f5282e3e31f839f78f33107bb457dd365f Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 20:22:57 +0000
+Subject: [PATCH] racoon2-disable-hard-limit-timer
 
 ---
- iked/ikev2_child.c |   14 +++++++-------
+ iked/ikev2_child.c | 14 +++++++-------
  1 file changed, 7 insertions(+), 7 deletions(-)
 
+diff --git a/iked/ikev2_child.c b/iked/ikev2_child.c
+index 8b693ff..0b8fa93 100644
 --- a/iked/ikev2_child.c
 +++ b/iked/ikev2_child.c
-@@ -683,7 +683,7 @@ ikev2_create_child_responder_cont(struct
+@@ -836,7 +836,7 @@ ikev2_create_child_responder_cont(struct ikev2_child_sa *child_sa)
  	ikev2_add_ipsec_sa(child_sa, &child_sa->child_param,
  			   child_sa->peer_proposal, child_sa->my_proposal[1]);
  
@@ -24,7 +20,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  	/* KAME does not generate hard lifetime expiration message */
  	/* start expiration timer */
  	{
-@@ -705,7 +705,7 @@ ikev2_create_child_responder_cont(struct
+@@ -858,7 +858,7 @@ ikev2_create_child_responder_cont(struct ikev2_child_sa *child_sa)
  			}
  		}
  	}
@@ -33,7 +29,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  
  	TRACE((PLOGLOC, "ike_sa state %d\n", ike_sa->state));
  	switch (ike_sa->state) {
-@@ -1481,7 +1481,7 @@ ikev2_update_child(struct ikev2_child_sa
+@@ -1657,7 +1657,7 @@ ikev2_update_child(struct ikev2_child_sa *child_sa,
  
  	ikev2_child_state_set(child_sa, IKEV2_CHILD_STATE_MATURE);
  
@@ -42,7 +38,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  	/* KAME does not generate hard lifetime expiration message */
  	/* start expiration timer */
  	{
-@@ -1505,7 +1505,7 @@ ikev2_update_child(struct ikev2_child_sa
+@@ -1681,7 +1681,7 @@ ikev2_update_child(struct ikev2_child_sa *child_sa,
  				goto abort_nomem;
  		}
  	}
@@ -51,7 +47,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  
        done:
  	if (new_my_proposal_list)
-@@ -1566,7 +1566,7 @@ ikev2_update_child(struct ikev2_child_sa
+@@ -1742,7 +1742,7 @@ ikev2_update_child(struct ikev2_child_sa *child_sa,
  	goto done;
  }
  
@@ -60,7 +56,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  /*
   * timer callback for child_sa expiration
   */
-@@ -1579,7 +1579,7 @@ ikev2_child_expire_callback(void *param)
+@@ -1755,7 +1755,7 @@ ikev2_child_expire_callback(void *param)
  	SCHED_KILL(child_sa->timer);
  	ikev2_expire_child(child_sa);
  }
@@ -69,7 +65,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  
  int
  ikev2_expired(struct sadb_request *req, struct rcpfk_msg *param)
-@@ -1707,7 +1707,7 @@ ikev2_expire_sa(struct ikev2_child_sa *c
+@@ -1883,7 +1883,7 @@ ikev2_expire_sa(struct ikev2_child_sa *child_sa, int expire_mode,
  		}
  		return;
  	case 2:		/* hard expired */
@@ -78,3 +74,6 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  		/*
  		 * hard expire is not used, due to difference of KAME and USAGI.
  		 * instead, use child_sa->timer
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0005-racoon2-fix-rekeying-reply.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0005-racoon2-fix-rekeying-reply.patch
new file mode 100644
index 0000000..3ee7edd
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0005-racoon2-fix-rekeying-reply.patch
@@ -0,0 +1,25 @@
+From 506b9afae89e322f6a82736c3ea112c9b989f7e6 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 18:46:16 +0000
+Subject: [PATCH 05/13] racoon2-fix-rekeying-reply
+
+---
+ iked/ikev2.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/iked/ikev2.c b/iked/ikev2.c
+index 439d1b9..230f2f2 100644
+--- a/iked/ikev2.c
++++ b/iked/ikev2.c
+@@ -951,6 +951,8 @@ ikev2_initiator_start(struct ikev2_sa *ike_sa)
+ 	if (!pkt)
+ 		goto fail;
+ 
++	++ike_sa->request_pending;
++
+ 	/* save message data for AUTH calculation */
+ 	if (ike_sa->my_first_message)
+ 		rc_vfree(ike_sa->my_first_message);
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0006-racoon2-fix-sadb_msg_seq-collision.patch
similarity index 60%
rename from meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch
rename to meta-cgl-common/recipes-cgl/racoon2/racoon2/0006-racoon2-fix-sadb_msg_seq-collision.patch
index 2fca085..24b4f1c 100644
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0006-racoon2-fix-sadb_msg_seq-collision.patch
@@ -1,21 +1,17 @@
-Fix sadb_msg_seq collision
-
-It looks like there's a problem in SADB message sequence number
-handling.  As a temporary measure, initializing sadb_msg_seq with a
-large random number might help.
-
-Upstream-Status: Pending
-
-Signed-off-by: Yong Zhang <yong.zhang@windriver.com>
-Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+From 402b08013138f6e00a18fbddaba8c801f472b5d6 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 18:49:16 +0000
+Subject: [PATCH 06/13] racoon2-fix-sadb_msg_seq-collision
 
 ---
- iked/ike_pfkey.c |   10 +++++++++-
+ iked/ike_pfkey.c | 10 +++++++++-
  1 file changed, 9 insertions(+), 1 deletion(-)
 
+diff --git a/iked/ike_pfkey.c b/iked/ike_pfkey.c
+index e3763ef..f594c8c 100644
 --- a/iked/ike_pfkey.c
 +++ b/iked/ike_pfkey.c
-@@ -131,6 +131,7 @@
+@@ -130,6 +130,7 @@ static SADB_LIST_HEAD(sadb_request_list_head, sadb_request) sadb_request_list_he
  static int pfkey_socket;
  static uint32_t sadb_msg_seq = 0x4000000;	/* arbitrary large number to avoid collision with kernel message */
  
@@ -23,7 +19,7 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  static int sadb_getspi_callback(struct rcpfk_msg *param);
  static int sadb_update_callback(struct rcpfk_msg *param);
  static int sadb_get_callback(struct rcpfk_msg *param);
-@@ -207,7 +208,14 @@
+@@ -206,7 +207,14 @@ sadb_socket(void)
  uint32_t
  sadb_new_seq(void)
  {
@@ -39,3 +35,6 @@ Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
  }
  
  static void
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0007-racoon2-fwrite-return-value.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0007-racoon2-fwrite-return-value.patch
new file mode 100644
index 0000000..80a0981
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0007-racoon2-fwrite-return-value.patch
@@ -0,0 +1,30 @@
+From bb73405684f5cfd62c10a80826a3140f96d032ae Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 18:50:59 +0000
+Subject: [PATCH 07/13] racoon2-fwrite-return-value
+
+---
+ lib/cftoken.l | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+diff --git a/lib/cftoken.l b/lib/cftoken.l
+index abc2883..3305ad4 100644
+--- a/lib/cftoken.l
++++ b/lib/cftoken.l
+@@ -87,6 +87,13 @@ static char rcf_linebuf[CF_LINEBUFSIZE];
+ 	}
+ #else
+ #define DP
++#endif
++
++#ifndef ECHO
++/* This used to be an fputs(), but since the string might contain NUL's,
++ * we now use fwrite().
++ */
++#define ECHO do { if (fwrite( yytext, yyleng, 1, yyout )) {} } while (0)
+ #endif
+ 
+ 	/* the include files stack */
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0008-racoon2-iked-needs-libcrypto.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0008-racoon2-iked-needs-libcrypto.patch
new file mode 100644
index 0000000..703e192
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0008-racoon2-iked-needs-libcrypto.patch
@@ -0,0 +1,24 @@
+From d5188281f7b83cc0fea3b2582cbd3f36f24df8a8 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 18:52:49 +0000
+Subject: [PATCH 08/13] racoon2-iked-needs-libcrypto
+
+---
+ iked/Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/iked/Makefile.am b/iked/Makefile.am
+index 6ea188d..ad40af5 100644
+--- a/iked/Makefile.am
++++ b/iked/Makefile.am
+@@ -24,6 +24,6 @@ IKEV2_NATT_SRC = nattraversal.c
+ iked_SOURCES = main.c dh.c ike_sa.c ike_conf.c isakmp.c authenticator.c encryptor.c crypto_openssl.c str2val.c keyed_hash.c sockmisc.c ike_pfkey.c ike_spmif.c schedule.c ratelimit.c script.c rtsock.c ${IKEV1_SRC} ${IKEV2_SRC} ${IKEV1_NATT_SRC} ${IKEV2_NATT_SRC}
+ sbin_PROGRAMS=iked
+ 
+-LIBS = @LIBS@
++LIBS = @LIBS@ -lcrypto
+ 
+ man_MANS = iked.8
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0009-racoon2-iked-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0009-racoon2-iked-initscript.patch
new file mode 100644
index 0000000..1290091
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0009-racoon2-iked-initscript.patch
@@ -0,0 +1,46 @@
+From 5bf488a87f18cabf34e89f4f537ef6050b4f67cd Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 18:58:05 +0000
+Subject: [PATCH 09/13] racoon2-iked-initscript
+
+---
+ samples/init.d/iked.in | 9 ++++++++-
+ 1 file changed, 8 insertions(+), 1 deletion(-)
+
+diff --git a/samples/init.d/iked.in b/samples/init.d/iked.in
+index ff26204..54bc721 100644
+--- a/samples/init.d/iked.in
++++ b/samples/init.d/iked.in
+@@ -3,6 +3,9 @@
+ # iked startup script
+ #
+ 
++# Source function library.
++[ -e /etc/init.d/functions ] && . /etc/init.d/functions
++
+ NAME=iked
+ DAEMON=@sbindir@/$NAME
+ PIDFILE=/var/run/$NAME.pid
+@@ -22,6 +25,10 @@ stop)
+ 	read pid junk < $PIDFILE && kill $pid
+ 	echo "."
+ 	;;
++status)
++	status $DAEMON;
++	exit $?
++	;;
+ restart)
+ 	$0 stop
+ 	$0 start
+@@ -32,7 +39,7 @@ reload)
+ 	echo "."
+ 	;;
+ *)
+-	echo "usage: $0 {start|stop|restart|reload}"
++	echo "usage: $0 {start|stop|status|restart|reload}"
+ 	exit 1
+ 	;;
+ esac
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0010-racoon2-kinkd-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0010-racoon2-kinkd-initscript.patch
new file mode 100644
index 0000000..8fe9689
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0010-racoon2-kinkd-initscript.patch
@@ -0,0 +1,46 @@
+From 3b30f7dbe0b29ea495e7d52620cc36bc91d2a5bc Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 19:01:36 +0000
+Subject: [PATCH 10/13] racoon2-kinkd-initscript
+
+---
+ samples/init.d/kinkd.in | 9 ++++++++-
+ 1 file changed, 8 insertions(+), 1 deletion(-)
+
+diff --git a/samples/init.d/kinkd.in b/samples/init.d/kinkd.in
+index 5c8a7c5..8464aaa 100644
+--- a/samples/init.d/kinkd.in
++++ b/samples/init.d/kinkd.in
+@@ -3,6 +3,9 @@
+ # kinkd start up script
+ #
+ 
++# Source function library.
++[ -e /etc/init.d/functions ] && . /etc/init.d/functions
++
+ NAME=kinkd
+ DAEMON=@sbindir@/$NAME
+ PIDFILE=/var/run/$NAME.pid
+@@ -22,6 +25,10 @@ stop)
+ 	read pid junk < $PIDFILE && kill $pid
+ 	echo "."
+ 	;;
++  status)
++	status $DAEMON;
++	exit $?
++	;;
+ restart)
+ 	$0 stop
+ 	$0 start
+@@ -32,7 +39,7 @@ reload)
+ 	echo "."
+ 	;;
+ *)
+-	echo "usage: $0 {start|stop|restart|reload}"
++	echo "usage: $0 {start|stop|status|restart|reload}"
+ 	exit 1
+ 	;;
+ esac
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0011-racoon2-spmd-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0011-racoon2-spmd-initscript.patch
new file mode 100644
index 0000000..45db6d4
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0011-racoon2-spmd-initscript.patch
@@ -0,0 +1,44 @@
+From e85641dcabe8cac0fb5b6df9d2678ed4f5a28942 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 19:06:54 +0000
+Subject: [PATCH 11/13] racoon2-spmd-initscript
+
+---
+ samples/init.d/spmd.in | 9 ++++++++-
+ 1 file changed, 8 insertions(+), 1 deletion(-)
+
+diff --git a/samples/init.d/spmd.in b/samples/init.d/spmd.in
+index f73e13a..04be055 100644
+--- a/samples/init.d/spmd.in
++++ b/samples/init.d/spmd.in
+@@ -1,5 +1,8 @@
+ #! /bin/sh
+ 
++# Source function library.
++[ -e /etc/init.d/function ] && . /etc/init.d/functions
++
+ DAEMON=@sbindir@/spmd
+ DAEMON_OPT=""
+ NAME="spmd"
+@@ -23,13 +26,17 @@ case "$1" in
+ 	$DAEMON -k
+ 	echo "."
+ 	;;
++  status)
++	status $DAEMON;
++	exit $?
++	;;
+   restart|force-reload)
+   	$0 stop
+ 	$0 start
+ 	;;
+   *)
+ 	N=/etc/init.d/$NAME
+-	echo "Usage: $N {start|stop|restart|force-reload}" >&2
++	echo "Usage: $N {start|stop|status|restart|force-reload}" >&2
+ 	exit 1
+ 	;;
+ esac
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/0012-racoon2-remove-deprecated-do-clause.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0012-racoon2-remove-deprecated-do-clause.patch
new file mode 100644
index 0000000..8afe22c
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0012-racoon2-remove-deprecated-do-clause.patch
@@ -0,0 +1,27 @@
+From 153a531d0cb85feca60b04832435a1925c5eaecc Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 19:08:42 +0000
+Subject: [PATCH 12/13] racoon2-remove-deprecated-do-clause
+
+---
+ pskgen/pskgen.in | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/pskgen/pskgen.in b/pskgen/pskgen.in
+index d2aa8e0..06b449c 100755
+--- a/pskgen/pskgen.in
++++ b/pskgen/pskgen.in
+@@ -59,8 +59,8 @@ EOD
+ 	exit 0;
+ }
+ 
+-require Getopt::Std;
+-Getopt::Std::getopts('rs:o:di:he:d');
++use Getopt::Std;
++getopts('rs:o:di:he:d');
+ $output = '-';
+ $output = $opt_o if ($opt_o);
+ 
+-- 
+2.24.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0013-racoon2-fix-hardcoded-sysconfdir.patch
similarity index 63%
rename from meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch
rename to meta-cgl-common/recipes-cgl/racoon2/racoon2/0013-racoon2-fix-hardcoded-sysconfdir.patch
index 4758644..b3fd55b 100644
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/0013-racoon2-fix-hardcoded-sysconfdir.patch
@@ -1,42 +1,23 @@
-From d71fb0712175b76304795bf90a125bc2b8d4c959 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 9 Jun 2017 08:55:36 +0800
-Subject: [PATCH] racoon2: fix hardcoded sysconfdir
+From 4d6a8645bf2c4041afeb1c1a4d0cf340fe5c7d6f Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 18 Mar 2020 19:54:51 +0000
+Subject: [PATCH 13/13] racoon2-fix-hardcoded-sysconfdir
 
-Replace the hardcoded path /etc/racoon2 with $sysconfdir
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- pskgen/Makefile.in         |  2 +-
- pskgen/autogen.spmd.pwd.in |  8 ++++----
- samples/child-down.in      |  2 +-
- samples/child-rekey.in     |  2 +-
- samples/child-up.in        |  2 +-
- samples/ikesa-down.in      |  2 +-
- samples/ikesa-rekey.in     |  2 +-
- samples/ikesa-up.in        |  2 +-
- samples/migration.in       |  2 +-
- samples/ph1-down.in        |  2 +-
- samples/ph1-up.in          |  2 +-
- samples/racoon2.conf.in    | 18 +++++++++---------
- samples/vals.conf.in       | 22 +++++++++++-----------
- 13 files changed, 34 insertions(+), 34 deletions(-)
+ pskgen/autogen.spmd.pwd.in  |  8 ++++----
+ samples/hook/child-down.in  |  2 +-
+ samples/hook/child-rekey.in |  2 +-
+ samples/hook/child-up.in    |  2 +-
+ samples/hook/ikesa-down.in  |  2 +-
+ samples/hook/ikesa-rekey.in |  2 +-
+ samples/hook/ikesa-up.in    |  2 +-
+ samples/hook/migration.in   |  2 +-
+ samples/hook/ph1-down.in    |  2 +-
+ samples/hook/ph1-up.in      |  2 +-
+ samples/racoon2.conf.in     | 18 +++++++++---------
+ samples/vals.conf.in        | 22 +++++++++++-----------
+ 12 files changed, 33 insertions(+), 33 deletions(-)
 
-diff --git a/pskgen/Makefile.in b/pskgen/Makefile.in
-index ff0d374..8d272df 100644
---- a/pskgen/Makefile.in
-+++ b/pskgen/Makefile.in
-@@ -20,7 +20,7 @@ install: all
- 	$(INSTALL) -d $(DESTDIR)$(sbindir)
- 	$(INSTALL_SCRIPT) $(PROG) $(DESTDIR)$(sbindir)
- 	$(INSTALL_DATA) $(PROG).8 $(DESTDIR)$(mandir)/man8
--	$(INSTALL) -d $(DESTDIR)$(prefix)/etc/racoon2
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)
- 	sh ./autogen.spmd.pwd
- 
- depend:
 diff --git a/pskgen/autogen.spmd.pwd.in b/pskgen/autogen.spmd.pwd.in
 index ac6560c..a9981f3 100755
 --- a/pskgen/autogen.spmd.pwd.in
@@ -57,10 +38,10 @@ index ac6560c..a9981f3 100755
 -	@prefix@/sbin/pskgen -r -o @prefix@/etc/racoon2/spmd.pwd
 +	@sbindir@/pskgen -r -o @sysconfdir@/spmd.pwd
  fi
-diff --git a/samples/child-down.in b/samples/child-down.in
+diff --git a/samples/hook/child-down.in b/samples/hook/child-down.in
 index 01bae1f..8ac9061 100644
---- a/samples/child-down.in
-+++ b/samples/child-down.in
+--- a/samples/hook/child-down.in
++++ b/samples/hook/child-down.in
 @@ -3,7 +3,7 @@
  # run scripts in the child-down.d directory when CHILD_SA is removed
  #
@@ -70,10 +51,10 @@ index 01bae1f..8ac9061 100644
  
  . ./functions
  
-diff --git a/samples/child-rekey.in b/samples/child-rekey.in
+diff --git a/samples/hook/child-rekey.in b/samples/hook/child-rekey.in
 index a10d673..63f3db7 100644
---- a/samples/child-rekey.in
-+++ b/samples/child-rekey.in
+--- a/samples/hook/child-rekey.in
++++ b/samples/hook/child-rekey.in
 @@ -3,7 +3,7 @@
  # run scripts in the child-rekey.d directory when CHILD_SA is rekeyed
  #
@@ -83,10 +64,10 @@ index a10d673..63f3db7 100644
  
  . ./functions
  
-diff --git a/samples/child-up.in b/samples/child-up.in
+diff --git a/samples/hook/child-up.in b/samples/hook/child-up.in
 index d3e8c65..0cacd04 100644
---- a/samples/child-up.in
-+++ b/samples/child-up.in
+--- a/samples/hook/child-up.in
++++ b/samples/hook/child-up.in
 @@ -3,7 +3,7 @@
  # run scripts in the child-up.d directory when CHILD_SA is established
  #
@@ -96,10 +77,10 @@ index d3e8c65..0cacd04 100644
  
  . ./functions
  
-diff --git a/samples/ikesa-down.in b/samples/ikesa-down.in
+diff --git a/samples/hook/ikesa-down.in b/samples/hook/ikesa-down.in
 index 5a12092..492d8a6 100644
---- a/samples/ikesa-down.in
-+++ b/samples/ikesa-down.in
+--- a/samples/hook/ikesa-down.in
++++ b/samples/hook/ikesa-down.in
 @@ -3,7 +3,7 @@
  # run scripts in the ikesa-down.d directory when IKE_SA is removed
  #
@@ -109,10 +90,10 @@ index 5a12092..492d8a6 100644
  
  . ./functions
  
-diff --git a/samples/ikesa-rekey.in b/samples/ikesa-rekey.in
+diff --git a/samples/hook/ikesa-rekey.in b/samples/hook/ikesa-rekey.in
 index fd9668c..0f54c50 100644
---- a/samples/ikesa-rekey.in
-+++ b/samples/ikesa-rekey.in
+--- a/samples/hook/ikesa-rekey.in
++++ b/samples/hook/ikesa-rekey.in
 @@ -3,7 +3,7 @@
  # run scripts in the ikesa-rekey.d directory when IKE_SA is rekeyed 
  #
@@ -122,10 +103,10 @@ index fd9668c..0f54c50 100644
  
  . ./functions
  
-diff --git a/samples/ikesa-up.in b/samples/ikesa-up.in
+diff --git a/samples/hook/ikesa-up.in b/samples/hook/ikesa-up.in
 index 2d72f96..5ab3d51 100644
---- a/samples/ikesa-up.in
-+++ b/samples/ikesa-up.in
+--- a/samples/hook/ikesa-up.in
++++ b/samples/hook/ikesa-up.in
 @@ -3,7 +3,7 @@
  # run scripts in the ikesa-up.d directory when IKE_SA is established
  #
@@ -135,10 +116,10 @@ index 2d72f96..5ab3d51 100644
  
  . ./functions
  
-diff --git a/samples/migration.in b/samples/migration.in
+diff --git a/samples/hook/migration.in b/samples/hook/migration.in
 index 0847eae..52f7980 100644
---- a/samples/migration.in
-+++ b/samples/migration.in
+--- a/samples/hook/migration.in
++++ b/samples/hook/migration.in
 @@ -3,7 +3,7 @@
  # run scripts in the migration.d directory when MIP6 MIGRATE is issued
  #
@@ -148,10 +129,10 @@ index 0847eae..52f7980 100644
  
  . ./functions
  
-diff --git a/samples/ph1-down.in b/samples/ph1-down.in
+diff --git a/samples/hook/ph1-down.in b/samples/hook/ph1-down.in
 index 9d2e305..a7a8b0a 100644
---- a/samples/ph1-down.in
-+++ b/samples/ph1-down.in
+--- a/samples/hook/ph1-down.in
++++ b/samples/hook/ph1-down.in
 @@ -3,7 +3,7 @@
  # run scripts in the ph1-down.d directory when ISAKMP SA is removed
  #
@@ -161,10 +142,10 @@ index 9d2e305..a7a8b0a 100644
  
  . ./functions
  
-diff --git a/samples/ph1-up.in b/samples/ph1-up.in
+diff --git a/samples/hook/ph1-up.in b/samples/hook/ph1-up.in
 index ab205fa..75e8cab 100644
---- a/samples/ph1-up.in
-+++ b/samples/ph1-up.in
+--- a/samples/hook/ph1-up.in
++++ b/samples/hook/ph1-up.in
 @@ -3,7 +3,7 @@
  # run scripts in the ph1-up.d directory when ISAKMP SA is established
  #
@@ -175,7 +156,7 @@ index ab205fa..75e8cab 100644
  . ./functions
  
 diff --git a/samples/racoon2.conf.in b/samples/racoon2.conf.in
-index 5afda24..f365731 100644
+index 9dc9d5a..5fb6560 100644
 --- a/samples/racoon2.conf.in
 +++ b/samples/racoon2.conf.in
 @@ -1,7 +1,7 @@
@@ -187,7 +168,7 @@ index 5afda24..f365731 100644
  
  # interface info
  interface
-@@ -17,7 +17,7 @@ interface
+@@ -21,7 +21,7 @@ interface
  	spmd {
  		unix "/var/run/racoon2/spmif";
  	};
@@ -196,45 +177,45 @@ index 5afda24..f365731 100644
  };
  
  # resolver info
-@@ -42,7 +42,7 @@ resolver
+@@ -46,7 +46,7 @@ resolver
  # Please don't touch this line (especially novice user);
  #
  
 -include "@prefix@/etc/racoon2/default.conf";
 +include "@sysconfdir@/default.conf";
  
+ # Define host specific pre-shared keys here
  #
- # These are examples of configuration for each peer.
-@@ -50,21 +50,21 @@ include "@prefix@/etc/racoon2/default.conf";
- # Uncomment following one 'include' line you want to use.
- 
- ## Transport mode IKEv2 or IKEv1
+@@ -82,21 +82,21 @@ remote 192.168.2.67 {
+ ## uncommenting this 'include' line, also uncomment the
+ ## 'include' line for transport_ike_natt.conf in the transport_ike.conf
+ ## file and edit that file and vals.conf appropriately for your environment
 -# include "@prefix@/etc/racoon2/transport_ike.conf";
-+# include "@sysconfdir@/transport_ike.conf";
++# include "@sysconfdir@/racoon2/transport_ike.conf";
  
  ## Tunnel mode IKEv2 or IKEv1 (initiator and responder)
 -# include "@prefix@/etc/racoon2/tunnel_ike.conf";
-+# include "@sysconfdir@/tunnel_ike.conf";
++# include "@sysconfdir@/racoon2/tunnel_ike.conf";
  
  ## Tunnel mode IKEv2 (responder; NAT-T support)
  ## Enable this if you're a responder in global net and
  ## the peer is an initiator behind NAT.
 -# include "@prefix@/etc/racoon2/tunnel_ike_natt.conf";
-+# include "@sysconfdir@/tunnel_ike_natt.conf";
++# include "@sysconfdir@/racoon2/tunnel_ike_natt.conf";
  
  ## Transport mode KINK
 -# include "@prefix@/etc/racoon2/transport_kink.conf";
-+# include "@sysconfdir@/transport_kink.conf";
++# include "@sysconfdir@/racoon2/transport_kink.conf";
  
  ## Tunnel mode KINK
 -# include "@prefix@/etc/racoon2/tunnel_kink.conf";
-+# include "@sysconfdir@/tunnel_kink.conf";
++# include "@sysconfdir@/racoon2/tunnel_kink.conf";
  
  ## For local test
 -# include "@prefix@/etc/racoon2/local-test.conf";
-+# include "@sysconfdir@/local-test.conf";
++# include "@sysconfdir@/racoon2/local-test.conf";
 diff --git a/samples/vals.conf.in b/samples/vals.conf.in
-index a0e8023..2fa7e4d 100644
+index 442786c..b378513 100644
 --- a/samples/vals.conf.in
 +++ b/samples/vals.conf.in
 @@ -2,10 +2,10 @@
@@ -250,7 +231,7 @@ index a0e8023..2fa7e4d 100644
  
  ### ID Settings ###
  	# your FQDN : specify if you want to use FQDN as your ID
-@@ -75,16 +75,16 @@ setval {
+@@ -103,16 +103,16 @@ setval {
  
  ### Scripts
          ## IKEv2
@@ -277,5 +258,5 @@ index a0e8023..2fa7e4d 100644
  ### KINK ###
  	# Kerberos5 principal
 -- 
-1.9.1
+2.24.1
 
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch
deleted file mode 100644
index 9ca88a8..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From 2ad8c9b2e99be296fc7c7bf94161a53aa3984b24 Mon Sep 17 00:00:00 2001
-From: Aws Ismail <aws.ismail@windriver.com>
-Date: Tue, 23 Oct 2012 18:07:23 -0400
-Subject: [PATCH 2/3] Add Value to HAVE_NSSWITCH_CONF
-
-Use a more verbose form of AC_DEFINE
-to force value of "1" to
-HAVE_NSSWITCH_CONF macro.
-
-Upstream-Status: Pending
-
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
----
- spmd/configure.in |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/spmd/configure.in b/spmd/configure.in
-index c149c2d..c079c56 100644
---- a/spmd/configure.in
-+++ b/spmd/configure.in
-@@ -91,7 +91,7 @@ case "$target" in
- 		;;
- 	*)      
- 		AC_MSG_RESULT(use /etc/nsswitch.conf)
--		AC_DEFINE(HAVE_NSSWITCH_CONF)
-+		AC_DEFINE(HAVE_NSSWITCH_CONF, [1], [Define if nsswitch conf file exists])
- 		;;
- esac
- 
--- 
-1.7.0.4
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch
deleted file mode 100644
index b2a0eac..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch
+++ /dev/null
@@ -1,202 +0,0 @@
-Enable non-standard destdir
-
-Add in $(DESTDIR) to all the install lines,
-so that we can get things installed into a
-non-standard location.
-
-Upstream-Status: Pending
-
-Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
-
-diff -r -u a/iked/Makefile.in b/iked/Makefile.in
---- a/iked/Makefile.in
-+++ b/iked/Makefile.in
-@@ -66,16 +66,16 @@
- install: install-prog install-doc
- 
- install-prog: $(PROG)
--	$(INSTALL) -d $(sbindir)
--	$(INSTALL_PROGRAM) $(PROG) $(sbindir)
-+	$(INSTALL) -d $(DESTDIR)$(sbindir)
-+	$(INSTALL_PROGRAM) $(PROG) $(DESTDIR)$(sbindir)
- 
- install-doc:
--	$(INSTALL) -d $(mandir)/man8
-+	$(INSTALL) -d $(DESTDIR)$(mandir)/man8
- # not friendly with -n  :-(
- 	sysconfdir="$$(echo '$(sysconfdir)' | sed 's/%/\\\%/g')"; \
- 	for f in $(MAN); do \
- 		sed -e s%\@sysconfdir\@%"$$sysconfdir"%g < $$f > $${f}.tmp; \
--		$(INSTALL_DATA) $${f}.tmp $(mandir)/man$${f##*.}/$$f; \
-+		$(INSTALL_DATA) $${f}.tmp $(DESTDIR)$(mandir)/man$${f##*.}/$$f; \
- 		rm $${f}.tmp; \
- 	done
- 
-diff -r -u a/kinkd/Makefile.in b/kinkd/Makefile.in
---- a/kinkd/Makefile.in
-+++ b/kinkd/Makefile.in
-@@ -46,14 +46,14 @@
- ../lib/libracoon.a:		# check its timestamp only when there is.
- 
- install: all
--	$(INSTALL) -d $(sbindir)
--	$(INSTALL_PROGRAM) $(PROG) $(sbindir)
--	$(INSTALL) -d $(mandir)/man8
-+	$(INSTALL) -d $(DESTDIR)$(sbindir)
-+	$(INSTALL_PROGRAM) $(PROG) $(DESTDIR)$(sbindir)
-+	$(INSTALL) -d $(DESTDIR)$(mandir)/man8
- # not friendly with -n  :-(
- 	sysconfdir="$$(echo '$(sysconfdir)' | sed 's/%/\\\%/g')"; \
- 	for f in $(MAN); do \
- 		sed -e s%\@sysconfdir\@%"$$sysconfdir"%g < $$f > $${f}.tmp; \
--		$(INSTALL_DATA) $${f}.tmp $(mandir)/man$${f##*.}/$$f; \
-+		$(INSTALL_DATA) $${f}.tmp $(DESTDIR)$(mandir)/man$${f##*.}/$$f; \
- 		rm $${f}.tmp; \
- 	done
- 
-diff -r -u a/pskgen/Makefile.in b/pskgen/Makefile.in
---- a/pskgen/Makefile.in
-+++ b/pskgen/Makefile.in
-@@ -17,10 +17,10 @@
- all:
- 
- install: all
--	$(INSTALL) -d $(sbindir)
--	$(INSTALL_SCRIPT) $(PROG) $(sbindir)
--	$(INSTALL_DATA) $(PROG).8 $(mandir)/man8
--	$(INSTALL) -d $(prefix)/etc/racoon2
-+	$(INSTALL) -d $(DESTDIR)$(sbindir)
-+	$(INSTALL_SCRIPT) $(PROG) $(DESTDIR)$(sbindir)
-+	$(INSTALL_DATA) $(PROG).8 $(DESTDIR)$(mandir)/man8
-+	$(INSTALL) -d $(DESTDIR)$(prefix)/etc/racoon2
- 	sh ./autogen.spmd.pwd
- 
- depend:
-diff -r -u a/samples/Makefile.in b/samples/Makefile.in
---- a/samples/Makefile.in
-+++ b/samples/Makefile.in
-@@ -12,60 +12,60 @@
- all:
- 
- install: all install-startup-@startup_scripts@ install-samples install-hook
--	$(INSTALL) -d -o 0 -g 0 -m 700 /var/run/racoon2
-+	$(INSTALL) -d -o 0 -g 0 -m 700 $(DESTDIR)/var/run/racoon2
- 
- install-samples:
--	$(INSTALL) -d $(sysconfdir)
--	$(INSTALL) -m 600 racoon2.conf $(sysconfdir)/racoon2.conf.sample
--	$(INSTALL) -m 600 vals.conf $(sysconfdir)/vals.conf.sample
--	$(INSTALL) -m 600 default.conf $(sysconfdir)/default.conf.sample
--	$(INSTALL) -m 600 transport_ike.conf $(sysconfdir)/transport_ike.conf.sample
--	$(INSTALL) -m 600 tunnel_ike.conf $(sysconfdir)/tunnel_ike.conf.sample
--	$(INSTALL) -m 600 tunnel_ike_natt.conf $(sysconfdir)/tunnel_ike_natt.conf.sample
--	$(INSTALL) -m 600 transport_kink.conf $(sysconfdir)/transport_kink.conf.sample
--	$(INSTALL) -m 600 tunnel_kink.conf $(sysconfdir)/tunnel_kink.conf.sample
--	$(INSTALL) -m 600 local-test.conf $(sysconfdir)/local-test.conf.sample
--	$(INSTALL) -d -m 700 $(sysconfdir)/psk
--	$(INSTALL) -d -m 700 $(sysconfdir)/cert
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)
-+	$(INSTALL) -m 600 racoon2.conf $(DESTDIR)$(sysconfdir)/racoon2.conf.sample
-+	$(INSTALL) -m 600 vals.conf $(DESTDIR)$(sysconfdir)/vals.conf.sample
-+	$(INSTALL) -m 600 default.conf $(DESTDIR)$(sysconfdir)/default.conf.sample
-+	$(INSTALL) -m 600 transport_ike.conf $(DESTDIR)$(sysconfdir)/transport_ike.conf.sample
-+	$(INSTALL) -m 600 tunnel_ike.conf $(DESTDIR)$(sysconfdir)/tunnel_ike.conf.sample
-+	$(INSTALL) -m 600 tunnel_ike_natt.conf $(DESTDIR)$(sysconfdir)/tunnel_ike_natt.conf.sample
-+	$(INSTALL) -m 600 transport_kink.conf $(DESTDIR)$(sysconfdir)/transport_kink.conf.sample
-+	$(INSTALL) -m 600 tunnel_kink.conf $(DESTDIR)$(sysconfdir)/tunnel_kink.conf.sample
-+	$(INSTALL) -m 600 local-test.conf $(DESTDIR)$(sysconfdir)/local-test.conf.sample
-+	$(INSTALL) -d -m 700 $(DESTDIR)$(sysconfdir)/psk
-+	$(INSTALL) -d -m 700 $(DESTDIR)$(sysconfdir)/cert
- 
- install-startup-rc-d:
--	$(INSTALL) -d $(sysconfdir)/rc.d
--	$(INSTALL_SCRIPT) rc.d-iked $(sysconfdir)/rc.d/iked
--	$(INSTALL_SCRIPT) rc.d-kinkd $(sysconfdir)/rc.d/kinkd
--	$(INSTALL_SCRIPT) rc.d-spmd $(sysconfdir)/rc.d/spmd
--	$(INSTALL_SCRIPT) rc.d-racoon2 $(sysconfdir)/rc.d/racoon2
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/rc.d
-+	$(INSTALL_SCRIPT) rc.d-iked $(DESTDIR)$(sysconfdir)/rc.d/iked
-+	$(INSTALL_SCRIPT) rc.d-kinkd $(DESTDIR)$(sysconfdir)/rc.d/kinkd
-+	$(INSTALL_SCRIPT) rc.d-spmd $(DESTDIR)$(sysconfdir)/rc.d/spmd
-+	$(INSTALL_SCRIPT) rc.d-racoon2 $(DESTDIR)$(sysconfdir)/rc.d/racoon2
- 
- install-startup-init-d:
--	$(INSTALL) -d $(sysconfdir)/init.d
--	$(INSTALL_SCRIPT) init.d-iked $(sysconfdir)/init.d/iked
--	$(INSTALL_SCRIPT) init.d-kinkd $(sysconfdir)/init.d/kinkd
--	$(INSTALL_SCRIPT) init.d-spmd $(sysconfdir)/init.d/spmd
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/init.d
-+	$(INSTALL_SCRIPT) init.d-iked $(DESTDIR)$(sysconfdir)/init.d/iked
-+	$(INSTALL_SCRIPT) init.d-kinkd $(DESTDIR)$(sysconfdir)/init.d/kinkd
-+	$(INSTALL_SCRIPT) init.d-spmd $(DESTDIR)$(sysconfdir)/init.d/spmd
- 
- install-startup-none:
- 
- install-hook:
--	$(INSTALL) -d $(sysconfdir)/hook
--	$(INSTALL_DATA) functions $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/ikesa-up.d
--	$(INSTALL_SCRIPT) ikesa-up $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/ikesa-down.d
--	$(INSTALL_SCRIPT) ikesa-down $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/ikesa-rekey.d
--	$(INSTALL_SCRIPT) ikesa-rekey $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/child-up.d
--	$(INSTALL_SCRIPT) child-up $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/child-down.d
--	$(INSTALL_SCRIPT) child-down $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/child-rekey.d
--	$(INSTALL_SCRIPT) child-rekey $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/migration.d
--	$(INSTALL_SCRIPT) migration $(sysconfdir)/hook
--	$(INSTALL_SCRIPT) 00ikesaup_sample $(sysconfdir)/hook/ikesa-up.d
--	$(INSTALL_SCRIPT) 00childup_sample $(sysconfdir)/hook/child-up.d
--	$(INSTALL) -d $(sysconfdir)/hook/ph1-up.d
--	$(INSTALL_SCRIPT) ph1-up $(sysconfdir)/hook
--	$(INSTALL) -d $(sysconfdir)/hook/ph1-down.d
--	$(INSTALL_SCRIPT) ph1-down $(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL_DATA) functions $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-up.d
-+	$(INSTALL_SCRIPT) ikesa-up $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-down.d
-+	$(INSTALL_SCRIPT) ikesa-down $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ikesa-rekey.d
-+	$(INSTALL_SCRIPT) ikesa-rekey $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-up.d
-+	$(INSTALL_SCRIPT) child-up $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-down.d
-+	$(INSTALL_SCRIPT) child-down $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/child-rekey.d
-+	$(INSTALL_SCRIPT) child-rekey $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/migration.d
-+	$(INSTALL_SCRIPT) migration $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL_SCRIPT) 00ikesaup_sample $(DESTDIR)$(sysconfdir)/hook/ikesa-up.d
-+	$(INSTALL_SCRIPT) 00childup_sample $(DESTDIR)$(sysconfdir)/hook/child-up.d
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ph1-up.d
-+	$(INSTALL_SCRIPT) ph1-up $(DESTDIR)$(sysconfdir)/hook
-+	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ph1-down.d
-+	$(INSTALL_SCRIPT) ph1-down $(DESTDIR)$(sysconfdir)/hook
- 
- # empty
- depend:
-diff -r -u a/spmd/Makefile.in b/spmd/Makefile.in
---- a/spmd/Makefile.in
-+++ b/spmd/Makefile.in
-@@ -38,11 +38,11 @@
- spmdctl.o: spmd_internal.h
- 
- install: all
--	$(INSTALL_DIR) $(sbindir)
--	$(INSTALL_PROGRAM) $(DAEMON) $(sbindir)
--	$(INSTALL_PROGRAM) $(COMMAND) $(sbindir)
--	$(INSTALL_DIR) $(man8dir)
--	$(INSTALL_DATA) $(MANFILES) $(man8dir)
-+	$(INSTALL_DIR) $(DESTDIR)$(sbindir)
-+	$(INSTALL_PROGRAM) $(DAEMON) $(DESTDIR)$(sbindir)
-+	$(INSTALL_PROGRAM) $(COMMAND) $(DESTDIR)$(sbindir)
-+	$(INSTALL_DIR) $(DESTDIR)$(man8dir)
-+	$(INSTALL_DATA) $(MANFILES) $(DESTDIR)$(man8dir)
- 
- clean:
- 	-rm -f $(TARGET) *.o $(COMMAND)
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch
deleted file mode 100644
index 5e0d2e7..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch
+++ /dev/null
@@ -1,87 +0,0 @@
-From f9c98441876ae1d426ef4fcad3fef389be3adb25 Mon Sep 17 00:00:00 2001
-From: Aws Ismail <aws.ismail@windriver.com>
-Date: Tue, 23 Oct 2012 18:16:34 -0400
-Subject: [PATCH 3/3] Remove @INSTALL_OPTS@
-
-Removed the redundant @INSTALL_OPTS@
-which could give an error during installation
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
----
- iked/Makefile.in    |    2 +-
- kinkd/Makefile.in   |    2 +-
- pskgen/Makefile.in  |    2 +-
- samples/Makefile.in |    2 +-
- spmd/Makefile.in    |    2 +-
- 5 files changed, 5 insertions(+), 5 deletions(-)
-
-diff --git a/iked/Makefile.in b/iked/Makefile.in
-index acb355f..8dfa69c 100644
---- a/iked/Makefile.in
-+++ b/iked/Makefile.in
-@@ -22,7 +22,7 @@ host_cpu =	@host_cpu@
- host_vendor =	@host_vendor@
- host_os =	@host_os@
- CC =	@CC@
--INSTALL =	@INSTALL@ @INSTALL_OPTS@
-+INSTALL =	@INSTALL@
- INSTALL_PROGRAM = @INSTALL_PROGRAM@
- INSTALL_SCRIPT=	@INSTALL_SCRIPT@
- INSTALL_DATA =	@INSTALL_DATA@
-diff --git a/kinkd/Makefile.in b/kinkd/Makefile.in
-index b3c52a7..b14ff35 100644
---- a/kinkd/Makefile.in
-+++ b/kinkd/Makefile.in
-@@ -12,7 +12,7 @@ CPPFLAGS=@CPPFLAGS@ @DEFS@ -DRACOON2_CONFIG_DIR=\"$(sysconfdir)\"
- LDFLAGS	=@LDFLAGS@
- LIBS	=@LIBS@
- CFLAGS	=@CFLAGS@ $(OPTFLAG)
--INSTALL =@INSTALL@ @INSTALL_OPTS@
-+INSTALL =@INSTALL@
- INSTALL_PROGRAM=@INSTALL_PROGRAM@
- INSTALL_DATA=@INSTALL_DATA@
- MKDEP	=@MKDEP@
-diff --git a/pskgen/Makefile.in b/pskgen/Makefile.in
-index 2d5092d..ff0d374 100644
---- a/pskgen/Makefile.in
-+++ b/pskgen/Makefile.in
-@@ -7,7 +7,7 @@ sbindir=@sbindir@
- sysconfdir=@sysconfdir@
- mandir=@mandir@
- 
--INSTALL =@INSTALL@ @INSTALL_OPTS@
-+INSTALL =@INSTALL@
- INSTALL_PROGRAM=@INSTALL_PROGRAM@
- INSTALL_SCRIPT=@INSTALL_SCRIPT@
- INSTALL_DATA=@INSTALL_DATA@
-diff --git a/samples/Makefile.in b/samples/Makefile.in
-index 5f6c3ea..f0d488b 100644
---- a/samples/Makefile.in
-+++ b/samples/Makefile.in
-@@ -3,7 +3,7 @@
- srcdir=@srcdir@
- prefix=@prefix@
- sysconfdir=@sysconfdir@
--INSTALL =@INSTALL@ @INSTALL_OPTS@
-+INSTALL =@INSTALL@  
- INSTALL_PROGRAM=@INSTALL_PROGRAM@
- INSTALL_DATA=@INSTALL_DATA@
- INSTALL_SCRIPT=@INSTALL_SCRIPT@
-diff --git a/spmd/Makefile.in b/spmd/Makefile.in
-index 9b13ef2..6a78d33 100644
---- a/spmd/Makefile.in
-+++ b/spmd/Makefile.in
-@@ -4,7 +4,7 @@ CFLAGS = @CFLAGS@ @CPPFLAGS@ @DEFS@ -DSYSCONFDIR=\"${sysconfdir}\"
- # CFLAGS +=-DSADB_X_MIGRATE
- LDFLAGS = @LDFLAGS@
- LIBS = @LIBS@
--INSTALL=@INSTALL@ @INSTALL_OPTS@
-+INSTALL=@INSTALL@
- INSTALL_PROGRAM=@INSTALL_PROGRAM@
- INSTALL_DATA=@INSTALL_DATA@
- INSTALL_DIR=@INSTALL_DIR@
--- 
-1.7.0.4
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch
deleted file mode 100644
index 903cbe8..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch
+++ /dev/null
@@ -1,60 +0,0 @@
-From cddb9b757bdcd60c58d6320479d572ebdd15b449 Mon Sep 17 00:00:00 2001
-From: Robert Yang <liezhi.yang@windriver.com>
-Date: Sun, 8 Jun 2014 06:37:01 -0700
-Subject: [PATCH] spmd/configure.in: add description for AC_DEFINE
-
-The autoheader now requires the AC_DEFINE to have a description,
-otherewise it would fail.
-
-See oe-core's dd9c3d7bc946ff44e0ca90f4e345711d6ad21728
-
-Upstream-Status: Pending
-
-Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
----
- spmd/configure.in |   10 +++++-----
- 1 file changed, 5 insertions(+), 5 deletions(-)
-
-diff --git a/spmd/configure.in b/spmd/configure.in
-index 3858aa1..e3e8650 100644
---- a/spmd/configure.in
-+++ b/spmd/configure.in
-@@ -74,18 +74,18 @@ int main(void)
- 	exit(0);
- }
- ],
--AC_DEFINE(HAVE_SA_LEN)
-+AC_DEFINE([HAVE_SA_LEN], [1], [Define if have sa_len])
- AC_MSG_RESULT(yes),
- AC_MSG_RESULT(no),:)
- 
- echo $ac_n "checking for architecture""... $ac_c" 1>&6
- case "$target" in
- 	*freebsd4*)
--		AC_DEFINE(HAVE_HOST_CONF)
-+		AC_DEFINE([HAVE_HOST_CONF], [1], [Define if have host.conf])
- 		AC_MSG_RESULT(use /etc/host.conf)
- 		;;
- 	*openbsd*)
--		AC_DEFINE(HAVE_LOOKUP_IN_RESOLV_CONF)
-+		AC_DEFINE([HAVE_LOOKUP_IN_RESOLV_CONF], [1], [Define if have lookup in resolv.conf])
- 		AC_MSG_RESULT(use lookup in /etc/resolv.conf)
- 		;;
- 	*)      
-@@ -97,11 +97,11 @@ esac
- echo $ac_n "checking for SPDUPDATE BUG""... $ac_c" 1>&6
- case $host_os in
- 	*netbsd*)
--		AC_DEFINE(HAVE_SPDUPDATE_BUG)
-+		AC_DEFINE([HAVE_SPDUPDATE_BUG], [1], [Define if have spdupdate_bug])
- 		AC_MSG_RESULT(yes)
- 		;;
- 	*freebsd*)
--		AC_DEFINE(HAVE_SPDUPDATE_BUG)
-+		AC_DEFINE([HAVE_SPDUPDATE_BUG], [1], [Define if have spdupdate_bug])
- 		AC_MSG_RESULT(yes)
- 		;;
- 	*)
--- 
-1.7.9.5
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch
deleted file mode 100644
index 97857c7..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-Comment out memmcp.clean configure-related option
- 
-Upstream-Status: Pending
-
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
-
-diff --git a/iked/configure b/iked/configure
-index 80ca9a3..9205bc3 100755
---- a/iked/configure
-+++ b/iked/configure
-@@ -1758,7 +1758,7 @@ fi
- fi
- 
- echo "$ac_t""$ac_cv_func_memcmp_clean" 1>&6
--test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
-+# test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
- 
- echo $ac_n "checking return type of signal handlers""... $ac_c" 1>&6
- echo "configure:1765: checking return type of signal handlers" >&5
-diff --git a/lib/configure b/lib/configure
-index c7d057a..6390794 100755
---- a/lib/configure
-+++ b/lib/configure
-@@ -1909,7 +1909,7 @@ fi
- fi
- 
- echo "$ac_t""$ac_cv_func_memcmp_clean" 1>&6
--test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
-+# test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
- 
- echo $ac_n "checking for strftime""... $ac_c" 1>&6
- echo "configure:1916: checking for strftime" >&5
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch
deleted file mode 100644
index 7a69857..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch
+++ /dev/null
@@ -1,199 +0,0 @@
-* autotools was used for the build process and these macros became
-redundant, so remove them to avoid errors in configure:
-./configure: line 4619: RC_WITH_OPENSSL_LIB: command not found 
-
-* a bash syntax error is also fixed here:
-./configure: line 4636: test: =: unary operator expected
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- configure.in       |    1 -
- iked/configure.in  |   20 +-------------------
- kinkd/configure.in |    5 +----
- lib/configure.in   |   10 +---------
- spmd/configure.in  |   11 +----------
- 5 files changed, 4 insertions(+), 43 deletions(-)
-
-diff --git a/configure.in b/configure.in
-index 5eaa7c5..e74433e 100644
---- a/configure.in
-+++ b/configure.in
-@@ -10,7 +10,6 @@ AC_CANONICAL_HOST
- dnl Checks for programs.
- AC_PROG_INSTALL
- AC_PROG_MAKE_SET
--RC_IF_INSTALL_OPTS
- 
- dnl XXX see the comment below.
- dnl AC_CONFIG_SUBDIRS(lib)
-diff --git a/iked/configure.in b/iked/configure.in
-index 031e499..6b9352e 100644
---- a/iked/configure.in
-+++ b/iked/configure.in
-@@ -51,9 +51,6 @@ if test x"$ikev2" = x"yes"; then
-     IKEV2_SRC='$(IKEV2_SRC)'
- fi
- 
--# check --enable-debug
--RC_IF_BUILD_DEBUG
--
- # including pcap if enable_debug is yes
- if test "$enable_debug" = yes -a "$enable_pcap" = yes ; then
- 	AC_CHECK_LIB(pcap, pcap_dump,,[AC_MSG_ERROR(failed finding libpcap)])
-@@ -120,9 +117,6 @@ if test "${ikev2_ipsec_window_size+set}" = "set"; then
- 	AC_DEFINE_UNQUOTED(IKEV2_IPSEC_WINDOW_SIZE, $ikev2_ipsec_window_size, [window size of IPsec SA created by IKEv2])
- fi
- 
--# check for --with-install-opts
--RC_IF_INSTALL_OPTS
--
- # Checks for header files.
- AC_HEADER_STDC
- AC_CHECK_HEADERS([limits.h netdb.h netinet/in.h netinet6/ipsec.h netipsec/ipsec.h stdarg.h stddef.h stdlib.h string.h sys/param.h sys/socket.h sys/time.h unistd.h inttypes.h stdint.h])
-@@ -133,8 +127,6 @@ AC_ARG_WITH(kernel_build_dir, [  --with-kernel-build-dir=DIR       specify the d
- 	[kernel_build_dir=$withval], [kernel_build_dir=no])
- AC_MSG_RESULT(${kernel_build_dir})
- 
--RC_CHECK_PFKEYV2_H
--RC_IF_NATT_ENABLE
- if test x"$enable_natt" = x"yes"; then
-   if test x"$ikev1" = x"yes"; then
- 	IKEV1_SRC="${IKEV1_SRC} \$(IKEV1_NATT_SRC)"
-@@ -195,11 +187,6 @@ AC_TRY_COMPILE([],
- 	 AC_DEFINE(HAVE_FUNC_MACRO, 1, [define if __func__ macro is available])
- 	], [AC_MSG_RESULT(no)])
- 
--# check for struct sockaddr
--RC_IF_SA_LEN
--
--# check for --enable-ipv6
--RC_IF_IPV6_ENABLE
- if test "$ipv6" = "yes"; then
-     AC_MSG_CHECKING(for advanced API support)
-     AC_CACHE_VAL(racoon_cv_advapi, [dnl
-@@ -239,10 +226,6 @@ fi
- # Look for dlopen (libc in FreeBSD, libdl in Debian)
- AC_SEARCH_LIBS(dlopen, dl)
- 
--# checks for OpenSSL
--# check for --with-openssl-libdir
--RC_WITH_OPENSSL_LIB
--
- # check Engine interface
- AC_MSG_CHECKING(--enable-engine)
- engine='yes'
-@@ -315,9 +298,8 @@ if test x"$sha2" = x"yes"; then
- 	AC_DEFINE(WITH_SHA2, 1, [define if SHA2 can be used])
- fi
- 
--RC_CHECK_MAKE
- AC_SUBST(IF_GMAKE)
--if test $MAKE_TYPE = gmake; then
-+if test "$MAKE_TYPE" = "gmake"; then
- 	IF_GMAKE=''
- else
- 	IF_GMAKE='#'
-diff --git a/kinkd/configure.in b/kinkd/configure.in
-index 272c1eb..a332436 100644
---- a/kinkd/configure.in
-+++ b/kinkd/configure.in
-@@ -10,7 +10,6 @@ AC_PROG_CPP
- AC_PROG_LEX
- AC_PROG_INSTALL
- AC_PROG_MAKE_SET
--RC_PROG_MKDEP
- 
- AC_CANONICAL_HOST
- 
-@@ -263,11 +262,9 @@ sys_queue_ng
- 	AC_MSG_RESULT(ok)
- )
- 
--RC_IF_INSTALL_OPTS
- 
--RC_CHECK_MAKE
- AC_SUBST(IF_GMAKE)
--if test $MAKE_TYPE = gmake; then
-+if test "$MAKE_TYPE" = "gmake"; then
- 	IF_GMAKE=''
- else
- 	IF_GMAKE='#'
-diff --git a/lib/configure.in b/lib/configure.in
-index 883a28c..414d7b1 100644
---- a/lib/configure.in
-+++ b/lib/configure.in
-@@ -12,7 +12,6 @@ AC_PROG_YACC
- AC_PROG_RANLIB
- AC_PROG_INSTALL
- AC_PROG_MAKE_SET
--RC_PROG_MKDEP
- 
- AC_CANONICAL_HOST
- 
-@@ -112,9 +111,6 @@ AC_HEADER_STDC
- AC_HEADER_SYS_WAIT
- AC_CHECK_HEADERS(sys/time.h net/if_var.h net/ethernet.h limits.h unistd.h stdarg.h varargs.h netinet6/ipsec.h netipsec/ipsec.h)
- 
--RC_CHECK_PFKEYV2_H
--RC_IF_NATT_ENABLE
--
- dnl Checks for typedefs, structures, and compiler characteristics.
- AC_C_CONST
- AC_TYPE_PID_T
-@@ -198,14 +194,10 @@ AC_TRY_COMPILE([#include <sys/types.h>
- 	AC_MSG_RESULT(yes),
- 	AC_MSG_RESULT(no))
- 
--dnl --with-openssl-libdir
--RC_WITH_OPENSSL_LIB
--
- AC_CHECK_HEADERS(openssl/evp.h)
- 
--RC_CHECK_MAKE
- AC_SUBST(IF_GMAKE)
--if test $MAKE_TYPE = gmake; then
-+if test "$MAKE_TYPE" = "gmake"; then
- 	IF_GMAKE=''
- else
- 	IF_GMAKE='#'
-diff --git a/spmd/configure.in b/spmd/configure.in
-index c079c56..3858aa1 100644
---- a/spmd/configure.in
-+++ b/spmd/configure.in
-@@ -13,7 +13,6 @@ dnl Checks for programs.
- AC_PROG_CC
- AC_PROG_CPP
- AC_PROG_INSTALL
--RC_PROG_MKDEP
- 
- INSTALL_LIB="\${INSTALL_DATA}"
- AC_SUBST(INSTALL_LIB)
-@@ -119,22 +118,14 @@ AC_MSG_RESULT($libracoon_path)
- 	LDFLAGS="$LDFLAGS -L$libracoon_path"
- 	LIBS="-lracoon $LIBS"
- 
--dnl --with-openssl-libdir
--RC_WITH_OPENSSL_LIB
--
- AC_CHECK_HEADER(openssl/evp.h)
- 
--RC_CHECK_MAKE
- AC_SUBST(IF_GMAKE)
--if test $MAKE_TYPE = gmake; then
-+if test "$MAKE_TYPE" = "gmake"; then
- 	IF_GMAKE=''
- else
- 	IF_GMAKE='#'
- fi
- 
--RC_IF_INSTALL_OPTS
--
--RC_CHECK_PFKEYV2_H
--
- AC_CONFIG_HEADER(config.h)
- AC_OUTPUT(Makefile)
--- 
-1.7.9.5
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch
deleted file mode 100644
index 2ccd61d..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch
+++ /dev/null
@@ -1,70 +0,0 @@
-commit 60800fb6e9bd48a54c52d34fe4f1a4444e2160f7
-Author: Aws Ismail <aws.ismail@windriver.com>
-Date:   Mon Aug 20 13:57:43 2012 -0400
-
-Use correct path for openssl includes
-    
-Originally, if $openssl_libdir is set then
-CFLAGS in will append $openssl_libdir/include
-which does not exist.
-    
-Correct location should be $openssl_libdir/usr/
-include/openssl. Provided that --with-openssl-libdir
-is given bitbake_build/tmp/sysroots/<target>/
-    
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
-
-diff --git a/aclocal.m4 b/aclocal.m4
-index 2deda2f..91889c5 100644
---- a/aclocal.m4
-+++ b/aclocal.m4
-@@ -150,7 +150,7 @@ AC_MSG_RESULT($openssl_libdir)
- if test "$openssl_libdir" != "none" ; then
- 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
--		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-+		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
- 	elif test -f "$openssl_libdir/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
- 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-diff --git a/iked/configure b/iked/configure
-index 80ca9a3..f06c310 100755
---- a/iked/configure
-+++ b/iked/configure
-@@ -2143,7 +2143,7 @@ echo "$ac_t""$openssl_libdir" 1>&6
- if test "$openssl_libdir" != "none" ; then
- 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
--		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-+		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
- 	elif test -f "$openssl_libdir/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
- 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-diff --git a/lib/configure b/lib/configure
-index c7d057a..555c35f 100755
---- a/lib/configure
-+++ b/lib/configure
-@@ -2358,7 +2358,7 @@ echo "$ac_t""$openssl_libdir" 1>&6
- if test "$openssl_libdir" != "none" ; then
- 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
--		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-+		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
- 	elif test -f "$openssl_libdir/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
- 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-diff --git a/spmd/configure b/spmd/configure
-index 49d4039..bebb002 100755
---- a/spmd/configure
-+++ b/spmd/configure
-@@ -1963,7 +1963,7 @@ echo "$ac_t""$openssl_libdir" 1>&6
- if test "$openssl_libdir" != "none" ; then
- 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
--		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
-+		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
- 	elif test -f "$openssl_libdir/libcrypto.a"; then
- 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
- 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch
deleted file mode 100644
index 5f853d9..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-commit 26a49879f53b69a1aa91f5cd9678f7829f524845
-Author: Aws Ismail <aws.ismail@windriver.com>
-Date:   Thu Oct 25 13:43:17 2012 -0400
-
-Specify racoon2 submodules for configure
-
-Literally specify the submodules to configure
-instead of using the $SELECTED_MODULES variable
-lib, spmd, iked are always available. kinkd
-is selected if enabled and that depends
-on the availability of krb5 on the target.
-    
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
-
-diff --git a/configure.in b/configure.in
-index 3f83241..5eaa7c5 100644
---- a/configure.in
-+++ b/configure.in
-@@ -49,6 +49,9 @@ if test x$prefix = x"NONE" ; then
- 	ac_configure_args="$ac_configure_args --prefix='$prefix'"
- fi
- 
-+AC_CONFIG_SUBDIRS(lib)
-+AC_CONFIG_SUBDIRS(spmd)
-+
- dnl Enable/disable each module
- AC_MSG_CHECKING(if --enable-iked option is specified)
- AC_ARG_ENABLE(iked, [  --enable-iked           build iked [yes]],
-@@ -56,6 +59,7 @@ AC_ARG_ENABLE(iked, [  --enable-iked           build iked [yes]],
- AC_MSG_RESULT($enable_iked)
- if test x"$enable_iked" = xyes; then
- 	SELECTED_MODULES="$SELECTED_MODULES iked"
-+    AC_CONFIG_SUBDIRS(iked)
- fi
- AC_MSG_CHECKING(if --enable-kinkd option is specified)
- AC_ARG_ENABLE(kinkd, [  --enable-kinkd          build kinkd [yes]],
-@@ -63,10 +67,8 @@ AC_ARG_ENABLE(kinkd, [  --enable-kinkd          build kinkd [yes]],
- AC_MSG_RESULT($enable_kinkd)
- if test x"$enable_kinkd" = xyes; then
- 	SELECTED_MODULES="$SELECTED_MODULES kinkd"
-+    AC_CONFIG_SUBDIRS(kinkd)
- fi
--dnl XXX Variables should not be used with AC_CONFIG_SUBDIRS on autoconf-2.5x,
--dnl but multiple/selective AC_CONFIG_SUBDIRSes don't work on autoconf-2.13.
--AC_CONFIG_SUBDIRS(lib $SELECTED_MODULES)
- 
- dnl Switch for startup mechanism.
- AC_SUBST(startup_scripts)
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch
deleted file mode 100644
index 515241d..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-racoon2: fix rekeying reply
-
-Why did node_a send the CREATE_CHILD_SA having the duplicated id?
-racoon2 has a counter for counting the number of transmitted request messages.
-You can find the counter named request_pending in the source code.
-This counter is counted up when a request message is sent,
-and it is counted down when the corresponding response message arrives.
-The problem is that racoon2 does not count up the counter mistakenly
-when sending the initial IKE_SA_INIT message in initiator mode.
-This makes the counter corrupt
-then the CREATE_CHILD_SA sent with an unexpected message id.
-
-Upstream-Status: Pending
-
-Signed-off-by: LiWang <li.wang@windriver.com>
-Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
-
---- racoon2-20090327c.org/iked/ikev2.c	2010-05-14 10:19:34.000000000 +0800
-+++ racoon2-20090327c/iked/ikev2.c	2010-05-14 10:23:54.000000000 +0800
-@@ -923,6 +923,8 @@
- 	if (!pkt)
- 		goto fail;
- 
-+	++ike_sa->request_pending;
-+
- 	/* save message data for AUTH calculation */
- 	if (ike_sa->my_first_message)
- 		rc_vfree(ike_sa->my_first_message);
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch
deleted file mode 100644
index ed66c6f..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch
+++ /dev/null
@@ -1,86 +0,0 @@
-racoon2: fix target perl path to generate RPM
-
-The configuration tools passed the host perl's path as the path
-to the target perl. This is not correct when the host perl was
-not installed in '/usr/bin/perl'. So hardcode perl path here to
-generate RPM of racoon2.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Chunbo Luo <chunbo.luo@windriver.com>
-Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
-
----
- configure    |   42 +-----------------------------------------
- configure.in |    2 +-
- 2 files changed, 2 insertions(+), 42 deletions(-)
-
-diff --git a/configure b/configure
-index f39cb06..25ac906 100755
---- a/configure
-+++ b/configure
-@@ -796,47 +796,7 @@ else
- 		startup_scripts=none
- fi
- 
--for ac_prog in perl
--do
--# Extract the first word of "$ac_prog", so it can be a program name with args.
--set dummy $ac_prog; ac_word=$2
--echo $ac_n "checking for $ac_word""... $ac_c" 1>&6
--echo "configure:805: checking for $ac_word" >&5
--if eval "test \"`echo '$''{'ac_cv_path_perl_bindir'+set}'`\" = set"; then
--  echo $ac_n "(cached) $ac_c" 1>&6
--else
--  case "$perl_bindir" in
--  /*)
--  ac_cv_path_perl_bindir="$perl_bindir" # Let the user override the test with a path.
--  ;;
--  ?:/*)			 
--  ac_cv_path_perl_bindir="$perl_bindir" # Let the user override the test with a dos path.
--  ;;
--  *)
--  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS=":"
--  ac_dummy="$PATH"
--  for ac_dir in $ac_dummy; do 
--    test -z "$ac_dir" && ac_dir=.
--    if test -f $ac_dir/$ac_word; then
--      ac_cv_path_perl_bindir="$ac_dir/$ac_word"
--      break
--    fi
--  done
--  IFS="$ac_save_ifs"
--  ;;
--esac
--fi
--perl_bindir="$ac_cv_path_perl_bindir"
--if test -n "$perl_bindir"; then
--  echo "$ac_t""$perl_bindir" 1>&6
--else
--  echo "$ac_t""no" 1>&6
--fi
--
--test -n "$perl_bindir" && break
--done
--test -n "$perl_bindir" || perl_bindir="missing_perl"
--
-+perl_bindir='/usr/bin/perl'
- 
- 
- trap '' 1 2 15
-diff --git a/configure.in b/configure.in
-index a7ede4e..3f83241 100644
---- a/configure.in
-+++ b/configure.in
-@@ -89,7 +89,7 @@ else
- fi
- 
- dnl perl_bindir
--AC_PATH_PROGS(perl_bindir, perl, missing_perl)
-+perl_bindir='/usr/bin/perl'
- AC_SUBST(perl_bindir)
- 
- AC_OUTPUT([Makefile samples/Makefile samples/racoon2.conf samples/vals.conf \
--- 
-1.6.4
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch
deleted file mode 100644
index a013199..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-racoon2: fix compile error for MIPS
-
-Correct compile error with fortify-source.
-When compiling with FORTIFY_SOURCE specified,
-the racoon2 package fails.  The root cause is a 
-macro introduces a call to fwrite() where the return code
-isn't checked.  This patch moves the macro to an earlier
-spot where this problem is corrected.
-
-Upstream-Status: Pending
-
-Signed-off-by: Greg Moffatt <greg.moffatt@windriver.com>
-Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
-
----
- cftoken.l |    7 +++++++
- 1 file changed, 7 insertions(+)
-
---- a/lib/cftoken.l
-+++ b/lib/cftoken.l
-@@ -84,6 +84,13 @@
- #define DP
- #endif
- 
-+#ifndef ECHO
-+/* This used to be an fputs(), but since the string might contain NUL's,
-+ * we now use fwrite().
-+ */
-+#define ECHO do { if (fwrite( yytext, yyleng, 1, yyout )) {} } while (0)
-+#endif
-+
- 	/* the include files stack */
- #define CF_INCLUDE_DEPTH 10
- static struct rcf_include_stack {
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch
deleted file mode 100644
index 10182f3..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-Source /etc/init.d/functions and add sub-command status
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
-
-diff --git a/samples/init.d-iked.in b/samples/init.d-iked.in
-index 4e65b94..ff5f355 100644
---- a/samples/init.d-iked.in
-+++ b/samples/init.d-iked.in
-@@ -3,6 +3,9 @@
- # iked startup script
- #
- 
-+# Source function library.
-+. /etc/init.d/functions
-+
- prefix=@prefix@
- exec_prefix=@exec_prefix@
- 
-@@ -25,6 +28,10 @@ stop)
- 	read pid junk < $PIDFILE && kill $pid
- 	echo "."
- 	;;
-+  status)
-+	status $DAEMON;
-+	exit $?
-+	;;
- restart)
- 	$0 stop
- 	$0 start
-@@ -35,7 +42,7 @@ reload)
- 	echo "."
- 	;;
- *)
--	echo "usage: $0 {start|stop|restart|reload}"
-+	echo "usage: $0 {start|stop|status|restart|reload}"
- 	exit 1
- 	;;
- esac
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch
deleted file mode 100644
index 0c57c65..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-iked needs libcrypto
-
-Add libcrypto to the list of LIBS for iked to avoid undefined reference
-errors during compilation.
-
-If add libcrypto to the list of LDFLAGS, the result is same as "gcc  -lcrypto
--o eaytest eaytest.o crypto_openssl.o str2val.o", since the linker searchs an
-archive only once, at the location where it is specified on the command line,
-crypto_openssl.o will report undefined symbol which is defined in libcrypto
-
-Upstream-Status: Pending
-
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
-Signed-off-by: Roy.Li <rongqing.li@windriver.com> 
----
- iked/Makefile.in |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/iked/Makefile.in b/iked/Makefile.in
-index 57134f3..5a9160c 100644
---- a/iked/Makefile.in
-+++ b/iked/Makefile.in
-@@ -56,7 +56,7 @@ OBJS += @CRYPTOBJS@
- TESTSRC = eaytest.c
- TESTOBJ = $(TESTSRC:%.c=%.o)
- 
--LIBS = @LIBS@
-+LIBS = @LIBS@ -lcrypto
- LIBRARIES = @LIBRARIES@
- 
- MAN = iked.8
--- 
-1.7.1
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch
deleted file mode 100644
index 69fe02d..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-Source /etc/init.d/functions and add sub-command status
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
-
-diff --git a/samples/init.d-kinkd.in b/samples/init.d-kinkd.in
-index 1813b39..71d0855 100644
---- a/samples/init.d-kinkd.in
-+++ b/samples/init.d-kinkd.in
-@@ -3,6 +3,9 @@
- # kinkd start up script
- #
- 
-+# Source function library.
-+. /etc/init.d/functions
-+
- prefix=@prefix@
- exec_prefix=@exec_prefix@
- 
-@@ -25,6 +28,10 @@ stop)
- 	read pid junk < $PIDFILE && kill $pid
- 	echo "."
- 	;;
-+  status)
-+	status $DAEMON;
-+	exit $?
-+	;;
- restart)
- 	$0 stop
- 	$0 start
-@@ -35,7 +42,7 @@ reload)
- 	echo "."
- 	;;
- *)
--	echo "usage: $0 {start|stop|restart|reload}"
-+	echo "usage: $0 {start|stop|status|restart|reload}"
- 	exit 1
- 	;;
- esac
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch
deleted file mode 100644
index fe00ba2..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-[PATCH] reenable the ipv6 check
-
-The patch racoon2-configure.in-remove-redundant-macros.patch made ipv6 off
-for iked (RC_IF_IPV6_ENABLE is removed), since the autotools does not autocheck
---enable-ipv6, and copy ipv6 checking codes from lib/configure.in to
-iked/configure.in to reenable it
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
----
- iked/configure.in | 37 +++++++++++++++++++++++++++++++++++++
- 1 file changed, 37 insertions(+)
-
-diff --git a/iked/configure.in b/iked/configure.in
-index 6b9352e..c155536 100644
---- a/iked/configure.in
-+++ b/iked/configure.in
-@@ -187,6 +187,43 @@ AC_TRY_COMPILE([],
- 	 AC_DEFINE(HAVE_FUNC_MACRO, 1, [define if __func__ macro is available])
- 	], [AC_MSG_RESULT(no)])
- 
-+
-+dnl check if ipv6 is available.
-+AC_MSG_CHECKING(if ipv6 is available)
-+AC_ARG_ENABLE(ipv6,
-+[  --enable-ipv6           enable ipv6 (with ipv4) support
-+  --disable-ipv6          disable ipv6 support],
-+        [ case "$enableval" in
-+          no)
-+               AC_MSG_RESULT(no)
-+               ipv6=no
-+               ;;
-+          *)   AC_MSG_RESULT(yes)
-+               AC_DEFINE(INET6, 1, [enable ipv6])
-+               ipv6=yes
-+               ;;
-+          esac ],
-+  AC_TRY_RUN([ /* AF_INET6 avalable check */
-+#include <sys/types.h>
-+#include <sys/socket.h>
-+main()
-+{
-+  exit(0);
-+ if (socket(AF_INET6, SOCK_STREAM, 0) < 0)
-+   exit(1);
-+ else
-+   exit(0);
-+}
-+],
-+  AC_MSG_RESULT(yes)
-+  AC_DEFINE(INET6, 1 , [enable ipv6])
-+  ipv6=yes,
-+  AC_MSG_RESULT(no)
-+  ipv6=no,
-+  AC_MSG_RESULT(no)
-+  ipv6=no
-+))
-+
- if test "$ipv6" = "yes"; then
-     AC_MSG_CHECKING(for advanced API support)
-     AC_CACHE_VAL(racoon_cv_advapi, [dnl
--- 
-1.9.1
-
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch
deleted file mode 100644
index 7718235..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch
+++ /dev/null
@@ -1,19 +0,0 @@
-Remove deprecated do clause which is not supported by perl 5 any more.
-
-Upstream-Status: Pending
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
-
---- racoon2-20100526a/pskgen/pskgen.in.orig	2014-01-27 16:19:19.028054860 +0800
-+++ racoon2-20100526a/pskgen/pskgen.in	2014-01-27 16:19:47.707748768 +0800
-@@ -59,8 +59,8 @@
- 	exit 0;
- }
- 
--require 'getopts.pl';
--do Getopts('rs:o:di:he:d');
-+use Getopt::Std;
-+getopts('rs:o:di:he:d');
- $output = '-';
- $output = $opt_o if ($opt_o);
- 
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch
deleted file mode 100644
index 1c3b1ee..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-Removed conflicting prototypes
-
-Flex 2.5.36 chaned the prototype of yyget_leng(). Portback upstream
-patch to fix the compiling errors:
- 
-    <stdout>:1414:11: error: conflicting types for 'yyget_leng'
-    cftoken.l:56:12: note: previous declaration of 'yyget_leng' was \
-    here extern int yyget_leng (void);
-
-Upstream-Status: Backport
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-===================================================================
-RCS file: /RACOON2/anoncvs/racoon2/lib/cftoken.l,v
-retrieving revision 1.53
-retrieving revision 1.54
-diff -c -p -r1.53 -r1.54
-*** racoon2/lib/cftoken.l	2009/03/20 21:57:16	1.53
---- racoon2/lib/cftoken.l	2013/07/30 07:04:51	1.54
-***************
-*** 1,4 ****
-! /* $Id: cftoken.l,v 1.53 2009/03/20 21:57:16 mk Exp $ */
-  /*
-   * Copyright (C) 2004 WIDE Project.
-   * All rights reserved.
---- 1,4 ----
-! /* $Id: cftoken.l,v 1.54 2013/07/30 07:04:51 kamada Exp $ */
-  /*
-   * Copyright (C) 2004 WIDE Project.
-   * All rights reserved.
-***************
-*** 50,67 ****
-  
-  #include "safefile.h"
-  
-- extern int yyget_lineno (void);
-- extern FILE *yyget_in (void);
-- extern FILE *yyget_out (void);
-- extern int yyget_leng (void);
-- extern char *yyget_text (void);
-- extern void yyset_lineno (int);
-- extern void yyset_in (FILE *);
-- extern void yyset_out (FILE *);
-- extern int yyget_debug (void);
-- extern void yyset_debug (int);
-- extern int yylex_destroy (void);
-- 
-  	/* avoid gcc error */
-  #define YY_NO_INPUT 1
-  
---- 50,55 ----
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch
deleted file mode 100644
index ab2b0e0..0000000
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-Source /etc/init.d/functions and add sub-command status
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
-
-diff --git a/samples/init.d-spmd.in b/samples/init.d-spmd.in
-index d38b825..624f22d 100644
---- a/samples/init.d-spmd.in
-+++ b/samples/init.d-spmd.in
-@@ -1,5 +1,8 @@
- #! /bin/sh
- 
-+# Source function library.
-+. /etc/init.d/functions
-+
- prefix=@prefix@
- exec_prefix=@exec_prefix@
- 
-@@ -27,6 +30,10 @@ case "$1" in
- 	$DAEMON -k
- 	echo "."
- 	;;
-+  status)
-+	status $DAEMON;
-+	exit $?
-+	;;
-   restart|force-reload)
-   	$0 stop
- 	$0 start
-@@ -34,7 +41,7 @@ case "$1" in
-   *)
- 	N=/etc/init.d/$NAME
- 	# echo "Usage: $N {start|stop|restart|reload|force-reload}" >&2
--	echo "Usage: $N {start|stop|restart|force-reload}" >&2
-+	echo "Usage: $N {start|stop|status|restart|force-reload}" >&2
- 	exit 1
- 	;;
- esac
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
similarity index 70%
rename from meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb
rename to meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
index ada4e24..56dabfb 100644
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
@@ -7,39 +7,33 @@ FreeBSD, NetBSD, Linux, and Mac OS X."
 
 HOMEPAGE = "http://ftp.racoon2.wide.ad.jp/pub/racoon2/"
 
-DEPENDS = "${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'krb5', '', d)} libpcap openssl bison flex-native util-linux"
+DEPENDS = "${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'krb5', '', d)} libpcap openssl bison flex-native util-linux bison-native"
 RDEPENDS_${PN} += "perl"
 
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=99a60756441098855c538fe86f859afe"
 
-SRC_URI = "http://ftp.racoon2.wide.ad.jp/pub/${PN}/${BPN}-${PV}.tgz \
-           file://racoon2-configure-memcmp.patch \
-           file://racoon2-correct-openssl-include-path.patch \
-           file://racoon2-DESTDIR.patch \
-           file://racoon2-disable-hard-limit-timer.patch \
-           file://racoon2-fix-rekeying-reply.patch \
-           file://racoon2-fix-sadb_msg_seq-collision.patch \
-           file://racoon2-fix-target-perl-path-to-generate-RPM.patch \
-           file://racoon2-fwrite-return-value.patch \
-           file://racoon2-fix-configure-error.patch \
-           file://racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch \
-           file://racoon2-Remove-INSTALL_OPTS.patch \
-           file://racoon2-iked-needs-libcrypto.patch \
-           file://racoon2-removed-conflicting-prototypes.patch \
-           file://racoon2-iked-initscript.patch \
-           file://racoon2-kinkd-initscript.patch \
-           file://racoon2-spmd-initscript.patch \
-           file://racoon2-remove-deprecated-do-clause.patch \
-           file://racoon2-configure.in-remove-redundant-macros.patch \
-           file://racoon2-reenable-the-ipv6-check.patch \
-           file://racoon2-fix-hardcoded-sysconfdir.patch \
-           file://racoon2-configure-autoheader.patch \
+SRC_URI = "git://github.com/zoulasc/racoon2 \
+           file://0001-Add-DESTDIR-to-install-commands.patch \
+           file://0002-Enable-turning-of-kinkd-and-iked.patch \
+           file://0003-Replace-perl_bindir-with-usr-bin-env-perl.patch \
+           file://0004-racoon2-disable-hard-limit-timer.patch \
+           file://0005-racoon2-fix-rekeying-reply.patch \
+           file://0006-racoon2-fix-sadb_msg_seq-collision.patch \
+           file://0007-racoon2-fwrite-return-value.patch \
+           file://0008-racoon2-iked-needs-libcrypto.patch \
+           file://0009-racoon2-iked-initscript.patch \
+           file://0010-racoon2-kinkd-initscript.patch \
+           file://0011-racoon2-spmd-initscript.patch \
+           file://0012-racoon2-remove-deprecated-do-clause.patch \
+           file://0013-racoon2-fix-hardcoded-sysconfdir.patch \
            file://volatiles.99_racoon2 \
            file://iked.service \
            file://spmd.service \
           "
 
+SRCREV="7b68950328454b0e91ba24698c10c4a790705cc1"
+S= "${WORKDIR}/git" 
 SRC_URI[md5sum] = "2fa33abff1ccd6fc22876a23db77aaa8"
 SRC_URI[sha256sum] = "f23773e4d97cec823ec634085b5e60a7884a13467ff1bffc17daac14d02f9caa"
 
@@ -51,9 +45,13 @@ EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN} \
                  --enable-iked=yes \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'krb5', '--enable-kinkd', '--disable-kinkd', d)} \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', '--enable-ipv6', '--disable-ipv6', d)} \
-                 --with-openssl-libdir=${STAGING_DIR_TARGET} \
+                 --with-openssl-libdir=${STAGING_DIR_TARGET}${prefix} \
                  --with-kernel-build-dir=${STAGING_INCDIR}"
+CLEANBROKEN = "1"
 
+do_configure_prepend () {
+    mkdir -p lib/m4 spmd/m4 iked/m4 kinkd/m4
+}
 
 do_install_append() {
     install -d -m 0755 ${D}${sysconfdir}/init.d/
-- 
2.13.3

