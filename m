Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web09.11417.1608223556677567446
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Dec 2020 08:45:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 0BHGjdZr001949
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 17 Dec 2020 10:45:46 -0600
Subject: Re: [yocto] [[meta-mingw][PATCH] libgcrypt: disable amd64 optimization
To: Khem Raj <raj.khem@gmail.com>
Cc: Joshua Watt <JPEWhacker@gmail.com>, Adrian Bunk <bunk@stusta.de>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20200225180214.114643-1-mark.hatle@kernel.crashing.org>
 <20200225183616.GA9058@localhost>
 <61ddf01d-b0ed-ce85-4518-79fcc48d1061@kernel.crashing.org>
 <8c11ff9b-4e2b-178b-b713-76f44301f7c9@gmail.com>
 <2f77450d-290a-88bb-36cf-6b26245946d7@kernel.crashing.org>
 <CAMKF1sqqhT_V7eW6M1mYy+ehMADmpcYQtXf1-MSkEKwaP9GnAA@mail.gmail.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <3212f708-bfe5-4da7-04bd-a45a0e8fb3ee@kernel.crashing.org>
Date: Thu, 17 Dec 2020 10:45:38 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqqhT_V7eW6M1mYy+ehMADmpcYQtXf1-MSkEKwaP9GnAA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Looking at the config.log, I only see the standard Yocto Project (nativesdk)
paths, as well as: --disable-asm --without-capabilities

I'm building on 18.04.4 LTS, I think it's a fairly standard config, no
containers or anything like that.

Hardware is Intel Xeon Gold 6130 CPU.

Using my other build machine, an 18.04.03 LTS machine, hardware is Intel Xeon
E5-2697v2.

So two different, but similar environments I get exactly the same problem.  I'm
pretty sure the original patch I sent is still needed, and simply won't cause
any issues for environments where this is not reproducible.  Worst case it
disables optimizations, and libgcrypt may be slightly slower (if the
optimizations even worked.)

(if anyone wants to look, I can give you access to the second build machine
where it's easily reproducible.)

--Mark

On 12/17/20 10:17 AM, Khem Raj wrote:
> On Wed, Dec 16, 2020 at 4:50 PM Mark Hatle
> <mark.hatle@kernel.crashing.org> wrote:
>>
>> Note, this is still happening.  Using meta-mingw w/ gatesgarth to build, and
>> including libgcrypt I get the same failure.  The failure resolves with
>> "--disable-amd64-as-feature-detection".
>>
>> Looking at the code, I don't really understand it, but there are some lines
>> after that which may be more indicative of the actual error:
>>
>> ../../libgcrypt-1.8.6/cipher/rijndael.c: In function 'do_encrypt':
>> ../../libgcrypt-1.8.6/cipher/rijndael-tables.h:103:24: error: expected ']'
>> before '.' token
>>   103 | #define encT enc_tables.T
>>       |                        ^
>> ../../libgcrypt-1.8.6/cipher/rijndael.c:775:20: note: in expansion of macro 'encT'
>>   775 |                   [encT] "r" (encT)
>>       |                    ^~~~
>> ../../libgcrypt-1.8.6/cipher/rijndael.c:776:17: error: undefined named operand
>> 'encT'
>>   776 |                 : "cc", "memory", "r8", "r9", "r10", "r11");
>>       |                 ^
>>
> 
> does it have --enable-optimization switch on ? if so then its probing
> the build platform
> for features and detects XMM registers and enables them but perhaps
> does not account
> for it not being a sysv ABI based platform for right ABI calling convention
> may be asm code have made some assumptions here
> 
>> I can't find any difference in generated content anywhere, only that the
>> function (.c) that is failing seems to have a comments it's loading something
>> for use w/ a SysV style function:
>>
>> # else
>>   /* Call SystemV ABI function without storing non-volatile XMM registers,
>>    * as target function does not use vector instruction sets. */
>>   const void *key = ctx->keyschenc;
>>   uintptr_t rounds = ctx->rounds;
>>   uintptr_t ret;
>>   asm volatile ("movq %[encT], %%r8\n\t"
>>                 "callq *%[ret]\n\t"
>>                 : [ret] "=a" (ret),
>>                   "+D" (key),
>>                   "+S" (bx),
>>                   "+d" (ax),
>>                   "+c" (rounds)
>>                 : "0" (_gcry_aes_amd64_encrypt_block),
>>
>> As far as my configuration (all gatesgarth):
>>
>> conf/bblayers.conf:
>> BBLAYERS ?= " \
>>     /scratch2/mhatle/2021/sources/poky/meta \
>>     /scratch2/mhatle/2021/sources/poky/meta-poky \
>>     /scratch2/mhatle/2021/sources/meta-mingw \
>>     /scratch2/mhatle/2021/sources/poky/../meta-xilinx/meta-xilinx-bsp \
>>     /scratch2/mhatle/2021/sources/poky/../meta-xilinx-tools \
>>     /scratch2/mhatle/2021/sources/poky/../meta-openembedded/meta-python \
>>     /scratch2/mhatle/2021/sources/poky/../meta-openembedded/meta-oe \
>> "
>>
>> DISTRO=nodistro MACHINE=zynqmp-generic SDKMACHINE=x86_64-mingw32 bitbake
>> nativesdk-libgcrypt
>>
>> On 3/3/20 9:19 AM, Joshua Watt wrote:
>>>
>>> On 2/25/20 1:32 PM, Mark Hatle wrote:
>>>>
>>>> On 2/25/20 12:36 PM, Adrian Bunk wrote:
>>>>> On Tue, Feb 25, 2020 at 12:02:14PM -0600, Mark Hatle wrote:
>>>>>> amd64 optimization when using with mingw32 sometimes results in:
>>>>>>
>>>>>> | ../../libgcrypt-1.8.4/cipher/rijndael-tables.h:103:24: error: expected
>>>>>> ']' before '.' token
>>>>>> |  103 | #define encT enc_tables.T
>>>>>> ...
>>>>> Please send a complete build log, this looks like a parallel build
>>>>> failure where some .c is compiled before some header it uses is
>>>>> fully generated (or something similar).
>>>> I'll reply with a private email to where you can get a copy of the build directory.
>>>>
>>>>>> --- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
>>>>>> +++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
>>>>>> @@ -1,3 +1,4 @@
>>>>>> +EXTRA_OECONF_append_mingw32 = " --disable-amd64-as-feature-detection"
>>>>>> ...
>>>>> I assume PARALLEL_MAKE = "" would also work instead?
>>>> I tried this and it didn't appear to make a difference.  I only see the problem
>>>> when building for mingw32.
>>>
>>> Did we ever figure out what was causing this? It does appear to be some
>>> sort of race condition at the moment, and I'm surprised we haven't seen
>>> it on the autobuilder (we have pretty good test coverage for meta-mingw
>>> there).
>>>
>>>>
>>>> I've never seen any issues for any other SDK target.
>>>>
>>>> --Mark
>>>>
>>>>> cu
>>>>> Adrian
>>>>>
>>>>>
>>>>>
>>
>>
>>
>>
>>
>> 
>>
