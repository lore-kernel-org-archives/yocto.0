Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68B9BE00B71; Mon,  2 Jun 2014 03:59:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4806BE00C08
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:59:18 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id bs8so4332325wib.12
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=GXFKwm19Xc/bNdHlg23I8leBLPQO67okBuKmXBGytIA=;
	b=T2Sfmn1mkBzBCQzpQhEwSC1NAcf5FedKJZjdOqrufiCJ5zXJCgriC74dXb4q+Hxfq3
	rGiOOm6u1TZI5r3n/pV8mkQcV97TVYbxvE7CG4kRG77p2VKKKFvP8cmONsDKrc84xMCg
	tUcGGMLlUnG4MR28y7mluGt1onuEQnn+1sNE+yk/MSJk56+6JCaboWMyykxw+rEaFRLP
	zioTT0wk/NsdFht3zuHY+3L+MiZtHLlPA95qwqiYHVCDfOHGPimDIDXR6bS3f29hfXCx
	quECpIyysHY5xnw3OkeGin9sdHfC59GnWGy0Rtxh/y3GxQJIbM1/kJ++mKE6mT0zBSWN
	/N/w==
X-Received: by 10.180.77.68 with SMTP id q4mr21199445wiw.21.1401706757647;
	Mon, 02 Jun 2014 03:59:17 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	iy13sm31609709wic.1.2014.06.02.03.59.15 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Jun 2014 03:59:15 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, vaduva.jan.alexandru@gmail.com, andrei@gherzan.ro,
	gary@mlbassoc.com
Date: Mon,  2 Jun 2014 11:58:35 +0100
Message-Id: <b1b874cd4262f7b9934a11cc1809d609352a370f.1401706333.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
References: <f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 2/2] userland: Add SRCBRANCH and SRCFORK for use by SRC_URI
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
X-List-Received-Date: Mon, 02 Jun 2014 10:59:24 -0000

Makes it clearer to manage repo forks, and branches prior to (e.g.) upstream commits of in tree changes

Change-Id: I42f8af975c08f84c4ceb9910713eba2da3a87d8b
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-graphics/userland/userland_git.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 4b405ee..7fb7ebb 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -11,8 +11,11 @@ PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
+SRCBRANCH = "master"
+SRCFORK = "raspberrypi"
 SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
-SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
+
+SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
           "
 S = "${WORKDIR}/git"
 
-- 
2.0.0


