Return-Path: <ashcharles@gmail.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F95AE0090A
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 17:09:55 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id lh14so35142vcb.10
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 17:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sKfLcWw3aE+PRpvk9zp3kWlU1EQnrBPgOpvnToEEm04=;
	b=byOVHLRTxtQ1HyvFQEOghtz5FwxQsS5EbqVPU1hWjUrJ5jvnIYviKS1G14tuyjRGyj
	RkwchgO3GLZ9Ix66H9HnRr57Ru+zrBsXlf8jcfxvDGyayjVpxLuHva6g1wPi2Gm9pgKe
	BRaEDC0azAZX5cdLyRT7BoqL/00lXSCN9d9km8tdCyPFwCFAfNQf7lynqI0tak23Vg1q
	yQIaRLsfrzzEG3F93JEFRbsEovUNdCegHUuASFwlz76payRv2kpvVNbyqW91VxuuGkxS
	U3wpwBCJH3lnfwnt5vH1R27ebyD4rmV9qjBt3COfVXBNM3tbAya0AUhZN1+vbuCkc/GP
	OEFA==
X-Received: by 10.52.186.230 with SMTP id fn6mr11407141vdc.14.1393549794943;
	Thu, 27 Feb 2014 17:09:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.45.134 with HTTP; Thu, 27 Feb 2014 17:09:24 -0800 (PST)
In-Reply-To: <CAMKF1srsi2EfUBsPam0n8DqLJw8+WiZBDMYQoquf0yQGu4VmoA@mail.gmail.com>
References: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
	<CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
	<CAK8F28mEj01FWh6=0XRSduXAVGtvk1vR4+=7pxQn2qfUmjtFkQ@mail.gmail.com>
	<CAMKF1srsi2EfUBsPam0n8DqLJw8+WiZBDMYQoquf0yQGu4VmoA@mail.gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 27 Feb 2014 17:09:24 -0800
Message-ID: <CAK8F28=Z5=T2+z1a=66Jzsi_nOyMWLBOA-F8NZovR8Z=1hTVgg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using MACHINE_EXTRA_RDEPENDS to install wifi Firmware
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
X-List-Received-Date: Fri, 28 Feb 2014 01:09:56 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 27, 2014 at 4:54 PM, Khem Raj <raj.khem@gmail.com> wrote:
> as you can see kernel-firmware-whiteheat is the package name under
> which kernel is packaging it
> so include that if you want the kernel provided one.
Ah---perfect.  That makes sense.
I had
MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686"
I should have had
MACHINE_EXTRA_RDEPENDS += "kernel-firmware-sd8686"

Thanks for your help!
--Ash

