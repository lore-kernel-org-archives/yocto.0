Return-Path: <ilovetogetspamed@gmail.com>
Received: from mail-oa0-f67.google.com (mail-oa0-f67.google.com
	[209.85.219.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A744E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:33:33 -0700 (PDT)
Received: by mail-oa0-f67.google.com with SMTP id n12so644124oag.10
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Kj7r7ZBw57to+7BW87Shbr5H3rFi/6wHZmpkkG9UXvQ=;
	b=VW3jXir7302rQGOWKw6zLxKjbLtK07KGPkhW/wMSkygFlwLttkOgn8jKyFHWZ8Kc3I
	LoQ4x08D80azPD29PGFCnLe4pF1BYnCQuTsYw0aDsg8epca/5YObdFQGQbL4IJCYm6GW
	k6ixeuy0qlBBjkBksDCeuyu6nKjHL5qNhpavqU9nJHiOZ74Il/H1qGJGJJer2xP8bexM
	e6pYti9+ikpAenvm1UZV7uU3bx5b3TN5q+x2tezQMnHZBYlFuEY3OqOqx2pnyH+OlCwc
	7p+5kpE+jw3ALvRsYzlu1WoRZSFpfNac2ipXFM5RMoem71igm92CmJJRvpWsTtIUEk+g
	hrmQ==
MIME-Version: 1.0
X-Received: by 10.60.50.106 with SMTP id b10mr68345865oeo.16.1375292012953;
	Wed, 31 Jul 2013 10:33:32 -0700 (PDT)
Received: by 10.76.112.198 with HTTP; Wed, 31 Jul 2013 10:33:32 -0700 (PDT)
Date: Wed, 31 Jul 2013 13:33:32 -0400
Message-ID: <CAHv4ZcNerC-VBQhG8m1jTN7tTsncA+tjLaKSBLhAM6TGRoUL9A@mail.gmail.com>
From: I Love To Get Spamed <ilovetogetspamed@gmail.com>
To: yocto@yoctoproject.org
Subject: Can't seem to get the SD Card working with BBB after building new kernel.
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
X-List-Received-Date: Wed, 31 Jul 2013 17:33:34 -0000
Content-Type: multipart/alternative; boundary=001a11c1cbc0e5532f04e2d21fdb

--001a11c1cbc0e5532f04e2d21fdb
Content-Type: text/plain; charset=ISO-8859-1

Greetings:

I have used Yocto Project HOB to compile a new kernel using meta-ti (target
was am335x-evm) layer for my Beaglebone BLACK (not white).

This created the pertinent files for the /boot and /rootfs partitions on
the SD card.

I've added the files to the said partitions and added the basic uEnv.txt
file (optargs=quiet).

The system won't boot from the SD Card.

What am I missing?  Anyone?

Thanks in advance.

--001a11c1cbc0e5532f04e2d21fdb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:Arial,Helvetica,sans-serif;font=
-size:13px">Greetings:</span><div style=3D"margin:0px;padding:0px;border:0p=
x;vertical-align:baseline;font-family:Arial,Helvetica,sans-serif;font-size:=
13px">
<br></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:ba=
seline;font-family:Arial,Helvetica,sans-serif;font-size:13px">I have used Y=
octo Project HOB to compile a new kernel using meta-ti (target was am335x-e=
vm) layer for my Beaglebone BLACK (not white).</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px"><br></div><div style=3D=
"margin:0px;padding:0px;border:0px;vertical-align:baseline;font-family:Aria=
l,Helvetica,sans-serif;font-size:13px">
This created the pertinent files for the /boot and /rootfs partitions on th=
e SD card.</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-al=
ign:baseline;font-family:Arial,Helvetica,sans-serif;font-size:13px"><br></d=
iv>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px">I&#39;ve added the file=
s to the said partitions and added the basic uEnv.txt file (optargs=3Dquiet=
).</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px"><br></div><div style=3D=
"margin:0px;padding:0px;border:0px;vertical-align:baseline;font-family:Aria=
l,Helvetica,sans-serif;font-size:13px">
The system won&#39;t boot from the SD Card.</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline;font-family:Arial,Helvetica,s=
ans-serif;font-size:13px"><br></div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline;font-family:Arial,Helvetica,sans-serif;fon=
t-size:13px">
What am I missing? =A0Anyone?</div><div style=3D"margin:0px;padding:0px;bor=
der:0px;vertical-align:baseline;font-family:Arial,Helvetica,sans-serif;font=
-size:13px"><br></div><div style=3D"margin:0px;padding:0px;border:0px;verti=
cal-align:baseline;font-family:Arial,Helvetica,sans-serif;font-size:13px">
Thanks in advance.</div></div>

--001a11c1cbc0e5532f04e2d21fdb--
