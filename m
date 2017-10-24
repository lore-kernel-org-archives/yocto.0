Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 320A4E00C7B; Tue, 24 Oct 2017 02:25:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F80E00B67
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:25:30 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id r196so1930857wmf.2
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=itfevxk1pxM5CUbQE8jSAn+Ud3YwQHZKaKyZuzvwMeI=;
	b=YIj9aeOvVuOR1jNX4OtUSnHDf1e4GPOzULLxIkFUc8yjsZ1AKr6D7ADmklGh/MomMo
	eYJZoOJp7LKfoSggmh/KLussjIC06ECY+lDfyvHfQ5dFRqFWP8kceqQbzq3CrW5Baqts
	vsnK8/lgMDymNk7jYCYU3T3aEWhB9YePrBTv1bdZS8ajBvWodD5cqalMHKEt0WObYU+B
	KCKs5h1MuF+4NrELeHpf+CAOhEyhE69WVW3gzrEcNVJMhispgFKxa4zVZXxY8v0WLHp5
	G/RTcxZ9SkBo9NTEGMHZKx+2bu37yHLNUvCL6C3bAFzQQEkHuEGL19i+Q9esHRk6jGSN
	dSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=itfevxk1pxM5CUbQE8jSAn+Ud3YwQHZKaKyZuzvwMeI=;
	b=YNmJDJCfcafK1oOjCeM/KJ8uWZ/c7dWWUVXCdyUFL+AFlr0G0Y5jAF86QPnD1AmM3r
	MZPr4yZzPALGsAYie9L73I32S1kSPjCKe4w2QUD9+DUUfMb1ySlb7KIfvkbzhvK7H+1e
	sNSpBiPFPwYWawbbCs+v+GjsbPpI/UNnRpa1tJ1IGKSCLzng49j/xH6/w40LxYPOTs0m
	fW4NCDd+updr9Jn1C+KYVjH6w7cgirvgztVWnBHfdepbbwsVtzQ15bpTVVD5k4uOtwc/
	FsK+KxGgFyhXU+mJg7ZXkpNE0Tt3VvZl66f1q+DvxulRugbl9UsjK4ZHMw7ER0vr4LS6
	p6CQ==
X-Gm-Message-State: AMCzsaUNFtsZaSQX0P+Id8GH0QOSvmZ8N8q2PFwLeG7ckrekKj3PFUVk
	b2Rmea9D/7qiRr+V8sQQJiH3yRZwvPNAyd3pmLg=
X-Google-Smtp-Source: ABhQp+SbmGyTGaw0jJW47PBZG5av9980Jv7V3r+8H7WHqyDke2/ojC61Iw5E7a/n4d96jQcTqzDFTf/nxqbEnhwfCMQ=
X-Received: by 10.28.130.140 with SMTP id e134mr5360665wmd.159.1508837129491; 
	Tue, 24 Oct 2017 02:25:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.137.206 with HTTP; Tue, 24 Oct 2017 02:25:28 -0700 (PDT)
In-Reply-To: <CA+chaQd3rrBO8niNGSLvsA181qUQj_zAukk6K77ihBQbb-kEMQ@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
	<b4892a0c-4562-9d04-1f15-5506e1c3648b@linux.intel.com>
	<CA+chaQd3rrBO8niNGSLvsA181qUQj_zAukk6K77ihBQbb-kEMQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 24 Oct 2017 11:25:28 +0200
Message-ID: <CAAfyv34DUfkMhN1zqVMYtqXG4PSuUacAq=6sUBLw5_1cPfCRdg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Tue, 24 Oct 2017 09:25:32 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Fri, Oct 20, 2017 at 6:26 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Similar QA issue is shown when you use:
> LOCALE_GENERATION_WITH_CROSS-LOCALEDEF_forcevariable = "0"
>
> which is needed to build glibc-locale with pyro on hosts with glibc-2.26
> (with ENABLE_BINARY_LOCALE_GENERATION = "1").
>
> On Fri, Oct 20, 2017 at 11:44 AM, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
>>
>> On 10/19/2017 10:15 PM, Burton, Ross wrote:
>>>
>>> On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com
>>> <mailto:marek.belisko@gmail.com>> wrote:
>>>
>>>     I'm using latest origin/rocko
>>>     (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
>>>     beaglebone core-image-minimal. While build I got this QA error:
>>>
>>>     ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
>>>     Files/directories were installed but not shipped in any package:
>>>        /usr/share/i18n
>>>
>>>
>>> I've seen this (and some other weird ones) in glibc-locales, and they've
>>> always been resolved by just rebuilding the recipe. bitbake glibc-locale
>>> -cclean && bitbake glibc-locale might well make it go away.
>>
>>
>> I'm beginning to wonder if the best way to resolve these elusive
>> glibc-locale issues (also the notorious host contamination one) is to throw
>> away the existing, extremely convoluted recipe, and do a clean rewrite.
Probably. Should I fill some bugzilla somewhere? Rocko should be
released in few days (if not yet already) and this issue can be really
annoying ;)
>>
>> Alex
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

BR,

marek



-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

