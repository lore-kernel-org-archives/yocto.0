Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C95C433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 22:07:51 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web12.17269.1633385269255673264
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 15:07:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=Pwtk3/p/;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=References:To:Cc:In-Reply-To:Date:Subject:
	Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/a2GIqSWya4maL33W62qgFsFf+MreL/EjFiqjddMM1g=; b=Pwtk3/p/gl8OYkdyjbaYp/4Zyi
	UpVQ8HtKUZn5QkHaT0rIAfP0yIInFMjirUprEzwYXH+INX2gp3+xRpJkgSWwtbkcR/GOkXGxG/7HY
	eadXMUxuvTaf9OpRioTxLR6anpU712xEBfUvviGi3oM0cAQSMUfCtmbFL8/1Kt74Sb8h1bpx4pO7B
	ZYdpavwA6oTFYuZ2oqv/QsCPsIHad4Uai7kM7Hr4+MTamkTMZ/0a+p5qgUGfGtBH+xnjrKA8NI+ge
	tJgD2b9KRkYvqHMmS0C3RYHhtt+7TYj4T4+5eXKWixzOZ3qLp9lE3uxqXwd32/2V3kQqxsn2x437I
	bvXb/6kQ==;
Received: from durham.keylevel.com ([88.97.77.109]:39503
 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mXW7c-0003DZ-Gz; Mon, 04 Oct 2021 23:07:44 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <63DD47C6-EBAC-4DE4-9860-C38C85E116C3@keylevel.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_36AE62C9-476E-4E41-ABC1-D920BF8DF6C6"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [yocto] Meta-raspberrypi - how to configure device tree for
 MCP251x
Date: Mon, 4 Oct 2021 23:07:43 +0100
In-Reply-To: 
 <CAMKF1soZNRBLyTtczUW8U9WWzRNDLSMk-oeRUm2fwqzMY-068g@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
To: Khem Raj <raj.khem@gmail.com>
References: <16AA05EDD73208C2.24161@lists.yoctoproject.org>
 <15448F47-97A9-4267-9D3B-682D8074D795@keylevel.com>
 <CAMKF1soZNRBLyTtczUW8U9WWzRNDLSMk-oeRUm2fwqzMY-068g@mail.gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mXW7c-0003DZ-Gz
X-4UH-MailScanner: Found to be clean
X-4UH-MailScanner-SpamCheck: 
X-4UH-MailScanner-From: opensource@keylevel.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hs013.4uh.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hs013.4uh.net: authenticated_id:
 opensource@keylevel.com
X-Authenticated-Sender: hs013.4uh.net: opensource@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 22:07:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54945


--Apple-Mail=_36AE62C9-476E-4E41-ABC1-D920BF8DF6C6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Khem,

There is nothing in /boot once the system has started, but if I mount =
/dev/mmcblk0p1 I can see a config.txt that includes:

     dtparam=3Dspi=3Don=20
     dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25=20
     dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=3D23=20

This is what I could expect.

On a quick scan, this appears to be the same as the one in =
tmp/deploy/images/raspberrypi4/bootfiles - the timestamp for this file =
indicated it was old, so I had manually cleaned and rebuilt =
rpi-bootfiles for changes to RPI_EXTRA_CONFIG to propagate.

However, if I bring the CAN interface up:

ip link set can1 up type can bitrate 100000

and look in /proc/interrupts, I see:

 66:          0          0          0          0  pinctrl-bcm2835  25 =
Level     spi0.0

even though can1 is on spi0.1.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

> On 4 Oct 2021, at 17:49, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> can you check boot/config.txt and see fi your changes are there in =
your target ?
>=20
> On Mon, Oct 4, 2021 at 1:21 AM Chris Tapp <opensource@keylevel.com> =
wrote:
>>=20
>> Sorry, I meant to add that I have tried adding the following to =
local.conf:
>>=20
>> RPI_EXTRA_CONFIG =3D ' \n \
>>    dtparam=3Dspi=3Don \n \
>>    dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25 \n \
>>    dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=3D23 \n \
>>    '
>>=20
>> However, this did not make any difference to the interrupts.
>>=20
>> Since then, I have manually changed mcp2515-can1-overlay.dts in the =
kernel build tree (after running bitbake - c do_configure =
virtual/kernel) and rebuilt the kernel / image. This does result in the =
interrupt mapping changing, and both CAN channels then operate =
correctly.
>>=20
>> Does anyone know why RPI_EXTRA_CONFIG doesn=E2=80=99t appear to be =
taking effect?
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>> ----
>> You can tell you're getting older when your car insurance gets real =
cheap!
>>=20
>> On 1 Oct 2021, at 22:38, Chris Tapp <opensource@keylevel.com> wrote:
>>=20
>> I am having trouble getting the Waveshare 2-CH CAN HAT working with =
an RPI4. Channel 0 does not come up, channel 1 does, but it will only =
send one message (eventually reporting "write: No buffer space =
available=E2=80=9D) and not receive anything.
>>=20
>> Looking at the mcp2515-can0-overlay.dts and mcp2515-can1-overlay.dts =
device tree files in =
/tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/dts/overlays/, =
it looks as if the interrupts are not mapped as required for the board.
>>=20
>>      DTS               HAT
>> CAN0  brcm,pins =3D <25>  PIN23
>> CAN1  brcm,pins =3D <25>  PIN25
>>=20
>> This doesn=E2=80=99t look right, and seems consistent with the =
behaviour I am seeing.
>>=20
>> I would also like to check the device chip select signals, but I =
can't see how (if) they are mapped in the dts files.
>>=20
>> How can I override these settings when I build the image?
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#54936): =
https://lists.yoctoproject.org/g/yocto/message/54936
>> Mute This Topic: https://lists.yoctoproject.org/mt/86011706/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[raj.khem@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>=20


--Apple-Mail=_36AE62C9-476E-4E41-ABC1-D920BF8DF6C6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Khem,<div class=3D""><br class=3D""></div><div class=3D"">There is =
nothing in /boot once the system has started, but if I mount =
/dev/mmcblk0p1 I can see a config.txt that includes:</div><div =
class=3D""><br class=3D""></div><div class=3D""><font face=3D"Courier =
New" class=3D"">&nbsp; &nbsp; &nbsp;dtparam=3Dspi=3Don&nbsp;<br =
class=3D"">&nbsp; &nbsp; =
&nbsp;dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25&nbsp;<=
br class=3D"">&nbsp; &nbsp; =
&nbsp;dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=3D23&nbsp;<=
br class=3D""></font><br class=3D""></div><div class=3D"">This is what I =
could expect.</div><div class=3D""><br class=3D""></div><div class=3D"">On=
 a quick scan, this appears to be the same as the one in =
tmp/deploy/images/raspberrypi4/bootfiles - the timestamp for this file =
indicated it was old, so I had manually cleaned and rebuilt =
rpi-bootfiles for changes to&nbsp;RPI_EXTRA_CONFIG to =
propagate.</div><div class=3D""><br class=3D""></div><div =
class=3D"">However, if I bring the CAN interface up:</div><div =
class=3D""><br class=3D""></div><div class=3D""><font face=3D"Courier =
New" class=3D"">ip link set can1 up type can bitrate =
100000</font></div><div class=3D""><br class=3D""></div><div =
class=3D"">and look in /proc/interrupts, I see:</div><div class=3D""><br =
class=3D""></div><div class=3D"">&nbsp;66:&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;0&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;0&nbsp;&nbsp;pinctrl-bcm2835&nbsp;&nbsp;25 Level&nbsp;&nbsp; =
&nbsp;&nbsp;spi0.0</div><div class=3D""><br class=3D""></div><div =
class=3D"">even though can1 is on spi0.1.</div><div class=3D""><br =
class=3D""></div><div class=3D""><span style=3D"font-family: Helvetica; =
-webkit-text-decorations-in-effect: none;" class=3D"">--</span></div><div =
class=3D""><div class=3D""><div style=3D"color: rgb(0, 0, 0); =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div style=3D"color: rgb(0, 0, 0); =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div style=3D"color: rgb(0, 0, 0); =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div style=3D"color: rgb(0, 0, 0); =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; font-family: Helvetica; =
font-variant-ligatures: normal; font-variant-east-asian: normal; =
font-variant-position: normal; line-height: normal; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none;"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div class=3D""><br class=3D""></div><div =
class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br =
class=3D""></div></div></span></div></div></div></div></div><div><blockquo=
te type=3D"cite" class=3D""><div class=3D"">On 4 Oct 2021, at 17:49, =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">can =
you check boot/config.txt and see fi your changes are there in your =
target ?<br class=3D""><br class=3D"">On Mon, Oct 4, 2021 at 1:21 AM =
Chris Tapp &lt;<a href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Sorry, I =
meant to add that I have tried adding the following to local.conf:<br =
class=3D""><br class=3D"">RPI_EXTRA_CONFIG =3D ' \n \<br class=3D""> =
&nbsp;&nbsp;&nbsp;dtparam=3Dspi=3Don \n \<br class=3D""> =
&nbsp;&nbsp;&nbsp;dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=
=3D25 \n \<br class=3D""> =
&nbsp;&nbsp;&nbsp;dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=
=3D23 \n \<br class=3D""> &nbsp;&nbsp;&nbsp;'<br class=3D""><br =
class=3D"">However, this did not make any difference to the =
interrupts.<br class=3D""><br class=3D"">Since then, I have manually =
changed mcp2515-can1-overlay.dts in the kernel build tree (after running =
bitbake - c do_configure virtual/kernel) and rebuilt the kernel / image. =
This does result in the interrupt mapping changing, and both CAN =
channels then operate correctly.<br class=3D""><br class=3D"">Does =
anyone know why RPI_EXTRA_CONFIG doesn=E2=80=99t appear to be taking =
effect?<br class=3D""><br class=3D"">--<br class=3D""><br class=3D"">Chris=
 Tapp<br class=3D""><a href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a><br class=3D"">www.keylevel.com<br =
class=3D""><br class=3D"">----<br class=3D"">You can tell you're getting =
older when your car insurance gets real cheap!<br class=3D""><br =
class=3D"">On 1 Oct 2021, at 22:38, Chris Tapp =
&lt;opensource@keylevel.com&gt; wrote:<br class=3D""><br class=3D"">I am =
having trouble getting the Waveshare 2-CH CAN HAT working with an RPI4. =
Channel 0 does not come up, channel 1 does, but it will only send one =
message (eventually reporting "write: No buffer space available=E2=80=9D) =
and not receive anything.<br class=3D""><br class=3D"">Looking at the =
mcp2515-can0-overlay.dts and mcp2515-can1-overlay.dts device tree files =
in =
/tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/dts/overlays/, =
it looks as if the interrupts are not mapped as required for the =
board.<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DTS =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;HAT<br class=3D"">CAN0 &nbsp;brcm,pins =3D &lt;25&gt; =
&nbsp;PIN23<br class=3D"">CAN1 &nbsp;brcm,pins =3D &lt;25&gt; =
&nbsp;PIN25<br class=3D""><br class=3D"">This doesn=E2=80=99t look =
right, and seems consistent with the behaviour I am seeing.<br =
class=3D""><br class=3D"">I would also like to check the device chip =
select signals, but I can't see how (if) they are mapped in the dts =
files.<br class=3D""><br class=3D"">How can I override these settings =
when I build the image?<br class=3D""><br class=3D"">--<br class=3D""><br =
class=3D"">Chris Tapp<br class=3D"">opensource@keylevel.com<br =
class=3D"">www.keylevel.com<br class=3D""><br class=3D""><br =
class=3D""><br class=3D""><br class=3D""><br class=3D""><br =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br =
class=3D"">Links: You receive all messages sent to this group.<br =
class=3D"">You automatically follow any topics you start or reply to.<br =
class=3D"">View/Reply Online (#54936): =
https://lists.yoctoproject.org/g/yocto/message/54936<br class=3D"">Mute =
This Topic: https://lists.yoctoproject.org/mt/86011706/1997914<br =
class=3D"">Group Owner: yocto+owner@lists.yoctoproject.org<br =
class=3D"">Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[raj.khem@gmail.com]<br class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-<br class=3D""><br =
class=3D""></blockquote></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_36AE62C9-476E-4E41-ABC1-D920BF8DF6C6--

