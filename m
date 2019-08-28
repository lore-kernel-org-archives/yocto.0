Return-Path: <mcfrisk@kapsi.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28CBBE00D33; Wed, 28 Aug 2019 09:10:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [91.232.154.25 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1793 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Aug 2019 09:10:18 PDT
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE96E00C7D
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 09:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:References
	:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=3pYYAPjaFV+HVNE1+iwH73GaU/dnr/SYUoeOFeP6ooo=;
	b=bVeAtzEUmGK58HwV1Wmggqaq2V
	lp2QzXrRC0KtuNK1zXg8PKAbGzjEfOgNoJ0c+B2rolIZnWA3lzgyZPcdfQgIFaSERIs5IkbdiKJow
	HdoBrkvGmjCzzWwA1fpivpZuz360qh+EhV9AGXNDmflBmmg3naHJQyAH23A5vtwbeOUPsRVnNzmet
	Cs79cMolYYfIfxvSxi5PSCr/MK2iZ7FbzaTnp9ms1Y+hiyPXj3y0lnS8mRrzZADcMYysnIbn5A843
	4BQz2N2SEq/4fTuHrJXjRnJQ5pxyD8iRTmwegS1CslPso70L0YioT84YR+xbKNwpVOOAmRq346hgT
	dZ0aKEeQ==;
Received: from kapsi.fi ([91.232.154.11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89) (envelope-from <mcfrisk@kapsi.fi>)
	id 1i2zuH-00041i-Fz; Wed, 28 Aug 2019 18:30:45 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.84_2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1i2zu7-00082I-7n; Wed, 28 Aug 2019 18:30:35 +0300
From: Mikko Rapeli <mikko.rapeli@bmw.de>
To: yocto@yoctoproject.org
Date: Wed, 28 Aug 2019 18:30:22 +0300
Message-Id: <1567006222-23574-2-git-send-email-mikko.rapeli@bmw.de>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de>
References: <1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de>
MIME-Version: 1.0
X-Rspam-Score: 1.2 (+)
X-Rspam-Report: Action: no action Symbol: ARC_NA(0.00)
	Symbol: DMARC_POLICY_SOFTFAIL(0.10) Symbol: R_SPF_NEUTRAL(0.00)
	Symbol: FROM_HAS_DN(0.00) Symbol: TO_DN_SOME(0.00)
	Symbol: TO_MATCH_ENVRCPT_ALL(0.00) Symbol: MIME_GOOD(-0.10)
	Symbol: RCVD_TLS_LAST(0.00) Symbol: NEURAL_SPAM(0.00)
	Symbol: IP_SCORE(-0.10) Symbol: RCPT_COUNT_TWO(0.00)
	Symbol: MID_CONTAINS_FROM(1.00) Symbol: FORGED_SENDER(0.30)
	Symbol: R_DKIM_NA(0.00) Symbol: MIME_TRACE(0.00)
	Symbol: ASN(0.00) Symbol: FROM_NEQ_ENVFROM(0.00)
	Symbol: RCVD_COUNT_TWO(0.00) Message: (SPF): spf neutral
	Message-ID: 1567006222-23574-2-git-send-email-mikko.rapeli@bmw.de
X-Rspam-Bar: +
X-SA-Exim-Connect-IP: 91.232.154.11
X-SA-Exim-Mail-From: mcfrisk@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: [meta-selinux][PATCH 2/2] libselinux: fix build with glibc-2.30 from poky
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
X-List-Received-Date: Wed, 28 Aug 2019 16:10:20 -0000
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Fixes build error:

procattr.c:27:14: error: static declaration of 'gettid' follows non-static declaration
   27 | static pid_t gettid(void)
      |              ^~~~~~
In file included from /home/builder/src/base/build_mgu22/tmp/work/aarch64-poky-linux/libselinux/2.8-r0/recipe-sysroot/usr/include/unistd.h:1170,
                 from procattr.c:2:
/home/builder/src/base/build_mgu22/tmp/work/aarch64-poky-linux/libselinux/2.8-r0/recipe-sysroot/usr/include/bits/unistd_ext.h:34:16: note: previous declaration of 'gettid' was here
   34 | extern __pid_t gettid (void) __THROW;
      |                ^~~~~~

Signed-off-by: Mikko Rapeli <mikko.rapeli@bmw.de>
---
 ...Do-not-define-gettid-if-glibc-2.30-is-use.patch | 58 ++++++++++++++++++++++
 recipes-security/selinux/libselinux_2.8.bb         |  1 +
 2 files changed, 59 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch

diff --git a/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch b/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
new file mode 100644
index 0000000..3105eab
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
@@ -0,0 +1,58 @@
+From 707e4b8610733b5c9eaac0f00239778f3edb23c2 Mon Sep 17 00:00:00 2001
+From: Petr Lautrbach <plautrba@redhat.com>
+Date: Mon, 11 Mar 2019 16:00:41 +0100
+Subject: [PATCH] libselinux: Do not define gettid() if glibc >= 2.30 is used
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Since version 2.30 glibc implements gettid() system call wrapper, see
+https://sourceware.org/bugzilla/show_bug.cgi?id=6399
+
+Fixes:
+cc -O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -I../include -D_GNU_SOURCE  -DNO_ANDROID_BACKEND   -c -o procattr.o procattr.c
+procattr.c:28:14: error: static declaration of ‘gettid’ follows non-static declaration
+   28 | static pid_t gettid(void)
+      |              ^~~~~~
+In file included from /usr/include/unistd.h:1170,
+                 from procattr.c:2:
+/usr/include/bits/unistd_ext.h:34:16: note: previous declaration of ‘gettid’ was here
+   34 | extern __pid_t gettid (void) __THROW;
+      |                ^~~~~~
+
+Signed-off-by: Petr Lautrbach <plautrba@redhat.com>
+---
+ libselinux/src/procattr.c | 15 +++++++++++++--
+ 1 file changed, 13 insertions(+), 2 deletions(-)
+
+Upstream-Status: Backport
+
+diff --git a/libselinux/src/procattr.c b/libselinux/src/procattr.c
+index 48dd8af..c6799ef 100644
+--- a/libselinux/src/procattr.c
++++ b/libselinux/src/procattr.c
+@@ -22,8 +22,19 @@ static pthread_key_t destructor_key;
+ static int destructor_key_initialized = 0;
+ static __thread char destructor_initialized;
+ 
+-#ifndef __BIONIC__
+-/* Bionic declares this in unistd.h and has a definition for it */
++/* Bionic and glibc >= 2.30 declare gettid() system call wrapper in unistd.h and
++ * has a definition for it */
++#ifdef __BIONIC__
++  #define OVERRIDE_GETTID 0
++#elif !defined(__GLIBC_PREREQ)
++  #define OVERRIDE_GETTID 1
++#elif !__GLIBC_PREREQ(2,30)
++  #define OVERRIDE_GETTID 1
++#else
++  #define OVERRIDE_GETTID 0
++#endif
++
++#if OVERRIDE_GETTID
+ static pid_t gettid(void)
+ {
+ 	return syscall(__NR_gettid);
+-- 
+1.9.1
+
diff --git a/recipes-security/selinux/libselinux_2.8.bb b/recipes-security/selinux/libselinux_2.8.bb
index 5de4607..cfa7a82 100644
--- a/recipes-security/selinux/libselinux_2.8.bb
+++ b/recipes-security/selinux/libselinux_2.8.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
+        file://0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch;striplevel=2 \
         "
-- 
1.9.1


