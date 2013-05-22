Return-Path: <precipice.development@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E01E0129D
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:03:01 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id fb11so629101pad.9
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=91OSkhq+yjm+wp6tbNMVl7If6P5TgxW+MFiEjl/+Cls=;
	b=gFDTnNImtdc7xkbpyIAHq4XUJHg11+Ys3sfo4ROot1k2B9V1okwnAvlF5yP33A+0Lb
	7uxD1UgEyGxhgRoZuShM6tvxeibNDF77cjIVYPDlCF0P7BJM66oJvx4EjU8UsiKhI9CZ
	XsBargxDKyCFfB23ig6KnsYaxAl+dce7U1qY1Udxn5o0SrBILxMiFloRqOCFVZzsF+7M
	1oVyjIqddSe+QND9FIOGQgIqUlFWSZ+mx1yb/AfSfP2jSkxM/g7Ib/KHyqwNwg31DwS1
	tBsAo0rmW1e54Ob2n/ZZmkTAOWuSDEcxHaIbNCi64drMxYNOI4NpLXnbYSYiPpmTs7Cp
	bWjA==
MIME-Version: 1.0
X-Received: by 10.68.14.6 with SMTP id l6mr8863534pbc.202.1369242180858; Wed,
	22 May 2013 10:03:00 -0700 (PDT)
Received: by 10.68.208.67 with HTTP; Wed, 22 May 2013 10:03:00 -0700 (PDT)
In-Reply-To: <CA+gsK-qmFq2NLcd4-AO=aRBC7q3W8fwRarLpnv9-WtS2TWFLtg@mail.gmail.com>
References: <CAN0nBNhwxY1hxj+BAyDKKkVnHSOpcxLfZB+vOq5MQqVvZQiSjA@mail.gmail.com>
	<CA+gsK-qmFq2NLcd4-AO=aRBC7q3W8fwRarLpnv9-WtS2TWFLtg@mail.gmail.com>
Date: Wed, 22 May 2013 10:03:00 -0700
Message-ID: <CAN0nBNisz3mG5mx3JAWHdGCuDmE7yYekdZgNXu4rH6dvJ9qp8g@mail.gmail.com>
From: Precipice Development <precipice.development@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: ADT Install Issues
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
X-List-Received-Date: Wed, 22 May 2013 17:03:01 -0000
Content-Type: multipart/alternative; boundary=bcaec520ee87cd3ac704dd5189f9

--bcaec520ee87cd3ac704dd5189f9
Content-Type: text/plain; charset=ISO-8859-1

Some progress.  Thanks for your help.  My notes are below.  I found a path
to get it working but not as per documentation

I did use my own rootfs image.  In the adt_installer.conf file I had the
following:

YOCTOADT_ROOTFS_mips="minimal-dev sato-sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_mips="minimal-dev"
YOCTOADT_TARGET_SYSROOT_LOC_mips="$HOME/adt/sysroots/mips"

In my eclipse preferences for ADT, I have sysroot pointed to the

I also
grabbed file:///home/jph/downloads/core-image-minimal-dev-routerstationpro.tar.bz2
and did a runqemu-extract-sdk as a test. Pointed my sysroots to the
extracted folder.  I get the same error in Eclipse.  I went ahead and
grabbed the sato image for RSPro and repeated.  Reconfigure projects worked
and gave me an info message only:

Missing PROG mips-poky-linux-dlltool
Missing PROG dlltool hw3
Missing PROG mips-poky-linux-mt

From this image the build worked.  Not sure why I am getting those errors
with the dev image however (both mine and the downloaded one).



On Tue, May 21, 2013 at 10:40 PM, Rudolf Streif <rstreif@linuxfoundation.org
> wrote:

> What root file system are you using with your Eclipse ADT setup? If you
> are using one of the default ones that you can specify in
> adt_installer.conf or your own?
>
> In any case it looks as if your root file system image is not suitable for
> development work. You would need to use image targets that end in *-dev or
> *-sdk such as core-image-minimal-dev.
>
> Rudi
>



-- 
Precipice Development International
http://www.precipicedevelopment.com

--bcaec520ee87cd3ac704dd5189f9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Some progress. =A0Thanks for your help. =A0My n=
otes are below. =A0I found a path to get it working but not as per document=
ation</div><div><br></div>I did use my own rootfs image. =A0In the adt_inst=
aller.conf file I had the following:<div>
<br></div><div><div>YOCTOADT_ROOTFS_mips=3D&quot;minimal-dev sato-sdk&quot;=
</div><div>YOCTOADT_TARGET_SYSROOT_IMAGE_mips=3D&quot;minimal-dev&quot;</di=
v><div>YOCTOADT_TARGET_SYSROOT_LOC_mips=3D&quot;$HOME/adt/sysroots/mips&quo=
t;</div>
</div><div><br></div><div style>In my eclipse preferences for ADT, I have s=
ysroot pointed to the=A0</div><div style><br></div><div style>I also grabbe=
d=A0file:///home/jph/downloads/core-image-minimal-dev-routerstationpro.tar.=
bz2 and did a runqemu-extract-sdk as a test. Pointed my sysroots to the ext=
racted folder. =A0I get the same error in Eclipse. =A0I went ahead and grab=
bed the sato image for RSPro and repeated. =A0Reconfigure projects worked a=
nd gave me an info message only:</div>
<div style><br></div><div style><div>Missing PROG mips-poky-linux-dlltool<s=
pan class=3D"" style=3D"white-space:pre">	</span><span class=3D"" style=3D"=
white-space:pre">	</span></div><div>Missing PROG dlltool<span class=3D"" st=
yle=3D"white-space:pre">	</span>hw3<span class=3D"" style=3D"white-space:pr=
e">		</span></div>
<div>Missing PROG mips-poky-linux-mt<span class=3D"" style=3D"white-space:p=
re">	</span></div><div><br></div><div style>From this image the build worke=
d. =A0Not sure why I am getting those errors with the dev image however (bo=
th mine and the downloaded one).</div>
</div><div><br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, May 21, 2013 at 10:40 PM, Rudolf Streif <span dir=3D"ltr">&=
lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif=
@linuxfoundation.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">What root file system are you using with you=
r Eclipse ADT setup? If you are using one of the default ones that you can =
specify in adt_installer.conf or your own?
<div><br></div><div>In any case it looks as if your root file system image =
is not suitable for development work. You would need to use image targets t=
hat end in *-dev or *-sdk such as core-image-minimal-dev.</div><div><br>

</div><div>Rudi</div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Precipice De=
velopment International<br><a href=3D"http://www.precipicedevelopment.com">=
http://www.precipicedevelopment.com</a>
</div></div>

--bcaec520ee87cd3ac704dd5189f9--
