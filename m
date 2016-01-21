Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C912E00AB5; Thu, 21 Jan 2016 04:10:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0052.outbound.protection.outlook.com [104.47.101.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85924E00AA6
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 04:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=wr0JMEM9n3cLaVRCt1dehZwvIQFq11SFih09ZVwHHs0=;
	b=R0Jk+JdIDcarYOC3892Ny8UgXEIN8oFcHv7SjMZX0t+w3yJ1+EBRuHaR43T32zrGk6/U3JgIUNE+j1P1ql1Cb/dYqLVAxOWa9jvHuINVv6r9HBfTriWTP5A5l75uaQVr1CSCmmgLWYEyk4neY3GIb76QMJs+TK4PRPC7Ml12sQ8=
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0053.INDPRD01.PROD.OUTLOOK.COM (10.164.118.145) with Microsoft
	SMTP Server (TLS) id 15.1.365.19; Thu, 21 Jan 2016 12:10:05 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) with mapi id
	15.01.0365.024; Thu, 21 Jan 2016 12:10:04 +0000
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Syslog Related testcases are failed in yocto LTP
Thread-Index: AQHRVERz+LYGTV5uuE+leHAv1rjFFg==
Date: Thu, 21 Jan 2016 12:10:03 +0000
Message-ID: <MA1PR01MB0056C008588A2F442A072B6182C30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Raghavendra.Kakarla@inedasystems.com; 
x-originating-ip: [175.101.7.226]
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0053;
	5:bUR9uQoENnhq2c0SBFuBgnBlYLJXBnv20AHyZq8ChV3AtTRao1dukFdVede7Snp68XR1ZhDwZ65uQVU3qmlhEIFqpO0Ei2ky5ZqVnE82lI7zpQdEUYd3icD9JNa+6SnwdzKR4FsV24cmab7zSTaEUQ==;
	24:1VeUFY9TAHQGV8ovoYJYkyqVbG7y7lAzZHBoPGWnP/r7PkwDYsNNZvsLeNSlgbNHJabZfVYZXebeX215gCZW6ozwkuoX7e6GlmgPFqoj4/k=;
	20:13B19BeTqQQFxhgUUluLT/gKoc9nYMDtFQi1H81bfPDnbEZpfY4Hf9HggY2H/l2yInJrZHqDqsumRwDWPzwGKRDiVgT5lDM4XcCfBtK78B+l/PGeypmKAh6of/ueTlBfoXgEsCvcKO4BxV8tFMhgqHeMxc0VfJ3CMjvIUaql3Fw=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MA1PR01MB0053;
x-ms-office365-filtering-correlation-id: 3f8cc781-edb2-4520-10b1-08d3225bcbfc
x-microsoft-antispam-prvs: <MA1PR01MB005323C1DF136B70538D914182C30@MA1PR01MB0053.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(520078)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:MA1PR01MB0053; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0053; 
x-forefront-prvs: 08286A0BE2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(51874003)(199003)(53754006)(50986999)(101416001)(77096005)(5002640100001)(2900100001)(33656002)(87936001)(229853001)(5003600100002)(92566002)(54356999)(66066001)(86362001)(2501003)(450100001)(558084003)(2351001)(16236675004)(1096002)(5004730100002)(107886002)(5001960100002)(110136002)(1730700002)(106356001)(189998001)(81156007)(586003)(3846002)(97736004)(105586002)(40100003)(19625215002)(10400500002)(102836003)(6116002)(2906002)(106116001)(122556002)(19627405001)(5008740100001)(1220700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0053;
	H:MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2016 12:10:03.0127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0053
Subject: Syslog Related testcases are failed in yocto LTP
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
X-List-Received-Date: Thu, 21 Jan 2016 12:10:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB0056C008588A2F442A072B6182C30MA1PR01MB0056INDP_"

--_000_MA1PR01MB0056C008588A2F442A072B6182C30MA1PR01MB0056INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,


I build the LTP-2015-01-19 with yocto and I ran the runltp script on my boa=
rd I got error with the syslog related test cases.


Could please give me the some info such that I will resolve the issue.


Thanks in advance.


Regards,

Raghavendra K.

--_000_MA1PR01MB0056C008588A2F442A072B6182C30MA1PR01MB0056INDP_
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
<p>Hi All,</p>
<p><br>
</p>
<p>I build the LTP-2015-01-19 with yocto and I ran the runltp script on my =
board I got error with the syslog related test cases.</p>
<p><br>
</p>
<p>Could please give me the some info such that I will resolve the issue.</=
p>
<p><br>
</p>
<p>Thanks in advance.<br>
</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K.<br>
</p>
</div>
</body>
</html>

--_000_MA1PR01MB0056C008588A2F442A072B6182C30MA1PR01MB0056INDP_--
