Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 82DD1E0146A
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:39 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id a11so2116689eaa.1
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=NBXFVVtscO/j5TySYvfN88CcHCMBJU76bBt/IiexwPo=;
	b=RH79vfcZ51ebkaiHsTZJe3oqtz4fbeBy7HqAn9WNX/oT7JOZ1MlOF0uJs6Q38TFQ9B
	KHUmcMf2tIAwAPw/c8SuLTLjYY+MSappGdSusKsg5sRkgCXO5+16ELI9va9T55/bNf6N
	USjjuTTEbWkzMrdOcTarrYagnsgJps9Y+pcjlqrIEjMcGFJL7bSp/GA6QyosFfGS3/OC
	UaN/dMWWryrnuzYCEHcopulO5fC7gsMZZmUsXDpux3VeuOdNdyzDo5iQYU1JZW50SIkI
	GrsAKTl4mWk+cqnSFPCXPm4DRuiZCnzFqPpUOLFSuwbybq9BrqfJiH0wCiUeNLErzswP
	Jj3Q==
X-Received: by 10.14.194.4 with SMTP id l4mr31885259een.12.1360447897960;
	Sat, 09 Feb 2013 14:11:37 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.29
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:37 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:11 +0200
Message-Id: <1360447871-10982-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQm9Hq/HPwer/E5qPR66zV5h9ncz2rVkLqEFfPDNfLaGuIuOWuX2NRnL9EpbCOcpSJk8DzAa
Subject: [meta-raspberrypi][PATCH 7/7] vc-graphics.inc: There is no libgl so get rid of this PROVIDES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 22:11:39 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/vc-graphics/vc-graphics.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc b/recipes-bcm/vc-graphics/vc-graphics.inc
index 915b7c1..28c95a1 100644
--- a/recipes-bcm/vc-graphics/vc-graphics.inc
+++ b/recipes-bcm/vc-graphics/vc-graphics.inc
@@ -3,7 +3,7 @@ LICENSE = "Proprietary"
 
 LIC_FILES_CHKSUM = "file://LICENCE;md5=86e53f5f5909ee66900418028de11780"
 
-PROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
+PROVIDES = "virtual/libgles2 virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
 include ../common/firmware.inc
@@ -14,7 +14,7 @@ SRC_URI = "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master\
 
 S = "${WORKDIR}/git/${VCDIR}"
 
-INCPR = "r0"
+INCPR = "r1"
 
 inherit pkgconfig update-rc.d
 
-- 
1.7.9.5


