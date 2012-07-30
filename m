Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D48E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 11:47:40 -0700 (PDT)
Received: by lboj14 with SMTP id j14so4151432lbo.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 11:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xBiPPul5ezROffBssUCtA99LMVDbVYwWef0i79U0FiM=;
	b=goCDX8qvJg3UmJtt+lEDb75Y2UsOdAV5ik73zS6aKIJobNN0pMd9vnwj0GUbJLazbM
	sTOKKolrRZ+1wRMvGE1ywvJNTuFaABfVy0gb+jAM7yvp5nhgi0AiIRKUhZdSMqgH7aBS
	mjBKeI0I+OFObkQyVLI2VDp94FKah5T86ru3DxAHpcu79rBu+K+3740HL1o4Zv6yESUc
	MQ8Q4eaXiwbURR6CohNzcMM18LafyHjST12HP1ItXfCGgMa/kUaVzXynVJu9swmCVanT
	16PXtYYqTlsrVYGkq2GjHfp4a5W4Etb7rlR5hIZHU5U/W4q/OEDoy64mD4ZgRih/+yWa
	jJcQ==
MIME-Version: 1.0
Received: by 10.112.84.65 with SMTP id w1mr5709358lby.40.1343674058786; Mon,
	30 Jul 2012 11:47:38 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Mon, 30 Jul 2012 11:47:38 -0700 (PDT)
In-Reply-To: <CANsUPaOtNG=xQkccMg10T=4Hf-eJmP1UMJ=KRviPQ-kb270=2Q@mail.gmail.com>
References: <CANsUPaOtNG=xQkccMg10T=4Hf-eJmP1UMJ=KRviPQ-kb270=2Q@mail.gmail.com>
Date: Mon, 30 Jul 2012 20:47:38 +0200
Message-ID: <CAMvUbCzugf07XABmUfHvSqcCMhN=hew0B_TMKAncVLt4bDUK7w@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
Cc: yocto@yoctoproject.org
Subject: Re: Usb-serial device support
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
X-List-Received-Date: Mon, 30 Jul 2012 18:47:41 -0000
Content-Type: multipart/alternative; boundary=f46d0401696df7c7b004c6107e3e

--f46d0401696df7c7b004c6107e3e
Content-Type: text/plain; charset=ISO-8859-1

Giovanni,

On Mon, Jul 30, 2012 at 10:48 AM, Giovanni Foiani <fnognn@unife.it> wrote:

> I built a distribution for iMX53 QSB with kernel 2.6.35-3 and I need
> support for USB-serial devices.
> When I plug the usb-serial converter I get this error..
>
> *usb wakeup is here
>
>                           *
> *otg host Remote wakeup
>
>                                            *
> *usb 1-1: new full speed USB device using fsl-ehci and address 3
>
>                                             *
> *usb 1-1: device v067b p2303 is not supported *
>
> I tried to recompile linux-imx kernel adding support for USB-serial
> devices, I run:
>
>    - bibake linux-imx -c menuconfig
>    - added support for usb-serial devices in menuconfig
>    - bitbake -f -c compile linux-imx
>    - bitbake linux-imx
>
> ..but it didn't work..
>
> Any suggestions?
>
> Did you see the install and deploy steps being performed? There are some
versions of OE/Yocto where those steps are not depended upon, even if you
ran -c compile -f.

For example, on Denzil, I have to run the compile, install and deploy steps
forcefully.

Regards,

Leon.

> Giovanni
> --
>
> Dott. Ing. Giovanni Foiani
>
> Cell:        +39-349-3577515
> Phone:    +39-0532-97-4106
> mail:        giovanni.foiani@unife.it
> CenTec - Corso Guercino, 47 - 44042 Cento (FE)
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f46d0401696df7c7b004c6107e3e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Giovanni,<br><br><div class=3D"gmail_quote">On Mon, Jul 30, 2012 at 10:48 A=
M, Giovanni Foiani <span dir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it"=
 target=3D"_blank">fnognn@unife.it</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<span style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-se=
rif"></span><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:ar=
ial,sans-serif">I built a distribution for iMX53 QSB with kernel 2.6.35-3 a=
nd I need support for USB-serial devices.=A0</div>

<div style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-ser=
if">When I plug the usb-serial converter I get this error..</div><div style=
=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif">
<br></div><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:aria=
l,sans-serif"><div><i>usb
 wakeup is here =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</i></div>



<div><i>otg host Remote wakeup =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</i></div><div><i>usb
 1-1: new full speed USB device using fsl-ehci and address 3 =A0 =A0 =A0 =
=A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0=A0</i></div>



<div><i>usb 1-1: device v067b p2303 is not supported=A0</i></div><div><br><=
/div><div>I tried to recompile linux-imx kernel adding support for USB-seri=
al devices, I run:</div><div><ul><li style=3D"margin-left:15px">bibake linu=
x-imx -c menuconfig</li>
<li style=3D"margin-left:15px">added support for usb-serial devices in menu=
config</li><li style=3D"margin-left:15px">bitbake -f -c compile linux-imx</=
li><li style=3D"margin-left:15px">bitbake linux-imx</li></ul><div>..but it =
didn&#39;t work..</div>




</div><div><br></div><div>Any suggestions?</div><br>
</div></blockquote></div>Did you see the install and deploy steps being=20
performed? There are some versions of OE/Yocto where those steps are not
 depended upon, even if you ran -c compile -f.<br>
<br>
For example, on Denzil, I have to run the compile, install and deploy steps=
 forcefully.<br>
<br>
Regards,<br>
<br>
Leon.<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=
=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif"><div>G=
iovanni</div>
</div>
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
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br>

--f46d0401696df7c7b004c6107e3e--
