Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC785E011C5
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 09:13:27 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so9433493iej.36
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 09:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=jd7jvvrodgiZoRVVbnFTRmK1GvFR5bgx2DTEId3L9Rc=;
	b=dImM2J8I0g/8vFhwtnrHATUcsxCNgeJcp+Z3oRrnru0+UFviUa0oxgJBXwO2/xSbEJ
	egQz7lyCzZRLDovxDpgTKVr1qllj9rzGyeb5b6hDNMdONl6MwXPZHWgsyBQz7QyjvxUE
	aQBTuNF0KSKg4opOHUUn2WanHdIEH1mYIovxtqBPAF0Xop6AftETsgq3TaMCG6UsLDec
	TPdsmzFYETjPo4SVFODOny7cfdznXWU7JX+2e3guMmEKWMkvN3UgMo2b+miT8p8NTMWu
	7wj3IFdIjVdlapBcrmvNw8DvtTDLg0JtQe8wK670nrwPyiZiCN5g+R7JlDR5cUWm4E5q
	rXIA==
X-Received: by 10.50.119.4 with SMTP id kq4mr13720457igb.40.1381767206935;
	Mon, 14 Oct 2013 09:13:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Mon, 14 Oct 2013 09:13:06 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 14 Oct 2013 13:13:06 -0300
Message-ID: <CAMCfZKG+A7QD+0Fzj+vQqFP5F8r22o1cB6j0F8WWJUkrKGu-HQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: populate_sdk for custom image failed
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
X-List-Received-Date: Mon, 14 Oct 2013 16:13:28 -0000
Content-Type: multipart/alternative; boundary=089e013c6e4a884d7d04e8b5bf24

--089e013c6e4a884d7d04e8b5bf24
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Folks,

I have a custom image in which installs mplayer with IMAGE_INSTALL +=3D
"mplayer".
When I try to generate it's sdk (bitbake mycustom-image -c populate_sdk)
I'm getting the following error:

| Collected errors:
|  * satisfy_dependencies_for: Cannot satisfy the following dependencies
for mplayer2-dev:
|  * xpext (=3D 1.0-5-r0.0) *
|  * opkg_install_cmd: Cannot install package mplayer2-dev.
| DEBUG: Python function do_populate_sdk finished

I've already did a cleansstate on both mplayer and xpext, but the issue
remains.
I'm using dylan branch.

Any hints?

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=E7=E3o
UNIVERSIDADE FEDERAL DE ITAJUB=C0

/*long live rock 'n roll*/

--089e013c6e4a884d7d04e8b5bf24
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Folks,</div><div style><br></div><div style>I h=
ave a custom image in which installs mplayer with=A0IMAGE_INSTALL +=3D &quo=
t;mplayer&quot;.</div><div style>When I try to generate it&#39;s sdk (bitba=
ke mycustom-image -c populate_sdk) I&#39;m getting the following error:</di=
v>

<div style><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding=
:0px"><div style><div>| Collected errors:</div><div>| =A0* satisfy_dependen=
cies_for: Cannot satisfy the following dependencies for mplayer2-dev:</div>

<div>| =A0* <span class=3D"" style=3D"white-space:pre">	</span>xpext (=3D 1=
.0-5-r0.0) *</div><div>| =A0* opkg_install_cmd: Cannot install package mpla=
yer2-dev.</div><div>| DEBUG: Python function do_populate_sdk finished</div>=
<div>
<br>
</div></div></blockquote></div><div style>I&#39;ve already did a cleansstat=
e on both mplayer and xpext, but the issue remains.</div><div>I&#39;m using=
 dylan branch.<br></div><div><br></div><div style>Any hints?</div><br clear=
=3D"all">

<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcad=
os.com.br" target=3D"_blank">www.embarcados.com.br</a><br><br>Engenheiro de=
 Controle e Automa=E7=E3o<br>

UNIVERSIDADE FEDERAL DE ITAJUB=C0<br><br>/*long live rock &#39;n roll*/</di=
v></div>
</div>

--089e013c6e4a884d7d04e8b5bf24--
