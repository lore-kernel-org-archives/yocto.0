Return-Path: <lluis.campos@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C507E00CF4; Thu,  4 Apr 2019 03:58:08 -0700 (PDT)
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
	*      [209.85.167.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B360EE00872
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 03:58:07 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id v14so1487776lfi.0
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 03:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=q56WE3o8BR3dtvoJZmftIetKmOdXTZTaFpiDae0oiTA=;
	b=chvnw5kWhEwktAFEqmrIJlKu9lSlerQT2hpXNq651s7yeBRSbqEQJbSSsWpnSZVf3C
	1MOu3zPRBi/De+0TNpmCM8BlK0jJfF5MZFi8KQyplvUdoUFoWbFMnr5XoCK8c9yGIyv4
	QdCo8oaauIAvvmpU8hBrVtsr94Aq/Gu8+abjGGKK1SiPeAmimLQDAayYl3ugPH/GaP+I
	n4JGGcBNs4lYGYy01LGu0o9NBd9wineeus+5S3q8t7IOvtyU+uqNSH5M+kGcv/Exd/PD
	OwJiiP5qfKNyYEfcOZRwc7U0dRPZq57Umv9K1t2Vb/lc2TdqaCegLz9Lc/D28gJnOBo/
	UOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=q56WE3o8BR3dtvoJZmftIetKmOdXTZTaFpiDae0oiTA=;
	b=CXpofZCHrCzr9JaYnNYw5wLqudAsjXUNN5MOdMpZI59LAPheeo9UcdkLhQEi8l0kLJ
	3th5lsme2Auim6AOLIfYaCn9f9pkg/nEu+sr3KF4s0qlidQbDJN9dyxRBtwgormiiBTW
	78BHzPOS4TiNuZF8ihywKiw8Z4ohJX/+ktlF3BUp3TlKQNHv/PAscYuqn3t3H7CMxavF
	d9MrBH1U2x4FjyGSkpnwVqtG8ssmE1VkYTSacHmWFQ+x3yHAF/kKTo0TRdGrGmHdMpMi
	omsIlJRxvD6RcmAUZZv2AYDEAH8qUve0bUXRfADWQG9DKiez/MmaJC4VmaR1cKA4/Ib/
	1NTQ==
X-Gm-Message-State: APjAAAUx7t41QoWyimzLl/lZL95rp1zxXn20PltYPBSOcHnUAiKAXz+E
	CT+cr5QN6kDrVJx15qnOq+urREnRnWw=
X-Google-Smtp-Source: APXvYqwLiilrKJ2SJC08SCqui7UjtnvPpJZbgYxjTsrFF1jyvgMosTKvb15Y1mlGFVh2loAi+gWjqA==
X-Received: by 2002:a19:40cc:: with SMTP id n195mr2738052lfa.150.1554375486429;
	Thu, 04 Apr 2019 03:58:06 -0700 (PDT)
Received: from [10.20.33.217] ([195.159.234.190])
	by smtp.gmail.com with ESMTPSA id j8sm3928209ljh.58.2019.04.04.03.58.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Apr 2019 03:58:05 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
	<CAMKF1sobwgXG1_4UCQumQvtqOmmJ8jdcuyyhagQyf2Gm5GN-nA@mail.gmail.com>
From: Lluis Campos <lluis.campos@northern.tech>
Message-ID: <d7366ff9-2715-044d-fb1b-6a5e4da2c68f@northern.tech>
Date: Thu, 4 Apr 2019 12:58:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sobwgXG1_4UCQumQvtqOmmJ8jdcuyyhagQyf2Gm5GN-nA@mail.gmail.com>
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
X-List-Received-Date: Thu, 04 Apr 2019 10:58:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 03.04.2019 18:59, Khem Raj wrote:
> On Tue, Apr 2, 2019 at 4:51 AM Lluis Campos <lluis.campos@northern.tech> wrote:
>> Hi all,
>>
>> This is my very first question in the Yocto mailing list. Very exited!
>> Please let me know if I should use other list for this.
>>
>>
>> I am building an image using musl libc instead of gnu libc. I am not
>> using yocto-tiny distro, instead I achieve this by setting on my local.conf:
>>
>> TCLIBC = "musl"
>>
>>
>> My app (mender) got a segfault just starting. See output from strace:
>>
>> root@raspberrypi3:~# strace mender
>> execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) = 0
>> set_tls(0x76f1bffc)                     = 0
>> set_tid_address(0x76f1bfa0)             = 3020
>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_ACCERR, si_addr=0x530bc8} ---
>> +++ killed by SIGSEGV +++
>> Segmentation fault
>>
>>
>> To be able to debug the process, I added gdb to my image adding to my
>> local.conf:
>>
>> CORE_IMAGE_EXTRA_INSTALL += "packagegroup-core-buildessential
>> packagegroup-core-tools-debug"
>>
>>
>> Then, ironically, gdb itself also segfaults:
>>
>> root@raspberrypi3:~# strace gdb 2>&1 | tail
>> fcntl64(3, F_SETFD, FD_CLOEXEC)         = 0
>> getdents64(3, /* 6 entries */, 2048)    = 144
>> getdents64(3, /* 0 entries */, 2048)    = 0
>> close(3)                                = 0
>> ioctl(0, TIOCGWINSZ, {ws_row=25, ws_col=74, ws_xpixel=0, ws_ypixel=0}) = 0
>> getcwd("/home/root", 4096)              = 11
>> access("/usr/local/bin/gdb", X_OK)      = -1 ENOENT (No such file or
>> directory)
>> access("/usr/bin/gdb", X_OK)            = 0
>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0x7e35aff0} ---
>> +++ killed by SIGSEGV +++
>>
>>
>> So, what is going on here? My guess is that some recipes are being
>> wrongly linked with gnu libc instead of musl, and then cannot run in my
>> device.
>>
>> Any ideas on how to debug the issue?
>>
> We have switched to using PIE by default in last few releases, can you
> try master but comment out
> require conf/distro/include/security_flags.inc
> in your distro conf file.

Hi Khem,

Thanks for your help.

Commenting out this line seems to work!

I will try to figure out exactly which exact option is causing the issue.


>
>> Thanks!
>>
>>
>> Lluís Campos
>> mender.io
>> Northen Tech
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

