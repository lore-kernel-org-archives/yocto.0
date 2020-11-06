Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6182.1604628390056951193
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 18:06:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hpe.com header.s=pps0720 header.b=jcxd1VDV;
 spf=softfail (domain: hpe.com, ip: 198.145.29.25, mailfrom: prvs=0579112d5a=sean.mckay@hpe.com)
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8A67238C0635
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2020 18:06:28 -0800 (PST)
Received: from pps.filterd (m0150241.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0A6222DY015602
	for <yocto@yoctoproject.org>; Fri, 6 Nov 2020 02:06:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=pps0720;
 bh=fMMUFVHjBEzgoxgeRj99AQmuR1nvC3558o/3Jn2kpOk=;
 b=jcxd1VDVHD6LIBW9Lr0aH4ksjfs587gyT3Bpsb8B08POUfO9ZiRKuVeiGA7jbxZsVA9H
 hMcbgo04niPQuFKAH/OwEg2tlrug9suDNzsvuYyeq8VdpuYqrNzg54SsvqtRqjKs4gzD
 WfMbSuVg7FduFexgiATbuQRNL47vXBD+dNfZU7DDVtsjOgMYT+O+EHChVSAEY0S9pgLt
 q8j/Xorg2hB1n0QcoW8d+ug08bZrUKL11gwDzOHTW/XTgIdj8OLwUk34M9H6+L7kTD2D
 NHP61xLdbm1hnxX1RkWclf4QF6yh5ADJKrNAGxr1uNAPACiVNLPGss7JQo/FMgFovZki YQ== 
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	by mx0a-002e3701.pphosted.com with ESMTP id 34kr4the4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 06 Nov 2020 02:06:27 +0000
Received: from G1W8107.americas.hpqcorp.net (g1w8107.austin.hp.com [16.193.72.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id CA2E1A8
	for <yocto@yoctoproject.org>; Fri,  6 Nov 2020 02:06:26 +0000 (UTC)
Received: from G9W8453.americas.hpqcorp.net (2002:10d8:a0d3::10d8:a0d3) by
 G1W8107.americas.hpqcorp.net (2002:10c1:483b::10c1:483b) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Fri, 6 Nov 2020 02:06:26 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.241.52.11) by
 G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Fri, 6 Nov 2020 02:06:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RbZ7zgXq/AeGNz3ei8yr+2C4W8zqzEf/352Rk3K5Q8lqJkkjtTouSlpD6pU175d3xqtrj2gbdzkMmt0saZsXBQjK0vKYCxIDNUhivbNrKJ7hokOTyclV6gwzdGP8ZTfhpkaiTPRa1lZv39qxZIxoYAewgD22d1QiqTlXklxHOjZQTjftJpPGKnw6hMAr/LaacChr7KP0MUy+rxiYcFd80A4xApMmNoqeM/Bs2c5u9ua8pOujs/uixrf4AzUrlu67C+z0MgIYktrVMEG4qMrpnyeqyQCKAh9Ui3zxruItWdsW2XyDCTcDo9E0pm0NYMXmHRMXWrWf7UhsNiX+5qPp3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMMUFVHjBEzgoxgeRj99AQmuR1nvC3558o/3Jn2kpOk=;
 b=HZBI56x3C7vYwuy76Vso2M6yiuqtF92eaZDq5QnWR8DDE6YjbIa9MeVfIm+OizoUBqTD4537t0cLv+nvUiK6gaImHESO8WqzppoLsSn5FRQz+7OzXxxl8v2Wj/5C+YZ9IfmXAyb9nrT7IrdLcVbnFeGyONqYKdK+GomwCY777BZYmfX+VVB7ZPShZgSEkzCpUUbuKT1RHnS0+8jA0HkzlwHcnvbNksq3ryfuOMK+KZgSUUQ+qy8MHdra0MHw7TU4l6Ez2LvJhFqUSAzijhT7F859IHeeQZsaJ0rqwCQa3Vm/igRMVF+cO9QVkoyGqZpCVlXitk8x59GiEamgb9Jz6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB1103.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7715::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.22; Fri, 6 Nov
 2020 02:06:25 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::f4f0:8706:373d:c73e]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::f4f0:8706:373d:c73e%5]) with mapi id 15.20.3499.032; Fri, 6 Nov 2020
 02:06:25 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: What part of do_package automatically scoops up source files?
