Return-Path: <mvelasco@aertecsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DE89E00D89; Wed, 24 Jul 2019 04:37:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.0.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00089.outbound.protection.outlook.com [40.107.0.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC190E00D53
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:37:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=XOiIYYnuS8tBDDk7VIEczzEtYnEJJtEAvTQ14H03PULWMpVS4+Icf25uHrYb3sUfhoOT4Y0/9zOeL3rY41pIhFFjUVk6rQ5zoWcONB81cT5Rf6000kYDEtUh3HcnaqNWnPvb8pj+72U+xk+F2ABf7Ggg1JF9O0bF2X2qfxtvcgYnt0wK5i6K2AuSwb+PdTiB4CTHlsyGsvt2zyeUJc4D7S59r/2pFdZ4Kuxf56DN1FCZnH8nSTEvNhgBbZFsoUVZqj0YbY+fJxGB8pzrgxIrJvV7sCyiZjKZKw7Qg8C2n4ME4X6iyF465mtge3G8FQz5R3JWLHYrQ8/ymZXwu5jTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=02zGlPsuBLibFa4MaSKCS1PbcBScYJZvg/g9Nf5+G8Y=;
	b=GVvUf1treytrfithCr1LFUtxtYHBGFuWwyl3CQ2wiFDDVV5ln8IndtvOHXpNt6EEG/h8fE6gs367fLdLFzA80znm1muVrE2/rR4XagRO+uF0z+F4HUW0LXgU+0OvA4ATzSVUzLbRmtQqo3mflPo2wYMBXjXzwwdT5gC5HtZnV41iD1Rmm7PEcfPlKCR/zkoRFcPnb8Mm99VkHf8Dr7BQh/10qtzJf7sJKa27NfmK2FeHLkTwmpCMfORf714udDszrjZMnjcB3DXGo4TiV6eQhIVtSudjXQgoSvPgeDA0t7PZuHQIpD2OVAfXiZmE4KHK41SGfIF9uFmvMXsgSDqZ1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=aertecsolutions.com;dmarc=pass action=none
	header.from=aertecsolutions.com;dkim=pass
	header.d=aertecsolutions.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aertec.onmicrosoft.com; s=selector2-aertec-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=02zGlPsuBLibFa4MaSKCS1PbcBScYJZvg/g9Nf5+G8Y=;
	b=b+R2iXGeIXFD9rmYdGSd+EgcxAPz9QnvMnuYSfW1lOghDcTCQEhptuHGsFzK9kmVegsCTH8PZ4+4MeFH3UVa497GzIh6cIiFJTOKoK1/F8q02dTmRZ+FD3GSNh/R+ILQ7HgjcVRsDItcxydvQodiC8MuoeaTTy6UzQm3y0uFVT0=
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com (10.186.131.71) by
	AM0PR09MB3809.eurprd09.prod.outlook.com (52.132.215.211) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2094.17; Wed, 24 Jul 2019 11:37:19 +0000
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::b4ed:ee1a:3ea1:c7ca]) by
	AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::b4ed:ee1a:3ea1:c7ca%3]) with mapi id 15.20.2115.005;
	Wed, 24 Jul 2019 11:37:19 +0000
From: =?Windows-1252?Q?Mar=EDa_del_Mar_Velasco_AERTEC_Solutions_=96_Aerospace_?=
	=?Windows-1252?Q?=26_Aviation?= <mvelasco@aertecsolutions.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: systemd gives me a failed boot
