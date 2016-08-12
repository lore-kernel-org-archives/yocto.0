Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AEF4E0124D; Thu, 11 Aug 2016 18:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 174E9E0104C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i6so587428pfe.0
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Y76X5bQZO0cWD3fEP6cRWRrI8eSt/klPuaTEzn1AWYI=;
	b=zZe9smv3zb7nxvDBPP+QHrmYEouTwFlFKg/dC6r6AU/MBITYzQOQ9/lWtOgpbBzMhC
	7dsgZJJXy2v9JxaqJ8ks2wOsoIVvx4sjBAqFAJYZWUNxR0altJxnmTmidihY8QaXJFH9
	x2nUy5zQk4uqHNIq+9gy/CIlHb7MTSY/OyY2z1+/zkKZDAGdG/JB+PmDhTmKKYeOIfyB
	fBecSfOtY0Xx1TXA0U5Zo8UPde2G38ZN/s+Z4ym6mnXJmjzMUy7vueYeZh4wCttNmtxT
	BwFo6MipfP7UjWPlEG20QFSSIN3X9aG1+vGrK6YUN3SBYkxPR435ESKowWrOKA53xuI9
	OBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Y76X5bQZO0cWD3fEP6cRWRrI8eSt/klPuaTEzn1AWYI=;
	b=bEeY8cOKeOt3KJXhEnsVpP3peBWeonEgbAZSb09lJ8Ic0IVisTXG3ZzX+G0gwlpR8m
	IM+BGJDW7iHTbeOO1AFLamthOUf7JDvnbF5qVCj3/v8iC9OENZh/3gIp/Uvc1FXrcnP6
	4AJloNCROeduEttsIQZju/VgIJw4oPXLDQx78mv8GGBolD9nryvCFndjF/tTzI11drx3
	PljhnATbieUM3ZOAXF8HsaIkjKQpbxlLcrztZDSnmxnpAQflnPV2588OY99sAhjkqylF
	nTBW7zc4Sq8x0IriLaz3NnCUkOgAr+A5m/WKyBxUkOoc98wefaNNJSAiryNfxSI7lyc+
	UFig==
X-Gm-Message-State: AEkoous2M9qfXFwPcLMP/cXJywMX0mrqcNTR/MTi2OrnR9dPP1bvhpdYMjlJkr1Brcaj+Q==
X-Received: by 10.98.216.199 with SMTP id e190mr22223707pfg.123.1470963987878; 
	Thu, 11 Aug 2016 18:06:27 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:27 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:56 -0700
Message-Id: <20160812010608.31182-11-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 11/23] rpi-config_git.bb: add v4c overlay to config.txt to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:29 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 4bc8eb7..f610718 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -13,12 +13,14 @@ SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
 
 S = "${WORKDIR}/git"
 
-PR = "r4"
+PR = "r5"
 
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
 PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
 
+VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
+
 inherit deploy
 
 do_deploy() {
@@ -102,6 +104,12 @@ do_deploy() {
         echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # VC4 Graphics support
+    if [ "${VC4GRAPHICS}" = "1" ]; then
+        echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=vc4-kms-v3d,${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
-- 
2.9.2


