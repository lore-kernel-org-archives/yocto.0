Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15DF4E00A1E; Fri, 10 Mar 2017 10:58:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 10:58:20 PST
Received: from BLU004-OMC1S38.hotmail.com (blu004-omc1s38.hotmail.com
	[65.55.116.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBE4DE00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:58:20 -0800 (PST)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com ([65.55.116.8])
	by BLU004-OMC1S38.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 10 Mar 2017 10:57:19 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=z9WTtrGX+n5wp6Kpq/wJWlW/1PH3kIHn3dolr5cfAC4=;
	b=XcQzMU5Dsywgl68IO/+HL6zyYTB7tpOPstFT4KS1hS/rqpgcCxAsfk30kN7UvIudnRlOQmvQPk2rZRD1ziMtwp65D8e+IbRPphKU3gZuWJklC9Fl+3MHrACaajNPyq/dM2fKvHR6qDuFBbrhNhQEFbCtIHz/h/XTSaYm0s0kWq67wuiXX+7zNpqs0hR9uwgsKmJS9c+Qlqo4AVoi0z2E/Ne5S3wdgwh3RqcPKcBYv9cXpvnhjwTAUj1h6nQUS6lvEca2yegeNP2cxZIDBQQOzpPknvaza/FkJb3f7bUYbgf/AYR7tSPQ6/wZgz8dup8NX6ANK+DMg1HDDHnm8qlGeQ==
Received: from HE1EUR02FT056.eop-EUR02.prod.protection.outlook.com
	(10.152.10.51) by HE1EUR02HT062.eop-EUR02.prod.protection.outlook.com
	(10.152.11.230) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7;
	Fri, 10 Mar 2017 18:57:18 +0000
Received: from DB5PR0101MB1686.eurprd01.prod.exchangelabs.com (10.152.10.57)
	by HE1EUR02FT056.mail.protection.outlook.com (10.152.11.21) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7 via
	Frontend Transport; Fri, 10 Mar 2017 18:57:18 +0000
Received: from DB5PR0101MB1686.eurprd01.prod.exchangelabs.com
	([fe80::79f2:6c68:b5be:d4a4]) by
	DB5PR0101MB1686.eurprd01.prod.exchangelabs.com
	([fe80::79f2:6c68:b5be:d4a4%14]) with mapi id 15.01.0947.022;
	Fri, 10 Mar 2017 18:57:17 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [bitbake] Failed to patch "defconfig" for linux kernel
Thread-Index: AQHSmcoXZOvBD7wCEUaVqbzY0bYOFaGOaZ12gAACGQCAAADkVg==
Date: Fri, 10 Mar 2017 18:57:17 +0000
Message-ID: <DB5PR0101MB1686E67E9EDBF665575F6DDA92200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
References: <DB5PR0101MB1686CDF4B73864FF6879490492200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
	<CAMKF1sohj3PLg2tjUBijrQUb1R7kUdcWPLpdi3G=NaV=_dOjkg@mail.gmail.com>
	<DB5PR0101MB168622D766CB2BF14A860D2792200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>,
	<CAMKF1sqqZxHaEMPr60LmRV0BJ+yCs+oMYTA4ZZK=JkK6i-yA9w@mail.gmail.com>
In-Reply-To: <CAMKF1sqqZxHaEMPr60LmRV0BJ+yCs+oMYTA4ZZK=JkK6i-yA9w@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=none action=none header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:C22010D551CBBC25B990234DD7EFB1725C62FCA7059AE00F7A4093C34683A6D4;
	UpperCasedChecksum:6D20AD80AE7CCA926368683FB8D446BE5A639B24EF605CBA4C6592A5E760C553;
	SizeAsReceived:8188; Count:39
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ahQGkxnb04usbRe5Hm5WM/sQjyc9xM2B]
x-incomingheadercount: 39
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT062;
	5:Rfy/Pu6LYTEbWWnPAODR10V+nchQqusMscG8RsRraa/jfhcR+SOA1C1nuLQN8VoiJ+lztHqic9PLIROtjeHtpC3WoskXGziaCFDXRo4SlmrjJG1hC5AOR0BnTBXLzWfEiVA8wa+phjHo/pQNZLxPyA==;
	24:I5KV8JZ4BcbTbIkINO9cPOqFmA8Q5CPLPIDwsiqO0rt0dcpwvzNX2KPQui9BkEDCfjl5pFmmepNIo5h+PahLZaJvd9cXbdiaUhkfWTKa6y0=;
	7:VUGii3ViHbA66U1HzO6tTuoRSDzVGLRUL3ZnaxSi+voVweEXeP6RW6hAnO6lm+Li1iby8vmtzGVbrrsmGtlHmnYyymCv1RrvThcUfY6yXzfewXN4xtu+yvuQa3MTVK2HIqV8Xwg0DqeCxOXusKY2DfkAaZOSRF3ircYz4AVo6HJBqReMlNoG3ElL7c7d0HNSL/hC/mSW75phh2wTX3YccwTbXQu4WwA/indHcQ6Dh/TlAzFfNPkV3sG61q1ssW+BUMLaRQEnZnHc5F4bxmk38nkK73jXVv3HFtnevzopBT+QgDVpV/0qu3QRQog80fr2
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900016);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR02HT062;
	H:DB5PR0101MB1686.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: c650af97-87c9-4c29-97d0-08d467e745df
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:HE1EUR02HT062; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015176)(444000031); SRVR:HE1EUR02HT062; BCL:0; PCL:0;
	RULEID:; SRVR:HE1EUR02HT062; 
