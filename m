Return-Path: <adolfo_sm_cr@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70148E00D10; Tue,  6 Sep 2016 06:14:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adolfo_sm_cr[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Sep 2016 06:14:26 PDT
Received: from COL004-OMC3S1.hotmail.com (col004-omc3s1.hotmail.com
	[65.55.34.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B7EE00D07
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 06:14:26 -0700 (PDT)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com ([65.55.34.135])
	by COL004-OMC3S1.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 6 Sep 2016 06:13:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=cm25iOtQsZp9+yZv55XfoP2PNFJXaYWnGm78C9xwC3U=;
	b=mCsP2LWr2naxEVvFw2XxKsFmGoWZ72O+vIPkXKf7wjmfhhy7aYhkrz/qzUAo+ET/WFi7eLYIAyLfKM3qRADSfV3BgMmg9QNoNQcccHtVoxhTGfjxmkI2YV31E2wCs4xFMCA+HDsK0hVSwBb5/KVwPBbtwaurQg/ofCDAB9KKAE9t8b2t/eJkYFWWVU3QdgB+f+AqCAiokYa4dJKKZc957MdkaKLMaqaGC8XRoO+1B3RDQ0C/RL6KwuZtjQYgdAgkeQfWEJnIBtk72GrVXAnlyQyNV7PnEQcEsu4MW5RrJHwtOSAZjMVLgtpFyCYlMSQ6FeS7rSxR+MnB/H5/463aeg==
Received: from SN1NAM02FT008.eop-nam02.prod.protection.outlook.com
	(10.152.72.53) by SN1NAM02HT103.eop-nam02.prod.protection.outlook.com
	(10.152.73.186) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.587.6;
	Tue, 6 Sep 2016 13:13:23 +0000
Received: from SN2PR10MB0094.namprd10.prod.outlook.com (10.152.72.52) by
	SN1NAM02FT008.mail.protection.outlook.com (10.152.72.119) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.587.6 via Frontend Transport; Tue, 6 Sep 2016 13:13:23 +0000
Received: from SN2PR10MB0094.namprd10.prod.outlook.com ([10.160.60.146]) by
	SN2PR10MB0094.namprd10.prod.outlook.com ([10.160.60.146]) with mapi id
	15.01.0599.016; Tue, 6 Sep 2016 13:13:23 +0000
From: Adolfo Sanchez <adolfo_sm_cr@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Failing build following Quick Start
Thread-Index: AQHSCD+1aNYubT5qGU+TFi0wOyccIw==
Date: Tue, 6 Sep 2016 13:13:23 +0000
Message-ID: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>
Accept-Language: es-CR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.72.52)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.72.52 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pSB9iBYK/f4n3XNMzk1McNJoafkcQyQp]
x-eopattributedmessage: 0
x-forefront-antispam-report: CIP:10.152.72.52; IPV:NLI; CTRY:; EFV:NLI;
	SFV:NSPM; SFS:(10019020)(98900003); DIR:OUT; SFP:1102; SCL:1;
	SRVR:SN1NAM02HT103; H:SN2PR10MB0094.namprd10.prod.outlook.com;
	FPR:; SPF:None; LANG:en; 
x-microsoft-exchange-diagnostics: 1; SN1NAM02HT103;
	6:60kfyLwe5/BdLv26YaXOVq2T6bif+yEop/k9AEZplVS4nu+WEsaGBvazA5fTAyNXto4/WnntHH1Ta6G8Rv8+p34xvvI/VbzuhgTxXD1c31Jacbmo+CfyDFwuhsw5q0GRKPToeWKU7aGF8gyFUbxxOhYt4IA830A4bXlGk4RPeGlp219/DhyHksHQjkyl01TyDl9VRW4YT4yyPrwB7Xapk7vJAEJ1Ja4jDoEUzmbOO2gDCk1BuKmEzzV62yBdKLxEtstHxa+Su1TROhd94+vPk3WBVT3QMgM4Uz3v2EVhyjdFQO1EW3Y8cCOHaEv81jxg;
	5:ZSsuCFzue9w2DT3R7mRRbSFRibnBlmZ0+Wjxp55RQFnowiTyqMq6Y/NmGbr2s/1dGUnb4kWXtd494ZSl6wU54eIWGidALQZa2wXSR8eSk/T5F4gYarv7DbUyB1MA7o5fX4cAJpjz4gXwohaVbxqFOQ==;
	24:PiIzzw6UsYe8XrB9qnWgGoWIfsimUFblGH9JxCFSRE7PSBgvhjAxcKrKWH/fkY5j3S0laF5Yx2V862HkNy3UIA2i4Owo1MtR5JhZqdY1zhA=;
	7:HfeTPbBJ14d2L8FWi+1clQOMUBs/gHKnLOUCqrrwywzY4hcp3Byon8ksf4uAW3eqlT9l+IR93CkL8krBAzgj4U2Ak81HgTFDVdLpQm7uKfgwXkXdAFJYpSqzGcBEbVAbCDoBmJkJXOmTbRJAa1IDojilK1SWRbrYcl/ySaq6Mn5R6Msp6Q3blCZ2NS5UE3zZ0Mea8vYRGFsjWOvbIb9310k+j1bsMDjDwzFeWLiHQQyWCakl83xEkZv5zqB6olUy
x-ms-office365-filtering-correlation-id: cad922d1-1589-4dbf-10c4-08d3d65794ae
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(1601124038)(1601125047);
	SRVR:SN1NAM02HT103; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:SN1NAM02HT103; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT103; 
x-forefront-prvs: 0057EE387C
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2016 13:13:23.3335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT103
X-OriginalArrivalTime: 06 Sep 2016 13:13:24.0535 (UTC)
	FILETIME=[72DF9470:01D20840]
Subject: Failing build following Quick Start
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
X-List-Received-Date: Tue, 06 Sep 2016 13:14:29 -0000
Content-Language: es-CR
Content-Type: multipart/alternative;
	boundary="_000_SN2PR10MB009442733EA473DB41981EB1CFF90SN2PR10MB0094namp_"

--_000_SN2PR10MB009442733EA473DB41981EB1CFF90SN2PR10MB0094namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello



I am new to Yocto and trying to learn the basics of the system


I am following the Yocto Quick Start guide:

http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-qs.html


Details:

1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a Window=
s10 host.

2) I downloaded the poky from the Yocto page instead of download it via git