Thread-Index: AdVCDMxQWsmVjLauSlKKCAHC+aC7/w==
Date: Wed, 24 Jul 2019 11:37:19 +0000
Message-ID: <AM0PR09MB40668EA6FC51F3EAB2E87F23D7C60@AM0PR09MB4066.eurprd09.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mvelasco@aertecsolutions.com; 
x-originating-ip: [77.230.158.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f49cf4b-1e67-4318-7747-08d7102b493b
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:AM0PR09MB3809; 
x-ms-traffictypediagnostic: AM0PR09MB3809:
x-microsoft-antispam-prvs: <AM0PR09MB38093FB521BD3DD0FF905157D7C60@AM0PR09MB3809.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(39850400004)(376002)(136003)(366004)(396003)(346002)(189003)(199004)(102836004)(413944005)(45776006)(64756008)(66446008)(476003)(5660300002)(66556008)(66476007)(26005)(256004)(6306002)(81166006)(76116006)(1730700003)(52536014)(53936002)(81156014)(71200400001)(66946007)(74316002)(4744005)(6506007)(71190400001)(8936002)(7736002)(186003)(86362001)(6116002)(3846002)(54896002)(99286004)(6436002)(478600001)(8676002)(7696005)(6916009)(486006)(5640700003)(66066001)(2906002)(19627235002)(9686003)(25786009)(55016002)(14454004)(33656002)(68736007)(2351001)(2501003)(790700001)(316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR09MB3809;
	H:AM0PR09MB4066.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aertecsolutions.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X4Ke79wcI0ZEZWsh2ndazXYvCnRkQ/zinG7XrVwggMU+asDiGxymf54aYwiOvykvXRw+lxvJ5g/6k5aDo5E4ptYT2hBOXqVuSSnwB7JlV1CS2LvV5zxwPWE+f4EA5ZlQ0owFvvvVbuWCkN2kw5DNUQ9h0S58l9yjiV+cJNWSj17B5Y/YJXp3DAtE+uU9pmwt4M06v2WnEXa+SdXRcjh7QgixPmr4IZn7USd8K3w8/bffCBdyssqUbBirKSU6+O14Dx1f3zkxoZ934PhP1jdIBLH4nj3GTyDScod/RfDx3F0YC2jf8uqqNsMfep4VHAbqbZEkZhWLIYaLBd6tH9iiH4AG3xET3Wpo/0FU8BPEIDc7mKINj0cfjPohnwZiJJrbTpJPnycA7BxjIMTL4Te5ttZJ6bVsIi2KJJFY/0tqook=
MIME-Version: 1.0
X-OriginatorOrg: aertecsolutions.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f49cf4b-1e67-4318-7747-08d7102b493b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 11:37:19.3005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ab98a94e-6e04-48d7-be01-b54a8cfe74b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mvelasco@aertecsolutions.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB3809
Subject: systemd gives me a failed boot
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
X-List-Received-Date: Wed, 24 Jul 2019 11:37:25 -0000
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB40668EA6FC51F3EAB2E87F23D7C60AM0PR09MB4066eurp_"

--_000_AM0PR09MB40668EA6FC51F3EAB2E87F23D7C60AM0PR09MB4066eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear all,

I use rocko branch of poky and I am able to create the core-image-minimal-d=
ev and boot my target system without problems.
Now, I am interested in using systemd in the target. I follow the Yocto pro=
ject instructions, by adding the following lines in local.conf:

DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D ""
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"


However, with these changes, booting process fails and system enters in eme=
rgency mode. I have found that some people solve this problem by ensuring t=
hat kernel has CONFIG_FHANDLE=3Dy flag. I have checked that flag is set to =
yes and I have not idea how to get my target working with system. Could any=
body help me?



Thanks you in advance.



--_000_AM0PR09MB40668EA6FC51F3EAB2E87F23D7C60AM0PR09MB4066eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML con formato previo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLconformatoprevioCar
	{mso-style-name:"HTML con formato previo Car";
	mso-style-priority:99;
	mso-style-link:"HTML con formato previo";
	font-family:"Courier New";
	mso-fareast-language:EN-GB;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I use rocko branch of poky and I am able to create t=
he core-image-minimal-dev and boot my target system without problems.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Now, I am interested in using systemd in the target.=
 I follow the Yocto project instructions, by adding the following lines in =
local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">DISTRO_FEATURES_app=
end =3D &quot; systemd&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">VIRTUAL-RUNTIME_ini=
t_manager =3D &quot;systemd&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">VIRTUAL-RUNTIME_ini=
tscripts =3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">DISTRO_FEATURES_BAC=
KFILL_CONSIDERED =3D &quot;sysvinit&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;mso-fareast-language:EN-US">However, with these changes, booting proce=
ss fails and system enters in emergency mode. I have found that some people=
 solve this problem by ensuring that kernel has CONFIG_FHANDLE=3Dy flag. I =
have checked that flag is set to yes and I have not idea how to get my targ=
et working with system. Could anybody help me?<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;mso-fareast-language:EN-US">Thanks you in advance.<o:p></o:p></span></=
pre>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM0PR09MB40668EA6FC51F3EAB2E87F23D7C60AM0PR09MB4066eurp_--
