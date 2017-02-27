Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8524BE00970; Sun, 26 Feb 2017 23:29:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42AEDE007BA
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 23:29:14 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id n76so3507253ioe.1
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 23:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=97pKis5zeRJ8XtAwHrfRCyZTY/HAxuML5snWY29COGs=;
	b=EUrF0LQVUL/VdpUtgvxmihGzIyTn8m+FT90t63U4zZSpDY7w5GbcQg3AWc231V0kkd
	2BLPOWWgRezUyInEpPiZtDIQa/jven+gI6aiu1wfgiXweUpgaxrhrU7/TkhQS365i3hL
	jgFP2qtVMszoCu4IPNI9n3rlMlSj52/p+c7W1O8pFGmU2J0fVRVdgtZlc6a/5814tENH
	xhavQ17EMuluz+6S/y+lDD7znbWWNCnpd/FdigK+mAwwqN4H5TywIYLolIUNUR6bbpbO
	xPkYMrOdMJVO0STvW0BvTPVKYs7E8sI7HrIBrXTrmJbDCf4rJ5rY1XIcoU7v2IIe1Cyd
	DeAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=97pKis5zeRJ8XtAwHrfRCyZTY/HAxuML5snWY29COGs=;
	b=Ajp5c8AMGpJ/Y+Ce/q9gMffvra7II3z9zNA+z3NrtPK0X7q3DPPKv/DQmXggFgl1o9
	8lUfmg/dt6M1LYZVg8CIQ9f8W8bcXizf+trA8LcMiCv63Ff+xkOe7QwIuB+qWTxgXyw7
	C9Xd547vePsV3yFplzKnQk5+Z5YhqIEbZEr7RALkzTr5gCCiXSkYJ+39UfZeJzEbgacs
	fSXTJHoxyCgaah1l6ta3H+k12KXqr9a07TKehDa2WT+ducjU9YwNuI1DsiakFKTlpm39
	pM1cltYz3TbdZE1/gatP4Ji5oQmpRXMv16ZPMXPGMTOBWXCLSN8eSIuLZ9kpV36vX7AY
	2H3A==
X-Gm-Message-State: AMke39mt52qYWIhTAjObxugWimwXlUT0lt8XhrKjBKxVkn0CdLWewk6G30tiY4Bt9rzG+w==
X-Received: by 10.107.59.147 with SMTP id i141mr15097720ioa.152.1488180553999; 
	Sun, 26 Feb 2017 23:29:13 -0800 (PST)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id 20sm4246255iod.0.2017.02.26.23.29.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 Feb 2017 23:29:12 -0800 (PST)
Date: Mon, 27 Feb 2017 02:29:10 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Message-ID: <20170227072910.GA13399@linux-uys3>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-5-twoerner@gmail.com>
	<CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com>
	<f2c046b0-3685-c3c1-0da2-325d90919270@rock-chips.com>
	<CAJrj+DNXdQ3E0m9njhnc6FHhDhTocb=NA3PTXQPfJPN=DayB0g@mail.gmail.com>
	<CAHUNapRFYroR8SVZUDZ2Z=h_yURYUv7y8-DevVVvpcX=55G8Vg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapRFYroR8SVZUDZ2Z=h_yURYUv7y8-DevVVvpcX=55G8Vg@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Jacob Chen <jacob2.chen@rock-chips.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 4/5] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Mon, 27 Feb 2017 07:29:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

> what about use BOOT_IMG = "boot-${MACHINE}-${DATETIME}.img" instead? That
> will leave the previous build for debug and avoid trouble.

Using boot-${MACHINE}-${DATETIME}.img doesn't work, it leads to the following
errors:

	ERROR: When reparsing /z/rockchip/master/layers/openembedded-core/meta/recipes-core/images/core-image-minimal.bb.do_image_rockchip_gpt_img, the basehash value changed from 7150ddd4bffcc76eed6ec85216596f3b to 2c30fda706826e991aaf953180edc3b2. The metadata is not deterministic and this needs to be fixed.

