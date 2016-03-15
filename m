Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3520DE00D73; Mon, 14 Mar 2016 19:02:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6EDCE00D6E
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 19:02:53 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id x3so5832911pfb.1
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 19:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=0OGMv52X4ZVsIl4B/03vLDA7wWleHBdza/iXQVH2fQ8=;
	b=RB+nFU7bsm61SdWYuA/2UF3X2ZVCujm/BTnHN1/xTou1qml8YnpEETPuVwdgI8ful3
	WUUiF7XyucFvzA5xNGBtoLiMaQuFJ4E+Qcy3cppD/LjNUmjiEjFXDurHaZCucNIeNJL8
	UYovznLZ4wCECrJtzZMUX4z46oZaqQ7+qSSeudwsxggEZ7GjQqpth032ku/sB/y/HGdf
	JTr+4d1KvCuQfJTvGOJfWRjo/CIDKJleuTPvFaaPQZ2nputwroT9yp5shhlIoznB/Tau
	vPwBhzc6yAyRksarszYvTac7+ouYtccFNus1YqxZ3pQzE/DqIiXcItXUu2aFGsw0VXCT
	9E0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0OGMv52X4ZVsIl4B/03vLDA7wWleHBdza/iXQVH2fQ8=;
	b=Te/lvXJXtFZ+M3g3ebe/iMwdiIzTY5lV8eCP6mxdt/96POH60bjTGvbjBhB1xALXd2
	SsIW34dg346V1AxxfnoFopAsFOafqmiQaiu+tX7EvSCDQUDqjidMUJIQzsdKrPpJeGkc
	tRyl1L78B9IwZViXUJMBYmQIUeIkgpFhTgZY6KOpnV2pZ1grZWyr4T2FEA79T37OsBNk
	OiN2nRUS8taCFY5snTR4LkT0JEOo8ByVHYAxAxwG4zVfZEb3T8h03+kwaSOP79ayg6xK
	q6xntKRBqhkyXNWnzO4oCyNm9Mo1vUdW/oC2X9MbbBDPMs5SRN1RkxqIAT501v8Xe7nw
	yNQg==
X-Gm-Message-State: AD7BkJKp1KDuJ9kfw/kga419FIDYIE2O32ZN0aQTrRwAPefQOmO+bKWpelNfKg9ZYprz4Q==
X-Received: by 10.98.80.10 with SMTP id e10mr34925495pfb.141.1458007373216;
	Mon, 14 Mar 2016 19:02:53 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id r5sm35067466pap.7.2016.03.14.19.02.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 14 Mar 2016 19:02:51 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Mar 2016 19:00:42 -0700
Message-Id: <1458007242-1044-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.3
Subject: [meta-raspberrypi][PATCH] sdcard_image: Depend on do_deploy for kernel
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
X-List-Received-Date: Tue, 15 Mar 2016 02:02:56 -0000

SD image is expecting dtb files to be deployed in
deploy area, this step however is done when do_deploy
of kernel is finished and we need to pin that in
dependency list, otherwise there are build race conditions
during builds especially visible when building with initramfs
enabled.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 2e9bdb3..f20ff04 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -53,7 +53,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 			parted-native \
 			mtools-native \
 			dosfstools-native \
-			virtual/kernel \
+			virtual/kernel:do_deploy \
 			${IMAGE_BOOTLOADER} \
 			${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'u-boot', '',d)} \
 			"
-- 
2.7.3


