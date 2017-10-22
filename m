Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8BFEE00CC1; Sun, 22 Oct 2017 16:11:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 130F4E00928
	for <yocto@yoctoproject.org>; Sun, 22 Oct 2017 16:11:48 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id 196so6561184wma.1
	for <yocto@yoctoproject.org>; Sun, 22 Oct 2017 16:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oczwfFsWC2FhGOuWmOr5sPVvVis1KLbt/DH/RQDsfK0=;
	b=gpPQiqZ50kkr87lwYwqXgit7+EEF60/SiGjII+LjoDxCjmTlDaT6glhkyODnjQBPoD
	diOs3wLPW1O/3Bt6ImUT+NGmJETcxe1EqyRA6OjL3K4H+B/IxGHm4oY8czIAZ9fuSlMf
	yUfo3kIsEPSyMvzD7VsKcbPls9JokIh5aFdlju4mdzKVT9tXp0Azc3SYgJse3NGwUeOq
	U8CM92Yedp8q0L1FAdIQDI/c/LbGQiN2LoLCGowRdzK9FrVBLCRTD78/K3gROwdhcRgn
	8eGl1YeL87MdNUW0nb8mSVjyAeDuY1Fcqsh2gRZIrdgRxLktCxnBUwzW/dE6IeWKSe8O
	+jEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oczwfFsWC2FhGOuWmOr5sPVvVis1KLbt/DH/RQDsfK0=;
	b=SlO+tDQZERcgPz8WXsB3TVHyHZkKc06oCTR5Q1mnmjg0YwOnDkAF2AwWP6FYRybmyv
	6xjT8lAOH8i45CUR3BYbkVUYUv5kCCGKMX0ar7bisPrx84dmS4IRsKk9ZGbcTy5/iMaV
	5DwRtVew/I4oN8Ljcy3mp+s+P8vgGRNOlsJNSvwqELoz9BpXiVShJ3hWv3b+D9GHn3UX
	ZB0vgM/zj1Z+37NnuVul1jDoe65SWP+ee69gujg31BC2Vaoo5kB5sD2XdzQBSDujsXUA
	YbWgEMxGs4ZxpKOlBvfaVmTbeAl6fJpbHz2p1na9LB1aVcFpWMWPLKOSFcplMm8LC/ik
	wipw==
X-Gm-Message-State: AMCzsaXSoew4NDyNaviEQHEpehTYnpEwTrH3BjSiVQXwFsQy/a0Puh5N
	1qAj5+fAUG0QN8O4qAhTthHLIrGcYAJuRID3NOqEL+81
X-Google-Smtp-Source: ABhQp+RktDnIbF3NO2hFvtGmQdCVKXsd2m5nOm+iq58PnIl2L6UrVlPHEUIEpVzzq11Zzmfpg/95bMSOyAW42Qhpafw=
X-Received: by 10.80.215.146 with SMTP id w18mr14025497edi.81.1508713907972;
	Sun, 22 Oct 2017 16:11:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.204.143 with HTTP; Sun, 22 Oct 2017 16:11:47 -0700 (PDT)
In-Reply-To: <7e4405635662496696c940f21d8591a7@sakuraus.com>
References: <7e4405635662496696c940f21d8591a7@sakuraus.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Mon, 23 Oct 2017 01:11:47 +0200
Message-ID: <CAAQYJAu4e4WCUAP55pPUpU-7mZ5ixq8AAEtHpGv7zqEjj2xipQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with populate_sdk
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
X-List-Received-Date: Sun, 22 Oct 2017 23:11:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 19, 2017 at 8:26 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
> I'm trying to build an SDK for a Raspberry Pi3, and I got a problem with the
> files from one of my custom recipes.
>
>
> In my recipe I have:
>
> FILES_${PN}-dev = "lib/lib${PN}.a lib/lib${PN}_unix.a lib/pkgconfig
> include/canfestival/*.h"
>
>
> The *.a files get put into staticdev not dev in the package split.
>
>
> In my image recipe I've added:
>
> IMAGE_FEATURES += "dev-pkgs  staticdev-pkgs"
>
> I get all of the libraries in my image. In the SDK I don't get the *.a
> libraries from the staticdev, I do get the header files which were put into
> dev.
>
>
> So, at this point I'm a bit confused, even though I include both the dev &
> staticdev I am only getting the dev files in the SDK. And, also, why are the
> *.a libs being put into staticdev in the first place?
>
>

Hi,
these defaults are defined in meta/conf/bitbake.conf:

PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale
${PACKAGE_BEFORE_PN} ${PN}"

This means that staticdev package is created before dev package, just after dbg.

and

FILES_${PN}-staticdev = "${libdir}/*.a ${base_libdir}/*.a ${libdir}/${BPN}/*.a"

indicates that the .a files in these dirs belongs to the staticdev package.

Now, I guess you should try:

 SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs staticdev-pkgs"

Se https://lists.yoctoproject.org/pipermail/yocto/2014-September/021645.html

Cheers
Andrea


> Regards, Greg
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

