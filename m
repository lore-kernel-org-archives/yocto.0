Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC171E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 05:08:26 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id p12so3573470vbe.26
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 05:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=rK6sTwSpgtAqF0BXsKbC96OrjmPFkXEuLIfAv65J4JU=;
	b=VqwSuqECOZRAafygfsOVKbexz05GVBUTOhDqdKedD1CSDFpb7eKtM9gmly6X/9S92H
	+9dQR8cIdV0KuuA6fd91XLIJPVn8ION6S9OX7eZgjlBKAWVhD44dmacQ3Yrhyy4y7dgZ
	5fAqg4WG+TfcI5Tul7oIGhPE6P9TKumFrlIj3FtXr8pNkjEstOycVIO4NXMb/tGGXdf/
	QA4dJCEhC48gKjSTlqxSBpBnQvQdrexW1VMOg0Dtrp+fo/Ox2xSZNh26LFWCAhhVySL4
	K1jUHnhpt7i2abqtvB/XvQwstXBmRmE0ijXqhEBaMw8hsnwlpHBBD8EvOLyasW/3QEJc
	hMGA==
MIME-Version: 1.0
X-Received: by 10.58.238.167 with SMTP id vl7mr860017vec.19.1371643706252;
	Wed, 19 Jun 2013 05:08:26 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Wed, 19 Jun 2013 05:08:26 -0700 (PDT)
Date: Wed, 19 Jun 2013 14:08:26 +0200
X-Google-Sender-Auth: MzAJ2V75agbaElYoaHCweZ1LLCg
Message-ID: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Wed, 19 Jun 2013 12:08:29 -0000
Content-Type: multipart/alternative; boundary=047d7bdcac18dea49a04df80afda

--047d7bdcac18dea49a04df80afda
Content-Type: text/plain; charset=ISO-8859-1

I think I had to open the issue as its not closed... Here is more
clarity....

The issue is I decided the problem may be with init_manager. I did two
builds one with sysvinit using traditional Poky distro and other one is
uisng systemd using new distribution which is different as we need a new
distribution for using systemd

.. I didno t get any errors when i build using *bitbake -c populate_sdk
rootfs-smartcpu* with sysvinit and got build errors using systemd...

Any possible resons what could have caused failure to build the toolchain?

Cheers,
Satya

--047d7bdcac18dea49a04df80afda
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think I had to open the issue as its not closed... Here =
is more clarity....=A0<div><br></div><div>The issue is I decided the proble=
m may be with init_manager. I did two builds one with sysvinit using tradit=
ional Poky distro and other one is uisng systemd using new distribution whi=
ch is different as we need a new distribution for using systemd</div>
<div><br></div><div>.. I didno t get any errors when i build using <i>bitba=
ke -c populate_sdk rootfs-smartcpu</i>=A0with sysvinit and got build errors=
 using systemd...</div><div><br></div><div>Any possible resons what could h=
ave caused failure to build the toolchain?</div>
<div><br></div><div>Cheers,</div><div>Satya=A0<br><div><br></div><div><br><=
/div></div></div>

--047d7bdcac18dea49a04df80afda--
