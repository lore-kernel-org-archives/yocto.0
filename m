Return-Path: <toonheyrman@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36A12E00CE2; Thu,  4 Jan 2018 20:03:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (toonheyrman[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.70.48 listed in list.dnswl.org]
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
X-Greylist: delayed 35858 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Jan 2018 20:03:54 PST
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092070048.outbound.protection.outlook.com [40.92.70.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3B66E0095C
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 20:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ws5Au0vFQYH5Chxy0IETu/OHH65cdJJYlMTc52/NOCM=;
	b=DlQAjGfE0Hyiqn+nGkP0ZaT7zpA0YY1+BhiVBZRz2wI1rWlR2JygPBghIoy7Jy5HJY9jp/9nilraKVwHhaPnMbXchUldOXn5Ui1V/cn97mGwMaaLkJB/Dexqq9Vn9yGJnTYrcpezyWFHc9ecWy2kYrGuaHMCTIapVnUZb1oCC+Wq8deRk5eh0qOeEZ7wets7wqmcVzH9C8xrP30ie9sjoLBEJ8KSltfdsv/2O+STRrSzuRsrVD0dDLB5mp8ENnK6lBmeIEs3z1B/Kky/6eYmw/xzpV5peGhmzt+9kVaqmrIZyGBh3NiI/0W7Ee03pC++yvnG7P4YnYyGjQywEqOBSQ==
Received: from AM5EUR03FT046.eop-EUR03.prod.protection.outlook.com
	(10.152.16.60) by AM5EUR03HT231.eop-EUR03.prod.protection.outlook.com
	(10.152.17.97) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.345.12;
	Thu, 4 Jan 2018 15:31:32 +0000
Received: from DB6PR02MB3141.eurprd02.prod.outlook.com (10.152.16.54) by
	AM5EUR03FT046.mail.protection.outlook.com (10.152.16.164) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.345.12 via Frontend Transport; Thu, 4 Jan 2018 15:31:32 +0000
Received: from DB6PR02MB3141.eurprd02.prod.outlook.com
	([fe80::6c33:4a71:cc83:99b9]) by
	DB6PR02MB3141.eurprd02.prod.outlook.com
	([fe80::6c33:4a71:cc83:99b9%13]) with mapi id 15.20.0386.006;
	Thu, 4 Jan 2018 15:31:32 +0000
From: Toon Heyrman <toonheyrman@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Debugging some c code on target via yocto
Thread-Index: AQHThXCZFgXzPvHttkWpDuk9rv6YLw==
Date: Thu, 4 Jan 2018 15:31:32 +0000
Message-ID: <DB6PR02MB314123229861C5BC10B5F4CDB11F0@DB6PR02MB3141.eurprd02.prod.outlook.com>
Accept-Language: nl-BE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F3D751AB547371989F84870697EE795D7918477C0E31F938152131EACB25FEBB;
	UpperCasedChecksum:157568C3572F1AB4065E264E96B84E3D28FFB8F9101DC3360AB888A312ECC902;
	SizeAsReceived:6890; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [SDeIq0YznVrB+UZP4s/B8X0FHzDpP5pP]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT231;
	6:Z3GZEL4maWv1AxAxbSeCS7csV0U+zxRzQtXYy7IL/bR6S3OOl5Nw1iDtITe0HEOvHkOSwoC1QGLFLie3Pm6XVDkOQ8NLWNizYTBc7fXR1Ka4bL/YE38x9tPYe0pZUphGa1yA8TMTjsHKln8QlpDHZthpciOWzQyvktHRONAT2chnVFWVT3e7JeRNhjuvAjSZps/eoyxkX6Dtw3FKPDYYyS8BnwwMbYQZM/ddP/GQ50qvM6FDkVzQzzTSr83kqByClMl/etn8dX0f1f0upgPar+UNpz+OVRbB8q62Gft1Xp/Ni5k6aBclwgbqxmBCrbv+vWqyUbCsF8Pt1BgtznW7vQ+8tIVzKcXsLf9QnMYsSKw=;
	5:JI3EGuTZAjBBlZfShFLXYmjAVBYbprGBXqvU77KJc174qQ48PI2FSOJxgZgxEwc391vWv2cBBbLETvWrhkzfFgwNQ7+vMVXiKA7DhQR/5PY87oq9saPQpa8Lkoy+B5k00uAjM5+V5WJ3Mu6XLsxXgCb+wSKr0KtkX/yTK6+bJXA=;
	24:mSOjHM82/UwZHI2qChCaOM4TqPPZHXV8fonGbJXVdhwzV/B7XGGooxjs8jBgozgn7u+kdShaJL0WlTK2k6smeulaneIUahnJVnZg82I1GM0=;
	7:lkbv06dyrv+agwSmPzm8DKuwJMa8HLgCEPRIjRd2Cd6q433x/4KqYjfUzJZyyBVyqm3rnqBDMs1s8WGnHgNR2JBSxAQgtdvFwO0x4YPP82lf1Sh5MTOw4E8ahwtC++z/ppgqmCGytNOWlRU/fAIql6v5qNWs7RTG05VqbC+SLYc0P/gbCraJOlTwuD3j89/dG/nACSxNr7+/6U6wWBlBf4xrEaQGgljNaSSNbtQYLtqnJbzSU+7cP0tk26gnH5P+
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:AM5EUR03HT231; 
x-ms-traffictypediagnostic: AM5EUR03HT231:
x-ms-office365-filtering-correlation-id: 3e8fdeba-1420-409d-4df3-08d553883b84
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:AM5EUR03HT231; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:AM5EUR03HT231; 
x-forefront-prvs: 054231DC40
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:AM5EUR03HT231;
	H:DB6PR02MB3141.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8fdeba-1420-409d-4df3-08d553883b84
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2018 15:31:32.1196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT231
Subject: Debugging some c code on target via yocto
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
X-List-Received-Date: Fri, 05 Jan 2018 04:03:56 -0000
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_DB6PR02MB314123229861C5BC10B5F4CDB11F0DB6PR02MB3141eurp_"

--_000_DB6PR02MB314123229861C5BC10B5F4CDB11F0DB6PR02MB3141eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm using Yocto for creating my image for a linux device. I wrote a c appli=
cation for it and I want to debug it.


I followed the instructions here https://www.yoctoproject.org/docs/latest/d=
ev-manual/dev-manual.html#platdev-gdb-remotedebug


This is by using bitbake and so on. In the past I was using the SDK or devt=
ool to test my applications. This was fast without much manual work.

Is there a possible way to do debugging via devtool or so?


Kind regards,


Toon

--_000_DB6PR02MB314123229861C5BC10B5F4CDB11F0DB6PR02MB3141eurp_
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
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Hi,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I'm using Yocto for creat=
ing my image for a linux device. I wrote a c application for it and I want =
to debug it.
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I followed the instructio=
ns here <a class=3D"OWAAutoLink" id=3D"LPlnk655506" href=3D"https://www.yoc=
toproject.org/docs/latest/dev-manual/dev-manual.html#platdev-gdb-remotedebu=
g" previewremoved=3D"true">
https://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#platdev=
-gdb-remotedebug</a>&nbsp;</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">This is by using bitbake =
and so on. In the past I was using the SDK or devtool to test my applicatio=
ns. This was fast without much manual work.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Is there a possible way t=
o do debugging via devtool or so?</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Kind regards,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Toon<br>
</p>
</div>
</body>
</html>

--_000_DB6PR02MB314123229861C5BC10B5F4CDB11F0DB6PR02MB3141eurp_--
