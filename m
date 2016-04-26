Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FDADE00CEC; Tue, 26 Apr 2016 00:10:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0082.outbound.protection.outlook.com [104.47.100.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7445AE0093B
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 00:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=8ewVUX2v0hU0bX56M/3RJFCIxrzo3AJPIfhwO5vbsmM=;
	b=B+TmYqWrkuuMpDAZib9wRsNR8iLW5YwuYd5CNhFRKszjmooGFk5QCfkdRZ+0TNh8H0tKoABStdb3EbRuKDPBkgKjKDJpdwGncSXe03OSsZLHJKeQLoRMfPm0Za2tJ4Yywkx5B4I5caC9TXIk/DGhmdpCO3ZJTSYsWFMOJKmeoGk=
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) by
	PN1PR01MB0336.INDPRD01.PROD.OUTLOOK.COM (10.164.140.140) with Microsoft
	SMTP Server (TLS) id 15.1.466.19; Tue, 26 Apr 2016 07:10:08 +0000
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) with mapi id
	15.01.0477.012; Tue, 26 Apr 2016 07:10:09 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel Build error
Thread-Index: AQHRn4SLYSIGB7AV7UCUPj1JlvN22Z+bzvQAgAAAW7Q=
Date: Tue, 26 Apr 2016 07:10:09 +0000
Message-ID: <PN1PR01MB0333EF4C74C76713DA2E13CBEF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB0333D0AA52455F3BFC07AB53EF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>,
	<CAMKF1spiMKDGzfd21izpjak1rRm_XqpNzuTTd_Mx6726H9cw7Q@mail.gmail.com>
In-Reply-To: <CAMKF1spiMKDGzfd21izpjak1rRm_XqpNzuTTd_Mx6726H9cw7Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=inedasystems.com; 
x-originating-ip: [175.101.7.226]
x-ms-office365-filtering-correlation-id: 64a3a2a3-3596-4179-1102-08d36da1cd87
x-microsoft-exchange-diagnostics: 1; PN1PR01MB0336;
	5:1cdOHJVo7kaH52AS4g3PICgv1GbruIaIKJ5gjkG+aNTYt0DzzzUyj200VIYy2Y6NqI/fQ0eOzlbpSOn/n6+fxxOivFyF4Uf9y+hvVzn0l5CES2c14Tp0Ly8GJjkHWb0nkeXsjWCxcwg7oq2z6pW/NuWdzIwBNsYCW0Unea+j/FKfkPA3FCA17o6kBTk1hSGy;
	24:SZqifc2WdAOREtc09z+ZrqGcFUD7mVDqcGFNhkV4ubf5ZqgRPKjaa33O/1uDptyajiiuvceLhoJL/B4gg5biR0jGar79tcDzpzH6PCL6C/U=;
	7:Se3Lb3uikFQ9sCd509CpONtzE31UUjrqwXBqg9RshSoGB/dRowBflkpFglbSuvkbwjewD5Ws92r1qOL8LVm81i6Sypqd+P+tVFtxkBMrvh7veAIRu1erVYzBwqpT0c119oQgGao3Vs/tOQ0ZcjUY+UuC7ixbnmCdfsApWMPI/PWk6v8QIZLyhwZxEefnIzX0c3x0zagofj1R3Z+V9jI1Z3ZVolckPvwkcI4ZkPaX7kA=;
	20:yZAKx1ue3S2T78jYEkgUhzoVD47luQ9Whmz282Qv1tAGGjMAytxtbqiQV7YVnd9JJdj57+cFVe8RaC3HRxBV1p+k+uDjSa+CWX48YKKgQjuX8cLtPhHeM/dxGySelG1SJ3/A7pH+sLtrGdywALKeg0rU4nR2o6Xg73tNF4PlOd0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:PN1PR01MB0336;
