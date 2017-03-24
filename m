Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E17CCE00AB6; Fri, 24 Mar 2017 05:23:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.59 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0059.outbound.protection.outlook.com [104.47.41.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DCBEE009C2
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 05:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qcJzgb1Qene6dHKNE2QShsUHqYizrrhb85tfLQMp6Rw=;
	b=oPeg3ALK+970A77JLt+p735Wzw1zbc+/D+d1LiqdX7V4FGdIoVlSzPTXL8EXdrzwHh9pz+7RYCOrzpSahGIhymznVwoTu4DyKg3CqXbpqYLOxGQd7F/gSvFgfxCKUemZxeCqCob6bsRFFvH8oOWrots/+Tn15PZaMk1/JsOP9as=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.17; Fri, 24 Mar 2017 12:08:47 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0961.020; Fri, 24 Mar 2017 12:08:47 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: quoted string in a recipe variable?
Thread-Index: AQHSpJdjr2UIpt+gVUe0QTXrCP0ztw==
Date: Fri, 24 Mar 2017 12:08:47 +0000
Message-ID: <DM5PR0101MB2953685EA03459A962AA8A69B63E0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [25.174.180.132]
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2953;
	7:APYSCTPvxal2MDtk9djAbI5WnrDzl6rV3mi32WDrmmVZmu2NbGjJv7YI4H4KTJweJuXv7hsavOa8bZA+LoiOA3Nj9dROCgaE7Vyei1kDOjuY24nsiY734LVOUbhmEVLjH/LKawc1m13ibWt0BT8AZDDhVvZbgSBaaCxpnYDxtbufXuDhWFQcsP6JJ88Ef24boblHaFLfj0qd+8NLZvgKZWzD8DKTjvIZ23YbyuIoy6LRZHkyzzhT718vJetmduCQkr7v2TiXfC7oTOye3O6nhjzMQzmlPXwGx4DBc4HUwHpF4pOfhyw7wJP4/hL99lLBKfUmum8h3Cutlx5qevWXWg==
x-ms-office365-filtering-correlation-id: b1160a03-0b3d-4431-797c-08d472ae86a4
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(2017030254075);
	SRVR:DM5PR0101MB2953; 
x-microsoft-antispam-prvs: <DM5PR0101MB295388E7B6BACCB47A2BE637B63E0@DM5PR0101MB2953.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123555025)(20161123558025)(20161123560025)(20161123564025)(20161123562025)(6072148);
	SRVR:DM5PR0101MB2953; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2953; 
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(54896002)(99286003)(33656002)(74316002)(81166006)(77096006)(66066001)(7696004)(6506006)(5640700003)(3660700001)(86362001)(2351001)(6606003)(5660300001)(55016002)(19627405001)(50986999)(110136004)(6116002)(102836003)(2501003)(54356999)(38730400002)(3846002)(53936002)(9686003)(8936002)(2900100001)(2906002)(1730700003)(8676002)(6436002)(7736002)(3280700002)(189998001)(122556002)(6916009)(25786009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2953;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2017 12:08:47.3213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2953
Subject: quoted string in a recipe variable?
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
X-List-Received-Date: Fri, 24 Mar 2017 12:23:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953685EA03459A962AA8A69B63E0DM5PR0101MB2953_"

--_000_DM5PR0101MB2953685EA03459A962AA8A69B63E0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.
I am a bit confused with recipe syntax for variable assignment.

I wanto embed double-quoted string within a variable.
And I tried below and looks like the whole part of the string (A to B) is s=
uccessfully assigned to EXTRA_OECMAKE variable.

EXTRA_OECMAKE =3D " \ <-- A
  "-D CMAKE_XXXX=3Dxxxx \
  ...
  ...
  -D CMAKE_YYYY=3Dyyyy" \
" <-- B

My question is, if this is a valid way of doing it?
Why bitbake parser is not confused?



--_000_DM5PR0101MB2953685EA03459A962AA8A69B63E0DM5PR0101MB2953_
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
<div><span style=3D"font-size: 12pt;">Hello, Yocto.</span><br>
</div>
<div>I am a bit confused with recipe syntax for variable assignment.</div>
<div><br>
</div>
<div>I wanto embed double-quoted string within a variable.</div>
<div>And I tried below and looks like the whole part of the string (A to B)=
 is successfully assigned to EXTRA_OECMAKE variable.</div>
<div><br>
</div>
<div>EXTRA_OECMAKE =3D &quot; \ &lt;-- A</div>
<div>&nbsp; &quot;-D CMAKE_XXXX=3Dxxxx \</div>
<div>&nbsp; ...</div>
<div>&nbsp; ...</div>
<div>&nbsp; -D CMAKE_YYYY=3Dyyyy&quot; \</div>
<div>&quot; &lt;-- B</div>
<div><br>
</div>
<div>My question is, if this is a valid way of doing it?</div>
<div>Why bitbake parser is not confused?</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB2953685EA03459A962AA8A69B63E0DM5PR0101MB2953_--
