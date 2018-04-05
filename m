Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD7E3E00823; Thu,  5 Apr 2018 23:21:17 -0700 (PDT)
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
	no *      trust *      [40.92.9.63 listed in list.dnswl.org]
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
X-Greylist: delayed 83202 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Apr 2018 23:21:15 PDT
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009063.outbound.protection.outlook.com [40.92.9.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 428A1E00AE6
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 23:21:15 -0700 (PDT)
Received: from BN3NAM04HT143.eop-NAM04.prod.protection.outlook.com
	(10.152.93.13) by CO1NAM04HT141.eop-NAM04.prod.protection.outlook.com
	(10.152.90.225) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.631.7;
	Thu, 5 Apr 2018 07:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=zCExilJqxQ8Ic56HRqcYJwBZAwZbjpKUTOCdlAFHY6M=;
	b=L7DWQOFn859UKLaqvofMkBK9Bf24SiuJe+pcp8QEMCgUiYjnum5fTCvP/l1z2d44AIQPt/NtnjJskKeyXLWg8VDIk2gDKpGno0OGhZCv39tk1SxjKQIH97qRqv7XOf5gIiqjK85G5IvnCMzSktQSVBEX1+0vAy2eCOQgs0k3vj16hwZoxhIC9xD7Z/jTgIMDXjNUS/hGB7d2aMfwBYg1rcDK5oiY9o7+DnIRSqtvmy3BSdIB3AnoawmGnXCW2sn9ZonIEJGtmdj+g7oWbRGZKL3jxXGKZCj0XvsF3pfy8LBukxpadss3Rakghkx5QL0kPLVyhB5jpjmr1A+LOVUJHA==
Received: from BN3NAM04FT045.eop-NAM04.prod.protection.outlook.com
	(10.152.92.59) by BN3NAM04HT143.eop-NAM04.prod.protection.outlook.com
	(10.152.93.13) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Thu, 5 Apr 2018 01:40:23 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.92.57) by
	BN3NAM04FT045.mail.protection.outlook.com (10.152.93.120) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.8 via Frontend Transport; Thu, 5 Apr 2018 01:40:23 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 01:40:23 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem with packages during "devtool build"
Thread-Index: AQHTzH12aB4neOupkEGhBC8TIHhB3Q==
Date: Thu, 5 Apr 2018 01:40:23 +0000
Message-ID: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E6F9CC8B6512CAFC5788D094F4D249402C1BB8162AB33FF5E4B24655CC4F0C05;
	UpperCasedChecksum:C1C32E4C1A36FCE419A4C842E048C9203184AA456A3914B6C5BA10DD7228C70E;
	SizeAsReceived:6880; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [8jQAVqgzibq3KcELmiTfinNtWaWvGDJX]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM04HT143;
	7:A9FNPFiWLHHAbxAEuvmPrleJc+nsdKkecxoweLj08WwNzt0QISpJR4F0zNjgP3NhVbdBnuXYcmT0J9Tvc5lXs8om7QT9Byuag6/Ds/rHI/D4QeC9nsoKATQHOjLBraQOYBvIp5GIXuRDY5nshSeOPsbAs8evofp4E3z+bxv/k3kkjILUfx4EmSeqfdO288oq4JjLUjRJL0x+fFBOiBhplYpuwWQf9XkWMcb8YcHoj2xkcLGWPdvunWgtAOATwQKy
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BN3NAM04HT143; 
X-MS-TrafficTypeDiagnostic: BN3NAM04HT143:|BN3NAM04HT143:|CO1NAM04HT141:
x-ms-office365-filtering-correlation-id: 919eab11-2529-4454-23fb-08d59a9632fa
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM04HT143; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM04HT143; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM04HT143;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: Rn87bSeskCnh6ywBGn7kwqbyAl20Yf9tniZMFvHtbh0ydjsxABN0MCUMrCxLG8MRxhkZE/ayVQabLdOuyYYMng1S1acKZUPU+4SUUoiCPj7A6mLGZdCLiKLV4mfaZJ04RZXcBIbvCBFcxOhovtV7gRKVm0HHPXfiRwqRlwibJHbm1u5QohX/kt4JbP72v7Nz
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 919eab11-2529-4454-23fb-08d59a9632fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 01:40:23.3350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT143
X-Microsoft-Exchange-Diagnostics: 1; CO1NAM04HT141;
	23:OWuHDuHSb1deAoxeRwBBWFy0WMqyyV7Wl3cB5qjJFMZjrGxFABoj8/G/r5Z0e8qB11jeS4M31W8sFHaZ+vCC8rRWjcqhBDurnuCfSLBtkY4LEsoqXN9M1NSVyOE9h9D0JcP/V9Uzs8iPzn8ZU4Ir8Q==
X-OriginatorOrg: hotmail.com
Subject: Problem with packages during "devtool build"
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
X-List-Received-Date: Fri, 06 Apr 2018 06:21:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0MWHPR19MB1183namp_"

--_000_MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've some 3rd party Makefile-based software I'd like to integrate to a work=
ing Poky snapshot.  The following are done:


  1.  devtool add cgosapi <source path>
  2.  Edit workspace/recipe/cgosapi/cgosapi.bb.
     *   Implement do_install to move files on build machine to directories=
 on target.
     *   Files include a .so, a .ko, along with 2 other binaries.
  3.  devtool build cgosapi


At step 3, I got following error:


ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories were=
 installed but not shipped in any package:

    /lib

    /lib/modules

    /lib/modules/4.4.26-yocto-standard

    /lib/modules/4.4.26-yocto-standard/extra

Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.

cgosapi: 4 installed and not shipped files. [installed-vs-shipped]


Where do I get the above 4 lines; they're BTW directories, not files?  I go=
ogled online and found use of FILES_${PN}, but didn't help.  And the "extra=
" directory seems generated; I don't have it.


Raymond

--_000_MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I've some 3rd party Makefile-base=
d software I'd like to integrate to a working Poky snapshot. &nbsp;The foll=
owing are done:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt;"></span><span style=3D"font-size: 12pt;=
"></span>devtool add cgosapi &lt;source path&gt;</li><li>Edit workspace/rec=
ipe/cgosapi/cgosapi.bb.
<ul style=3D"margin-bottom: 0px; margin-top: 0px;">
<li>Implement do_install to move files on build machine to directories on t=
arget.</li><li>Files include a .so, a .ko, along with 2 other binaries.</li=
></ul>
</li><li>devtool build cgosapi</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">At step 3, I got following error:=
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p>ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories w=
ere installed but not shipped in any package:</p>
<p>&nbsp; &nbsp; /lib</p>
<p>&nbsp; &nbsp; /lib/modules</p>
<p>&nbsp; &nbsp; /lib/modules/4.4.26-yocto-standard</p>
<p>&nbsp; &nbsp; /lib/modules/4.4.26-yocto-standard/extra</p>
<p>Please set FILES such that these items are packaged. Alternatively if th=
ey are unneeded, avoid installing them or delete them within do_install.</p=
>
<p>cgosapi: 4 installed and not shipped files. [installed-vs-shipped]</p>
<p><br>
</p>
<p>Where do I get the above 4 lines; they're BTW directories, not files?&nb=
sp; I googled online and found use of FILES_${PN}, but didn't help. &nbsp;A=
nd the &quot;extra&quot; directory seems generated; I don't have it.</p>
<p><br>
</p>
<p>Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0MWHPR19MB1183namp_--
