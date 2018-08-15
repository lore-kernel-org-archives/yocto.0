Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8A6E00726; Wed, 15 Aug 2018 12:08:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A8DFE00566
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 12:08:35 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id h1-v6so1367013eds.1
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 12:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=h6NblxwEXtOrmDCbmf/kqKVYipxZzlkNNlph0WQX5HY=;
	b=VYQfcWWL9uGMGbLRH5RndeTrSqiAQMdicHn+VKTOMJjA+zcPIIfwwUhDeO/bOhqH1t
	JKPLIigFgTmX2NNJgTFdLkxQPiGs3jMsL7CnWxALNbllA7ua8tCZw5z++/ku5dKjlplk
	dVcxYGQnM29hvhF9s+7TdeBBMUTZJ2JZZGh7QypYAd4GHbhmyOACrtkC1rtJM7QnGvVN
	wMW8AW2f4/5Ws2vR3260IuuDWRAKY+lYUuFOLVhfFr1RTXLSMSH+F3pTkI2iX9Bdv3s8
	vqpWP4kBAbvS5/Uklfg2QxpZHqmC47hWprLJeBjL9YrdZKC/dPqzxzvi5qy7MnY+zoc4
	Bj1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=h6NblxwEXtOrmDCbmf/kqKVYipxZzlkNNlph0WQX5HY=;
	b=UqMBwA3LoiC7SsqcxQRIWBe3iavLrdWpUQFps0ZN9V54GGInJo65pUCyOWA++FB3Fu
	uE0Z9EaFtvtzCC3WdYrtwSzjoz+YMEyQGKDj/av3+eIZJtcTRfPO3BZjofaxgE8t1cvq
	IB3wQPy1HPa9KUWKXcalXROY380CYvz9GAoXvbJSArrFjEGskbG1y2prnTCT2WX+5Cyi
	0IoCrg30hRaMDWEcIbD0d3YLR43HIjDz9a15c6mFnvq9nmhOt4+sNA9VIvfYG63bByQj
	7lbxArmCK5VswZauPHFdbtWn0LbmBn3PxIEUA2YLrwyqFP/K/6pQT+/LHRluU0XiZ9RK
	YgXA==
X-Gm-Message-State: AOUpUlElLeZpXTpPIuEbyucT44Dtg4KCQcJthtluelwJTI8GaNrCbInZ
	KpOxRg8W5qBAvYd+DpdtfpfMGI1V
X-Google-Smtp-Source: AA+uWPysyTzDLSxEr4GnXJE0P+xQNpLhGGqiSNj3aIfOgmrph9KZKi8jygGhVWSEFTbec/LW4cGkXw==
X-Received: by 2002:a50:a5d8:: with SMTP id
	b24-v6mr34290774edc.235.1534360114736; 
	Wed, 15 Aug 2018 12:08:34 -0700 (PDT)
Received: from Saturn.local.all ([195.48.14.138])
	by smtp.gmail.com with ESMTPSA id
	a15-v6sm25193476edd.47.2018.08.15.12.08.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 15 Aug 2018 12:08:33 -0700 (PDT)
Message-ID: <1534360113.4797.3.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: Steve Pavao <stevep@korgrd.com>, yocto@yoctoproject.org
Date: Wed, 15 Aug 2018 21:08:33 +0200
In-Reply-To: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Subject: Re: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 19:08:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi

Am Mittwoch, den 15.08.2018, 02:47 -0400 schrieb Steve Pavao:
> There seems to be a problem with the core-image-minimal bitbake for raspberrypi3-64 target at head
> of sumo in all repos.  I wonder if it’s also a problem for the raspberrypi3 target.
> 
> No kernel modules appear in the .manifest, and no kernel modules are put into the sdimg.  It’s
> hard to believe it’s true, but that’s what I'm seeing.
> 
> The problem does NOT occur for the rpi-hwup-image bitbake, which is actually deprecated in poky
> 2.5/sumo.
> 
> Before you retire the rpi-hwup-image bitbake target, will you please make sure that the kernel
> modules from the core-image-minimal build make it into the .manifest and therefore into the sdimg?
> 
> Please let me know where to log this issue, so I can send you the .manifest diffs, some ls command
> output showing the large size difference between the core-image-minimal and rpi-hwup-image sdimg
> files for identical builds, and perhaps some file listings to show that one of the builds contains
> kernel modules (rpi-hwup-image) and the other does not (core-image-minimal).
> 
> Steve Pavao
> Korg R&D
> 

Note that the 'kernel-modules' package is one of the packages built by a kernel recipe.
It is a meta package which RDEPENDS on all kernel module packages built by your kernel
configuration. So adding that package to your image should do the trick.

Max

