Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72ECBE00A80; Tue, 18 Apr 2017 11:07:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07362E00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:07:47 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id d203so1000881iof.2
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=65OEyNee5a0mu34xBMCgoTdKhECty1BPgEvR34FrPf0=;
	b=uK79DhTIzxBLm7gVSb/mxjZsBjFyIK+W8bpXa9uImJuV1FKVEDYf7aAIoGBN+SvIWm
	gFLt7b2eTUWdRLfjlQFgGieaILuVsOzPD0n0iNhKOvnKieqOAlDuqsCeONyz82MZnJuE
	WqmHYRAUvHgdvBZP5ss9AyBRueao4dPtE/i6J+v1x0pGZp6GUhikCnNKCTkPOQ8+ajpq
	boAVlpNCSh8Amij4CNZF8pve+z54U7FQzoa7VZVhWBm9vX5r+r+h3sH+yrZxjmJeQYIs
	d0/IJPlyVDtd6loCdey6DaEoKKSbRuP+GtXcAzjjqrQ7EiwIl6tO7Vpz7kkTS8CaqnuM
	xjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=65OEyNee5a0mu34xBMCgoTdKhECty1BPgEvR34FrPf0=;
	b=VRRTZo1ye/x1eBmqG0xc/i4QW5ozcQAdQwp3dmVORA3V0mWF1Gfcr0FQdAYxRrsacB
	A+RF75iXYHKFPJ/5IPI25MY7vWSRLl5qNu69FyDiestb4PdxiwMoRWsk4iATWZrG6cdx
	OjpR2nj4Vk31LUaT6iGWV58cLdHP99XkgQwmCXaYPwIY1oy5zfInMfe9fausVhVtMw3s
	7+llQBcfX1Ci306KOEwmRNgEDFTNETf8L8hYce5X+FwNCqQKepU71LwjeCFsNPvY4BWr
	M5cagUfj0mjMvuc68xERO5fK/W2yuATliXo8YCvpEA/Smp9ZmOVLqEkKaPs+fcW7GYiX
	2Shg==
X-Gm-Message-State: AN3rC/62d+OtEoIDjZQJfA1KvEMFN2yLoU8OZHJDmYumB/hBJnUqYgxe
	SOQFm/k8+mJc49DJgRQFcu1T9uuGnMWt
X-Received: by 10.36.61.204 with SMTP id n195mr16037284itn.76.1492538866840;
	Tue, 18 Apr 2017 11:07:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Tue, 18 Apr 2017 11:07:06 -0700 (PDT)
X-Originating-IP: [82.22.166.118]
In-Reply-To: <CAPyrkgycU=hMySnqGi7aPGdJeqmh2zqwfJOisOyk1J2uaRcYNw@mail.gmail.com>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
	<CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
	<20170418125837.GA2724@carbonA>
	<CAPyrkgycU=hMySnqGi7aPGdJeqmh2zqwfJOisOyk1J2uaRcYNw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 18 Apr 2017 19:07:06 +0100
Message-ID: <CAK18fxH1NRGuUBp+4cbKCjFK1SdXvC69mOq9ftwy3nY5qev2AA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 18:07:50 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 18, 2017 at 6:23 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Tue, Apr 18, 2017 at 1:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> On Tue, Apr 18, 2017 at 12:10:47PM +0100, Paul Barker wrote:
>>> On Fri, Apr 14, 2017 at 9:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>> >
>>> > -LINUX_VERSION ?= "4.9.13"
>>> > +LINUX_VERSION ?= "4.9.21"
>>> >
>>> >
>>>
>>> I'm going to backport this to morty and test this week. Any other
>>> patches worth testing for morty at the same time?
>>>
>>
>> I would probably want to have 64b rpi3 too in morty. And yes, 4.9
>> defaulted for kernel?
>>
>
> I'd support adding extra machines if we can (raspberrypi0-wifi and
> raspberrypi3-64) and having those use Linux 4.9. However, I'd be
> reticent to change the default kernel version for existing machines on
> a stable branch.

I agree.

>
> I'll have a go at backporting the addition of the extra machines. I
> can test raspberrypi3-64 on hardware myself but I don't have a
> raspberrypi0-wifi to test on.

I already pushed a PR for rpi0 wifi for morty and I'm testing it now.