x-forefront-prvs: 02426D11FE
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 18:57:17.3001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT062
X-OriginalArrivalTime: 10 Mar 2017 18:57:20.0077 (UTC)
	FILETIME=[250927D0:01D299D0]
Subject: Re: [bitbake] Failed to patch "defconfig" for linux kernel
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
X-List-Received-Date: Fri, 10 Mar 2017 18:58:23 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR0101MB1686E67E9EDBF665575F6DDA92200DB5PR0101MB1686_"

--_000_DB5PR0101MB1686E67E9EDBF665575F6DDA92200DB5PR0101MB1686_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



OK.
But how then is this file "bt.cfg" included in the compilation process ?



________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : vendredi 10 mars 2017 19:53
=C0 : Karim ATIKI
Objet : Re: [yocto] [bitbake] Failed to patch "defconfig" for linux kernel



On Fri, Mar 10, 2017 at 10:47 AM, Karim ATIKI <karim_atiki@hotmail.com<mail=
to:karim_atiki@hotmail.com>> wrote:

Hi Khem,


>You can edit do_configure_prepend() in linux-rpi.inc
>kernel_configure_variable CONFIG_BT y


Ok.

But this file "linux-rpi.inc" is available only for RaspberryPi ?

I'm not working on Rpi here.


Somehow I thought you were, anyhow if you are using linux-yocto then you ca=
n create a .cfg file e.g.
bt.cfg with

CONFIG_BT=3Dy
CONFIG_BT_RFCOMM=3Dy
CONFIG_BT_RFCOMM_TTY=3Dy
CONFIG_BT_HCIBTUSB=3Dy
CONFIG_WIRELESS=3Dy

and add it to SRC_URI e.g.

SRC_URI +=3D "file://bt.cfg"

that should do it.






________________________________
De : Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Envoy=E9 : vendredi 10 mars 2017 19:13
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [bitbake] Failed to patch "defconfig" for linux kernel

On Fri, Mar 10, 2017 at 6:50 AM, Karim ATIKI <karim_atiki@hotmail.com<mailt=
o:karim_atiki@hotmail.com>> wrote:
> Hi,
>
>
> I'm currently trying to patch the linux kernel 3.8.13-r2 of an ARM based
> board (Hachiko) in order to enable Bluetooth and RFCOMM support.
>
>
> Currently, I select these options with bitbake -c menuconfig virtual/kern=
el
>
> I'd like to use a patch on the defconfig in order to avoid the menuconfig
> step.
>
>
> I've created a linux_3.8.13.bbappend file to apply the path.
>
>
> Th patch file looks like:
>
>
>
> --- a defconfig
> +++ b defconfig
> @@ -107,3 +107,16 @@
>  CONFIG_CRYPTO_CBC=3Dy
>  CONFIG_CRYPTO_MD5=3Dy
>  CONFIG_CRYPTO_DES=3Dy
> +#
> +# FIR device drivers
> +#
> +CONFIG_BT=3Dy
> +CONFIG_BT_RFCOMM=3Dy
> +CONFIG_BT_RFCOMM_TTY=3Dy
> +
> +#
> +# Bluetooth device drivers
> +#
> +CONFIG_BT_HCIBTUSB=3Dy
> +CONFIG_WIRELESS=3Dy
>
>
> The working directory of the linux is:
>
>
> /home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-gnueabi/linux=
/3.8.13-r2/linux-3.8.13
>
>
> But when the linux is fetched and unpacked, the root defconfig file is pu=
t
> in:
>
>
> /home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-gnueabi/linux=
/3.8.13-r2
>
>
> therefore, the patch step failed.
>
>
> I tried to modify the patch with  --- a/../defconfig and b/../defconfig
>
> but it does not work better.
>
>
> Any idea how to make it work ?


You can edit do_configure_prepend() in linux-rpi.inc

kernel_configure_variable CONFIG_BT y
...



>
>
> Thanks.
>
>
> Karim
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org<http://lists.yoctoproject.org>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.



>


