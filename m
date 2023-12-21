Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D351DC3DA6E
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 01:41:35 +0000 (UTC)
Received: from smtpbg153.qq.com (smtpbg153.qq.com [13.245.218.24])
 by mx.groups.io with SMTP id smtpd.web10.42616.1703122886297369212
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 17:41:29 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: radxa.com, ip: 13.245.218.24, mailfrom: stephen@radxa.com)
X-QQ-mid: bizesmtp79t1703122872t2eh7yzc
Received: from mrs-avril.vamrs.com ( [120.236.37.126])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 21 Dec 2023 09:41:01 +0800 (CST)
X-QQ-SSF: 01100000000000Q0R000000A0000000
X-QQ-FEAT: 6aXALTFZqPsUPij0oBcQaI/3Kv/T5CfsraCwOZB1ZlNJSO8Y7KihKRdROVUFs
	/Lzwibb05nNA+KuL9LopLOGfJ/NG8EUjIZ46cteqwkOe7o/o0kp7f2jeFrJa0IE0tSAF1Q+
	DM2si0HyzAJNj5dfdJ6zyuAewjmIBUMkX+vUYAn7+XvTA6IlCLUH0yqRX3dR60kHt/4g1B7
	33P1hQAXeRNhPbA8CDk6SxFHXA0p/XW/mdYAt9cy4n+zpZBHHLnzS+nwei5mB7Aqa+yGi/s
	dYhNVesbKMr8byqGCn5tY6ybIwbvMw6DlD27dX/fw+drKEbdmyZwVDhOwT/6RVbg6KP4BnL
	LBaUw7vI+xnVxjzKRwk9j8T5EArWa1/LXypPmnjof6ASH98iKQOP02Y9wyaag==
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2044443736767484304
From: Stephen Chen <stephen@radxa.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Stephen Chen <stephen@radxa.com>
Subject: [meta-rockchip] [PATCH] rock 4c+: add
Date: Thu, 21 Dec 2023 09:41:00 +0800
Message-Id: <20231221014100.4048121-1-stephen@radxa.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz5a-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 01:41:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62002

ROCK 4C+ is a Rockchip RK3399-T based SBC from Radxa.
Main differences of ROCK 4C+ compared to other ROCK 4 SBC.
- Rockchip RK3399-T SoC
- DP from ROCK Pi 4C replaced with micro HDMI 2K@60fps
- 4-lane MIPI DSI
- RK817 Audio codec

Signed-off-by: Stephen Chen <stephen@radxa.com>
---
 conf/machine/rock-4c-plus.conf | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 conf/machine/rock-4c-plus.conf

diff --git a/conf/machine/rock-4c-plus.conf b/conf/machine/rock-4c-plus.conf
new file mode 100644
index 0000000..424fed2
--- /dev/null
+++ b/conf/machine/rock-4c-plus.conf
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: ROCK 4C+
+#@DESCRIPTION: ROCK 4C+ based on Rockchip RK3399-T Processor is designed by Radxa.
+#https://wiki.radxa.com/Rock4/4cplus
+#https://docs.radxa.com/en/rock4/rock4c+
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-4c-plus.dtb"
+UBOOT_MACHINE = "rock-4c-plus-rk3399_defconfig"
-- 
2.34.1


