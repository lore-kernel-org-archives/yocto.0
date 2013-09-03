Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4059CE01440
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 20:20:55 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id x10so5434683pdj.29
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 20:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=J5wjF6F7uGpHo20QxPGHtHbKZCY3JgQiH/WhOXnV73U=;
	b=qqWxYGik/9bXLbXxlXLVYpSFhnkA20quovh44ZpykmfOBIzJ/UAdkVy6dDam0dXZrs
	aH5vAvjFf6oxc16n1vbB+yNGjKQ26SheKx347jIRPYMnlxdGQeldnfCLISfC+pv71C72
	O7y3rSVmDEBDklIJPCqW/3JZMffEtjGrQNfCCBEdqew/we0q5URMe8v1lRKapPgWXW5N
	PXM6190WQBldWFFN34aJoX+tV1+6uKugFhA1/WzmN25FmRg57TsWXx3BIMIpk8I7lGn4
	kzMbasserRPlI5bi209rVJQG4knPMyw5gRziPgP8936sNHCdjvXl6IkO4Kn8MvhdLPQg
	iuNA==
X-Received: by 10.68.228.230 with SMTP id sl6mr28498601pbc.98.1378178455199;
	Mon, 02 Sep 2013 20:20:55 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225]) by mx.google.com with ESMTPSA id
	oc10sm19258825pbb.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 20:20:54 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52255596.8040705@gna.org>
Date: Tue, 03 Sep 2013 15:20:54 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
	<1377881765.14029.4.camel@dvhart-mobl4.amr.corp.intel.com>
	<52235821.3070302@reliableembeddedsystems.com>
In-Reply-To: <52235821.3070302@reliableembeddedsystems.com>
Subject: Re: Embedded Linux with Xenomai support
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
X-List-Received-Date: Tue, 03 Sep 2013 03:20:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/13 03:07, Robert Berger wrote:
> Hi,
>
> On 08/30/2013 07:56 PM, Darren Hart wrote:
>
>>> Is there any Linux distribution based on the Yocto project that lets
>>> me configure my embedded kernel with Xenomai? If not, has anybody got
>>> any experinece in adding Xenomai to the Yocto project?
>>
>> I am not aware of anyone using Xenomai with Yocto to date (although that
>> doesn't mean nobody is). Our Real-Time focus has been on the PREEMPT_RT
>> Linux kernel, which we do have recipes for.
>
> googling for meta-xenomai reveals:
>
> [1][2]
>
>>
>> It appears as though Xenomai has changed quite a bit over the years. If
>> my quick re-reading of their material is correct, the Xenomai core is
>> implemented as a Linux kernel module which can built in to a standard
>> Linux kernel?
>
> ... kind of ...
>
> kernel space:
>
> You need to apply a patch to a certain kernel version and configure the
> kernel afterwards.
>
> So for an ARM architecture there is a patch for the 3.8 kernel[3]
>
> user land:
>
> But unlike with preempt-rt you also need to build the Xenomai userland
> stuff.
>
>>
>> Out of curiosity, what sort of real-time requirements do you have?
>>
>
> That's a good point. Shameless self promotion [4].

Does your RT-threads have access to the full linux userland?
I'm thinking about D-BUS comms, Qt framework, networking stuff, ...
Or do they live in their own shell and communicate with the non-rt world 
via a dedicated system?
As well, have you tried/use it in a multi core context, where one core 
runs linux and the other one a RT kernel.

Regards,
Chris

>
> Regards,
>
> Robert
>
> [1] https://github.com/nojgosu/meta-xenomai
> [2] https://github.com/DrunkenInfant/beaglebone-xenomai
> [3]
> http://git.xenomai.org/?p=xenomai-head.git;a=tree;f=ksrc/arch/arm/patches;h=c6045f00819318970d6bba65c397609052c9414e;hb=HEAD
> [4] http://www.reliableembeddedsystems.com/pdfs/2010_03_04_rt_linux.pdf
>
>
> ..."A language that doesn't affect the way you think about programming
> is not worth knowing." - Anonymous
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


