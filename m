Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9B9CE0030B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 08:46:28 -0800 (PST)
Received: by mail-qc0-f176.google.com with SMTP id e16so13978443qcx.7
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 08:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rh4GMXjOszUzQwe6u/lxtIVT0I+o5gmaLenKLIX4XbY=;
	b=c084610r139RWE1QLsHRyvK8bNnXMuklIGWamrMR5GqzWUKNNSyRp2jHBg/HEZGWn5
	glQLy3q6qls0i51jI6cMmLEcNjbJFKoFeL88S2x82OCmhgyacx+ikC6M2zVISKyCmrF6
	gNal6imLN3MZ8ncaswtmawj3TDpPGDgdHCvNwd/Fy9Y/LYQ6YiWoolRfzkeDFaIclBx4
	RV9eDwLCCvgpfXUKq0kw8ynSWxeQh9DX0AFFJAW4fFIVcJhrTiwz0h9AAl9ix762BZMu
	VdTbJgAgPikWlq/hQyJ/ARe5cUmUA/0gcL7mSzuMP3wnEegqnF1S+HmYSl3jgLpRrMla
	xiHA==
X-Received: by 10.224.160.83 with SMTP id m19mr66876579qax.21.1391532387425;
	Tue, 04 Feb 2014 08:46:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.25.47 with HTTP; Tue, 4 Feb 2014 08:46:07 -0800 (PST)
In-Reply-To: <CANyK_8eUyZuFm2ju7yWAXeHPcWoydCGmyoxSAcQA3pXwMArhzQ@mail.gmail.com>
References: <CAMCfZKGN2k1NpUtGiMGK48pi5rzaZQbXrnfPbiL=brGhr4vnxw@mail.gmail.com>
	<CAMCfZKFYTE=oRsXWwRzKNKpvZdPZe8GEby+rB0BY6qCeffWdZw@mail.gmail.com>
	<CANyK_8eUyZuFm2ju7yWAXeHPcWoydCGmyoxSAcQA3pXwMArhzQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 4 Feb 2014 14:46:07 -0200
Message-ID: <CAMCfZKGLFbDDVxjKv35qF6PAmEi3cc0H4+HmjeYTArrsAZAQvg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python package recipe
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
X-List-Received-Date: Tue, 04 Feb 2014 16:46:32 -0000
Content-Type: multipart/alternative; boundary=047d7bacb2aaa5689a04f1976113

--047d7bacb2aaa5689a04f1976113
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

On Tue, Feb 4, 2014 at 10:52 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> This looks like the best you're going to get without fixing the
> upstream source. Just looked at
>
> https://github.com/adafruit/adafruit-beaglebone-io-python/blob/master/overlays/builder.py
> ,
> it contains hard-coded install paths. You could report a bug or submit
> a patch to make these respect the install prefix.
>
I'll take a look on this.

>
> >>
> >> FILES_${PN} = " ${nonarch_base_libdir}/firmware/* \
> >>                  ${exec_prefix} \
>
> What files do you need under ${exec_prefix}? Do you definitely want
> all this in one package and not separate packages for the firmware and
> such?
>
As soon as the python module needs the dtbos it must be installed together.
Now it looks like this:
FILES_${PN} += " ${nonarch_base_libdir}/firmware/* "


> A lot of recipes have to customise the install function and add extra
> directories to FILES_*, don't worry about that.
>

Thanks for your attention.

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

/*long live rock 'n roll*/H

--047d7bacb2aaa5689a04f1976113
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Paul,</div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Tue, Feb 4, 2014 at 10:52 AM, P=
aul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" t=
arget=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":3r3" style=3D"overflow:hidden">This looks like=
 the best you&#39;re going to get without fixing the<br>


upstream source. Just looked at<br>
<a href=3D"https://github.com/adafruit/adafruit-beaglebone-io-python/blob/m=
aster/overlays/builder.py" target=3D"_blank">https://github.com/adafruit/ad=
afruit-beaglebone-io-python/blob/master/overlays/builder.py</a>,<br>
it contains hard-coded install paths. You could report a bug or submit<br>
a patch to make these respect the install prefix.<br></div></blockquote><di=
v style>I&#39;ll take a look on this.=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div id=3D":3r3" style=3D"overflow:hidden">
<div class=3D"im"><br>
&gt;&gt;<br>
&gt;&gt; FILES_${PN} =3D &quot; ${nonarch_base_libdir}/firmware/* \<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${exec_prefix} \<br>
<br>
</div>What files do you need under ${exec_prefix}? Do you definitely want<b=
r>
all this in one package and not separate packages for the firmware and<br>
such?<br></div></blockquote><div style>As soon as the python module needs t=
he dtbos it must be installed together.</div><div style>Now it looks like t=
his:</div><div style>FILES_${PN} +=3D &quot; ${nonarch_base_libdir}/firmwar=
e/* &quot;<br>

</div><div style><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div id=3D":3r3" style=3D"overf=
low:hidden">


<br>
A lot of recipes have to customise the install function and add extra<br>
directories to FILES_*, don&#39;t worry about that.</div></blockquote></div=
><br>Thanks for your attention.<br><br clear=3D"all"><div><div dir=3D"ltr">=
<div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administ=
rador do Embarcados<br>

<a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.c=
om.br</a><br><br>/*long live rock &#39;n roll*/H<br></div></div>
</div></div>

--047d7bacb2aaa5689a04f1976113--
