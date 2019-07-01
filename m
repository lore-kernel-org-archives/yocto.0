Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57859E00D42; Mon,  1 Jul 2019 00:39:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1842DE0090C
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 00:39:28 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id w25so26526253ioc.8
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 00:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yMQ9zxK0oAjSrg4KjeHgP3vSd+DA+0ttZaodam9y0Wk=;
	b=PlX4/B+AehCUAzTnPxcx2I2xwQoBa9bRkG8kqHArFgKFzOp7K/lUu9m/csi1wKXTq7
	PZLs/tRewqTkQDJcQIUm/1gyx/kVJ+VrLH6xkng0FkGiUrMYhUPWIdYMeUU3gxgLcgeS
	KPdxHP3t703mdEqs5OfqXr1sIKxnrnQkEdjNELr3KIXuxhBdG5PGQU2x0uxo0FSzkjgX
	M2ilAA6Ahw+ts1bcXUJV6LoDeCIrSbrNpKdEtZ2dCrUc3/qBKf4tupoG2egVxbjBt1d/
	Wn5krs/91IdLI0qw8CiruKYN5RNw5snzHrdok054XL0xsLNixtLBN+9TgLyED833ZkcA
	80zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yMQ9zxK0oAjSrg4KjeHgP3vSd+DA+0ttZaodam9y0Wk=;
	b=OavJrLEKh2PG1FYbjxNA4hXsAQYtUYfhk4ipqfKNxqeElOkcACK0Hysqs/JF+ecUdR
	0kKD6EZ0h9jbAZ2zxW5A3v7t9VD7sPqJFu6lN6Vk0WBEFhiLS1XpGkxdq7PhbP+ufzK9
	vd1IOqpcdSvlV+Jl8JYiib0FkQrkamF50fpu5aBntka3MRWgxKOSK2N/3Foxcn1NqFKg
	Bo35UOgdeF6GeOFHLnRTRwf0pCqXouGv+lop4+axfFI6Sk7AsFfmKd3riyKNiLqM3rjP
	EppDbY+76fE5eS5tyqUXKbhq8wfrnI6DMLThQm/ogDUg73lsBhuyFqA2poCDCS0wiaNA
	QHbQ==
X-Gm-Message-State: APjAAAUDvj0LPfAu2ySH9V7rBEq7839WdXrpEgZVzyACs5ZAZXC9VBNQ
	06l9gD6v3Uf1JxtPI9xGSO4jEiI4Fc9HCU09yVIjrvfio3Y=
X-Google-Smtp-Source: APXvYqzKaNgWejPfDVKZvmnomEMT7t1pX2OGfWen20b6W4GiHK93sEuLiAkerbbWLpf4ECVkX+DU5TkQLXXXR6qJiBs=
X-Received: by 2002:a5e:c705:: with SMTP id f5mr26180776iop.113.1561966768071; 
	Mon, 01 Jul 2019 00:39:28 -0700 (PDT)
MIME-Version: 1.0
From: Onur Eser <onureser12@gmail.com>
Date: Mon, 1 Jul 2019 10:39:16 +0300
Message-ID: <CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto stucks when building!
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
X-List-Received-Date: Mon, 01 Jul 2019 07:39:30 -0000
Content-Type: multipart/alternative; boundary="0000000000005ca796058c99bade"

--0000000000005ca796058c99bade
Content-Type: text/plain; charset="UTF-8"

Hello,
I am trying to build a yocto for i.MX6, with a QT5 layer, everything is
okay, but it freezes on 2666th task! When 4 tasks are running at the same
time in normal, when it comes to 2666th, it is only one task and takes
forever! (I made it wait for one night)

Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-16.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8.2"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta              = "fido:87631919819b6f85f23f57689cd1065c64d7fb03"
meta-qt5          = "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
meta-fsl-arm      = "fido:c9f259a4bf8472dfa3ff75f1c3fcbe5e0ded7aaf"
meta-solidrun-arm-imx6 = "fido:3e496c0895b0abf8d2aaca2c622246c1f9f3ed75"
meta-yocto
meta-yocto-bsp    = "fido:87631919819b6f85f23f57689cd1065c64d7fb03"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 1 running tasks (2666 of 5960):
0: attr-native-2.4.47-r0 do_compile (pid 3485)

How to solve this?
Thanks,
Onur

--0000000000005ca796058c99bade
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I am trying to build a yocto for i.M=
X6, with a QT5 layer, everything is okay, but it freezes on 2666th task! Wh=
en 4 tasks are running at the same time in normal, when it comes to 2666th,=
 it is only one task and takes forever! (I made it wait for one night)<br><=
/div><div><br></div><div>Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;1.26.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =3D &quot;Ubuntu=
-16.04&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky-l=
inux&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86&=
quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quo=
t;<br>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.8.2&quot;<br>TUNE_FEATURES =
=C2=A0 =C2=A0 =3D &quot;m32 i586&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;fido:87631919819b6f85f23f57689cd1065c64d7fb03&quot;<br>meta=
-qt5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;fido:90919b9d86988e7da01fa=
2c0a07246b5b5600a5d&quot;<br>meta-fsl-arm =C2=A0 =C2=A0 =C2=A0=3D &quot;fid=
o:c9f259a4bf8472dfa3ff75f1c3fcbe5e0ded7aaf&quot;<br>meta-solidrun-arm-imx6 =
=3D &quot;fido:3e496c0895b0abf8d2aaca2c622246c1f9f3ed75&quot;<br>meta-yocto=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;fido:=
87631919819b6f85f23f57689cd1065c64d7fb03&quot;<br><br>NOTE: Preparing RunQu=
eue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>=
Currently 1 running tasks (2666 of 5960):<br>0: attr-native-2.4.47-r0 do_co=
mpile (pid 3485)</div><div><br></div><div>How to solve this?</div><div>Than=
ks,</div><div>Onur<br></div></div>

--0000000000005ca796058c99bade--
