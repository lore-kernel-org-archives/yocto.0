Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FDA0E00D0B; Thu, 23 Nov 2017 18:07:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D624FE00D03
	for <yocto@yoctoproject.org>; Thu, 23 Nov 2017 18:07:51 -0800 (PST)
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id D6EC9612E1
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 02:07:50 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.216.161.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id 7B7FEAC
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 02:07:49 +0000 (UTC)
Received: from G4W9119.americas.hpqcorp.net (2002:10d2:14d6::10d2:14d6) by
	G9W8454.americas.hpqcorp.net (2002:10d8:a104::10d8:a104) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Fri, 24 Nov 2017 02:07:49 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G4W9119.americas.hpqcorp.net (16.210.20.214) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Fri, 24 Nov 2017 02:07:49 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0837.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.260.4; Fri, 24 Nov 2017 02:07:48 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0260.005;
	Fri, 24 Nov 2017 02:07:48 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Executing ptest using image test ?
Thread-Index: AQHTZMiqZG31xrUXyU68T7yj05pCKA==
Date: Fri, 24 Nov 2017 02:07:47 +0000
Message-ID: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [96.22.174.101]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0837;
	6:tNm49XulfNI5sPInj0pUMR87KzvSsjlZOQi51Cz2kXmt8aSjvgNd1i30lXZRfBuCXdvj/9rjlqLHRNVkQGgLSq04ZzvQbX7MkjASXzfOxwR8KXA7pbL35Yl6CquP+vATvqL3qjPVEYSWOQevbdq8+1juL81w/rRIdFsQmU3OGAW1cT5VnOP8YMwvhSYwnFRG6X8dd+xzFWANmctWVe37eWL7aPGQMVtwHajxHcbV3KrC7PXW8YYeorpoPoZamcCaP6//+1pYSUvqhe90G0QpEeUU/JYPIJXEo8pR9ZnYDRdhp2q2++jRrmRmGlIGsxBNRPvp3sh3ePjR+Vuni6SyOvrsk5RmcQc3mpo8rPntVNo=;
	5:UXYCXo+ax14eTMXK8u0XAwOXnkimdAJ+sQAPt9HVfnb7tWG5k+5YWO5/k7LEblcCIGmk1tXVUqZArK/KY2clJ6jtQ7g0TCuZ1twK7DW8gjmFfILthp21AYxEZyrgbj0NhJxuCp3ax7MwV0ONJQg2N+XqzDSvSC4iARQbkL1+m4Q=;
	24:XPVlndp8phYRY+NrpX7SnAeNirSOzCxiciuo0S8k8t0mqQlBZaSOO//se1osHPSI18cVMUayHaVJXZnC8R9lHkDuKw7G386KuJ7YocGus+c=;
	7:jqByUAfSe5jVerWWeZnA1siqhhkUWhugLeNCeEpEa1DG6qw07cCPVpD4Rxr/P6Ro0+3P/MDVNybxH0VsIENWHjASq4SYJw1G8ydatmWN7b8VKDsO6SsqkEVKXNEQzeKun9Y9NJgrZkh8R5+NQYHrRdl9AU3NxU4ks6wkDOtKsoSYCtrXMkhuMdXYDzlQIW9jcfFfnCqgFHaLZlhCoEEtrE39KkvesviEuPv/qSmG2W8d1vHgkNOozg2/HjQ2/VsO
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(48565401081)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(2017052603258);
	SRVR:CS1PR8401MB0837; 
x-ms-traffictypediagnostic: CS1PR8401MB0837:
x-ms-office365-filtering-correlation-id: 4b36cb7e-5203-4c15-9cad-08d532e028d2
x-microsoft-antispam-prvs: <CS1PR8401MB0837C8D086B5FECDC240C33FED260@CS1PR8401MB0837.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3231022)(3002001)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(20161123558100)(6072148)(201708071742011);
	SRVR:CS1PR8401MB0837; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CS1PR8401MB0837; 
x-forefront-prvs: 05015EB482
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(376002)(366004)(346002)(199003)(189002)(8676002)(86362001)(2351001)(7736002)(101416001)(54896002)(6506006)(9686003)(99286004)(2900100001)(316002)(5640700003)(7696005)(74316002)(68736007)(19627405001)(1730700003)(81156014)(81166006)(6116002)(3846002)(189998001)(102836003)(25786009)(66066001)(6606003)(5250100002)(54356999)(50986999)(106356001)(478600001)(5660300001)(6436002)(6916009)(3280700002)(14454004)(53936002)(8936002)(33656002)(55016002)(3660700001)(97736004)(2501003)(105586002)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0837;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b36cb7e-5203-4c15-9cad-08d532e028d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2017 02:07:47.9560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0837
X-OriginatorOrg: hpe.com
Subject: Executing ptest using image test ?
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
X-List-Received-Date: Fri, 24 Nov 2017 02:07:53 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_CS1PR8401MB084071ADF580BCCD624BF26DED260CS1PR8401MB0840_"

--_000_CS1PR8401MB084071ADF580BCCD624BF26DED260CS1PR8401MB0840_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have some ptest which I would like to run quickly inside qemux86.  I see =
that the TEST_SUITES would allow me to do that, and that there is a _ptest.=
py script which seems to interface with ptest-runner.  Yet, I am unclear ho=
w it connects together if it does.


If anyone know how this can be done, can you point me on some doc related t=
o this?


--

Yannick Koehler

--_000_CS1PR8401MB084071ADF580BCCD624BF26DED260CS1PR8401MB0840_
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
<p>I have some ptest which I would like to run quickly inside qemux86.&nbsp=
; I see that the TEST_SUITES would allow me to do that, and that there is a=
 _ptest.py script which seems to interface with ptest-runner.&nbsp; Yet, I =
am unclear how it connects together if it
 does.</p>
<p><br>
</p>
<p>If anyone know how this can be done, can you point me on some doc relate=
d to this?</p>
<p><br>
</p>
<p>--</p>
<p>Yannick Koehler</p>
</div>
</body>
</html>

--_000_CS1PR8401MB084071ADF580BCCD624BF26DED260CS1PR8401MB0840_--
