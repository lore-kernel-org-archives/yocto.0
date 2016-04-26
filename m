Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB2CE00CFB; Mon, 25 Apr 2016 23:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0077.outbound.protection.outlook.com [104.47.100.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4342EE00CEC
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 23:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1mzKPXEwN1e0t1SiVlmwejT2+wrDnzLcr1yzhUQeTfw=;
	b=BN3jv+bm2u5a8fhAeun7ZcG/m8QYRJNA/WVTBdfz3LH+SNECE6mA3jGFCrsMP8obbyfzm6JoRB+t35GjdDHCYZX+YXwCB5f/lV2JcYh9YiHS9Q7iVEJv5/OTW2dLI2vWGThaOAhHOfj1XY2iG4xyKsmFYgvsD+lgVMjnDn+TKKQ=
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) with Microsoft
	SMTP Server (TLS) id 15.1.477.8; Tue, 26 Apr 2016 06:30:00 +0000
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) with mapi id
	15.01.0477.012; Tue, 26 Apr 2016 06:30:00 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel Build error
Thread-Index: AQHRn4SLYSIGB7AV7UCUPj1JlvN22Q==
Date: Tue, 26 Apr 2016 06:30:00 +0000
Message-ID: <PN1PR01MB0333D0AA52455F3BFC07AB53EF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=inedasystems.com;
x-originating-ip: [175.101.7.226]
x-ms-office365-filtering-correlation-id: 9908ff69-5aeb-42f7-0c2b-08d36d9c31a6
x-microsoft-exchange-diagnostics: 1; PN1PR01MB0333;
	5:o9vwxJ1A+PZzaulNupaE6yJPz4nKgKLC2rY+U2iR49qYOkfrnBercnZU5WKUbZ5MghQMY0+vY2iZt9QEFRM+gQVsnMrpRhUuu2XOCVS1kWuAeddiWCM44M7GhgWRu5sl8D9GILmcHTLrJ5SCNKzO/Q==;
	24:r40YQ/LDDglJkFou3P/fUqf+6dGQeTYEP0Oqg9pHflAm7hTSCYhMBRspR0A5ThlBLpPj242BCTjSEu6B3VCBl7kenhseWWKCEaEdUVcBYoc=;
	7:Z/qKdlvVyIGtTRicH5XIXdShScJVSnje6jG9RPbZkAp8/xRmguC27g2F1d1Ot5VaMg8KDSf7FX4NvBPhb1fTBP2rme73m4o0k37wVIoeDPs4cnzSy68TccFvfC3qbd/zMUHTOKqqXk/yWJv/ViQhpaTxADXFbgEac570pVXDB3zI/wR7xiYpiAY7p5j96RF2;
	20:EFf4At/o3wVOPOZtOPSvfP8/L2s7RoLG69DEG3TZJX+NoI4e7qHIwoKzLx/ZDLdDu3NznBANiFsjT0piG7IzVBFNi+aBB1Lk6tAhhxW6jo5Wis0Xqms18dcxzkhRe7Iku87xZ36ewJv0kIVIfrhzagKQmhfZueS4533Ej35fnZw=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:PN1PR01MB0333;
x-microsoft-antispam-prvs: <PN1PR01MB0333F8AA8DA9F43407E41E81EF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:PN1PR01MB0333; BCL:0; PCL:0; RULEID:; SRVR:PN1PR01MB0333; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(53754006)(53474002)(5003600100002)(3280700002)(77096005)(3660700001)(2900100001)(586003)(5008740100001)(106116001)(3846002)(6116002)(102836003)(50986999)(33656002)(54356999)(66066001)(87936001)(5002640100001)(19625215002)(2501003)(10400500002)(3480700003)(122556002)(19627405001)(16236675004)(86362001)(189998001)(2351001)(1730700002)(92566002)(81166005)(5004730100002)(450100001)(5640700001)(9686002)(110136002)(1096002)(107886002)(1220700001)(11100500001)(229853001)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:PN1PR01MB0333;
	H:PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 06:30:00.1850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0333
Subject: Kernel Build error
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
X-List-Received-Date: Tue, 26 Apr 2016 06:30:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR01MB0333D0AA52455F3BFC07AB53EF630PN1PR01MB0333INDP_"

--_000_PN1PR01MB0333D0AA52455F3BFC07AB53EF630PN1PR01MB0333INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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


--_000_PN1PR01MB0333D0AA52455F3BFC07AB53EF630PN1PR01MB0333INDP_
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
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_PN1PR01MB0333D0AA52455F3BFC07AB53EF630PN1PR01MB0333INDP_--
