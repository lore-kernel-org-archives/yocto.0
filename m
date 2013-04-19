Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f193.google.com (mail-ie0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4469CE0146E
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 08:22:33 -0700 (PDT)
Received: by mail-ie0-f193.google.com with SMTP id 9so1392639iec.8
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 08:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=a/7ZP0ej4kttj/5c202HtIBrRKuSEFBhT0S5wBZOpp8=;
	b=gUqOm7iHkl9dI1OUB/O9Bcoy4/73xO01LIv2+tefSvQi335vW9TURT3M76hrgpA/bw
	8YRzvE34WXuJWoPmv0WHglvIKII7N9eKqTUTr7YC9DUtNzEYQsp8v+SehMmVfip3iUVW
	gOqD0pXKWWCu01lfBvW+cDAMLpoR59FPhKjDhWAnCA4GyJcP29qttEaNb6D1hpoYbCzo
	KlV7Et6u1GpRn1SnqUX/vnEU2g1x/QJlwSt7JWhOEvOEvnO2DuVv5xsiJyXrB7anAzJG
	ifpkpOJpJSHS3mHb94LZqcgAwsJ8PF5QQh2n5N1MoHTqgQZ6AyK3toRFq8OCg9JG2aIR
	EhtQ==
MIME-Version: 1.0
X-Received: by 10.50.44.5 with SMTP id a5mr15768856igm.58.1366384952799; Fri,
	19 Apr 2013 08:22:32 -0700 (PDT)
Received: by 10.50.53.212 with HTTP; Fri, 19 Apr 2013 08:22:32 -0700 (PDT)
In-Reply-To: <2626269.NDBbjkYV5W@helios>
References: <CAM1ZcoW1aaZUZW=t2J+GbNjyYQQPjSpRoGfJC9u-dh2ZJXFQoQ@mail.gmail.com>
	<2626269.NDBbjkYV5W@helios>
Date: Fri, 19 Apr 2013 16:22:32 +0100
Message-ID: <CAM1ZcoVrpr8BX6eG9V3X_RMXNv0txTH3XMgjOgnn8vxQDt_qhA@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: libsnmp-dev in yocto built image
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
X-List-Received-Date: Fri, 19 Apr 2013 15:22:33 -0000
Content-Type: multipart/alternative; boundary=e89a8f83970dbcf7c604dab849a0

--e89a8f83970dbcf7c604dab849a0
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul,

I followed these instructions
https://github.com/gumstix/Gumstix-YoctoProject-Repo
The recipe was in
~/yocto/poky/meta-openembedded/meta-oe/recipes-extended/net-snmp/
net-snmp_5.7.1.bb
I'm using
BB version 1.15.1
Distro Poky 1.2.1

Cheers



2013/4/19 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Friday 19 April 2013 15:44:39 Katu Txakur wrote:
> > I want to include net-snmp in an image that I'm building with the Yocto
> > project (gumstix-console-image). When I add it net-snmp-client or server
> to
> > the local.conf I get this error when bitbake is creating the rootfs.
> >
> > Processing perl-module-text-soundex...
> >
> > error: Failed dependencies:
> >
> > net-snmp-server = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a
> >
> > net-snmp-client = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a
>
> We don't use EXTENDPV anymore; EXTENDPV is not defined and that's why
> you're
> seeing that unexpanded value. Where did you get your net-snmp recipe from?
> Which version of the build system are you using?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--e89a8f83970dbcf7c604dab849a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul,<div><br></div><div style>I followed these ins=
tructions=A0<a href=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo=
">https://github.com/gumstix/Gumstix-YoctoProject-Repo</a></div><div style>=
The recipe was in</div>
<div style>~/yocto/poky/meta-openembedded/meta-oe/recipes-extended/net-snmp=
/<a href=3D"http://net-snmp_5.7.1.bb">net-snmp_5.7.1.bb</a><br></div><div s=
tyle>I&#39;m using=A0</div><div style>BB version 1.15.1</div><div style>Dis=
tro Poky 1.2.1</div>
<div style><br></div><div style>Cheers</div><div style><br></div></div><div=
 class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2013/4/19 Paul Eg=
gleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.co=
m" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Friday 19 April 2013 15=
:44:39 Katu Txakur wrote:<br>
&gt; I want to include net-snmp in an image that I&#39;m building with the =
Yocto<br>
&gt; project (gumstix-console-image). When I add it net-snmp-client or serv=
er to<br>
&gt; the local.conf I get this error when bitbake is creating the rootfs.<b=
r>
&gt;<br>
&gt; Processing perl-module-text-soundex...<br>
&gt;<br>
&gt; error: Failed dependencies:<br>
&gt;<br>
&gt; net-snmp-server =3D ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.arm=
v7a<br>
&gt;<br>
&gt; net-snmp-client =3D ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.arm=
v7a<br>
<br>
</div>We don&#39;t use EXTENDPV anymore; EXTENDPV is not defined and that&#=
39;s why you&#39;re<br>
seeing that unexpanded value. Where did you get your net-snmp recipe from?<=
br>
Which version of the build system are you using?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--e89a8f83970dbcf7c604dab849a0--
