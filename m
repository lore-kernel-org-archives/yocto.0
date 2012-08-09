Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC8DE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 11:15:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q79IFiD0008159
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 9 Aug 2012 11:15:44 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 9 Aug 2012 11:15:44 -0700
Message-ID: <5023FE4C.3060109@windriver.com>
Date: Thu, 9 Aug 2012 14:15:40 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
	<5023CE44.4060406@windriver.com>
	<D67422E7-DD4C-432B-97EE-A15487BCCB46@gmail.com>
	<5023D02E.6060908@windriver.com>
	<D8B825F7-AFEB-4F98-B3D4-AAE9CC62A85D@gmail.com>
In-Reply-To: <D8B825F7-AFEB-4F98-B3D4-AAE9CC62A85D@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Incorrect warning: preferred version linux-libc-headers_3.3 of linux-libc-headers not available (for item linux-libc-headers)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Aug 2012 18:15:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-09 02:14 PM, Elvis Dowson wrote:
> HI,
>
> On Aug 9, 2012, at 6:58 PM, Bruce Ashfield wrote:
>
>> In my experience .. it is always just the version, not the package that
>> you want to specify, so from all of those, you'd drop the gcc_ .. etc,
>> from the string.
>>
>> Bruce
>>
>>>
>>> PREFERRED_VERSION_gcc = "gcc_4.6"
>>> PREFERRED_VERSION_gcc-cross = "gcc-cross_4.6"
>>> PREFERRED_VERSION_gcc-cross-initial = "gcc-cross-initial_4.6"
>>> PREFERRED_VERSION_gcc-cross-intermediate = "gcc-cross-intermediate_4.6"
>>> PREFERRED_VERSION_gcc-cross-canadian = "gcc-cross-canadian_4.6"
>>> PREFERRED_VERSION_gcc-crosssdk= "gcc-crosssdk_4.6"
>>> PREFERRED_VERSION_gcc-crosssdk-initial= "gcc-crosssdk-initial_4.6"
>>> PREFERRED_VERSION_gcc-crosssdk-intermediate=
>>> "gcc-crosssdk-intermediate_4.6"
>>> PREFERRED_VERSION_gcc-runtime = "gcc-runtime_4.6"
>>> PREFERRED_VERSION_libgcc = "libgcc_4.6"
>
> If I set the values as follows:
>
> PREFERRED_VERSION_gcc = "4.5"
> PREFERRED_VERSION_gcc-cross = "4.5"
> PREFERRED_VERSION_gcc-cross-initial = "4.5"
> PREFERRED_VERSION_gcc-cross-intermediate = "4.5"
> PREFERRED_VERSION_gcc-cross-canadian = "4.5"
> PREFERRED_VERSION_gcc-crosssdk= "4.5"
> PREFERRED_VERSION_gcc-crosssdk-initial= "4.5"
> PREFERRED_VERSION_gcc-crosssdk-intermediate= "4.5"
> PREFERRED_VERSION_gcc-runtime = "4.5"
> PREFERRED_VERSION_libgcc = "4.5"
>
> I get the following warnings:
>
> NOTE: preferred version 4.5 of gcc not available (for item gcc)
> NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847

You need wildcards:

PREFERRED_VERSION_gcc = "4.5%"

So it will match on 4.5.4+svnr189152, which is the actual version of
the 4.5 toolchain you have available.

Bruce

> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 4.5 of gcc-cross not available (for item
> virtual/powerpc-poky-linux-gcc)
> NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-runtime not available (for item
> virtual/powerpc-poky-linux-compilerlibs)
> NOTE: versions of gcc-runtime available: 4.5.4+svnr189152
> 4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc not available (for item gcc)
> NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-cross not available (for item
> virtual/powerpc-poky-linux-g++)
> NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
> NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-cross-intermediate not available (for
> item virtual/powerpc-poky-linux-gcc-intermediate)
> NOTE: versions of gcc-cross-intermediate available: 4.5.4+svnr189152
> 4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
> NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-cross-initial not available (for item
> virtual/powerpc-poky-linux-gcc-initial)
> NOTE: versions of gcc-cross-initial available: 4.5.4+svnr189152
> 4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
>
> I've now got 3 gcc variants, 4.7 (in poky), 4.6 and 4.5 (in
> meta-openembedded), and it's automatically picking up 4.6, from the
> meta-openembedded/toolchain-layer.
>
> After gcc_4.6 recipe builds, and I attempt to re-run gcc_4.5, I get the
> following output:
>
> NOTE: preferred version 4.5 of gcc not available (for item gcc)
> NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 4.5 of gcc-cross not available (for item
> virtual/powerpc-poky-linux-gcc)
> NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-runtime not available (for item
> virtual/powerpc-poky-linux-compilerlibs)
> NOTE: versions of gcc-runtime available: 4.5.4+svnr189152
> 4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc not available (for item gcc)
> NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-cross not available (for item
> virtual/powerpc-poky-linux-g++)
> NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
> NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-cross-intermediate not available (for
> item virtual/powerpc-poky-linux-gcc-intermediate)
> NOTE: versions of gcc-cross-intermediate available: 4.5.4+svnr189152
> 4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
> NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847
> 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: preferred version 4.5 of gcc-cross-initial not available (for item
> virtual/powerpc-poky-linux-gcc-initial)
> NOTE: versions of gcc-cross-initial available: 4.5.4+svnr189152
> 4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 938 tasks of which 938 didn't need to be
> rerun and all succeeded.
> elvis@eos:/tool/yocto/poky/build$
>
>
> At this stage, 4.7.1, 4.6.3 have been built, but it doesn't allow me to
> build gcc_4.5 recipe.
>
>
> Best regards,
>
> Elvis Dowson
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


