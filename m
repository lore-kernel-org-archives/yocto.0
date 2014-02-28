Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A227E0090A
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 16:55:20 -0800 (PST)
Received: by mail-ie0-f181.google.com with SMTP id lx4so2843109iec.12
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 16:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=laJZhbEyqYcvKAkNWlZetBTVJuVVsBTFufWbYs7GmHY=;
	b=wIItD4DA0Wo5YospmCdbitEAbivTakiZez3m5A1cSl025Lgf8DRhG4Si6kV+8GqlUq
	z449KAaMXD0z0Innw8CisB8QSJUPnTiDwysdH9gLQkhNRXFCZr4t7kEcGqO+AMuCoZXY
	Pvhy0s+d6FLgoAXwpv6nj8pjfC9hUVBz9fLUa+l9yslesXu+gKTJnQJyEx7/5a3+Cjkf
	Fq/a/eGkVM1/S+MA5lp8+dAR0+p2W3hilfQeo0CrNEbJpCdt1wN6r6pr0QWUnAqu8fmw
	W630vuNyfzF04GRS1AVOgyWPYCjMPbdlQUK+IDX10sCNrknANnYUSd16oE0JwttwvZIP
	/ADA==
X-Received: by 10.50.124.193 with SMTP id mk1mr916247igb.17.1393548920258;
	Thu, 27 Feb 2014 16:55:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.137 with HTTP; Thu, 27 Feb 2014 16:54:49 -0800 (PST)
In-Reply-To: <CAK8F28mEj01FWh6=0XRSduXAVGtvk1vR4+=7pxQn2qfUmjtFkQ@mail.gmail.com>
References: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
	<CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
	<CAK8F28mEj01FWh6=0XRSduXAVGtvk1vR4+=7pxQn2qfUmjtFkQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Feb 2014 16:54:49 -0800
Message-ID: <CAMKF1srsi2EfUBsPam0n8DqLJw8+WiZBDMYQoquf0yQGu4VmoA@mail.gmail.com>
To: Ash Charles <ashcharles@gmail.com>
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
X-List-Received-Date: Fri, 28 Feb 2014 00:55:23 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 27, 2014 at 4:41 PM, Ash Charles <ashcharles@gmail.com> wrote:
> Hi Khem,
>
> Thanks for your response.
> On Thu, Feb 27, 2014 at 4:26 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> it seems this module is installing/overwriting a file thats coming
>> from some other recipe
>> that you omitted from the errors above so cant tell which one exactly.
> I've posted a more complete log: http://pastebin.com/zydaCXe2
>
> I looked in the work directory to see which other recipe might be
> trying to supply a duplicate file and see both linux-firmware and my
> kernel recipe (based on linux-yocto.inc) e.g.
> ash@gumstux:~/Store/Yocto/yocto/build/tmp/work$ find . -name whiteheat.fw
> ./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/git/whiteheat.fw
> ./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/packages-split/linux-firmware/lib/firmware/whiteheat.fw
> ./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/package/lib/firmware/whiteheat.fw
> ./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/image/lib/firmware/whiteheat.fw
> ./all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+600caefd83-r0/sysroot-destdir/lib/firmware/whiteheat.fw
> ./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/linux-overo-standard-build/firmware/whiteheat.fw
> ./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/packages-split/kernel-firmware-whiteheat/lib/firmware/whiteheat.fw
> ./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/package/lib/firmware/whiteheat.fw
> ./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/image/lib/firmware/whiteheat.fw
> ./overo-poky-linux-gnueabi/linux-gumstix/3.5.7-r0/sysroot-destdir/lib/firmware/whiteheat.fw
>
> This makes me think that linux-firmware shouldn't be getting pulled in
> as the kernel recipe is providing the right firmware.  But without
> MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686", no firmware is
> included in the image at all.

as you can see kernel-firmware-whiteheat is the package name under
which kernel is packaging it
so include that if you want the kernel provided one.

>
> --Ash

