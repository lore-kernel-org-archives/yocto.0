Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DB5EE0080C; Mon, 10 Nov 2014 08:36:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD3E5E0072A
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 08:36:53 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id hn18so16861721igb.1
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 08:36:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id
	:mime-version:content-type:content-transfer-encoding;
	bh=z9eg3mbdXlpeN5pU7OA1bf89Z+x9BeD2pNZ0DC49ZDE=;
	b=bTahmLHIb8xhuJm90CJc5ECjx8CbrLm7FhmWsTbE6VP8YwMpOG8HLCV2pnWwMlhEtD
	AehPC+iFH9wrhBSfqfhvtJTgQrJnGETYudmtyl4uPsMU7Dx3PPosIYKHPgh31Ek/V7Q4
	P4g9nWktfNZZg3KDOQvQNLTfMuON2vWH/rRHLoROiJtCv5hJey1+GoXHqW1Wb7wjyAjP
	1j10ycwnhyqoSnxerfW5A04JG3ufl4FVkBmFWlgHesDBTsxX04D+Ry2iXm1EbDjZ/G1+
	JW41sqDI7fwQ2e2wAFtelGLFCB75WwfCk3jMRdcdLfKOmMWNzCTPJMZlGCX5uIKjxQ4l
	76Rw==
X-Gm-Message-State: ALoCoQkFKArn+7GbbRU06Xz/Ro7Gp64iBso7TRJ7Ebn1AW7j+9AzAKLhVSDm1VyB0T5oiRXNzubY
X-Received: by 10.50.80.18 with SMTP id n18mr16498170igx.22.1415637412595;
	Mon, 10 Nov 2014 08:36:52 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id ii3sm6188110igb.1.2014.11.10.08.36.51
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 10 Nov 2014 08:36:51 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Nov 2014 11:37:02 -0500
Message-Id: <1415637422-27732-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] checkpolicy: remove link against libfl
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
X-List-Received-Date: Mon, 10 Nov 2014 16:36:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

An updated version of the patch to drop linking against libfl was
required.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 recipes-security/selinux/checkpolicy.inc                            | 2 +-
 .../selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/selinux/checkpolicy.inc
index 1a21680..e0c7377 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy.inc
@@ -11,7 +11,7 @@ LICENSE = "GPLv2+"
 
 DEPENDS += "libsepol libselinux bison-native flex-native"
 
-#SRC_URI += "file://checkpolicy-Do-not-link-against-libfl.patch"
+SRC_URI += "file://checkpolicy-Do-not-link-against-libfl.patch"
 
 EXTRA_OEMAKE += "PREFIX=${D}" 
 EXTRA_OEMAKE += "LEX='flex'"
diff --git a/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch b/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
index 6fcf459..e19209e 100644
--- a/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
+++ b/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
@@ -8,6 +8,8 @@ no longer get errors about undefined references to yylex.
 Upstream-status: Pending
 
 Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>¶
+
 ---
  Makefile      |    2 +-
  test/Makefile |    2 +-
@@ -34,8 +36,8 @@ index 63b4d24..0f19a8a 100644
  CFLAGS ?= -g -Wall -W -Werror -O2 -pipe
  override CFLAGS += -I$(INCLUDEDIR)
  
--LDLIBS=-lfl -lselinux $(LIBDIR)/libsepol.a -L$(LIBDIR)
-+LDLIBS=-lselinux $(LIBDIR)/libsepol.a -L$(LIBDIR)
+-LDLIBS=-lfl $(LIBDIR)/libsepol.a -L$(LIBDIR)
++LDLIBS=$(LIBDIR)/libsepol.a -L$(LIBDIR)
  
  all: dispol dismod
  
-- 
1.9.1


