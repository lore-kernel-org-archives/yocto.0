Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94368E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 21:41:53 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id es8so4066575obc.28
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 21:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9vTfsBaiyL/fNlcRXM7hd+0I4X0DngLClAvfCTnEN0g=;
	b=ZuM5Ck/PMn0+AtJFkuZQf5/wL40zwO9KlV7knj4XoQWVpM/JNt+/kjwe6iIfP6bje+
	Pba+1Wpv6vtKip/3aceBcDcifwyiYxdAY5mdg6890iuKilt3vsg6aovfR/QfXJrmlcdq
	lq6UajdtnrwpBUTbL5taGKlLorZ/6uAHcS2Bo7A/ibNIZJJBQOQSxC/Da8XtOQzey1DY
	nIM1S0fzBSsyS7qQz4joTD08bWf6iCzAE4k4zyQbMlyFTq2zGIhoi/zfSaUchSObgTVf
	paGR5CvQ2SPI8sLAbpvX1jUnFoSyp/CX+M3tKuEHHBEakgP/T/deRQVaYajuGd3zu1DF
	MNdg==
X-Received: by 10.182.113.195 with SMTP id ja3mr986647obb.46.1377751312311;
	Wed, 28 Aug 2013 21:41:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.227.138 with HTTP; Wed, 28 Aug 2013 21:41:31 -0700 (PDT)
In-Reply-To: <29315361.frJshNW40m@helios>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<1843652.5ibqSWhFnV@helios>
	<CA+Z6RkVO6-Szno9iG179ZEVk6DM0WMWYOHece6A_gCx89NoLFg@mail.gmail.com>
	<29315361.frJshNW40m@helios>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 29 Aug 2013 10:11:31 +0530
Message-ID: <CA+Z6RkU+5fY9DAz_RCstCj1f_L9PvVEWC1pMaahKjFjjLgkrvQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Thu, 29 Aug 2013 04:41:53 -0000
Content-Type: multipart/alternative; boundary=089e013d0db08f2c1704e50eb9e0

--089e013d0db08f2c1704e50eb9e0
Content-Type: text/plain; charset=ISO-8859-1

In order to execute
"bitbake -c populate_sdk poky-image" are we supposed to declare
BUILD_ARCH or SDK_ARCH somewhere in local.conf file?
Yocto Documentation has not mentioned anything like that. Just a doubt as
"bitbake poky-image" is working fine though populate_sdk is giving problem..


On Wed, Aug 28, 2013 at 8:11 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 28 August 2013 13:23:04 Navani Srivastava wrote:
> > Following is my image file to generate rootfs image with SDK having Qt
> > support..
> > I am able to build SDK successfully but on building any Qt application
> with
> > generated SDK getting following error message-
> >
> >
> /opt/poky/1.3.2/sysroots/EBboard-poky-linux-gnueabi//usr/include/qtopia/QtCo
> > re/qglobal.h:68:21: fatal error: algorithm: No such file or directory
> > compilation terminated.
> > make[2]: *** [obj_rel/AdjustedTime.o] Error 1
> >
> > Please suggest..
>
> I can't tell from the little amount of the error output you've given but it
> sounds like either standard C++ headers are not installed, or they are but
> the
> compiler can't find them for some reason.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e013d0db08f2c1704e50eb9e0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>In order to execute <br></div>&quot;bitbake -c p=
opulate_sdk poky-image&quot; are we supposed to declare <br>BUILD_ARCH or S=
DK_ARCH somewhere in local.conf file?<br></div>Yocto Documentation has not =
mentioned anything like that. Just a doubt as &quot;bitbake poky-image&quot=
; is working fine though populate_sdk is giving problem..<br>

</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Aug 28, 2013 at 8:11 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.i=
ntel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 28 August 201=
3 13:23:04 Navani Srivastava wrote:<br>
&gt; Following is my image file to generate rootfs image with SDK having Qt=
<br>
&gt; support..<br>
&gt; I am able to build SDK successfully but on building any Qt application=
 with<br>
&gt; generated SDK getting following error message-<br>
&gt;<br>
&gt; /opt/poky/1.3.2/sysroots/EBboard-poky-linux-gnueabi//usr/include/qtopi=
a/QtCo<br>
&gt; re/qglobal.h:68:21: fatal error: algorithm: No such file or directory<=
br>
&gt; compilation terminated.<br>
&gt; make[2]: *** [obj_rel/AdjustedTime.o] Error 1<br>
&gt;<br>
&gt; Please suggest..<br>
<br>
</div>I can&#39;t tell from the little amount of the error output you&#39;v=
e given but it<br>
sounds like either standard C++ headers are not installed, or they are but =
the<br>
compiler can&#39;t find them for some reason.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e013d0db08f2c1704e50eb9e0--
