Return-Path: <mvelasco@aertecsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BB52E00E39; Fri,  6 Sep 2019 01:50:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.7.55 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr70055.outbound.protection.outlook.com [40.107.7.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA9D1E00D83
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2019 01:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=A332XQ0XQfuaCWugxQ0aYBOKHokl4JwKiVsO9yNV9FLVUsw4iL7sZk8UZTuqV9ONv00UPpdUH8mq5/nOCm0hktUYB0TO1so9yiOf23RmtURThirPg2RuFeblvci/Wb9N4CYNapokRqxdB/5owVcLICi5/0d149z5MnvBwLIM8w8u+V5pF2Gcp/Dn6bR7ddgtFLtj9waJANdkUSjrPW4kt8tLJVmmzHq6StHE2Vm5E1qEK0pQpmKWGOp4giQK0pdhnEapGJ039ddmIDinniFeG8pkyf35meu2Uu7p5xxEO+Q23LznFwkGr3UdhZFhK7ob/I2D0BEvFm70Ou2YNcRAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=95FQAoLRfUyYPil8T2hc1fP2snXkwthuyUZenE6UbM4=;
	b=BIb7cQDbPNcSx+UOmqh7w53lbCRQxfmi+ZXOtFzKgLxh1HfrgKZ6YpYaifEnbv+rz+9Qt2vsBI4lcjyulE5bIET1ywy/xytYiaioGvLaNktztlht42hDmNqGtc+K0VRNgzOt+A86wu/GDisVbiEr+oJ71GGCScGpqcJae4v6Rf37Oy/P74nMzd9C19ax9SJ1pd+EEOu+WCcrAst6x05eMEXUBL4yS+G8p5LMKtkYlXjkLpFpXMU+dH+XMsJ0cSoSEGmzDR4jSrXqotUAZ6fcQKy/xKpZbczORjlftIJFbeFQzgJsVs+Cf2575HUuPUinc6hxn513UarFVkspnQD2CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=aertecsolutions.com; dmarc=pass action=none
	header.from=aertecsolutions.com; dkim=pass header.d=aertecsolutions.com;
	arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aertec.onmicrosoft.com; s=selector2-aertec-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=95FQAoLRfUyYPil8T2hc1fP2snXkwthuyUZenE6UbM4=;
	b=FBXSKzzvjI+jMZMuYaAGHkNwg4r77om/mSW3QzjbKM2Ms8eMnZw3ghylzVQb/83AYoGt1+WOTSds9Ezdm5CvaAFWeOpyU9xL84tq4NKMHMBemCmd5HJMmVvV12XxXU4As7+X0EqwolGI4y1Z1I3I++xIWRDj4rd5lHPVUH4ojTs=
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com (10.186.131.71) by
	AM0PR09MB2884.eurprd09.prod.outlook.com (20.178.118.154) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2241.18; Fri, 6 Sep 2019 08:49:57 +0000
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::48d6:a616:fa54:bcd2]) by
	AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::48d6:a616:fa54:bcd2%2]) with mapi id 15.20.2241.014;
	Fri, 6 Sep 2019 08:49:57 +0000
From: =?Windows-1252?Q?Mar=EDa_del_Mar_Velasco_AERTEC_Solutions_=96_Aerospace_?=
	=?Windows-1252?Q?=26_Aviation?= <mvelasco@aertecsolutions.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: incohenrence between defconf, .config and /proc/config.gz
