Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B7E5E009C8; Thu,  4 Jun 2015 05:51:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.142.5.117 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 561 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Jun 2015 05:51:05 PDT
Received: from emh07.mail.saunalahti.fi (emh07.mail.saunalahti.fi
	[62.142.5.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A35E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 05:51:05 -0700 (PDT)
Received: from [100.82.118.118] (85-76-80-117-nat.elisa-mobile.fi
	[85.76.80.117])
	by emh07.mail.saunalahti.fi (Postfix) with ESMTP id 74E59403D;
	Thu,  4 Jun 2015 15:41:41 +0300 (EEST)
Mime-Version: 1.0 (1.0)
From: Andreas Enbacka <andreas.enbacka@gasera.fi>
X-Mailer: iPhone Mail (12F70)
In-Reply-To: <CAP2S6e5Tmfi7PjYLfjD1AGmSd06R6Hy-1UF52HK=7ajm9ErJeA@mail.gmail.com>
Date: Thu, 4 Jun 2015 15:41:41 +0300
Message-Id: <4953866F-4933-4836-84E6-67C52263EEE0@gasera.fi>
References: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
	<CAP2S6e5Tmfi7PjYLfjD1AGmSd06R6Hy-1UF52HK=7ajm9ErJeA@mail.gmail.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
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
X-List-Received-Date: Thu, 04 Jun 2015 12:51:08 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-E8468B05-3C2E-4EA0-91EF-D8AD9BECFBD0
Content-Transfer-Encoding: 7bit

--Apple-Mail-E8468B05-3C2E-4EA0-91EF-D8AD9BECFBD0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Valentin,

I used the wiringPi library to put the pins into the alternative mode.=20

Regards,
Andreas

> 4 jun 2015 kl. 15:31 skrev Valentin Le bescond <valentin.lebescond@gmail.c=
om>:
>=20
> Hi !
>=20
> I'm really no expert but am very interested in the subject.
>=20
> Did you modify the device tree ? =46rom what I understand in the DT that y=
ou'll find pinmux definition right ?
>=20
> Regards.
>=20
>=20
> 2015-06-04 14:01 GMT+02:00 Andreas Enbacka <andreas.enbacka@gasera.fi>:
>> Hello,
>>=20
>> =20
>>=20
>> After a long break, I have returned to the Yocto project, and generally v=
ery pleased. A lot of progress has been done since I last used the project (=
two years ago), and now in my opinion everything works very smoothly.
>>=20
>> =20
>>=20
>> I have used yocto to build a custom image for the RaspberryPi Compute Mod=
ule. Generally everything works ok, however I am experiencing problem with a=
ccessing the UART1 port on the raspberryPi. I am using a library called wiri=
ngPi to put the appropriate GPIO pins in the correct mode (alt5) for RXD1/TX=
D1 (pins 32/33). Also I have used menuconfig to enable the 8250/16550 serial=
 port support in the kernel (3.18.5+). After booting the image I examined th=
e dmesg output, and it shows following information related to 8250/16550:
>>=20
>> ..
>>=20
>> [   1.010958] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>>=20
>> [   1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq =3D 29, base_ba=
ud =3D 7812500) is a 8250
>>=20
>> =E2=80=A6
>>=20
>> =20
>>=20
>> Then I put the pins 32/33 into alternative mode alt5, and try to connect t=
o the port /dev/ttyS0 using minicom (baud 115200). Trying to enter something=
 into the Mincom terminal does not give any indications on our connected osc=
illoscope (connected to the relevant pins), however change of the alt mode e=
arlier was observed correctly. The serial port should not be using any flow c=
ontrol, but when trying to disable the flow control using Minicom (it was on=
 by default) freezes the complete RaspberryPi system (requiring to disconnec=
t and reconnect power).
>>=20
>> =20
>>=20
>> Does anyone have any thoughts what could be the cause of these issues (e.=
g., problems with driver etc)? Any information would be greatly appreciated.=
 In the project we are working on we would need to use both uart ports (0/1)=
 provided by the compute module (the uart0 is a pl011 and by disabling conso=
le use of /dev/ttyAMA0 we were able to successfully connect to that port).
>>=20
>> =20
>>=20
>> Thanks for the great work with the Yocto platform.
>>=20
>> =20
>>=20
>> Sincerely,
>>=20
>> Andreas Enbacka
>>=20
>> SW designer
>>=20
>> Gasera Ltd
>>=20
>> =20
>>=20
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20

--Apple-Mail-E8468B05-3C2E-4EA0-91EF-D8AD9BECFBD0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div>Hello Valentin,</div><div><=
br></div><div>I used the wiringPi library to put the pins into the alternati=
ve mode.&nbsp;</div><div><br></div><div>Regards,</div><div>Andreas</div><div=
><br>4 jun 2015 kl. 15:31 skrev Valentin Le bescond &lt;<a href=3D"mailto:va=
lentin.lebescond@gmail.com">valentin.lebescond@gmail.com</a>&gt;:<br><br></d=
iv><blockquote type=3D"cite"><div><div dir=3D"ltr"><div><div><div>Hi !<br><b=
r></div>I'm really no expert but am very interested in the subject.<br></div=
><br>Did you modify the device tree ? =46rom what I understand in the DT tha=
t you'll find pinmux definition right ?<br><br></div><div>Regards.<br></div>=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-06-=
04 14:01 GMT+02:00 Andreas Enbacka <span dir=3D"ltr">&lt;<a href=3D"mailto:a=
ndreas.enbacka@gasera.fi" target=3D"_blank">andreas.enbacka@gasera.fi</a>&gt=
;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div link=3D"#0563C1" vlink=3D"#9=
54F72" lang=3D"FI"><div><p class=3D"MsoNormal">Hello,<span style=3D"color:#1=
f497d"><u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">After a long break, I have re=
turned to the Yocto project, and generally very pleased. A lot of progress h=
as been done since I last used the project (two years ago), and now in my op=
inion everything works very smoothly.<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">I have used yocto to build a custom image for t=
he RaspberryPi Compute Module. Generally everything works ok, however I am e=
xperiencing problem with accessing the UART1 port on the raspberryPi. I am u=
sing a library called wiringPi to put the appropriate GPIO pins in the corre=
ct mode (alt5) for RXD1/TXD1 (pins 32/33). Also I have used menuconfig to en=
able the 8250/16550 serial port support in the kernel (3.18.5+). After booti=
ng the image I examined the dmesg output, and it shows following information=
 related to 8250/16550:<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">..<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[&nbsp;&nbsp; 1.010958] Serial: 8250/16550 driver, 4 ports, IRQ s=
haring disabled<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">[&nbsp;&nbsp; 1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq =3D=
 29, base_baud =3D 7812500) is a 8250<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">=E2=80=A6<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">Then I put the pins 32/33 into alternative mo=
de alt5, and try to connect to the port /dev/ttyS0 using minicom (baud 11520=
0). Trying to enter something into the Mincom terminal does not give any ind=
ications on our connected oscilloscope (connected to the relevant pins), how=
ever change of the alt mode earlier was observed correctly. The serial port s=
hould not be using any flow control, but when trying to disable the flow con=
trol using Minicom (it was on by default) freezes the complete RaspberryPi s=
ystem (requiring to disconnect and reconnect power).<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">Does anyone have any thoughts wh=
at could be the cause of these issues (e.g., problems with driver etc)? Any i=
nformation would be greatly appreciated. In the project we are working on we=
 would need to use both uart ports (0/1) provided by the compute module (the=
 uart0 is a pl011 and by disabling console use of /dev/ttyAMA0 we were able t=
o successfully connect to that port).<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">Thanks for the great work with the Yocto platfo=
rm.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u><=
/u>&nbsp;<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Since=
rely,<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">An=
dreas Enbacka<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">SW designer<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">Gasera Ltd<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>&nbsp;<u></u></span></p></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</div></blockquote></body></html>=

--Apple-Mail-E8468B05-3C2E-4EA0-91EF-D8AD9BECFBD0--
