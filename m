Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D90B1E0093B; Wed, 11 Feb 2015 12:35:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DBF6E00815
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:35:07 -0800 (PST)
Received: by mail-lb0-f169.google.com with SMTP id p9so5606936lbv.0
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:35:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=/o8jAan+XVpP+UF9mqi9+OZydzMLAcSaRzipadLJQFc=;
	b=XFEXoM5yevm4eIqCAKmZFxDEygeUaeEeueaHrUUWdCRhrWVxoH9H/Bv4o7maZzuaiu
	AgYmkzI4aeH2PqAlz9pZ1m1CDLNNYviqgvaXTnPTnKs7kt22W7UgKcb4emhNiaGgiQyZ
	xoGjim6BpliuTdJZpm3zFhHtmqZdxmU6JJ+TZ4vDKh7PzMBC/7fQQTaG5zycP4TqRcHi
	BBB/a4zFJq9SLkT8neEzNDMROCv1zUuzbVnOU7oNKcMHI9Xwolqx7xWlN5ekLjRcuk2W
	LLOth/Slj1MjpfhptFtKOQ9WbWcqWLShwP2qyfgrZ1H5wz4eKar9LzLcveJyk3xbF/kH
	hP3w==
X-Gm-Message-State: ALoCoQkRCmnVlrZ4R8vwa5QyUZ69pVHIcQvft23UKw5M9Jf00DemoaupjlP3MMEQPDvNuXcHzVKi
X-Received: by 10.152.22.39 with SMTP id a7mr238377laf.119.1423686905664;
	Wed, 11 Feb 2015 12:35:05 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	rv1sm361520lbb.25.2015.02.11.12.35.04 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Feb 2015 12:35:05 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 11 Feb 2015 21:34:58 +0100
Message-Id: <1423686898-23144-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
References: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/3] raspberrypi.conf: Use arm1176jzfshf as default tune
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
X-List-Received-Date: Wed, 11 Feb 2015 20:35:12 -0000

Reformat the tune-arm1176jzf-s.inc file.
There is not 'PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp'. Replace it by
'PACKAGE_EXTRA_ARCHS_tune-armv6hf'.

Change-Id: I0dd63b1dd3e1ebc7fe0600e93fb9d27a6a833cd9
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/tune-arm1176jzf-s.inc | 13 +++++--------
 conf/machine/raspberrypi.conf              |  2 ++
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/conf/machine/include/tune-arm1176jzf-s.inc b/conf/machine/include/tune-arm1176jzf-s.inc
index a5368a3..b6fcc59 100644
--- a/conf/machine/include/tune-arm1176jzf-s.inc
+++ b/conf/machine/include/tune-arm1176jzf-s.inc
@@ -6,13 +6,10 @@ TUNEVALID[arm1176jzfs] = "Enable arm1176jzfs specific processor optimizations"
 TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "arm1176jzfs", "-mtune=arm1176jzf-s", "", d)}"
 TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-mfpu=vfp", "", d)}"
 
-AVAILTUNES += "arm1176jzfs"
-TUNE_FEATURES_tune-arm1176jzfs = "${TUNE_FEATURES_tune-armv6} arm1176jzfs"
+AVAILTUNES += "arm1176jzfs arm1176jzfshf"
 ARMPKGARCH_tune-arm1176jzfs = "arm1176jzfs"
-PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs = "${PACKAGE_EXTRA_ARCHS_tune-armv6}"
-
-AVAILTUNES += "arm1176jzfshf"
-TUNE_FEATURES_tune-arm1176jzfshf = "${TUNE_FEATURES_tune-arm1176jzfs} callconvention-hard"
 ARMPKGARCH_tune-arm1176jzfshf = "arm1176jzfs"
-PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf = "${PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp} arm1176jzfshf-vfp"
-
+TUNE_FEATURES_tune-arm1176jzfs = "${TUNE_FEATURES_tune-armv6} arm1176jzfs"
+TUNE_FEATURES_tune-arm1176jzfshf = "${TUNE_FEATURES_tune-arm1176jzfs} callconvention-hard"
+PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs = "${PACKAGE_EXTRA_ARCHS_tune-armv6}"
+PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf = "${PACKAGE_EXTRA_ARCHS_tune-armv6hf} arm1176jzfshf-vfp"
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 4e887b3..e8516e7 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -2,5 +2,7 @@
 #@NAME: RaspberryPi Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi http://www.raspberrypi.org/ Board
 
+DEFAULTTUNE ?= "arm1176jzfshf"
+
 require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
-- 
2.1.0


