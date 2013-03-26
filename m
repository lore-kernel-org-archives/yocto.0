Return-Path: <dan.florincristian@gmail.com>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADC25E013AC
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 06:34:17 -0700 (PDT)
Received: by mail-pd0-f173.google.com with SMTP id v10so3042304pde.32
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 06:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=ODt9BJtFFyf9Ny/AJcf2pAmQLc2zBPGBclQb/bzdhr4=;
	b=B9U6s3dYI5JCowW2jzwd/78IXdxn4poJ115FbrxkLJAwRpNjjA/L07gXrqkeuAUi5u
	+iM1ioUn3oEgCemHQTW581NRA5+YPvf/IJso0E/q4AtAO7/Tl/5n+PvOc8czLgofDZ77
	67Hlj1uVHN9S5QawOdKFMcXieLapIv3Hgci9eBQJv6axlFmyun6mrjz0Yg2YzFtCpOFs
	Aedg1CSdLVr7vUP2Zv+77YTWt1nguxETPZmaGP/hAzVfp4SlY50YlOU1Ezb8wBfyJiyP
	Nhhu00dp3aBwQ+aSeIbIh5dS/sUNRRaQPzjeYsvUx1L9gulde+OqgffPu7W9Y5CzVpOY
	qkRA==
MIME-Version: 1.0
X-Received: by 10.68.34.230 with SMTP id c6mr23188557pbj.211.1364304857514;
	Tue, 26 Mar 2013 06:34:17 -0700 (PDT)
Received: by 10.66.134.174 with HTTP; Tue, 26 Mar 2013 06:34:17 -0700 (PDT)
Date: Tue, 26 Mar 2013 15:34:17 +0200
Message-ID: <CABzOdpRq_Fa7EorFC2h=n2u4QTzr1qE1m2ST_nUmrS5duTYGHg@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Yocto Qt!
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
X-List-Received-Date: Tue, 26 Mar 2013 13:34:17 -0000
Content-Type: multipart/alternative; boundary=485b395e7e9765ca6104d8d3fa80

--485b395e7e9765ca6104d8d3fa80
Content-Type: text/plain; charset=ISO-8859-1

i've managed to solve the qmake problem i did this:
sudo rm /usr/bin/qmake sudo ln -s /usr/bin/qmake-qt4 /usr/bin/qmake
 After that: qmake -o Makefile myproject.pro
                make
It made me an executable, then i've copied the whole project folder on a
USB stick, mount it on my target and then ran ./myproject...and voila...a
simple window appeared with the clasis "Hello Wolrd!" inside
Thanks a lot for support

--485b395e7e9765ca6104d8d3fa80
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

i&#39;ve managed to solve the qmake problem i did this:<div><span style=3D"=
color:rgb(85,85,85);font-family:arial,helvetica,clean,sans-serif;font-size:=
13px;line-height:18px;white-space:pre-wrap;background-color:rgb(255,255,255=
)">sudo rm /usr/bin/qmake
sudo ln -s /usr/bin/qmake-qt4 /usr/bin/qmake
</span></div><div>=A0After that: qmake -o Makefile <a href=3D"http://myproj=
ect.pro">myproject.pro</a></div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 make</=
div><div>It made me an executable, then i&#39;ve copied the whole project f=
older on a USB stick, mount it on my target and then ran ./myproject...and =
voila...a simple window appeared with the clasis &quot;Hello Wolrd!&quot; i=
nside</div>
<div>Thanks a lot for support</div>

--485b395e7e9765ca6104d8d3fa80--
