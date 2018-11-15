Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A088E00A4F; Thu, 15 Nov 2018 09:29:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48390E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 09:29:16 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id m19so9349215ioh.3
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 09:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=ztYshBuzXecaZ2wkwGXzQ0pHn57yVGDwxhuy/VDPBtA=;
	b=OFoVMR4Y9pppxQLnLLd1jJnS/RcfP7kJ55gVqiCTUa3V64B2ecAqrmq2DOM1Q29PV2
	uQ9luSSPB85FjA2z6ByDmFLF2vndW47ToFv7LIxsIhdp+rx6B80nOwwqGQhEvz8t9WLN
	IWZH1sFerC7JGMdm7lEqn6ol7BTI4TWeQ8s+dxAdyr+8X9AznP5NF62QAWrzftXjNS58
	1HUpsmYwfKlgJRVAU4JRJQzbhqJknYVOGcbK2ysmeBvZI8jLkKamupjexdV/9gO3oPOR
	yrLAFd1RwRawgrXfiFhG3/dimWVdlHna3p5N5xGqL+EPWiLc6dJsdTFpzxA3nWxjkucZ
	331w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ztYshBuzXecaZ2wkwGXzQ0pHn57yVGDwxhuy/VDPBtA=;
	b=kBItNZixSEB6zBmt/27DU3mBjFqy6ZRCizFA9kMBhA8EQaaHgDnwOJng7n84v0Y0oS
	+UCKzWzmxtqblIC0glV8m6ew3DHWkrYVpoC61t8o/JTPiCO/ByaMjFXkREc4JGl2JUuL
	PxHRlEoT2T6gbQZFirhrHGRdgsNgrMbYugAYENGMNKUH3ZpKnlx2p1m2Ff7r5W6926cw
	6PHppZwqSrJCf/NFJdr+wUZ49WNEset1UC69x5qMMkDWjaYx3VbSKJ2JUVPDYJWl5k/n
	w4nrJ7FnKjP8SdrzyRXhDII5Kg5ibJ0NDjz4m/f1lI7B3aEHdVacM0XBo2mpMY3N5nAp
	Qrmw==
X-Gm-Message-State: AGRZ1gJTvFu4d8FQu48qY5HhPTViWx0JBv2TFYskoKGxvOQKwDfr5Qh4
	HqI7yvGCHaQFO3acTLemyPMWYB2rUW/P41y5Uh4t7KTnRQUGCg==
X-Google-Smtp-Source: AJdET5cWhyVTtSQwOIpD6d2x6bRc+/h7v/A0l+Eu5Ol9bUOyKaVY44sFIsofyU8NuDdu3DEJTkk/oF4fHFjokcvROcc=
X-Received: by 2002:a5e:d510:: with SMTP id
	e16-v6mr6424384iom.291.1542302955417; 
	Thu, 15 Nov 2018 09:29:15 -0800 (PST)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Thu, 15 Nov 2018 09:29:04 -0800
Message-ID: <CAPoiz9z_LvL=ZwH6meNSAR1GbXgtjsdj2f3C4F3c2dTu7Q3W-w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: QEMU kernel defconfigs
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
X-List-Received-Date: Thu, 15 Nov 2018 17:29:17 -0000
Content-Type: text/plain; charset="UTF-8"

I'm having difficulty determining where the kernel defconfigs are
defined and located.  I'm specifically looking for the qemuarm and
qemuarm64 kernel defconfigs.  I've looked at the relevant
documentation, https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
and
no SRC_URI with defconfig or KBUILD_DEFCONFIG_KMACHINE defined in
meta/recipes-kernel/linux/linux-yocto_4.18.bb

What am I missing?

Also, "A defconfig file is simply a .config renamed to "defconfig"."
is not correct.  A properly created defconfig is created by `make
savedefconfig` and is a minimal file which only has the delta between
the desired config and defaults from the Kconfig files.
https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#creating-a-defconfig-file

Thanks,
Jon

