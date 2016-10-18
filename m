Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DC30E00C02; Mon, 17 Oct 2016 17:02:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11EBBE00BEA
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:39 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id fn2so8805874pad.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=BmIj01BQr5rUkGCI31cAthPzGfNOwR3xeQNT0kfhZE4=;
	b=chLck1mEHgd+AqrZclN5gJytlct8TSxKIvv7Uaqwmec/H1gRxKk87hk+IUiT9pZDP3
	FipzvxfxVYQHswOvfj+uOl2c5ze0V51c+RCQQk2n5/nyfGR6IlZVw44UVyZ0H5d7pNf5
	b9tH+h3bO7f+S8BZTMQPNKVcHY7Cn7X67uSIzL9I3jMw2m42IyrSpcL6j0xZzzBJtePk
	1Tn1nSBh5VDbL5msh5Rrg5Q8518XJfYS4K1ieIRZ63uVtsXAns7TlSLxCxKtkdJ/ZCRP
	oFOlVTLvtOhdqi2LcDCp1AHuG9eOUteLf0MEBS1Wjz9Lb0UT3pTKFos4f3uOkkoV6BFK
	PBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=BmIj01BQr5rUkGCI31cAthPzGfNOwR3xeQNT0kfhZE4=;
	b=HUk0F82PYSbQz3090dBQjCeBmMB73dpNM5LDWxQ/tW2w1nBEvJW5v7DAwPwZLjSedP
	5CKD4JtmOi7RpbUOqYDoj1Rw2GKm3+5RUhHYZYzNj0pgfCKaEgfQGdcR/CLsoLDYEgzj
	dOFVkCbSopnTwXPfqSEVsmDP251xBUddxB85fkSMnXY+eemv/c6Q0aw5gtrbwLoNW25i
	ESAb6w8GXYKCxsyzdaV3RqSv8UuIgsLoabzplcmQAY7EvUQw7fFyp4C1E/QA8LRcmB28
	WSTbvnL3VqHq0IPHilP/iS+cnteMV18uiRHTeIC1FHu5JkyKaKYD/ZsLwwshUYGK+Fv1
	is6w==
X-Gm-Message-State: AA6/9RlY6S+jUM5tMS/k2gKLOX/YY/s3gkuAxqW6zrI3OhOnZZ8lHuykS1utGMp/xRsKsw==
X-Received: by 10.66.84.132 with SMTP id z4mr153121pay.108.1476748958913;
	Mon, 17 Oct 2016 17:02:38 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:20 -0700
Message-Id: <1476748950-21342-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/17] image: at image to help test builds
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:40 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/images/security-build-image.bb | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-security/images/security-build-image.bb

diff --git a/recipes-security/images/security-build-image.bb b/recipes-security/images/security-build-image.bb
new file mode 100644
index 0000000..6745338
--- /dev/null
+++ b/recipes-security/images/security-build-image.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "A small image for building meta-security packages"
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    packagegroup-core-security \
+    os-release \
+    ${@bb.utils.contains("DISTRO_FEATURES", "x11", "packagegroup-xfce-base", "", d)} \
+    ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}"
+
+IMAGE_LINGUAS ?= " "
+
+LICENSE = "MIT"
+
+inherit core-image
+
+export IMAGE_BASENAME = "security-build-image"
+
+IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
-- 
2.7.4


