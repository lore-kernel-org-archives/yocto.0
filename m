Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3EB4E00B63; Thu, 15 Jun 2017 23:19:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DBE4E00BC4
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 23:18:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5G6Ikbo027814
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 15 Jun 2017 23:18:47 -0700 (PDT)
Received: from localhost (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Thu, 15 Jun 2017 23:18:45 -0700
From: <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>
Date: Fri, 16 Jun 2017 14:18:43 +0800
Message-ID: <1497593923-13457-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.198]
Subject: [meta-cgl][PATCH V2] racoon2: add new recipe
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
X-List-Received-Date: Fri, 16 Jun 2017 06:19:04 -0000
Content-Type: text/plain

From: Yi Zhao <yi.zhao@windriver.com>

The Racoon2 project is a joint effort which provides an implementation
of key management system for IPsec. It supports IKEv1, IKEv2, and KINK
protocols.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-cgl/racoon2/racoon2/iked.service       |  14 +
 .../racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch  |  32 +++
 .../racoon2/racoon2/racoon2-DESTDIR.patch          | 202 +++++++++++++++
 .../racoon2/racoon2-Remove-INSTALL_OPTS.patch      |  87 +++++++
 .../racoon2/racoon2-configure-autoheader.patch     |  60 +++++
 .../racoon2/racoon2/racoon2-configure-memcmp.patch |  32 +++
 ...oon2-configure.in-remove-redundant-macros.patch | 199 +++++++++++++++
 .../racoon2-correct-openssl-include-path.patch     |  70 +++++
 .../racoon2/racoon2-disable-hard-limit-timer.patch |  80 ++++++
 .../racoon2/racoon2-fix-configure-error.patch      |  50 ++++
 .../racoon2/racoon2-fix-hardcoded-sysconfdir.patch | 281 +++++++++++++++++++++
 .../racoon2/racoon2-fix-rekeying-reply.patch       |  28 ++
 .../racoon2-fix-sadb_msg_seq-collision.patch       |  41 +++
 ...oon2-fix-target-perl-path-to-generate-RPM.patch |  86 +++++++
 .../racoon2/racoon2-fwrite-return-value.patch      |  34 +++
 .../racoon2/racoon2/racoon2-iked-initscript.patch  |  40 +++
 .../racoon2/racoon2-iked-needs-libcrypto.patch     |  34 +++
 .../racoon2/racoon2/racoon2-kinkd-initscript.patch |  40 +++
 .../racoon2/racoon2-reenable-the-ipv6-check.patch  |  65 +++++
 .../racoon2-remove-deprecated-do-clause.patch      |  19 ++
 .../racoon2-removed-conflicting-prototypes.patch   |  51 ++++
 .../racoon2/racoon2/racoon2-spmd-initscript.patch  |  39 +++
 .../recipes-cgl/racoon2/racoon2/spmd.service       |  12 +
 .../racoon2/racoon2/volatiles.99_racoon2           |   1 +
 .../recipes-cgl/racoon2/racoon2_20100526a.bb       | 104 ++++++++
 25 files changed, 1701 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/iked.service
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/spmd.service
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2/volatiles.99_racoon2
 create mode 100644 meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb

diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/iked.service b/meta-cgl-common/recipes-cgl/racoon2/racoon2/iked.service
new file mode 100644
index 0000000..3ec4f96
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/iked.service
@@ -0,0 +1,14 @@
+[Unit]
+Description=daemon for the Internet Key Exchange
+After=syslog.target network.target spmd.service
+Requires=spmd.service
+
+[Service]
+Type=forking
+PIDFile=/var/run/iked.pid
+ExecStart=@SBINDIR@/iked
+ExecReload=@BASE_BINDIR@/kill -HUP $MAINPID
+SuccessExitStatus=1
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch
new file mode 100644
index 0000000..9ca88a8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch
@@ -0,0 +1,32 @@
+From 2ad8c9b2e99be296fc7c7bf94161a53aa3984b24 Mon Sep 17 00:00:00 2001
+From: Aws Ismail <aws.ismail@windriver.com>
+Date: Tue, 23 Oct 2012 18:07:23 -0400
+Subject: [PATCH 2/3] Add Value to HAVE_NSSWITCH_CONF
+
+Use a more verbose form of AC_DEFINE
+to force value of "1" to
+HAVE_NSSWITCH_CONF macro.
+
+Upstream-Status: Pending
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+---
+ spmd/configure.in |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/spmd/configure.in b/spmd/configure.in
+index c149c2d..c079c56 100644
+--- a/spmd/configure.in
++++ b/spmd/configure.in
+@@ -91,7 +91,7 @@ case "$target" in
+ 		;;
+ 	*)      
+ 		AC_MSG_RESULT(use /etc/nsswitch.conf)
+-		AC_DEFINE(HAVE_NSSWITCH_CONF)
++		AC_DEFINE(HAVE_NSSWITCH_CONF, [1], [Define if nsswitch conf file exists])
+ 		;;
+ esac
+ 
+-- 
+1.7.0.4
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch
new file mode 100644
index 0000000..b2a0eac
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-DESTDIR.patch
@@ -0,0 +1,202 @@
+Enable non-standard destdir
+
+Add in $(DESTDIR) to all the install lines,
+so that we can get things installed into a
+non-standard location.
+
+Upstream-Status: Pending
+
+Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff -r -u a/iked/Makefile.in b/iked/Makefile.in
+--- a/iked/Makefile.in
++++ b/iked/Makefile.in
+@@ -66,16 +66,16 @@
+ install: install-prog install-doc
+ 
+ install-prog: $(PROG)
+-	$(INSTALL) -d $(sbindir)
+-	$(INSTALL_PROGRAM) $(PROG) $(sbindir)
++	$(INSTALL) -d $(DESTDIR)$(sbindir)
++	$(INSTALL_PROGRAM) $(PROG) $(DESTDIR)$(sbindir)
+ 
+ install-doc:
+-	$(INSTALL) -d $(mandir)/man8
++	$(INSTALL) -d $(DESTDIR)$(mandir)/man8
+ # not friendly with -n  :-(
+ 	sysconfdir="$$(echo '$(sysconfdir)' | sed 's/%/\\\%/g')"; \
+ 	for f in $(MAN); do \
+ 		sed -e s%\@sysconfdir\@%"$$sysconfdir"%g < $$f > $${f}.tmp; \
+-		$(INSTALL_DATA) $${f}.tmp $(mandir)/man$${f##*.}/$$f; \
++		$(INSTALL_DATA) $${f}.tmp $(DESTDIR)$(mandir)/man$${f##*.}/$$f; \
+ 		rm $${f}.tmp; \
+ 	done
+ 
+diff -r -u a/kinkd/Makefile.in b/kinkd/Makefile.in
+--- a/kinkd/Makefile.in
++++ b/kinkd/Makefile.in
+@@ -46,14 +46,14 @@
+ ../lib/libracoon.a:		# check its timestamp only when there is.
+ 
+ install: all
+-	$(INSTALL) -d $(sbindir)
+-	$(INSTALL_PROGRAM) $(PROG) $(sbindir)
+-	$(INSTALL) -d $(mandir)/man8
++	$(INSTALL) -d $(DESTDIR)$(sbindir)
++	$(INSTALL_PROGRAM) $(PROG) $(DESTDIR)$(sbindir)
++	$(INSTALL) -d $(DESTDIR)$(mandir)/man8
+ # not friendly with -n  :-(
+ 	sysconfdir="$$(echo '$(sysconfdir)' | sed 's/%/\\\%/g')"; \
+ 	for f in $(MAN); do \
+ 		sed -e s%\@sysconfdir\@%"$$sysconfdir"%g < $$f > $${f}.tmp; \
+-		$(INSTALL_DATA) $${f}.tmp $(mandir)/man$${f##*.}/$$f; \
++		$(INSTALL_DATA) $${f}.tmp $(DESTDIR)$(mandir)/man$${f##*.}/$$f; \
+ 		rm $${f}.tmp; \
+ 	done
+ 
+diff -r -u a/pskgen/Makefile.in b/pskgen/Makefile.in
+--- a/pskgen/Makefile.in
++++ b/pskgen/Makefile.in
+@@ -17,10 +17,10 @@
+ all:
+ 
+ install: all
+-	$(INSTALL) -d $(sbindir)
+-	$(INSTALL_SCRIPT) $(PROG) $(sbindir)
+-	$(INSTALL_DATA) $(PROG).8 $(mandir)/man8
+-	$(INSTALL) -d $(prefix)/etc/racoon2
++	$(INSTALL) -d $(DESTDIR)$(sbindir)
++	$(INSTALL_SCRIPT) $(PROG) $(DESTDIR)$(sbindir)
++	$(INSTALL_DATA) $(PROG).8 $(DESTDIR)$(mandir)/man8
++	$(INSTALL) -d $(DESTDIR)$(prefix)/etc/racoon2
+ 	sh ./autogen.spmd.pwd
+ 
+ depend:
+diff -r -u a/samples/Makefile.in b/samples/Makefile.in
+--- a/samples/Makefile.in
++++ b/samples/Makefile.in
+@@ -12,60 +12,60 @@
+ all:
+ 
+ install: all install-startup-@startup_scripts@ install-samples install-hook
+-	$(INSTALL) -d -o 0 -g 0 -m 700 /var/run/racoon2
++	$(INSTALL) -d -o 0 -g 0 -m 700 $(DESTDIR)/var/run/racoon2
+ 
+ install-samples:
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
+ 
+ install-startup-rc-d:
+-	$(INSTALL) -d $(sysconfdir)/rc.d
+-	$(INSTALL_SCRIPT) rc.d-iked $(sysconfdir)/rc.d/iked
+-	$(INSTALL_SCRIPT) rc.d-kinkd $(sysconfdir)/rc.d/kinkd
+-	$(INSTALL_SCRIPT) rc.d-spmd $(sysconfdir)/rc.d/spmd
+-	$(INSTALL_SCRIPT) rc.d-racoon2 $(sysconfdir)/rc.d/racoon2
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/rc.d
++	$(INSTALL_SCRIPT) rc.d-iked $(DESTDIR)$(sysconfdir)/rc.d/iked
++	$(INSTALL_SCRIPT) rc.d-kinkd $(DESTDIR)$(sysconfdir)/rc.d/kinkd
++	$(INSTALL_SCRIPT) rc.d-spmd $(DESTDIR)$(sysconfdir)/rc.d/spmd
++	$(INSTALL_SCRIPT) rc.d-racoon2 $(DESTDIR)$(sysconfdir)/rc.d/racoon2
+ 
+ install-startup-init-d:
+-	$(INSTALL) -d $(sysconfdir)/init.d
+-	$(INSTALL_SCRIPT) init.d-iked $(sysconfdir)/init.d/iked
+-	$(INSTALL_SCRIPT) init.d-kinkd $(sysconfdir)/init.d/kinkd
+-	$(INSTALL_SCRIPT) init.d-spmd $(sysconfdir)/init.d/spmd
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/init.d
++	$(INSTALL_SCRIPT) init.d-iked $(DESTDIR)$(sysconfdir)/init.d/iked
++	$(INSTALL_SCRIPT) init.d-kinkd $(DESTDIR)$(sysconfdir)/init.d/kinkd
++	$(INSTALL_SCRIPT) init.d-spmd $(DESTDIR)$(sysconfdir)/init.d/spmd
+ 
+ install-startup-none:
+ 
+ install-hook:
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
+-	$(INSTALL_SCRIPT) 00ikesaup_sample $(sysconfdir)/hook/ikesa-up.d
+-	$(INSTALL_SCRIPT) 00childup_sample $(sysconfdir)/hook/child-up.d
+-	$(INSTALL) -d $(sysconfdir)/hook/ph1-up.d
+-	$(INSTALL_SCRIPT) ph1-up $(sysconfdir)/hook
+-	$(INSTALL) -d $(sysconfdir)/hook/ph1-down.d
+-	$(INSTALL_SCRIPT) ph1-down $(sysconfdir)/hook
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
++	$(INSTALL_SCRIPT) 00ikesaup_sample $(DESTDIR)$(sysconfdir)/hook/ikesa-up.d
++	$(INSTALL_SCRIPT) 00childup_sample $(DESTDIR)$(sysconfdir)/hook/child-up.d
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ph1-up.d
++	$(INSTALL_SCRIPT) ph1-up $(DESTDIR)$(sysconfdir)/hook
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)/hook/ph1-down.d
++	$(INSTALL_SCRIPT) ph1-down $(DESTDIR)$(sysconfdir)/hook
+ 
+ # empty
+ depend:
+diff -r -u a/spmd/Makefile.in b/spmd/Makefile.in
+--- a/spmd/Makefile.in
++++ b/spmd/Makefile.in
+@@ -38,11 +38,11 @@
+ spmdctl.o: spmd_internal.h
+ 
+ install: all
+-	$(INSTALL_DIR) $(sbindir)
+-	$(INSTALL_PROGRAM) $(DAEMON) $(sbindir)
+-	$(INSTALL_PROGRAM) $(COMMAND) $(sbindir)
+-	$(INSTALL_DIR) $(man8dir)
+-	$(INSTALL_DATA) $(MANFILES) $(man8dir)
++	$(INSTALL_DIR) $(DESTDIR)$(sbindir)
++	$(INSTALL_PROGRAM) $(DAEMON) $(DESTDIR)$(sbindir)
++	$(INSTALL_PROGRAM) $(COMMAND) $(DESTDIR)$(sbindir)
++	$(INSTALL_DIR) $(DESTDIR)$(man8dir)
++	$(INSTALL_DATA) $(MANFILES) $(DESTDIR)$(man8dir)
+ 
+ clean:
+ 	-rm -f $(TARGET) *.o $(COMMAND)
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch
new file mode 100644
index 0000000..5e0d2e7
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-Remove-INSTALL_OPTS.patch
@@ -0,0 +1,87 @@
+From f9c98441876ae1d426ef4fcad3fef389be3adb25 Mon Sep 17 00:00:00 2001
+From: Aws Ismail <aws.ismail@windriver.com>
+Date: Tue, 23 Oct 2012 18:16:34 -0400
+Subject: [PATCH 3/3] Remove @INSTALL_OPTS@
+
+Removed the redundant @INSTALL_OPTS@
+which could give an error during installation
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+---
+ iked/Makefile.in    |    2 +-
+ kinkd/Makefile.in   |    2 +-
+ pskgen/Makefile.in  |    2 +-
+ samples/Makefile.in |    2 +-
+ spmd/Makefile.in    |    2 +-
+ 5 files changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/iked/Makefile.in b/iked/Makefile.in
+index acb355f..8dfa69c 100644
+--- a/iked/Makefile.in
++++ b/iked/Makefile.in
+@@ -22,7 +22,7 @@ host_cpu =	@host_cpu@
+ host_vendor =	@host_vendor@
+ host_os =	@host_os@
+ CC =	@CC@
+-INSTALL =	@INSTALL@ @INSTALL_OPTS@
++INSTALL =	@INSTALL@
+ INSTALL_PROGRAM = @INSTALL_PROGRAM@
+ INSTALL_SCRIPT=	@INSTALL_SCRIPT@
+ INSTALL_DATA =	@INSTALL_DATA@
+diff --git a/kinkd/Makefile.in b/kinkd/Makefile.in
+index b3c52a7..b14ff35 100644
+--- a/kinkd/Makefile.in
++++ b/kinkd/Makefile.in
+@@ -12,7 +12,7 @@ CPPFLAGS=@CPPFLAGS@ @DEFS@ -DRACOON2_CONFIG_DIR=\"$(sysconfdir)\"
+ LDFLAGS	=@LDFLAGS@
+ LIBS	=@LIBS@
+ CFLAGS	=@CFLAGS@ $(OPTFLAG)
+-INSTALL =@INSTALL@ @INSTALL_OPTS@
++INSTALL =@INSTALL@
+ INSTALL_PROGRAM=@INSTALL_PROGRAM@
+ INSTALL_DATA=@INSTALL_DATA@
+ MKDEP	=@MKDEP@
+diff --git a/pskgen/Makefile.in b/pskgen/Makefile.in
+index 2d5092d..ff0d374 100644
+--- a/pskgen/Makefile.in
++++ b/pskgen/Makefile.in
+@@ -7,7 +7,7 @@ sbindir=@sbindir@
+ sysconfdir=@sysconfdir@
+ mandir=@mandir@
+ 
+-INSTALL =@INSTALL@ @INSTALL_OPTS@
++INSTALL =@INSTALL@
+ INSTALL_PROGRAM=@INSTALL_PROGRAM@
+ INSTALL_SCRIPT=@INSTALL_SCRIPT@
+ INSTALL_DATA=@INSTALL_DATA@
+diff --git a/samples/Makefile.in b/samples/Makefile.in
+index 5f6c3ea..f0d488b 100644
+--- a/samples/Makefile.in
++++ b/samples/Makefile.in
+@@ -3,7 +3,7 @@
+ srcdir=@srcdir@
+ prefix=@prefix@
+ sysconfdir=@sysconfdir@
+-INSTALL =@INSTALL@ @INSTALL_OPTS@
++INSTALL =@INSTALL@  
+ INSTALL_PROGRAM=@INSTALL_PROGRAM@
+ INSTALL_DATA=@INSTALL_DATA@
+ INSTALL_SCRIPT=@INSTALL_SCRIPT@
+diff --git a/spmd/Makefile.in b/spmd/Makefile.in
+index 9b13ef2..6a78d33 100644
+--- a/spmd/Makefile.in
++++ b/spmd/Makefile.in
+@@ -4,7 +4,7 @@ CFLAGS = @CFLAGS@ @CPPFLAGS@ @DEFS@ -DSYSCONFDIR=\"${sysconfdir}\"
+ # CFLAGS +=-DSADB_X_MIGRATE
+ LDFLAGS = @LDFLAGS@
+ LIBS = @LIBS@
+-INSTALL=@INSTALL@ @INSTALL_OPTS@
++INSTALL=@INSTALL@
+ INSTALL_PROGRAM=@INSTALL_PROGRAM@
+ INSTALL_DATA=@INSTALL_DATA@
+ INSTALL_DIR=@INSTALL_DIR@
+-- 
+1.7.0.4
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch
new file mode 100644
index 0000000..903cbe8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-autoheader.patch
@@ -0,0 +1,60 @@
+From cddb9b757bdcd60c58d6320479d572ebdd15b449 Mon Sep 17 00:00:00 2001
+From: Robert Yang <liezhi.yang@windriver.com>
+Date: Sun, 8 Jun 2014 06:37:01 -0700
+Subject: [PATCH] spmd/configure.in: add description for AC_DEFINE
+
+The autoheader now requires the AC_DEFINE to have a description,
+otherewise it would fail.
+
+See oe-core's dd9c3d7bc946ff44e0ca90f4e345711d6ad21728
+
+Upstream-Status: Pending
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+---
+ spmd/configure.in |   10 +++++-----
+ 1 file changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/spmd/configure.in b/spmd/configure.in
+index 3858aa1..e3e8650 100644
+--- a/spmd/configure.in
++++ b/spmd/configure.in
+@@ -74,18 +74,18 @@ int main(void)
+ 	exit(0);
+ }
+ ],
+-AC_DEFINE(HAVE_SA_LEN)
++AC_DEFINE([HAVE_SA_LEN], [1], [Define if have sa_len])
+ AC_MSG_RESULT(yes),
+ AC_MSG_RESULT(no),:)
+ 
+ echo $ac_n "checking for architecture""... $ac_c" 1>&6
+ case "$target" in
+ 	*freebsd4*)
+-		AC_DEFINE(HAVE_HOST_CONF)
++		AC_DEFINE([HAVE_HOST_CONF], [1], [Define if have host.conf])
+ 		AC_MSG_RESULT(use /etc/host.conf)
+ 		;;
+ 	*openbsd*)
+-		AC_DEFINE(HAVE_LOOKUP_IN_RESOLV_CONF)
++		AC_DEFINE([HAVE_LOOKUP_IN_RESOLV_CONF], [1], [Define if have lookup in resolv.conf])
+ 		AC_MSG_RESULT(use lookup in /etc/resolv.conf)
+ 		;;
+ 	*)      
+@@ -97,11 +97,11 @@ esac
+ echo $ac_n "checking for SPDUPDATE BUG""... $ac_c" 1>&6
+ case $host_os in
+ 	*netbsd*)
+-		AC_DEFINE(HAVE_SPDUPDATE_BUG)
++		AC_DEFINE([HAVE_SPDUPDATE_BUG], [1], [Define if have spdupdate_bug])
+ 		AC_MSG_RESULT(yes)
+ 		;;
+ 	*freebsd*)
+-		AC_DEFINE(HAVE_SPDUPDATE_BUG)
++		AC_DEFINE([HAVE_SPDUPDATE_BUG], [1], [Define if have spdupdate_bug])
+ 		AC_MSG_RESULT(yes)
+ 		;;
+ 	*)
+-- 
+1.7.9.5
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch
new file mode 100644
index 0000000..97857c7
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure-memcmp.patch
@@ -0,0 +1,32 @@
+Comment out memmcp.clean configure-related option
+ 
+Upstream-Status: Pending
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/iked/configure b/iked/configure
+index 80ca9a3..9205bc3 100755
+--- a/iked/configure
++++ b/iked/configure
+@@ -1758,7 +1758,7 @@ fi
+ fi
+ 
+ echo "$ac_t""$ac_cv_func_memcmp_clean" 1>&6
+-test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
++# test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
+ 
+ echo $ac_n "checking return type of signal handlers""... $ac_c" 1>&6
+ echo "configure:1765: checking return type of signal handlers" >&5
+diff --git a/lib/configure b/lib/configure
+index c7d057a..6390794 100755
+--- a/lib/configure
++++ b/lib/configure
+@@ -1909,7 +1909,7 @@ fi
+ fi
+ 
+ echo "$ac_t""$ac_cv_func_memcmp_clean" 1>&6
+-test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
++# test $ac_cv_func_memcmp_clean = no && LIBOBJS="$LIBOBJS memcmp.${ac_objext}"
+ 
+ echo $ac_n "checking for strftime""... $ac_c" 1>&6
+ echo "configure:1916: checking for strftime" >&5
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch
new file mode 100644
index 0000000..7a69857
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-configure.in-remove-redundant-macros.patch
@@ -0,0 +1,199 @@
+* autotools was used for the build process and these macros became
+redundant, so remove them to avoid errors in configure:
+./configure: line 4619: RC_WITH_OPENSSL_LIB: command not found 
+
+* a bash syntax error is also fixed here:
+./configure: line 4636: test: =: unary operator expected
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ configure.in       |    1 -
+ iked/configure.in  |   20 +-------------------
+ kinkd/configure.in |    5 +----
+ lib/configure.in   |   10 +---------
+ spmd/configure.in  |   11 +----------
+ 5 files changed, 4 insertions(+), 43 deletions(-)
+
+diff --git a/configure.in b/configure.in
+index 5eaa7c5..e74433e 100644
+--- a/configure.in
++++ b/configure.in
+@@ -10,7 +10,6 @@ AC_CANONICAL_HOST
+ dnl Checks for programs.
+ AC_PROG_INSTALL
+ AC_PROG_MAKE_SET
+-RC_IF_INSTALL_OPTS
+ 
+ dnl XXX see the comment below.
+ dnl AC_CONFIG_SUBDIRS(lib)
+diff --git a/iked/configure.in b/iked/configure.in
+index 031e499..6b9352e 100644
+--- a/iked/configure.in
++++ b/iked/configure.in
+@@ -51,9 +51,6 @@ if test x"$ikev2" = x"yes"; then
+     IKEV2_SRC='$(IKEV2_SRC)'
+ fi
+ 
+-# check --enable-debug
+-RC_IF_BUILD_DEBUG
+-
+ # including pcap if enable_debug is yes
+ if test "$enable_debug" = yes -a "$enable_pcap" = yes ; then
+ 	AC_CHECK_LIB(pcap, pcap_dump,,[AC_MSG_ERROR(failed finding libpcap)])
+@@ -120,9 +117,6 @@ if test "${ikev2_ipsec_window_size+set}" = "set"; then
+ 	AC_DEFINE_UNQUOTED(IKEV2_IPSEC_WINDOW_SIZE, $ikev2_ipsec_window_size, [window size of IPsec SA created by IKEv2])
+ fi
+ 
+-# check for --with-install-opts
+-RC_IF_INSTALL_OPTS
+-
+ # Checks for header files.
+ AC_HEADER_STDC
+ AC_CHECK_HEADERS([limits.h netdb.h netinet/in.h netinet6/ipsec.h netipsec/ipsec.h stdarg.h stddef.h stdlib.h string.h sys/param.h sys/socket.h sys/time.h unistd.h inttypes.h stdint.h])
+@@ -133,8 +127,6 @@ AC_ARG_WITH(kernel_build_dir, [  --with-kernel-build-dir=DIR       specify the d
+ 	[kernel_build_dir=$withval], [kernel_build_dir=no])
+ AC_MSG_RESULT(${kernel_build_dir})
+ 
+-RC_CHECK_PFKEYV2_H
+-RC_IF_NATT_ENABLE
+ if test x"$enable_natt" = x"yes"; then
+   if test x"$ikev1" = x"yes"; then
+ 	IKEV1_SRC="${IKEV1_SRC} \$(IKEV1_NATT_SRC)"
+@@ -195,11 +187,6 @@ AC_TRY_COMPILE([],
+ 	 AC_DEFINE(HAVE_FUNC_MACRO, 1, [define if __func__ macro is available])
+ 	], [AC_MSG_RESULT(no)])
+ 
+-# check for struct sockaddr
+-RC_IF_SA_LEN
+-
+-# check for --enable-ipv6
+-RC_IF_IPV6_ENABLE
+ if test "$ipv6" = "yes"; then
+     AC_MSG_CHECKING(for advanced API support)
+     AC_CACHE_VAL(racoon_cv_advapi, [dnl
+@@ -239,10 +226,6 @@ fi
+ # Look for dlopen (libc in FreeBSD, libdl in Debian)
+ AC_SEARCH_LIBS(dlopen, dl)
+ 
+-# checks for OpenSSL
+-# check for --with-openssl-libdir
+-RC_WITH_OPENSSL_LIB
+-
+ # check Engine interface
+ AC_MSG_CHECKING(--enable-engine)
+ engine='yes'
+@@ -315,9 +298,8 @@ if test x"$sha2" = x"yes"; then
+ 	AC_DEFINE(WITH_SHA2, 1, [define if SHA2 can be used])
+ fi
+ 
+-RC_CHECK_MAKE
+ AC_SUBST(IF_GMAKE)
+-if test $MAKE_TYPE = gmake; then
++if test "$MAKE_TYPE" = "gmake"; then
+ 	IF_GMAKE=''
+ else
+ 	IF_GMAKE='#'
+diff --git a/kinkd/configure.in b/kinkd/configure.in
+index 272c1eb..a332436 100644
+--- a/kinkd/configure.in
++++ b/kinkd/configure.in
+@@ -10,7 +10,6 @@ AC_PROG_CPP
+ AC_PROG_LEX
+ AC_PROG_INSTALL
+ AC_PROG_MAKE_SET
+-RC_PROG_MKDEP
+ 
+ AC_CANONICAL_HOST
+ 
+@@ -263,11 +262,9 @@ sys_queue_ng
+ 	AC_MSG_RESULT(ok)
+ )
+ 
+-RC_IF_INSTALL_OPTS
+ 
+-RC_CHECK_MAKE
+ AC_SUBST(IF_GMAKE)
+-if test $MAKE_TYPE = gmake; then
++if test "$MAKE_TYPE" = "gmake"; then
+ 	IF_GMAKE=''
+ else
+ 	IF_GMAKE='#'
+diff --git a/lib/configure.in b/lib/configure.in
+index 883a28c..414d7b1 100644
+--- a/lib/configure.in
++++ b/lib/configure.in
+@@ -12,7 +12,6 @@ AC_PROG_YACC
+ AC_PROG_RANLIB
+ AC_PROG_INSTALL
+ AC_PROG_MAKE_SET
+-RC_PROG_MKDEP
+ 
+ AC_CANONICAL_HOST
+ 
+@@ -112,9 +111,6 @@ AC_HEADER_STDC
+ AC_HEADER_SYS_WAIT
+ AC_CHECK_HEADERS(sys/time.h net/if_var.h net/ethernet.h limits.h unistd.h stdarg.h varargs.h netinet6/ipsec.h netipsec/ipsec.h)
+ 
+-RC_CHECK_PFKEYV2_H
+-RC_IF_NATT_ENABLE
+-
+ dnl Checks for typedefs, structures, and compiler characteristics.
+ AC_C_CONST
+ AC_TYPE_PID_T
+@@ -198,14 +194,10 @@ AC_TRY_COMPILE([#include <sys/types.h>
+ 	AC_MSG_RESULT(yes),
+ 	AC_MSG_RESULT(no))
+ 
+-dnl --with-openssl-libdir
+-RC_WITH_OPENSSL_LIB
+-
+ AC_CHECK_HEADERS(openssl/evp.h)
+ 
+-RC_CHECK_MAKE
+ AC_SUBST(IF_GMAKE)
+-if test $MAKE_TYPE = gmake; then
++if test "$MAKE_TYPE" = "gmake"; then
+ 	IF_GMAKE=''
+ else
+ 	IF_GMAKE='#'
+diff --git a/spmd/configure.in b/spmd/configure.in
+index c079c56..3858aa1 100644
+--- a/spmd/configure.in
++++ b/spmd/configure.in
+@@ -13,7 +13,6 @@ dnl Checks for programs.
+ AC_PROG_CC
+ AC_PROG_CPP
+ AC_PROG_INSTALL
+-RC_PROG_MKDEP
+ 
+ INSTALL_LIB="\${INSTALL_DATA}"
+ AC_SUBST(INSTALL_LIB)
+@@ -119,22 +118,14 @@ AC_MSG_RESULT($libracoon_path)
+ 	LDFLAGS="$LDFLAGS -L$libracoon_path"
+ 	LIBS="-lracoon $LIBS"
+ 
+-dnl --with-openssl-libdir
+-RC_WITH_OPENSSL_LIB
+-
+ AC_CHECK_HEADER(openssl/evp.h)
+ 
+-RC_CHECK_MAKE
+ AC_SUBST(IF_GMAKE)
+-if test $MAKE_TYPE = gmake; then
++if test "$MAKE_TYPE" = "gmake"; then
+ 	IF_GMAKE=''
+ else
+ 	IF_GMAKE='#'
+ fi
+ 
+-RC_IF_INSTALL_OPTS
+-
+-RC_CHECK_PFKEYV2_H
+-
+ AC_CONFIG_HEADER(config.h)
+ AC_OUTPUT(Makefile)
+-- 
+1.7.9.5
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch
new file mode 100644
index 0000000..2ccd61d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-correct-openssl-include-path.patch
@@ -0,0 +1,70 @@
+commit 60800fb6e9bd48a54c52d34fe4f1a4444e2160f7
+Author: Aws Ismail <aws.ismail@windriver.com>
+Date:   Mon Aug 20 13:57:43 2012 -0400
+
+Use correct path for openssl includes
+    
+Originally, if $openssl_libdir is set then
+CFLAGS in will append $openssl_libdir/include
+which does not exist.
+    
+Correct location should be $openssl_libdir/usr/
+include/openssl. Provided that --with-openssl-libdir
+is given bitbake_build/tmp/sysroots/<target>/
+    
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/aclocal.m4 b/aclocal.m4
+index 2deda2f..91889c5 100644
+--- a/aclocal.m4
++++ b/aclocal.m4
+@@ -150,7 +150,7 @@ AC_MSG_RESULT($openssl_libdir)
+ if test "$openssl_libdir" != "none" ; then
+ 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
+-		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
++		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
+ 	elif test -f "$openssl_libdir/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
+ 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
+diff --git a/iked/configure b/iked/configure
+index 80ca9a3..f06c310 100755
+--- a/iked/configure
++++ b/iked/configure
+@@ -2143,7 +2143,7 @@ echo "$ac_t""$openssl_libdir" 1>&6
+ if test "$openssl_libdir" != "none" ; then
+ 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
+-		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
++		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
+ 	elif test -f "$openssl_libdir/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
+ 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
+diff --git a/lib/configure b/lib/configure
+index c7d057a..555c35f 100755
+--- a/lib/configure
++++ b/lib/configure
+@@ -2358,7 +2358,7 @@ echo "$ac_t""$openssl_libdir" 1>&6
+ if test "$openssl_libdir" != "none" ; then
+ 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
+-		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
++		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
+ 	elif test -f "$openssl_libdir/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
+ 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
+diff --git a/spmd/configure b/spmd/configure
+index 49d4039..bebb002 100755
+--- a/spmd/configure
++++ b/spmd/configure
+@@ -1963,7 +1963,7 @@ echo "$ac_t""$openssl_libdir" 1>&6
+ if test "$openssl_libdir" != "none" ; then
+ 	if test -f "$openssl_libdir/lib/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir/lib"
+-		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
++		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/usr/include/openssl"
+ 	elif test -f "$openssl_libdir/libcrypto.a"; then
+ 		LDFLAGS="$LDFLAGS -L$openssl_libdir";
+ 		CPPFLAGS="$CPPFLAGS -I$openssl_libdir/include"
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch
new file mode 100644
index 0000000..e555695
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-disable-hard-limit-timer.patch
@@ -0,0 +1,80 @@
+Disable hard-limit timer
+
+Since we only deliver racoon2 on linux platform and linux
+kernel implemented a timer for monitoring the hard-limit,
+disable the one realized on racoon2.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yong Zhang <yong.zhang@windriver.com>
+Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+
+---
+ iked/ikev2_child.c |   14 +++++++-------
+ 1 file changed, 7 insertions(+), 7 deletions(-)
+
+--- a/iked/ikev2_child.c
++++ b/iked/ikev2_child.c
+@@ -683,7 +683,7 @@ ikev2_create_child_responder_cont(struct
+ 	ikev2_add_ipsec_sa(child_sa, &child_sa->child_param,
+ 			   child_sa->peer_proposal, child_sa->my_proposal[1]);
+ 
+-	/* #if defined(__FreeBSD__) || defined(__NetBSD__) */
++#if defined(__FreeBSD__) || defined(__NetBSD__)
+ 	/* KAME does not generate hard lifetime expiration message */
+ 	/* start expiration timer */
+ 	{
+@@ -705,7 +705,7 @@ ikev2_create_child_responder_cont(struct
+ 			}
+ 		}
+ 	}
+-	/* #endif */
++#endif
+ 
+ 	TRACE((PLOGLOC, "ike_sa state %d\n", ike_sa->state));
+ 	switch (ike_sa->state) {
+@@ -1481,7 +1481,7 @@ ikev2_update_child(struct ikev2_child_sa
+ 
+ 	ikev2_child_state_set(child_sa, IKEV2_CHILD_STATE_MATURE);
+ 
+-	/* #if defined(__FreeBSD__) || defined(__NetBSD__) */
++#if defined(__FreeBSD__) || defined(__NetBSD__)
+ 	/* KAME does not generate hard lifetime expiration message */
+ 	/* start expiration timer */
+ 	{
+@@ -1505,7 +1505,7 @@ ikev2_update_child(struct ikev2_child_sa
+ 				goto abort_nomem;
+ 		}
+ 	}
+-	/* #endif */
++#endif
+ 
+       done:
+ 	if (new_my_proposal_list)
+@@ -1566,7 +1566,7 @@ ikev2_update_child(struct ikev2_child_sa
+ 	goto done;
+ }
+ 
+-/* #if defined(__FreeBSD__) || defined(__NetBSD__) */
++#if defined(__FreeBSD__) || defined(__NetBSD__)
+ /*
+  * timer callback for child_sa expiration
+  */
+@@ -1579,7 +1579,7 @@ ikev2_child_expire_callback(void *param)
+ 	SCHED_KILL(child_sa->timer);
+ 	ikev2_expire_child(child_sa);
+ }
+-/* #endif */
++#endif
+ 
+ int
+ ikev2_expired(struct sadb_request *req, struct rcpfk_msg *param)
+@@ -1707,7 +1707,7 @@ ikev2_expire_sa(struct ikev2_child_sa *c
+ 		}
+ 		return;
+ 	case 2:		/* hard expired */
+-#if 1
++#if 0
+ 		/*
+ 		 * hard expire is not used, due to difference of KAME and USAGI.
+ 		 * instead, use child_sa->timer
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch
new file mode 100644
index 0000000..5f853d9
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-configure-error.patch
@@ -0,0 +1,50 @@
+commit 26a49879f53b69a1aa91f5cd9678f7829f524845
+Author: Aws Ismail <aws.ismail@windriver.com>
+Date:   Thu Oct 25 13:43:17 2012 -0400
+
+Specify racoon2 submodules for configure
+
+Literally specify the submodules to configure
+instead of using the $SELECTED_MODULES variable
+lib, spmd, iked are always available. kinkd
+is selected if enabled and that depends
+on the availability of krb5 on the target.
+    
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/configure.in b/configure.in
+index 3f83241..5eaa7c5 100644
+--- a/configure.in
++++ b/configure.in
+@@ -49,6 +49,9 @@ if test x$prefix = x"NONE" ; then
+ 	ac_configure_args="$ac_configure_args --prefix='$prefix'"
+ fi
+ 
++AC_CONFIG_SUBDIRS(lib)
++AC_CONFIG_SUBDIRS(spmd)
++
+ dnl Enable/disable each module
+ AC_MSG_CHECKING(if --enable-iked option is specified)
+ AC_ARG_ENABLE(iked, [  --enable-iked           build iked [yes]],
+@@ -56,6 +59,7 @@ AC_ARG_ENABLE(iked, [  --enable-iked           build iked [yes]],
+ AC_MSG_RESULT($enable_iked)
+ if test x"$enable_iked" = xyes; then
+ 	SELECTED_MODULES="$SELECTED_MODULES iked"
++    AC_CONFIG_SUBDIRS(iked)
+ fi
+ AC_MSG_CHECKING(if --enable-kinkd option is specified)
+ AC_ARG_ENABLE(kinkd, [  --enable-kinkd          build kinkd [yes]],
+@@ -63,10 +67,8 @@ AC_ARG_ENABLE(kinkd, [  --enable-kinkd          build kinkd [yes]],
+ AC_MSG_RESULT($enable_kinkd)
+ if test x"$enable_kinkd" = xyes; then
+ 	SELECTED_MODULES="$SELECTED_MODULES kinkd"
++    AC_CONFIG_SUBDIRS(kinkd)
+ fi
+-dnl XXX Variables should not be used with AC_CONFIG_SUBDIRS on autoconf-2.5x,
+-dnl but multiple/selective AC_CONFIG_SUBDIRSes don't work on autoconf-2.13.
+-AC_CONFIG_SUBDIRS(lib $SELECTED_MODULES)
+ 
+ dnl Switch for startup mechanism.
+ AC_SUBST(startup_scripts)
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch
new file mode 100644
index 0000000..4758644
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-hardcoded-sysconfdir.patch
@@ -0,0 +1,281 @@
+From d71fb0712175b76304795bf90a125bc2b8d4c959 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 9 Jun 2017 08:55:36 +0800
+Subject: [PATCH] racoon2: fix hardcoded sysconfdir
+
+Replace the hardcoded path /etc/racoon2 with $sysconfdir
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ pskgen/Makefile.in         |  2 +-
+ pskgen/autogen.spmd.pwd.in |  8 ++++----
+ samples/child-down.in      |  2 +-
+ samples/child-rekey.in     |  2 +-
+ samples/child-up.in        |  2 +-
+ samples/ikesa-down.in      |  2 +-
+ samples/ikesa-rekey.in     |  2 +-
+ samples/ikesa-up.in        |  2 +-
+ samples/migration.in       |  2 +-
+ samples/ph1-down.in        |  2 +-
+ samples/ph1-up.in          |  2 +-
+ samples/racoon2.conf.in    | 18 +++++++++---------
+ samples/vals.conf.in       | 22 +++++++++++-----------
+ 13 files changed, 34 insertions(+), 34 deletions(-)
+
+diff --git a/pskgen/Makefile.in b/pskgen/Makefile.in
+index ff0d374..8d272df 100644
+--- a/pskgen/Makefile.in
++++ b/pskgen/Makefile.in
+@@ -20,7 +20,7 @@ install: all
+ 	$(INSTALL) -d $(DESTDIR)$(sbindir)
+ 	$(INSTALL_SCRIPT) $(PROG) $(DESTDIR)$(sbindir)
+ 	$(INSTALL_DATA) $(PROG).8 $(DESTDIR)$(mandir)/man8
+-	$(INSTALL) -d $(DESTDIR)$(prefix)/etc/racoon2
++	$(INSTALL) -d $(DESTDIR)$(sysconfdir)
+ 	sh ./autogen.spmd.pwd
+ 
+ depend:
+diff --git a/pskgen/autogen.spmd.pwd.in b/pskgen/autogen.spmd.pwd.in
+index ac6560c..a9981f3 100755
+--- a/pskgen/autogen.spmd.pwd.in
++++ b/pskgen/autogen.spmd.pwd.in
+@@ -1,11 +1,11 @@
+ #!/bin/sh
+ 
+-if [ -f @prefix@/etc/racoon2/spmd.pwd ]
++if [ -f @sysconfdir@/spmd.pwd ]
+ then
+-	mv @prefix@/etc/racoon2/spmd.pwd @prefix@/etc/racoon2/spmd.pwd.bak
++	mv @sysconfdir@/spmd.pwd @sysconfdir@/spmd.pwd.bak
+ fi
+ 
+-if [ -x @prefix@/sbin/pskgen ]
++if [ -x @sbindir@/pskgen ]
+ then
+-	@prefix@/sbin/pskgen -r -o @prefix@/etc/racoon2/spmd.pwd
++	@sbindir@/pskgen -r -o @sysconfdir@/spmd.pwd
+ fi
+diff --git a/samples/child-down.in b/samples/child-down.in
+index 01bae1f..8ac9061 100644
+--- a/samples/child-down.in
++++ b/samples/child-down.in
+@@ -3,7 +3,7 @@
+ # run scripts in the child-down.d directory when CHILD_SA is removed
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/child-rekey.in b/samples/child-rekey.in
+index a10d673..63f3db7 100644
+--- a/samples/child-rekey.in
++++ b/samples/child-rekey.in
+@@ -3,7 +3,7 @@
+ # run scripts in the child-rekey.d directory when CHILD_SA is rekeyed
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/child-up.in b/samples/child-up.in
+index d3e8c65..0cacd04 100644
+--- a/samples/child-up.in
++++ b/samples/child-up.in
+@@ -3,7 +3,7 @@
+ # run scripts in the child-up.d directory when CHILD_SA is established
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/ikesa-down.in b/samples/ikesa-down.in
+index 5a12092..492d8a6 100644
+--- a/samples/ikesa-down.in
++++ b/samples/ikesa-down.in
+@@ -3,7 +3,7 @@
+ # run scripts in the ikesa-down.d directory when IKE_SA is removed
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/ikesa-rekey.in b/samples/ikesa-rekey.in
+index fd9668c..0f54c50 100644
+--- a/samples/ikesa-rekey.in
++++ b/samples/ikesa-rekey.in
+@@ -3,7 +3,7 @@
+ # run scripts in the ikesa-rekey.d directory when IKE_SA is rekeyed 
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/ikesa-up.in b/samples/ikesa-up.in
+index 2d72f96..5ab3d51 100644
+--- a/samples/ikesa-up.in
++++ b/samples/ikesa-up.in
+@@ -3,7 +3,7 @@
+ # run scripts in the ikesa-up.d directory when IKE_SA is established
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/migration.in b/samples/migration.in
+index 0847eae..52f7980 100644
+--- a/samples/migration.in
++++ b/samples/migration.in
+@@ -3,7 +3,7 @@
+ # run scripts in the migration.d directory when MIP6 MIGRATE is issued
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/ph1-down.in b/samples/ph1-down.in
+index 9d2e305..a7a8b0a 100644
+--- a/samples/ph1-down.in
++++ b/samples/ph1-down.in
+@@ -3,7 +3,7 @@
+ # run scripts in the ph1-down.d directory when ISAKMP SA is removed
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/ph1-up.in b/samples/ph1-up.in
+index ab205fa..75e8cab 100644
+--- a/samples/ph1-up.in
++++ b/samples/ph1-up.in
+@@ -3,7 +3,7 @@
+ # run scripts in the ph1-up.d directory when ISAKMP SA is established
+ #
+ 
+-cd @prefix@/etc/racoon2/hook
++cd @sysconfdir@/hook
+ 
+ . ./functions
+ 
+diff --git a/samples/racoon2.conf.in b/samples/racoon2.conf.in
+index 5afda24..f365731 100644
+--- a/samples/racoon2.conf.in
++++ b/samples/racoon2.conf.in
+@@ -1,7 +1,7 @@
+ # $Id: racoon2.conf.in,v 1.34 2007/12/27 01:08:52 mk Exp $
+ 
+ ## Edit vals.conf for your environment
+-include "@prefix@/etc/racoon2/vals.conf";
++include "@sysconfdir@/vals.conf";
+ 
+ # interface info
+ interface
+@@ -17,7 +17,7 @@ interface
+ 	spmd {
+ 		unix "/var/run/racoon2/spmif";
+ 	};
+-	spmd_password "@prefix@/etc/racoon2/spmd.pwd";
++	spmd_password "@sysconfdir@/spmd.pwd";
+ };
+ 
+ # resolver info
+@@ -42,7 +42,7 @@ resolver
+ # Please don't touch this line (especially novice user);
+ #
+ 
+-include "@prefix@/etc/racoon2/default.conf";
++include "@sysconfdir@/default.conf";
+ 
+ #
+ # These are examples of configuration for each peer.
+@@ -50,21 +50,21 @@ include "@prefix@/etc/racoon2/default.conf";
+ # Uncomment following one 'include' line you want to use.
+ 
+ ## Transport mode IKEv2 or IKEv1
+-# include "@prefix@/etc/racoon2/transport_ike.conf";
++# include "@sysconfdir@/transport_ike.conf";
+ 
+ ## Tunnel mode IKEv2 or IKEv1 (initiator and responder)
+-# include "@prefix@/etc/racoon2/tunnel_ike.conf";
++# include "@sysconfdir@/tunnel_ike.conf";
+ 
+ ## Tunnel mode IKEv2 (responder; NAT-T support)
+ ## Enable this if you're a responder in global net and
+ ## the peer is an initiator behind NAT.
+-# include "@prefix@/etc/racoon2/tunnel_ike_natt.conf";
++# include "@sysconfdir@/tunnel_ike_natt.conf";
+ 
+ ## Transport mode KINK
+-# include "@prefix@/etc/racoon2/transport_kink.conf";
++# include "@sysconfdir@/transport_kink.conf";
+ 
+ ## Tunnel mode KINK
+-# include "@prefix@/etc/racoon2/tunnel_kink.conf";
++# include "@sysconfdir@/tunnel_kink.conf";
+ 
+ ## For local test
+-# include "@prefix@/etc/racoon2/local-test.conf";
++# include "@sysconfdir@/local-test.conf";
+diff --git a/samples/vals.conf.in b/samples/vals.conf.in
+index a0e8023..2fa7e4d 100644
+--- a/samples/vals.conf.in
++++ b/samples/vals.conf.in
+@@ -2,10 +2,10 @@
+ setval {
+ ### Directory Settings ###
+ 	# Preshared key file directory : specify if you want to use preshared keys
+-	PSKDIR		"@prefix@/etc/racoon2/psk";
++	PSKDIR		"@sysconfdir@/psk";
+ 
+ 	# Cert file directory : specify if you want to use certs
+-	CERTDIR		"@prefix@/etc/racoon2/cert";
++	CERTDIR		"@sysconfdir@/cert";
+ 
+ ### ID Settings ###
+ 	# your FQDN : specify if you want to use FQDN as your ID
+@@ -75,16 +75,16 @@ setval {
+ 
+ ### Scripts
+         ## IKEv2
+-	IKESAUP_SCR	"@prefix@/etc/racoon2/hook/ikesa-up";
+-	IKESADOWN_SCR	"@prefix@/etc/racoon2/hook/ikesa-down";
+-	CHILDUP_SCR	"@prefix@/etc/racoon2/hook/child-up";
+-	CHILDOWN_SCR	"@prefix@/etc/racoon2/hook/child-down";
+-	IKESAREKEY_SCR	"@prefix@/etc/racoon2/hook/ikesa-rekey";
+-	CHILDREKEY_SCR	"@prefix@/etc/racoon2/hook/child-rekey";
+-	MIGRATION_SCR	"@prefix@/etc/racoon2/hook/migration";
++	IKESAUP_SCR	"@sysconfdir@/hook/ikesa-up";
++	IKESADOWN_SCR	"@sysconfdir@/hook/ikesa-down";
++	CHILDUP_SCR	"@sysconfdir@/hook/child-up";
++	CHILDOWN_SCR	"@sysconfdir@/hook/child-down";
++	IKESAREKEY_SCR	"@sysconfdir@/hook/ikesa-rekey";
++	CHILDREKEY_SCR	"@sysconfdir@/hook/child-rekey";
++	MIGRATION_SCR	"@sysconfdir@/hook/migration";
+ 	## IKEv1
+-	PH1UP_SCR	"@prefix@/etc/racoon2/hook/ph1-up";
+-	PH1DOWN_SCR	"@prefix@/etc/racoon2/hook/ph1-down";
++	PH1UP_SCR	"@sysconfdir@/hook/ph1-up";
++	PH1DOWN_SCR	"@sysconfdir@/hook/ph1-down";
+ 
+ ### KINK ###
+ 	# Kerberos5 principal
+-- 
+1.9.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch
new file mode 100644
index 0000000..515241d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-rekeying-reply.patch
@@ -0,0 +1,28 @@
+racoon2: fix rekeying reply
+
+Why did node_a send the CREATE_CHILD_SA having the duplicated id?
+racoon2 has a counter for counting the number of transmitted request messages.
+You can find the counter named request_pending in the source code.
+This counter is counted up when a request message is sent,
+and it is counted down when the corresponding response message arrives.
+The problem is that racoon2 does not count up the counter mistakenly
+when sending the initial IKE_SA_INIT message in initiator mode.
+This makes the counter corrupt
+then the CREATE_CHILD_SA sent with an unexpected message id.
+
+Upstream-Status: Pending
+
+Signed-off-by: LiWang <li.wang@windriver.com>
+Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+
+--- racoon2-20090327c.org/iked/ikev2.c	2010-05-14 10:19:34.000000000 +0800
++++ racoon2-20090327c/iked/ikev2.c	2010-05-14 10:23:54.000000000 +0800
+@@ -923,6 +923,8 @@
+ 	if (!pkt)
+ 		goto fail;
+ 
++	++ike_sa->request_pending;
++
+ 	/* save message data for AUTH calculation */
+ 	if (ike_sa->my_first_message)
+ 		rc_vfree(ike_sa->my_first_message);
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch
new file mode 100644
index 0000000..2fca085
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-sadb_msg_seq-collision.patch
@@ -0,0 +1,41 @@
+Fix sadb_msg_seq collision
+
+It looks like there's a problem in SADB message sequence number
+handling.  As a temporary measure, initializing sadb_msg_seq with a
+large random number might help.
+
+Upstream-Status: Pending
+
+Signed-off-by: Yong Zhang <yong.zhang@windriver.com>
+Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+
+---
+ iked/ike_pfkey.c |   10 +++++++++-
+ 1 file changed, 9 insertions(+), 1 deletion(-)
+
+--- a/iked/ike_pfkey.c
++++ b/iked/ike_pfkey.c
+@@ -131,6 +131,7 @@
+ static int pfkey_socket;
+ static uint32_t sadb_msg_seq = 0x4000000;	/* arbitrary large number to avoid collision with kernel message */
+ 
++static struct sadb_request *sadb_find_by_seq(uint32_t seq);
+ static int sadb_getspi_callback(struct rcpfk_msg *param);
+ static int sadb_update_callback(struct rcpfk_msg *param);
+ static int sadb_get_callback(struct rcpfk_msg *param);
+@@ -207,7 +208,14 @@
+ uint32_t
+ sadb_new_seq(void)
+ {
+-	return ++sadb_msg_seq;
++	while (1) {
++		/* make sure there is no existing request having
++		   the same seq number */
++		if (!sadb_find_by_seq(++sadb_msg_seq))
++			break;
++	}
++
++	return sadb_msg_seq;
+ }
+ 
+ static void
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch
new file mode 100644
index 0000000..ed66c6f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fix-target-perl-path-to-generate-RPM.patch
@@ -0,0 +1,86 @@
+racoon2: fix target perl path to generate RPM
+
+The configuration tools passed the host perl's path as the path
+to the target perl. This is not correct when the host perl was
+not installed in '/usr/bin/perl'. So hardcode perl path here to
+generate RPM of racoon2.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Chunbo Luo <chunbo.luo@windriver.com>
+Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+
+---
+ configure    |   42 +-----------------------------------------
+ configure.in |    2 +-
+ 2 files changed, 2 insertions(+), 42 deletions(-)
+
+diff --git a/configure b/configure
+index f39cb06..25ac906 100755
+--- a/configure
++++ b/configure
+@@ -796,47 +796,7 @@ else
+ 		startup_scripts=none
+ fi
+ 
+-for ac_prog in perl
+-do
+-# Extract the first word of "$ac_prog", so it can be a program name with args.
+-set dummy $ac_prog; ac_word=$2
+-echo $ac_n "checking for $ac_word""... $ac_c" 1>&6
+-echo "configure:805: checking for $ac_word" >&5
+-if eval "test \"`echo '$''{'ac_cv_path_perl_bindir'+set}'`\" = set"; then
+-  echo $ac_n "(cached) $ac_c" 1>&6
+-else
+-  case "$perl_bindir" in
+-  /*)
+-  ac_cv_path_perl_bindir="$perl_bindir" # Let the user override the test with a path.
+-  ;;
+-  ?:/*)			 
+-  ac_cv_path_perl_bindir="$perl_bindir" # Let the user override the test with a dos path.
+-  ;;
+-  *)
+-  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS=":"
+-  ac_dummy="$PATH"
+-  for ac_dir in $ac_dummy; do 
+-    test -z "$ac_dir" && ac_dir=.
+-    if test -f $ac_dir/$ac_word; then
+-      ac_cv_path_perl_bindir="$ac_dir/$ac_word"
+-      break
+-    fi
+-  done
+-  IFS="$ac_save_ifs"
+-  ;;
+-esac
+-fi
+-perl_bindir="$ac_cv_path_perl_bindir"
+-if test -n "$perl_bindir"; then
+-  echo "$ac_t""$perl_bindir" 1>&6
+-else
+-  echo "$ac_t""no" 1>&6
+-fi
+-
+-test -n "$perl_bindir" && break
+-done
+-test -n "$perl_bindir" || perl_bindir="missing_perl"
+-
++perl_bindir='/usr/bin/perl'
+ 
+ 
+ trap '' 1 2 15
+diff --git a/configure.in b/configure.in
+index a7ede4e..3f83241 100644
+--- a/configure.in
++++ b/configure.in
+@@ -89,7 +89,7 @@ else
+ fi
+ 
+ dnl perl_bindir
+-AC_PATH_PROGS(perl_bindir, perl, missing_perl)
++perl_bindir='/usr/bin/perl'
+ AC_SUBST(perl_bindir)
+ 
+ AC_OUTPUT([Makefile samples/Makefile samples/racoon2.conf samples/vals.conf \
+-- 
+1.6.4
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch
new file mode 100644
index 0000000..a013199
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-fwrite-return-value.patch
@@ -0,0 +1,34 @@
+racoon2: fix compile error for MIPS
+
+Correct compile error with fortify-source.
+When compiling with FORTIFY_SOURCE specified,
+the racoon2 package fails.  The root cause is a 
+macro introduces a call to fwrite() where the return code
+isn't checked.  This patch moves the macro to an earlier
+spot where this problem is corrected.
+
+Upstream-Status: Pending
+
+Signed-off-by: Greg Moffatt <greg.moffatt@windriver.com>
+Signed-of-by: Aws Ismail <aws.ismail@windriver.com>
+
+---
+ cftoken.l |    7 +++++++
+ 1 file changed, 7 insertions(+)
+
+--- a/lib/cftoken.l
++++ b/lib/cftoken.l
+@@ -84,6 +84,13 @@
+ #define DP
+ #endif
+ 
++#ifndef ECHO
++/* This used to be an fputs(), but since the string might contain NUL's,
++ * we now use fwrite().
++ */
++#define ECHO do { if (fwrite( yytext, yyleng, 1, yyout )) {} } while (0)
++#endif
++
+ 	/* the include files stack */
+ #define CF_INCLUDE_DEPTH 10
+ static struct rcf_include_stack {
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch
new file mode 100644
index 0000000..10182f3
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-initscript.patch
@@ -0,0 +1,40 @@
+Source /etc/init.d/functions and add sub-command status
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+diff --git a/samples/init.d-iked.in b/samples/init.d-iked.in
+index 4e65b94..ff5f355 100644
+--- a/samples/init.d-iked.in
++++ b/samples/init.d-iked.in
+@@ -3,6 +3,9 @@
+ # iked startup script
+ #
+ 
++# Source function library.
++. /etc/init.d/functions
++
+ prefix=@prefix@
+ exec_prefix=@exec_prefix@
+ 
+@@ -25,6 +28,10 @@ stop)
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
+@@ -35,7 +42,7 @@ reload)
+ 	echo "."
+ 	;;
+ *)
+-	echo "usage: $0 {start|stop|restart|reload}"
++	echo "usage: $0 {start|stop|status|restart|reload}"
+ 	exit 1
+ 	;;
+ esac
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch
new file mode 100644
index 0000000..0c57c65
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-iked-needs-libcrypto.patch
@@ -0,0 +1,34 @@
+iked needs libcrypto
+
+Add libcrypto to the list of LIBS for iked to avoid undefined reference
+errors during compilation.
+
+If add libcrypto to the list of LDFLAGS, the result is same as "gcc  -lcrypto
+-o eaytest eaytest.o crypto_openssl.o str2val.o", since the linker searchs an
+archive only once, at the location where it is specified on the command line,
+crypto_openssl.o will report undefined symbol which is defined in libcrypto
+
+Upstream-Status: Pending
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+Signed-off-by: Roy.Li <rongqing.li@windriver.com> 
+---
+ iked/Makefile.in |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/iked/Makefile.in b/iked/Makefile.in
+index 57134f3..5a9160c 100644
+--- a/iked/Makefile.in
++++ b/iked/Makefile.in
+@@ -56,7 +56,7 @@ OBJS += @CRYPTOBJS@
+ TESTSRC = eaytest.c
+ TESTOBJ = $(TESTSRC:%.c=%.o)
+ 
+-LIBS = @LIBS@
++LIBS = @LIBS@ -lcrypto
+ LIBRARIES = @LIBRARIES@
+ 
+ MAN = iked.8
+-- 
+1.7.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch
new file mode 100644
index 0000000..69fe02d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-kinkd-initscript.patch
@@ -0,0 +1,40 @@
+Source /etc/init.d/functions and add sub-command status
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+diff --git a/samples/init.d-kinkd.in b/samples/init.d-kinkd.in
+index 1813b39..71d0855 100644
+--- a/samples/init.d-kinkd.in
++++ b/samples/init.d-kinkd.in
+@@ -3,6 +3,9 @@
+ # kinkd start up script
+ #
+ 
++# Source function library.
++. /etc/init.d/functions
++
+ prefix=@prefix@
+ exec_prefix=@exec_prefix@
+ 
+@@ -25,6 +28,10 @@ stop)
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
+@@ -35,7 +42,7 @@ reload)
+ 	echo "."
+ 	;;
+ *)
+-	echo "usage: $0 {start|stop|restart|reload}"
++	echo "usage: $0 {start|stop|status|restart|reload}"
+ 	exit 1
+ 	;;
+ esac
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch
new file mode 100644
index 0000000..fe00ba2
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-reenable-the-ipv6-check.patch
@@ -0,0 +1,65 @@
+[PATCH] reenable the ipv6 check
+
+The patch racoon2-configure.in-remove-redundant-macros.patch made ipv6 off
+for iked (RC_IF_IPV6_ENABLE is removed), since the autotools does not autocheck
+--enable-ipv6, and copy ipv6 checking codes from lib/configure.in to
+iked/configure.in to reenable it
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ iked/configure.in | 37 +++++++++++++++++++++++++++++++++++++
+ 1 file changed, 37 insertions(+)
+
+diff --git a/iked/configure.in b/iked/configure.in
+index 6b9352e..c155536 100644
+--- a/iked/configure.in
++++ b/iked/configure.in
+@@ -187,6 +187,43 @@ AC_TRY_COMPILE([],
+ 	 AC_DEFINE(HAVE_FUNC_MACRO, 1, [define if __func__ macro is available])
+ 	], [AC_MSG_RESULT(no)])
+ 
++
++dnl check if ipv6 is available.
++AC_MSG_CHECKING(if ipv6 is available)
++AC_ARG_ENABLE(ipv6,
++[  --enable-ipv6           enable ipv6 (with ipv4) support
++  --disable-ipv6          disable ipv6 support],
++        [ case "$enableval" in
++          no)
++               AC_MSG_RESULT(no)
++               ipv6=no
++               ;;
++          *)   AC_MSG_RESULT(yes)
++               AC_DEFINE(INET6, 1, [enable ipv6])
++               ipv6=yes
++               ;;
++          esac ],
++  AC_TRY_RUN([ /* AF_INET6 avalable check */
++#include <sys/types.h>
++#include <sys/socket.h>
++main()
++{
++  exit(0);
++ if (socket(AF_INET6, SOCK_STREAM, 0) < 0)
++   exit(1);
++ else
++   exit(0);
++}
++],
++  AC_MSG_RESULT(yes)
++  AC_DEFINE(INET6, 1 , [enable ipv6])
++  ipv6=yes,
++  AC_MSG_RESULT(no)
++  ipv6=no,
++  AC_MSG_RESULT(no)
++  ipv6=no
++))
++
+ if test "$ipv6" = "yes"; then
+     AC_MSG_CHECKING(for advanced API support)
+     AC_CACHE_VAL(racoon_cv_advapi, [dnl
+-- 
+1.9.1
+
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch
new file mode 100644
index 0000000..7718235
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-remove-deprecated-do-clause.patch
@@ -0,0 +1,19 @@
+Remove deprecated do clause which is not supported by perl 5 any more.
+
+Upstream-Status: Pending
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
+--- racoon2-20100526a/pskgen/pskgen.in.orig	2014-01-27 16:19:19.028054860 +0800
++++ racoon2-20100526a/pskgen/pskgen.in	2014-01-27 16:19:47.707748768 +0800
+@@ -59,8 +59,8 @@
+ 	exit 0;
+ }
+ 
+-require 'getopts.pl';
+-do Getopts('rs:o:di:he:d');
++use Getopt::Std;
++getopts('rs:o:di:he:d');
+ $output = '-';
+ $output = $opt_o if ($opt_o);
+ 
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch
new file mode 100644
index 0000000..1c3b1ee
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-removed-conflicting-prototypes.patch
@@ -0,0 +1,51 @@
+Removed conflicting prototypes
+
+Flex 2.5.36 chaned the prototype of yyget_leng(). Portback upstream
+patch to fix the compiling errors:
+ 
+    <stdout>:1414:11: error: conflicting types for 'yyget_leng'
+    cftoken.l:56:12: note: previous declaration of 'yyget_leng' was \
+    here extern int yyget_leng (void);
+
+Upstream-Status: Backport
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+===================================================================
+RCS file: /RACOON2/anoncvs/racoon2/lib/cftoken.l,v
+retrieving revision 1.53
+retrieving revision 1.54
+diff -c -p -r1.53 -r1.54
+*** racoon2/lib/cftoken.l	2009/03/20 21:57:16	1.53
+--- racoon2/lib/cftoken.l	2013/07/30 07:04:51	1.54
+***************
+*** 1,4 ****
+! /* $Id: cftoken.l,v 1.53 2009/03/20 21:57:16 mk Exp $ */
+  /*
+   * Copyright (C) 2004 WIDE Project.
+   * All rights reserved.
+--- 1,4 ----
+! /* $Id: cftoken.l,v 1.54 2013/07/30 07:04:51 kamada Exp $ */
+  /*
+   * Copyright (C) 2004 WIDE Project.
+   * All rights reserved.
+***************
+*** 50,67 ****
+  
+  #include "safefile.h"
+  
+- extern int yyget_lineno (void);
+- extern FILE *yyget_in (void);
+- extern FILE *yyget_out (void);
+- extern int yyget_leng (void);
+- extern char *yyget_text (void);
+- extern void yyset_lineno (int);
+- extern void yyset_in (FILE *);
+- extern void yyset_out (FILE *);
+- extern int yyget_debug (void);
+- extern void yyset_debug (int);
+- extern int yylex_destroy (void);
+- 
+  	/* avoid gcc error */
+  #define YY_NO_INPUT 1
+  
+--- 50,55 ----
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch
new file mode 100644
index 0000000..ab2b0e0
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/racoon2-spmd-initscript.patch
@@ -0,0 +1,39 @@
+Source /etc/init.d/functions and add sub-command status
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+diff --git a/samples/init.d-spmd.in b/samples/init.d-spmd.in
+index d38b825..624f22d 100644
+--- a/samples/init.d-spmd.in
++++ b/samples/init.d-spmd.in
+@@ -1,5 +1,8 @@
+ #! /bin/sh
+ 
++# Source function library.
++. /etc/init.d/functions
++
+ prefix=@prefix@
+ exec_prefix=@exec_prefix@
+ 
+@@ -27,6 +30,10 @@ case "$1" in
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
+@@ -34,7 +41,7 @@ case "$1" in
+   *)
+ 	N=/etc/init.d/$NAME
+ 	# echo "Usage: $N {start|stop|restart|reload|force-reload}" >&2
+-	echo "Usage: $N {start|stop|restart|force-reload}" >&2
++	echo "Usage: $N {start|stop|status|restart|force-reload}" >&2
+ 	exit 1
+ 	;;
+ esac
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/spmd.service b/meta-cgl-common/recipes-cgl/racoon2/racoon2/spmd.service
new file mode 100644
index 0000000..22e7acb
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/spmd.service
@@ -0,0 +1,12 @@
+[Unit]
+Description=Manages IPsec Security Policy for racoon2
+After=syslog.target network.target
+
+[Service]
+Type=forking
+PIDFile=/var/run/spmd.pid
+ExecStart=@SBINDIR@/spmd
+ExecStop=@SBINDIR@/spmd -k
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2/volatiles.99_racoon2 b/meta-cgl-common/recipes-cgl/racoon2/racoon2/volatiles.99_racoon2
new file mode 100644
index 0000000..8c82176
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2/volatiles.99_racoon2
@@ -0,0 +1 @@
+d root root 0700 /var/run/racoon2 none
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb b/meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb
new file mode 100644
index 0000000..ada4e24
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2_20100526a.bb
@@ -0,0 +1,104 @@
+SUMMARY = "An implementation of key management system for IPsec"
+DESCRIPTION = "The Racoon2 project is a joint effort which provides an \
+implementation of key management system for IPsec. The implementation is \
+called Racoon2, a successor of Racoon, which was developed by the KAME \
+project. It supports IKEv1, IKEv2, and KINK protocols. It works on \
+FreeBSD, NetBSD, Linux, and Mac OS X."
+
+HOMEPAGE = "http://ftp.racoon2.wide.ad.jp/pub/racoon2/"
+
+DEPENDS = "${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'krb5', '', d)} libpcap openssl bison flex-native util-linux"
+RDEPENDS_${PN} += "perl"
+
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=99a60756441098855c538fe86f859afe"
+
+SRC_URI = "http://ftp.racoon2.wide.ad.jp/pub/${PN}/${BPN}-${PV}.tgz \
+           file://racoon2-configure-memcmp.patch \
+           file://racoon2-correct-openssl-include-path.patch \
+           file://racoon2-DESTDIR.patch \
+           file://racoon2-disable-hard-limit-timer.patch \
+           file://racoon2-fix-rekeying-reply.patch \
+           file://racoon2-fix-sadb_msg_seq-collision.patch \
+           file://racoon2-fix-target-perl-path-to-generate-RPM.patch \
+           file://racoon2-fwrite-return-value.patch \
+           file://racoon2-fix-configure-error.patch \
+           file://racoon2-Add-Value-to-HAVE_NSSWITCH_CONF.patch \
+           file://racoon2-Remove-INSTALL_OPTS.patch \
+           file://racoon2-iked-needs-libcrypto.patch \
+           file://racoon2-removed-conflicting-prototypes.patch \
+           file://racoon2-iked-initscript.patch \
+           file://racoon2-kinkd-initscript.patch \
+           file://racoon2-spmd-initscript.patch \
+           file://racoon2-remove-deprecated-do-clause.patch \
+           file://racoon2-configure.in-remove-redundant-macros.patch \
+           file://racoon2-reenable-the-ipv6-check.patch \
+           file://racoon2-fix-hardcoded-sysconfdir.patch \
+           file://racoon2-configure-autoheader.patch \
+           file://volatiles.99_racoon2 \
+           file://iked.service \
+           file://spmd.service \
+          "
+
+SRC_URI[md5sum] = "2fa33abff1ccd6fc22876a23db77aaa8"
+SRC_URI[sha256sum] = "f23773e4d97cec823ec634085b5e60a7884a13467ff1bffc17daac14d02f9caa"
+
+inherit autotools-brokensep update-rc.d systemd
+
+EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN} \
+                 --disable-pedant \
+                 --enable-pcap=yes \
+                 --enable-iked=yes \
+                 ${@bb.utils.contains('DISTRO_FEATURES', 'krb5', '--enable-kinkd', '--disable-kinkd', d)} \
+                 ${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', '--enable-ipv6', '--disable-ipv6', d)} \
+                 --with-openssl-libdir=${STAGING_DIR_TARGET} \
+                 --with-kernel-build-dir=${STAGING_INCDIR}"
+
+
+do_install_append() {
+    install -d -m 0755 ${D}${sysconfdir}/init.d/
+    cp -rfa ${D}${sysconfdir}/${BPN}/init.d/* ${D}${sysconfdir}/init.d/
+
+    rmdir ${D}${localstatedir}/run/racoon2 ${D}${localstatedir}/run ${D}${localstatedir}
+    install -d ${D}${sysconfdir}/default/volatiles
+    install -m 0700 ${WORKDIR}/volatiles.99_racoon2 ${D}${sysconfdir}/default/volatiles/99_racoon2
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'false', 'true', d)}; then
+        rm -f ${D}${sysconfdir}/init.d/kinkd ${D}${sysconfdir}/${BPN}/init.d/kinkd \
+        ${D}${sysconfdir}/${BPN}/transport_kink.conf.sample ${D}${sysconfdir}/${BPN}/tunnel_kink.conf.sample
+    fi
+
+    # Install systemd service files
+    install -d ${D}${systemd_system_unitdir}
+    install -m 0644 ${WORKDIR}/iked.service ${D}${systemd_system_unitdir}
+    install -m 0644 ${WORKDIR}/spmd.service ${D}${systemd_system_unitdir}
+    sed -i -e 's#@SBINDIR@#${sbindir}#g' -e 's,@BASE_BINDIR@,${base_bindir},g' \
+        ${D}${systemd_system_unitdir}/*.service
+
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        echo "d /var/run/racoon2 0700 root root -" \
+        > ${D}${sysconfdir}/tmpfiles.d/${BPN}.conf
+    fi
+}
+
+INITSCRIPT_PACKAGES = "${PN} ${PN}-iked ${PN}-${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'kinkd', '', d)}"
+INITSCRIPT_NAME_${PN} = "spmd"
+INITSCRIPT_PARAMS_${PN} = "remove"
+INITSCRIPT_NAME_${PN}-iked = "iked"
+INITSCRIPT_PARAMS_${PN}-iked = "remove"
+INITSCRIPT_NAME_${PN}-kinkd = "kinkd"
+INITSCRIPT_PARAMS_${PN}-kinkd= "remove"
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "spmd.service iked.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+
+pkg_postinst_${PN} () {
+    if [ -z "$D" ]; then
+        if [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
+            ${sysconfdir}/init.d/populate-volatile.sh update
+        fi
+    fi
+}
+
-- 
2.7.4