x-microsoft-antispam-prvs: <PN1PR01MB0336D1F8112E432D75882705EF630@PN1PR01MB0336.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:PN1PR01MB0336; BCL:0; PCL:0; RULEID:; SRVR:PN1PR01MB0336; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(377454003)(53754006)(24454002)(53474002)(66066001)(77096005)(2950100001)(2900100001)(15975445007)(87936001)(5008740100001)(122556002)(5001770100001)(92566002)(54356999)(76176999)(50986999)(86362001)(19627405001)(19625215002)(33656002)(2501003)(5003600100002)(5004730100002)(19617315012)(107886002)(5002640100001)(189998001)(106116001)(16236675004)(10400500002)(586003)(3280700002)(102836003)(3846002)(2906002)(6116002)(16601075003)(3900700001)(81166005)(1096002)(3660700001)(1220700001)(19580395003)(19580405001)(9686002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:PN1PR01MB0336;
	H:PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 07:10:09.2058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0336
Subject: Re: Kernel Build error
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
X-List-Received-Date: Tue, 26 Apr 2016 07:10:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR01MB0333EF4C74C76713DA2E13CBEF630PN1PR01MB0333INDP_"

--_000_PN1PR01MB0333EF4C74C76713DA2E13CBEF630PN1PR01MB0333INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,


Kernel Version is 3.10.60 & our platform is mips32.

For GCC I haven't made any changes. I have used the default GCC from yocto.=
 Looks like by default it is using 5.3.0 version.


Can we specify our GCC in the YOCTO?


Thanks and Regards,
Harinath



________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Tuesday, April 26, 2016 12:13 PM
To: Harinath maddelal; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel Build error

which version of kernel are you compiling and what version of gcc is in pla=
y ?

On Mon, Apr 25, 2016 at 11:31 PM Harinath maddelal <Harinath.maddela@inedas=
ystems.com<mailto:Harinath.maddela@inedasystems.com>> wrote:

Hi All,


When i'm trying to build my kernel using yocto, im getting following error

|   CHK     include/generated/compile.h
|   AS      arch/mips/kernel/r4k_fpu.o
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S: Assembler messages:
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:89: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f0,272+0($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:90: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f2,272+16($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:91: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f4,272+32($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:92: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f6,272+48($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:93: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f8,272+64($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:94: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f10,272+80($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:95: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f12,272+96($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:96: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f14,272+112($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:97: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f16,272+128($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:98: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f18,272+144($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:99: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f20,272+160($4)'
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:100: Error: opcode not supported on this processor: mips3=
 (mips3) `sdc1 $f22,272+176($4)'



Can you please tell me what could be the issue? We have used mips32r2 in ou=
r machine file but if the error log is observed where it says "Error: opcod=
e not supported on this processor: mips3 (mips3) `sdc1 $f6,272+48($4)".


Can you please help me resolve this issue. Thanks in Advance


Thanks and Regards,
Harinath

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

--_000_PN1PR01MB0333EF4C74C76713DA2E13CBEF630PN1PR01MB0333INDP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><br>
</p>
<p>Hi,</p>
<p><br>
</p>
<p>Kernel Version is 3.10.60 &amp; our platform is mips32.</p>
<p>For GCC I haven't made any changes. I have used the default GCC from yoc=
to. Looks like by default it is using 5.3.0 version.</p>
<p><br>
</p>
<p>Can we specify our GCC in the YOCTO?<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Khem Raj &lt;raj.khe=
m@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, April 26, 2016 12:13 PM<br>
<b>To:</b> Harinath maddelal; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel Build error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">which version of kernel are you compiling and what version=
 of gcc is in play ?</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr">On Mon, Apr 25, 2016 at 11:31 PM Harinath maddelal &lt;<a =
href=3D"mailto:Harinath.maddela@inedasystems.com">Harinath.maddela@inedasys=
tems.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-size:12pt; color:#000000; background-color:#ffffff; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi All,</p>
<p><br>
</p>
<p>When i'm trying to build my kernel using yocto, im getting following err=
or</p>
<br>
|&nbsp;&nbsp; CHK&nbsp;&nbsp;&nbsp;&nbsp; include/generated/compile.h<br>
|&nbsp;&nbsp; AS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; arch/mips/kernel/r4k_fpu.o<b=
r>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S: Assembler messages:<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:89: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f0,272&#43;0($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:90: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f2,272&#43;16($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:91: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f4,272&#43;32($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:92: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f6,272&#43;48($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:93: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f8,272&#43;64($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:94: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f10,272&#43;80($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:95: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f12,272&#43;96($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:96: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f14,272&#43;112($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:97: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f16,272&#43;128($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:98: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f18,272&#43;144($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:99: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f20,272&#43;160($4)'<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:100: Error: opcode not supported on this processor: mips3=
 (mips3) `sdc1 $f22,272&#43;176($4)'<br>
<br>
<p><br>
</p>
<p>Can you please tell me what could be the issue? We have used mips32r2 in=
 our machine file but if the error log is observed where it says &quot;Erro=
r: opcode not supported on this processor: mips3 (mips3) `sdc1 $f6,272&#43;=
48($4)&quot;.</p>
<p><br>
</p>
<p>Can you please help me resolve this issue. Thanks in Advance<br>
</p>
<p><br>
</p>
<div>
<div name=3D"divtagdefaultwrapper">Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
</div>
</div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
<br clear=3D"all">
______________________________________________________________________<br>
This email has been scanned by the Symantec Email Security.cloud service.<b=
r>
For more information please visit http://www.symanteccloud.com<br>
______________________________________________________________________<br>
</div>
</div>
</div>
</body>
</html>

--_000_PN1PR01MB0333EF4C74C76713DA2E13CBEF630PN1PR01MB0333INDP_--
