Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 761AEE00A53; Sat, 18 Feb 2017 18:43:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED94E00A31
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:55 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id q20so2202817ioi.3
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Ijl+C/q2hdlJW/y30PdR9NPfYHhGpcsQi2A5rz9jUVY=;
	b=aDDyOKwMWYZxpU6Enl5lvCcHrRKs+vf8Lm9m37yz2QCPCazDDvXNYHg08Wz+9y1Wtk
	Y2AdCgwUuZ+H0Zm3t6H3gihySWD84NjmT8R7VV8dHFaI9LlMguFr//Iemf1Zw3BPaGHq
	jwmv9jprdjn918/VRA/dZLuo517OOfzk5uyhfjQN0QnL7wdPLfIQip/IKcU7/eLzartK
	UvKiiIUI+A+GCa8Y+qULrRdpcn5IF/BSvFfivis8RlWXyo8AUgJbeMFlNdLe1O/+/kY9
	w7777CCbLkHK9Lxvae8WuKumm1vGj2krQCJ2cyumQR8rrRvP0SYdKS4O8NSn9AJU9ZXk
	mVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Ijl+C/q2hdlJW/y30PdR9NPfYHhGpcsQi2A5rz9jUVY=;
	b=o+Q4qwGDuyMa+gAKBMZOAt2sGfAbIZx94dTIqpQyuXsUPF0gNZtyGUZwenIjovYjCq
	oSfC6o+76YWLr/LIrTsYlt3qgE7+nV2NL4ABULD/LTpZPAUMfVKAMwnzsiKkrxA/0+/T
	I4jDOhMxBkyOxUkXFOavZMT7PvpAiziOnqFJZUynh/efgUm+Yszar39sIcGzfSGwwCkN
	SofMQyy5P0js8yHae8wf+VDugNTa8aaZHSVnBBROlLB+zcwMGZhSCq1TrbA/Pkm3ED1w
	k5ATt9nzwXGiZaY/drF1HIhjgWXH+RDjfOJXGpwsoqct1SSACXcLP+qWb7mvhtKTWqZU
	XYCg==
X-Gm-Message-State: AMke39mmU7VajcKtCqK5UsCnin2EFuICo/piZh+8xtMatpEFgzyaQrLUE8+frQHb3L8NiA==
X-Received: by 10.107.17.94 with SMTP id z91mr13662801ioi.37.1487472234580;
	Sat, 18 Feb 2017 18:43:54 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id
	a197sm1957754ita.1.2017.02.18.18.43.53 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 18:43:54 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 21:43:40 -0500
Message-Id: <20170219024340.23664-6-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
In-Reply-To: <20170219024340.23664-1-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
Subject: [meta-rockchip][PATCH v2 5/5] machine: rk3288: GPT image support
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
X-List-Received-Date: Sun, 19 Feb 2017 02:43:57 -0000

Configure any rk3288 build to generate the new GPT image which is then either
flashed to eMMC or dd'ed to an SDcard.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rk3288.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 4a4201f..964d8b0 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -13,3 +13,6 @@ KBUILD_DEFCONFIG = "multi_v7_defconfig"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
 SPL_BINARY ?= "u-boot-spl-dtb.bin"
+
+IMAGE_FSTYPES = "ext4 rockchip-gpt-img"
+IMAGE_CLASSES += "rockchip-gpt-img"
-- 
2.12.0.rc1.48.g076c053


