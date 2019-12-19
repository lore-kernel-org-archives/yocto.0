Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2033.1576795282930444963
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 14:41:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=a+4E49ve;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 784D6E011C0; Thu, 19 Dec 2019 14:41:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.128.86 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic312-24.consmr.mail.bf2.yahoo.com (sonic312-24.consmr.mail.bf2.yahoo.com [74.6.128.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D7A8E00D00
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 14:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576795280; bh=8lXHtT29sBej++J21HL2dxM+yfUxPsPZI8HOIItMAMc=; h=Date:From:To:Cc:Subject:References:From:Subject; b=a+4E49veLnjismomFNa9n4/lJkU14OQ+HsbPOmQFcsf9gJIUjtP4eqEJeHUQQ9XxYYTnVvKiyqI6qLyCW7Q/nLzIB4AiXVQdxWJBYWLP5aETCNshb5WEqLHXurhaUulUXpBki+K5o+QsiuX6y83yJusfCrhFnSCTgELzZELwCWyOhgU+tH6DqLluRBBmV9hStWwZtdLSPRcMnxw6AHlLsYJdjUvYC1Ih/uoU+UtadWQj7w2MWmityhbYWJoHoc957MLusvDTT9VgjOdMuEgS3nqEnrXJQCswZsgV9kECweHBTTbbgEjUy1PVGDfM4qb7QD+799wfdTQVbWoSndYDTA==
X-YMail-OSG: N3ZI.eAVM1kY.gkqj7CpUtZ0udX4SBnPDHhOlqgmvrx9xap2ankp5KguLUkjW8T
 RNgwHU4A6eR81l3Xy9_2GOo3Zfr0cKPGoytOK_HcaqM2U4QF4rNeYQD7kCmrSN4gE_moC7pdwoTq
 pC7b9eb1hRaWBq9ygTh.kc8to18UVSSF241l_eYrkZ2Xi3vTSm.iUds5Q7euKsA0TM82PwJJAMYP
 W.hsSPUvIqoV3s2DJRbT8Yzgv4t5mZTlKSo3PbXPElp5xjEVlofevvA6aQsRnnNQkHZzKnSf88zF
 tKmYXYyWOacVeJMZJaapSo.XHKr4A5XG6f3DFgmN430zEdQxoSj4V4jRkLLDF_xhbz7CnRJ6_R4L
 WHiaCjMfLT_5s6bPH31_tZFzc7EtO_KivcX9IrN364wRqc_J6wnN0yNRiO4QeZb0mO7r0DGtUHFL
 ZmxOs4g1wFzKcERMN.ThRjoSGg3UzaY5b1VOkCj1c1MUWy89xWtCNmDiHGI1kgIRg.kgt96zQ7Ll
 QsOpauY7vw1Ikts.LfnUsoiwOD6Yj6B.Yc.rLe3XPvaTjaN3Od5wn0ac2sVuMCrUzLo5jjT0AfEP
 GzOspKL2WzQvKfBbyu2JqLv0eVDFiCXAKQ9ACa6v9eF6M7M38LFtBM7UkH6WtjCub_WT341YsBGu
 deU3Mo8xZquXQxyA16vCo9286YRXbCIuB7PqptjqAOXmy4XgTQTg4Ph1y1CkMb7J_kM23iLGUOZK
 dsm0uKlAWQgl3EDPL6NuiEsMXi2KHtruwtKZcYe_UTQgxcIkkoCSSWNFYbD7q75BfB.CZVa7oQzd
 _iRibz9pIt2ieRw_UcPfeZNgRB3kXWTJTNPc5i8DIEGmG6ihX_YcgweWZ1mt8yo0X3CBjy86POC7
 0aZ6h3W.iCo6TrXZBYRnpKHvPoGy4GwhUZRaD2NbvKB7GzFZcvjsiRZvXB3UEvVhuRLI13mdAYoU
 dCGPsWXo_qPPOleIKsPp7I3trQZDkm8w_GOppSlH3YpGElNNOEjzbln_nDdyTH..erT7BDWxLHgU
 SXOzC8efhyBUqgGLOuOslNh8XFktLaqDMFlSGTMUnr8DmbGpVT8enQCuPQfSbRDd7QcK8nXc.sxu
 hxR3TWqDY5XMrARNJkcufNQdI3EiA5Mfx2.06WcoAfdr2YrQp2cFfqGZARNnm7MbmXFI026oe6by
 DVlyNgEF9r8ojumiO.aUMoi.QKrdx853vF8TfeKjTSJSm4S8NgQ_S5ZX984GrzScbgsEApKujJE0
 DRY2HMP2YagMuacqkfOS4oNAzPjIA2dvkYdXXzfHLTI20Ycg_C_kpBqif.lg7ikA3ZY1caRBiSLB
 PrhLzYYlS3Oi_yhrHi0SYZLOkwwXEDqybIodz5SpoeN.AmIQ-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Thu, 19 Dec 2019 22:41:20 +0000
Date: Thu, 19 Dec 2019 22:41:18 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <332010843.999023.1576795278177@mail.yahoo.com>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <332010843.999023.1576795278177.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_999022_1431740903.1576795278176"

------=_Part_999022_1431740903.1576795278176
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,
This is the error, that I was getting with meta-yosys-tools/recipes-yosys/y=
osys/yosys_0.1.bb,found at github.com/develone.
The strip command fails, both on raspberrypi4-64 target and during the "bit=
bake yosys" build.During the do_install which returns an error.strip: Unabl=
e to recognise the format of the input file `yosys'
This above error was happening during do_install.Made some chgs to the Make=
file=C2=A0chg'ed prefix from /usr/local to /optadded a variable=C2=A0YOCTO =
:=3D "--input-target=3Delf64-littleaarch64"added $(YOCTO) to lines 763, 765=
, and 769 of yosys Makefile
Now, my build for the rpi4-64 gets to the do_package step.NOTE: Skipping fi=
le /opt/bin/yosys-abc from yosys for already-stripped QA testNOTE: Skipping=
 file /opt/bin/yosys-filterlib from yosys for already-stripped QA testERROR=
: Fatal errors occurred in subprocesses:
ls tmp/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+d406f2ffd7-r0/image/opt=
/bin=C2=A0 share
Where the desired, files are located, in the /opt/bin & /opt/share/yosys fo=
lders.
I tested these files on rpi4-64 target.=C2=A0 I am getting an error on rpi4=
-64 target./opt/bin/yosys: cannot execute binary file: Exec format error.
All help is appreciated.Best Regards
=C2=A0

Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_999022_1431740903.1576795278176
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpa6301966yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div dir=3D"ltr" data-setdir=3D"false"><div><div>Hi All,</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div>This is the error, that I was=
 getting with meta-yosys-tools/recipes-yosys/yosys/yosys_0.1.bb,</div><div>=
found at github.com/develone.</div><div><br></div><div>The strip command fa=
ils, both on raspberrypi4-64 target and during the "bitbake yosys" build.</=
div><div>During the do_install which returns an error.</div><div>strip: Una=
ble to recognise the format of the input file `yosys'</div><div><br></div><=
div>This above error was happening during do_install.</div><div>Made some c=
hgs to the Makefile&nbsp;</div><div>chg'ed prefix from /usr/local to /opt</=
div><div>added a variable&nbsp;</div><div>YOCTO :=3D "--input-target=3Delf6=
4-littleaarch64"</div><div>added $(YOCTO) to lines 763, 765, and 769 of yos=
ys Makefile</div><div><br></div><div>Now, my build for the rpi4-64 gets to =
the do_package step.</div><div>NOTE: Skipping file /opt/bin/yosys-abc from =
yosys for already-stripped QA test</div><div>NOTE: Skipping file /opt/bin/y=
osys-filterlib from yosys for already-stripped QA test</div><div>ERROR: Fat=
al errors occurred in subprocesses:</div><div><br></div><div>ls tmp/work/aa=
rch64-poky-linux/yosys/0.1+gitAUTOINC+d406f2ffd7-r0/image/opt/</div><div>bi=
n&nbsp; share</div><div><br></div><div>Where the desired, files are located=
, in the /opt/bin &amp; /opt/share/yosys folders.</div><div><br></div><div>=
I tested these files on rpi4-64 target.&nbsp; I am getting an error on rpi4=
-64 target.</div><div>/opt/bin/yosys: cannot execute binary file: Exec form=
at error.</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">All he=
lp is appreciated.</div><div>Best Regards</div><div><br></div><div>&nbsp;</=
div></div><br></div><div><br></div><div class=3D"ydpa6301966signature">Edwa=
rd Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div></body><=
/html>

------=_Part_999022_1431740903.1576795278176--
