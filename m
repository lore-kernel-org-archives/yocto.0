Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web12.249.1582659141109802131
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 11:32:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01PJW0b3005990
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Tue, 25 Feb 2020 13:32:17 -0600
Subject: Re: [yocto] [[meta-mingw][PATCH] libgcrypt: disable amd64 optimization
To: Adrian Bunk <bunk@stusta.de>
Cc: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
References: <20200225180214.114643-1-mark.hatle@kernel.crashing.org>
 <20200225183616.GA9058@localhost>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <61ddf01d-b0ed-ce85-4518-79fcc48d1061@kernel.crashing.org>
Date: Tue, 25 Feb 2020 13:32:00 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200225183616.GA9058@localhost>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/25/20 12:36 PM, Adrian Bunk wrote:
> On Tue, Feb 25, 2020 at 12:02:14PM -0600, Mark Hatle wrote:
>> amd64 optimization when using with mingw32 sometimes results in:
>>
>> | ../../libgcrypt-1.8.4/cipher/rijndael-tables.h:103:24: error: expected
>> ']' before '.' token
>> |  103 | #define encT enc_tables.T
>> ...
> 
> Please send a complete build log, this looks like a parallel build 
> failure where some .c is compiled before some header it uses is
> fully generated (or something similar).

I'll reply with a private email to where you can get a copy of the build directory.

>> --- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
>> +++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
>> @@ -1,3 +1,4 @@
>> +EXTRA_OECONF_append_mingw32 = " --disable-amd64-as-feature-detection"
>> ...
> 
> I assume PARALLEL_MAKE = "" would also work instead?

I tried this and it didn't appear to make a difference.  I only see the problem
when building for mingw32.

I've never seen any issues for any other SDK target.

--Mark

> cu
> Adrian
> 