--_000_DB5PR0101MB1686E67E9EDBF665575F6DDA92200DB5PR0101MB1686_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p><br>
</p>
<div>
<div><br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
OK.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
But how then&nbsp;is this file &quot;bt.cfg&quot; included in the compilati=
on process ?</div>
</div>
<div><br>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> vendredi 10 mars 2017 19:53<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Objet :</b> Re: [yocto] [bitbake] Failed to patch &quot;defconfig&quot; =
for linux kernel</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, Mar 10, 2017 at 10:47 AM, Karim ATIKI <s=
pan dir=3D"ltr">
&lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atik=
i@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left-width:1px; border-left-color:rgb(204,204,204); border-left-style:soli=
d; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-3421084394858451552divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt; color:rgb(0,0,0); font-family:calibri,arial,helvetic=
a,sans-serif">
<p>Hi Khem,</p>
<span class=3D"gmail-">
<p><br>
</p>
<p><br style=3D"color:rgb(33,33,33); font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-size:13.3333px">&gt;You can edit d=
o_configure_prepend() in linux-rpi.inc</span><br style=3D"color:rgb(33,33,3=
3); font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-size:13.3333px">&gt;kernel_configu=
re_variable CONFIG_BT y</span><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-size:13.3333px"><br>
</span></p>
</span>
<p><span style=3D"color:rgb(33,33,33); font-size:13.3333px">Ok.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-size:13.3333px">But this file &=
quot;linux-rpi.inc&quot; is available only for RaspberryPi ?</span></p>
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px">I'm not work=
ing on Rpi here.</span></font></p>
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px"><br>
</span></font></p>
</div>
</div>
</blockquote>
<div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace">Some=
how I thought you were, anyhow if you are using linux-yocto then you can cr=
eate a .cfg file e.g.</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace">bt.c=
fg with</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><spa=
n style=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans-ser=
if; font-size:13.333333015441895px">CONFIG_BT=3Dy</span><br style=3D"color:=
rgb(80,0,80); font-family:calibri,arial,helvetica,sans-serif; font-size:13.=
333333015441895px">
<span style=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans=
-serif; font-size:13.333333015441895px">CONFIG_BT_RFCOMM=3Dy</span><br styl=
e=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans-serif; fo=
nt-size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans=
-serif; font-size:13.333333015441895px">CONFIG_BT_RFCOMM_TTY=3Dy</span><br =
style=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans-serif=
; font-size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans=
-serif; font-size:13.333333015441895px">CONFIG_BT_HCIBTUSB=3Dy</span><br st=
yle=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans-serif; =
font-size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans=
-serif; font-size:13.333333015441895px">CONFIG_WIRELESS=3Dy</span><br style=
=3D"color:rgb(80,0,80); font-family:calibri,arial,helvetica,sans-serif; fon=
t-size:13.333333015441895px">
</div>
<br>
</div>
<div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace">and =
add it to SRC_URI e.g.</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace">SRC_=
URI &#43;=3D &quot;file://bt.cfg&quot;</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace">that=
 should do it.</div>
<br>
</div>
<div><br>
</div>
<div>&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left-width:1px; border-left-color:rgb(204,204,204); border-left-style:soli=
d; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-3421084394858451552divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt; color:rgb(0,0,0); font-family:calibri,arial,helvetic=
a,sans-serif">
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px"></span></fon=
t></p>
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px"><br>
</span></font></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"gmail-m_-3421084394858451552x_divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>D=
e :</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;<br>
<b>Envoy=E9 :</b> vendredi 10 mars 2017 19:13<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [bitbake] Failed to patch &quot;defconfig&quot; =
for linux kernel</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"gmail-m_-3421084394858451552PlainText">
<div>
<div class=3D"gmail-h5">On Fri, Mar 10, 2017 at 6:50 AM, Karim ATIKI &lt;<a=
 href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotm=
