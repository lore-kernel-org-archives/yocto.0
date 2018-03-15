Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4D5DE0084A; Thu, 15 Mar 2018 14:16:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 827DFE006E9
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 14:16:30 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1412.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Thu, 15 Mar 2018 21:16:27 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 15 Mar 2018 14:16:24 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 15 Mar 2018 14:16:24 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to get mysqy/mariadb to start on powerup.
Thread-Index: AQHTvJmRjybrgAvccUyN6MZA1cayV6PSO8aA//+OKnY=
Date: Thu, 15 Mar 2018 21:16:24 +0000
Message-ID: <937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>,
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
In-Reply-To: <CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1521148585-452060-14489-6642-1
X-BESS-VER: 2018.3.1-r1803090017
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191096
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Thu, 15 Mar 2018 21:16:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_937e0a406a4443b0813052bcc5c0a006sakurauscom_"

--_000_937e0a406a4443b0813052bcc5c0a006sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> From: Khem Raj <raj.khem@gmail.com>

> Sent: Thursday, March 15, 2018 1:54 PM
> To: Greg Wilson-Lindberg
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>
> > On Thu, Mar 15, 2018 at 1:38 PM, Greg Wilson-Lindberg
> <GWilson@sakuraus.com> wrote:
> > I'm building an RPi3 system that is going to use mysql/mariadb. I've go=
t
> > everything installed, but mysqld is not starting. install_db.service do=
es
> > run on startup, but the mysqld.service file never gets triggered.
> >
> >
> > Is there something that I'm missing to get it to run? I've search onlin=
e,
> > but can't find anything that pertains to yocto.
> >
>
> poke on the system with systemctl/journalctl to see whats going on

journalctl -u mysqld.service says no entries
systemctl status mysqld.service shows:
   Loaded: loaded (/lib/systemd/system/mysqld.service; disabled; vendor pre=
set: enabled)
   Active: inactive (dead)

I've rebooted the system a couple of times to see if install_db needed to b=
e run before mysql would run, no luck.

--_000_937e0a406a4443b0813052bcc5c0a006sakurauscom_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p><b style=3D"font-size: 11pt; font-family: Calibri, sans-serif;">&gt;&nbs=
p;From:</b><span style=3D"font-size: 11pt; font-family: Calibri, sans-serif=
;"> Khem Raj &lt;raj.khem@gmail.com&gt;</span><br>
</p>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<div style=3D"color: rgb(0, 0, 0);">
<div>
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>&gt;&nbsp;Sent:</b> Thursday,=
 March 15, 2018 1:54 PM<br>
<b>&gt;&nbsp;To:</b> Greg Wilson-Lindberg<br>
<b>&gt;&nbsp;Cc:</b> yocto@yoctoproject.org<br>
<b>&gt;&nbsp;Subject:</b> Re: [yocto] How to get mysqy/mariadb to start on =
powerup.</font>
<div>&gt;&nbsp;&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">&gt;&nbsp;&gt;&nbsp;On Thu, Mar 15, 2018 at 1:38 P=
M, Greg Wilson-Lindberg<br>
&gt;&nbsp;&lt;GWilson@sakuraus.com&gt; wrote:<br>
&gt;&nbsp;&gt; I'm building an RPi3 system that is going to use mysql/maria=
db. I've got<br>
&gt;&nbsp;&gt; everything installed, but mysqld is not starting. install_db=
.service does<br>
&gt;&nbsp;&gt; run on startup, but the mysqld.service file never gets trigg=
ered.<br>
&gt;&nbsp;&gt;<br>
&gt;&nbsp;&gt;<br>
&gt;&nbsp;&gt; Is there something that I'm missing to get it to run? I've s=
earch online,<br>
&gt;&nbsp;&gt; but can't find anything that pertains to yocto.<br>
&gt;&nbsp;&gt;<br>
&gt;<br>
&gt;&nbsp;poke on the system with systemctl/journalctl to see whats going o=
n<br>
</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">journalctl -u mysqld.service says no entries</div>
<div class=3D"PlainText">systemctl status&nbsp;<span style=3D"font-family: =
Calibri, Arial, Helvetica, sans-serif; font-size: 13.3333px;">mysqld.servic=
e shows:</span></div>
<div class=3D"PlainText"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif; font-size: 13.3333px;">
<div>&nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/mysqld.service; disab=
led; vendor preset: enabled)</div>
<div>&nbsp; &nbsp;Active: inactive (dead)</div>
<br>
</span></div>
<div class=3D"PlainText"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif; font-size: 13.3333px;">I've rebooted the system a couple o=
f times to see if install_db needed to be run before mysql would run, no lu=
ck.</span></div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_937e0a406a4443b0813052bcc5c0a006sakurauscom_--
