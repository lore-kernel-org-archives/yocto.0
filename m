Return-Path: <suneetha.g@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE442E009B9; Fri, 10 Mar 2017 02:22:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
X-Greylist: delayed 1030 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 02:21:58 PST
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0101.outbound.protection.outlook.com
	[104.47.126.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8A9E009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 02:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Z9uqq1ucWV4a9dyK1f2sQJy/+laB2iSQFUTIUThBc6k=;
	b=HImo2o6K4rNMMj0iZKmreM72BDrfM5Rdt2CeXwN8W+7YWwLII+6Ci4hk4F6eQU12ebu7jyZBgRMXfEGekNbGesj5lhWvexJmV9lujKO6ANrMIoqcga21h4SssgMW/M4TZbIjc2viq6831nTnwM/5FV/J2HNsBwn6r7uotiq+RTc=
Received: from HK2PR0401MB1492.apcprd04.prod.outlook.com (10.165.181.14) by
	HK2PR0401MB1492.apcprd04.prod.outlook.com (10.165.181.14) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Fri, 10 Mar 2017 09:49:49 +0000
Received: from HK2PR0401MB1492.apcprd04.prod.outlook.com ([10.165.181.14]) by
	HK2PR0401MB1492.apcprd04.prod.outlook.com ([10.165.181.14]) with
	mapi id 15.01.0947.020; Fri, 10 Mar 2017 09:49:49 +0000
From: Suneetha Lakshmi G <suneetha.g@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Index: AQHSmYOoXpfSisKv7kiXpSklhTkpJw==
Date: Fri, 10 Mar 2017 09:49:49 +0000
Message-ID: <HK2PR0401MB14923BDD8EC2C3C6B14C4C15C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=tataelxsi.co.in;
x-originating-ip: [25.165.70.4]
x-ms-office365-filtering-correlation-id: 805634ee-d42e-4099-4715-08d4679acb04
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(48565401081);
	SRVR:HK2PR0401MB1492; 
x-microsoft-exchange-diagnostics: 1; HK2PR0401MB1492;
	7:eVyCZjH1waKigSI6VZYGZOEqeXRlyfwmECjWiRuvI4DPmGrvASr4LbYEZgrxsM7/Q4jGQ2XngZYm40zc+7MaH/z/M6N7U3SssruD5qRciG6vmJQ9DWvcDYluFY+TgXU8sCRZxU7+by5hFZRNuFsm+jiS5UC0DmELJiyy000yAsGYJR6lTXytWHZFl+BbwJeaHCTZREHQHTL4KnqBM5HszE2f0wp9+Voj1o7LGudXGlzn4WmSa+y64t1p7JQ8IA081ZkUjsCvezb6+RaDJIlsjLGyvRKsSChyewZ9/Pr4YwHASy8C3PwkwosgUA8PIuwVN/LjXtywRMP522xWsQfZ0g==
x-microsoft-antispam-prvs: <HK2PR0401MB14921A3826F5D24C6D1F4DA6C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(90964069518039);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026)(6041248)(20161123558025)(20161123555025)(20161123560025)(20161123564025)(20161123562025)(6072148);
	SRVR:HK2PR0401MB1492; BCL:0; PCL:0; RULEID:;
	SRVR:HK2PR0401MB1492; 
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39450400003)(39840400002)(39860400002)(39850400002)(39410400002)(6916009)(2351001)(74482002)(86362001)(122556002)(2501003)(7696004)(5660300001)(588024002)(558084003)(42882006)(106116001)(9686003)(25636003)(66066001)(50986999)(19627405001)(189998001)(54356999)(53936002)(2900100001)(6606003)(3846002)(5406001)(54896002)(102836003)(6116002)(38730400002)(55016002)(3660700001)(551214005)(5416004)(6436002)(77096006)(33656002)(7736002)(81166006)(1730700003)(5640700003)(74316002)(3280700002)(25786008)(4270600005)(6506006)(99286003)(110136004)(2906002)(8936002)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR0401MB1492;
	H:HK2PR0401MB1492.apcprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 09:49:49.2105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0401MB1492
Subject: (No subject)
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
X-List-Received-Date: Fri, 10 Mar 2017 10:22:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0401MB14923BDD8EC2C3C6B14C4C15C6200HK2PR0401MB1492_"

--_000_HK2PR0401MB14923BDD8EC2C3C6B14C4C15C6200HK2PR0401MB1492_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


suneetha.g@tataelxsi.co.in



--_000_HK2PR0401MB14923BDD8EC2C3C6B14C4C15C6200HK2PR0401MB1492_
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
<p><br>
</p>
<p>suneetha.g@tataelxsi.co.in</p>
<p><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<br>
</div>
</div>
</div>
</body>
</html>

--_000_HK2PR0401MB14923BDD8EC2C3C6B14C4C15C6200HK2PR0401MB1492_--