Thread-Index: AdVkjhqPUNjLy42xQOmzmeHDxxKLqw==
Date: Fri, 6 Sep 2019 08:49:57 +0000
Message-ID: <AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0@AM0PR09MB4066.eurprd09.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mvelasco@aertecsolutions.com; 
x-originating-ip: [46.25.25.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3162c234-323e-4080-7293-08d732a731bc
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:AM0PR09MB2884; 
x-ms-traffictypediagnostic: AM0PR09MB2884:
x-microsoft-antispam-prvs: <AM0PR09MB288429999A11E05A598E6E71D7BA0@AM0PR09MB2884.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(136003)(346002)(376002)(39840400004)(396003)(366004)(51874003)(189003)(199004)(2906002)(5660300002)(4744005)(3846002)(6116002)(790700001)(86362001)(486006)(476003)(71200400001)(71190400001)(99286004)(316002)(26005)(186003)(7696005)(102836004)(6506007)(2351001)(25786009)(1730700003)(81156014)(478600001)(8676002)(256004)(413944005)(81166006)(76116006)(33656002)(7736002)(74316002)(54896002)(6306002)(55016002)(9686003)(19627235002)(14454004)(53936002)(5640700003)(6916009)(66446008)(64756008)(66556008)(66476007)(66946007)(66066001)(52536014)(2501003)(45776006)(8936002)(6436002)(21314003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR09MB2884;
	H:AM0PR09MB4066.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aertecsolutions.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mfgdZ9tx+YEJBP+Dmh7u0d6uIABLp0cbMO3dscxrS7pW6SN62sp/H8TfNYGuajGlZ2lGZANqfBNUDgvMIbTderepHrxH4rm6KSHhDRqCQ6aA45OnItEd6VHIwOyUqM44pCJBSJE61Xm6sk4fIPqEn2CyjkJKD2YFgvVPW4dt5jFsZHpcgO3djG5k7NDMnfasTHnatUoAgh67YziQNUbSX8Cr/yDdycEprdhY68GRC0CWJiVpCMUgGGXe+kJFqIJvLdPn+DTWlAEwY4Q3sPKYDgYqoWlwjM3WpFN26qgg9vPKLLHZO9FZuw8zaQ0JPCkpPhZKf/vhSxN7LgF40VRIF+SnEhfoEV2S54TeHEl2khki3nTk9VXk129zJwcMjLcLr+3faFBBsFrujtQQCMR3C07VDblXN1SFuGxzuE+rIiU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aertecsolutions.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3162c234-323e-4080-7293-08d732a731bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 08:49:57.0694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ab98a94e-6e04-48d7-be01-b54a8cfe74b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FubuqixNTD9zJLQubGDb+CKnvWsQ4ZIHgmH8aq+0ice9kH5Gt7450DcgwktZ6a64I1EGGyDrzYVO1HMNK5UZExel87UkRoWq5dTIhcyQeAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB2884
Subject: incohenrence between defconf, .config and /proc/config.gz
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
X-List-Received-Date: Fri, 06 Sep 2019 08:50:02 -0000
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0AM0PR09MB4066eurp_"

--_000_AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0AM0PR09MB4066eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear all,

I have built an image after doing changes in kernel config by adding a laye=
r that adds lines in .config file. This changes lead me to an undesired con=
figuration, so I decided to undo the last kernel config. When I remove the =
layer that adds lines in .config file, I ensure that kernel is clean by doi=
ng bitbake -c cleanall linux-xxx. Then I build again the image. I can see .=
config file is exactly equal than defconf kernel file. However, when I writ=
e image into the target, /proc/config.gz file is inconsistent with .config =
file and it preserves some lines that are missing in .config file.

Could somebody give me an advice about this issue? Why /proc/config.gz is n=
ot equal than .config file?

Thanks in advance

--_000_AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0AM0PR09MB4066eurp_
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
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal">I have built an image after doing changes in kernel =
config by adding a layer that adds lines in .config file. This changes lead=
 me to an undesired configuration, so I decided to undo the last kernel con=
fig. When I remove the layer that
 adds lines in .config file, I ensure that kernel is clean by doing bitbake=
 -c cleanall linux-xxx. Then I build again the image. I can see .config fil=
e is exactly equal than defconf kernel file. However, when I write image in=
to the target, /proc/config.gz file
 is inconsistent with .config file and it preserves some lines that are mis=
sing in .config file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could somebody give me an advice about this issue? W=
hy /proc/config.gz is not equal than .config file?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0AM0PR09MB4066eurp_--
