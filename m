Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03DB3E0086E; Mon, 27 Feb 2017 11:21:08 -0800 (PST)
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
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD7FBE00510
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 11:21:05 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id 90so35014398ios.1
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 11:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=skaYJnqHP3QTrbyAnFljHxaih1FP8Eoq4QfzstE0YbY=;
	b=SaMLvPDNG7fMNvTPpAuvT+I9fd6Dn2WB6smE+0PL2VF6KS+hJJ4SA06otpblY+zaWr
	LLfMg6UfyzaIu4fhtKyBVWMcfCEEJ4zeMMlDdcUn7pTWnVa1ATYrYMZTrVEnVV8yM7xJ
	XXUSFuIlWfzAdjgbUg7jGOcplRY2xRCT3hrxDjq2rsVO+V/Gxva2cpUa93jW3+wwbrP8
	gu8CZtZxdfs3ogJTOVs1db98oHwTiiXA7H2hL3O9B2LcNKAxMREBbamedHGmVLwrKfmW
	e59uUjJBywYON3fANfdlGQTx3kMytNX2eDFSeH6VM1haV1j0QKzi/PNKbLdSQyrcB2XD
	PBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=skaYJnqHP3QTrbyAnFljHxaih1FP8Eoq4QfzstE0YbY=;
	b=Q5R6qD9V3bTpTgG3WZUGgrhHMUAiM1y7OrQ9mbOQhWr0cgpEUDPva5wyeJQxCsfhsD
	eQarPWBtuni2YuvR0VCi7KZzF/HkZDcX8IEDzqoYyE16Y24WPyZ37tZxgLxGkmM6c5Cx
	D+W0TesTi5S5mbcvWiyvdXvlJASgkJQIpJRR3wvLDc1WlLU6Rpf6QC9AP1pfLPgUut/R
	woKUZsb+Kj49/Ca2VbrdURnJLolEsPKE7A6yTndf9v8vBMNENKnexh0Xn+Yl2cliQxw1
	rXilWcMVwn9tdWBMpWeVZTbUf1CUDzRDi4RQ+x94jdqVQB3eFrx2F9CU3Wxk56V4iZz8
	ZoPw==
X-Gm-Message-State: AMke39nVc6+Zvm9px9/82P2nJkFK63TUAIMurMChYv5W6+oamiZMu+ooJY2Qp30z/7n3mg==
X-Received: by 10.107.180.145 with SMTP id d139mr7738600iof.101.1488223264445; 
	Mon, 27 Feb 2017 11:21:04 -0800 (PST)
Received: from linux-uys3.suse (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	p19sm7032983iod.48.2017.02.27.11.21.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 27 Feb 2017 11:21:03 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 14:20:55 -0500
Message-Id: <20170227192056.10830-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-rockchip][PATCH v4 0/1] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Mon, 27 Feb 2017 19:21:08 -0000

Here is my v4 of this patch, based on feedback from earlier reviews.

Changes since v3:
	- I sent the wrong file when emailing v3

Changes since v2:
	- change commit message and call the "old" layout "legacy parameter"
	  format instead of "rk-boot" format
	- rename generate_rk3288_image() to generate_rk3288_loader1_image()
	- leave any older gpt image files (with datestamp) in the deploy
	  directory but just move the symlink so it always points to the most
	  recent

	- leave size variable as GPTIMG_SIZE
	- leave the boot image name as BOOT_IMG since trying to add ${MACHINE}
	  and ${DATETIME} causes the build to fail with "the basehash value
	  changed... metadata is not deterministic...". I think what was
	  wanted was that older gpt image files be left around, and this new
	  logic does that in a different way and maintains a symlink to the
	  latest

Changes since v1:
	- break large commits into smaller ones
	- rename the class and improve the commit message

Trevor Woerner (1):
  classes: rockchip-gpt-img: add

 classes/rockchip-gpt-img.bbclass | 132 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 classes/rockchip-gpt-img.bbclass

-- 
2.12.0.rc1.48.g076c053


