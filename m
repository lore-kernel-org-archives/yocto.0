Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF1C4E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 00:10:21 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id c13so3792283vea.35
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 00:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=2DkGfYBQazUnwydRVZJCPb9KPwbMQWDWuKuhHrtJ268=;
	b=PiCrelqBdpyEaPJEQe/hkgpqLxfuKR9n3tBq//SsaIzuC8/4E/n3r1OxRIPEcZBh9O
	Wzo93b8A+CmdCchvhgk/umrQN97PovAAESuvMAftpcK/giYw5NTzi7wMEeXELzDixHcr
	l/XdmWVgWkiyvPDiOwf+H3SYZfnVxESM+Fp1ykG3Cq3/OegrdeC/aqI4dKkDk25GAXbF
	R8HZBXY572haSPz+rU293l8gB8M9jG/mV5GR127EWliqHVql1duixR0cbYnhHWn2Fyf/
	QOOft1iGAc7iLdTKte3ir0FE/BhSFLyaaB+QF3XOcbDIUJakzJpmJLdlS4kzo3goYIc+
	KW2A==
MIME-Version: 1.0
X-Received: by 10.58.198.44 with SMTP id iz12mr489297vec.85.1371625820651;
	Wed, 19 Jun 2013 00:10:20 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Wed, 19 Jun 2013 00:10:20 -0700 (PDT)
Date: Wed, 19 Jun 2013 09:10:20 +0200
X-Google-Sender-Auth: 0I3mQaA6XkgqN-uRdwehPqbwpbw
Message-ID: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Installing .deb file in Build
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
X-List-Received-Date: Wed, 19 Jun 2013 07:10:24 -0000
Content-Type: multipart/alternative; boundary=047d7b6dcb9cce078b04df7c8565

--047d7b6dcb9cce078b04df7c8565
Content-Type: text/plain; charset=ISO-8859-1

Hey,

I have a .deb file which has to be installed. It installs properly on the
target image but I want to install it at the build itself by creating a
bitbake recipe.. Is it possible to install .deb files or not? If possible,
please suggest me so that I can make it..

Greets,
Satya

--047d7b6dcb9cce078b04df7c8565
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey,<div><br></div><div style>I have a .deb file which has=
 to be installed. It installs properly on the target image but I want to in=
stall it at the build itself by creating a bitbake recipe.. Is it possible =
to install .deb files or not? If possible, please suggest me so that I can =
make it..</div>
<div style><br></div><div style>Greets,</div><div style>Satya</div></div>

--047d7b6dcb9cce078b04df7c8565--
