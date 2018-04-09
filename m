Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF282E00B66; Mon,  9 Apr 2018 17:46:12 -0700 (PDT)
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
	no *      trust *      [40.92.0.22 listed in list.dnswl.org]
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
X-Greylist: delayed 14413 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Apr 2018 17:46:10 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092000022.outbound.protection.outlook.com [40.92.0.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73099E00B28
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 17:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=1zoUSBZYf8HtbmatBKy3PFhgpW9Dgm0JySspyWiXla8=;
	b=P/ZjYYRt3kHi1IK7B18PtTn4f0TR2s+74wU/dIIdbWNU2H52kh/Hkk7BqV0a8/zWk3RPXgQbUb7iCll+C8kzWKB72hHIf7j6mHOGdHhcGjOozLP5DwTiHPR/vpqIbasInVGmabo5FXVLxVMwEKwMtk6jspC/GaZNayzaixJUaNZyIzCsn0cEyxE1BDpKg1i4iayJ5bN5/ctiNkneOyqzSELeh/79Uue29ITqZeYoptPWNXvinKz99pNEU0g3r7vp4AXY9BvgYXXLOUpnGFVotlp8dnUBsUogPASE73/FQgfcICZpO42PO5VDPbmgYL59wInIhpWRm+OxtH7HE4TW3Q==
Received: from BY2NAM01FT022.eop-nam01.prod.protection.outlook.com
	(10.152.68.60) by BY2NAM01HT196.eop-nam01.prod.protection.outlook.com
	(10.152.69.250) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Mon, 9 Apr 2018 20:12:07 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.68.56) by
	BY2NAM01FT022.mail.protection.outlook.com (10.152.69.215) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Mon, 9 Apr 2018 20:12:07 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0653.015;
	Mon, 9 Apr 2018 20:12:07 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: MACHINE .conf file
Thread-Index: AQHT0D8IcoaZq15WEky6gA4dFMV0tA==
Date: Mon, 9 Apr 2018 20:12:07 +0000
Message-ID: <MWHPR19MB1183CD97B36C1A2EC8442554C5BF0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
	<MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>,
	<MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183424006F2FD5C8DCFCC2AC5B90@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EDA76D7EF848757AE3AAC48272C31C0471830A416D2E45F4EB67E4B5431180E8;
	UpperCasedChecksum:34335CA3D02BF394ACB716E3772B1668BC7D010C81CA3E17EF22C1F0F838CDA3;
	SizeAsReceived:7290; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ssRcw2kZxModaHiJ4UhRvpmwEPpQgepv]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2NAM01HT196;
	7:4ggYRuxr1QRKV33V5TaARdDjv1npVoT7IWT4lm5qhlJ4j6HjT1ofPmip2Xta/Vmi3dJiGKPEVfX9YzIIFOwxFaEGrScxbEPzN7lEQkwAPifOzAdCIQUr43wvJNwnEi8Ik2wx5VXHmEOv+eOiMdj0CKzKpOYqicA94F9BxpO+P+V/imv0WIa6cO/iHtKlG4l13HXMHKNxRX0xWvhbGcT/9vsRAyOiyC7588mYYhnDz8Cd9YyfHibXtXfhuXsfK/3b
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BY2NAM01HT196; 
x-ms-traffictypediagnostic: BY2NAM01HT196:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BY2NAM01HT196; BCL:0; PCL:0; RULEID:; SRVR:BY2NAM01HT196; 
x-forefront-prvs: 0637FCE711
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BY2NAM01HT196;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: 2KksOqrF0oPUy+cUZBEnaDxjXXb9jtJxheaxuAyPMP4tLgsrlhRnowLEahN5wW9iUfp9FJYKqhE8uA7i+iNlyGo1EQdanDsPP4DM2hom3Rpow+GRtrMn84TSC5px+EHdDh8yh9DWO1jwwVSTkLKYj3rQ1Vz77Sg4Q98jkpGprde2hnHqDRNZc9zL9PLOob5v
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 5544081a-152d-4ec0-ef61-08d59e562b35
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5544081a-152d-4ec0-ef61-08d59e562b35
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2018 20:12:07.1186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM01HT196
Subject: MACHINE .conf file
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
X-List-Received-Date: Tue, 10 Apr 2018 00:46:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183CD97B36C1A2EC8442554C5BF0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183CD97B36C1A2EC8442554C5BF0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Some questions about MACHINE:

1. I'd customized MACHINE (=3D"intel-corei7-64") variable in conf/local.con=
f under my build directory, as per document, and had successfully generated=
 an image for my H/W.  However, I don't seem to find "intel-corei7-64.conf"=
 file in meta/conf/machine under poky source directory.  Is this normal?

2. How many machine files are there per target machine, and should it be in=
 meta/conf/machine under source directory (similar to #1, but just a confir=
mation for me)?

3. To install an "external" .ko in the root filesystem, my understanding is=
 I need to add its name to MACHINE_XXX_RRECOMMENDS (or one of the other 3) =
in machine .conf file.  If there's only 1 machine file, this is obvious.  I=
f not, where should I put it?


Raymond

--_000_MWHPR19MB1183CD97B36C1A2EC8442554C5BF0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Some questions about MACHINE:</p>
<span style=3D"font-size: 12pt;">
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
1. I'd customized MACHINE (=3D&quot;intel-corei7-64&quot;)&nbsp;variable in=
 conf/local.conf under my build directory, as per document, and had success=
fully generated an image for my H/W. &nbsp;However, I don't seem to find&nb=
sp;&quot;intel-corei7-64.conf&quot; file in meta/conf/machine under poky&nb=
sp;source&nbsp;directory.
 &nbsp;Is this normal?</span>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<div><span style=3D"font-size: 12pt;">2.&nbsp;How many machine files are th=
ere per target machine, and should it be in meta/conf/machine under source =
directory (similar to #1, but just a confirmation for me)?</span></div>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<div><span style=3D"font-size: 12pt;">3.&nbsp;To install an &quot;external&=
quot; .ko in the root filesystem, my understanding is I need to add its nam=
e to MACHINE_XXX_RRECOMMENDS (or one of the other 3) in machine .conf file.=
 &nbsp;If there's only 1 machine file, this is obvious.
 &nbsp;If not, where should I put it?</span><br>
<br>
<p></p>
<div>Raymond</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183CD97B36C1A2EC8442554C5BF0MWHPR19MB1183namp_--
