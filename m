Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A390E00D36; Wed,  1 Nov 2017 04:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E4BEE00D30
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 04:59:08 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id p75so4311329wmg.3
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 04:59:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=nDfeL72OT4fMfWR9MDYgTELv30N4Uqsf2oKUPw7khTg=;
	b=EZqv1WciAEcl6MHPARNjAIpeSXbnpNhjgglkheoO+Bb8rhGSdeohJCcSXRSkWykZEN
	pTOE6nAuWjiCVW7PbSprtqwNZ4aPGpoebQdwzG7dKAw4Q2Lvzc3n2Ywb2uadjxx4xnsk
	VMPFwLsXeBxdbLR5hzK/sCw7E9Kshi7pLnfJz42vyEK5pdldliA6qrEm9dA/d0ykbB7W
	k01HVIY7FuCxNs5Q+i2qfUunUfnhe6xNOt+0eMRpmgdSDsLOd87SuX27eGtVERI6u9B7
	Vo7s2xm5iS/+v0r8wXwSSSHfvyjT6HSbjGn+Pdn+X9vQ3VBMdpcEo6kgH1rISHB2MJ/I
	Sk9g==
X-Gm-Message-State: AMCzsaV3I84yL6CfKc6kiXU4u1HGVK0bENdnnD7dYrSdDIaSxZ3EQNE8
	JL6H4frFLDXeEFKI9JlpQAyledB5
X-Google-Smtp-Source: ABhQp+S8JuPWz6vDRYAxAtyHgRYDvL2sb+B7+ODM4wv6gYwLnTYfZXYKLiGHOA0DdcKar/78WJwOzA==
X-Received: by 10.80.217.194 with SMTP id x2mr88271edj.258.1509537547628;
	Wed, 01 Nov 2017 04:59:07 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id c7sm1070208edc.26.2017.11.01.04.59.06
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Nov 2017 04:59:06 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Wed,  1 Nov 2017 11:59:06 +0000
Message-Id: <20171101115906.6423-1-git@andred.net>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
Subject: [meta-security][PATCH] trousers: allow overriding localstatedir mandir sysconfdir
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
X-List-Received-Date: Wed, 01 Nov 2017 11:59:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

It is currently impossible to override localstatedir,
mandir and sysconfdir during ./configure, because they
are being overriden unconditionally.

With this patch it is now possible to set above
locations as needed.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 ...-override-localstatedir-mandir-sysconfdir.patch | 68 ++++++++++++++++++++++
 meta-tpm/recipes-tpm/trousers/trousers_git.bb      |  1 +
 2 files changed, 69 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch

diff --git a/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch b/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
new file mode 100644
index 0000000..7b3cc77
--- /dev/null
+++ b/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
@@ -0,0 +1,68 @@
+From 3396fc7a184293c23135161f034802062f7f3816 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <adraszik@tycoint.com>
+Date: Wed, 1 Nov 2017 11:41:48 +0000
+Subject: [PATCH] build: don't override --localstatedir --mandir --sysconfdir
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+It is currently impossible to override localstatedir,
+mandir and sysconfdir during ./configure, because they
+are being overriden unconditionally because of they
+way trousers is built using rpmbuild.
+
+If they need massaging for rpmbuild, the values should
+be specified inside the spec file, not in ./configure
+and thereby overriding user-requested values.
+
+With this patch it is now possible to set above
+locations as needed. The .spec file is being modified
+as well so as to restore previous behaviour.
+
+Signed-off-by: André Draszik <adraszik@tycoint.com>
+---
+Upstream-Status: Submitted [https://sourceforge.net/p/trousers/mailman/message/36099290/]
+Signed-off-by: André Draszik <adraszik@tycoint.com>
+ configure.ac          | 11 ++---------
+ dist/trousers.spec.in |  2 +-
+ 2 files changed, 3 insertions(+), 10 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index b9626af..7fe5f8e 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -376,16 +376,9 @@ CFLAGS="$CFLAGS -I../include \
+ KERNEL_VERSION=`uname -r`
+ AC_SUBST(CFLAGS)
+ 
+-# When we build the rpms, prefix will be /usr. This'll do some things that make sense,
+-# like put our sbin stuff in /usr/sbin and our library in /usr/lib. It'll do some other
+-# things that don't make sense like put our config file in /usr/etc. So, I'll just hack
+-# it here. If the --prefix option isn't specified during configure, let it all go to
++# If the --prefix option isn't specified during configure, let it all go to
+ # /usr/local, even /usr/local/etc. :-P
+-if test x"${prefix}" = x"/usr"; then
+-	sysconfdir="/etc"
+-	localstatedir="/var"
+-	mandir="/usr/share/man"
+-elif test x"${prefix}" = x"NONE"; then
++if test x"${prefix}" = x"NONE"; then
+ 	localstatedir="/usr/local/var"
+ fi
+ 
+diff --git a/dist/trousers.spec.in b/dist/trousers.spec.in
+index b298b0e..10ef178 100644
+--- a/dist/trousers.spec.in
++++ b/dist/trousers.spec.in
+@@ -45,7 +45,7 @@ applications.
+ 
+ %build
+ %{?arch64:export PKG_CONFIG_PATH=%{pkgconfig_path}:$PKG_CONFIG_PATH}
+-./configure --prefix=/usr --libdir=%{_libdir}
++./configure --prefix=/usr --libdir=%{_libdir} --sysconfdir=/etc --localstatedir=/var --mandir=/usr/share/man
+ make
+ 
+ %clean
+-- 
+2.15.0.rc1
+
diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index 352374c..e9f838e 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -15,6 +15,7 @@ SRC_URI = " \
     	file://trousers-udev.rules \
     	file://tcsd.service \
         file://get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch \
+        file://0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch \
     	"
 
 S = "${WORKDIR}/git"
-- 
2.15.0.rc1


