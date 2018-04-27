Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E66BBE009DF; Fri, 27 Apr 2018 06:27:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAFCEE008D2
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 06:27:45 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id g13-v6so2195651qth.8
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 06:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2SCK1IF8OMNvpM28M5rrmWfkETRb40Jz41GevcnnBNQ=;
	b=I8g87hUhQIzhEDyU0KE/stDxnH9WCywBvuzml/ISmWFDJWJezAvl4bWWro7NUyRbow
	R2X/c2JKXEyMuxQkvnDacdo2VGMqCknrVoXrEV/L/S8NiNUztESS5LTDCRvNow/DRfBR
	vymn7xhCMJtYvcMnbINlveSSK244skhwtnU1c0pCJgJn98F+mgI3uVaPd5pn0OhyOivO
	mq4iAc1w935gnrOo0awqsOamP88HUDL2JHITeIEz/32dzbpwdSlWoAv/OzyS0l04hRq9
	PAYjf1F6YOKUWUQm4ht9vvW9f/2tTYgXwz4G9yOWQVxowOQdCTjHpuNhherkd8ojb4Jy
	sxNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2SCK1IF8OMNvpM28M5rrmWfkETRb40Jz41GevcnnBNQ=;
	b=ZLAwh9MJGrEDfp1j8XXHGtpIdE/C+m8swvtE1nzFq2WCWwi50mvoK3lY/uD4C7KZTn
	ZzzVOzRdVqHcatuQfvoLl+Un74OI7QoaMTGy2oOv2NGgsd8kefdJs1mJLHX0SN0pUFiF
	wMlkw/DfUpDNr8w/Vq1GCZqoMTh5o9X3CgfEFMNHMdUr4ZXah0bRKhFe34dkhTsSRGi5
	KNnA8i+QztssMfS0Mjy8hqFwr9j4+Pr3HMkwN97nr+CkGqz4tNpo0+c18ipTGkiuWVIv
	lBC6npXAEaJz4vM+Fq0TerSQya3vLzcuetZn4SpkBE/Uaoe6FcwRwTTp9fT5hUSbF0nC
	S9PA==
X-Gm-Message-State: ALQs6tBdkG+G5nNvUAGIEDTBVhBedpSDZUjgZL7WDVnxSFJ2br9U3ouX
	Z4chVL/uj5uAr4U3R0xC+AQCKzt6Mf894zXwz6o=
X-Google-Smtp-Source: AB8JxZpGSP+yJviIuMsa6r0pU382SEY6AW6mwxNT6Z3QkHTjWgO6g1X429fd4KewthEbHRm/W14BbhJ80nEXn6A97/c=
X-Received: by 2002:aed:222b:: with SMTP id
	n40-v6mr2012778qtc.146.1524835664939; 
	Fri, 27 Apr 2018 06:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Fri, 27 Apr 2018 06:27:44 -0700 (PDT)
In-Reply-To: <ba29cba8-2f67-7f7d-351e-04a59a732b9c@balister.org>
References: <20180425150333.GA9349@graute-opti>
	<CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
	<5ae1f5fc.0790500a.2fb14.0681@mx.google.com>
	<CAGAf8LwkCDyzkej_c31EjtxXBDP+dqx5ihMCwuBH5CDP5X5T4w@mail.gmail.com>
	<20180427061932.GB9349@graute-opti>
	<ba29cba8-2f67-7f7d-351e-04a59a732b9c@balister.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 27 Apr 2018 15:27:44 +0200
Message-ID: <CAGAf8LxXm9jcKeAqPqZKgKACsSLnFZXQoxLD6hN8DEaZL9+1cg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Fri, 27 Apr 2018 13:27:48 -0000
Content-Type: text/plain; charset="UTF-8"

> Take a look at BIOS settings. I had a board that was overclocking based
> on CPU temperature, which failed miserably when you actually used all
> the cores. Disable such settings.

This has nothing to do with this particular problem. You simply, since
you over-clocked CPU, reached very quickly TDP1 (using all cores),
then reached beyond so-called TDP2 (since you did not setup CMOS
correctly), which initiated/triggered HW control called /PROCHOT... In
order to save CPU from physical damage, since you have reached very
close to Junction T.

Even if you did setup thresholds correctly, CPU probably went to
hold/blocked state for some limited time to throttle, in order to cool
down... Then these YOCTO failing effects might be visible, but I have
no idea how (most likely some overheated cores got thread of
execution/HyperThreads pipeline stale/lost)!?

My best guess, IMHO!

Zoran
_______

On Fri, Apr 27, 2018 at 2:04 PM, Philip Balister <philip@balister.org> wrote:
> On 04/27/2018 02:19 AM, Oliver Graute wrote:
>> On 26/04/18, Zoran Stojsavljevic wrote:
>>>> I deleted all the build-imx6ulevk folder and build everything from
>>>> scratch with only one thread, waited a few hours for compilation and now
>>>> its working ;)
>>>
>>> Still, I am struggling to understand why??? What is the requirement
>>> behind this ask?
>>
>> The requirement was just get our older yocto (jethro) build running on a
>> PC of a different developer. Often developers have their own flavor of
>> Ubuntu releases and they update to newer versions while they still
>> develop on yocto releases which is much older. Because that yocto
>> release is currently in the field by our costumer. Our product cycle is
>> not so fast to use the newest yocto releases. We started to develop when
>> jethro was up to date.
>>
>> We compiled single threaded just because his PC is a bit unstable on
>> high load. And it crashed a few times on parallel makes. I know that
>> this is not ideal for yocto development.
>
> Take a look at BIOS settings. I had a board that was overclocking based
> on CPU temperature, which failed miserably when you actually used all
> the cores. Disable such settings.
>
> Philip
>
>
>>
>>>
>>> As we see, it is much longer (one thread only) than on 14.04!?
>>
>> its takes much longer then with settings
>>
>> PARALLEL_MAKE = "-j 4"
>> BB_NUMBER_THREADS = "4"
>>
>>> Could you, please, do it on Ubuntu 17.04, or 17.10 (i bet, you
>>> can't)??? And why, after all???
>>
>> currently not im using only Ubuntu LTS Releases.
>> Perhaps I will try 18.04  LTS which released yesterday ;)
>>
>> Best regards,
>>
>> Oliver
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