3) I am tryting to build the basic core-image-sato for qemu

4) I am getting  the following error:

ERROR: Task 1921 (virtual:native:/home/adolfo/Yocto-testin/poky-krogoth-15.=
0.1/meta/recipes-support/gmp/gmp_6.1.0.bb, do_compile) failed with exit cod=
e '1'
5) I test  the ${WORKDIR}/temp/run.do_compile I get the following error:
x86_64-linux-libtool:   error: 'abs.lo' is not a valid libtool object
Makefile:421: recipe for target 'libmpq.la' failed
make[2]: *** [libmpq.la] Error 1


Any help would be appreciated.

Best regards,

Adolfo Sanchez




--_000_SN2PR10MB009442733EA473DB41981EB1CFF90SN2PR10MB0094namp_
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
<p>Hello</p>
<p><br>
</p>
<p><br>
</p>
<p>I am new to Yocto and trying to learn the basics of the system</p>
<p><br>
</p>
<p>I am following the Yocto Quick Start guide:&nbsp;</p>
<p><a href=3D"http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-p=
roject-qs.html" class=3D"OWAAutoLink" id=3D"LPlnk488824">http://www.yoctopr=
oject.org/docs/2.1/yocto-project-qs/yocto-project-qs.html</a></p>
<p><br>
</p>
<p>Details:</p>
<p>1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a Win=
dows10 host.</p>
<p>2) I downloaded the poky from the Yocto page instead of download it via =
git</p>
<p>3) I am tryting to build the basic core-image-sato for qemu</p>
<p>4) I am getting &nbsp;the following error:</p>
<div>ERROR: Task 1921 (virtual:native:/home/adolfo/Yocto-testin/poky-krogot=
h-15.0.1/meta/recipes-support/gmp/gmp_6.1.0.bb, do_compile) failed with exi=
t code '1'</div>
<div>5) I test&nbsp;&nbsp;the ${WORKDIR}/temp/run.do_compile I get the foll=
owing error:&nbsp;</div>
<div>
<div>x86_64-linux-libtool: &nbsp; error: 'abs.lo' is not a valid libtool ob=
ject</div>
<div>Makefile:421: recipe for target 'libmpq.la' failed</div>
<div>make[2]: *** [libmpq.la] Error 1</div>
<div><br>
</div>
<br>
</div>
<div>Any help would be appreciated.</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div>Adolfo Sanchez</div>
<div><br>
</div>
<br>
<br>
<p></p>
</div>
</body>
</html>

--_000_SN2PR10MB009442733EA473DB41981EB1CFF90SN2PR10MB0094namp_--
