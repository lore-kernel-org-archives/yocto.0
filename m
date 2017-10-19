Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 385DFE00CD1; Thu, 19 Oct 2017 12:42:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 017B3E00C45
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 12:42:49 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id w105so103238wrc.0
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 12:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rLscWKcSNzyhltUICqR8T5LM6EFiON25etAxFStoEvw=;
	b=J4uAUVvdaQm1ctSwu3vjFbn6Io7v1Wip+dEpe8rI0Vnw77KI/fdinFlBgUIXAtCpTg
	i+N7423HZop1TOvfL8qE/1sx1PbmtmlaF84rSxw1VbrxRnv/mSwMx41gQF3L/RLIVgYZ
	KHQKMRkSHMykQ4oQCWFtS1LHULxJ8p89caQXHhFFJQjEXKy22ew13X80LrJSWCB15K6b
	lm9Vl8DgaBttCwbMb7x4cb5sfMEkMQxjAHKit8VGJ1deXVR/jrqoh2P1dAamxuBNt2Of
	SE39BhCdGELOpSwrXEVsu4AXFZHSX1XBqiUxRWRkTKX+2/QIUmEfVJonD8a5ms2fAe9O
	qiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rLscWKcSNzyhltUICqR8T5LM6EFiON25etAxFStoEvw=;
	b=ds/RQOeoNcjvXkrADXZiBsDW6tCMiKUe6iFnQ0EKUApzz8y2pnfejjFl206aVpYJJt
	Bxcvu+Yjdag3WsQ7AWi+JrDO1Pb0Pg4BglrSgLc5wD2VOuIIgOBtXnTyPnksNESRmVRV
	Gy2I5BURFS/7onlBiWHvVW94bvjzdEGA7+bmWX0/a/pmhrDGnm4U1slH8nKqzLquM9DZ
	t1pK5QDtQg1IHGwdT9K6SqCx0gdfe4W6mqhQEpR2pgFJcdzzlYDNupQECzeDhR86a6hF
	0/dpqxpmRWMnXJBs89OTYx6C0Fp0Lgpktx94Q4/tOacXiPP+Eoo/TsujsbB1vyqUe6FJ
	sJhA==
X-Gm-Message-State: AMCzsaUsalP4hLMfbhcCmyp6QI5PY+t9Dt9Ul8m+7l4Xgqp10rh14/9A
	p6rREfwApp/QJSH/IHjnnmbXwjsKaA3V0CnOELg=
X-Google-Smtp-Source: ABhQp+RNodoDkMSsvMrnbbvOfi2u++bTy+DDkLHBOHr+WIvtTk1vZNukb1cUPOdWVu9tNmHvBnjzrwO1iGHllb0+XI4=
X-Received: by 10.223.156.203 with SMTP id h11mr2571978wre.188.1508442168707; 
	Thu, 19 Oct 2017 12:42:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.137.212 with HTTP; Thu, 19 Oct 2017 12:42:48 -0700 (PDT)
In-Reply-To: <CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 19 Oct 2017 21:42:48 +0200
Message-ID: <CAAfyv37UHuZe1Bdz+31sSKtmjkBWrabfBRjqmckdPa-iP7bEJQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 Oct 2017 19:42:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

On Thu, Oct 19, 2017 at 9:15 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com> wrote:
>>
>> I'm using latest origin/rocko
>> (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
>> beaglebone core-image-minimal. While build I got this QA error:
>>
>> ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
>> Files/directories were installed but not shipped in any package:
>>   /usr/share/i18n
>
>
> I've seen this (and some other weird ones) in glibc-locales, and they've
> always been resolved by just rebuilding the recipe. bitbake glibc-locale
> -cclean && bitbake glibc-locale might well make it go away.
OK thanks I'll try and get back with result.
>
> Ross

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

