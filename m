Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04003E0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 10:21:16 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id ey16so890414wid.5
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 10:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=WGzFnsRk5aALafXH/7SPNMcyZLXEM94QKqCXX9X6AF0=;
	b=JngMw3dcivADkhSK1+47kYJHm40jjTuVsa7WTqg5LiF6pYq9hhIj7mT8xBpHmXTSZC
	1HzUFCWJ1hZmYcLpRYRm3ht2OBhRuaNBmJlq+nKSCiDv3qK+ktX99hCg8D1QSb8VcbCG
	Hz8jXs7lT9jkuEtrf7z+4OzLhwCcngRaK4bCmx7NFpd4Jx4ILWMHTOyfij31NjG9gJsg
	EyJ6M5b7zIskU7zLkzGXCdjzEV3dyBnG9ByEMDGLCilJp6b5BTIvI98f108H0bSrWUaJ
	Yu/ODk9kQW3tU+bjmEk2ig1bXUugkJ0qeqJL2l6FMn0A/LekHI8/+yOaF2sWx2GBqwYr
	qEZA==
X-Received: by 10.180.74.8 with SMTP id p8mr1950737wiv.32.1374254475498; Fri,
	19 Jul 2013 10:21:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.241.233 with HTTP; Fri, 19 Jul 2013 10:20:55 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Fri, 19 Jul 2013 19:20:55 +0200
Message-ID: <CAAGt+t3cZgGVwORrw1hk5jSSTJ+51c7QoEAQmUMg66evAdzfwA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: MLO, u-boot and uImage are same for any rootfs created?
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
X-List-Received-Date: Fri, 19 Jul 2013 17:21:19 -0000
Content-Type: multipart/alternative; boundary=f46d043c7b9ed7dd8e04e1e08d97

--f46d043c7b9ed7dd8e04e1e08d97
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am integrating some packages and building Images and I need to create
separate rootfs for each package.

My doubt: Does MLO, u-boot, uImage and modules.tgz are same for any rootfs
created? or do i need to create again all of them for every package i add?

Thanks and Regards,
Zafrullah Syed

--f46d043c7b9ed7dd8e04e1e08d97
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am integrating some packages =
and building Images and I need to create separate rootfs for each package.<=
/div><div><br></div><div>My doubt: Does MLO, u-boot, uImage and modules.tgz=
 are same for any rootfs created? or do i need to create again all of them =
for every package i add?<br clear=3D"all">

<div><br></div><div>Thanks and Regards,</div><div>Zafrullah Syed</div><div>=
<font color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-co=
llapse:collapse"><br></span></font></div>
</div></div>

--f46d043c7b9ed7dd8e04e1e08d97--
