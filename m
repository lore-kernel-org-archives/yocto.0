Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE7A6E00A18; Sat, 18 Feb 2017 18:43:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB714E00A1C
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:53 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id r141so7428955ita.1
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=6WyB70Zk6npd23nVsQxfB3DoBFi9lbi98tsu5dcEt3g=;
	b=gioXDAyyd/bSYf6bNOvYwy/WzHmbp96ZnXWtFTKWUG/pf+8Q4m+WTOElHFnYR+IHPp
	p0+3l0a2CCY/Izr+yB3ryZNIQhCRvwnl49oQDnVpjLYpjufCJ0UIo+P+NZl/3YGp7hmA
	Ni7JhnSeF8ce+WsUcrkZLQJ2omVjl7mrP304I++dPyrpvpBV9Sj4nfhia4nZC03edAkk
	UmC6If4Hr40OvCs6EPIPLAbchMWaiIG7Q3hJwB8zJ9nreb/pvGTX5g5lRARfS/7m4wd9
	SHWQYeg2i52Wkxc7H88no/LGEaRT1aYjMlLabHyd7GDk3UqFacGag+IVreVYVSnLGLFF
	u/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=6WyB70Zk6npd23nVsQxfB3DoBFi9lbi98tsu5dcEt3g=;
	b=DkdoZ/dZojDqqO7F78zHyidB1XUbGJ+jVBt4269fpZX1/qtrCgYuYmoYU7O7ZYzmRe
	ykv3PLa+cO857Q/yyZQSp/FDDwT9DO0y5tyW7fh16MmEXeaRtiUzliYW8/2o0YmjM7Ye
	UJ+5rGYKEGAjzhTcpaZGbievYhQUI7hk5cwftAlcj7hWWmbR2WZoxLMgZIcmc6/bnbwM
	yH0tt7VqUf7qQHU9GWVAf31SQKgsCL7o2QfFu2SQaa/lTiUafMV3oiBeyCOcZxJWaOEF
	UBcXVPYwDoRB728w5fmLomFTWrP+bYLqX1OlNe4ICb3zM5/5XzSs1G93+XgSqWpwxJWh
	rcuw==
X-Gm-Message-State: AMke39kGAZRe6uKQ8RZVTvNFE7hSRJKQ4XgKmAAQSl+Id/Fphjwk5t1bX/o8O03IOsjpew==
X-Received: by 10.36.85.210 with SMTP id e201mr13869781itb.78.1487472233015;
	Sat, 18 Feb 2017 18:43:53 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id
	a197sm1957754ita.1.2017.02.18.18.43.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 18:43:52 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 21:43:38 -0500
Message-Id: <20170219024340.23664-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
In-Reply-To: <20170219024340.23664-1-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
Subject: [meta-rockchip][PATCH v2 3/5] machine: firefly-rk3288: specify bootloader
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
X-List-Received-Date: Sun, 19 Feb 2017 02:43:54 -0000

Set the default preferred bootloader for firefly-rk3288 to be u-boot-rockchip
and set the default name of the SPL binary.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/firefly-rk3288.conf | 1 +
 conf/machine/include/rk3288.inc  | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 8fa005d..58d752b 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -8,3 +8,4 @@
 
 include conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
+UBOOT_MACHINE = "firefly-rk3288_defconfig"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 769e5c1..4a4201f 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -10,3 +10,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_IMAGETYPE = "zImage"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+SPL_BINARY ?= "u-boot-spl-dtb.bin"
-- 
2.12.0.rc1.48.g076c053


