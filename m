Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84FBCE01572
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 15:58:14 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lj1so1423409pab.1
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 15:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=ncpMl+IBhaiHsnHir2b+02m59GKMhJ0ipFiYbN4aOqA=;
	b=LCGhkODMXh6duX4BYC/xC6We4YroxFWch1zuffsgQKE/RkN6NIwitS/ZFi+vXDLMhg
	NEbqS6teoDYZaDV4RH3oAxyRHSpEwZm7sUg4V8nMMhi2QOcSB0V0Ke8CudZnDa/5+6eE
	N0i92uTwNkciZsx6YtqabuuLFlrNpr2GeQBGlgqaG2INaMZDiqgOMdTFVu6D35Io/pxe
	yYcFqonH6/exILxt296X+hfQI0FP9El6lUCLD/YhVyBFg2flRWKuZIQv8nO0XNkJivkL
	PBbUqCnEoPiZNpVfjUraxkg7ppiEDYmhqkrKlI2XBOOgR2YsB4h+jIKwsCkvhgpmFu2D
	Nj0A==
X-Received: by 10.68.169.97 with SMTP id ad1mr81290175pbc.84.1375311494352;
	Wed, 31 Jul 2013 15:58:14 -0700 (PDT)
Received: from sa-nc-spg-213.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id tr10sm7023pbc.22.2013.07.31.15.58.13
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 31 Jul 2013 15:58:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CE1312C1-039E-4F91-BA03-163FDC9E4CD4@taser.com>
Date: Wed, 31 Jul 2013 15:58:12 -0700
Message-Id: <3822EF35-AD96-4F3A-B278-E08E5F79B8CE@gmail.com>
References: <E94D6C02-CADD-4109-97AE-6979171970FA@taser.com>
	<CAJTo0LbpwbUwjRmytE-jiJ2OBihvQt5eUkQbZBpsork69jHg_w@mail.gmail.com>
	<CE1312C1-039E-4F91-BA03-163FDC9E4CD4@taser.com>
To: Brad Litterell <bradl@taser.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add new recipe - getting QA error I don't understand
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
X-List-Received-Date: Wed, 31 Jul 2013 22:58:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_615C7BC0-6B39-41F3-9874-01A9BE5B2446"

--Apple-Mail=_615C7BC0-6B39-41F3-9874-01A9BE5B2446
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


On Jul 31, 2013, at 3:39 PM, Brad Litterell <bradl@taser.com> wrote:

>     =E2=94=94=E2=94=80=E2=94=80 lib
>         =E2=94=9C=E2=94=80=E2=94=80 libuci.a
>         =E2=94=94=E2=94=80=E2=94=80 libuci.so
>=20
> So, I added this:
>=20
> FILES_${PN} +=3D"/usr/lib/*"

Try something like

FILES_${PN} =3D+ "${libdir}/libuci.so"


>=20
> However that doesn't remove the message.  Did I do it right?
>=20


usually .so are symlinks which then go into -dev packages via the =
default package sieve engine
but I am thinking if we find out that file is not a symlink but a normal =
shared object then probably
we could stop shoving it into -dev package and instead put it into ${PN}

may be you should file an enhancement bug for it in Yocto bugzilla


--Apple-Mail=_615C7BC0-6B39-41F3-9874-01A9BE5B2446
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jul 31, 2013, at 3:39 PM, Brad Litterell &lt;<a =
href=3D"mailto:bradl@taser.com">bradl@taser.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><pre =
style=3D"font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; margin-top: 0px; margin-bottom: 0px; ">  =
  =E2=94=94=E2=94=80=E2=94=80 lib
        =E2=94=9C=E2=94=80=E2=94=80 libuci.a
        =E2=94=94=E2=94=80=E2=94=80 libuci.so
</pre><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
">So,&nbsp;I added this:</div><pre style=3D"font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; margin-top: 0px; margin-bottom: 0px; =
"><br></pre><pre style=3D"font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
margin-top: 0px; margin-bottom: 0px; ">FILES_${PN}<span style=3D"color: =
rgb(192, 192, 192); "> =
</span>+=3D"/usr/lib/*"</pre></blockquote><div><br></div><div>Try =
something like</div><div><br></div><div>FILES_${PN} =3D+ =
"${libdir}/libuci.so"</div><div><br></div><div><br></div><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
">However that doesn't remove the message. &nbsp;Did I do it =
right?</div><br =
class=3D"Apple-interchange-newline"></blockquote></div><br><div><br></div>=
<div>usually .so are symlinks which then go into -dev packages via the =
default package sieve engine</div><div>but I am thinking if we find out =
that file is not a symlink but a normal shared object then =
probably</div><div>we could stop shoving it into -dev package and =
instead put it into ${PN}</div><div><br></div><div>may be you should =
file an enhancement bug for it in Yocto =
bugzilla</div><div><br></div></body></html>=

--Apple-Mail=_615C7BC0-6B39-41F3-9874-01A9BE5B2446--
