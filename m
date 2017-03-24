Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76C1CE00970; Fri, 24 Mar 2017 07:25:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D92E004E5
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:25:16 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id p189so663836pfp.0
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=+edPmwKFbgal/Rgxa3WjiLRM+ng//vWX/cxfD8VFs3E=;
	b=cGWFDVmYmXpoMMKuyf9xaQu5OnsQI0zCmo6wPpjFB/nGcBjIoVesIqyqx9clcXuGDe
	QzOuqOmFwgifYp3AwDUdR5Y23WrY3w8J1iMOZofaU/vd9WHAFmxkpVQ0ecgYWd/IZu+S
	INY6VZw4NH6GANfW61vIa3IcUqZAKZu7z8UA/F+4yRDzK3mKYgOYk1uu6bwdi3BbERJf
	hcKXaTU2KTjIX193MfIEUurxuEDMNMngqLKxhtIxupjjSs2EfNfibT/XvtgNJyL4tp9m
	AX/ixOqtUxFvwt6kRakuB0aUj+RomXZ0OhuWMVKn/N1dBqkNlsqEy6uaZTpsTzkjzRmp
	xzHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=+edPmwKFbgal/Rgxa3WjiLRM+ng//vWX/cxfD8VFs3E=;
	b=o0aOkF38VlEcuFKS5sNTYIOrsvgBMaabyeiXciRhi1mj0fYHdiad+nb3R3qxcETqzv
	3tqID1cNo7r50DgnVWrWEg6gffekyF8qHGNKs8DLXh5Y2Y95EcnNqvK2AtJMu+P+AyN6
	er34Diie4pQYwJvi4yTg9k30Dx5rcvSRYCrxDyHOUiq/iV+OO1dXwDVMTR9pFTgW/1sz
	lhUFvvDgpnS3FIpIWr/CAwzV3UhJ3Gvg58L9eDR3pwZTSlezNL47cQdB3hR2wVXwJbZx
	KijQvkl1LZkNhP4ShZudpvcl7Effl0+KJpQIQQMPfe/O3r7p8ybDtZX1ED9F+W29mfOe
	w2Fg==
X-Gm-Message-State: AFeK/H3T7n4QzfLBZlkHXehF2SsyjpzVqya6TTMVfnZidkio+0+tSUi7McE+tcqWzmrWEg==
X-Received: by 10.98.94.132 with SMTP id s126mr9561065pfb.133.1490365516077;
	Fri, 24 Mar 2017 07:25:16 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	m20sm5185849pgd.32.2017.03.24.07.25.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Mar 2017 07:25:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Fri, 24 Mar 2017 07:25:14 -0700
Message-Id: <1490365514-28156-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH][V2] samhain: fix build issues when using musl
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
X-List-Received-Date: Fri, 24 Mar 2017 14:25:19 -0000

[v2]: Correct musl malloc fix.
remove HAVE_MALLOC_H define; this enables using the included defined mallinfo.

[V1]: Fix c99

x_dnmalloc.c:563:26: error: return type is an incomplete type
| #define public_mALLINFo mallinfo
| ^
| x_dnmalloc.c:1689:17: note: in expansion of macro 'public_mALLINFo'
| struct mallinfo public_mALLINFo() {

and
_dnmalloc.c:5527:17: error: unknown type name 'u_int'
| u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
| ^~~~~

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/files/c99_dnmalloc.patch | 18 ++++++++++++++++++
 recipes-security/samhain/samhain.inc              |  5 +++++
 2 files changed, 23 insertions(+)
 create mode 100644 recipes-security/samhain/files/c99_dnmalloc.patch

diff --git a/recipes-security/samhain/files/c99_dnmalloc.patch b/recipes-security/samhain/files/c99_dnmalloc.patch
new file mode 100644
index 0000000..2216564
--- /dev/null
+++ b/recipes-security/samhain/files/c99_dnmalloc.patch
@@ -0,0 +1,18 @@
+samhain: musl build fix c99
+
+Upstream-Status: Submitted
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: samhain-4.2.0/src/dnmalloc.c
+===================================================================
+--- samhain-4.2.0.orig/src/dnmalloc.c
++++ samhain-4.2.0/src/dnmalloc.c
+@@ -5524,7 +5524,7 @@ arc4_stir(void)
+         struct {
+                 struct timeval tv1;
+                 struct timeval tv2;
+-                u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
++                unsigned char rnd[(128 - 2*sizeof(struct timeval)) / sizeof(unsigned char)];
+         } rdat;
+ #if !defined(__FreeBSD__) && !defined(__OpenBSD__) && !defined(__NetBSD__)
+         ssize_t sz = 0;
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 789150b..d558e6b 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.init \
 	   file://${INITSCRIPT_NAME}.default \
+           file://c99_dnmalloc.patch \
 	  "
 
 SRC_URI[md5sum] = "d98a55646b14f9419fcedde909d1bf02"
@@ -75,6 +76,10 @@ do_configure () {
 	${EXTRA_OECONF}
 }
 
+do_compile_prepend_libc-musl () {
+	sed -i 's/^#define HAVE_MALLOC_H.*//' ${B}/config.h
+}
+
 # Install the init script, it's default file, and the extraneous
 # documentation.
 do_install_append () {
-- 
2.7.4


