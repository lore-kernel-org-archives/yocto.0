Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web10.75.1583188030391956617
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 14:27:11 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 022MR6rl008814
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Mon, 2 Mar 2020 16:27:07 -0600
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
 <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <35f9783b-70f8-ef58-c113-e1b2fe20e038@kernel.crashing.org>
Date: Mon, 2 Mar 2020 16:27:05 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 3/2/20 12:42 PM, Khem Raj wrote:
> 
> 
> On 3/2/20 9:39 AM, Mark Hatle wrote:
>> In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
>> of gcc were disabled by default.  This behavior may be required by some
>> (poorly written) makefiles.
>>
>> This will allow someone to do:
>>
>> gcc *.c -o myoutput
>>
>> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
>> ---
>>   recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>> index 9c0d828..e0463c6 100644
>> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>> @@ -1,5 +1,5 @@
>>   INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
>> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
>> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
> 
> this change is fine. is this the only place we need it ?

Yes, it doesn't do anything if the generated toolchain isn't mingw.. and AFAIK,
we're only build cross-canadian there.

(binutils and others don't appear to have this option, unless I just missed it.)

--Mark

>>   LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>>   EXEEXT_sdkmingw32 = ".exe"
>>   ELFUTILS_sdkmingw32 = ""
>>
>>
>>
>>
>>
>> 
