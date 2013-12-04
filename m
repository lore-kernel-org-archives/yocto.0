Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F911E00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 14:02:23 -0800 (PST)
Received: by mail-ob0-f176.google.com with SMTP id va2so16658496obc.7
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 14:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jQ5KQgvxt1C6qNdo9gTJWCGhZDIt/qFTgSfvALQbFL4=;
	b=Hx+P133cYOTIecMJeIuhdrBQM5GA2gcWJovuPtoTHn5YbkKecounWqtNoutrTfxdk3
	QhQ5OHNS89ihaQoLuqk9h1JMNh/xybGhWOp5TKjJ2zja4fMUTnLFbs8X0UftHboXQyNW
	l31ecJYPa0rwe/q8Q/GtIwulZOAHNLbFlG1UFbOvm0gdPxyumxxvtOwhxhKqP5EAEwq5
	GAh6ySYXEU8z/QrLT1CaZ+AMMn7cdzAqoDbm4F3NkOKwFdMw5UgWbtb1y3gedVqkZCqq
	XI1QTsgOgZN2q2RaCyhmFRGsruwcYTUJaQb8U2diYmLq8unXpU/kFAY3aKaTIBaW3F7Y
	bTDg==
MIME-Version: 1.0
X-Received: by 10.182.29.33 with SMTP id g1mr8187896obh.59.1386194542945; Wed,
	04 Dec 2013 14:02:22 -0800 (PST)
Received: by 10.60.142.41 with HTTP; Wed, 4 Dec 2013 14:02:22 -0800 (PST)
Date: Wed, 4 Dec 2013 17:02:22 -0500
Message-ID: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Trying to build a non-autotools package that contains only a lib. Getting empty archive - package is not generated
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
X-List-Received-Date: Wed, 04 Dec 2013 22:02:24 -0000
Content-Type: multipart/alternative; boundary=001a11c2b8b252b8f204ecbc9120

--001a11c2b8b252b8f204ecbc9120
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I appear to be having the same problem this guy had:
https://lists.yoctoproject.org/pipermail/poky/2013-June/009017.html

I'm trying to build a Makefile based project (not autotools) that just
generates a shared library.  When I bitbake my recipe I get a -dev and -dbg
.ipk package but not ${PN}.  So I added ALLOW_EMPTY_${PN} = "1" and that
generated the package but apparently the lib is not in the package!

The lib I want to be in the package is sitting in ${WORKDIR}/src and ${S}
is set to that.  So I tried to set FILES_${PN} = ${S}/sharedlib.so and that
still doesn't pick it up.

I've tried everything I can think of and can't get the lib in the package!
This is with 1.5 Dora.

Any idea why my lib isn't put in the package?

Regards,

Brian

--001a11c2b8b252b8f204ecbc9120
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br>I appear to be having the same p=
roblem this guy had:<br><a href=3D"https://lists.yoctoproject.org/pipermail=
/poky/2013-June/009017.html">https://lists.yoctoproject.org/pipermail/poky/=
2013-June/009017.html</a><br>
<br></div>I&#39;m trying to build a Makefile based project (not autotools) =
that just generates a shared library.=A0 When I bitbake my recipe I get a -=
dev and -dbg .ipk package but not ${PN}.=A0 So I added ALLOW_EMPTY_${PN} =
=3D &quot;1&quot; and that generated the package but apparently the lib is =
not in the package!<br>
<br></div>The lib I want to be in the package is sitting in ${WORKDIR}/src =
and ${S} is set to that.=A0 So I tried to set FILES_${PN} =3D ${S}/sharedli=
b.so and that still doesn&#39;t pick it up.<br><br>I&#39;ve tried everythin=
g I can think of and can&#39;t get the lib in the package!=A0 This is with =
1.5 Dora.<br>
<br></div>Any idea why my lib isn&#39;t put in the package?<br><br>Regards,=
<br><br>Brian<br><br></div>

--001a11c2b8b252b8f204ecbc9120--
