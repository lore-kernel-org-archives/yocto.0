Return-Path: <fnognn@unife.it>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C51E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 10:25:10 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so5893716obb.35
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 10:25:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=ZQx6Ptj+pw8Z05AMFRYrMdhIVH4kotqPNnRyJp4y3xM=;
	b=jmB5jO1PvciTFQye0yYVDCdZktokfk4bAjUvox5SAtxRBeR/NjEOPjOrlXlWlpK3gk
	l4xUjOSAfGjzoP+4ObmwvmyMFyqELrer+k092W3nQsdhoiEy8S3oEulUL4kehYLvrvnz
	RjkmOpP8EzG1Qd4PJ/ZZJxLCdF04klfVzxxOtDcx7oZ0l7OzKelLI/c2Vbns2Ml0hynr
	TGGbN7LqW18XaHzAc1MXMUTSNW58NA02LoIhQCETKYp3tM8Ae7dQ18dnxp7HfCYTBO/O
	vw6uhp+5w9fRwPbfnVHD9vw7S6qclSAbwlw6qQLSaXV4ZAbFnzpP3967hyDk20xrC24K
	LMtg==
Received: by 10.60.3.202 with SMTP id e10mr4550453oee.52.1343409909897; Fri,
	27 Jul 2012 10:25:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.3.141 with HTTP; Fri, 27 Jul 2012 10:24:49 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Fri, 27 Jul 2012 19:24:49 +0200
Message-ID: <CANsUPaO-pu_u_m7yR17-vMn=8DSaWp55XdE-njFTBYZkOQxX+A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmLLdRgm4EcOEmgGEFKClBBBVfcSJLTIMj2m53NA0eXkXK1K4EaF+ysJ8RWDUdhynyZuvBI
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
X-List-Received-Date: Fri, 27 Jul 2012 17:25:10 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ce4c779af804c5d2fef4

--e89a8ff1ce4c779af804c5d2fef4
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

--e89a8ff1ce4c779af804c5d2fef4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-se=
rif">Hi,</span><div style=3D"color:rgb(34,34,34);font-size:13px;font-family=
:arial,sans-serif">
<br></div><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:aria=
l,sans-serif">I built a distribution for iMX53 QSB with kernel 2.6.35-3 and=
 I need support for USB-serial devices.=A0</div>
<div style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-ser=
if">When I plug the usb-serial converter I get this error..</div><div style=
=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif">
<br></div><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:aria=
l,sans-serif"><div><i>usb wakeup is here =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</i></div>



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
al devices, I run:</div><div><ul><li style=3D"margin-left:15px">bibake linu=
x-imx -c menuconfig</li>



<li style=3D"margin-left:15px">added support for usb-serial devices in menu=
config</li><li style=3D"margin-left:15px">bitbake -f -c compile linux-imx</=
li><li style=3D"margin-left:15px">bitbake linux-imx</li></ul><div>..but it =
didn&#39;t work..</div>



</div><div><br></div><div>Any suggestions?</div><div><br></div><div>Thanks<=
/div><div><br></div><div>Giovanni</div></div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577515" value=3D"+393493577515=
" target=3D"_blank">+39-349-3577515</a><br>


Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>mail:=A0 =A0 =A0 =A0 <a href=3D"mai=
lto:giovanni.foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a=
></div>
<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>

--e89a8ff1ce4c779af804c5d2fef4--
