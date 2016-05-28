Return-Path: <henry@kittyhawk.aero>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAEA7E00E3C; Sat, 28 May 2016 12:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.178 listed in list.dnswl.org]
Received: from mail-yw0-f178.google.com (mail-yw0-f178.google.com
	[209.85.161.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F622E00522
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:17:01 -0700 (PDT)
Received: by mail-yw0-f178.google.com with SMTP id h19so133571016ywc.0
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kittyhawk-aero.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=93qqRbzCcKv9BziviwgkGvadktTamlIUql06ZAySP2Y=;
	b=JVWYxrqSvMQlsJnCkf8f8462EdLshod560feusrtl7Wl2uKdbiTyxOYTvDdtOfvLSX
	I1LCS5IE217J3zsrTvDeDaqG3L3Wr8IdLFNk9BjjvMIzsjGqF972aVNH61MMJL5pF/wO
	zkE4zYYtlGj4R9NxGXBcOA622Z+jdkhwjRJcZofMbYhUtDWskKTlanXI5JKpnKBISAcD
	WfxYn4lC3YPo+YDqEPMuH2RW8CwSgl7D7e1oShQ5wuXN1/OCcbSeISXowXtMgTiTRWaS
	DqtHsMJJ3CIV6NU61MbtgTP7Fyjd/zsFpT7LuRgKP23w7b3y7FpmBUnAGhFT1axMEfXf
	cdDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=93qqRbzCcKv9BziviwgkGvadktTamlIUql06ZAySP2Y=;
	b=LVKnzgtgmth/8Yv7j+Q42TvkIIcPNqXrF/RxkT9Q9jnLv3GUkUSJCjQLTUfjFKFga9
	n+i3DbdFmwq3XzFXezQ8acY0kujSCJMwmzRpsxcTmoaxa4zuS9zpV68v87H9h7x9LkDg
	+IaF8HpPdFj/mjJORJZJ4aoOFqZj5DtJJ81yo48HYcUlYrB/rV2LSNGx/7OKzC0bQ6Xl
	qsNT61Jdr33RCIwTsc8z8QKNzLSsSCcGAuPSVTHXeoOZ2awXqfkeBW97I1A5GAi9EH+h
	9UsKJRhUSxu84aRCdcnl1tWIhRLUceWCEB8vQ9byOA9K8vo/71OBeOXF3LaVayTPpCKr
	xUoQ==
X-Gm-Message-State: ALyK8tJYsZ0rQYh2I0/KV+ejuiDb1Yx7DKW3gReZA6qyFV9Zg0t1+fl2wvNvbkHNDshIAHH6rl1+KUI16SWHD47R
MIME-Version: 1.0
X-Received: by 10.129.20.214 with SMTP id 205mr2541935ywu.161.1464463020804;
	Sat, 28 May 2016 12:17:00 -0700 (PDT)
Received: by 10.129.89.8 with HTTP; Sat, 28 May 2016 12:17:00 -0700 (PDT)
Date: Sat, 28 May 2016 12:17:00 -0700
Message-ID: <CABvT5oUNfyd1Q8z9cZeH4Xj=rttdr2D_h94=WoCQLkesv42PVw@mail.gmail.com>
From: Henry Hallam <henry@kittyhawk.aero>
To: yocto@yoctoproject.org, hongxu.jia@windriver.com, 
	Robert Yang <liezhi.yang@windriver.com>
Subject: Problem baking 'perl' on Debian-unstable
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
X-List-Received-Date: Sat, 28 May 2016 19:17:04 -0000
Content-Type: text/plain; charset=UTF-8

Hi folks,

I know Debian unstable is not a tested/supported distribution, but it
worked fine for me for the past 6 months until recently, and I figure
we'll want Yocto to work on Debian Stretch when it's released next
year.  I suspect what I'm seeing is a Debian bug rather than a Yocto
one, but I'd love some help tracking it down so I can report it.

I've narrowed the reproducing test case to the following:

* Set up host with an up-to-date Debian unstable distribution on amd64
* Checkout a clean copy of 'poky', either on the 'krogoth' or 'jethro'
branch (I've tried yocto-2.0.0, -2.0.1 and -2.1 as well as the tip of
jethro, krogoth and master)
* source oe-init-build-env
* Edit local.conf to set MACHINE to qemuarm
* bitbake perl

The build fails at the split_and_strip_files function of the
do_package step.  The target binutils
arm-poky-linux-gnueabi-{objcopy,strip} fail to process
.../package/usr/lib/perl/ptest/generate_uudmap because it is an x86-64
executable and those tools are presumably only built to be able to
handle target (ARM) binaries.  I'm not sure whether generate_uudmap is
supposed to be built for native or target architecture.

https://gist.github.com/henryhallam/de0d2c8ac99bab2c6b9f0ecd41dd4c72

I've reproduced this on several different systems running up-to-date
Debian Unstable, and confirmed that everything builds correctly on a
VM running Debian Stable (Jessie).

I'm somewhat at a loss as to how to proceed further.  I did try
rolling back the 'perl' Debian package from its current version
5.22.2-1 to 5.22.1-10 and corresponding dependencies, which made no
difference.  I'm not sure the host system perl is relevant at all,
though.

Any advice appreciated,

Henry

