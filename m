Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEB78E00F9F; Mon, 22 Aug 2016 18:51:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0047.outbound.protection.outlook.com [104.47.32.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA37E00F9B
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 18:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=UHfIkeExDUbasaIKMEEJL0m1G2Yf2Rg9r4ySk4OK0II=;
	b=yxMyhS+Do2BYe45ACGmdky0eSdx1j76gzssjxshYz+tj62yN79q6Y3OVfZmFzpdHY9MdLtj31q3JVp6qdJC6lOIKz2f7p8NpG+fitaCit/ku46pfe0sb97T/Cf1qbDM+wlD6cVJW6yTb3JTNAICAoVXMZLC8XBtT7dqrlXdVubY=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Tue, 23 Aug 2016 01:50:59 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0549.029; Tue, 23 Aug 2016 01:50:59 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: BBMASK issue
Thread-Index: AQHR/ODLzU+cZtHRnkGcb9k9zyc8Nw==
Date: Tue, 23 Aug 2016 01:50:58 +0000
Message-ID: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: b8bf1624-b1d2-4b09-e941-08d3caf7ee1f
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	6:V6kDkAgmZBc23OqkuqVO1ZHDaoU57xbwsHIzCFO7+rHRrENpSA9R7oZv7U5wAOCuRqoDH79epmw29e+1KG7z7+MAsit3RCbRal/oflPJmHuUi5E0pTOTn4yjoNV5bEh7PjBVRMupgHYmI9zNfXfGVwEDSuwCIv1kTnnGwzFYcsrnTldwT0tcvBlmtppoHXEl+DxpuxVbe6c62/S8+z569t0/6MRt0PEK4T34rPEhsIzaZTCJQUcPOQ5TZhfLR9srIJtHUwQb1WVT0LOjSCECYraNfFwEGIKJLubPmQMpIBY=;
	5:qc7bci8oIlNp/e2UR/76wjkslZ/emtEa2zz2yAZjRTz7pV9p/d05psOsmpc2b1hoSLYJjLjMfYt7fhl7C10/G0qw0ywPsMGU2n1d7TpP1BX9kJdmEw93SzLKi6FBMZVo0AhIJlBCeBhGBlSLV+21yA==;
	24:njnA55mlgZ/M1JY139a1t1n9KTn2HNAZJDEIVRs1CDTDG64GpljSBD+e5u1hw6HlWjUi5yPVeCoB5DnINgccxBpq+HiPjIXnHsMfv43rSbA=;
	7:sWNsJrGOoirh+Q8TLhcxVdYSamaoLBMvJM1+JFNpWwFKkdp+kKkpHlBHW8bjr3XDNeCz40pHkKmdDtdxkIJe2Nmc9lLMksFXzESUuG69y47CbsiumRUORldZybT5ZjVjbirDRKvpFs7blA5XN7k1SPQ1ceWwQVh9VQbsbrcR5cT3GK+cTyqWaQxwjR5ewKUIIBRC6JTnUccLQW2DkqRm4C+UB0JimOUw0r904LrxTNmtUzGpv4JlIsP20J1Dy/yn
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1593;
x-microsoft-antispam-prvs: <CY1PR0101MB15933FF077E2E8E2652707BCD7EB0@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(7696003)(7736002)(3280700002)(105586002)(7846002)(16236675004)(221733001)(2501003)(19580395003)(3660700001)(66066001)(229853001)(2351001)(50986999)(106356001)(10400500002)(8936002)(19625215002)(106116001)(81156014)(1730700003)(102836003)(87936001)(86362001)(81166006)(19627405001)(5640700001)(2906002)(110136002)(107886002)(54356999)(189998001)(122556002)(97736004)(586003)(8676002)(101416001)(33656002)(5002640100001)(3846002)(92566002)(6116002)(450100001)(9686002)(3480700004)(7116003)(77096005)(68736007)(74316002)(2900100001)(5660300001)(11100500001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2016 01:50:58.9242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
Subject: BBMASK issue
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
X-List-Received-Date: Tue, 23 Aug 2016 01:51:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0CY1PR0101MB1594_"

--_000_CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

Now I am trying to customize an existing BSP to my need.
For this, I am adding following to my local.conf so that some of the recipe=
s in the BSP to be ignored.

(local.conf)
BBMASK =3D "aaa|bbb|ccc"
BBMASK .=3D "|ddd|eee"

However, it does not work since BSP itself has lines like below in its laye=
r.

(somelayer.conf)
BBMASK =3D "xxx|yyy|xxx"

The BSP definition of BBMASK seems to be overwriting my BBMASK definition i=
n my local.conf.
I wonder what is the best way so that the both definition are effective.

I confirmed modifying BSP's definition as below works, but not sure if this=
 can be recommended as practice to everyone who provides layers for their B=
SPs.

BBMASK .=3D "|xxx|yyy|xxx"



--_000_CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0CY1PR0101MB1594_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello Yocto.</span><br>
</div>
<div><br>
</div>
<div>Now I am trying to customize an existing BSP to my need.</div>
<div>For this, I am adding following to my local.conf so that some of the r=
ecipes in the BSP to be ignored.</div>
<div><br>
</div>
<div>(local.conf)</div>
<div>BBMASK =3D &quot;aaa|bbb|ccc&quot;</div>
<div>BBMASK .=3D &quot;|ddd|eee&quot;</div>
<div><br>
</div>
<div>However, it does not work since BSP itself has lines like below in its=
 layer.</div>
<div><br>
</div>
<div>(somelayer.conf)</div>
<div>BBMASK =3D &quot;xxx|yyy|xxx&quot;</div>
<div><br>
</div>
<div>The BSP definition of BBMASK seems to be overwriting my BBMASK definit=
ion in my local.conf.</div>
<div>I wonder what is the best way so that the both definition are effectiv=
e.</div>
<div><br>
</div>
<div>I confirmed modifying BSP's definition as below works, but not sure if=
 this can be recommended as practice to everyone who provides layers for th=
eir BSPs.</div>
<div><br>
</div>
<div>BBMASK .=3D &quot;|xxx|yyy|xxx&quot;</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0CY1PR0101MB1594_--
