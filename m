Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0364E007F7
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 09:18:17 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id rd3so6283813pab.27
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 09:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=9b2US0JzAO+/p8vqGJKzd8qqz+FUvb5yzHwFVqFlIwQ=;
	b=TZI93d/YdTfNMbWSrmz9inAXMhjPMFmFL602LM1f2tA/1UG37i3eO7UAJkBrQUKDx4
	tL8eYskImaKHDDyaTJusS9WvC9G5j/ZMUuTawpvOHWPeIcSs76uTmjJXzD/sQr7oxwJP
	KXE63yjqKJHHOb01DU17kgjLoZKxUde9slN2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9b2US0JzAO+/p8vqGJKzd8qqz+FUvb5yzHwFVqFlIwQ=;
	b=AfV6MH7zADb2hEmbseg7BarvJMKDKKGc5XEyWoKewnCK6H+S1znGf4EQgCe6ZeBHLY
	Or/9c5HiKeV4fLHdiOqkHH/A69b/4KvZy5SaxqwCQLOgMNIvu3eFL1CISu9Ab0oZ14XD
	obCFfFcgkumQprXyWbxgf3ubQTlNRebJruiANNuWVkDTjLJap2TC99riIDGuOEu6ZCd9
	b01esjGgbKNROzEuzDkpcPdq5K1+6DloFFxqooiwOhh5n3AntkEFIOncHImCQBeLX9gF
	BdSrqb95uNDrixBKtGNYFTO95hUpjgWO3sX/0BAS4W9cIIbrVvOjmGPblg+7dyvvXgOW
	pcew==
X-Gm-Message-State: ALoCoQnWf6+fESO6n6wczVPMy5Sbzn0wvNb7cYmjKcXe1VJIc8yG8B7JYJKLH1OJyz/cEbLIEyFy
MIME-Version: 1.0
X-Received: by 10.67.5.7 with SMTP id ci7mr34814339pad.99.1387387096856; Wed,
	18 Dec 2013 09:18:16 -0800 (PST)
Received: by 10.69.25.101 with HTTP; Wed, 18 Dec 2013 09:18:16 -0800 (PST)
In-Reply-To: <CAE8H0+XZVS8sSV-RKDxOzcvm4CrzUS-BV2bBU7KLmdh9ri=PoQ@mail.gmail.com>
References: <CAE8H0+XZVS8sSV-RKDxOzcvm4CrzUS-BV2bBU7KLmdh9ri=PoQ@mail.gmail.com>
Date: Wed, 18 Dec 2013 09:18:16 -0800
Message-ID: <CA+gsK-od0B330bQZB97t6jQkNC+T4_m_WT1shMcOvuVsOgMzGg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-tiny, boot and filesystems
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
X-List-Received-Date: Wed, 18 Dec 2013 17:18:17 -0000
Content-Type: multipart/alternative; boundary=047d7b16013f13070d04edd23b9b

--047d7b16013f13070d04edd23b9b
Content-Type: text/plain; charset=ISO-8859-1

John,

What is your actual problem? You appended the tiny-init recipe and your
changes do or do not get put into the rootfs? If you could post your recipe
then folks can look at it.

As far as boot time is concerned, you need to distinguish boot loader and
kernel boot from user space. It looks as if you are trying to optimize your
user space boot time by using an image that starts less services. What
services you need of course depends on your application. To optimize user
space boot process you may also want to investigate systemd instead of SysV
init.

Rudi


On Wed, Dec 18, 2013 at 8:26 AM, r10kindsofpeople <
r10kindsofpeople@gmail.com> wrote:

> I've been beating my head for a few days now, and would love a little
> guidance.  Acknowledging that there are multiple ways to skin the cat, my
> immediate goal is to reduce the boot time, presumably using poky-tiny.
>
> I have poky-tiny building for my hardware under dora.
> I have it booting on crownbay hardware by copying the .ext2 image onto the
> sdcard, installing grub, copying the .cpio.gz file on to the card, and
> using grub to load the kernel image and initrd the filesystem.
>
> I'm wondering if that last bit about initrd is the 'best' option, or if I
> should be overlaying a write-able filesystem on top of the original .ext2
> file system?  How?
>
> And I'm pretty sure I've not got something right...I figured out how to
> .bbappend the tiny-init recipe and get my own edits into 'init' and
> 'rc.local', but it appears those files and changes made it into both the
> ext2 file system and the .cpio.gz initrd file system.  On one hand, I'm
> grateful since it works, but 'both' seems to point at me getting something
> wrong.
>
> Any links to clear tutorials would be greatly appreciated.  There's a
> wealth of information available on this topic, but none that seems
> comprehensive (that I've found), and as I've said, each seems to take a
> different approach, leaving out a step or two along the way.
>
> John
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b16013f13070d04edd23b9b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">John,<div><br></div><div>What is your actual problem? You =
appended the tiny-init recipe and your changes do or do not get put into th=
e rootfs? If you could post your recipe then folks can look at it.</div><di=
v>
<br></div><div>As far as boot time is concerned, you need to distinguish bo=
ot loader and kernel boot from user space. It looks as if you are trying to=
 optimize your user space boot time by using an image that starts less serv=
ices. What services you need of course depends on your application. To opti=
mize user space boot process you may also want to investigate systemd inste=
ad of SysV init.</div>
<div><br></div><div>Rudi</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Wed, Dec 18, 2013 at 8:26 AM, r10kindsofpeople <span di=
r=3D"ltr">&lt;<a href=3D"mailto:r10kindsofpeople@gmail.com" target=3D"_blan=
k">r10kindsofpeople@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I&#39;ve been beating my he=
ad for a few days now, and would love a little guidance. =A0Acknowledging t=
hat there are multiple ways to skin the cat, my immediate goal is to reduce=
 the boot time, presumably using poky-tiny. =A0<div>


<br></div><div>I have poky-tiny building for my hardware under dora.</div><=
div>I have it booting on crownbay hardware by copying the .ext2 image onto =
the sdcard, installing grub, copying the .cpio.gz file on to the card, and =
using grub to load the kernel image and initrd the filesystem.=A0</div>


<div><br></div><div>I&#39;m wondering if that last bit about initrd is the =
&#39;best&#39; option, or if I should be overlaying a write-able filesystem=
 on top of the original .ext2 file system? =A0How?</div><div><br></div><div=
>

And I&#39;m pretty sure I&#39;ve not got something right...I figured out ho=
w to .bbappend the tiny-init recipe and get my own edits into &#39;init&#39=
; and &#39;rc.local&#39;, but it appears those files and changes made it in=
to both the ext2 file system and the .cpio.gz initrd file system. =A0On one=
 hand, I&#39;m grateful since it works, but &#39;both&#39; seems to point a=
t me getting something wrong. =A0</div>

<div><br></div><div>Any links to clear tutorials would be greatly appreciat=
ed. =A0There&#39;s a wealth of information available on this topic, but non=
e that seems comprehensive (that I&#39;ve found), and as I&#39;ve said, eac=
h seems to take a different approach, leaving out a step or two along the w=
ay. =A0</div>

<div><br></div><div>John</div><div><br></div><div><br></div>
</div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><div><br></div>
</div></div>

--047d7b16013f13070d04edd23b9b--
