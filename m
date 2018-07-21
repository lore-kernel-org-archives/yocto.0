Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BC0CE00D47; Sat, 21 Jul 2018 10:37:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2284E00CC9
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 10:37:04 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id d4-v6so13030563qtn.13
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 10:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=stS7+efiYx9vcvmSFvijBpGnt2Kh7iAuWCDpFuZ/0aA=;
	b=YqKbrZtp9bz06DIA5qoStvU3tSZEZ1GicgEp3jKqoQDbJUVAdtMiLddJpgEZhsH1Y6
	+JfSxp3imn8tVMrvDYlR2cs1PHdEHWEhF1q1gDPSi0PG6kvIBJJ1SmriIUyZxJnjZsig
	HEFjV7BknR+KsMlkrS69up2jkp4W6PZvOFkDe7OLKJqY0txcI8+oQnCidiC2thg2O7Wz
	xi9Mto4U8qjiFNPkOa6gXcsZ/MPzt29Nhy0HUWg9bnTcwLgUQ0BgAtpWJq/19GmSV+Un
	P1NbKOa83DHdhCo2KonYIHnprKtlOAj+rmnk33h1ij/FD+XgiEGbwol2D3lPduF4P8Ak
	OHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=stS7+efiYx9vcvmSFvijBpGnt2Kh7iAuWCDpFuZ/0aA=;
	b=GybhYtOy+pgiTMFG68128KXHI+siGQW5U+tbpfZ3Qf3GTInYqW26sZ3W2ag5amkvpL
	1N1SSLzzQHfNf5b5MStujN5IYM4YelnPxk/sO5AxslEKk9OtWCskQmFYthlBksmIxRgW
	c9KbgVbmeQgHykLISkbBJs+gXi4Rlc4antPnFIHGiZGa+ZzHR8HosoO//2j1yusBfyDK
	Dlmmr73l+LqEcdbw8IJwUduyN1Y3W+b58ZuDojLkzUkttZ2CF4Z+K0DUSMmkVQ+jGKZf
	NSHS5AkkaVAFrG4w1c6i4at1Jqv8Volsgru+O5QitMJBBgSQ65BeZ//IUYXXNJrJzb2m
	XQRg==
X-Gm-Message-State: AOUpUlEdN98VBSKt9qMoFEHzZ2LuSA6q2SZEjgz+1Dr1PY/Nv5iQ+rcB
	kp+huQCUFOdyzyjGf7vs5zJoEO39vSOsfIy86nTR06HU
X-Google-Smtp-Source: AAOMgperSamZDenBVMPH721rivpGFMkJ8og2RW7JBZvKvEZmOZPiY6eGUPt1gsUQyHY6l5Ug65b8LiioMM5rHEo9vTs=
X-Received: by 2002:ac8:70c5:: with SMTP id
	g5-v6mr6357069qtp.376.1532194624372; 
	Sat, 21 Jul 2018 10:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <b3f32948-7bc8-97b1-24fd-5a59e68e3ade@faresoftware.it>
In-Reply-To: <b3f32948-7bc8-97b1-24fd-5a59e68e3ade@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 21 Jul 2018 10:36:38 -0700
Message-ID: <CAMKF1sovbyhoVv=GA4wkMq9iVsipWc+JNT3poShj6jfc32a1jg@mail.gmail.com>
To: mauro@faresoftware.it
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: python-cython_0.25.2 Krogoth: EXCLUDE_FROM_WORLD
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
X-List-Received-Date: Sat, 21 Jul 2018 17:37:06 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jul 21, 2018 at 5:44 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all
>
> I'd like to add cython 0.25.2 to Krogoth.
>
> I need it to try kivy in Krogoth on IMX6
>
>
> In my layer under recipes-devtools/python folder I added the recipe
>
> python-cython_0.25.2.bb with this inside
>
>
> inherit setuptools
> require recipes-devtools/python/python-cython.inc
>
>
> RDEPENDS_${PN} += " \
>      python-distribute \
> "
>
> If I run
>
> bitbake -s -vD | grep cython
>
>
> this is the behaviour
>
> mauro@z600:~/Sources/bsp/clini5-build$ bitbake -s  | grep cython
> python-cython :0.24-r0
> python-cython-native :0.24-r0
> python3-cython :0.24-r0
> python3-cython-native :0.24-r0
>
> Why the 0.25.2 version is ignored?

I think its because of layer priority. your layer should be higher
priority than meta-python

>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

