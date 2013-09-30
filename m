Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CFEBE01426
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 07:16:35 -0700 (PDT)
Received: by mail-la0-f42.google.com with SMTP id ep20so4593914lab.1
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 07:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tk7JEMijSCaU9OVkehAZ3DQ/Gx11403uBAS74cpGUsc=;
	b=XnnPOZmHfcn4RvJKGATUgZxCTjOWcKh03C/WFFADPC1rT/MGYWVmKbxJcr514yHyU2
	Hns5Nj8xyIMMsi9EiyxGU2FzJyfy2Xb3vMx2qkKh/vT5jjF/Wq5NtbHhPF01cwd7UtFK
	wAxY9Xzvxod5JD3H0E7omRQg0bYf4yw5TqF7zpNuQTozK2Wpp6xSeQZYyCqr99HEooln
	itJQvcnDuOBt6jBX1G5MCktq7cFq95RU32PORabc65l59Zjpqz0X7tdHTbawQ5kCzYmC
	2aIaebGWvO/xjmc1tB2wN4Nc5fSWhDsVGn/0NWZEsl3aaw8kn/+c9EMsGixZQmRyIChy
	q6BA==
MIME-Version: 1.0
X-Received: by 10.112.0.173 with SMTP id 13mr22314239lbf.8.1380550593989; Mon,
	30 Sep 2013 07:16:33 -0700 (PDT)
Received: by 10.114.62.115 with HTTP; Mon, 30 Sep 2013 07:16:33 -0700 (PDT)
In-Reply-To: <2749DF61-2F0B-4979-99A1-79ED463DA601@include7.ch>
References: <2749DF61-2F0B-4979-99A1-79ED463DA601@include7.ch>
Date: Mon, 30 Sep 2013 19:46:33 +0530
Message-ID: <CAE_REAvNLXNhnEMQpB+-wEUmxyB5YKkv6f1auYj=3mw_=xyn4Q@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Jonas Schnelli <jonas.schnelli@include7.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi
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
X-List-Received-Date: Mon, 30 Sep 2013 14:16:40 -0000
Content-Type: multipart/alternative; boundary=f46d042c65a7bfd27a04e79a7b53

--f46d042c65a7bfd27a04e79a7b53
Content-Type: text/plain; charset=ISO-8859-1

Hi Jonas,

I hope you have did below things before starting:
==

How to use it:

1. source poky/oe-init-build-env rpi-build
2. Add needed layer to bblayers.conf:
    - meta-raspberrypi
3  Set MACHINE to raspberrypi in local.conf
4. bitbake rpi-hwup-image
5. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
6. Boot your RPI.
==

//Gaurang Shastri




On Mon, Sep 30, 2013 at 4:30 PM, Jonas Schnelli
<jonas.schnelli@include7.ch>wrote:

> Hi
>
> While building with meta-raspberrypi i encounter the following error:
>
> ERROR: Could not inherit file classes/ sdcard_image-rpi.bbclass
>
>                        | ETA:  00:01:03
> ERROR: Command execution failed: Exited with 1
>
> Any ideas?
>
> i've tried with:
> https://github.com/djwillis/meta-raspberrypi
> and
> git://git.yoctoproject.org/meta-raspberrypi
>
> thanks
> --
> /jonas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f46d042c65a7bfd27a04e79a7b53
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonas,<br><br>I hope you have did below things before s=
tarting:<br>=3D=3D<br><pre>How to use it:

1. source poky/oe-init-build-env rpi-build
2. Add needed layer to bblayers.conf:
    - meta-raspberrypi
3  Set MACHINE to raspberrypi in local.conf
4. bitbake rpi-hwup-image
5. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is u=
sed)
6. Boot your RPI.<br>=3D=3D<br><br></pre><pre>//Gaurang Shastri<br></pre><b=
r></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mo=
n, Sep 30, 2013 at 4:30 PM, Jonas Schnelli <span dir=3D"ltr">&lt;<a href=3D=
"mailto:jonas.schnelli@include7.ch" target=3D"_blank">jonas.schnelli@includ=
e7.ch</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi<br>
<br>
While building with meta-raspberrypi i encounter the following error:<br>
<br>
ERROR: Could not inherit file classes/ sdcard_image-rpi.bbclass =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| ETA: =A000:01=
:03<br>
ERROR: Command execution failed: Exited with 1<br>
<br>
Any ideas?<br>
<br>
i&#39;ve tried with:<br>
<a href=3D"https://github.com/djwillis/meta-raspberrypi" target=3D"_blank">=
https://github.com/djwillis/meta-raspberrypi</a><br>
and<br>
git://<a href=3D"http://git.yoctoproject.org/meta-raspberrypi" target=3D"_b=
lank">git.yoctoproject.org/meta-raspberrypi</a><br>
<br>
thanks<br>
--<br>
/jonas<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--f46d042c65a7bfd27a04e79a7b53--
