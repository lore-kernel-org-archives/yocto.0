Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DD75E00DD0; Sun, 30 Jul 2017 19:59:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 168609 seconds by postgrey-1.32 at yocto-www;
	Sun, 30 Jul 2017 19:59:42 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0065.outbound.protection.outlook.com [104.47.38.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70291E00C49
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 19:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=gaAI1Y7Uiibc3qaLmMA4sjchsEeQ0lZMwhaMVVR47Eo=;
	b=RFKzEmhisWcgZrJuMZJ3msgHewnCkPaWaV0Swrc9wkrwT7diR7+6fJjSo8fcyWyFvk1j1XLe02sUhQobQZjQTnxRFKt0isd+9i69SNi7Ec+e3pNN8PdUQMf4jlhV+XGM210TOiNIp4G7DrpQVHjmprSprbVqtD45uG5w1Nj1ZDs=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB3294.prod.exchangelabs.com (10.172.170.138) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1304.22; Mon, 31 Jul 2017 02:44:45 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.01.1304.022; Mon, 31 Jul 2017 02:44:45 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: build for terasic de10 nano kit?
Thread-Index: AQHTCabpE0XP4mrGqEKXgVKeSah+fQ==
Date: Mon, 31 Jul 2017 02:44:45 +0000
Message-ID: <MWHPR01MB32931CE70C77C99C83DD5C02B6B20@MWHPR01MB3293.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [153.203.84.160]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB3294;
	7:wZxAoJk198QxpRlQ8fNwo519UZY1yVH1/wSfcB/GHwES961AB8k3fJgtjVLL2Sx7CUR/AxKYMVNH78nRJWEkiZVLrgIysT1yJaQNVgcdhOEHPbttpqJ+9FJ8J/AGN0Q3i0AVtYlv/P6sXyDNe5wnUjY/0tZpBRa/0aEtIZtXH0RCiL/JdRAeJhBmXiPIrdrMKlU3JPVPknw++Olld4fqUE0COTp9aD+Ohf8BnPzNa+pF7bVDFbt0KReNN7uor5NuP7WLLyey6N6GtbbmijcRFKc+qxzaoXahVGgMENv1satY5YQc6Q5VK1OXF481UkSuyf7bgHY9oaINZCgmyA/TpJIERNHnGF1AAcgVxDghcx75M0xT1EMMrp5EpOfyMUhnwiuCylgHNrwZ9t4ETQf7q1U/WD38cIpH3jFeQga5/gDTPRGvziLg3k9HftkXFyYtuc7/zJSPIFEibyalmD/vc01HqaAItL7ot2N4XRE25/0Kymtwd6nMtQM3AI8KNC7retzAQHrcddqM75daxOKLgJJKzpgnzmd/yNDLkvW1LdNhl6ZNycSiPpjpTqcKUfwKZcSnL2oG7jp+McXbm/rJe65VwWGGNN36UiESKDj/uZtY4QjkE+e1bL8TbZj8d/EuuEtpWd5RVAANMlUQARJ1H3d+jfpO2/bQ1s8GWYy3PR2FV3VnYLIRExRLi2Ap87ovaqLFsHBQ1uIsNfbHyahAcZXzt7rrZ13ThiLcePfPxTwiAgpb61k9OmB/+yN/qyeuxooW9GJin0d8HYS8kNkvPKHJody5TOE4TDE0z/nn6XA=
x-ms-office365-filtering-correlation-id: 86b12cc9-9efb-4eb6-5124-08d4d7be1a65
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB3294; 
x-ms-traffictypediagnostic: MWHPR01MB3294:
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-microsoft-antispam-prvs: <MWHPR01MB32943D3E6615F7899CE67859B6B20@MWHPR01MB3294.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123562025)(20161123558100)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123564025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB3294; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB3294; 
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39830400002)(39410400002)(39400400002)(199003)(189002)(66066001)(7736002)(2900100001)(7696004)(110136004)(8676002)(38730400002)(1730700003)(81156014)(81166006)(50986999)(54356999)(33656002)(478600001)(102836003)(101416001)(6116002)(189998001)(53336002)(68736007)(3280700002)(3846002)(3660700001)(105586002)(6916009)(8936002)(6606003)(2906002)(106356001)(97736004)(19627405001)(2351001)(25786009)(6436002)(5660300001)(5640700003)(966005)(6506006)(14454004)(86362001)(2501003)(74316002)(77096006)(99286003)(55016002)(54896002)(53936002)(9686003)(6306002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB3294;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2017 02:44:45.1125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3294
Subject: build for terasic de10 nano kit?
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
X-List-Received-Date: Mon, 31 Jul 2017 02:59:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR01MB32931CE70C77C99C83DD5C02B6B20MWHPR01MB3293prod_"

--_000_MWHPR01MB32931CE70C77C99C83DD5C02B6B20MWHPR01MB3293prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.
I recently purchased Terasic DE10-Nano Kit board, and I wonder how I can bu=
ild Linux image for it.
(Though it comes with binary SD card.)

I can see below, and I tried meta-de10-nano/REDME.md steps (priecisely it i=
s not yocto?), but I met errors during bitbake.

https://01.org/meta-de10-nano
https://github.com/01org/meta-de10-nano

And I can see below.
I would love to see the steps that I can try. Or any comminity mailing list=
 that I can check such tips?

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11629



--_000_MWHPR01MB32931CE70C77C99C83DD5C02B6B20MWHPR01MB3293prod_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello.</span><br>
</div>
<div>I recently purchased Terasic DE10-Nano Kit board, and I wonder how I c=
an build Linux image for it.</div>
<div>(Though it comes with&nbsp;binary SD card.)</div>
<div><br>
</div>
<div>I can see below, and I tried meta-de10-nano/REDME.md steps (priecisely=
 it is not yocto?), but I met errors during bitbake.</div>
<div><br>
</div>
<div>https://01.org/meta-de10-nano</div>
<div>https://github.com/01org/meta-de10-nano</div>
<div><br>
</div>
<div>And I can see below.</div>
<div>I would love to see the steps that I can try. Or any comminity mailing=
 list that I can check such tips?</div>
<div><br>
</div>
<div>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11629</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_MWHPR01MB32931CE70C77C99C83DD5C02B6B20MWHPR01MB3293prod_--
