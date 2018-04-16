Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D64AE009E2; Tue, 17 Apr 2018 10:52:37 -0700 (PDT)
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
	no *      trust *      [40.92.5.56 listed in list.dnswl.org]
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
X-Greylist: delayed 58151 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Apr 2018 10:52:32 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005056.outbound.protection.outlook.com [40.92.5.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00274E00994
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 10:52:32 -0700 (PDT)
Received: from BL2NAM02HT032.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e46::322) by
	SN1NAM02HT085.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e44::344) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Tue, 17 Apr 2018 11:19:58 +0000
Received: from CY1NAM02HT082.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e45::472) by
	BL2NAM02HT032.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e46::322) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Tue, 17 Apr 2018 02:59:59 +0000
Received: from BL2NAM02HT082.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e46::463) by
	CY1NAM02HT082.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e45::472) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Mon, 16 Apr 2018 22:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=+ittkeoGQMUl4Am/ePSztbJ25SpNU63+DB05jzjwJ4U=;
	b=LNjn42TWOAXoMSno1s45qpXSgqpy9yGNbh8FCSuLNO0qweRDq4OeLbgHVTTQl3zz/qNnJ14ndnqTeKr5v5iM0NBBcqhzaUWENMoWPcRfF6/yzmgg3QLc5dIRX28LrvFE5uSChK/0P1cFHkfQPwOV6jy21G9XdRHejEC9FGBjiJuYSCjxWlcp8tx2f9GQAZsyMOMz/ihNIP5jVBjMj7ghMqN0D6VqrF97que0UnLAQZVY30uAB6Z/UGI07Hk0F4/kkfLoWOVgj6DTICB5Gj9YG3u4p6D+Bg4STBhJu3eT1joyPxe4pPu7ohVxbp+0UUgnuUgTFuT4iVoQ19CFusLDuw==
Received: from BL2NAM02FT060.eop-nam02.prod.protection.outlook.com
	(10.152.76.59) by BL2NAM02HT082.eop-nam02.prod.protection.outlook.com
	(10.152.77.207) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Mon, 16 Apr 2018 19:42:38 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.76.51) by
	BL2NAM02FT060.mail.protection.outlook.com (10.152.76.124) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.675.14 via Frontend Transport; Mon, 16 Apr 2018 19:42:38 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0675.015;
	Mon, 16 Apr 2018 19:42:38 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Linux Files needed for PXE network boot
Thread-Index: AQHT1bpx3ngPGcU8okapyJig9EgOdw==
Date: Mon, 16 Apr 2018 19:42:38 +0000
Message-ID: <MWHPR19MB1183563A0DFAFC6B7313C25CC5B00@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F0FE052E3A3FB9852E5BA6FB1B536DDF26697252DEE3B5AF9C1DF52821CB62AB;
	UpperCasedChecksum:B7939EF59095ED50BCB64516A45445994D7F59B515DF4CD9E91907245DBF50E5;
	SizeAsReceived:6867; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ZcYUi0GwjCO1gDyUoNDsdut43yN4dyGZ]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT082;
	7:2GnFkvRDmeVtvX+7/XATn6s4n3UCpV9fl+N6UHFuO2P75UUJ6PHGkbyXRjdyQ/96xqMJRuXIdl2nX9yzuaUvajrRipuIJ510mmVBto/fhV6fzGXambRRVfXC0oDUF5togqdNbdTA1vlFQbQkqETRSnitZSiucR4N5Wseal/JwH0VUIR6SoKBS0gTAaD3bg2aoF/fH84RY0+U/EAGjv0UZNDn31J2vB9xMzavfjU50qGhVPY0SJ4/9IuczMzGS3QE
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:BL2NAM02HT082; 
X-MS-TrafficTypeDiagnostic: BL2NAM02HT082:|BL2NAM02HT082:|CY1NAM02HT082:|CY1NAM02HT082:|BL2NAM02HT032:|BL2NAM02HT032:|SN1NAM02HT085:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BL2NAM02HT082; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT082; 
x-forefront-prvs: 0644578634
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BL2NAM02HT082;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: +zTTX+iWrWSPcvTec2irFGLD/2uud1+gC4mNJ15bxnMouZAlVEX2FhJo8F1bWG+JgHAxRiCSs38RI2G78h61NfY64tYaT4vqV+mhnu0jZee66JuTxSqf6on7AcZ3EW7QVRRglYvi7J3SLoGBEki49yWFHwRA6g0txdyBoDD2SmiEZb65yfTQ/fc1fv40yrAj
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 45938591-f41e-4c55-9b67-08d5a3d235f0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 45938591-f41e-4c55-9b67-08d5a3d235f0
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2018 19:42:38.5813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT082
X-Microsoft-Exchange-Diagnostics: 1; CY1NAM02HT082;
	23:BdcW90sN/SmkDzQ0sOO3RkzC9cEDXGt+Gj2odUC92v1XXqE+a9HPidG4sBDnYnfag5EHhqMfZM3QtK0YrBhIdfM6ZM/oH6H+KvXOBARRTuLnejuHv4zpXbNNh0l1yZUrh6tTpQrkPy8fsbVn2YFsew==
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02HT032;
	23:8NsiO3UVjVrjU8Kdp5J+4hf8mMjRywG0k1IvkoSQp/1S8/aiN+9JGgg9HZ11CjblX/5Gu0IlYqyNziJuaFHI8e2VHmgV2Pgopq4NBgpJT35kuTak6cPIQS5zaPowclumZlGdjPmD8P81NbnmdcnkdA==
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT085;
	23:IqQ+YVPmACJN1gk103WD2DXDOSCjgDm3b/cpa+J4CmKttXoplkWOjdkQlck7CjkDjwgLkB9qU1Ku/eswakVCiJyWf8a2u8RtdMzAaSmXkGQoyl5AqaUkYlyTaQgwpSaVyrDCI+klB2wLnS4qk7WW7Q==
X-OriginatorOrg: hotmail.com
Subject: Linux Files needed for PXE network boot
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
X-List-Received-Date: Tue, 17 Apr 2018 17:52:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183563A0DFAFC6B7313C25CC5B00MWHPR19MB1183namp_"

--_000_MWHPR19MB1183563A0DFAFC6B7313C25CC5B00MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've a .hddimg image bootable from USB thumb drive.  As part of the boot-up=
, I also could invoke "Serial Install" to transfer such an image to SSD, su=
ch that in the next round, I could boot from SSD instead.

What are the files and where do I get them (relative to where I find .hddim=
g) from the build tree, and install them on the tftp server, in order to su=
pport PXE network booting?  Also, what mechanism do people use to transfer =
this after PXE boot into the SSD, making it bootable?

Raymond

--_000_MWHPR19MB1183563A0DFAFC6B7313C25CC5B00MWHPR19MB1183namp_
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
I've a .hddimg image bootable from USB thumb drive. &nbsp;As part of the bo=
ot-up, I also could invoke &quot;Serial Install&quot; to transfer such an i=
mage to SSD, such that in the next round, I could boot from SSD instead.
<div><br>
</div>
<div>What are the files and where do I get them (relative to where I find .=
hddimg) from the build tree, and install them on the tftp server, in order =
to support PXE network booting? &nbsp;Also, what mechanism do people use to=
 transfer this after PXE boot into the
 SSD, making it bootable?</div>
<div><br>
</div>
<div>Raymond</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183563A0DFAFC6B7313C25CC5B00MWHPR19MB1183namp_--