Thread-Topic: What part of do_package automatically scoops up source files?
Thread-Index: AQHWs+AZkD2lVp5GVEecxm8EcSBi/A==
Date: Fri, 6 Nov 2020 02:06:25 +0000
Message-ID: <TU4PR8401MB11511DC2E786C4604908756C82ED0@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none header.from=hpe.com;
x-originating-ip: [73.222.208.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 55ce7cd8-a9fe-4294-9752-08d881f890ba
x-ms-traffictypediagnostic: TU4PR8401MB1103:
x-microsoft-antispam-prvs: <TU4PR8401MB110351999A8447D8F2F5D85382ED0@TU4PR8401MB1103.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8v0PCdd+vdvYrwszBISvyexZ8osRcNM9jwATZeuMdyf/RMQJ4RbhrVQonsXEIq8o0+EPQlG17I+Kb6EaD5YvVYiZdjOYkE0/yGsA436rtmzmGG1OpvInhHcgrzh7Ily4IOn2TrUjG0Ix3mu7xgVyIyGvIl+r1amF9DriN2/0Czt0imlkhC5khuaV4lbGhScqAgCVRCIp0b/Gs2PFb+BF7RqIaFcLiJDKCpQGibmM4mNGD9XUthMV3zrDBJt6feok9COEd3Z4RN/jw7tyQXgjLakJ2jtKVmfSp8pZCSQWT352u6moe9alC1ryMLGzcTx/QnH/SawrUMofrCpcrUQ5g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(39860400002)(136003)(366004)(376002)(396003)(346002)(64756008)(55016002)(316002)(5660300002)(6506007)(52536014)(8936002)(66946007)(9686003)(66446008)(86362001)(26005)(4744005)(2906002)(91956017)(76116006)(66476007)(66556008)(33656002)(8676002)(478600001)(71200400001)(83380400001)(7696005)(186003)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: DBPGxbAPzH4TM9XZaYjM+MnECWuyp9vmuWiqqfbS/u8rjxUqmDL+712J5yJmsR/MotptCXvFyk4+aTgC0jgyvY5UL+SXl7FzCIGn9z9da49MhFsy7LKhTWeL1NSlaEe9DC0SjeBCIF677wxlOBfeHwQsVk14k+YZ+IGylbASbZyq+z6njtamUiMhQ1eMycH2AUNWWpVDUhTzz1QcSpGVvmF+L9yOWhVAOmGeYxSJEeLnsto3ogjksGM+QKtxEc8KNkVYkNrBSs0DFMp/zmoWR45/udwXH1D9FzBAdten54B1KirO+hCON0X1LS4jliLpq/bhyttJLg2PpgpwjJgsW0lCIPp8iTfZuDC9L5mLOJyFbkJN/3Rl6eY5+Yy1EkYUEb8FEEe01APPxu9myca1ceqedMauRWNYFQ55GgXODviWafE407xbyVaJuSkWebXHA+XHuV6Uc5iFyyiUCpyJe1/u2xcjz2VrfhJ98oSQg+SeYCjxRltrQIk7L0pZebQcstJvgS0r62hjBGI8SAqXtGmwx594uEv/IZZ5WQ1aPeGE5xmWm8UBykVsStfQCR7ylm1kdicShxTP/zGdYdldyO0zPXT5PZU/iCeatwJynesnx4aoOgid1a80/LspYq3lrmtCavidw64Di4pUeDSAoA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 55ce7cd8-a9fe-4294-9752-08d881f890ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2020 02:06:25.1365
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xIjn6+bPek1ZSWkr4BurpvAGFzdgOxqgACSmndIP3az8dmkenCsD4NC+qRI75gg2HuaBo174rUKAGydnxQU+Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1103
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-05_16:2020-11-05,2020-11-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 clxscore=1011 priorityscore=1501 impostorscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 malwarescore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011060011
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB11511DC2E786C4604908756C82ED0TU4PR8401MB1151_"

--_000_TU4PR8401MB11511DC2E786C4604908756C82ED0TU4PR8401MB1151_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi all,

I=92m hoping that someone can just answer this off the top of their head =
=96 don=92t bother if you have to dig much.
We=92ve got a C recipe (built with cmake, if that=92s relevant) that seems =
to be otherwise identical to our other C recipes, but for some reason it=92=
s not picking up the source code during the do_package step automagically l=
ike our other recipes do.

Anyone happen to know offhand where in the do_package code that gets scoope=
d up so I can focus my attention there and on the variables used therein? (=
my run.do_package files for those tasks are about 3k lines of python code. =
And a quick glance through seemed to yield obvious answers that don=92t see=
m to match what=92s coming out in log.do_package)

We=92re on Zeus at the moment.

Cheers!
-Sean McKay


--_000_TU4PR8401MB11511DC2E786C4604908756C82ED0TU4PR8401MB1151_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=92m hoping that someone can just answer this off t=
he top of their head =96 don=92t bother if you have to dig much.</p>
<p class=3D"MsoNormal">We=92ve got a C recipe (built with cmake, if that=92=
s relevant) that seems to be otherwise identical to our other C recipes, bu=
t for some reason it=92s not picking up the source code during the do_packa=
ge step automagically like our other recipes
 do.<br>
<br>
Anyone happen to know offhand where in the do_package code that gets scoope=
d up so I can focus my attention there and on the variables used therein? (=
my run.do_package files for those tasks are about 3k lines of python code. =
And a quick glance through seemed
 to yield obvious answers that don=92t seem to match what=92s coming out in=
 log.do_package)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We=92re on Zeus at the moment.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers!</p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_TU4PR8401MB11511DC2E786C4604908756C82ED0TU4PR8401MB1151_--
