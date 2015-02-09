Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22112E0097F; Mon,  9 Feb 2015 15:52:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E48BEE0094C
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 15:52:31 -0800 (PST)
Received: by labge10 with SMTP id ge10so16907137lab.12
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 15:52:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=IxbhVoqDfaqKg99QdR/me3beJDxkX/r1drUOAuD/UyQ=;
	b=WSACKFFJ7a1EaKK1R8VyvGjo7H0H9NbePLXoi0kofzxesk62/QZGQ4DBfCARA/0pUh
	Gm6nS9L+HREvTYzrj4pai8VN2N+UVIdM2PlGEoUxlWwCVyQF6lsavFQYU/Vhag7i8r9r
	pa+qXwCuenSFtiUiAczV4RoES04rlCpp/2OQUHYl1dt90lrsryBESJavKaly+9rLEBaS
	U+/7mndMK7RazN+qUwPcNkqVPgIXj1gIXrZ0r0mhUPURoRSAUxm5yRfl5xwCQyWh/cgO
	Z4P6FrAcFsnnf6sGjY9+7e5RBOFgS9MQVQC5gEZgoJiyWTX5FUsHmjMAxrzXnOBfHarM
	qLLw==
X-Gm-Message-State: ALoCoQkBPNedEcaWza3ApTD/moLt2KH6qpuOeAB0+ICoJ3pq+KHf2RPn1LKxJsjS0dyzW3lFv527
X-Received: by 10.112.130.34 with SMTP id ob2mr20797375lbb.78.1423525950551;
	Mon, 09 Feb 2015 15:52:30 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	lk6sm2380189lac.1.2015.02.09.15.52.29 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Feb 2015 15:52:29 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 10 Feb 2015 00:52:21 +0100
Message-Id: <1423525941-19710-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
References: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 5/5] userland: Bump SRCREV
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
X-List-Received-Date: Mon, 09 Feb 2015 23:52:41 -0000

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


