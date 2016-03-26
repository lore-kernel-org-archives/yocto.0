Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F153CE00C39; Sat, 26 Mar 2016 09:59:51 -0700 (PDT)
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
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01F5FE00C31
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id j35so80527639qge.0
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=n9hXHUs21Gp64eQ+0R5jNwjywNxbDbSXqdeHFv9Oob8=;
	b=ycEQlnBG75NtI1rcQVX+fGeQ50shS5uS9cmg+Le4NfcsGl4IDubpy6163Vlxi6J56H
	QOQEUqW7CeQ3BmtMHRO2WJ1m3omHBmvFWgyeih/BIKNwPoPlCQYLLDCAl7TpuBm4ZU6n
	qEIih8R1GRJNjVCXC6TGwrFbR/iTZPl9jNJpKPMof5VWseYw2l/SYCdomLAlVtka58GU
	AJiL/PDMu6SLTk4iG6rcmHdOKGowyqvl3NSugPuWBRNxdOXjxsVRJPDe0gjxf2BlEDN6
	Ws6QCczP4sBOy4zTXxbIu3bAj5chKriwhsk6i9uTkyQBJVrIar08EyZBovZPBFTjfP2A
	2juw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=n9hXHUs21Gp64eQ+0R5jNwjywNxbDbSXqdeHFv9Oob8=;
	b=CZV+bvGmjeZrvBkJl/lKCpfrTHw6zNcs2BBBEv/YgAGXZPb/koSYGtQ4L0ALx4ZS65
	vQ5lk6zhIbhP01p/r4syfMSSoF1m6hbbCf30JJbaR2o9o6onWKiX4eNc8mtB27//NcHu
	FjTkV5NU/3hFU2KkD3KRnk79T54VLljErk3eS8vP2pGAeesxkyL2RkjskkzPeoq2NHdu
	/ljTzKCwye7uXBra8bJPVVlU54TnGvz2iVEeffgkLX2R+VJR1m/nczpF/ge0pChplY0L
	esV+U9s2MZ9MVTmAgCFkbuWOM/EDuYZXcprw9B3e+UaWU8RgSodvYMizxaTv7bcYEigM
	o+Gg==
X-Gm-Message-State: AD7BkJJeRs6vNXPUrC3Fvfz5Lu326YrdwoBxyUM7xwO+uk3KQ31e3SFjgkXnJxCDqTYOzg==
X-Received: by 10.140.220.207 with SMTP id q198mr26273428qhb.103.1459011586631;
	Sat, 26 Mar 2016 09:59:46 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	o128sm7955368qhb.34.2016.03.26.09.59.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 26 Mar 2016 09:59:46 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 26 Mar 2016 16:59:34 +0000
Message-Id: <1459011577-14870-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
References: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/5] sdcard_image: Depend on do_deploy for kernel
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
X-List-Received-Date: Sat, 26 Mar 2016 16:59:52 -0000

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
1.9.1