ail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I'm currently trying to patch the linux kernel 3.8.13-r2 of an ARM bas=
ed<br>
&gt; board (Hachiko) in order to enable Bluetooth and RFCOMM support.<br>
&gt;<br>
&gt;<br>
&gt; Currently, I select these options with bitbake -c menuconfig virtual/k=
ernel<br>
&gt;<br>
&gt; I'd like to use a patch on the defconfig in order to avoid the menucon=
fig<br>
&gt; step.<br>
&gt;<br>
&gt;<br>
&gt; I've created a linux_3.8.13.bbappend file to apply the path.<br>
&gt;<br>
&gt;<br>
&gt; Th patch file looks like:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --- a defconfig<br>
&gt; &#43;&#43;&#43; b defconfig<br>
&gt; @@ -107,3 &#43;107,16 @@<br>
&gt;&nbsp; CONFIG_CRYPTO_CBC=3Dy<br>
&gt;&nbsp; CONFIG_CRYPTO_MD5=3Dy<br>
&gt;&nbsp; CONFIG_CRYPTO_DES=3Dy<br>
&gt; &#43;#<br>
&gt; &#43;# FIR device drivers<br>
&gt; &#43;#<br>
&gt; &#43;CONFIG_BT=3Dy<br>
&gt; &#43;CONFIG_BT_RFCOMM=3Dy<br>
&gt; &#43;CONFIG_BT_RFCOMM_TTY=3Dy<br>
&gt; &#43;<br>
&gt; &#43;#<br>
&gt; &#43;# Bluetooth device drivers<br>
&gt; &#43;#<br>
&gt; &#43;CONFIG_BT_HCIBTUSB=3Dy<br>
&gt; &#43;CONFIG_WIRELESS=3Dy<br>
&gt;<br>
&gt;<br>
&gt; The working directory of the linux is:<br>
&gt;<br>
&gt;<br>
&gt; /home/kai/yocto/build-hachiko/<wbr>tmp/work/hachiko64-poky-linux-<wbr>=
gnueabi/linux/3.8.13-r2/linux-<wbr>3.8.13<br>
&gt;<br>
&gt;<br>
&gt; But when the linux is fetched and unpacked, the root defconfig file is=
 put<br>
&gt; in:<br>
&gt;<br>
&gt;<br>
&gt; /home/kai/yocto/build-hachiko/<wbr>tmp/work/hachiko64-poky-linux-<wbr>=
gnueabi/linux/3.8.13-r2<br>
&gt;<br>
&gt;<br>
&gt; therefore, the patch step failed.<br>
&gt;<br>
&gt;<br>
&gt; I tried to modify the patch with&nbsp; --- a/../defconfig and b/../def=
config<br>
&gt;<br>
&gt; but it does not work better.<br>
&gt;<br>
&gt;<br>
&gt; Any idea how to make it work ?<br>
<br>
<br>
You can edit do_configure_prepend() in linux-rpi.inc<br>
<br>
kernel_configure_variable CONFIG_BT y<br>
...<br>
<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt; Karim<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"gmail-=
m_-3421084394858451552LPlnk864424" target=3D"_blank">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a> </div>
</div>
<div id=3D"gmail-m_-3421084394858451552LPBorder_GT_14891715758440.602903417=
4956354" style=3D"margin-bottom:20px; overflow:auto; width:100%; text-inden=
t:0px">
<table id=3D"gmail-m_-3421084394858451552LPContainer_14891715758400.8570814=
763919141" cellspacing=3D"0" style=3D"width:90%; background-color:rgb(255,2=
55,255); overflow:auto; padding-top:20px; padding-bottom:20px; margin-top:2=
0px; border-top-width:1px; border-top-style:dotted; border-top-color:rgb(20=
0,200,200); border-bottom-width:1px; border-bottom-style:dotted; border-bot=
tom-color:rgb(200,200,200)">
<tbody>
<tr valign=3D"top">
<td id=3D"gmail-m_-3421084394858451552TextCell_14891715758410.2412477415148=
3197" colspan=3D"2" style=3D"vertical-align:top; padding:0px; display:table=
-cell">
<div id=3D"gmail-m_-3421084394858451552LPRemovePreviewContainer_14891715758=
410.043331839245763115">
</div>
<div id=3D"gmail-m_-3421084394858451552LPExpandDescriptionContainer_1489171=
5758410.012757027131130805">
</div>
<div id=3D"gmail-m_-3421084394858451552LPTitle_14891715758410.3253142422044=
1063" style=3D"color:rgb(0,120,215); font-weight:normal; font-size:21px; fo=
nt-family:wf_segoe-ui_light,'segoe ui light','segoe wp light','segoe ui','s=
egoe wp',tahoma,arial,sans-serif; line-height:21px">
<a id=3D"gmail-m_-3421084394858451552LPUrlAnchor_14891715758420.00355311543=
98473763" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank" style=3D"text-decoration:none">yocto Info Page</a></div>
<div id=3D"gmail-m_-3421084394858451552LPMetadata_14891715758420.7280579727=
127381" style=3D"margin:10px 0px 16px; color:rgb(102,102,102); font-weight:=
normal; font-family:wf_segoe-ui_normal,'segoe ui','segoe wp',tahoma,arial,s=
ans-serif; font-size:14px; line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"gmail-m_-3421084394858451552LPDescription_14891715758420.7312018=
878517168" style=3D"display:block; color:rgb(102,102,102); font-weight:norm=
al; font-family:wf_segoe-ui_normal,'segoe ui','segoe wp',tahoma,arial,sans-=
serif; font-size:14px; line-height:20px; max-height:100px; overflow:hidden"=
>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB5PR0101MB1686E67E9EDBF665575F6DDA92200DB5PR0101MB1686_--
