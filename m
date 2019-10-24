Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0A5DE00D6A; Thu, 24 Oct 2019 07:30:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [198.47.19.141 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B179CE00C46
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 07:30:38 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9OEUaF3082290;
	Thu, 24 Oct 2019 09:30:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1571927436;
	bh=fxK4j/RzwAhuEe02HmFvBKF+x1DnX3HdsfchwjGVQdM=;
	h=Subject:To:CC:References:From:Date:In-Reply-To;
	b=PPOE6V3GmET1XTX4ZZrqrpTuktSlU00BFBghY1P+JtIqYR8249+2dYPAREu1Ok/FX
	wiysh9Kf5zW+byDYG6CtpMq7YBTLG+wZdXT4cCpYJZmwjF2pzw6WTvZjfkNR7+CBUi
	Co33fZWaA+ZZZ3tlmNvJohtg5g4orppx8xPed8xk=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9OEUZZu114098
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Oct 2019 09:30:36 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE112.ent.ti.com
	(10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5;
	Thu, 24 Oct 2019 09:30:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
	(10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
	Frontend Transport; Thu, 24 Oct 2019 09:30:25 -0500
Received: from [158.218.117.100] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9OEUZcm111082;
	Thu, 24 Oct 2019 09:30:35 -0500
To: <richard.purdie@linuxfoundation.org>, "Westermann, Oliver"
	<Oliver.Westermann@cognex.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Dmytriyenko, Denys" <denys@ti.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
	<95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
	<f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
From: William Mills <wmills@ti.com>
Message-ID: <03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
Date: Thu, 24 Oct 2019 10:30:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: [EXTERNAL] Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 14:30:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 10/24/19 10:02 AM, richard.purdie@linuxfoundation.org wrote:
> Hi Bill,
> 
> On Thu, 2019-10-24 at 09:43 -0400, William Mills wrote:
>> I started looking at this thread because I had the same
>> questions.  Is it possible to make a recipe depend on another version
>> of GCC and restart the whole GCC build process again with a different
>> config.
>>
>> Or does this need multi-config?
> 
> A different version of gcc would be most easily handled with
> multiconfig, yes.
> 
>> This is the question I was trying to ask the other day.
>>
>>> I'm saying I don't think you need a second toolchain. I think you
>>> could
>>> use your existing arm toolchain with the right compiler options.
>>>
>>> See 
>>> https://stackoverflow.com/questions/28514507/what-makes-bare-metal-tool-chains-special
>>>
>>> So you'd just add the right flags to the compiler, something like:
>>>
>>> XXX-gcc -mcpu=cortex-m4 -march=armv7e-m -ffreestanding -nostdlib
>>> -nostdinc
>>>
>>> i.e. tell it which processor to target and not to use standard
>>> libraries/includes.
>>>
>>> There isn't anything that special about a baremetal compiler except
>>> it
>>> sets some different default flags and is missing the library
>>> support.
>>>
>>
>> Really??
> 
> As I understand it. I'm by no means an expert but I do my best with the
> OE toolchain recipes.
> 
>> Lets start with the fact that the ARM binary toolchain has been
>> tested with M4 cores.
> 
> Sure, I'm not claiming this is a well travelled path. I don't see why
> it shouldn't work though, or why it makes much difference with the
> right compiler options.
> 
>> Then understand that you will need to supply your own gcc compiler
>> helpers and all stdc functions even the ones that port well like
>> strlen and memcpy.  (Because everyone should embedded their own
>> unoptimized memcpy in their projects.)
> 
> Right, that is by definition baremetal.
> 

Well not really.  All the "bare-metal" toolchains I have used come with
a proper libgcc and some conig of newlib that at least gets you usable
strlen and memcpy etc.  How much of the rest of it is usable on your
platform is variable.

This is true of the toolchain Oliver is pointing at and has been true
back to 2007 when I was using codesourcery releases.

>> This works for the kernel and u-boot but they were designed for this
>> and have many eyes on their version of memcpy etc.  They are also
>> running on the same CPU core as the Linux user space.
>>
>> Given this I can believe this would work for CLang/LLVM if M4 support
>> was enabled at build time.  I am not convinced for GCC.
>>
>> If the above really works then why does gcc insist on being compiled
>> again after the c library has been compiled?  I have asked and never
>> got an answer that I understood.  I have been told that it looks at
>> the c library headers and changes what it builds into the compiler.
> 
> I've never understood that either and looked into it. Back in December
> last year, we dropped gcc-cross-initial:
> 
> http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/gcc?id=0afd3ac3ada35dd986aaf3be41d7177dc6b71ade
> 

Cool, good to know.

> After that, YP does no longer rebuild gcc after building the c library,
> there is one cross toolchain. That one toolchain is used for all
> different arm targets, its only architecture specific.
> 
> The only thing we do rebuild is libgcc, which is why there is still a
> libgcc-initial and a libgcc, the latter being built after libc. That
> much kind of makes sense.
> 
>>   Does all that magic go away with just -nostdinc and -nostdlib?
> 
> I believe so, yes.
> 
>> I know this works for the kernel but targeting an RTOS or bare-metal
>> for a very different core would make me nervous.  Especially true if
>> the M4 would need to link libraries that were built outside of OE.
>>
>> I know I am pushing back hard but I am also hoping you will convince
>> me I am wrong.
> 
> You're probably right to have some concerns in that its not a well
> travelled path. There are libc specifics encoded into libgcc but I
> can't quite see where they change how gcc behaves other that the
> default option selection.
> 
> Equally there may be something I'm missing.
> 
> For full disclosure, gcc is built against linux-libc-headers wherease
> with baremetal it would be built without headers. I believe that
> changes the default options gcc uses for compiling but not the way the
> compiler itself works.

"baremetal" would be compiled against some config of newlib headers.
newlib has its own issues and many config choices (you get to pick your
threading model: none, bad, or hacky).  For TI-RTOS I think we rebuild
it with a different thread model.

Thanks,
Bill

