Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B542E0143A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:18:59 -0700 (PDT)
Received: by lboj14 with SMTP id j14so3912950lbo.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:18:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=ARaMWr4y7dLH1Ic2Sh/bxMic258hSVQsM8XMHI46+S4=;
	b=YAX3Uj4nOg5HJaQyd4mziOq9o3ANX7tUfNdk7Ke/ktel8mgFb0eE4u/RHPvdBKtVwd
	NMzk7xvoc7yhndEGLMyb0mg+ynu05QyK7I/m4EWwM6fwupJBv7U77uimU0+8ey7qrNQu
	W8GxMu58glw7KdzTT4cz3F2bQ8tH2wW1ENJOpV/Wx+oENmWA+BvBcqZ2FXRmPiPdG33b
	zS4zFTVx1/wTW0T6qE9prLtn1u4ZC1xLcdi/Vdl6F94jkbE7XOp2bufAPO3KVbUUoiEe
	agOiGTAPMl3hf3TTzqxXA3i0iUlXppYP8r4/q1gKFxKMaNe54jBlBIt0zjLXUPna5Ao+
	0kXQ==
Received: by 10.152.103.11 with SMTP id fs11mr11403388lab.23.1343654337927;
	Mon, 30 Jul 2012 06:18:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Mon, 30 Jul 2012 06:18:37 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Mon, 30 Jul 2012 15:18:37 +0200
Message-ID: <CANsUPaMnm2UdcbmdHkQoRD3sgvG+bkOqezMopS8DcuoK=31B2A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmtwXotptCtTA1AWu9/IsVQGUFgT0dnkbpal828zuZrpjlJrP9TwiAdvC2uq8Y6OJ2XyTk2
Subject: Delete unused hob images
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
X-List-Received-Date: Mon, 30 Jul 2012 13:18:59 -0000
Content-Type: multipart/alternative; boundary=f46d040715c5835b7704c60be764

--f46d040715c5835b7704c60be764
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I read this section in Poky Reference manual:

*A.2.13. build/tmp/deploy/images/*
*
*
*This directory receives complete filesystem images. If you want to flash
the resulting image from a build onto a device, look here for the image.*
*
*
*Note, you should not remove any files from this directory by hand in an
attempt to rebuild an image. If you want to clean out the cache, re-run the
build using the following BitBake command: *
*     $ bitbake -c cleanall <target>*

I built many images using hob and in my *build/tmp/deploy/images/ *folder
there are a lot of rootfs images (like
hob-image-imx53qsb-<timestamp>.rootfs.ext3 etc..) and I want to remove the
unused ones to free some space..

I tried tp run:

*bitbake -c cleanall * hob-image-imx53qsb-<timestamp>

but I got:
ERROR: Nothing PROVIDES 'hob-image-imx53qsb-<timestamp>'

Can I safely remove these files by hand?

thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--f46d040715c5835b7704c60be764
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I read this=A0<span style=3D"background-color:rgb(25=
5,255,255);font-family:arial,sans-serif;font-size:13px;white-space:nowrap">=
section i</span>n Poky Reference manual:</div><div><br></div><div><div><i>A=
.2.13. build/tmp/deploy/images/</i></div>

<div><i><br></i></div><div><i>This directory receives complete filesystem i=
mages. If you want to flash the resulting image from a build onto a device,=
 look here for the image.</i></div><div><i><br></i></div><div><i>Note, you =
should not remove any files from this directory by hand in an attempt to re=
build an image. If you want to clean out the cache, re-run the build using =
the following BitBake command:=A0</i></div>

</div><div><i>=A0 =A0 =A0$ bitbake -c cleanall &lt;target&gt;</i></div><div=
>
<div><br></div><div>I built many images using hob and in my=A0<i>build/tmp/=
deploy/images/ </i>folder there are a lot of rootfs images (like hob-image-=
imx53qsb-&lt;timestamp&gt;.rootfs.ext3 etc..) and I want to remove the unus=
ed ones to free some space..</div>

<div><br></div><div>I tried tp run:</div><div><br></div><div><i>bitbake -c =
cleanall=A0</i>=A0hob-image-imx53qsb-&lt;timestamp&gt;</div><div><br></div>=
<div>but I got:</div><div>ERROR: Nothing PROVIDES &#39;hob-image-imx53qsb-&=
lt;timestamp&gt;&#39;</div>

<div><br></div><div>Can I safely remove these files by hand?</div><div><br>=
</div><div>thanks</div><div><br></div><div>Giovanni</div><div>--<br><br>Dot=
t. Ing. Giovanni Foiani<br><font face=3D"arial, sans-serif"><span style=3D"=
border-collapse:collapse"><br>

</span></font></div><div>Cell:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=
=A0 +39-0532-97-4106<br>mail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foi=
ani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a></div><div><spa=
n style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;line-heigh=
t:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div>

<br>
</div>

--f46d040715c5835b7704c60be764--
