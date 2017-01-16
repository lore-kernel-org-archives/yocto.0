Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BC42E00805; Mon, 16 Jan 2017 00:47:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Jan 2017 00:47:04 PST
Received: from BAY004-OMC2S23.hotmail.com (bay004-omc2s23.hotmail.com
	[65.54.190.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D49E006EA
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 00:47:04 -0800 (PST)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([65.54.190.125])
	by BAY004-OMC2S23.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 16 Jan 2017 00:46:04 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=UniO1kHnVq7rpofvRucqrFvXIo3IAt5OYNmPLo6AfIw=;
	b=CDpd9Hqn93sMl6pIVvVMnar9/yZPekLYCrI/jgf3sfDa2QSn/OgQrN/8RmEZ5M9QzOhTriZsoqoDl9KUmaiTN4fUPzAEXNcniDvmHw7nowsb1mQ8H9nGjO0epKJ58PvhiAweT3HO+FiGr1S3KTMFP3qaceahAtTmbchq0ycmKk4b0NVywNkXR9QCwV0DMBOSpaP/q85IILXvERJ+kz4JYop0EoQvw4so0F2l94JhNrHt8mUrMgeOaJSxHr66Cdae23rBCW7ogRNabC5+rlxgjFiOYd9JyKx8G7ldCssUjlVcnH7CPzCyuBwCZj8m4GPHiqbTPCrFbwEGkWcqHbQ49w==
Received: from DB5EUR01FT060.eop-EUR01.prod.protection.outlook.com
	(10.152.4.54) by DB5EUR01HT019.eop-EUR01.prod.protection.outlook.com
	(10.152.5.200) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.803.8;
	Mon, 16 Jan 2017 08:46:02 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM (10.152.4.54) by
	DB5EUR01FT060.mail.protection.outlook.com (10.152.5.232) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Mon, 16 Jan 2017 08:46:02 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) by
	MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) with mapi id
	15.01.0845.013; Mon, 16 Jan 2017 08:46:02 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Illegal Instruction Generate for Intel Atom
Thread-Index: AQHSb9G3VMe0fiyhnk+6NGfdUXF80Q==
Date: Mon, 16 Jan 2017 08:46:02 +0000
Message-ID: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:3E8C7C1556698B554F846CFE223A01407B4EDE234C0BBE7A74614462B5B44B7E;
	UpperCasedChecksum:CFD1CD5A78C4927275CA9586450F48B59E9E626C57C5ECBA1D74D24619DAA582;
	SizeAsReceived:7470; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [aoXR1+G49DuMfC+fVphnjr8deT2cTuBY]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT019;
	7:xO/igtvc0Hw+5XSQfu2T7NfSAyMWDIMRk01Lu8PPkqA0UScC7grIlq8kjOsnlu+fAcVrkrwaNLJmFgrxPAUfU1jrwOUdq632HmtdFA1na8dHMabWiwSdga5hYe74eBtXNI+LcuTiaNlIdnWq8PDg10VBoRue55LMhE4P5Q7+x2boA67s9YhahL59E+NWZRW3y4G8g8vBOrKAKtYjwtuknBxyBwvmPesqTGiQUkN5wnwwNCk7Z1SU/nFsO/ABCCLfD5L16apzQVjVwVjaCDMDhGLk4oDzj5B9onc+Bw2aGj/iiTeiRrkYOvHumTnrH4oVlQuOdslzAjit1L5lNQU6m4SMx66zz2VGpVN4KElwBm5p4Xg1UStcCeF2DTUiQU096Cmjf7b+W/ZACci8n5q3+oAsWTDHpxdTKcg5GUaaJQ3KvxMOKfGIXwabGH1kZ+FERFWiWzsCiEXExZtgFUH4Sw==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR01HT019;
	H:MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: c3e39512-a695-42e4-fb26-08d43dec19fb
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(5061506344)(5061507293)(1603103113)(1601125047)(1701031023);
	SRVR:DB5EUR01HT019; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:DB5EUR01HT019; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT019; 
x-forefront-prvs: 01894AD3B8
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2017 08:46:02.2482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT019
X-OriginalArrivalTime: 16 Jan 2017 08:46:04.0293 (UTC)
	FILETIME=[F8ABE350:01D26FD4]
Subject: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 08:47:07 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MMXP123MB0125266F42AF93B43F4F1BD7DA7D0MMXP123MB0125GBRP_"

--_000_MMXP123MB0125266F42AF93B43F4F1BD7DA7D0MMXP123MB0125GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This arose building asterisk switching from 13.7 to 13.11+.


The executable core dumps immediately with an illegal instruction instructi=
on, which gdb reported as 'andn'.  This is part of BMI1, which was introduc=
ed with Haswell.  I am targeting a (32-bit) Z5xx Atom processor, which pred=
ates this instruction.


I don't know what changed in the Asterisk build to cause this (the instruct=
ion is in some regular compiler generate code) but the compiler is still ge=
nerating legal core2 code and tune-core2.inc is recommended for Atom proces=
sors:


"This tune is recommended for the Intel Core 2 CPU family, including Conroe=
, Merom and beyond, as well as the first Atom CPUs, Diamondville, and beyon=
d."


I am still considering this output is down to some quirk in my configuratio=
n but I found that -mtune and -march options were added for Atom in GCC in =
4.5, so this could be another line of attack, although I didn't find any ex=
plicit code for this in meta/meta-intel.


Any ideas?


My initial plan is to try to acoid the core2 tuning and then, if that helps=
, attempt to get atom tuning working, unless that's likely to be cause furt=
her breakages due to being unexpected.


Regards,

Chris



--_000_MMXP123MB0125266F42AF93B43F4F1BD7DA7D0MMXP123MB0125GBRP_
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
<p>This arose building asterisk switching from 13.7 to 13.11&#43;.</p>
<p><br>
</p>
<p>The executable core dumps immediately with an illegal instruction instru=
ction, which gdb reported as 'andn'. &nbsp;This is part of&nbsp;<span>BMI1,=
 which was introduced with Haswell. &nbsp;</span><span style=3D"font-size: =
12pt;">I am targeting a (32-bit) Z5xx&nbsp;Atom processor,
 which predates this instruction.</span></p>
<p><span><br>
</span></p>
<p><span>I don't know what changed in the Asterisk build to cause this (the=
 instruction is in some regular compiler generate code)&nbsp;but the compil=
er is still generating legal core2 code and tune-core2.inc is recommended f=
or Atom processors:</span></p>
<p><span><br>
</span></p>
<p><span>&quot;</span><span style=3D"font-size: 12pt;">This tune is recomme=
nded for the Intel Core 2 CPU family, including Conroe,&nbsp;</span><span s=
tyle=3D"font-size: 12pt;">Merom and beyond, as well as the first Atom CPUs,=
 Diamondville, and beyond.&quot;</span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">I am still considering this output is d=
own to some quirk in my configuration but I found that -mtune and -march op=
tions were added for Atom in GCC in 4.5, so this could be another line of a=
ttack, although I didn't find any
 explicit code for this in meta/meta-intel.</span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">Any ideas?</span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">My initial plan is to try to acoid the =
core2 tuning and then, if that helps, attempt to get atom tuning working, u=
nless that's likely to be cause further breakages due to being unexpected.<=
/span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">Regards,</span></p>
<p><span style=3D"font-size: 12pt;">Chris</span></p>
<p><br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_MMXP123MB0125266F42AF93B43F4F1BD7DA7D0MMXP123MB0125GBRP_--
