Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36049E00AC5; Mon, 12 Sep 2016 17:19:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFA3E00A84
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 17:19:24 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id c131so544376wmh.2
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 17:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=bcKPr+fFPqsrQ7uq5GS2614p0I5a747twQL5eQSvMpY=;
	b=hQBTvoEH6OZoBvMK9ezGQx/fmXFbA0Wqx1SdqJrxt2JHWKZsCzcfBGmX8wnwD6TqeD
	9J+LWl+sYqwvdhDakljXLS4FhL8gUclviz2MLwOK1uDXQkhjrUvWkmKxzW/hQSOfO3Ir
	ubber/cjsK/A1PfepWLexE1vqUyqAGVgBKKBmYQiphh79OncvRUYyePC4yhDjWLQXiXz
	eLQa/xV0kO8vBnFrEcdDDwrfkQOcFUChNKdudXdj+DOvjk+LngBtijUsQHwBZYnIc2gj
	MRv6V6G5KWdLHF1C7cJZMcPs4LoSQp6e23YA9vaBn0mTgzMSfeoNGNUXPn1sMpV+bIW/
	cZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=bcKPr+fFPqsrQ7uq5GS2614p0I5a747twQL5eQSvMpY=;
	b=PaMmTOtuMmGp6p+Bdtets9/FHRgiotVPhlb7lz03EBZzWSX/OiZQr/GPFuzar4L8wn
	bZkPBri9LNCZHkOq3YXxAEE4YJv1lgXHUB61SfCfQW+AxRzdoZosrIofa4HjvFTgPJzn
	zG1G7jpudx29QUUohJ0c6IUnJfIBZKA2pP7MzpoqSzhgcUc+xHLlAKYoQnK0lZPkrTfv
	1waFOMEj95xCDkJDl0ydodZ+ufSh5BQT8NLVlfHJkoyFk3vvBE7oaCvsTPBVS3BtIL+c
	ruIYWAkvmWpgw2O5O+7jAI9GtyXMFBX6EaVr5F6rC91N2M844GtLKXJ8pWNsrzWUv5y8
	CPtQ==
X-Gm-Message-State: AE9vXwONv3GH+FTBVX+fE9Izg8qxYGkMmze/LnemZdzDb8vBU6i9xcx88slbXLxP7z/ozQ==
X-Received: by 10.194.202.166 with SMTP id kj6mr7694248wjc.72.1473725963007;
	Mon, 12 Sep 2016 17:19:23 -0700 (PDT)
Received: from localhost.localdomain (p5B0A2F98.dip0.t-ipconnect.de.
	[91.10.47.152]) by smtp.googlemail.com with ESMTPSA id
	e5sm2555295wma.13.2016.09.12.17.19.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Sep 2016 17:19:22 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Sep 2016 02:19:06 +0200
Message-Id: <1473725946-7854-2-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
References: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: avoid corrupted images with latest oe-core
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
X-List-Received-Date: Tue, 13 Sep 2016 00:19:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

oe-core's commit d54339d4b1a7e884de636f6325ca60409ebd95ff creates image in
IMGDEPLOYDIR and copies through sstate to DEPLOY_DIR_IMAGE. That causes
DEPLOY_DIR_IMAGE not valid when calling IMAGE_CMD. Therefore use
IMGDEPLOYDIR for sdcard creation too.

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 classes/sdcard_image-rpi.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index f506858..1acf9d8 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT = "4096"
 
 # Use an uncompressed ext3 by default as rootfs
 SDIMG_ROOTFS_TYPE ?= "ext3"
-SDIMG_ROOTFS = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
+SDIMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
 
 IMAGE_DEPENDS_rpi-sdimg = " \
 			parted-native \
@@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 			"
 
 # SD card image name
-SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
+SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 
 # Compression method to apply to SDIMG after it has been created. Supported
 # compression formats are "gzip", "bzip2" or "xz". The original .rpi-sdimg file
-- 
2.5.5


