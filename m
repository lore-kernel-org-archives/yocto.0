Return-Path: <amittomer25@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3462EE016BE;
	Mon,  7 Oct 2013 06:06:19 -0700 (PDT)
Received: by mail-qe0-f43.google.com with SMTP id nc12so356430qeb.2
	for <multiple recipients>; Mon, 07 Oct 2013 06:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uPG5PXxkX6kjL/Clxq6xFyTfNQvvBrikoLZJHjn7Hho=;
	b=pgAf0dojHHxFlPDBhsy757ZM4/j+AAPO1CRrYAKgR88lEm48X6TaIAadIzuymmgjDF
	Kvr13MhlmXiaiv6s+jU2cGQ+7n1fXl2qjejz9Y/GEZMUs41zD7GufPOcQHWJtZUtzja2
	+7ZYylIRDcsvv+lwCnB9Zn3XJJQohhHPXl7cHcHm8MT4krmTogtHmxw6hz6mq3NUd3Eo
	1Ji5n4Ywk/1lD50KscvB6QXq9dAuyAgTxVXzm2sSQ5XFyK7VVsYe+cDQKV7LTvJxz0az
	L6UNi+oakjxsvdpUY4M1pvFQUATBs33wxkVKsHg9zRzXbfX5YKcAcZYP8edMr4WpYlgy
	fbNw==
MIME-Version: 1.0
X-Received: by 10.224.80.194 with SMTP id u2mr1211830qak.121.1381151177922;
	Mon, 07 Oct 2013 06:06:17 -0700 (PDT)
Received: by 10.49.73.71 with HTTP; Mon, 7 Oct 2013 06:06:17 -0700 (PDT)
Date: Mon, 7 Oct 2013 18:36:17 +0530
Message-ID: <CABHD4K9enf8nvhVxmA=s6bH=GfUTCNtfUYCYhwV3YJpsJg4cHw@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: WARNING: While compiling Strongswan Package
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
X-List-Received-Date: Mon, 07 Oct 2013 13:06:20 -0000
Content-Type: multipart/alternative; boundary=001a11c3e3c8575e9f04e82651f1

--001a11c3e3c8575e9f04e82651f1
Content-Type: text/plain; charset=ISO-8859-1

We have added some new patches for strongswan package but after we are
seeing some waring message

WARNING: strongswan: The compile log indicates that host include and/or
library paths were used.

We also tried to add "*EXTRA_OECONF = "--prefix=/any-old-thing"" to .bb
file of strongswan*
*
*
*But we are still seeing same message*
*
*
*Could anybody tell us where we are doing wrong.*
*
*
*Thanks and Regards,*
*Amit Singh Tomar.*
*
*

--001a11c3e3c8575e9f04e82651f1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We have added some new patches for=A0strongswan package bu=
t after we are seeing some waring message<div><br></div><div><div>WARNING: =
strongswan: The compile log indicates that host include and/or library path=
s were used.=A0</div>
</div><div><br></div><div style>We also tried to add &quot;<i style=3D"colo=
r:rgb(0,0,0);white-space:pre-wrap">EXTRA_OECONF =3D &quot;--prefix=3D/any-o=
ld-thing&quot;&quot; to .bb file of strongswan</i></div><div style><i style=
=3D"color:rgb(0,0,0);white-space:pre-wrap"><br>
</i></div><div style><font color=3D"#000000" face=3D"verdana, sans-serif"><=
span style=3D"white-space:pre-wrap"><i>But we are still seeing same message=
</i></span></font></div><div style><font color=3D"#000000" face=3D"verdana,=
 sans-serif"><span style=3D"white-space:pre-wrap"><i><br>
</i></span></font></div><div style><font color=3D"#000000" face=3D"verdana,=
 sans-serif"><span style=3D"white-space:pre-wrap"><i>Could anybody tell us =
where we are doing wrong.</i></span></font></div><div style><font color=3D"=
#000000" face=3D"verdana, sans-serif"><span style=3D"white-space:pre-wrap">=
<i><br>
</i></span></font></div><div style><font color=3D"#000000" face=3D"verdana,=
 sans-serif"><span style=3D"white-space:pre-wrap"><i>Thanks and Regards,</i=
></span></font></div><div style><font color=3D"#000000" face=3D"verdana, sa=
ns-serif"><span style=3D"white-space:pre-wrap"><i>Amit Singh Tomar.</i></sp=
an></font></div>
<div style><font color=3D"#000000" face=3D"verdana, sans-serif"><span style=
=3D"white-space:pre-wrap"><i><br></i></span></font></div><div style><br></d=
iv></div>

--001a11c3e3c8575e9f04e82651f1--
