Return-Path: <kazuya.nisimura@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92033E00764
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 18:01:36 -0800 (PST)
Received: by mail-pb0-f50.google.com with SMTP id rq2so9254642pbb.23
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 18:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Jteusd60XN+YV8S3hZdbw4XOHNKCcxDpVrGvWDzu5ZI=;
	b=nUNkBoKDK+oeTyPV91MPVDeQga4EwYe+OUfh+ZlE1dhQu6YUE5Qpv+P+FT32TF60Gc
	etu8M6L4AwBQOf91gBkCzcXyf4+ny/FAhO6TcI2xdTtzdq8dzCf/QhGmjr3MbdRfXJzv
	9BDjaLigsd516yNq3bEW+g258cBt8MOuBhb6n6K5xq/dTPkTqV8jbgyRA2EJGf+VOLFR
	+N5EwNcT4oE5WteTCCy+nhY1VFm7zuBfDwgoMUx69/RhleyP84QbrmQb9QkLiMtpo2d0
	ZzBkQImkxz02i7YfGqPI+epx43AG4/ewqpoMLF39dte+X0bIZVouSoCZAc3Kufn7LQmW
	pbGQ==
X-Received: by 10.66.66.202 with SMTP id h10mr47736743pat.70.1391565696230;
	Tue, 04 Feb 2014 18:01:36 -0800 (PST)
Received: from localhost.localdomain (KD113159197140.ppp-bb.dion.ne.jp.
	[113.159.197.140])
	by mx.google.com with ESMTPSA id it4sm469963pbc.39.2014.02.04.18.01.34
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 04 Feb 2014 18:01:35 -0800 (PST)
From: Kazuya Nishimura <kazuya.nisimura@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Feb 2014 11:01:19 +0900
Message-Id: <1391565679-15351-1-git-send-email-kazuya.nisimura@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] tune-arm1176jzfs-s.inc: Add hard float profile, arm1176jzfshf, in AVAILTUNES
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
X-List-Received-Date: Wed, 05 Feb 2014 02:01:39 -0000

* arm1176jzfshf uses -mtune=hard.
* Add -mfpu=vfp if vfp is included in TUNE_FEATURES

Signed-off-by: Kazuya Nishimura <kazuya.nisimura@gmail.com>
Change-Id: If81977cacbba052fa30c4a407ec65e93148d2ee3
---
 conf/machine/include/tune-arm1176jzf-s.inc |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/conf/machine/include/tune-arm1176jzf-s.inc b/conf/machine/include/tune-arm1176jzf-s.inc
index ebad588..a5368a3 100644
--- a/conf/machine/include/tune-arm1176jzf-s.inc
+++ b/conf/machine/include/tune-arm1176jzf-s.inc
@@ -4,8 +4,15 @@ require conf/machine/include/arm/arch-armv6.inc
 
 TUNEVALID[arm1176jzfs] = "Enable arm1176jzfs specific processor optimizations"
 TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "arm1176jzfs", "-mtune=arm1176jzf-s", "", d)}"
+TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-mfpu=vfp", "", d)}"
 
 AVAILTUNES += "arm1176jzfs"
 TUNE_FEATURES_tune-arm1176jzfs = "${TUNE_FEATURES_tune-armv6} arm1176jzfs"
 ARMPKGARCH_tune-arm1176jzfs = "arm1176jzfs"
 PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs = "${PACKAGE_EXTRA_ARCHS_tune-armv6}"
+
+AVAILTUNES += "arm1176jzfshf"
+TUNE_FEATURES_tune-arm1176jzfshf = "${TUNE_FEATURES_tune-arm1176jzfs} callconvention-hard"
+ARMPKGARCH_tune-arm1176jzfshf = "arm1176jzfs"
+PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf = "${PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp} arm1176jzfshf-vfp"
+
-- 
1.7.9.5


