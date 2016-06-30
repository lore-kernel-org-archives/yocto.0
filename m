Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F42FE00E6E; Thu, 30 Jun 2016 01:06:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 941 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Jun 2016 01:06:49 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0125.outbound.protection.outlook.com [157.55.234.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA4CE00E10
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 01:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=SUW4H6DsLWyejQRA10sTwVG6qce/ex61Fda01lgiSIg=;
	b=tPdJFtyikWrNY3QzDTN5jVqEWnhtJPDQH3+okdYZGKNR6YntSlCp9aj61XyBAShNWyFjQb8w6KbS9Bsy/ScJkp6vu2y6UH8Fb2tq5W/Q6CF47l34P7kFTLzJavmL9j/0oUrJnILrrkjSTE86nwBCK+mpRq1Ebry3vQMExjoO+UU=
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com (10.164.41.11) by
	DB5PR06MB1575.eurprd06.prod.outlook.com (10.164.41.13) with Microsoft
	SMTP Server (TLS) id 15.1.528.8; Thu, 30 Jun 2016 07:51:06 +0000
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) by
	DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) with mapi id
	15.01.0534.010; Thu, 30 Jun 2016 07:51:06 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Package build files not getting copied to sysroots directory
Thread-Index: AQHR0qPFx36SXbSwl0SHZWZBztB2eg==
Date: Thu, 30 Jun 2016 07:51:05 +0000
Message-ID: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [25.164.34.4]
x-ms-office365-filtering-correlation-id: f1035a18-f7b3-4a32-7170-08d3a0bb4a9d
x-microsoft-exchange-diagnostics: 1; DB5PR06MB1575;
	6:j2fYVNvyxdCyW3h9kVYeVeh5courcKvZiDvKlSX8+jjtVzqxvIymMctI0KY7xjlkEI0lWxn+DV5VfvtgBothZrCTxLKYwrjkzL39Drym+mgfOkLexugliqGiY1mWtU9UvDBfAdWvjKhYGPlWCglWWQzex2iZUnQzRngsObDtnsq6d0Fpll1WTWfk1pnh53e3+QPwHwmbUT0WXf6a3kUzCTz8rYxxR9h5ZEXyAg+W0IJvP3ywTgjiRVOeW35w1QRSnJ6WZ9LySH3p9D6RlRpfYkMAbP3SqJO1hHWtZ3tOcTOhSH059kHdFWkG+xrXFPP77EOeyPOh3tW7rpMDeGRK8A==;
	5:VaTHSQQx8K6bYp9qoGFW1l0+EPzjYp/8mkJRmXLzQxDeoiq9UxQOiEVkwB7KGlPV0MqidxF/dngFlPF0QiZ7m4a7UXSeBj/iIN9Rjvu7gz+Z/0u65WBN5H2j6C4j6Akx230t5Z917n0ZCWNPVUy57Q==;
	24:skVym3drqJVWstXEWQ+DrUXWjSFp783ABO2BqVZkuAR79f4RwFj26OkNW7KbpviKDbEOXPIGzrBI8LbRFXFTcr5P0hVaflciCHzKFbyyyIM=;
	7:3+ZOKz4k7XKmd3D5pqk3ub9HFxXhPVaJJMrM8rGPjDgDdoCWGlCwhvpGmPTerJL48I+TrQZQ6c9KbN/BI670ZZtGy3OVZgDdw1trfg3TYSBYCPoQKTwhYkgkbbf1z1VVq1iuoFIohN6MSJq9GAX0Ci+PkT6pEY6VEViemwaYKd8awL1WE7+Hv0ly1BJYBdJ4x0gQ4Ias1eMTE1CUqGvwNjHmqYB5GJN7UEhIhnghtYXEWgvheqgu+IE36n+EX9pm
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR06MB1575;
x-microsoft-antispam-prvs: <DB5PR06MB15758692742DC3D8585471A2CF240@DB5PR06MB1575.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6055026);
	SRVR:DB5PR06MB1575; BCL:0; PCL:0; RULEID:; SRVR:DB5PR06MB1575; 
x-forefront-prvs: 0989A7979C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(189002)(199003)(57704003)(8676002)(1730700003)(189998001)(2900100001)(10400500002)(81166006)(81156014)(2906002)(97736004)(107886002)(77096005)(54356999)(16236675004)(5002640100001)(33656002)(110136002)(50986999)(11100500001)(19627405001)(6116002)(8936002)(102836003)(3846002)(2501003)(106116001)(229853001)(106356001)(9686002)(2351001)(105586002)(122556002)(76576001)(92566002)(450100001)(19625215002)(101416001)(3280700002)(586003)(5640700001)(3660700001)(5003600100003)(87936001)(74316001)(68736007)(66066001)(7846002)(7736002)(7696003)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR06MB1575;
	H:DB5PR06MB1573.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2016 07:51:05.9371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1575
Subject: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 08:06:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR06MB157369E58A396E97FE19504FCF240DB5PR06MB1573eurp_"

--_000_DB5PR06MB157369E58A396E97FE19504FCF240DB5PR06MB1573eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello


I am trying to integrate the meta-ivi layer into my distribution. When I am=
 trying to build the audiomanager, some dependent package do_configure() fa=
ils. It looks for some packageconfig files(.pc) file in the tmp/sysroots/<m=
achine_specifid_directory>, but this file is not there.


When I look into the dependent package build directory in tmp/work/<arch-sp=
ecific_dir>/<package_name>/, I am able to see the files in the build output=
(libraries and .pc files). Any reason why it is not getting copied into tmp=
/sysroots/ directory ? Do I need specify it somewhere explicitly do get thi=
s done ?


Thanks & Regards,

Hari Prasath

--_000_DB5PR06MB157369E58A396E97FE19504FCF240DB5PR06MB1573eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello</p>
<p><br>
</p>
<p>I am trying to integrate the meta-ivi layer into my distribution. When I=
 am trying to build the audiomanager, some dependent package do_configure()=
 fails. It looks for some packageconfig files(.pc) file in the tmp/sysroots=
/&lt;machine_specifid_directory&gt;, but
 this file is not there.</p>
<p><br>
</p>
<p>When I look into the dependent package build directory in tmp/work/&lt;a=
rch-specific_dir&gt;/&lt;package_name&gt;/, I am able to see the files in t=
he build output(libraries and .pc files). Any reason why it is not getting =
copied into tmp/sysroots/ directory ? Do I need
 specify it somewhere explicitly do get this done ?<br>
</p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_DB5PR06MB157369E58A396E97FE19504FCF240DB5PR06MB1573eurp_--
