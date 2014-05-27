Return-Path: <b.weissbach@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BD38E00B66; Tue, 27 May 2014 01:48:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.weissbach[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-we0-f170.google.com (unknown [74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE9A8E00985
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 01:48:22 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id u57so9394441wes.1
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 01:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=X/k50UX3/ptUaWh03lOxYH1EyLxgqaslfKF6M4v8CR4=;
	b=xUUGSJvImiB5UcF4gEi6P8Q0hPFKtNT2V07zeObBModtZZfkdPUn4vFvRB9Wn+t0aV
	QZfX+Ji3OrLYXg9hsJTMLoZAaqvxXYlYEEdhOpC0Obj3i7mExe/qg/dZjCew8m1cgO4/
	tM+mzYeNZxdqu6cjOlja0Tyd+HZuT3Y/OrJUpP4AF+8bL566Q7UMri6Utga9M9q0bPE+
	yiTKBgWglBwc7PBogvv0LS+FXosxf/2yQsys9d8OyKEqa1+Dw0NfRhd9VbJFoSHIL4/A
	CDdlMvZ8PeimKRK38L8Rr9rE8fg1HleItu2rvVLxUjqK6k1XYjSeVaOSszwefawIQLTu
	goxw==
X-Received: by 10.194.80.7 with SMTP id n7mr38577328wjx.8.1401180501732; Tue,
	27 May 2014 01:48:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.129.74 with HTTP; Tue, 27 May 2014 01:48:01 -0700 (PDT)
In-Reply-To: <CAMCfZKGMAN3ZgKQa3s-yN2kOY5BJni-5yT9LbeD-TsK_sxz38g@mail.gmail.com>
References: <CAJhyh6m8NuB0V=KOqCOscpDZm_m8X=OQGF4HAn39KR+Etjud8A@mail.gmail.com>
	<CAMCfZKGMAN3ZgKQa3s-yN2kOY5BJni-5yT9LbeD-TsK_sxz38g@mail.gmail.com>
From: =?UTF-8?Q?Bastian_Wei=C3=9Fbach?= <b.weissbach@gmail.com>
Date: Tue, 27 May 2014 10:48:01 +0200
Message-ID: <CAJhyh6=rXfS8xH-X_zbQruwhULGJAi=fApbvBMqP2SXCRYT42g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 27 May 2014 08:48:26 -0000
Content-Type: multipart/alternative; boundary=047d7beb9c8012740804fa5dc21b

--047d7beb9c8012740804fa5dc21b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

in the future I would like to use egl instead of x11. But for the moment I
would be happy if I could get any results ;).

This time I added those lines to my conf/local.conf:

IMAGE_INSTALL_append =3D " cinematicexperience "
DISTRO_FEATURES_append =3D " x11 "

then I build core-image-x11. The QT5 CinematicExperience still tells me
that xcb plugin is missing.

Regards,







2014-05-22 22:45 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:

> Bastian,
>
>
> On Thu, May 22, 2014 at 12:32 PM, Bastian Wei=C3=9Fbach <b.weissbach@gmai=
l.com>wrote:
>
>> Hey Guys,
>>
>> I'm trying to build a Linux for a generic X86 system with QT5.
>>
>> I've tried to go the simple way. I cloned the nessesary layers
>> (meta-intel and meta-qt5). Then I selected  "intel-corei7-64" as MACHINE
>> and added cinematicexperience to my image. Then I build core-image-minim=
al.
>>
>> But when I try to start Qt5_CinematicExperience (on the target) it
>> failed because of the missing xcb plugin.
>>
>> Is there anything I missed?
>>
>> Thanks for your help!
>>
>
> If you want to use qt5 with X11 you need to add DISTRO_FEATURES_append
> onto your local.conf
> But if tou want to use opengl or famebuffer take a look at PACKAGECONFIG
> options on:
>
> meta-qt5/recipes-qt/qt5/qtbase.inc
>
>
> I would recommend you to you core-image-x11 or core-image-base.
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=3Dassinatu=
ra_diego&utm_medium=3De-mail&utm_campaign=3DAssinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>

--047d7beb9c8012740804fa5dc21b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>in the future I would like to use e=
gl instead of x11. But for the moment I would be happy if I could get any r=
esults ;).=C2=A0</div><div><br></div><div>This time I added those lines to =
my conf/local.conf:</div>

<div><br></div><div><div>IMAGE_INSTALL_append =3D &quot; cinematicexperienc=
e &quot;</div><div>DISTRO_FEATURES_append =3D &quot; x11 &quot;</div></div>=
<div><br></div><div>then I build=C2=A0core-image-x11. The QT5 CinematicExpe=
rience still tells me that xcb plugin is missing.</div>

<div><br></div><div>Regards,</div><div><br></div><div><br></div><div><br></=
div><div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><br>=
<div class=3D"gmail_quote">2014-05-22 22:45 GMT+02:00 Diego Sueiro <span di=
r=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">d=
iego.sueiro@gmail.com</a>&gt;</span>:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Bastian,<div><br><div class=
=3D"gmail_extra"><div><div class=3D"h5"><br><div class=3D"gmail_quote">On T=
hu, May 22, 2014 at 12:32 PM, Bastian Wei=C3=9Fbach <span dir=3D"ltr">&lt;<=
a href=3D"mailto:b.weissbach@gmail.com" target=3D"_blank">b.weissbach@gmail=
.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">Hey Guys,<div><br></div><div>I&#39;m tryi=
ng to build a Linux for a generic X86 system with QT5.=C2=A0</div>



<div><br></div><div>I&#39;ve tried to go the simple way. I cloned the nesse=
sary layers (meta-intel and meta-qt5). Then I selected =C2=A0&quot;intel-co=
rei7-64&quot; as MACHINE and added=C2=A0cinematicexperience to my image. Th=
en I build core-image-minimal.=C2=A0</div>





<div><br></div><div>But when I try to start=C2=A0<span style=3D"background-=
color:rgb(249,249,249)"><font color=3D"#000000" face=3D"monospace, Courier"=
><span style=3D"line-height:1.1em">Qt5_CinematicExperience (on the target) =
it failed=C2=A0</span><span style=3D"line-height:14.300000190734863px">beca=
use</span><span style=3D"line-height:1.1em">=C2=A0of the missing xcb plugin=
.=C2=A0</span></font></span></div>





<div><span style=3D"background-color:rgb(249,249,249)"><font color=3D"#0000=
00" face=3D"monospace, Courier"><span style=3D"line-height:1.1em"><br></spa=
n></font></span></div><div><span style=3D"background-color:rgb(249,249,249)=
"><font color=3D"#000000" face=3D"monospace, Courier"><span style=3D"line-h=
eight:1.1em">Is there anything I missed?=C2=A0</span></font></span></div>





<div><span style=3D"background-color:rgb(249,249,249)"><font color=3D"#0000=
00" face=3D"monospace, Courier"><span style=3D"line-height:1.1em"><br></spa=
n></font></span></div><div><span style=3D"background-color:rgb(249,249,249)=
"><font color=3D"#000000" face=3D"monospace, Courier"><span style=3D"line-h=
eight:1.1em">Thanks for your help!<br>





</span></font></span></div></div>
</blockquote></div><br></div></div>If you want to use qt5 with X11 you need=
 to add=C2=A0DISTRO_FEATURES_append onto your local.conf</div><div class=3D=
"gmail_extra">But if tou want to use opengl or famebuffer take a look at PA=
CKAGECONFIG options on:</div>



</div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"=
><div><div class=3D"gmail_extra">meta-qt5/recipes-qt/qt5/qtbase.inc</div></=
div></blockquote><div><div class=3D"gmail_extra"><br>I would recommend you =
to you core-image-x11 or=C2=A0core-image-base.<br>



<br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>-=
-<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"h=
ttp://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=
=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">=
www.embarcados.com.br</a><br>



<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div></div>
</blockquote></div><br></div>

--047d7beb9c8012740804fa5dc21b--
