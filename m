Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web09.18983.1583173344343081153
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 10:22:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 022IMKA9006720
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Mon, 2 Mar 2020 12:22:20 -0600
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org,
        jpewhacker@gmail.com
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
 <4f79320e-349c-52e2-764b-b0ebc2fd208b@gmail.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <bd39fe88-8a3b-42e9-4f93-e40e3142c60a@kernel.crashing.org>
Date: Mon, 2 Mar 2020 12:22:19 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <4f79320e-349c-52e2-764b-b0ebc2fd208b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Ya, it backports to Zeus fine.  That is as far back as I've looked.

--Mark

On 3/2/20 12:15 PM, akuster808 wrote:
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
> 
> with backports to zeus & warrior?
> 
> -armin
>> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
>> ---
>>  recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>> index 9c0d828..e0463c6 100644
>> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>> @@ -1,5 +1,5 @@
>>  INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
>> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
>> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
>>  LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>>  EXEEXT_sdkmingw32 = ".exe"
>>  ELFUTILS_sdkmingw32 = ""
>>
>> 
> 
