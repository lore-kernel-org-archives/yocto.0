Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 30E9DE00740
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 06:27:22 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id fl17so1656154vcb.27
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2013 06:27:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=8cXbYi82FVuVyGx1qEm5jAl4F8OLJ+Iky8Mmy+QshzQ=;
	b=fFqN65IfQG8Z1ai1/PK8EvA/SjxeCPtqQJUx8QUTmIAmwoRi1ieWuGuPWU16DuYlXJ
	C19AqT2iuKmTffcFCOSRtJPOcH8c+CfVlXW8CyFBkt0swsumNrs1L9Ce8vOAwNVwGh+s
	ECm/Vb4OpUySYygqkYl/mryL9FLoeWa5e3178B/htqApjeHImQN/q5yu3ajYO0jwlLl+
	c5ebx2lWkSzPtJwiezwpGja1lPq/onzUk0VFR8QZSBYIgmEC82uWwCMyhNsOCkR18YaG
	WycShJ2QeVTvHs7bj0ASqDctUdHTIqjNIt2XRL5Oc8UdWjtOUjEX8MDKB5RTeGclkfG/
	awKQ==
X-Received: by 10.52.67.75 with SMTP id l11mr1615473vdt.29.1360247226904; Thu,
	07 Feb 2013 06:27:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.188.18 with HTTP; Thu, 7 Feb 2013 06:26:46 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 7 Feb 2013 16:26:46 +0200
Message-ID: <CAK18fxF3TaptkgRnJfH6HRJaCPFOtD+TiiN7opTVevQt6zW7ew@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQl6ZXX0UkIAqSyAPbsRfYb/ml5wMvZQjjzNGe6JQH/8Tc/A+lnCx1ew1QloL0XliOqto6Ps
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Binary graphics library fixes
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
X-List-Received-Date: Thu, 07 Feb 2013 14:27:22 -0000
Content-Type: multipart/alternative; boundary=20cf307f3a40c4310404d5233c72

--20cf307f3a40c4310404d5233c72
Content-Type: text/plain; charset=ISO-8859-1

We are moving to userland repo. So we will build our libraries so this
patch says on hold - sorry for delay - been ill.


On Wed, Jan 30, 2013 at 11:51 PM, Philipp Wagner
<lists@philipp-wagner.com>wrote:

> Hi,
>
> I'm working on an application that needs the graphics libraries. Right now
> I'm still using the binary libraries (which are still default in
> meta-raspberrypi). Unfortunately, the current default configuration has
> two problems:
> a) It chooses the wrong ABI version (hardfp instead of softfp). To reduce
>    the possibility for error here I changed the recipe to automatically
>    select the right version.
> b) Many applications dlopen the OpenGL libraries. For that to work, they
>    need to be listed in the RPROVIDES list. The second patch does that.
>
> I'm aware of the fact that those binary graphics libraries will be
> replaced with the new "userland" libraries, but until this is all ready
> I'd be grat if those patches could be accepted to have a working-by-default
> configuration in the meta-raspberrypi tree.
>
> Philipp
>
> Philipp Wagner (2):
>   Choose correct ABI version of graphics binaries
>   Add RPROVIDES for OpenGL libraries
>
>  conf/machine/include/rpi-default-providers.inc |   10 +++++++---
>  recipes-bcm/vc-graphics/vc-graphics.inc        |    1 +
>  2 files changed, 8 insertions(+), 3 deletions(-)
>
> --
> 1.7.9.5
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307f3a40c4310404d5233c72
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We are moving to userland repo. So we will build our libra=
ries so this patch says on hold - sorry for delay - been ill.=A0</div><div =
class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jan 30, 20=
13 at 11:51 PM, Philipp Wagner <span dir=3D"ltr">&lt;<a href=3D"mailto:list=
s@philipp-wagner.com" target=3D"_blank">lists@philipp-wagner.com</a>&gt;</s=
pan> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I&#39;m working on an application that needs the graphics libraries. Right =
now<br>
I&#39;m still using the binary libraries (which are still default in<br>
meta-raspberrypi). Unfortunately, the current default configuration has<br>
two problems:<br>
a) It chooses the wrong ABI version (hardfp instead of softfp). To reduce<b=
r>
=A0 =A0the possibility for error here I changed the recipe to automatically=
<br>
=A0 =A0select the right version.<br>
b) Many applications dlopen the OpenGL libraries. For that to work, they<br=
>
=A0 =A0need to be listed in the RPROVIDES list. The second patch does that.=
<br>
<br>
I&#39;m aware of the fact that those binary graphics libraries will be<br>
replaced with the new &quot;userland&quot; libraries, but until this is all=
 ready<br>
I&#39;d be grat if those patches could be accepted to have a working-by-def=
ault<br>
configuration in the meta-raspberrypi tree.<br>
<br>
Philipp<br>
<br>
Philipp Wagner (2):<br>
=A0 Choose correct ABI version of graphics binaries<br>
=A0 Add RPROVIDES for OpenGL libraries<br>
<br>
=A0conf/machine/include/rpi-default-providers.inc | =A0 10 +++++++---<br>
=A0recipes-bcm/vc-graphics/vc-graphics.inc =A0 =A0 =A0 =A0| =A0 =A01 +<br>
=A02 files changed, 8 insertions(+), 3 deletions(-)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.7.9.5<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--20cf307f3a40c4310404d5233c72--
