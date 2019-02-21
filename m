Return-Path: <A01630030@itesm.mx>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1218EE00CAF; Thu, 21 Feb 2019 14:20:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.73.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 40899 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Feb 2019 14:20:18 PST
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
	(mail-eopbgr730113.outbound.protection.outlook.com [40.107.73.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAF57E00B5C
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 14:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=itesm.mx; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=B7YtdYHbMtpM1EpgaPTZY9htyer85tb7IZwzh1Ka334=;
	b=fGbQrLK8qw7MMZIzKeRZfeQje2r3SackmA9BLI1UqjqnjbWfwyoi09yvP3HW0iXkJ5LC75Iy9Z9Gc8GsksUw++6w+67s/SAiqlNj7K/KRw9RFpu3TLvDsQhnS4x9uymz6dKj6bRQVmBMlvWcooJs3QfHqK2IlkHi2VRPsxlyVAE=
Received: from SN2PR05MB2782.namprd05.prod.outlook.com (10.167.19.139) by
	SN2PR05MB2461.namprd05.prod.outlook.com (10.166.213.6) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.7; Thu, 21 Feb 2019 08:46:53 +0000
Received: from SN2PR05MB2782.namprd05.prod.outlook.com
	([fe80::e11a:29e6:50f7:b359]) by
	SN2PR05MB2782.namprd05.prod.outlook.com
	([fe80::e11a:29e6:50f7:b359%4]) with mapi id 15.20.1643.012;
	Thu, 21 Feb 2019 08:46:53 +0000
From: Carlos Pozos Ochoa <A01630030@itesm.mx>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ROS support on yocto project
Thread-Index: AQHUyb3x+/MIsWfwPUW2Gq12b65fwqXp8F7L
Date: Thu, 21 Feb 2019 08:46:53 +0000
Message-ID: <SN2PR05MB27825DE242F3023B08C40EE1C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
References: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
In-Reply-To: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=A01630030@itesm.mx; 
x-originating-ip: [189.141.230.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81044d44-80ab-4a41-5044-08d697d920b2
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:SN2PR05MB2461; 
x-ms-traffictypediagnostic: SN2PR05MB2461:
x-microsoft-exchange-diagnostics: =?iso-8859-1?Q?1; SN2PR05MB2461;
	23:f9o3u3DganyrkbtT4S3JBRjEuZSjtF10sFAAAFw?=
	=?iso-8859-1?Q?llvXfYtRqfIrCTRD04dQxEnqcM2NY/yCeq/T96Pa/NsNmZP5tq/0kwxaAV?=
	=?iso-8859-1?Q?a3XfpbINqOpzZXKW6VzGqFZU6FR+PwJGm1epXjMSoKOebXuGeOib0f9gTK?=
	=?iso-8859-1?Q?MgT0Ml5oriJLoOIs9Me68qB77oVs0ZmhNI5TkIG0AaFzUGzPAtsVslrHxl?=
	=?iso-8859-1?Q?mRn3JMbJPh6gOhMySJ2rsJRMi943tGBnB2V8YOuwm/+l3IGIguPqKkvMnG?=
	=?iso-8859-1?Q?OTN5/SShRIUdDkKc+uTiYfULddFqiJzsN/XOWJq8tsAw06rd/H0bVApvZ3?=
	=?iso-8859-1?Q?1hwLCTRFhQLT+mp3kWiBwlp8ZKdtKj/NBjv0LMp/BInYjKc3WnX2jATEV+?=
	=?iso-8859-1?Q?YeIehlK0ukm6t2QuJ0nf1PppDknP0/9UwHHE478VAXwoVC0Lt/bbyk5/4V?=
	=?iso-8859-1?Q?PKctlcEb7eebmZhSpSGqxBqSpX2o8MPZtZ94a/45hwpVa2WMVDjDQBBfKO?=
	=?iso-8859-1?Q?prUV/aZJJDGeMN5uzbgbHxM08La9QQTp2rqkyvM5x/LtwTt4Frd8T+9OaX?=
	=?iso-8859-1?Q?6vObsNwn4PSAioclN3CL7bIg6eFIU0YEh/T+HkHsSbB7xx3IaEWYOZyoM7?=
	=?iso-8859-1?Q?1+1Ct2w+/P46nW24LVBc8qzDHJDHd1geQyeFsINThhyN3Y/Ezhocp4+jqk?=
	=?iso-8859-1?Q?i2HVWr/YHl9BUCc33U1Ve+IFvDxI2Y1vGK+jLTpqPv04fy7NjzWZv4LTTc?=
	=?iso-8859-1?Q?Mexh+BhDeFLkqssW4J/F2at8/Yu+xfQCJtKDKXvIVHkPyYL2cgQwtTVkCC?=
	=?iso-8859-1?Q?c52fbA5a9kzAF/Jp5PVYJyD2ovOXii8SRtB1AeVynjfA/TX0b5jXfz2ed9?=
	=?iso-8859-1?Q?r1YcVcb5G/RUjDDE8i1eJXpctAEx5J9WXql43IhFPupa7bhLnlAh2yMeeZ?=
	=?iso-8859-1?Q?P/QZpdM1t5CxlSdbeXKWzDq32As/PKIg6DiIqvrAxa6XL8eUHXAp0mnsga?=
	=?iso-8859-1?Q?iWM82dFgSQnOgkOBcmRKXU7MlojOg2dx66N7ZEjHQXsQcMibVBaAXzaeqP?=
	=?iso-8859-1?Q?IbnzLOJpoaBSkHPq8MGW+WnWYKeVid5cSt9ZD44f4zg6OWL8oVELs/w7Qt?=
	=?iso-8859-1?Q?UqI4V4QyjeghKvFV5UIJMwVg1lnwmlgejBdQeY1PoD6Xid83FHmDeBf/ZA?=
	=?iso-8859-1?Q?i6fR1hw3bZ4qcEQt6c2beSKME0Gvs+sdQczfsZtnMPg7+6K1FPbwX2YBb7?=
	=?iso-8859-1?Q?h0kA+1AH9osWCrOCQpQ0NLqmAjNslW2cMas8lqxzisWmk0BLu5yloZ//9Q?=
	=?iso-8859-1?Q?SgJAWqn9SN2ByPQZ6DvCihe0Mm3cHKYg1Ql/3DOd8KtjybciuWAQ6UNn3+?=
	=?iso-8859-1?Q?EXYLlCTgSvbWe+Rlrwbvia+s2YwL8LJnNPkSAF41uwNsiEIGQoquXUW1Sn?=
	=?iso-8859-1?Q?uRu35sFmqwEA0A=3D?=
x-microsoft-antispam-prvs: <SN2PR05MB246174FCCF6D609BA1B0200BC17E0@SN2PR05MB2461.namprd05.prod.outlook.com>
x-forefront-prvs: 09555FB1AD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(346002)(39860400002)(366004)(136003)(189003)(199004)(8676002)(81166006)(81156014)(74316002)(93156006)(2501003)(2906002)(53936002)(478600001)(316002)(72206003)(1730700003)(14454004)(8936002)(68736007)(74482002)(97736004)(5660300002)(786003)(2940100002)(256004)(4744005)(66066001)(86362001)(11346002)(71200400001)(55016002)(26005)(486006)(186003)(6436002)(6916009)(9686003)(71190400001)(105586002)(476003)(446003)(25786009)(54896002)(2351001)(76176011)(6116002)(5640700003)(33656002)(7736002)(3846002)(99286004)(102836004)(6506007)(106356001)(19627405001)(6606003)(7696005)(81782002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN2PR05MB2461;
	H:SN2PR05MB2782.namprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: itesm.mx does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mnAtOOAxKXZsycDMfAwFxABcF6800r3hSVgJc0Aeh04W8QVYtJW1ymrh3xmc3GVCP0yrfM5d3GHfvrD+zqkrFi9WCa1s8Qo1IItoydMUPhWp1eQIRjiHUzem1/sRMTIQZcqjiDSsWoDD+8o10eLrQXICup4CFvFN9mVligzJ+F2EIr6NBTaxLgYQElGybuITCrRMNi9JdxpkE8eLLF2OhUkgyXZ5IOT5XpKX/LWJQLm+Gn9Y659u1rTIYNAp8yfyONqLRoqVjp5dh2h7FHs8DxgpyBup0J2UPz4ue+L966HRtxCq3ETcWZ0EIEv0CAp6Aw2mf4MKAGuVvuJptOYhuQtg+pgex24y4m6EYyTrSe91a9M4nBG0YKSpVYf9nXzFZnhMMS14Fn8wu9rR9eSkIQ37Xc0tW6KRh2YUegxXENc=
MIME-Version: 1.0
X-OriginatorOrg: itesm.mx
X-MS-Exchange-CrossTenant-Network-Message-Id: 81044d44-80ab-4a41-5044-08d697d920b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2019 08:46:53.0296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c65a3ea6-0f7c-400b-8934-5a6dc1705645
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR05MB2461
X-Mailman-Approved-At: Thu, 28 Feb 2019 08:21:22 -0800
Subject: ROS support on yocto project
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
X-List-Received-Date: Thu, 21 Feb 2019 22:20:20 -0000
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_SN2PR05MB27825DE242F3023B08C40EE1C17E0SN2PR05MB2782namp_"

--_000_SN2PR05MB27825DE242F3023B08C40EE1C17E0SN2PR05MB2782namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,



I recently acquire a Renesas R Car M3 board which runs on an embedded linux=
 image build by means of the Yocto project. We are currently using YOCTO 3.=
9.0. We are looking forward to implement ROS kinetic libraries on this embe=
dded linux. Does the yocto project supports this libraries? In the case it =
does, is there any special process to install and run them? Or is it work a=
s a normal linux distribution?

Best Regards


--_000_SN2PR05MB27825DE242F3023B08C40EE1C17E0SN2PR05MB2782namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<div style=3D"color: rgb(0, 0, 0);">
<div id=3D"divRplyFwdMsg" dir=3D"ltr">
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<div>
<p style=3D"margin:0px 0px 10.66px"><span lang=3D"EN-US" style=3D"margin:0p=
x; color:rgb(33,33,33); line-height:107%; font-family:&quot;Segoe UI&quot;,=
sans-serif; font-size:11.5pt">I recently acquire a Renesas R Car M3 board w=
hich runs on an embedded linux image build by means
 of the Yocto project. We are currently using YOCTO 3.9.0. We are looking f=
orward to implement ROS kinetic libraries on this embedded linux. Does the =
yocto project supports this libraries? In the case it does, is there any sp=
ecial process to install and run
 them? Or is it work as a normal linux distribution?</span></p>
<p style=3D"margin:0px 0px 10.66px"><span lang=3D"EN-US" style=3D"margin:0p=
x; color:rgb(33,33,33); line-height:107%; font-family:&quot;Segoe UI&quot;,=
sans-serif; font-size:11.5pt">Best Regards</span><span lang=3D"EN-US" style=
=3D"margin:0px"></span></p>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SN2PR05MB27825DE242F3023B08C40EE1C17E0SN2PR05MB2782namp_--
