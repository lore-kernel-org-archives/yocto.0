Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9118E00894; Sun,  8 Feb 2015 03:57:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F24DE00874
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:10 -0800 (PST)
Received: by mail-lb0-f179.google.com with SMTP id w7so1020749lbi.10
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=z3j1Sc5g6Ce8ebwjar1aMHGhGu4fhj2VAgYPbDevvyk=;
	b=lNsvxnWokQl7MXbHVec0afFkEpnriyMiXj8vFopE7k3hL0oGa75MX8hTuAaO+bQ7Ka
	2WfayU+uwfMKXIja+oHyXZLnii36bJy2i7T0/RhNmFxwjkf0SpJ07+sk8PevVH+gY/+C
	gUpa1w9+IhZPoxIhdQuV07ruGez9urbsY/uoKskOLxUOiXTw/Zpc1/czdQFieyIqjpEb
	j0zDthwfn6/VCRhZt2aasLEV4bcFdM3RgvMFKFiG73PdQW2FiX9+ZU3HodLVKXL5dyn7
	XXPOz1gKmRvfdCMjiuLrfY0NCmDAeyfSwyPOwC2Z/rFH9qbqibjwtGSaaBuJMuLyakDG
	O45A==
X-Gm-Message-State: ALoCoQnyqvvHWE/pFGiAEbUU1qqr1YQs2rtrowNxK7O3TkuLD0CKsGJaAVMAH37PDrEClf4BepP8
X-Received: by 10.112.45.9 with SMTP id i9mr11415440lbm.5.1423396629680;
	Sun, 08 Feb 2015 03:57:09 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.08 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:09 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:57 +0200
Message-Id: <1423396620-22510-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/8] firmware: Update to HEAD
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:13 -0000

Change-Id: I682365b514f233616ac7eb07667edc4ca6afcdfa
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc         | 4 ++--
 recipes-bcm/vc-graphics/vc-graphics.inc | 4 +++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 145ecce..ad3176a 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "d426cd1e79f0785fae6c37db79da7d6dae39716d"
-RPIFW_DATE ?= "20150204"
+RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
+RPIFW_DATE ?= "20150206"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc b/recipes-bcm/vc-graphics/vc-graphics.inc
index e9575da..1dee53e 100644
--- a/recipes-bcm/vc-graphics/vc-graphics.inc
+++ b/recipes-bcm/vc-graphics/vc-graphics.inc
@@ -49,6 +49,8 @@ INITSCRIPT_PARAMS = "start 03 S ."
 FILES_${PN} = "${bindir}/* \
                ${sbindir}/* \
                ${libdir}/lib*.so \
-               ${sysconfdir}/init.d"
+               ${sysconfdir}/init.d \
+               ${libdir}/plugins"
 FILES_${PN}-dev = "${libdir}/pkgconfig \
                    ${includedir}"
+FILES_${PN}-dbg += "${libdir}/plugins/.debug"
-- 
2.1.0


