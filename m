Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B5C4E0167E
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 06:10:00 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id x13so10258815ief.15
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 06:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2M/L+hFD6vOR3rxiM5cC9CasSaQ+b3bEsd6lySZnoM0=;
	b=Of+oeUeBJmvnlGqoJnkYp/2c+dlVQ1xxhYYTNTsbILiUERmYgxlZy+dgWYk5lHcbyl
	E2z660LpfUQGoF4065X/bGuU1rw6zQrytRgd3lH6xdH9rSb619DyDq2U4Kr3UyHll0M2
	M/dzd34psCqWNS7Mdemo5BXsGQzPQzozHAOxF0JV5mf903eog4M3n8UtJW+dEJspHI6K
	EGGPSFVc35mTo9nhLgG/Dm8LCXIZTxgfvfv/PjatDL6RUTeW9QqNBqgXWJH27tmC4gpE
	N4EZBsDeOTk+d7Lm5D+etKvoYCwPQzCXXgGCK/sD/ZTd+AH/FFlXGIaDSnHB5B/II+w1
	oKfg==
X-Received: by 10.42.62.196 with SMTP id z4mr1290521ich.49.1380546597930; Mon,
	30 Sep 2013 06:09:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.15.137 with HTTP; Mon, 30 Sep 2013 06:09:37 -0700 (PDT)
In-Reply-To: <CAMCfZKEJc8=_iNEZbnHqmVJqPQwUYkoRqb0DzOjHOPsCBcwupQ@mail.gmail.com>
References: <CAMCfZKFWU43x4-2qua2CFG8cTNHk3XbDg6-zpooVThBGXS-uBg@mail.gmail.com>
	<000601cebca7$0a377510$1ea65f30$@annabooks.com>
	<CAMCfZKEexAqUoQ_2mYM4VzsMhy7z+d8w+mYCPey681p5AKoJMA@mail.gmail.com>
	<CAMCfZKEJc8=_iNEZbnHqmVJqPQwUYkoRqb0DzOjHOPsCBcwupQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 30 Sep 2013 10:09:37 -0300
Message-ID: <CAMCfZKF0UMybGD7Pjh_F-DgJM+n0CNTwfH2saP74XtDycGSxPw@mail.gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issues on booting cedartrail image
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
X-List-Received-Date: Mon, 30 Sep 2013 13:10:01 -0000
Content-Type: multipart/alternative; boundary=90e6ba614a769b589204e7998d21

--90e6ba614a769b589204e7998d21
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2013/9/29 Diego Sueiro <diego.sueiro@gmail.com>

>
> Folks,
>
> Serial console issue solved. On this board the DB9 connector is mapped on
> ttyS1.
>
> But I can't still get logged on system with images generated with
> meta-cedartrail on danny branch.
>
> Any hint about udev reported error?
>
>
Folks,

I'm really sorry about the buzz.
The solution for udev issue was in this thread:
https://lists.yoctoproject.org/pipermail/yocto/2012-December/013262.html

Now the system is booting.

Regards,


--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=E7=E3o
UNIVERSIDADE FEDERAL DE ITAJUB=C0

/*long live rock 'n roll*/

--90e6ba614a769b589204e7998d21
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div dir=3D"ltr">2013/9/29=
 Diego Sueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.co=
m" target=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span><br></div></div><=
div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div><div dir=
=3D"ltr">

<div><br></div></div></div><div class=3D"gmail_quote"><div><div dir=3D"ltr"=
><div>Folks,</div><div><br></div><div>Serial console issue solved. On this =
board the DB9 connector is mapped on ttyS1.</div>
<div><br></div><div>But I can&#39;t still get logged on system with images =
generated with meta-cedartrail on danny branch.</div><div><br></div><div>An=
y hint about udev reported error?</div><div><div class=3D"h5"><div><br></di=
v>

</div></div></div></div></div></div></div></blockquote><div><br></div><div =
style>Folks,</div><div style><br></div><div style>I&#39;m really sorry abou=
t the buzz.</div><div style>The solution for udev issue was in this thread:=
</div>

<div style><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2012-D=
ecember/013262.html">https://lists.yoctoproject.org/pipermail/yocto/2012-De=
cember/013262.html</a><br></div><div><br></div><div style>Now the system is=
 booting.</div>

<div><br></div><div>Regards,</div><div><br></div><div><br></div>--<br>*dS<b=
r>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.=
embarcados.com.br/" target=3D"_blank">www.embarcados.com.br</a><br><br>Enge=
nheiro de Controle e Automa=E7=E3o<br>

UNIVERSIDADE FEDERAL DE ITAJUB=C0<br><br><div>/*long live rock &#39;n roll*=
/=A0</div></div></div></div>

--90e6ba614a769b589204e7998d21--
