Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53870E00D44; Thu, 19 Oct 2017 14:14:50 -0700 (PDT)
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
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97243E00CD1
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:14:46 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id q132so18843720wmd.2
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ki7c26vqzxg3wdQ909+KPgPQW3qAfReWVeNpxw6X2PM=;
	b=jL5pDIwLKwYNZLaRFcMugdiizLVOnr1Zy9Lr6FDGXzbCxvsIuopg6Wwteb52Bc8DMV
	hwu1h0R/m5aXZlri0b0p0WF1A8AIcEfNA+lb8e1t2wjxYTI0sPxjbsEWepvh5SawtWZ4
	uAQRCenlhXVz3KGLnqHVefa7M/8jEdKybbn/nLUC3Bnb85QzLQItKirL6QGXOt+WDKb8
	akYZgeSujZsAhmNqn8TR8Fp+K/+dfn/5D1lB6g/N0f5qru7hWWBytPX6dZw8Fj75jQoU
	ZbY0wsGR0JDRF089pZNfmWQIIHEV+NigzlbB83jOXgmUN32XUNtu4+FlFuKGCu6a2wn+
	YcZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ki7c26vqzxg3wdQ909+KPgPQW3qAfReWVeNpxw6X2PM=;
	b=otL9KKUJNyoSVakxH9y6lqAxNr2v68BYOlIvXx1lO70dHHJGqN95uk25weCAgJekpm
	KAP8daqBiXav8P6Z7d29lLTlco4kHVuRwnvxRehMuVLJvauUTt9Zr2IFtTBuoq+LfUV4
	O8UuYrGFco3nOhMVCwWwuPaxQa1a0as/Dxx0lKoCgoFTHrppZBQnQJV09lX2orDQXvPa
	EQfgcFADevqzMEkYjzNvjT5UmL112DJcnPFm4/UgrjhMVhuom9zUUXjot3oTC3As4qIR
	cpRDZ7cJz14pCG8CQ5nW5EsfhdJlM9NasszIqE+mXAuuuQIP1jXOuVzIaGVFEH1K2++S
	yrUQ==
X-Gm-Message-State: AMCzsaWeOHL/ehBcXeCl6LmpzZzxIh67fQkSrKcQh/Euss5901AnQayQ
	QQlYm5rVHgKIlPVBzR8RjAQR6hNu8sjU3/4lbUs=
X-Google-Smtp-Source: ABhQp+SeuGI6nJSjsAfVR8gYuSbpb6n43guQHwHc25HtedeDZFBQRblLGmXNAzy7TntEj3b2gJGulVQ0nJQ9mFJBzhk=
X-Received: by 10.28.66.72 with SMTP id p69mr2762114wma.159.1508447686159;
	Thu, 19 Oct 2017 14:14:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.137.212 with HTTP; Thu, 19 Oct 2017 14:14:45 -0700 (PDT)
In-Reply-To: <CAAfyv37UHuZe1Bdz+31sSKtmjkBWrabfBRjqmckdPa-iP7bEJQ@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
	<CAAfyv37UHuZe1Bdz+31sSKtmjkBWrabfBRjqmckdPa-iP7bEJQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 19 Oct 2017 23:14:45 +0200
Message-ID: <CAAfyv365zjf=Hn5H1HXzVxNGf=e4WdbYPu+RBc6QK=2VB6-drQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Thu, 19 Oct 2017 21:14:50 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

On Thu, Oct 19, 2017 at 9:42 PM, Belisko Marek <marek.belisko@gmail.com> wrote:
> Hi Ross,
>
> On Thu, Oct 19, 2017 at 9:15 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com> wrote:
>>>
>>> I'm using latest origin/rocko
>>> (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
>>> beaglebone core-image-minimal. While build I got this QA error:
>>>
>>> ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
>>> Files/directories were installed but not shipped in any package:
>>>   /usr/share/i18n
>>
>>
>> I've seen this (and some other weird ones) in glibc-locales, and they've
>> always been resolved by just rebuilding the recipe. bitbake glibc-locale
>> -cclean && bitbake glibc-locale might well make it go away.
> OK thanks I'll try and get back with result.
Nope it's not working. Same issue when run above commands. Thanks.
>>
>> Ross
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com

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

