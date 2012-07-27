Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3DF6E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 08:30:35 -0700 (PDT)
Received: by lboj14 with SMTP id j14so2594713lbo.35
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 08:30:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=2WH8XgYymJ9QcPQoIimYm3eNNHvIy/7XD6B/E6p9eX8=;
	b=jCdRyhpN/5UDyQDUNRa1O9jG3qXD7hV6CfOvjlGsPZUjzFaaOeQtt31DaQ+QEFJqMa
	1gyQ1pDdjiEuhhRAzxpcF+yjWZilQjyTK5CnVBpFigdM9SyEum+ClGrQyuiBX3I7VgLp
	s5zOVQc9g6WiBboV5B09SEOHHLf/UfKtcIHPd2R+htvlbUvfN7yb7YTNj2jat4maEOd1
	nbHzlROBoC9gr5YqdumMeoM7R1ugeVSNajQpUjLyCsTFJOAVoKxd23C4MJcNqwMHwn1j
	1wq8VNRQLUsl20gZfW6ySYrm+S22BbWxFw5TlCcOucCTKmA7KuP1A0gPtVJKAukPA6Jn
	5byQ==
Received: by 10.112.36.42 with SMTP id n10mr1596981lbj.7.1343403033956; Fri,
	27 Jul 2012 08:30:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Fri, 27 Jul 2012 08:30:13 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Fri, 27 Jul 2012 17:30:13 +0200
Message-ID: <CANsUPaMtAXgynkkj2LmniOfcfadJ7rH3Aj4yOzffC7TmW1FijQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkHA2IqwvIuyql1v9zduTHrnvFCkqOlwkL97VNsUPYOXyIqfQfVCgPhstRtyWoASwadzAGP
Subject: Usb-serial device support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Jul 2012 15:30:36 -0000
Content-Type: multipart/alternative; boundary=e0cb4efe309ea1104504c5d164e9

--e0cb4efe309ea1104504c5d164e9
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I built a distribution for iMX53 QSB with kernel 2.6.35-3 and I need
support for USB-serial devices.
When I plug the usb-serial converter I get this error..

*usb wakeup is here

                        *
*otg host Remote wakeup

                                         *
*usb 1-1: new full speed USB device using fsl-ehci and address 3

                                          *
*usb 1-1: device v067b p2303 is not supported *

I tried to recompile linux-imx kernel adding support for USB-serial
devices, I run:

   - bibake linux-imx -c menuconfig
   - added support for usb-serial devices in menuconfig
   - bitbake -f -c compile linux-imx
   - bitbake linux-imx

..but it didn't work..

Any suggestions?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--e0cb4efe309ea1104504c5d164e9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I built a distribution for iMX53 QSB with kernel 2.6=
.35-3 and I need support for USB-serial devices.=A0</div><div>When I plug t=
he usb-serial converter I get this error..</div><div><br></div><div><div><i=
>usb wakeup is here =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</i></div>

<div><i>otg host Remote wakeup =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</i=
></div><div><i>usb 1-1: new full speed USB device using fsl-ehci and addres=
s 3 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</i></div>

<div><i>usb 1-1: device v067b p2303 is not supported=A0</i></div><div><br><=
/div><div>I tried to recompile linux-imx kernel adding support for USB-seri=
al devices, I run:</div><div><ul><li>bibake linux-imx -c menuconfig</li>
<li>
added support for usb-serial devices in menuconfig</li><li>bitbake -f -c co=
mpile linux-imx</li><li>bitbake linux-imx</li></ul><div>..but it didn&#39;t=
 work..</div></div><div><br></div><div>Any suggestions?</div><div><br>
</div>
<div>Thanks</div><div><br></div><div>Giovanni</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
</div>

--e0cb4efe309ea1104504c5d164e9--
