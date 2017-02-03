Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2598E00510; Fri,  3 Feb 2017 15:16:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 147079 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Feb 2017 15:16:32 PST
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0044.outbound.protection.outlook.com
	[104.47.37.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90ECCE004D2
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 15:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=70sMdhuZr+sRk6s6St++wnYmtN7eNWWOyNVABnx54rU=;
	b=mQnDtX0TH6vgYsNtzteuPwHvqtxSmp289i6Je2SFenoGyXe3L3xqPoPH+6GUWJhV3/lxbUS/AB1stsxbV94QRYuF9pQow83USU8isyaszt7NAXs30duB5JQrEHbjckHq17aKtmmlTzE2lxV25PA00JJzVGK45EuLTzQAVaM4zPM=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2954.prod.exchangelabs.com (10.174.181.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.12; Fri, 3 Feb 2017 23:16:29 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0845.028; Fri, 3 Feb 2017 23:16:29 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: genericx86 vs qemux86
Thread-Index: AQHSfnOMPAcBXCcZX0KRUyMiVC1ulw==
Date: Fri, 3 Feb 2017 23:16:29 +0000
Message-ID: <DM5PR0101MB295332119B0A4D1653E73F98B64F0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [218.225.179.82]
x-ms-office365-filtering-correlation-id: d7b60ecb-0172-47d6-c1c1-08d44c8aaf59
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2954; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2954;
	7:PtiN4ohXdtNOVKMzCD+EvijQ4GNWJjdjaYekZ0HaPKZ76NGVzTHh4udOPpWqQ0wQ7e26LKN/ss9YWQflljcw4zoV6YtT9atCbDDLM2PyiUnLWHZEGsdYboQDeYshP/P3C7csWkAUqxlDPGtnpUxGtlAAMgkEvj5m2EmiT5jRABvIKpEW1+B0Cm5mp/mHZ9vzi0xMqq+AUJqcnkxZo25PdLSOBGYMkUAIPn3DJRAXccRRhTNY3zu98AbIEs/9D8SITN8Cj7bUz6vZzu7ijLzKXo9Z1XmVxVW1w/c8caZrtgoM521xjeSnr24UPvaHChsLiF5+CHayBAQh3d1bTPZwM097kNJkeHKKiF78cVZDVX+hOpLHcGS5kZ+J5EjCuT5ZPe6cm0wrOD52wPJm63g3+d+aUWACxZWBQbdwF9Hqwhs+uU/qa6PfN/o8uHDharDYPyxkiLS+vNYqW3wxF0Rbov0hvHyeSbmx/3xNLkA3RIP5Ls5h/aOx6LWj8cN0QaCsuWCmpkpFb3k6AUiB6QeBwA==
x-microsoft-antispam-prvs: <DM5PR0101MB29541DC8DC0501997A5A995EB64F0@DM5PR0101MB2954.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123558025)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148);
	SRVR:DM5PR0101MB2954; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2954; 
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(107886002)(7696004)(5640700003)(74316002)(25786008)(2501003)(55016002)(5660300001)(38730400001)(81156014)(106356001)(1730700003)(6916009)(450100001)(86362001)(19627405001)(54896002)(8676002)(54356999)(53936002)(81166006)(6606003)(9686003)(68736007)(6506006)(6436002)(2351001)(99286003)(50986999)(77096006)(110136003)(101416001)(2900100001)(3280700002)(105586002)(33656002)(7736002)(189998001)(97736004)(7116003)(122556002)(92566002)(66066001)(3660700001)(6116002)(2906002)(8936002)(106116001)(3846002)(102836003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2954;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2017 23:16:29.5612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2954
Subject: genericx86 vs qemux86
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
X-List-Received-Date: Fri, 03 Feb 2017 23:16:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB295332119B0A4D1653E73F98B64F0DM5PR0101MB2953_"

--_000_DM5PR0101MB295332119B0A4D1653E73F98B64F0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.

Sorry, I am still a bit confused with genericx86 and qemux86 targets.  What=
 is their difference and which one to choose.
Both are x86 target and maybe genericx86 has more support for PC hardware? =
 qemux86 has v86d?
genericx86 is from poky and qemux86 is from openembeded?

I am making x86 image for virtual environment and maybe PCs, so I wanted to=
 know the pros/cons of these two.



--_000_DM5PR0101MB295332119B0A4D1653E73F98B64F0DM5PR0101MB2953_
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
<div><br>
</div>
<div>Sorry,&nbsp;I am still&nbsp;a bit confused with genericx86 and qemux86=
 targets. &nbsp;What is their difference and which one to choose.</div>
<div>Both are x86 target and maybe genericx86 has more support for PC hardw=
are? &nbsp;qemux86 has v86d?</div>
<div>genericx86 is from poky and qemux86 is from openembeded?</div>
<div><br>
</div>
<div>I am making x86 image for virtual environment and maybe PCs, so I want=
ed to know the pros/cons of these two.</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB295332119B0A4D1653E73F98B64F0DM5PR0101MB2953_--
