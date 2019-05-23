Return-Path: <julie.ertz@zoom-leads.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84863E00ADB; Thu, 23 May 2019 07:14:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MISSING_HEADERS, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS, 
	T_FILL_THIS_FORM_SHORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [52.103.200.16 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 MISSING_HEADERS Missing To: header
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
X-Greylist: delayed 1038 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 May 2019 07:14:03 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01hn2016.outbound.protection.outlook.com [52.103.200.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EB67E00942
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NETORG4952423.onmicrosoft.com;
	s=selector1-NETORG4952423-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=O5UL0meU/09CCeJZlQluhnw4hXPRtPo7W4N5hlb6Bfk=;
	b=LL/8gYouVsD3IV2t2IkK/zjKp/tTRnRUMj3djWlsXKk4QI5AJcfbsToC3Rz0NICSlPp4q1d3gPqRc6whEkAj0/euKdcdSsM5QBpN80zv3/Wko7cNND+xk8nt+5orWiNwCe2Bc6tkaUq5Y2HHuYSoY5tZJE3Qjj6GTHAGPS4sfBE=
Received: from MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM (52.134.150.17) by
	MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM (20.179.238.17) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1922.17; Thu, 23 May 2019 13:42:05 +0000
Received: from MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM
	([fe80::64b0:d7ec:9d1d:9b1e]) by
	MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM
	([fe80::64b0:d7ec:9d1d:9b1e%6]) with mapi id 15.20.1922.016;
	Thu, 23 May 2019 13:42:05 +0000
From: Julie Ertz <julie.ertz@zoom-leads.tech>
Thread-Topic: Edge computing Clients
Thread-Index: AQHVEWzmASNbdIbm+kiezp5aaMM1Ag==
Date: Thu, 23 May 2019 13:42:03 +0000
Message-ID: <MA1PR01MB2860178E3CB25304FF479B68C3010@MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=julie.ertz@zoom-leads.tech; 
x-originating-ip: [2406:7400:5e:d177:6179:d955:f3c5:5375]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3815695f-4560-42aa-3335-08d6df847172
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:MA1PR01MB3691; 
x-ms-traffictypediagnostic: MA1PR01MB3691:
x-microsoft-antispam-prvs: <MA1PR01MB36913537CE114FB7CE087348C3010@MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(39830400003)(346002)(396003)(376002)(366004)(189003)(199004)(151974002)(81156014)(66556008)(6116002)(8676002)(66476007)(66446008)(64756008)(73956011)(6606003)(66946007)(7736002)(86362001)(76116006)(91956017)(256004)(14444005)(1671002)(52536014)(68736007)(14454004)(5660300002)(33656002)(881003)(76576003)(81166006)(508600001)(9476002)(2906002)(19627405001)(8936002)(7276002)(54896002)(44832011)(53936002)(102836004)(7336002)(486006)(9686003)(7116003)(25786009)(74316002)(99286004)(7406005)(7366002)(7416002)(46003)(6436002)(316002)(476003)(53336002)(3480700005)(626008)(7696005)(6506007)(55016002)(186003)(71200400001)(71190400001)(65706003)(109986005)(16040700028);
	DIR:OUT; SFP:1501; SCL:1; SRVR:MA1PR01MB3691;
	H:MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: zoom-leads.tech does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vyGgb1EGUzATKKdsQu0PZAg0GKQByPQFzT/H0jdlDB8a9x5kj75bqIOVHDO2R3ndCbTKPtaRQBMfO+XRUbJ+R6Im3fTykCx9fRpYXP8aNKk7nti9LE8+lxSs/6pQSAIcmawZpMeUL7kCeM78jpNvMkTQO7zboHFnFtj/qmeg2zhVXraEaKInS+l122ahQV/kGdARjfCUqQPsU2MaADu0pKztqzuES2oV1NgaZgAYymYmYEqq6PfM8ZvtqNs1ubPrDi74lYQcVbAX93Sg5u0MAC+NNUfLzc+9ZWCmHMJLj8VVCKf0NL/X2+1uhFwwdRmLPXnP5q3FYGdGcZNFOsmvdVWi3RDG2fdw9/J+iT1HHmp5b0AiU3BF/S/HirrcremvCNwU55n2O02QxM0k7J1TeVVAeixgdA+3uGHc690W4PA=
MIME-Version: 1.0
X-OriginatorOrg: zoom-leads.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 3815695f-4560-42aa-3335-08d6df847172
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 13:42:03.0682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0e5f22c5-016f-4850-b4c4-888e8fdbd069
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: julie.ertz@zoom-leads.tech
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3691
To: undisclosed-recipients:;
X-Mailman-Approved-At: Sat, 25 May 2019 06:27:04 -0700
Subject: Edge computing Clients
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
X-List-Received-Date: Thu, 23 May 2019 14:14:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2860178E3CB25304FF479B68C3010MA1PR01MB2860INDP_"

--_000_MA1PR01MB2860178E3CB25304FF479B68C3010MA1PR01MB2860INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi there,



We would like to learn your interest in acquiring our recently updated opt-=
in Edge computing contact list for global users.



Every contact from this database has completed verification on May 20-2019,=
 to give you 95%+ accuracy and ensure that your message reaches the right c=
ontact from the right company.



Data Fields: Name, Company's Name, Phone Number, Job Title, Email address, =
Complete Mailing address, Company revenue size, Web address etc. This data =
is being provided to you in an excel sheet for unlimited use.



We also have alternative data intelligence as follows: cloud computing, fog=
 computing, IoT, quantum computing, Blockchain, edge analytics, on premise,=
 5g, distributed computing, cdn and many more.



If you could send me your targeted market and geography, I can give you a h=
eads up on Counts, Pricing as well as a Few Samples, just for your review.



Regards,

Julie Ertz

Senior Data Specialist



If you are not the right person regarding this, kindly forward the same to =
the relevant person/team for further assistance.





        If you don=92t want to receive any further communication from us, t=
hen please Opt Out.


--_000_MA1PR01MB2860178E3CB25304FF479B68C3010MA1PR01MB2860INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">Hi there,<o:p></o:p=
></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">We would like to le=
arn your interest in acquiring our recently updated opt-in
<b style=3D"mso-bidi-font-weight:=0A=
normal"><u>Edge computing </u></b>contact list for global users.<b style=3D=
"mso-bidi-font-weight:normal"><u><o:p></o:p></u></b></span></p>
<p class=3D"MsoNoSpacing"><b style=3D"mso-bidi-font-weight:normal"><u><span=
 style=3D"color:#0070C0"><o:p><span style=3D"text-decoration:none">&nbsp;</=
span></o:p></span></u></b></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">Every contact from =
this database has completed verification on May 20-2019, to give you 95%&#4=
3; accuracy and ensure that your message reaches the right contact from the=
 right company.<o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNoSpacing"><b><u><span style=3D"color:#0070C0">Data Fields</=
span></u><span style=3D"color:#0070C0">:
</span></b><span style=3D"color:#0070C0">Name, Company's Name, Phone Number=
, Job Title, Email address, Complete Mailing address, Company revenue size,=
 Web address etc. This data is being provided to you in an excel sheet for =
unlimited use.<o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNoSpacing"><b><u><span style=3D"color:#0070C0">We also have =
alternative data intelligence as follows:</span></u></b><span style=3D"colo=
r:=0A=
#0070C0"> cloud computing, fog computing, IoT, quantum computing, Blockchai=
n, edge analytics, on premise, 5g,
 distributed computing, cdn and many more.<o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">If you could send m=
e your targeted market and geography, I can give you a heads up on Counts, =
Pricing as well as a Few Samples, just for your review.<o:p></o:p></span></=
p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><span style=3D"mso-=
spacerun:yes">&nbsp;</span><o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">Regards,<o:p></o:p>=
</span></p>
<p class=3D"MsoNoSpacing"><font color=3D"#0070c0"><b>Julie Ertz</b></font><=
/p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">Senior Data Special=
ist <o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0">If you are not the =
right person regarding this, kindly forward the same to the relevant person=
/team for further assistance.
<o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNoSpacing"><span style=3D"color:#0070C0"><span style=3D"mso-=
spacerun:yes">&nbsp;</span><o:p></o:p></span></p>
<p class=3D"MsoNoSpacing"><i style=3D"mso-bidi-font-style:normal"><span sty=
le=3D"color:#0070C0"><span style=3D"mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nb=
sp;
</span><span style=3D"mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span>If you don=
=92t want to receive any further communication from us, then please Opt Out=
.<o:p></o:p></span></i></p>
<br>
<p></p>
</div>
</body>
</html>

--_000_MA1PR01MB2860178E3CB25304FF479B68C3010MA1PR01MB2860INDP_--
