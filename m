Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D9C8E00A25; Sat, 18 Feb 2017 18:43:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4260E009F6
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:51 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id x75so37465097itb.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=rDqeUZh5cmrVqlWVe8nZ5r1yqrkdIhTgwaLDoduF/zk=;
	b=aNN+0z4+HD2OY3O0NAe3fZMhiHXQvnA88sQQ2zSjQLMYCHhsED8d+rWF+CSUuCoIcf
	EAdUmfgCUk4tGdRO+1K48mRmIvxWyebbBcBndG3AcEDJNGAMm5Wty4GR2zz35ltCb09D
	vWhhjUxdwDTc11Fpy8MepS0vn3oNNPJ2tijtPWGwp2Wf2v+OKqs8/K4jOIlwFjMghgjA
	SDD5KHl/7do3rTAxWCX3n+CdZDSHIpD1uLF88EQGaQPZBGGIJxFM0OVkeh0uZrFt7brS
	9WCkdfnmRLS0IbfWDW+gwuEy4721qQ+QMb8/54yDfY4uwBXUOxcO90nW5RH0Xo/fzXGK
	PYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=rDqeUZh5cmrVqlWVe8nZ5r1yqrkdIhTgwaLDoduF/zk=;
	b=Fc6ktbqIHL4vf1j5I9yHXFOeL4hHOqBRJyTqkitZ6ikcJ1zkB8oohQUOGDh26Yn2p7
	v7Ufu3vo+jPFT5oqZk23Y1Ig69SL4v0ruK3oN9pRIWp5/lQgO5BIPFR8HhLVmW6hI2Rg
	ORu84mq8B1krzwUhejvWDxmyCTxCo22TMhB+FUi8Acstg0X5H0HDEsQfu5De2uT30Dmp
	PZmLJ8wXAPW/zyCoA0vQJiBrUeF2xCQ2XgVInvMXK95f/c5tYs6u7XI1zGpjN2SN21wX
	7y7OqyuGs6wFn5kgOXXvEaHwIpIpC63b0GLYd8zGwzKS6pwg6eRRHICxtDxtfzmPrHS3
	9ekw==
X-Gm-Message-State: AMke39ln4KPxPkIjRTXR5gwajFpZSv7QVx5jTvdMBwWdR9DDDh9IaE40cVyMA/c8r/DXNw==
X-Received: by 10.36.81.65 with SMTP id s62mr13781753ita.33.1487472230754;
	Sat, 18 Feb 2017 18:43:50 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id
	a197sm1957754ita.1.2017.02.18.18.43.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 18:43:50 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 21:43:35 -0500
Message-Id: <20170219024340.23664-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-rockchip][PATCH v2 0/5] various updates
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

Here are a couple v2's of some patches that were submitted to the mailing list
earlier.

Changes since v1:
	- break commits to separate files into separate patches
	- rename the rk3288 image bbclass
	- make improvements to the rk3288 image bbclass
	- improve the commit message for the image bbclass

Trevor Woerner (5):
  machine: rk3288: enable SoC-specific assignments
  u-boot-rockchip: add
  machine: firefly-rk3288: specify bootloader
  classes: rockchip-gpt-img: add
  machine: rk3288: GPT image support

 classes/rockchip-gpt-img.bbclass          | 132 ++++++++++++++++++++++++++++++
 conf/machine/firefly-rk3288.conf          |   1 +
 conf/machine/include/rk3288.inc           |   9 ++
 recipes-bsp/u-boot/u-boot-rockchip_git.bb |  19 +++++
 4 files changed, 161 insertions(+)
 create mode 100644 classes/rockchip-gpt-img.bbclass
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb

-- 
2.12.0.rc1.48.g076c053


