Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EA7DE0098E; Sun,  8 Feb 2015 03:58:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 511C8E0097F
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:58:54 -0800 (PST)
Received: by labhs14 with SMTP id hs14so8650724lab.9
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:58:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=IxbhVoqDfaqKg99QdR/me3beJDxkX/r1drUOAuD/UyQ=;
	b=m8CbLSFRj4ddaai5BS88anMIjbZqW3LcwcQeH/hossZX2mI9IVUncU7LdJaMUH7GRP
	FaHB2gAXN3qQ7ibUz97odD//oPV7FZPpXGN1+UQf4X3FPQevLH6fykuRzpUxeRa0fCKZ
	JuMzopJ6hMrnY+whVsLPLuOd8SQ0SH365FIKG05PBYKMbS2KFAsnkUEXeWJ4+t/Q8uuD
	z2usHmtkz6cgwS8Loe85We736nZtt6hQGR5QOUeDD8ckIw80yIKrm5re9ZD7pG/Tgmfq
	+tdCS+USo/tjaMx+PxPtpnQq7eou358ZXxYlqOj6LmFnM4OGO/gzbYu3vv11wScYUrzN
	rI+w==
X-Gm-Message-State: ALoCoQmdnLpaxkILiq+eXOEJk8oKVtlNzTJ9uchEVEc8Yoelsa7P/saeQn6ftthjL0kIpp6Hdcyr
X-Received: by 10.112.40.65 with SMTP id v1mr11437591lbk.26.1423396733255;
	Sun, 08 Feb 2015 03:58:53 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id f5sm1444085laf.9.2015.02.08.03.58.52
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:58:52 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:58:36 +0200
Message-Id: <1423396716-22626-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
References: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/5] userland: Bump SRCREV
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
X-List-Received-Date: Sun, 08 Feb 2015 11:58:57 -0000

Change-Id: If1d2608322749db4baa445ba94bc471a0ac86a5c
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 77c98d7..1e60ea8 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "85441185e653347e6b3c2bbc7494f5e29a6ca4a2"
+SRCREV = "3b81b91c18ff19f97033e146a9f3262ca631f0e9"
 
 SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
           "
@@ -32,10 +32,13 @@ do_install_append() {
     rm -rf ${D}/opt
 }
 
-FILES_${PN} += "${libdir}/*${SOLIBS}"
+FILES_${PN} += " \
+    ${libdir}/*${SOLIBS} \
+    ${libdir}/plugins"
 FILES_${PN}-dev = "${includedir} \
                    ${prefix}/src"
 FILES_${PN}-doc += "${datadir}/install"
+FILES_${PN}-dbg += "${libdir}/plugins/.debug"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
-- 
2.1.0


