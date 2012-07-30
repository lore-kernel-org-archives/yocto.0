Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC25DE0142E
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 01:48:39 -0700 (PDT)
Received: by lboj14 with SMTP id j14so3774112lbo.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 01:48:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=gBHBbId6SjUUxRpGer/5vc22uurl9sJ3WFNW04uEn6M=;
	b=YKCSKcfKLoV0thxOcI30Vco8ZC4En8QrwK8SYax3S04VoCF7AVedQGuVfeMwuFlNVg
	IW1GKkSvU/Cal84rxvk8js0ZE6vtd/wfydhMbeTMw85CqtSVxkmqpxnbIquqLqMD/NnD
	y+DvxCJv+UFXfHM/OMTavi2wZIQ79Qty36Kl9XrXBGe4J0/j8Z1ebjmNz2jj8FWkkI61
	ujYpfdMHqySuZMpyLHiIk2fGc375O6nfmId/BJgUf73GEt/wtx7YS5r8kMuKTCQXObC7
	zUvtzxOlKzXdp6NjgevqztyIO5Iq2rtWY9uMy2BHu3uIj9ENxvg4OgfJ/58LLJxveB5n
	dYZw==
Received: by 10.112.99.98 with SMTP id ep2mr5111824lbb.45.1343638118455; Mon,
	30 Jul 2012 01:48:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Mon, 30 Jul 2012 01:48:18 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Mon, 30 Jul 2012 10:48:18 +0200
Message-ID: <CANsUPaOtNG=xQkccMg10T=4Hf-eJmP1UMJ=KRviPQ-kb270=2Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlUzVex5fXiRU9AocltVU0nrQcg3vcVzGIsM4Jc7iBi4Bla9wpN90Zja03GM6UinHYmWEsg
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
X-List-Received-Date: Mon, 30 Jul 2012 08:48:40 -0000
Content-Type: multipart/alternative; boundary=f46d0401fde1c1d9c004c608207b

--f46d0401fde1c1d9c004c608207b
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

--f46d0401fde1c1d9c004c608207b
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

--f46d0401fde1c1d9c004c608207b--
