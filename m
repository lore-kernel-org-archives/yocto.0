Return-Path: <lluis.campos@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16B20E00D20; Thu,  4 Apr 2019 05:12:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A130BE00CE5
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 05:12:04 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id q66so1861248ljq.7
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 05:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=2J1BuVNgZ5K9rJvISV1O1LOv0R7aVrFmsqYDo81neJU=;
	b=jF5APfgD4A4lpw6f4/GaEisXttQjlPKttvVjvxx5wnikrObk91sAQK0Rrxe0J9vVI9
	6GO0jAtXxTkfzNZdV6oomzxXwhtOP2WDqQ/TVlq9ZVlCPQoqcVTzO7nEG3nqbamomanK
	0JzFa5Jg6s8FO6jUoWyAZlkFEdVIXaX0qrLbrfGs69oIAPvFU3bMFfuPIpd14yVQTX+z
	GEgpja8xzD0BGK//nOR6sFqdR4kYeQykSF5upItwgfSH7MibGri55+/WRunF64Lf4tuc
	8D6BPZ0YV+3jMNWBVkWKQ8zq5H3b4g9CP8HRBVA11ZWesawjN0wdyCkni05EcFlxTNF3
	UmPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2J1BuVNgZ5K9rJvISV1O1LOv0R7aVrFmsqYDo81neJU=;
	b=GDfOmIC18KFkwRckgQzdp4rsaf621huzPZ/S1uyZdkZakLd6mh1mVefYB526CvJqy6
	K8NgHoIspD7hIddExqZ01Vt3V9hKe32QdLlSMqmmDtZply0sUProPezYn7bcWAMaij69
	MhEhkynqSqXH4fSALbfnA0XQsv+sVZISZKHIq2xPfJ/R7m/GTnusd95gjxnN6wJe9vSE
	WI9FL2hH4iPErGBgQUMjOhL9jox0QuApXeV2eSkgsVAcMAH7LG3KOypkrODDMudIPG/D
	+y9k1u0lTvjVkZMfNJfRQxqFmWKuLavc00GICQzQcofwO6IyO1I2LkA7cP3L1YByBa9X
	XAXw==
X-Gm-Message-State: APjAAAXGnAwHGSGZ/JlfkO3DbUxuvrvVfbtv9rH40Xb/AdqQFdjzws66
	+MtTZeQFMJUozcmbSlTtIq7PTML7y7o=
X-Google-Smtp-Source: APXvYqyXixU6zKRdkxyJ/Bu+WnQb95kKtrd1A6Q2i/b58AFJg4RjWSoV7WaNrSWu7MKfGU+9/8CwiQ==
X-Received: by 2002:a2e:500d:: with SMTP id e13mr3411964ljb.169.1554379923091; 
	Thu, 04 Apr 2019 05:12:03 -0700 (PDT)
Received: from [10.20.33.217] ([195.159.234.190])
	by smtp.gmail.com with ESMTPSA id
	i190sm3578804lfi.43.2019.04.04.05.12.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Apr 2019 05:12:02 -0700 (PDT)
From: Lluis Campos <lluis.campos@northern.tech>
To: Khem Raj <raj.khem@gmail.com>
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
	<CAMKF1sobwgXG1_4UCQumQvtqOmmJ8jdcuyyhagQyf2Gm5GN-nA@mail.gmail.com>
	<d7366ff9-2715-044d-fb1b-6a5e4da2c68f@northern.tech>
Message-ID: <423fb91a-2725-be4c-0b1d-b37860545bb6@northern.tech>
Date: Thu, 4 Apr 2019 14:12:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <d7366ff9-2715-044d-fb1b-6a5e4da2c68f@northern.tech>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gdb built with musl libc segfault
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
X-List-Received-Date: Thu, 04 Apr 2019 12:12:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi again,

On 04.04.2019 12:58, Lluis Campos wrote:
>
> On 03.04.2019 18:59, Khem Raj wrote:
>> On Tue, Apr 2, 2019 at 4:51 AM Lluis Campos 
>> <lluis.campos@northern.tech> wrote:
>>> Hi all,
>>>
>>> This is my very first question in the Yocto mailing list. Very exited!
>>> Please let me know if I should use other list for this.
>>>
>>>
>>> I am building an image using musl libc instead of gnu libc. I am not
>>> using yocto-tiny distro, instead I achieve this by setting on my 
>>> local.conf:
>>>
>>> TCLIBC = "musl"
>>>
>>>
>>> My app (mender) got a segfault just starting. See output from strace:
>>>
>>> root@raspberrypi3:~# strace mender
>>> execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) = 0
>>> set_tls(0x76f1bffc)                     = 0
>>> set_tid_address(0x76f1bfa0)             = 3020
>>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_ACCERR, 
>>> si_addr=0x530bc8} ---
>>> +++ killed by SIGSEGV +++
>>> Segmentation fault
>>>
>>>
>>> To be able to debug the process, I added gdb to my image adding to my
>>> local.conf:
>>>
>>> CORE_IMAGE_EXTRA_INSTALL += "packagegroup-core-buildessential
>>> packagegroup-core-tools-debug"
>>>
>>>
>>> Then, ironically, gdb itself also segfaults:
>>>
>>> root@raspberrypi3:~# strace gdb 2>&1 | tail
>>> fcntl64(3, F_SETFD, FD_CLOEXEC)         = 0
>>> getdents64(3, /* 6 entries */, 2048)    = 144
>>> getdents64(3, /* 0 entries */, 2048)    = 0
>>> close(3)                                = 0
>>> ioctl(0, TIOCGWINSZ, {ws_row=25, ws_col=74, ws_xpixel=0, 
>>> ws_ypixel=0}) = 0
>>> getcwd("/home/root", 4096)              = 11
>>> access("/usr/local/bin/gdb", X_OK)      = -1 ENOENT (No such file or
>>> directory)
>>> access("/usr/bin/gdb", X_OK)            = 0
>>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, 
>>> si_addr=0x7e35aff0} ---
>>> +++ killed by SIGSEGV +++
>>>
>>>
>>> So, what is going on here? My guess is that some recipes are being
>>> wrongly linked with gnu libc instead of musl, and then cannot run in my
>>> device.
>>>
>>> Any ideas on how to debug the issue?
>>>
>> We have switched to using PIE by default in last few releases, can you
>> try master but comment out
>> require conf/distro/include/security_flags.inc
>> in your distro conf file.
>
> Hi Khem,
>
> Thanks for your help.
>
> Commenting out this line seems to work!


FYI,

Enabling back the require of security_flags.in, and instead applying no 
security flags only to my recipe is enough.

I have added to my conf/local.conf:

SECURITY_CFLAGS_pn-mender = "${SECURITY_NOPIE_CFLAGS}"
SECURITY_LDFLAGS_pn-mender = ""

So I will continue this way until I find the root cause on my CGO code.

Thanks again for your help.



>
> I will try to figure out exactly which exact option is causing the issue.
>
>
>>
>>> Thanks!
>>>
>>>
>>> Lluís Campos
>>> mender.io
>>> Northen Tech
>>>
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

