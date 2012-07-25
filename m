Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88336E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:07:35 -0700 (PDT)
Received: by lagz14 with SMTP id z14so386984lag.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:07:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=PKY0v5ei5wCxsBPj66w24RzGR4Vc7FS6K+ON9uB+gyQ=;
	b=AfyxWaSsu23gwZUJpbb75MK5kjkAsghbgE1CWp+ap9Z9TYb7SPXZMbkp+4fuBUhr1N
	BBLiNLmLCmdc0HJzF/C5NhapG+eRRRrFlYCzm+El6oW+MCa7aXHU5zNS1d5sWA1UblLP
	lUKGno6fzv3ug2fi8Lo2q1wQwz7WQYkilFWNPmch2RgbJDj7Q8sSDPT8dnIHnXc+CkHv
	JEr6WMmyCe0VRhN5ibV0f9EAmdnFMuZYwWRgKQ4lVdxG+yt3BIP038SA87mn7pOKF/wJ
	oiTnYeIAZJuPqrn9V3087NCC20wQYDLS99rBm9U0r8gfSZqtBKsk4O4c5WCrRbNRy+Ax
	hvRg==
Received: by 10.112.42.34 with SMTP id k2mr11460363lbl.0.1343207254214; Wed,
	25 Jul 2012 02:07:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 02:07:13 -0700 (PDT)
In-Reply-To: <CAK18fxEz8R5ighVjaQPAFXMK021Jom8VGshPYqkz2KKjfjXw5A@mail.gmail.com>
References: <CANsUPaM2Vc4MsrjfXy4sgsM=5i3-UFpg=T3sdG43rP_cKQ-HbQ@mail.gmail.com>
	<CAK18fxEz8R5ighVjaQPAFXMK021Jom8VGshPYqkz2KKjfjXw5A@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 11:07:13 +0200
Message-ID: <CANsUPaNJ6=ar+1xxR+tuFv7kM_FytWrU7fah8j9Wy0AHLmduug@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQnlpCi8A9l33RRWw3g8cCWYfXnr2fI0KHLg0zs/2qonRVnMyL0JTd2PD55kKKTHmxgRbjUI
Cc: yocto@yoctoproject.org
Subject: Re: Yocto .sdcard file missing after build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 09:07:36 -0000
Content-Type: multipart/alternative; boundary=485b390f7dae3f475904c5a3cfa5

--485b390f7dae3f475904c5a3cfa5
Content-Type: text/plain; charset=ISO-8859-1

Please look at my notes below..

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Jul 25, 2012 at 10:56 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Wed, Jul 25, 2012 at 11:43 AM, Giovanni Foiani <fnognn@unife.it> wrote:
>
>> Hi,
>>
>> I built some images using the latest Yocto release (with Hob) on a Ubuntu
>> 10.04 32 bit, but when the process finishes (with success) I can't find
>> .sdcard files into "*tmp/deploy/images*" folder.
>>
>
> Not all images create .sdcard files. What image are you talking about? sd
> images are used for machines like imx / rpi where rootfs and/or kernel
> and/or boot-loader are used from sd. In qemu ext3 images are used for
> rootfs and kernel loaded separately.
>
>

I'm building images for iMX53QSB so my situation is where rootfs and/or
kernel and/or boot-loader are used from sd card.
I'm trying to build a qt4-demo-image, do I have to put any configuration
into qt4-demo-image.bb to enable .sdcard creation?


> Some time ago I built some other images using a Ubuntu 11.04 32 bit and
>> .sdcard files were created properly.
>> Could it be a problem of max file size in Ubuntu 10.04?
>> Another question...sdcard files that I built using Ubuntu 11.04 (32 bit)
>> were about 3 GByte, is there a way or configuration to reduce this size?
>>
>> Yes. Use a compression extension. For example sdcard.xz.
>

Is this also a  qt4-demo-image.bb configuration to set?

Thanks

>
> ag
>

--485b390f7dae3f475904c5a3cfa5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Please look at my notes below..</div><div><br></div><div>Thanks=A0</di=
v><div><br></div><div>Giovanni</div><div>--<br><br>Dott. Ing. Giovanni Foia=
ni<br><font face=3D"arial, sans-serif"><span style=3D"border-collapse:colla=
pse"><br>

</span></font></div><div>Cell:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=
=A0 +39-0532-97-4106<br>mail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foi=
ani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a></div><div><spa=
n style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;line-heigh=
t:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div>

<br>
<br><br><div class=3D"gmail_quote">On Wed, Jul 25, 2012 at 10:56 AM, Andrei=
 Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

<div class=3D"gmail_quote"><div class=3D"im">On Wed, Jul 25, 2012 at 11:43 =
AM, Giovanni Foiani <span dir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it=
" target=3D"_blank">fnognn@unife.it</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">



Hi,<div><br></div><div>I built some images using the latest Yocto release (=
with Hob) on a Ubuntu 10.04 32 bit, but when the process finishes (with suc=
cess) I can&#39;t find .sdcard files into &quot;<i>tmp/deploy/images</i>&qu=
ot; folder.</div>



</blockquote><div><br></div></div><div>Not all images create .sdcard files.=
 What image are you talking about? sd images are used for machines like imx=
 / rpi where rootfs and/or kernel and/or=A0boot-loader=A0are used from sd. =
In qemu ext3 images are used for rootfs and kernel loaded separately.=A0</d=
iv>

<div class=3D"im">

<div>=A0</div></div></div></blockquote><div><br></div><div>I&#39;m building=
 images for iMX53QSB so my situation is where=A0rootfs and/or kernel and/or=
=A0boot-loader=A0are used from sd card.</div><div>I&#39;m trying to build a=
 qt4-demo-image, do I have to put any configuration into <a href=3D"http://=
qt4-demo-image.bb">qt4-demo-image.bb</a> to enable .sdcard creation?</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><di=
v class=3D"im"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">



<div>Some time ago I built some other images using=A0a Ubuntu 11.04 32 bit =
and .sdcard files were created properly.</div><div>Could it be a problem of=
 max file size in Ubuntu 10.04?</div><div>Another question...sdcard files t=
hat I built using=A0Ubuntu 11.04 (32 bit) were about 3 GByte, is there a wa=
y or configuration to reduce this size?</div>





<div><br></div></blockquote></div><div>Yes. Use a compression extension. Fo=
r example sdcard.xz.</div></div></blockquote><div><br></div><div>Is this al=
so a =A0<a href=3D"http://qt4-demo-image.bb">qt4-demo-image.bb</a> configur=
ation to set?</div>

<div><br></div><div>Thanks</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D"#888888"><div>=A0</d=
iv><div>ag</div>

</font></span></div>
</blockquote></div><br>

--485b390f7dae3f475904c5a3cfa5--
