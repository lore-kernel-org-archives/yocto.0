Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7FB5E00DD5; Wed, 14 Aug 2019 18:32:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06CCBE00D64
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 18:32:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7F1W1bD005390
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Aug 2019 18:32:02 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 14 Aug 2019 18:32:01 -0700
To: Andy Pont <andy.pont@sdcsystems.com>, Yocto-mailing-list
	<yocto@yoctoproject.org>
References: <emef36a268-6066-4af6-82a6-f8cb04f9c1a8@andys-imac.leeshillfarm.local>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <bd399f66-6a9f-ef3b-c822-ccbb3bf62505@windriver.com>
Date: Wed, 14 Aug 2019 21:32:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <emef36a268-6066-4af6-82a6-f8cb04f9c1a8@andys-imac.leeshillfarm.local>
X-Originating-IP: [172.25.44.5]
Subject: Re: Init stops working on second boot cycle
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
X-List-Received-Date: Thu, 15 Aug 2019 01:32:09 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 8/13/19 6:21 AM, Andy Pont wrote:
> I’ve got a strange issue and I don’t know whether it is a Yocto related 
> issue, a kernel issue or something else completely…
> 
> I have an image that is built with thud (2.6.2) using meta-atmel for the 
> SAMA5D2-Xplained reference board.  I deploy the resulting .wic file to 
> an SD card and boot the reference board and all is OK.  I can log into 
> the terminal, upload files, etc. and again all seems to be well.
> 
> If I press the reset button on the hardware platform, on the next boot 
> cycle it always stops with the following being last messages being 
> displayed:
> 
> Freeing unused kernel memory: 1024K
> Run /sbin/init as init process
> INIT: version 2.88 booting
> 
> The system hasn’t completely hung as the occasional kernel message 
> appears but the user space init process (sysvinit) doesn’t seem to be 

What sort of occasional kernel message and do they eventually stop?

> working at all.  If I put the SD card into a Linux desktop machine the 
> file system on it is still valid and the changes that I have made are 
> still present.
> 
> Anyone got any ideas as to what is screwing it up?

No but here are some generic debugging tips.
In no particular order, have you tried:

1) setting kernel boot options such as:
     init=/bin/bash

    Does that reboot consistently when you press reset?

2) getting sysvinit to start an emergency shell?
    https://manpages.debian.org/testing/sysvinit-core/init.8.en.html
    I don't know how you'd do that for your board but is
    should be possible.

3) single user mode:
    https://wiki.gentoo.org/wiki/Sysvinit#Single_user_mode

4) Does the problem happen if you run 'shutdown -r now'
    rather than pressing the reset button?

Good luck,

-- 
# Randy MacLeod
# Wind River Linux

