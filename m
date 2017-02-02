Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E85F8E0093F; Thu,  2 Feb 2017 04:31:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.36.74 listed in list.dnswl.org]
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0074.outbound.protection.outlook.com [104.47.36.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A36D4E0092C
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 04:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=W+/EQ5rYl196Uo7XmcHq9Ffd+HxnrL5MXmPlSiksQhQ=;
	b=d4QpMAobe+JYlFvT0hCY5uYxCmH7xj/1wIs0xY4tJYaMNokmdO9SBRCLjVc18cq3vZQbj3UTNhvPQZNeC+El6BXFWb9729G8lDj2liKl+f9B/ceq8dXFb7OSWwr7V/sqk78NEoHmVyy9YUUhxQ9GH7rb1M39NxThJMuXTPlR7RE=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2954.prod.exchangelabs.com (10.174.181.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.12; Thu, 2 Feb 2017 12:15:49 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0845.028; Thu, 2 Feb 2017 12:15:49 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Undoing BSP's BBMASK?
Thread-Index: AQHSfU4Wd35QoR46KE6Kx+3tNlWdvA==
Date: Thu, 2 Feb 2017 12:15:49 +0000
Message-ID: <DM5PR0101MB2953EEC38129283F5B94E336B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [218.225.179.82]
x-ms-office365-filtering-correlation-id: 3f96b756-95e9-424c-7425-08d44b65396d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2954; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2954;
	7:OPIXK+XaqU0P4FTj8xbIZ6neMP3zPAtV1wHpYvlYNZdbDXJszRB+PfMweAZBoywm3hkBSoimfX7ar3eSjO4HTO2EI7B/KXRcz8L/VQMcUsssJOZZMLqh0JXjnO/p843ijZRZZUwhskPxoQNPIOjhJYcVH0iYxeTxUdlz5khARrPwaceLiEtMOB7mjluiidr5nADT1+eRmAAxqDd6uEXsd2mpuS3H77zShD9pP/tgoT2As+/iJCr6HoChU2MT0q2458EPls7yA+pqhpn9hY2MHcxABOvJufhHmA1U3yxkFBktOA3Xu34Q88npC+NzjMxU49ICg4qx3mmWoRwyGGw7AdK5L/hoYeK+9CDVd33304pRyKSd3cuVwv9rGSUaYwxlWQo0OJJ3URgbqOfUVrqioeFQ1G8M0LrdhtpqLtNHCSe+yS7/HnZWtA7tCi2G1UYDp7oDrHIEUTvQBcQRFzJpQvqT+B0vCgVUiZ1hR9Y8vBGPZUIK4z5KsOuFtLX+H1l3bPOroMFEZUfScpJCYCMH2Wo13zmVYZoNPo7JRk3WG7JuF5ZNn5KQMrRN/whYy/MS
x-microsoft-antispam-prvs: <DM5PR0101MB29548515FC3CF391B3AC51D3B64C0@DM5PR0101MB2954.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123558025)(20161123564025)(20161123560025)(20161123562025)(20161123555025)(6072148);
	SRVR:DM5PR0101MB2954; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2954; 
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(7696004)(5640700003)(558084003)(74316002)(25786008)(53936002)(2501003)(5660300001)(1730700003)(54356999)(55016002)(38730400001)(450100001)(77096006)(81156014)(86362001)(50986999)(6916009)(54896002)(106356001)(68736007)(6506006)(81166006)(9686003)(8676002)(19627405001)(6436002)(2351001)(99286003)(6606003)(3280700002)(122556002)(110136003)(7736002)(33656002)(105586002)(189998001)(2900100001)(101416001)(97736004)(92566002)(2906002)(6116002)(102836003)(66066001)(3660700001)(8936002)(3846002)(3480700004)(107886002)(106116001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2954;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2017 12:15:49.1305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2954
Subject: Undoing BSP's BBMASK?
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
X-List-Received-Date: Thu, 02 Feb 2017 12:31:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953EEC38129283F5B94E336B64C0DM5PR0101MB2953_"

--_000_DM5PR0101MB2953EEC38129283F5B94E336B64C0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yoct.

Say, BSP defines something like this.

BBMASK .=3D "|msta-xxxx/xxxx/yyyy.bb"

Then I want to cancel this within my local.conf.  Should putting below in m=
y local.conf works? (Or within my bistro/zzzz.conf?)

BBMASK_remove =3D "|msta-xxxx/xxxx/yyyy.bb"



--_000_DM5PR0101MB2953EEC38129283F5B94E336B64C0DM5PR0101MB2953_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello Yoct.</span><br>
</div>
<div><br>
</div>
<div>Say, BSP defines something like this.</div>
<div><br>
</div>
<div>BBMASK .=3D &quot;|msta-xxxx/xxxx/yyyy.bb&quot;</div>
<div><br>
</div>
<div>Then I want to cancel this within my local.conf. &nbsp;Should putting =
below in my local.conf works? (Or within my bistro/zzzz.conf?)</div>
<div><br>
</div>
<div>BBMASK_remove =3D &quot;|msta-xxxx/xxxx/yyyy.bb&quot;</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB2953EEC38129283F5B94E336B64C0DM5PR0101MB2953_--
