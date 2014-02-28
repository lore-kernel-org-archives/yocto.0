Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3ECFE006D1
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 02:03:08 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id wo20so1415233obc.33
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 02:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7sDcmioI06BYmJaTOhKT/NDXstbWIFi3FTSIYB2pG/k=;
	b=o0vMtDeuiF5xjwxbQl2wZ+2Y+iMSqJPtSX77Ak8CNf9ZlswU+mPryGxTvzFngWnzTv
	EjE3qb4Jfgd2BzD2pWF+CW4m1ORCkGLlnx5BJwKHKjSFRWldtWJZmYJ2SzPlPZ1gtNJA
	tga08X22VGLUyKOeISy/w9RudWSHRzdRdrodsMpiSi12PtUk1Wnwz7LY/rKFl5JdjnT6
	19+iaF/xGNVb9KWj3JPnz7hpHzNKWUSvhfvamOz0dwHmkhpiYAnsgETfLS1MVYsgQEk3
	/M5Ox0I6EVFxHe7ZbtCk/sRuRqtaohoXtlAbR2FqnrfIYB6izTFciENl1c43mvA5SvYB
	WCgg==
MIME-Version: 1.0
X-Received: by 10.60.45.206 with SMTP id p14mr1826251oem.21.1393581787260;
	Fri, 28 Feb 2014 02:03:07 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Fri, 28 Feb 2014 02:03:07 -0800 (PST)
Date: Fri, 28 Feb 2014 11:03:07 +0100
Message-ID: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: yocto@yoctoproject.org
Subject: Build qemuarm compatible with freescale i.MX6
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
X-List-Received-Date: Fri, 28 Feb 2014 10:03:10 -0000
Content-Type: multipart/alternative; boundary=001a11c2019a652d5504f3748b7e

--001a11c2019a652d5504f3748b7e
Content-Type: text/plain; charset=ISO-8859-1

Goodmorning,

I'm new to yocto project, I would like to know if there is the possibility
to build a qemuarm
kernel compatible with fsl i.MX6. I'm developing with a sabre SD board and
I would like to
run the same filesystem both on the real target and via qemu emulation on
my PC for application
developement purposes.

Thank you in advance to anyone who wants to contribute!

Federico

--001a11c2019a652d5504f3748b7e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Goodmorning,=A0<div><br></div><div>I&#39;m new to yocto pr=
oject, I would like to know if there is the possibility to build a qemuarm=
=A0</div><div>kernel compatible with fsl i.MX6. I&#39;m developing with a s=
abre SD board and I would like to</div>
<div>run the same filesystem both on the real target and via qemu emulation=
 on my PC for application</div><div>developement purposes.</div><div><br></=
div><div>Thank you in advance to anyone who wants to contribute!</div><div>
<br></div><div>Federico</div><div><br></div></div>

--001a11c2019a652d5504f3748b7e--
