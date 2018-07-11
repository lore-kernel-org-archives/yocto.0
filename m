Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 620B3E00CC9; Wed, 11 Jul 2018 04:11:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73014E00EC9
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 04:11:04 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id r13-v6so19058753ljg.10
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 04:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J3dt0EkX4rlmSYPbC2GWJOSl8S3NKX4LI63BfikSbBE=;
	b=V9RV6EOnhf5W6Ig21bHRnY0qx4ymQ3dDCdwVrOOq7e0L28xHgq4qUXwVfTSOj0wkhP
	YHGJomjgxnZ2I2qXGSZFXvFvCh1zgGYOE9hCrsbjdXSYEiMQ7pZWCingGGV1m9DU6aQG
	U+Wh0BTTACv+AOMjWHp/rqm9qoTE8wQtJWjn8mJvfowSuaAWEljRWb6b940WmdH2j9nq
	0iCc4ncUQ0BnOzU6d2COVsoYJvyRQ6f1DosIO9DbFfL3iIXR+0O/Q2Dye4MeCteSuuJv
	smSkp+s7108F0C/lwRkoodtxL1HqH5PZ/eY2WCvWA9xn3dXyevvUZ5jDJPLECKywuvrC
	OBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J3dt0EkX4rlmSYPbC2GWJOSl8S3NKX4LI63BfikSbBE=;
	b=jDNMLPleznFeWtIlTIGBxW6RDSPKCHWnCoCmlUSvlpzX4X5le0pDt74ji+X5UvH8hu
	MvqsFIXVTM3jLLV6eFZD5eqHvxbrY9ighXI0wj5l5FDl1kkR/I/hj8eV8rxkb8hp65KQ
	9dQhhIMQ3DXSlKPnprsmWnT+VjM4JC41gsXcNDcHYRo0UpnSmsz/so7n7PR7R4fyH6fC
	VdL6ZJ0ffkWLLEIF8MGbBzqMZuoXrClyS54q+eqdiw2DzGcccqBvTad2CT3SRXKccCAG
	K5AmHQf/Oq4hWEf1ixI711rf+l3SGeVeE25Cnt3jffKePb3XJ+MpcRF1hfnICVZeUBk4
	c6eQ==
X-Gm-Message-State: APt69E1bVf946OgKuUwPiPYwgZICm+w1MNAVyEvdrP+VqgZmKbNIFHU4
	N2dTq7kCO6QoTSZqwnuLnZy+qY1/gQkljmQnL4NBNQ==
X-Google-Smtp-Source: AAOMgpcvvFtr4ONLEApDFgn6M20DasVufErNlBPas1yGiJ88SaEZG4BF35vSl+3utsnWYEr7sDRplpKYjwX2ne4wLfg=
X-Received: by 2002:a2e:2bd7:: with SMTP id
	r84-v6mr17500591ljr.40.1531307463024; 
	Wed, 11 Jul 2018 04:11:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Wed, 11 Jul 2018 04:11:02
	-0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 11 Jul 2018 13:11:02 +0200
Message-ID: <CAGAf8LyJR+99NcZXj9wPQAS3WE6B-KmFTaVz-ypcRxWZiFFwrg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: YOCTO kernel configuration considerations
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
X-List-Received-Date: Wed, 11 Jul 2018 11:11:06 -0000
Content-Type: multipart/alternative; boundary="0000000000006026a70570b74d83"

--0000000000006026a70570b74d83
Content-Type: text/plain; charset="UTF-8"

Hello people,

I guess, this stuff is well known to the experts and community, but not
entirely to me, considering YOCTO setup. So I apologize for repeating the
topic.

So I took Sumo branch, advanced my BeagleBone Black bare-bone image, and
recompiled the whole Beaglebone Black for the core-image-minimal .

After doing that, and fixing some miss-configuration of some layers, I got
very interesting results.

The zImage (compressed kernel) is only 1MB of size:
1240848 Jul 10 15:16 zImage--4.17.2-r0-beaglebone-20180710124751.bin

To explore that, I issued the following command:
bitbake virtual/kernel -c devshell

and (obvious to me) found the following:

root@localhost:~/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work-shared/beaglebone/kernel-build-artifacts#
ls -al
total 448
drwxr-xr-x 4 1377009974 1377000513   4096 Jul 10 13:16 .
drwxr-xr-x 4 1377009974 1377000513   4096 Jul 10 13:16 ..
drwxr-xr-x 3 1377009974 1377000513   4096 Jul 10 13:16 arch
-rw-r--r-- 1 1377009974 1377000513  30043 Jul 10 13:16 .config
drwxr-xr-x 4 1377009974 1377000513   4096 Jul 10 13:16 include
-rw-r--r-- 1 1377009974 1377000513     15 Jul 10 13:16 kernel-abiversion
-rw-r--r-- 1 1377009974 1377000513      0 Jul 10 13:16 Module.symvers
-rw-r--r-- 1 1377009974 1377000513 404070 Jul 10 13:16
System.map-4.17.2-jumpnow

As we  see, no any modules (Module.symvers size is 0) encountered, and tiny
default .config (30043 Jul 10 13:16 .config).

Now, for the very first time using YOCTO build system, I have to have
modules.tgz included into the build.

What should I do to:
[1] swap default tiny defconfig with my defconfig (which is 6x of the
default size with 2000+ kernel modules defined in it)?
[2] How to include module definition in the final build using bitbake, or
.../meta/recipes-core/images/core-image-minimal.bb (any premeditated
examples)?

Thank you,
Zoran

--0000000000006026a70570b74d83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello people,<br><br></div>I gues=
s, this stuff is well known to the experts and community, but not entirely =
to me, considering YOCTO setup. So I apologize for repeating the topic.<br>=
<br></div>So I took Sumo branch, advanced my BeagleBone Black bare-bone ima=
ge, and recompiled the whole Beaglebone Black for the core-image-minimal .<=
br><br></div>After doing that, and fixing some miss-configuration of some l=
ayers, I got very interesting results.<br><br></div>The zImage (compressed =
kernel) is only 1MB of size:<br>1240848 Jul 10 15:16 zImage--4.17.2-r0-beag=
lebone-20180710124751.bin<br><br>To explore that, I issued the following co=
mmand:<br>bitbake virtual/kernel -c devshell<br><br></div>and (obvious to m=
e) found the following:<br><br><div><div>root@localhost:~/projects/beaglebo=
ne-black/yocto-rocko/poky/build/tmp/work-shared/beaglebone/kernel-build-art=
ifacts# ls -al<br>total 448<br>drwxr-xr-x 4 1377009974 1377000513=C2=A0=C2=
=A0 4096 Jul 10 13:16 .<br>drwxr-xr-x 4 1377009974 1377000513=C2=A0=C2=A0 4=
096 Jul 10 13:16 ..<br>drwxr-xr-x 3 1377009974 1377000513=C2=A0=C2=A0 4096 =
Jul 10 13:16 arch<br>-rw-r--r-- 1 1377009974 1377000513=C2=A0 30043 Jul 10 =
13:16 .config<br>drwxr-xr-x 4 1377009974 1377000513=C2=A0=C2=A0 4096 Jul 10=
 13:16 include<br>-rw-r--r-- 1 1377009974 1377000513=C2=A0=C2=A0=C2=A0=C2=
=A0 15 Jul 10 13:16 kernel-abiversion<br>-rw-r--r-- 1 1377009974 1377000513=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 Jul 10 13:16 Module.symvers<br>-rw-r--r-- =
1 1377009974 1377000513 404070 Jul 10 13:16 System.map-4.17.2-jumpnow<br><b=
r></div><div>As we=C2=A0 see, no any modules (Module.symvers size is 0) enc=
ountered, and tiny default .config (30043 Jul 10 13:16 .config).<br><br></d=
iv><div>Now, for the very first time using YOCTO build system, I have to ha=
ve modules.tgz included into the build.<br></div><div><br></div><div>What s=
hould I do to:<br></div><div>[1] swap default tiny defconfig with my defcon=
fig (which is 6x of the default size with 2000+ kernel modules defined in i=
t)?<br></div><div>[2] How to include module definition in the final build u=
sing bitbake, or .../meta/recipes-core/images/<a href=3D"http://core-image-=
minimal.bb">core-image-minimal.bb</a> (any premeditated examples)? <br></di=
v><div><div><div><br></div><div>Thank you,<br></div><div>Zoran<br><br></div=
></div></div></div></div>

--0000000000006026a70570b74d83--
