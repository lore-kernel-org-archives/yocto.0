Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEB04E009C8; Thu,  4 Jun 2015 05:31:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A8E7E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 05:31:51 -0700 (PDT)
Received: by lbbtu8 with SMTP id tu8so10184339lbb.2
	for <yocto@yoctoproject.org>; Thu, 04 Jun 2015 05:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=RqludZObj+sUVkgFe7nSqEeVoI+4fT5cypj3d0Eh4Jk=;
	b=yk7X6QHNBQzg/JPmL4U0w0tTEgyry+U2zlGCnoD1JkaE7fvky9Wdr0HVjvws2gzM0Q
	4ZoxXKK3TIKZqt7h5O21zJAhoaKupN9dlWdPc427oJDZDjvoe+5K6Txan6yp6Y21Z2xQ
	axomIUvcN9FCwWPR3z5idaKX3Iajw+zbP8g4PfNv5wgoFUpHUEvF6V9oupz9FUIeYK1U
	iSHO8vbyGYavcxkfluYFA8L41U2k5QYfHGOzyD39fzlwN2oeD6AAPnFEEjreMcTf00b5
	8NyxIdoj0QloXeg1oR8YWUibaxJLJaJkDHSgh3FBKrL4So8VBw0cEZDjbw+LzG1KyNiO
	8PWA==
X-Received: by 10.112.171.68 with SMTP id as4mr37279083lbc.64.1433421109569;
	Thu, 04 Jun 2015 05:31:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.73.139 with HTTP; Thu, 4 Jun 2015 05:31:29 -0700 (PDT)
In-Reply-To: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
References: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Thu, 4 Jun 2015 14:31:29 +0200
Message-ID: <CAP2S6e5Tmfi7PjYLfjD1AGmSd06R6Hy-1UF52HK=7ajm9ErJeA@mail.gmail.com>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Issue with 8250/16550 UART1 access in raspberrypi (meta-raspberrypi)
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
X-List-Received-Date: Thu, 04 Jun 2015 12:31:56 -0000
Content-Type: multipart/alternative; boundary=001a11c38d1a0caff00517b05cc3

--001a11c38d1a0caff00517b05cc3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi !

I'm really no expert but am very interested in the subject.

Did you modify the device tree ? From what I understand in the DT that
you'll find pinmux definition right ?

Regards.


2015-06-04 14:01 GMT+02:00 Andreas Enbacka <andreas.enbacka@gasera.fi>:

> Hello,
>
>
>
> After a long break, I have returned to the Yocto project, and generally
> very pleased. A lot of progress has been done since I last used the proje=
ct
> (two years ago), and now in my opinion everything works very smoothly.
>
>
>
> I have used yocto to build a custom image for the RaspberryPi Compute
> Module. Generally everything works ok, however I am experiencing problem
> with accessing the UART1 port on the raspberryPi. I am using a library
> called wiringPi to put the appropriate GPIO pins in the correct mode (alt=
5)
> for RXD1/TXD1 (pins 32/33). Also I have used menuconfig to enable the
> 8250/16550 serial port support in the kernel (3.18.5+). After booting the
> image I examined the dmesg output, and it shows following information
> related to 8250/16550:
>
> ..
>
> [   1.010958] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>
> [   1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq =3D 29, base_ba=
ud
> =3D 7812500) is a 8250
>
> =E2=80=A6
>
>
>
> Then I put the pins 32/33 into alternative mode alt5, and try to connect
> to the port /dev/ttyS0 using minicom (baud 115200). Trying to enter
> something into the Mincom terminal does not give any indications on our
> connected oscilloscope (connected to the relevant pins), however change o=
f
> the alt mode earlier was observed correctly. The serial port should not b=
e
> using any flow control, but when trying to disable the flow control using
> Minicom (it was on by default) freezes the complete RaspberryPi system
> (requiring to disconnect and reconnect power).
>
>
>
> Does anyone have any thoughts what could be the cause of these issues
> (e.g., problems with driver etc)? Any information would be greatly
> appreciated. In the project we are working on we would need to use both
> uart ports (0/1) provided by the compute module (the uart0 is a pl011 and
> by disabling console use of /dev/ttyAMA0 we were able to successfully
> connect to that port).
>
>
>
> Thanks for the great work with the Yocto platform.
>
>
>
> Sincerely,
>
> Andreas Enbacka
>
> SW designer
>
> Gasera Ltd
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c38d1a0caff00517b05cc3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi !<br><br></div>I&#39;m really no expert =
but am very interested in the subject.<br></div><br>Did you modify the devi=
ce tree ? From what I understand in the DT that you&#39;ll find pinmux defi=
nition right ?<br><br></div><div>Regards.<br></div><br></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">2015-06-04 14:01 GMT+02:00 Andr=
eas Enbacka <span dir=3D"ltr">&lt;<a href=3D"mailto:andreas.enbacka@gasera.=
fi" target=3D"_blank">andreas.enbacka@gasera.fi</a>&gt;</span>:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div link=3D"#0563C1" vlink=3D"#954F72" lang=3D"FI">=
<div><p class=3D"MsoNormal">Hello,<span style=3D"color:#1f497d"><u></u><u><=
/u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">After a long break, I have returned to the Yo=
cto project, and generally very pleased. A lot of progress has been done si=
nce I last used the project (two years ago), and now in my opinion everythi=
ng works very smoothly.<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">I have used yocto to build a custom image for the Raspberr=
yPi Compute Module. Generally everything works ok, however I am experiencin=
g problem with accessing the UART1 port on the raspberryPi. I am using a li=
brary called wiringPi to put the appropriate GPIO pins in the correct mode =
(alt5) for RXD1/TXD1 (pins 32/33). Also I have used menuconfig to enable th=
e 8250/16550 serial port support in the kernel (3.18.5+). After booting the=
 image I examined the dmesg output, and it shows following information rela=
ted to 8250/16550:<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">..<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">[=C2=A0=C2=A0 1.010958] Serial: 8250/16550 driver, 4 ports, IRQ sha=
ring disabled<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0 1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq =
=3D 29, base_baud =3D 7812500) is a 8250<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">=E2=80=A6<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">Then I put the pins 32/33 into alter=
native mode alt5, and try to connect to the port /dev/ttyS0 using minicom (=
baud 115200). Trying to enter something into the Mincom terminal does not g=
ive any indications on our connected oscilloscope (connected to the relevan=
t pins), however change of the alt mode earlier was observed correctly. The=
 serial port should not be using any flow control, but when trying to disab=
le the flow control using Minicom (it was on by default) freezes the comple=
te RaspberryPi system (requiring to disconnect and reconnect power).<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Does anyone h=
ave any thoughts what could be the cause of these issues (e.g., problems wi=
th driver etc)? Any information would be greatly appreciated. In the projec=
t we are working on we would need to use both uart ports (0/1) provided by =
the compute module (the uart0 is a pl011 and by disabling console use of /d=
ev/ttyAMA0 we were able to successfully connect to that port).<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for the grea=
t work with the Yocto platform.<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">Sincerely,<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">Andreas Enbacka<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">SW designer<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">Gasera Ltd<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span><=
/p></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c38d1a0caff00517b05cc3--
