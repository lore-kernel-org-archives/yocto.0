Return-Path: <kevstras@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5514E01482
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 14:51:00 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so3952945pbb.35
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 14:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=VQmK2zG4DWGBDuAtWFNJRaVoSae7Agx067Qpqrr19nI=;
	b=uWmiiTpgHXu/zPfO5/7PzZIHcwNgDa9nU8U/mIvig71LRzxOMBtEmfrBKHS55toM5S
	eaPyaXMKIVZPZZVBjUCnfnVPmexFSpfs73FXPdKZyfIW57t9pGiLrw+CkfE1ZnmYawze
	MnHzg3B2dSRUkMAx6kl9icKMv3HxDpk2OurGnFZj438iKj3ufTxrR8Hv/RNpVbTwAJSV
	1XPIumDych8tYyycSfVou5tf9MRCXWBhbSVvlt+bGFGcjhMojJXDajgWcX9VXw64FmUU
	Qrl6EX1llNmNreMY4or3doI0NlVWRrQuU3rAoxa1MipDItCfHYTeAFkeyBxkTUe5L0gG
	6fRQ==
Received: by 10.66.79.195 with SMTP id l3mr23469634pax.33.1347313860492;
	Mon, 10 Sep 2012 14:51:00 -0700 (PDT)
Received: from satellite.hsd1.or.comcast.net
	(c-71-237-182-115.hsd1.or.comcast.net. [71.237.182.115])
	by mx.google.com with ESMTPS id jz10sm8707662pbc.8.2012.09.10.14.50.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 10 Sep 2012 14:50:59 -0700 (PDT)
From: Kevin Strasser <kevstras@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Sep 2012 14:50:10 -0700
Message-Id: <04fa9227d221efb17c22fb301ede5af31777247c.1347312790.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <05bc846eb9ec84e5094832dcac903fef085fd9d8.1347312790.git.kevin.strasser@linux.intel.com>
References: <05bc846eb9ec84e5094832dcac903fef085fd9d8.1347312790.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1347312790.git.kevin.strasser@linux.intel.com>
References: <cover.1347312790.git.kevin.strasser@linux.intel.com>
X-Mailman-Approved-At: Mon, 10 Sep 2012 14:53:55 -0700
Subject: [meta-baryon][PATCH 2/2] proftpd: update package to 1.3.4b
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
X-List-Received-Date: Mon, 10 Sep 2012 21:51:00 -0000

The contrib directry now contains its own Makefile which is
used during installation. It was required to pass DESTDIR through
when it gets called from the base Makefile.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/proftpd/files/contrib.patch       |   38 ++++++++++++++++++++
 .../{proftpd_1.3.3c.bb => proftpd_1.3.4b.bb}       |    7 ++--
 2 files changed, 42 insertions(+), 3 deletions(-)
 create mode 100644 recipes-extended/proftpd/files/contrib.patch
 rename recipes-extended/proftpd/{proftpd_1.3.3c.bb => proftpd_1.3.4b.bb} (82%)

diff --git a/recipes-extended/proftpd/files/contrib.patch b/recipes-extended/proftpd/files/contrib.patch
new file mode 100644
index 0000000..76b9a5c
--- /dev/null
+++ b/recipes-extended/proftpd/files/contrib.patch
@@ -0,0 +1,38 @@
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
+---
+ Makefile.in         |    2 +-
+ contrib/Makefile.in |    6 +++---
+ 2 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 5b2e683..ee72fe1 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -120,7 +120,7 @@ install-modules: $(DESTDIR)$(libexecdir) $(DESTDIR)$(sysconfdir)
+ 	test -z "$(SHARED_MODULE_OBJS)" -a -z "$(SHARED_MODULE_DIRS)" -a -z "$(STATIC_MODULE_DIRS)" || (cd modules/ && $(MAKE) install)
+ 
+ install-utils: $(DESTDIR)$(sbindir) $(DESTDIR)$(bindir)
+-	cd contrib/ && $(MAKE) install-utils
++	cd contrib/ && $(MAKE) DESTDIR=${DESTDIR} install-utils
+ 	$(INSTALL_BIN)  ftpcount $(DESTDIR)$(bindir)/ftpcount
+ 	$(INSTALL_BIN)  ftpdctl  $(DESTDIR)$(bindir)/ftpdctl
+ 	$(INSTALL_SBIN) ftpscrub $(DESTDIR)$(sbindir)/ftpscrub
+diff --git a/contrib/Makefile.in b/contrib/Makefile.in
+index 5bcc038..51d248c 100644
+--- a/contrib/Makefile.in
++++ b/contrib/Makefile.in
+@@ -18,6 +18,6 @@ Makefile: Makefile.in ../config.status
+ 	cd ../ && ./config.status
+ 
+ install-utils:
+-	$(INSTALL) -o $(INSTALL_USER) -g $(INSTALL_GROUP) -m 0755 ftpasswd $(DESTDIR)$(bindir)/ftpasswd
+-	$(INSTALL) -o $(INSTALL_USER) -g $(INSTALL_GROUP) -m 0755 ftpmail $(DESTDIR)$(bindir)/ftpmail
+-	$(INSTALL) -o $(INSTALL_USER) -g $(INSTALL_GROUP) -m 0755 ftpquota $(DESTDIR)$(bindir)/ftpquota
++	$(INSTALL) -m 0755 ftpasswd $(DESTDIR)$(bindir)/ftpasswd
++	$(INSTALL) -m 0755 ftpmail $(DESTDIR)$(bindir)/ftpmail
++	$(INSTALL) -m 0755 ftpquota $(DESTDIR)$(bindir)/ftpquota
+-- 
+1.7.9.5
+
diff --git a/recipes-extended/proftpd/proftpd_1.3.3c.bb b/recipes-extended/proftpd/proftpd_1.3.4b.bb
similarity index 82%
rename from recipes-extended/proftpd/proftpd_1.3.3c.bb
rename to recipes-extended/proftpd/proftpd_1.3.4b.bb
index 8de80fc..b7e201b 100644
--- a/recipes-extended/proftpd/proftpd_1.3.3c.bb
+++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
@@ -2,17 +2,18 @@ DESCRIPTION = "Secure ftp daemon"
 SECTION = "console/network"
 
 LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=fdedcde17b1ffd967d86c20fe0ac158a"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fb0d1484d11915fa88a6a7702f1dc184"
 
 PR = "r0"
 
 SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${PN}-${PV}.tar.gz \
 	file://make.patch \
 	file://basic.conf.patch \
+	file://contrib.patch \
 	"
 
-SRC_URI[md5sum] = "4f2c554d6273b8145095837913ba9e5d"
-SRC_URI[sha256sum] = "44be095ed063df93278928cf665ad7b9b38e2c8d0cca97fb51307ec3a390a591"
+SRC_URI[md5sum] = "0871e0b93c9c3c88ca950b6d9a04aed2"
+SRC_URI[sha256sum] = "9f659585cea90fc6af34a0ffae4a90e4ed37abe92dbd9b6c311f95a436c961cb"
 
 EXTRA_OECONF = "ac_cv_func_setpgrp_void=yes ac_cv_func_setgrent_void=yes --disable-cap"
 LDFLAGS += "-Llib"
-- 
1.7.9.5


