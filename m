Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00935E016A0
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 10:30:07 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id e14so1843075iej.39
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 10:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=Y9S63bAVobjFdsAbatP2V3H8VTB9UGWmzFR6pjSXnkM=;
	b=Hn9Np1BEQR7Ui8NuIDYIBqyMjBvW3Xk9xM2XcIRNhOCsryWGQpWrXf2NclH7jriLgB
	qYGhPRrdrlbFCkS6npCNuMhYbmANVSy2D0AcAgUbcFZodP2Es3iOQGSOafU9oEBGG4Hf
	YzX6uf+BVPYQMzCpWJqm3KOFnCldeZb2Ju3ELW4HBONKr+zCWMFEzgYAc3O9x7ALo8jJ
	aNIwGENsEfHGpgHULjY8xJshybQvLsZhphRm6+qm211r+Vnsud4eXgHqf5370f2Gr4iY
	Aw5ykTAYE9SjNWMRezhJ3OfvpGvtNzIRfCRNgvvo2Xq+4Y/Owm+XyMu+f+cWUm2NVe+h
	0h6Q==
X-Received: by 10.50.26.36 with SMTP id i4mr3080356igg.33.1381944606181; Wed,
	16 Oct 2013 10:30:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Wed, 16 Oct 2013 10:29:46 -0700 (PDT)
In-Reply-To: <CAMCfZKG+A7QD+0Fzj+vQqFP5F8r22o1cB6j0F8WWJUkrKGu-HQ@mail.gmail.com>
References: <CAMCfZKG+A7QD+0Fzj+vQqFP5F8r22o1cB6j0F8WWJUkrKGu-HQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 16 Oct 2013 14:29:46 -0300
Message-ID: <CAMCfZKGQx=dLfdjdX=cUUvovYf_KCwpaGroGB8bofmmA8dnCTA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sdk for custom image failed
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
X-List-Received-Date: Wed, 16 Oct 2013 17:30:12 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe059d22804e8df0d66

--047d7bd76fe059d22804e8df0d66
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Folks,

Any thoughts?

Abra=E7os,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=E7=E3o
UNIVERSIDADE FEDERAL DE ITAJUB=C0

/*long live rock 'n roll*/


2013/10/14 Diego Sueiro <diego.sueiro@gmail.com>

> Folks,
>
> I have a custom image in which installs mplayer with IMAGE_INSTALL +=3D
> "mplayer".
> When I try to generate it's sdk (bitbake mycustom-image -c populate_sdk)
> I'm getting the following error:
>
> | Collected errors:
> |  * satisfy_dependencies_for: Cannot satisfy the following dependencies
> for mplayer2-dev:
> |  * xpext (=3D 1.0-5-r0.0) *
> |  * opkg_install_cmd: Cannot install package mplayer2-dev.
> | DEBUG: Python function do_populate_sdk finished
>
> I've already did a cleansstate on both mplayer and xpext, but the issue
> remains.
> I'm using dylan branch.
>
> Any hints?
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> Engenheiro de Controle e Automa=E7=E3o
> UNIVERSIDADE FEDERAL DE ITAJUB=C0
>
> /*long live rock 'n roll*/
>

--047d7bd76fe059d22804e8df0d66
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Folks,</div><div><br></div>Any thoughts?</div><=
div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>Abra=
=E7os,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador d=
o Embarcados<br>

<a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.c=
om.br</a><br><br>Engenheiro de Controle e Automa=E7=E3o<br>UNIVERSIDADE FED=
ERAL DE ITAJUB=C0<br><br>/*long live rock &#39;n roll*/</div></div>
<br><br><div class=3D"gmail_quote">2013/10/14 Diego Sueiro <span dir=3D"ltr=
">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sue=
iro@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr"><div>Folks,</div><div><br></div><div>I have a custom image=
 in which installs mplayer with=A0IMAGE_INSTALL +=3D &quot;mplayer&quot;.</=
div><div>When I try to generate it&#39;s sdk (bitbake mycustom-image -c pop=
ulate_sdk) I&#39;m getting the following error:</div>


<div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">=
<div><div>| Collected errors:</div><div>| =A0* satisfy_dependencies_for: Ca=
nnot satisfy the following dependencies for mplayer2-dev:</div>
<div>| =A0* <span style=3D"white-space:pre-wrap">	</span>xpext (=3D 1.0-5-r=
0.0) *</div><div>| =A0* opkg_install_cmd: Cannot install package mplayer2-d=
ev.</div><div>| DEBUG: Python function do_populate_sdk finished</div><div><=
br>


</div></div></blockquote></div><div>I&#39;ve already did a cleansstate on b=
oth mplayer and xpext, but the issue remains.</div><div>I&#39;m using dylan=
 branch.<br></div><div><br></div><div>Any hints?</div><br clear=3D"all">


<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcad=
os.com.br" target=3D"_blank">www.embarcados.com.br</a><br><br>Engenheiro de=
 Controle e Automa=E7=E3o<br>


UNIVERSIDADE FEDERAL DE ITAJUB=C0<br><br>/*long live rock &#39;n roll*/</di=
v></div>
</div>
</blockquote></div><br></div>

--047d7bd76fe059d22804e8df0d66--
