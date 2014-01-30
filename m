Return-Path: <adam.yh.lee@gmail.com>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AE2DE005BB
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 10:36:00 -0800 (PST)
Received: by mail-lb0-f177.google.com with SMTP id z5so2775107lbh.8
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 10:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=r/5mxPYiOGWQuTO1TyT/ih/oZKclIGtJdicEyYAlDkY=;
	b=XBfg89Qdrv4hf4ovxWQm3Z5QFiXVp90Au/C94iNvimKTvYEUzoMQQ+1f3+IiQDDMb1
	cpzdDOY2JqIfy/vguGNHBlXw0TShFOBxE1+v5oElre8PTPfPMMtrea5qAt2TkwdMDFEO
	CJ1axpBgDg7vz3dxAhc/OH83XPSIMB+cCVfSvhSIFKjBr0NtCIRBQ2pOp6k5JvIS+97u
	dGOcM67EWkfXc+6vr64Rk6kgcLeYyHKShi3zb7py+EK8fvg26jkcneKTIHjSfmOvnRHa
	JLzaPxqJ5ZSTqejk6X6rZ5X7NG8/Mf8fTe1LcJTlGW3BnYU93HjPVSG6E/s0Z/UzcSsi
	s9EQ==
MIME-Version: 1.0
X-Received: by 10.152.23.132 with SMTP id m4mr2318301laf.34.1391106958813;
	Thu, 30 Jan 2014 10:35:58 -0800 (PST)
Received: by 10.114.57.68 with HTTP; Thu, 30 Jan 2014 10:35:58 -0800 (PST)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A72FF261B05@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A72FF261B05@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Thu, 30 Jan 2014 10:35:58 -0800
Message-ID: <CAFeBWL4s2dTtYd_C04kCzMY40fpE57qqbiZpxZBkJeBBRSEU6w@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nested If else
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
X-List-Received-Date: Thu, 30 Jan 2014 18:36:03 -0000
Content-Type: multipart/alternative; boundary=089e0160b5ee1ff00d04f13454fb

--089e0160b5ee1ff00d04f13454fb
Content-Type: text/plain; charset=ISO-8859-1

It would help if you provided more context, but this might be what you are
looking for -
http://cgit.openembedded.org/cgit.cgi/openembedded-core/tree/meta/recipes-core/systemd/systemd-serialgetty.bb?h=master

Adam


On Tue, Jan 28, 2014 at 4:38 AM, Rohit2 Jindal <rohit2.jindal@aricent.com>wrote:

>  Hi,
>
>
>
>
>
> I s there any thing like nested if else kind of statements exist in yocto
> ???
>
>
>
> Regards,
>
> Rohit Jindal
>
>
>
>
>
> ===============================================================================
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
>
> ===============================================================================
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0160b5ee1ff00d04f13454fb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It would help if you provided more context, but this might=
 be what you are looking for - =A0<a href=3D"http://cgit.openembedded.org/c=
git.cgi/openembedded-core/tree/meta/recipes-core/systemd/systemd-serialgett=
y.bb?h=3Dmaster">http://cgit.openembedded.org/cgit.cgi/openembedded-core/tr=
ee/meta/recipes-core/systemd/systemd-serialgetty.bb?h=3Dmaster</a><div>
<br></div><div>Adam</div></div><div class=3D"gmail_extra"><br><br><div clas=
s=3D"gmail_quote">On Tue, Jan 28, 2014 at 4:38 AM, Rohit2 Jindal <span dir=
=3D"ltr">&lt;<a href=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank"=
>rohit2.jindal@aricent.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">I s there any thing like nested if else kind of stat=
ements exist in yocto ???<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Rohit Jindal<u></u><u></u></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to <a href=3D"http://www.aricent.com/legal/email_disclaimer.ht=
ml" target=3D"_blank">http://www.aricent.com/legal/email_disclaimer.html</a=
><br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e0160b5ee1ff00d04f13454fb--
