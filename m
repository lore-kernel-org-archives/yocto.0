Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E94F0E00960; Fri,  6 Feb 2015 08:12:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B387E007AB
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 08:12:12 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id k11so14647516wes.2
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 08:12:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=IxbhVoqDfaqKg99QdR/me3beJDxkX/r1drUOAuD/UyQ=;
	b=KofLverHRFpJPkIHnLb1Zs0U2qdv+xFsnZAx6v/Ki5YtjXbqrce/1r6UE+HbXUluKE
	gBQzvtrcWIypc0CeN8lYbyA4B32G0RqAdlzGkp+yxZTL4yf083S0li22LBajejSLNBuq
	mrVzjlO5N/Ytm2jKOSMDkrwYxRsGEPSN2kjk6PPltw/hhabp6opNU0BNIkH6cN5tCsCb
	KSDT8PoNVvxPT1dxI1ZzqRCZJpb6fSGwv4qup2KM/FeZTgbn1FJzfddQ/f4Z4Xcsnj6B
	zTv1b/vufYf7CJO1tRJcnkLYk4YIQ5OZP1Xl0eT7u4nefBALMncJK+1pVTINSFgaYYaT
	ERlg==
X-Gm-Message-State: ALoCoQlRK88NVcOwxU0d8KSlMSTnycsjVca5gaxrWVPPoOhSBtEhGO7J4qWsX3Lso5Y43IPZPJ7S
X-Received: by 10.194.81.161 with SMTP id b1mr9468887wjy.2.1423239131250;
	Fri, 06 Feb 2015 08:12:11 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com (dhcp-186-165.gjk.dk.
	[195.249.186.165])
	by mx.google.com with ESMTPSA id jg3sm2088556wid.0.2015.02.06.08.12.10
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Feb 2015 08:12:10 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  6 Feb 2015 18:11:59 +0200
Message-Id: <1423239119-21918-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423239119-21918-1-git-send-email-andrei@gherzan.ro>
References: <1423239119-21918-1-git-send-email-andrei@gherzan.ro>
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
X-List-Received-Date: Fri, 06 Feb 2015 16:12:17 -0000

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


