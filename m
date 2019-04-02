Return-Path: <lluis.campos@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C6A3E00A84; Tue,  2 Apr 2019 06:51:35 -0700 (PDT)
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
	*      [209.85.208.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28431E0091D
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 06:51:33 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id v13so11688059ljk.4
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 06:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=BL6ZNrzY1ObUyCMB4FYkPjVcCbTRqnRxXG/PnRh5nOk=;
	b=PcV/FL8qu4ciawFN65upB02AKxzb84+NYDpmDB1eLeFekBPQ8tXv1I/gQByGZdJhvv
	JxuD7Pua90SX29EBdyd3Ocb0d4nufchKpHgLuhVmNZ2idFCjOnr3bFeR3GJ11CYlCXw8
	4sG/LACNYzQJLpzHoDRa3MoNxus68utgC+1GYcq5j5HQUbm8l+Wd187TSYLgkvHW3Vtd
	ku4CiDt3nZUIXBtr1CLOqPNQNiRPyq9Y7hMzDFBWoG5+8we8OBe3N4I8KDiovjzGL8OT
	SdJSMJWBBCKAjXIhsNSRbIS8E3YaFvGxp5fGvhUyV3HPESil9x0JrTBX5ujRrOrXtOIq
	O5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BL6ZNrzY1ObUyCMB4FYkPjVcCbTRqnRxXG/PnRh5nOk=;
	b=TpnJEJJbfONCRLfDAnxCaSrOjs5x0vCPBdsJ1ejRpMzC+81wW2R/mr3PK31Eo+QYyO
	iFRpGiHugbx9fIW5qnvQrzD/uIG2dJPpyYAdiuHoFTGjMyNmo8mWaHLFW9c2E6/hz+d8
	HIKu9L0KgfAp42wdyqlWe0o20A7oxDs7ctk/hWJShm6Znwgan+F2Eg2oe4M45XSdEBi9
	kR4LrDoAhNqLXjngNCpeu+zDVQLVpSE9GXmbxLQnGEJedswQVbmaXFbAfK3RDT7MOl3u
	PZk285fv3Z4qqRCh+HtBcgMYJjjnvdUteACAZgrk04BDmWmuuHx0CbA3gGCJZv1hj1jd
	Lg+Q==
X-Gm-Message-State: APjAAAXF7Km7wgQhSvXp9mn8Oym15pUV/yGQ15XHtAxQEc7aQ5VdVND5
	Scmxjqtiq5Z3dX0EE7Am53ynMEVJ/iPvwg==
X-Google-Smtp-Source: APXvYqzDP6PdpoRejJhqiOO+Q6f47ihHc3Fk2OjfkLyVYY7+aGmv4bxixVI7+NVFyzMyLV9i1q0OmA==
X-Received: by 2002:a05:651c:c3:: with SMTP id 3mr3449743ljr.8.1554213092922; 
	Tue, 02 Apr 2019 06:51:32 -0700 (PDT)
Received: from [10.20.33.217] ([195.159.234.190])
	by smtp.gmail.com with ESMTPSA id
	b194sm2461192lfg.39.2019.04.02.06.51.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Apr 2019 06:51:32 -0700 (PDT)
To: Paul Barker <paul@betafive.co.uk>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
	<2cf2ff61-4afe-abcf-c56c-286c88198c49@betafive.co.uk>
From: Lluis Campos <lluis.campos@northern.tech>
Message-ID: <70715015-8652-4b32-15f7-2579933ede89@northern.tech>
Date: Tue, 2 Apr 2019 15:51:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <2cf2ff61-4afe-abcf-c56c-286c88198c49@betafive.co.uk>
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
X-List-Received-Date: Tue, 02 Apr 2019 13:51:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Paul,


On 02.04.2019 14:49, Paul Barker wrote:
> On 02/04/2019 12:45, Lluis Campos wrote:
>> Hi all,
>>
>> This is my very first question in the Yocto mailing list. Very 
>> exited! Please let me know if I should use other list for this.
>>
>>
>> I am building an image using musl libc instead of gnu libc. I am not 
>> using yocto-tiny distro, instead I achieve this by setting on my 
>> local.conf:
>>
>> TCLIBC = "musl"
>>
>>
>> My app (mender) got a segfault just starting. See output from strace:
>>
>> root@raspberrypi3:~# strace mender
>> execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) = 0
>> set_tls(0x76f1bffc)                     = 0
>> set_tid_address(0x76f1bfa0)             = 3020
>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_ACCERR, si_addr=0x530bc8} 
>> ---
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
>> fcntl64(3, F_SETFD, FD_CLOEXEC)         = 0
>> getdents64(3, /* 6 entries */, 2048)    = 144
>> getdents64(3, /* 0 entries */, 2048)    = 0
>> close(3)                                = 0
>> ioctl(0, TIOCGWINSZ, {ws_row=25, ws_col=74, ws_xpixel=0, 
>> ws_ypixel=0}) = 0
>> getcwd("/home/root", 4096)              = 11
>> access("/usr/local/bin/gdb", X_OK)      = -1 ENOENT (No such file or 
>> directory)
>> access("/usr/bin/gdb", X_OK)            = 0
>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, 
>> si_addr=0x7e35aff0} ---
>> +++ killed by SIGSEGV +++
>>
>>
>> So, what is going on here? My guess is that some recipes are being 
>> wrongly linked with gnu libc instead of musl, and then cannot run in 
>> my device.
>>
>> Any ideas on how to debug the issue?
>>
>
> Hi Lluis,
>
> This is an issue I've seen before with runc and gdb.
>
> In runc we saw SIGILL which I tracked down to some hideous 
> setjmp/longjmp magic written in C. cgo is used to include this C code 
> in with the Go code that comprises the rest of the application.

Our application is written in Go and we use CGO as well. So it sounds 
quite similar.


>
> In gdb we saw SIGSEGV which is what you've got above.
>
> I think things are being correctly linked against musl but then 
> there's some runtime issue in recent musl versions, possibly in 
> conjunction with recent kernel headers.
>
> Are you using the thud or master branch?
>
I am using thud branch. I haven't actually tried with master but I will 
do it later today


Thanks,

Lluís


