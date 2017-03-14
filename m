Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D661FE00A48; Tue, 14 Mar 2017 13:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B24EE009DA
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 13:16:46 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20170314201644547_0484
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 20:16:44 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [174.118.92.171] (port=46332 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cnss2-0006tv-Vj
	for yocto@yoctoproject.org; Tue, 14 Mar 2017 16:16:39 -0400
Date: Tue, 14 Mar 2017 16:16:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
Message-ID: <alpine.LFD.2.20.1703141608001.3664@localhost.localdomain>
References: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: Re: make[2]: *** No rule to make target 'fitImage'. Stop.
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
X-List-Received-Date: Tue, 14 Mar 2017 20:16:49 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 13 Mar 2017, Robert P. J. Day wrote:

>
>   i'll start a new thread to focus on just this issue. again, building
> core-image-minimal for mpc8315e-rdb, adding this to local.conf:
>
>   INHERIT += "kernel-fitimage"             <-- do i need this line?
>   KERNEL_IMAGETYPES_append = " fitImage"
>
> anyway, run:
>
>   $ bitbake virtual/kernel
>
> and eventually get:
>
>   make[2]: *** No rule to make target 'fitImage'.  Stop.

... snip ...

  i would still love to figure out how to generate a simple FIT image
when building core-image-minimal for mpc8315e-rdb.

  first, based on what i read, my first attempt was to add the
following line to local.conf:

  KERNEL_IMAGETYPES_append = " fitImage"

however:

  $ bitbake virtual/kernel

  ... snip ...

  | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage
  CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
  | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E fitImage
  CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd

  ... snip ...

  | make[2]: *** No rule to make target 'fitImage'.  Stop.
  | Makefile:150: recipe for target 'sub-make' failed
  | make[1]: *** [sub-make] Error 2
  | Makefile:24: recipe for target '__sub-make' failed
  | make: *** [__sub-make] Error 2

which makes sense since there is no such target, "fitImage", in the
kernel build structure.

  what am i screwing up here? how do i generate a simple FIT image?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


