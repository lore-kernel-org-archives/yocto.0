Return-Path: <marco.garzola@tecniplast.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B044E00D9E; Thu, 16 Jun 2016 12:45:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3578 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Jun 2016 12:45:26 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0137.outbound.protection.outlook.com [157.55.234.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D17E00D95
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 12:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tecniplastgroup.onmicrosoft.com; s=selector1-Tecniplast-it;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=f09N3x84RlxD4I++0iVTyWFK0zCUo+yK+6P9z8Mn+tw=;
	b=M/4GYP6TO1U4W2L7rTDQgX8hDkSQ5Jj1ohz+fIc9yQKTW0HJ1gl8TjWQSAMPppdG55XLvZN9gL+MOPP+EMVH30nRoDQdRth9zJfIl8KWkaqt4qzk1iOXsLxwSXynkuDnNDk5uFwKJz3yr3y/bXav8L4UEpyAMFPolBPKtAn8zow=
Received: from AM2PR07MB0594.eurprd07.prod.outlook.com (10.160.33.16) by
	AM2PR07MB0596.eurprd07.prod.outlook.com (10.160.33.18) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Thu, 16 Jun 2016 15:11:19 +0000
Received: from AM2PR07MB0594.eurprd07.prod.outlook.com ([10.160.33.16]) by
	AM2PR07MB0594.eurprd07.prod.outlook.com ([10.160.33.16]) with mapi id
	15.01.0517.014; Thu, 16 Jun 2016 15:11:18 +0000
From: Marco Garzola <marco.garzola@tecniplast.it>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Dynamic PV version in recipe
Thread-Index: AQHRx+D0Y22Q2tx2UEuJqdtW/wr22w==
Date: Thu, 16 Jun 2016 15:11:18 +0000
Message-ID: <AM2PR07MB05941BF374AFE7DBF45733D4F6560@AM2PR07MB0594.eurprd07.prod.outlook.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=marco.garzola@tecniplast.it; 
x-originating-ip: [25.160.207.4]
x-ms-office365-filtering-correlation-id: 5c320c56-e6ae-4354-0b01-08d395f87829
x-microsoft-exchange-diagnostics: 1; AM2PR07MB0596;
	6:k3sqoOHxM8QoW0/KaybQ8SRbGNoe0elkNgLaagyvnd58CMizdZePtM1drSAMMkIl6huSS4MHscawJz4uDgojVVZnrAmuSpyJ1ahXrEPKGhdwnV/ye831c5HdxVnsRolKvoS3HTUzeFhB470RrAg1pCmqpce9nfok2scbeHpxhtrbszFSok9XqqKJp4U3qzL+sOBdrLHUB2Ln74w6tK7f7oiPYjq2Arlqeo3QC4cB7DQr4barC1Mqcjzu3fvHopeznCfzitdvvrMOEul7sFsS4J9/to1lampCXjbYVsH7H4Y=;
	5:yDo8vDl/DXGk0Cgrdgd9+LCrUO0CUvZ9MJk2WYiC0GQLUAVMDjQNvC+KXPVAaV2LITpQcsTSdLy5EjFd4gC09HMSt5gMhhZGU/phmpbtLmSi+1HMGdZob4HBkU7FTfpphZzlWLOkcx6wr3KZY8nCvg==;
	24:YQk0dMQ7Ldiylw97G47TPtdKb2FfJVxXnu3XH0N+7yc4XkZS4IhEVuOJsy9zybC69zOM6Ugb+CrTPVEyH/P7TbESZpXR0l7DkrfsR//M5tw=;
	7:2h1a/2l5NOt9cp6mW919U785WotgmZfKTNqYhdWGbBpSLBFGUahJvWEMhS//zqghmhx5rxWKHqP7M5iHaeVakqAsWoXrNTfdaJgRLgdtPUrmGiTSYfxoC595jlSLRJXuyZODx81pG15K4j4iNSmO1rhl7qecojlD1FxUDe1ricMwWO4rwfxivycWqZiNcR5QiC0cgCQ9sC5dF9QNUoBp0Q==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR07MB0596;
x-microsoft-antispam-prvs: <AM2PR07MB05960FDFF469EF7EA2B9374AF6560@AM2PR07MB0596.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:AM2PR07MB0596; BCL:0; PCL:0; RULEID:; SRVR:AM2PR07MB0596; 
x-forefront-prvs: 09752BC779
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(189002)(199003)(53754006)(81156014)(81166006)(1730700003)(19627405001)(101416001)(105586002)(106356001)(50986999)(33656002)(2906002)(106116001)(19625215002)(2501003)(54356999)(92566002)(2351001)(107886002)(8936002)(66066001)(5003600100002)(229853001)(5002640100001)(110136002)(3846002)(16236675004)(8676002)(97736004)(9686002)(102836003)(586003)(74482002)(6116002)(5004730100002)(189998001)(450100001)(3280700002)(2900100001)(77096005)(87936001)(10400500002)(68736007)(5008740100001)(76576001)(86362001)(3660700001)(74316001)(122556002)(5640700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM2PR07MB0596;
	H:AM2PR07MB0594.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: tecniplast.it does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Tecniplast.it
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2016 15:11:18.7563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a6dc2a1-fc45-40bf-915c-346e96a2837b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR07MB0596
Subject: Dynamic PV version in recipe
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
X-List-Received-Date: Thu, 16 Jun 2016 19:45:28 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_AM2PR07MB05941BF374AFE7DBF45733D4F6560AM2PR07MB0594eurp_"

--_000_AM2PR07MB05941BF374AFE7DBF45733D4F6560AM2PR07MB0594eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I got a problem, maybe someone could help me.I have a recipe that takes fro=
m a jenkins server via json API a binary file with a version that i know on=
ly after do_compile task. the question is : is there any way to tell bitbak=
e that $PV should change dynamically  , maybe in do_install task ? My goal =
is  to create the package with  the revision read from jenkins.



Thanks anyone for the help


Marco

--_000_AM2PR07MB05941BF374AFE7DBF45733D4F6560AM2PR07MB0594eurp_
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
<p>Hi all,</p>
<p><br>
</p>
<p>I got a problem, maybe someone could help me.I have a recipe that takes =
from a jenkins server via json API a binary file with a version that i know=
 only after do_compile task. the question is : is there any way to tell bit=
bake that $PV should change dynamically&nbsp;
 , maybe in do_install task ? My goal is&nbsp; to create the package with&n=
bsp; the revision read from jenkins.</p>
<p><br>
</p>
<p><br>
</p>
<p>Thanks anyone for the help</p>
<p><br>
</p>
<p>Marco<br>
</p>
</div>
</body>
</html>

--_000_AM2PR07MB05941BF374AFE7DBF45733D4F6560AM2PR07MB0594eurp_--
