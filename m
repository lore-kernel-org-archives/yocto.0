Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E34EDE00D6A; Thu, 24 Oct 2019 06:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [198.47.23.249 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C9FE00C46
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 06:43:10 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9ODh7nG066506;
	Thu, 24 Oct 2019 08:43:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1571924587;
	bh=jJbX8MxrzzYBFntA5l8VqKEFAaPg+UrZVs36aMCcSME=;
	h=Subject:To:References:CC:From:Date:In-Reply-To;
	b=KaD/1SFUrh07KpO2txEuNGUbXkvbzrY/avnGIJLYJqknyuwkQpGOjhfFU0Dvo3esf
	tDFm3SpCqndN5d1XSHF/04q8Zn28GU2eOLcoP5OdyrtuBQKyugxb9qP8oDt+LGNRU9
	rkEHAQBuE5MT6YB+VyO0EmZ5J2lIfyExp1ysUCGU=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9ODh7VM040570
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Oct 2019 08:43:07 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE108.ent.ti.com
	(10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5;
	Thu, 24 Oct 2019 08:42:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
	(10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
	Frontend Transport; Thu, 24 Oct 2019 08:42:57 -0500
Received: from [158.218.117.100] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9ODh7sV023831;
	Thu, 24 Oct 2019 08:43:07 -0500
To: <richard.purdie@linuxfoundation.org>, "Westermann, Oliver"
	<Oliver.Westermann@cognex.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Dmytriyenko, Denys" <denys@ti.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
From: William Mills <wmills@ti.com>
Message-ID: <95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
Date: Thu, 24 Oct 2019 09:43:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
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
X-List-Received-Date: Thu, 24 Oct 2019 13:43:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Richard,

On 10/24/19 7:01 AM, richard.purdie@linuxfoundation.org wrote:
> On Thu, 2019-10-24 at 10:03 +0000, Westermann, Oliver wrote:
>>> On Wed, 2019-10-23 at 15:34 +0000, Richard Purdie wrote:
>>>> On Wed, 2019-10-23 at 11:23 +0000, Westermann, Oliver wrote:
>>>> Hey,
>>>> [...]
>>>> Any suggestions on what I'm doing wrong or how to debug this
>>>> further?
>>> Sounds like the sysroot filtering code doesn't know about this
>>> directory and therefore doesn't pass it through to the recipe
>>> sysroot?
>>
>> Sorry to ask dumb questions, but what do you mean by "this
>> directory"?
>> The toolchain directory created by the TI recipe? Shouldn't that be
>> handled by FILES_${PN}?
> 
> If its a target recipe, FILES makes sense.
> 
> If its a native recipe, there are no packages and therefore FILES
> doesn't make sense.
> 
>>> The recipe you link to is for an on target compiler, not one in the
>>> sysroot.
>>
>> Again, might be a stupid missunderstanding on my side: The recipe I
>> linked extracts a precompiled toolchain that is suitable only for
>> x86_64 systems and  allows a "native" package. From my current
>> understanding, a native package is to be used on the build host,
>> which is what I'm intending to do here.
> 
> You are correct, that recipe disables the target version and appears to
> provide a native binary. I can't actually see how it can work though.
> Can you confirm that recipe does work?
> 

Denys can you confirm or add context?

>> I managed to sucessfully add a native recipe for the NXP code signing
>> tool (which is only provided as a precompiled binary as well) which
>> works as expected.
> 
> If you install the binaries into ${bindir} they will. If you place them
> somewhere else which the system doesn't know about, they probably
> won't.
> 
> There are ways to make alternative locations work but I don't see any
> of that in the above recipe.
> 
>>> I'm actually a little surprised you can't use our standard cross
>>> compiler assuming this M4 core is on an ARM chip? It should be a
>>> case
>>> of passing the right options to the compiler to target the M4?
>>
>> I'm totally up for any infos on how to do this! I did google around
>> for recipes for examples that build a non-linux binary using yocto,
>> but I couldn't really find anything or any documentation. But maybe
>> my searchterms (along "build baremetal  arm binary using yocto") were
>> off target. Can you point me at documentation, examples,
>> searchterms..?

I started looking at this thread because I had the same questions.  Is
it possible to make a recipe depend on another version of GCC and
restart the whole GCC build process again with a different config.

Or does this need multi-config?

This is the question I was trying to ask the other day.

> 
> I'm saying I don't think you need a second toolchain. I think you could
> use your existing arm toolchain with the right compiler options.
> 
> See https://stackoverflow.com/questions/28514507/what-makes-bare-metal-tool-chains-special
> 
> So you'd just add the right flags to the compiler, something like:
> 
> XXX-gcc -mcpu=cortex-m4 -march=armv7e-m -ffreestanding -nostdlib -nostdinc
> 
> i.e. tell it which processor to target and not to use standard
> libraries/includes.
> 
> There isn't anything that special about a baremetal compiler except it
> sets some different default flags and is missing the library support.
> 

Really??

Lets start with the fact that the ARM binary toolchain has been tested
with M4 cores.

Then understand that you will need to supply your own gcc compiler
helpers and all stdc functions even the ones that port well like strlen
and memcpy.  (Because everyone should embedded their own unoptimized
memcpy in their projects.)

This works for the kernel and u-boot but they were designed for this and
have many eyes on their version of memcpy etc.  They are also running on
the same CPU core as the Linux user space.

Given this I can believe this would work for CLang/LLVM if M4 support
was enabled at build time.  I am not convinced for GCC.

If the above really works then why does gcc insist on being compiled
again after the c library has been compiled?  I have asked and never got
an answer that I understood.  I have been told that it looks at the c
library headers and changes what it builds into the compiler.  Does all
that magic go away with just -nostdinc and -nostdlib?

I know this works for the kernel but targeting an RTOS or bare-metal for
a very different core would make me nervous.  Especially true if the M4
would need to link libraries that were built outside of OE.

I know I am pushing back hard but I am also hoping you will convince me
I am wrong.

Thanks,
Bill

