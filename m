Return-Path: <nickdademo@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE382E0084B
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 05:19:37 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id wm4so125588obc.14
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 05:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=G0Cx/XOzIn7cQJmPU/w0Qk5eNfPa/ynhw2/tRYb+lIk=;
	b=npFlc5uuoQVRC46ZIzpnFF4VELVqF80XrSvy4jT3yIoz2KAxMbLivxErNoFfYnq2lC
	GoJotRNBhT2uxWpCmC5Wl7SVA4SkSmpxiMnIny9z/H8T1L/S2fPtYl2cikvWOgTMlAm7
	X/J/sd9g5acIA4dz7v6cH1P4M2o6U7fEfiZNd0psQJ4F45JZZ9iIX1ecIR0kGjkFbCzp
	w1Uxy0Cc1hujgWBMZsGLJButCaMykXR/E8bgYBfBpCOsmDSEP1kyy/fEvQiYlkdvVbJQ
	BKeqEvg3A7AtHniJrcicJ5uYkI1ZpcH3BoC0MRgxgjAL0b5J4jfEHaPLewcO9rK6NEgu
	6eng==
X-Received: by 10.60.157.130 with SMTP id wm2mr76464038oeb.31.1389100776248;
	Tue, 07 Jan 2014 05:19:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.72.70 with HTTP; Tue, 7 Jan 2014 05:19:16 -0800 (PST)
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Wed, 8 Jan 2014 00:19:16 +1100
Message-ID: <CANR6C56AqYgV-Fq1e14E0O-OjjUkkY9jcvgEuABocAYMzm338A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a EXT4 rootfs instead of EXT3: How?
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
X-List-Received-Date: Tue, 07 Jan 2014 13:19:38 -0000
Content-Type: multipart/alternative; boundary=047d7bd6afcc535bc504ef613af2

--047d7bd6afcc535bc504ef613af2
Content-Type: text/plain; charset=ISO-8859-1

Can't seem to get the build process to create a EXT4 filesystem - I've
tried the following:

1. Tried adding ROOTFSTYPE ?= "*ext4*" to the machine .conf file
2. Ensured EXT4 is enabled in the Linux kernel (using menuconfig)

This is a build for the Intel NUC hardware.

Anyone have any ideas on how to do this?

Many thanks.

Nick

--047d7bd6afcc535bc504ef613af2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Can&#39;t seem to get the build proces=
s to create a EXT4 filesystem - I&#39;ve tried the following:<br></div><div=
><br></div>1. Tried adding <span class=3D"">ROOTFSTYPE ?=3D &quot;<em>ext4<=
/em>&quot; to the machine .conf file<br>

</span></div><span class=3D"">2. Ensured EXT4 is enabled in the Linux kerne=
l (using menuconfig)<br><br></span></div><div><span class=3D"">This is a bu=
ild for the Intel NUC hardware.<br></span></div><div><span class=3D""><br><=
/span></div>

<span class=3D"">Anyone have any ideas on how to do this?<br><br>Many thank=
s.<br><br></span></div><span class=3D"">Nick<br></span><div><br></div></div=
>

--047d7bd6afcc535bc504ef613af2--
