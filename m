Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A021AE01506
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 06:05:30 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x17so1084592vbf.10
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2013 06:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=mUVtH48kukoB20HB35Zj0prcwzzyhjOnaFKWKXfkDEk=;
	b=Tia34N9bpH0AnugUBnKuG6Pbm7wsgDYA9fnbsxX9SqoyparKWoVrEfmv85Wcbf9SPo
	GfsFxjrBN05PjGCdFGCfpWQvndIBXhbHNoUBwvFNFwIyUNGZik1DAqSWvuASZgtEHXWH
	21AOmcwpYkTetONglCZahCNKxkLpOprNSGzZV/KMbNpvHo/pkkDCKQIbAphXK9VU0E9/
	gSH/B5r3vHCnp3x0ZiUUxX3xrS+PIPPD5/3slLFj0mcRuTQwXcLKrk0WR9I3YvoBXLQT
	9y06ef0efbDqzQfsXLaJfyDBVOQLaVRAwlvJ7xLDs05CdYuVE1PfLb2pqIEOCJIANRIY
	o/SQ==
MIME-Version: 1.0
X-Received: by 10.58.200.131 with SMTP id js3mr20690054vec.33.1370437529719;
	Wed, 05 Jun 2013 06:05:29 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Wed, 5 Jun 2013 06:05:29 -0700 (PDT)
Date: Wed, 5 Jun 2013 15:05:29 +0200
X-Google-Sender-Auth: 1vODtv0u0pzvU6kXCUqzhzaZfpI
Message-ID: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Application Development
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
X-List-Received-Date: Wed, 05 Jun 2013 13:05:30 -0000
Content-Type: multipart/alternative; boundary=047d7bd6b2da255af404de67daa0

--047d7bd6b2da255af404de67daa0
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I have an issue... I created a custom image based on NVIDIA Tegra2 with a
custom kernel. I installed  packages specific Tegra board and application
specific. Now we want to send the baord and the new linux image for
application development...

As I went through ADT manual, I only found qemu based toolchains but I want
to create toolchain based on my rootfs and kernel... so that the
development team can develop a voip application for the board... I am kind
of stuck how to proceed in this issue...

I really need a small way out and hopefully I will catch things
automatically..

Cheers,
Satya

--047d7bd6b2da255af404de67daa0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div style>I have an issue... I cre=
ated a custom image based on NVIDIA Tegra2 with a custom kernel. I installe=
d =A0packages specific Tegra board and application specific. Now we want to=
 send the baord and the new linux image for application development...=A0</=
div>
<div style><br></div><div style>As I went through ADT manual, I only found =
qemu based toolchains but I want to create toolchain based on my rootfs and=
 kernel... so that the development team can develop a voip application for =
the board... I am kind of stuck how to proceed in this issue...</div>
<div style><br></div><div style>I really need a small way out and hopefully=
 I will catch things automatically..</div><div style><br></div><div style>C=
heers,</div><div style>Satya</div></div>

--047d7bd6b2da255af404de67daa0--
