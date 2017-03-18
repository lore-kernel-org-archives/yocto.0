Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1985FE007AD; Sat, 18 Mar 2017 01:07:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03FDCE00349
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 01:07:09 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id m27so51296360iti.1
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 01:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=wPM1c7EMX6x0F3tACzd5I9qccgVW7n3umbUKxZQqNfI=;
	b=H9SO0v1ZsqyEGRukFiFxVe3NMGkIJc4TebD09Ylt51E8JQLjYMA8ozJ9nYDd9a3lCX
	x6+SM+qp08912b6vn3caQ+vPB37lUOpi/Wgees+ldSu+G74FGdM2HvYGDkHwVO2okqLW
	QfztlW6kUHIA3Su9+8Q5OqLFqw9jkdKozu0LiI8B8+FocfYcSH44mdxluQgAR8KbUIGb
	fFB3TT+untbC1cb+WXR9BJAMJJHXTUyOCKajRNR4qBGNQS5ZUu1vPo6vhJqgfSbkwYo9
	80AiWZhsBM9Jq9uzwPqu260tfN6ZOUsMuU/m8N+qWThafhldGpc2y/l/64WEcgAA/f/m
	dEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=wPM1c7EMX6x0F3tACzd5I9qccgVW7n3umbUKxZQqNfI=;
	b=mXpV0EEnonq51nPExxxI3kLlB9sczDx5W1Kqc1ilY+8Q3XN2ts4xlBAqg6ACZElPWE
	XwfXqpzedHWeqG4uAQkRTRJQlygBRNxqzSSFUvOl5VHD/H5iwHLFi3yC0XLQfAdM1Pb+
	QnyCj0W+qAKqfizWkON5u4sytuBRY76VnqtUpQsFUrhZxxBFrX7em/CrOl845Vb1ZQ1X
	hk/cAax5bXC4XcDViXkXp3+4G5ZZ11TgFfA3zDI7SH84lQ61dWg4gDbBIYBM/U9drCMq
	U6SU0PBmtjj0hJNvLYVk5Cia8OHesYC6vC1vUADOgpB+2lQJizRPTWTvzacdwfzvud4q
	o5Ww==
X-Gm-Message-State: AFeK/H0Pq+HNnwNq2HecMrn5Jfff1e0dKI3c7xrig2LTUF5jo55T4nbjAdARl52SMEGIkQ==
X-Received: by 10.36.110.10 with SMTP id w10mr1765611itc.88.1489824428426;
	Sat, 18 Mar 2017 01:07:08 -0700 (PDT)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	j85sm5558278iod.27.2017.03.18.01.07.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Mar 2017 01:07:07 -0700 (PDT)
Date: Sat, 18 Mar 2017 04:07:05 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170318080705.GA11330@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: auto kernel version
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
X-List-Received-Date: Sat, 18 Mar 2017 08:07:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

Let's say I wanted to create a recipe to follow Linus' mainline or a recipe
to follow GregKH's staging-next. In those cases I wouldn't want to nail them
down with a version, I'd want to do AUTOREV. So I wouldn't put a version in
the recipe filename (linus-mainline.bb or gregkh-staging-next_git.bb).
But I can't seem to get away with not having some sort of version string
(LINUX_VERSION, PV) in the recipe itself. Is it not possible to extract a PV
or LINUX_VERSION automatically? Otherwise I'll need to update the recipe and
commit with every release (which isn't the end of the world, but adds to the
maintenance).

	SUMMARY = "GregKH's Staging-Next"
	SECTION = "kernel"
	LICENSE = "GPLv2"

	inherit kernel
	require recipes-kernel/linux/linux-dtb.inc

	LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

	SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git;branch=staging-next"
	SRC_URI_append_rk3288 = " file://defconfig"
	SRC_URI_append_intel-corei7-64 = " file://defconfig"
	SRCREV = "${AUTOREV}"

	LINUX_VERSION = "4.11"
	PV = "${LINUX_VERSION}+git${SRCPV}"
	S = "${WORKDIR}/git"

	DEPENDS += "xz-native bc-native coreutils-native"

