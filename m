Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4A2FE00ED9; Tue, 19 Apr 2016 10:45:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57EADE00D1C
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 10:45:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u3JHjKUI025624
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 19 Apr 2016 10:45:20 -0700
Received: from server.local (147.11.116.31) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 19 Apr 2016 10:45:19 -0700
To: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A4F7@EU-EHV-EXM01-P.global.tektronix.net>
	<CADkTA4P1zrxf2Ob7NnLKRhm1XjA9AVFj=aD_bL9nhZZP-2a1QA@mail.gmail.com>
	<14E4216AB3B3624BB1E80BC692D0F413D8D43038@EU-EHV-EXM01-P.global.tektronix.net>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <57166EAF.9010808@windriver.com>
Date: Tue, 19 Apr 2016 13:45:19 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <14E4216AB3B3624BB1E80BC692D0F413D8D43038@EU-EHV-EXM01-P.global.tektronix.net>
Subject: Re: module do_configure depends on kernel .config and headers
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
X-List-Received-Date: Tue, 19 Apr 2016 17:45:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-18 6:16 AM, Vajzovic, Tom wrote:
> Hi Bruce,
>
> From: Bruce Ashfield
> Sent: 15 April 2016 18:15
>> On Fri, Apr 15, 2016 at 12:02 PM, Vajzovic, Tom wrote:
>>>
>>> I am using a meta layer provided by a SOM manufacturer.
>>> They have a recipe which sets:
>>
>> What branch are you using ?
>
> Fido.
>
>>> inherit module
>>>
>>> export KLIB_BUILD="${STAGING_KERNEL_DIR}"
>>> export KLIB="${D}"
>>>
>>> and then its do_configure script calls make, and the Makefile
>>> expects $(KLIB_BUILD)/.config to exist, and the kernel headers to be
>>> in the same place.
>>>
>>> This sometimes succeeds and sometimes fails, which I presume is to
>>> do with the order that the other entries in the run-queue are
>>> executed.
>>>
>>> I thought that this might be because the dependency on the kernel
>>> .config and headers is not correctly recorded in the recipe.
>>>
>>> I added a .bbappend file to the recipe in my own layer which
>>> contains:
>>>
>>> do_configure[depends] += "virtual/kernel:do_shared_workdir"
>>>
>>> But this has not resolved the problem.  I have used
>>> bitbake-layers to verify that my bbappend is being applied.
>>>
>>> So my questions are:
>>>
>>> Is $(KLIB_BUILD) the correct place to look for the kernel
>>> .config and headers?
>>
>> The .config is in: STAGING_KERNEL_BUILDDIR, that also has any
>> generated files as part of the build.
>>
>> The headers are in the shared_workdir, as you had found:
>> STAGING_KERNEL_DIR
>
> I have a copy of .config in both STAGING_KERNEL_DIR and
> STAGING_KERNEL_BUILDDIR.  They differ only on that the latter has
> CONFIG_LOCALVERSION added.  Is this normal?  Can I depend on the
> copy in STAGING_KERNEL_DIR? I think that is what the configure
> script is currently using.  How else might it differ?

They shouldn't really differ at all, but there's been issues with
the timing on when the shared directory is populated, so there
may be a lurking race on fido.

I'd count on the one in the kernel_builddir, but I imagine that
either will work in a pinch.

>
>>> What is the correct way to record the dependency in the recipe?
>>>
>>> Why isn't this done in module.bbclass?  Wouldn't all modules depend
>>> on the kernel headers?
>>
>> It pretty much does, with this in module-base.bbclass:
>> do_configure[depends] += "virtual/kernel:do_compile_kernelmodules"
>
> In my Fido modules-base.bbclass I have exactly:
>
> do_configure[depends] += "virtual/kernel:do_shared_workdir"
>
> So this means that my bbappend is a no-op (I only looked as far as
> modules.bbclass; I missed modules-base).

Hmm. So we are no further ahead.

Bruce

>
> Thanks,
> Tom
>


