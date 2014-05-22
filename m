Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0F09E00A44; Thu, 22 May 2014 13:45:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f47.google.com (unknown [209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D24E00975
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 13:45:21 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id j107so6648111qga.34
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 13:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Y+vDG0qxn+Zh59I8WJ+bWaRRpxTcrS2MJH+Om5z8zQ4=;
	b=idEBgYT4QXPkig28Brgd1sVNmpq3a12QBagxKLmULBZQMf3b6JDK2mWE+8+IDMBw7s
	fkrWxexWTllyDeEhx+gwV7cDyQshGTZw/W99ii8D9Y6rZrxJkf58Ln2Hq7GvyB43NptO
	h1tmOx4+XENcwBi+o9hUcgd41CN53Uym3ac5ua86BTmtwgIvULbpXYd2P2ykTbvdh4Kk
	M6AgvrHhVLcslIXIMF96ppLq4DueoOULeB7AixOd7zeoszeXfYa2P00qDAI5+bt0JpW/
	jzy/s1yIc/GBiAEybYXKFDR43rpAh+5j0mR5ekp7FhRE4Eb1tX6QJLL/U+hfQdNrSPgK
	yC4w==
X-Received: by 10.140.101.212 with SMTP id u78mr436878qge.32.1400791521277;
	Thu, 22 May 2014 13:45:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Thu, 22 May 2014 13:45:00 -0700 (PDT)
In-Reply-To: <CAJhyh6m8NuB0V=KOqCOscpDZm_m8X=OQGF4HAn39KR+Etjud8A@mail.gmail.com>
References: <CAJhyh6m8NuB0V=KOqCOscpDZm_m8X=OQGF4HAn39KR+Etjud8A@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 22 May 2014 17:45:00 -0300
Message-ID: <CAMCfZKGMAN3ZgKQa3s-yN2kOY5BJni-5yT9LbeD-TsK_sxz38g@mail.gmail.com>
To: =?ISO-8859-1?Q?Bastian_Wei=DFbach?= <b.weissbach@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QT5 for gernericX86
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
X-List-Received-Date: Thu, 22 May 2014 20:45:25 -0000
Content-Type: multipart/alternative; boundary=001a11c16cfe07bdba04fa0331e2

--001a11c16cfe07bdba04fa0331e2
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bastian,


On Thu, May 22, 2014 at 12:32 PM, Bastian Wei=DFbach <b.weissbach@gmail.com=
>wrote:

> Hey Guys,
>
> I'm trying to build a Linux for a generic X86 system with QT5.
>
> I've tried to go the simple way. I cloned the nessesary layers (meta-inte=
l
> and meta-qt5). Then I selected  "intel-corei7-64" as MACHINE and
> added cinematicexperience to my image. Then I build core-image-minimal.
>
> But when I try to start Qt5_CinematicExperience (on the target) it failed
> because of the missing xcb plugin.
>
> Is there anything I missed?
>
> Thanks for your help!
>

If you want to use qt5 with X11 you need to add DISTRO_FEATURES_append onto
your local.conf
But if tou want to use opengl or famebuffer take a look at PACKAGECONFIG
options on:

meta-qt5/recipes-qt/qt5/qtbase.inc


I would recommend you to you core-image-x11 or core-image-base.

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=3Dassinatura=
_diego&utm_medium=3De-mail&utm_campaign=3DAssinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c16cfe07bdba04fa0331e2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bastian,<div><br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, May 22, 2014 at 12:32 PM, Bastian Wei=DFbach <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:b.weissbach@gmail.com" target=3D"_blank"=
>b.weissbach@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">Hey Guys,<div><br></div><div>I&#39;m tryi=
ng to build a Linux for a generic X86 system with QT5.=A0</div>

<div><br></div><div>I&#39;ve tried to go the simple way. I cloned the nesse=
sary layers (meta-intel and meta-qt5). Then I selected =A0&quot;intel-corei=
7-64&quot; as MACHINE and added=A0cinematicexperience to my image. Then I b=
uild core-image-minimal.=A0</div>



<div><br></div><div>But when I try to start=A0<span style=3D"background-col=
or:rgb(249,249,249)"><font color=3D"#000000" face=3D"monospace, Courier"><s=
pan style=3D"line-height:1.1em">Qt5_CinematicExperience (on the target) it =
failed=A0</span><span style=3D"line-height:14.300000190734863px">because</s=
pan><span style=3D"line-height:1.1em">=A0of the missing xcb plugin.=A0</spa=
n></font></span></div>



<div><span style=3D"background-color:rgb(249,249,249)"><font color=3D"#0000=
00" face=3D"monospace, Courier"><span style=3D"line-height:1.1em"><br></spa=
n></font></span></div><div><span style=3D"background-color:rgb(249,249,249)=
"><font color=3D"#000000" face=3D"monospace, Courier"><span style=3D"line-h=
eight:1.1em">Is there anything I missed?=A0</span></font></span></div>



<div><span style=3D"background-color:rgb(249,249,249)"><font color=3D"#0000=
00" face=3D"monospace, Courier"><span style=3D"line-height:1.1em"><br></spa=
n></font></span></div><div><span style=3D"background-color:rgb(249,249,249)=
"><font color=3D"#000000" face=3D"monospace, Courier"><span style=3D"line-h=
eight:1.1em">Thanks for your help!<br>



</span></font></span></div></div>
</blockquote></div><br>If you want to use qt5 with X11 you need to add=A0DI=
STRO_FEATURES_append onto your local.conf</div><div class=3D"gmail_extra">B=
ut if tou want to use opengl or famebuffer take a look at PACKAGECONFIG opt=
ions on:</div>

</div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"=
><div><div class=3D"gmail_extra">meta-qt5/recipes-qt/qt5/qtbase.inc</div></=
div></blockquote><div><div class=3D"gmail_extra"><br>I would recommend you =
to you core-image-x11 or=A0core-image-base.<br>

<br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>-=
-<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"h=
ttp://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=
=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">=
www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div></div>

--001a11c16cfe07bdba04fa0331e2--
