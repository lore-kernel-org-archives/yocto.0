Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5513BE00E1C; Thu, 15 Dec 2016 22:58:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25081E00E03
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 22:58:06 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id t79so20024358wmt.0
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 22:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=JM2h4rZt9pZsLp9CY4gws7UToRPeQxEyCk7z4Bfi91g=;
	b=RD9sq7icNlXaN47V7Ro170Pgs3+0gNFsz6bYy32Gy1zyHPOBoOPf7u7j7JoNGQ4nbV
	knK8obQZL+8YKVoYaDLI3p32QqwC5PospH/EiEojDlGvai6tEHgxeV0ItlDhlHRXNB/S
	2FNhgXsh/7wVwz5kdiBwjHG+32HkKbq1qyN4rm6HnZVTHl20soEEcWgJ6EXFa+DPWuN8
	VTcMOiWmvPwBJ/eX6xPme/DbDxItEvVuEXjbcZOfcmHo/wPC1mJIPvLOkfIQazEfjRsV
	53T3z9kXbPa6pG5y1OXNIXd8qnNCCZ6DTaFtcQIFOWKGDc6ZtyrmUOE+HnsDSXRgp5K+
	vtIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=JM2h4rZt9pZsLp9CY4gws7UToRPeQxEyCk7z4Bfi91g=;
	b=H/ir5I+fWfDOcvq4qg+JrpoqJHDDUu2Hmfmgj9V6drBBZdhuhnWjHHFrZE5QckPtrT
	m4DdDQkl35bh9Ir1vi9KT6XlKsFLPagzyg6RSe+zPaoy0Z9Tx0k3Iw1MBn7noGOH+VJj
	yo0fUmCSNuEEFj5qS3eO7WNyOr2zLyWPY1LBNURYLt0RlIi1bEHkTIFlM7G4dPvDCsfT
	3YTEaQP9z4r3iyMHFobkNoNog6WKF586zwXhdqFwhSoDYeyB3xO4LmHIM2tnQ9glRmwh
	1+lfxtSxvkRb4sTOnrfVWMHi9sRSmjHMNRxv3MkcawOoBsJ7zLJMazPdwOc/hCWzMlUE
	Wh7Q==
X-Gm-Message-State: AIkVDXL7FO6Xkuv/H/BSS8k8Tj/QpoD7F3hLDuxlxrEoge6IwTFwLMQCmgYhwRuOxMvXCw==
X-Received: by 10.46.69.69 with SMTP id s66mr429984lja.71.1481871485060;
	Thu, 15 Dec 2016 22:58:05 -0800 (PST)
Received: from kristian-mender.cfengine.com ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	t15sm1088447lfe.13.2016.12.15.22.58.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 Dec 2016 22:58:04 -0800 (PST)
From: Kristian Amlie <kristian.amlie@mender.io>
To: yocto@yoctoproject.org
Date: Fri, 16 Dec 2016 07:58:03 +0100
Message-Id: <1481871483-18552-1-git-send-email-kristian.amlie@mender.io>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH v1] u-boot/beaglebone: Select Beaglebone Black target specifically.
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
X-List-Received-Date: Fri, 16 Dec 2016 06:58:10 -0000

The am335x_evm_config target has a subtle problem which is not present
in the am335x_boneblack_config target: When booting from an external
MMC card, the internal MMC is not accessible using the former target.

This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
due to the addition of the CONFIG_DM_MMC option, and the
am335x_boneblack_config target does not have this problem.

Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index fc6a527..24a95b4 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
-UBOOT_MACHINE = "am335x_evm_config"
+UBOOT_MACHINE = "am335x_boneblack_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-- 
2.7.4


