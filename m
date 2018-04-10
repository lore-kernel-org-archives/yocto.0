Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BECD6E00B8F; Tue, 10 Apr 2018 20:53:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.3.21 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 32329 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Apr 2018 20:53:46 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-oln040092003021.outbound.protection.outlook.com [40.92.3.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 934BCE009C9
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 20:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=BU65FGM9kbB+h9s+7grc1e3W7hW2EkIOi2p1MIWtei8=;
	b=pYfr3cU5/PcvGJwimlJHPYfImF3YQG88OAzoyrHfOZrhC52tAw7/jE1dzqVu4qtL5TjniN4S01WYGt7no2R9rLKCSvSoTH9P4Sjjvk86W1l5OGLtFWnglqYLFBvTte38Xwa+nIDmx3+ZY5cTgXYmPk+KhwUdClIHE72/jxqYkwG3YtiRhnxL+Ljz7blJR0HTwO5itXWJOnrZApWdr5mYM1rDHuo500MmN8jE+tcYPxHtk41Ol1ic9MP6Me7I5P3ZmGVhY1lTfnyPfETTtHRERsJ0LZztNt6RBFHJOGdsObhJHie+jjBwll1gwJ9iVMYLn26UltV1Zbv2CLnm2+5DaQ==
Received: from BL2NAM02FT059.eop-nam02.prod.protection.outlook.com
	(10.152.76.54) by BL2NAM02HT245.eop-nam02.prod.protection.outlook.com
	(10.152.76.123) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Tue, 10 Apr 2018 17:22:31 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.76.60) by
	BL2NAM02FT059.mail.protection.outlook.com (10.152.76.247) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Tue, 10 Apr 2018 17:22:31 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0653.015;
	Tue, 10 Apr 2018 17:22:31 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Boot Question
Thread-Index: AQHT0O/6gwl+jwmcWUK7Bu54LcEQmA==
Date: Tue, 10 Apr 2018 17:22:31 +0000
Message-ID: <MWHPR19MB11834B837C90D26A2F737FE4C5BE0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F2B65E561E58F7803C282A06EF2099D588E262FB90F4AFD1DEE8B3533D80B56B;
	UpperCasedChecksum:E70370C37B614976CE0F2B8A8527C952A1030CCFECD90E3AC8E8CD5A68DF5749;
	SizeAsReceived:6954; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [C/YBYttJt9mtP9nhoqHddmwpl84Vd7niaNIrh41OXPu+jGX4xPMAbsWAuPVSXhUP]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT245;
	7:ZGHbMrZMT0K7540Fdqf1ujwX81AQQlmmamTnndTQIiADBxYXF0E1y6pvBfZwOWFMkNHdh+oPPo7c/yW0lepmRWTPT/tVq7hXGLZHRNurM2vK/tidUyfmMk5kEC8seGMqlSiEVhUMtl4w0Q9s4+nqJjPd68qk7QcY1an+pl6vQsvgpOD6Q4HrhYWw8oju3PEHGNLdK0ZUR0M83MQCRhkT4gWH6JlUlAzgVFOxWjxcUTIgNJ4sQV2CkisMKHmu11hi
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BL2NAM02HT245; 
x-ms-traffictypediagnostic: BL2NAM02HT245:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BL2NAM02HT245; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT245; 
x-forefront-prvs: 0638FD5066
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BL2NAM02HT245;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: w84Eq6T+2eoqat9zdFZkJEpYeojPSZSnOXthHRbTTAJGAZy4zg6pQ0Olm8kmvqqSfxlfn2meAHAS2+ZzKCv+4kPZsq/e1mYGz9D6agymUrVY8sOXXZDwMhZ0zi8JaoNTB8hQR1Ujfzu/cJB66t6yPLo8fD0fQ9UFMqLx8w0ZEBBSPenjK1utm6AtcWOT+lN/
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 3f83cfa5-8bfb-42f3-d6aa-08d59f07a455
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f83cfa5-8bfb-42f3-d6aa-08d59f07a455
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2018 17:22:31.2638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT245
Subject: Yocto Boot Question
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
X-List-Received-Date: Wed, 11 Apr 2018 03:53:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11834B837C90D26A2F737FE4C5BE0MWHPR19MB1183namp_"

--_000_MWHPR19MB11834B837C90D26A2F737FE4C5BE0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I've successfully booted a BSP using USB thumb drive (.hddimg type).  I've =
two follow-up questions -


  1.  The BIOS offers "Serial Install" which seems to copy the USB boot ima=
ge over to SSD.  Would SSD be using the same .hddimg type?  Right now, afte=
r the above install, when I switch boot order to try both SSD (0 and 1), bo=
oting doesn't seem to work.
  2.  When using network boot option, what image type should I use?


It would be great if details have already been documented somewhere.


Thanks,

Raymond

--_000_MWHPR19MB11834B837C90D26A2F737FE4C5BE0MWHPR19MB1183namp_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I've successfully booted a BSP us=
ing USB thumb drive (.hddimg type). &nbsp;I've two follow-up questions -</p=
>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt;"></span><span style=3D"font-size: 12pt;=
"></span>The BIOS offers &quot;Serial Install&quot; which seems to copy the=
 USB boot image over to SSD. &nbsp;Would SSD be using the same .hddimg type=
? &nbsp;Right now, after the above install, when I switch
 boot order to try both SSD (0 and 1), booting doesn't seem to work.</li><l=
i>When using network boot option, what image type should I use?</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">It would be great if details have=
 already been documented somewhere.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB11834B837C90D26A2F737FE4C5BE0MWHPR19MB1183namp_--
