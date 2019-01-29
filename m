Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF044E00D14; Tue, 29 Jan 2019 01:58:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3670E00DBA
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 01:58:25 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id d11so3487636itf.2
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 01:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0vbD3ZHb3rlxdiherKSX089TwYZqNt05p98XtnUoE2Q=;
	b=H9JHIhUVjUGfQ/d693U6ek15e4b38mlgsovJ3eeiSIw+t2DkiBg/ps5E3j67BOGfOc
	Dq883yDrMUxT/Pm0iSvghvNsHI0wl/Kp69SoKREOSXK+pdmr92b1o6hS5WYIBltromTA
	FkGA/9oysgNzp3AWtTJVBDLaKsi3FLKpRyXZvijDppmEks+7vwNRbHs2R3lQ5oQqkx90
	nWJT9T7uy0qU8TP0v2YlLApZw49WL9YBrw1wXoXzaq3zJT3p1bB1//w56UjB4yi6jct5
	g9YGPsW5U69661v0CsxjaHN+lP4/W5oXBWvyVENjGsTrXhsjTdlPa55NyySW8kI28PUz
	pS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0vbD3ZHb3rlxdiherKSX089TwYZqNt05p98XtnUoE2Q=;
	b=f0pQwyfqirp7TlPgP+TOViE50XQ/81PTEUnEHMOiXyYRDzM69YQssgB9Ev0flkA9EK
	VIAPDZ+dyl/ltdL4tXF92qiZSQB64iVIum+a3h1ouSRIj3qbv2rBR84izQSOz/uZbTwJ
	ClYP1jhdOSM6gG9t2iLCly0oA58meuwAFBiP/vs1X1gnE70P48toRg3ZbyFpeBr7KthK
	WmQgNGB8LmCcgZjc+iOtek1jrWuhofsnwN1mfCk0xXeTOQH8J1BXejlYBQPtJ9HrGTKh
	6+8S/GDQV6eI5MSTyWkBRtlpcgPymYYjAClwK0eelTRDfWeSPoslPwyrGQs416quXz6+
	Ka9A==
X-Gm-Message-State: AHQUAubGwLL+Dz/v9sM/vcE/WnOSk9YBwnlMYBWf97NBZszP287Akh/z
	tuwBrb1n3B8sj3Ga0RR39J6IruCh+DPVP/p/m689pw==
X-Google-Smtp-Source: AHgI3IbRp2JhJOoFQrCQ54DkWgPiYXJIUpamiQdMwDL++WMbVdiAoJFIrMwn0XhxyBWCDuDV805afhhqPWEgz9iJjTk=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr1404041ite.26.1548755905489; 
	Tue, 29 Jan 2019 01:58:25 -0800 (PST)
MIME-Version: 1.0
References: <64da2270-974e-564f-a4a9-69ecb8611f3a@teltonika.lt>
	<CAJTo0LaR0yH7Zc8vOb37rstxWSCybBYTgYFPG+f97vBLcgvJRQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaR0yH7Zc8vOb37rstxWSCybBYTgYFPG+f97vBLcgvJRQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 29 Jan 2019 09:58:13 +0000
Message-ID: <CAJTo0LaTAwHh4BZ1vLRi0__ubreyJUsBemrbFhi7sUPVohQeeg@mail.gmail.com>
To: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Triggering rebuild on a recipe when MACHINE changes
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
X-List-Received-Date: Tue, 29 Jan 2019 09:58:26 -0000
Content-Type: text/plain; charset="UTF-8"

I meant PACKAGE_ARCH = "${MACHINE_ARCH}", sorry.

Ross

On Tue, 29 Jan 2019 at 09:57, Burton, Ross <ross.burton@intel.com> wrote:
>
> PACKAGE_ARCH = "${MACHINE}"
>
> The default is that the package is tune-specific, so it won't need to
> rebuild on MACHINE changes.
>
> Ross
>
> On Tue, 29 Jan 2019 at 07:09, Kristupas Savickas
> <kristupas.savickas@teltonika.lt> wrote:
> >
> > I have a few recipes that should rebuild when value of MACHINE variable
> > changes. How can this be accomplished? I tried using do_compile[vardeps]
> > += "MACHINE", but this didn't seem to have any affect.
> >
> > --
> > Pagarbiai,
> > Linux programuotojas
> > Kristupas Savickas
> > +370 633 36795
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

