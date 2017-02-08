Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4334DE009C3; Wed,  8 Feb 2017 06:40:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D9CE009F3
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 06:40:09 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 204so15360996pge.2
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 06:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=jGVgsIrZi8tt97KAUoJvy98uu/55HTHfbeEjz6a06TI=;
	b=bKajUvV8w1SDkzSmNmPz20kVYqP+NkI75ZCfvpaEgnPI3iX0/ZrRTeK27QzPsFgKvh
	ws41lE4Owei+i3mKKWhwm8LMUawYunCNbx6BZc/ga5emSSVDP7MvW2tnM2JfG0N2QYuI
	Pk8CXiYGVlc2njnzYlfbDjcEamz6d9f0UiszmDLaCGm1pVpEpHFL1+OaQTM9twCTgUbn
	6qWg0ld1tT1KVq4ZtCA3MCVj8HDBA3jTrFV8G3BV3bNZI792brwL3RvO7gIN8TXp9opZ
	e7uOpqcmWR43uQ4gw4o186raZH5asRfnl4msddE005XYk2C3zn6ty0QFWBth9JPQM5DJ
	QXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=jGVgsIrZi8tt97KAUoJvy98uu/55HTHfbeEjz6a06TI=;
	b=F8CvQcWalhmy3jin8wHjbSlVgV+z1NdRhUUpj+wKl4jr61JU1oihY5qIrzRhQ9hz8p
	HZa01Wh8/cTpLxurQ8l+dNnMutPO4ondVRuJ/qrJXqfKWgs0m148yKN1m/mccxHSmfyY
	2m0NC1ZQmX5ZNnImZY+7Y1bPFBsX8/K2gW3qcF9UnWAfPIJ8J4Ocn3y/Y17uoZQ//ZaD
	T0q9ThzABqYdT54FKMIm+/ZhU8csbyMJaVh0nmUW24uWpWuVYW/KP+6+fw7PcHi06eT3
	9AlelxiChdCG17pdKFyhlAi4pY71UNKpQ2Pvk2mGk64uNSwiICjFmljbFWAOZI5pYaOR
	MjSg==
X-Gm-Message-State: AIkVDXJF7n0oDKOHN7gdWXU7CanqJ9okh7GpMwhPjlanLfRGcpzxWaOYeK22IJsDN6Hz2Q==
X-Received: by 10.98.35.25 with SMTP id j25mr26482142pfj.35.1486564809356;
	Wed, 08 Feb 2017 06:40:09 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	p15sm21016966pfk.58.2017.02.08.06.39.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 08 Feb 2017 06:40:08 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  8 Feb 2017 22:38:17 +0800
Message-Id: <1486564699-6001-2-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATH 1/3] machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
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
X-List-Received-Date: Wed, 08 Feb 2017 14:40:15 -0000

RK3288 support hard float and vfpv4. So we should use cortexa17hf-neon-vfpv4
as default tune.

Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 conf/machine/include/rk3288.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index e6c19a2..6d4affd 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -3,7 +3,7 @@
 
 require conf/machine/include/tune-cortexa17.inc
 
-DEFAULTTUNE="cortexa17-neon"
+DEFAULTTUNE="cortexa17hf-neon-vfpv4"
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_IMAGETYPE = "zImage"
-- 
2.7.4


