Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
 by mx.groups.io with SMTP id smtpd.web08.50233.1622499182919818389
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 15:13:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bird-technologies.com header.s=selector2 header.b=FwR/8cN1;
 spf=pass (domain: bird-technologies.com, ip: 67.231.154.184, mailfrom: cscott@bird-technologies.com)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.167])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7CC87200068
	for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 22:13:01 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 4D13724006E
	for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 22:13:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDeqhrfxXiufg9QH0W/0r3jvlBWBKijDTKhypGuULDnd59NgDMPntA4vjTGBR0IlW5iNYBU9SuyrkBDXCbKBczIFgIUDx7YlOYV21OIlsx58VGeLjnEPJZ3j/crWy0HCJc97CASqzjJfAFKZDIz21T02yq4DKeXgf9eje5OyQWN9I3PmeTx1icRdD201QM1gAKGMR8BHu4+gzBNB2bllaFx3btj3cBBF8tbEmfW5oxB4M/ZzxeEe0701f+xsKi0RItUhHexuX06bje9xqlB8fr6CYighBxKWxXAVazaWYNPNrrs8EuxywKx03iQUNAdlyUhJJgElCspFY38y67saZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w6nFTLFW2T9R3RIvkMG43kwdYePhWDh7IdFnsETB7hI=;
 b=TikY2b9OhiLSGXjvoD84XvM/vnzuErJYodYDthTjntqvQCARpijbNMJ1+YUD/D/SyJbCbFRmpkMlsLtlQ7qZ6U0pIuDlgiuvpN3KLGef0AB6CUX55s6G7zfRouFerto+L6KbQ+QLOSwHXjlK3K9eM/8zRO7m3gytOFjmJTQZdqYkORY7OhPbYCoIkOqcl+XjmeFfCsiV/PS7Le3AX+/j2RXpi05NrMs4BiXpCTJ/g1o43bzVBptzxAA0hbmKTNt+dnrjQR7kjfA4woUS0CD1aBRf5Or8OppltCPWbWE20Y1Mar1Y8dQD2lUM0fvgCbzAEfHfvACnET2GF+/vJmTzKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bird-technologies.com; dmarc=pass action=none
 header.from=bird-technologies.com; dkim=pass header.d=bird-technologies.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bird-technologies.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w6nFTLFW2T9R3RIvkMG43kwdYePhWDh7IdFnsETB7hI=;
 b=FwR/8cN1d+4NRu2TTXLgl4d5F59Mrexvqk4Tm2tAA/eDL6phqQbzvO0FKAbuhbjYakQEtCyQZ5SJR1VVIMeoGxi0SeT61qwf9DocdPzSwNnP2XeCXQKBGiembdn5Vll+O89Wk7DF+kfWlr6BQeVKyJMYX+WYlhTXF8xfbRBn5yc=
Received: from CY4PR22MB0006.namprd22.prod.outlook.com (2603:10b6:903:b::11)
 by CY4PR2201MB1511.namprd22.prod.outlook.com (2603:10b6:910:42::37) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Mon, 31 May
 2021 22:12:59 +0000
Received: from CY4PR22MB0006.namprd22.prod.outlook.com
 ([fe80::895a:aa89:16a2:87f7]) by CY4PR22MB0006.namprd22.prod.outlook.com
 ([fe80::895a:aa89:16a2:87f7%5]) with mapi id 15.20.4173.030; Mon, 31 May 2021
 22:12:59 +0000
From: "Cris Scott" <cscott@bird-technologies.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Bitbake failure
Thread-Topic: Bitbake failure
Thread-Index: AddWahOYaGwWfaRORlyo22+4188YMA==
Date: Mon, 31 May 2021 22:12:58 +0000
Message-ID: 
 <CY4PR22MB0006916E6957F29F955A1DD5993F9@CY4PR22MB0006.namprd22.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=bird-technologies.com;
x-originating-ip: [68.57.229.140]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1cd6c51-2d90-4cb2-e158-08d924813fe4
x-ms-traffictypediagnostic: CY4PR2201MB1511:
x-microsoft-antispam-prvs: 
 <CY4PR2201MB151140DBF4AB28942FD7EEC4993F9@CY4PR2201MB1511.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 eXEOBiKI8Up4VV74KP8M8Kd881pMfSVv+JVG2d4Nmi1KJ3SvjRKIz6ORJ33z0cLUEfprtvWIoaHKPbLGsM+JsQBA8q481vh0Us7RxzKVQWzRSp6t5X1PNrcNg6Cna0wDmN34ZOOdS/X+WbjQ2eYoig8eAIvaQXa9tRZjug+Hfo571j/DRi7EG4t1XSszTzZzq4Nond4T6O/eNHoCnkzFxkB4OiC60D8c6PqlDs81bVynjV1lqwkMrlRzvKNPHHOY2vAUg/6MBD38Qks2yLYAHljvs2i+7mEt/UpWKcBWI7oK3mzWUNJBZ8ffLStQRHhwAE/3up9W2fLiDqyyy/wCxrf4K2RX+DvkrejpRqEaDfgKYY6l0Sl6wkcz//lLByEsK83UAuK56aaKKZjJN83p2P05l/0FJ5WEHrDkCHitobxK1knEGFkc/mNTDIARTb/vK6YY4lnMJrqrWtvarhz8W/KAiPbKOLMtZDhvsoH6OcYFM9FLEt9/BlLbI3wUdCwEg0iJb71gxmPOnu34Py8RJIMuECh/MRJS42aka4oi6LFrz+5OmSSn3vQ3teaOlc0xranA8tEmOq3f24A4flANkIbgEOFpdvvajdq3bPqc04kKLaqJtzIkvSM5vZ9tvFQkRDo+87D3B+FQEpkkN0tMG2ODOOZH6U4PRlv4R0DiL8jjLM2BzGvWmt3TXPn5VBNbkXiSCe34JyQrOZdMy2VtA9ISWAgW0SCdpN/or+ZKmDc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR22MB0006.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(396003)(39830400003)(346002)(136003)(376002)(122000001)(38100700002)(66446008)(7116003)(64756008)(66556008)(33656002)(478600001)(6916009)(5660300002)(6506007)(9686003)(966005)(26005)(8936002)(76116006)(52536014)(186003)(66946007)(83380400001)(316002)(55016002)(166002)(2906002)(4744005)(86362001)(66476007)(8676002)(3480700007)(7696005)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?AtlLCXaPpLtECokagGlDM+ZMDuS2Md8p/sVd0qsMFKLKx3EsssIc3cRXgW4u?=
 =?us-ascii?Q?lFlLxW5S/pxwfRmIOfDF3fMAFr5EdVOPvOteh+FAv4jYOYZYvLGh0zjJpmF4?=
 =?us-ascii?Q?DKW+fR4fA6A8K3ezYyAMzwpihv3c/T6If3Jx5KYohgLSx4t4IOULOLBQ5a2y?=
 =?us-ascii?Q?qF7YMzD0zsaX3JGLMTjp3arH8w2DF8Nyd5pcOuqQ+dVrqXDK6oeUCsOU5nY8?=
 =?us-ascii?Q?L9/U1poRb2hKdXLHz7XHuDl6bK1Zx0eeF2/thv0cD5rAPfAPDWe4RGoi9t4e?=
 =?us-ascii?Q?yRLwzSejGBxy7GJaAWPLFk/d7zKMr5lZ6ZD7E0x34Us/2v5G6wUTFR+wJHY0?=
 =?us-ascii?Q?jE4hppMsNJ3BqS3UKT9YeUKiyEgipzOOlkZ4xR5zVG/tmiWRw7O72ETSLzvq?=
 =?us-ascii?Q?XjBiIk5Lo9rgL85N/rCmQF9z74Tk3FwQuu7psukSDfdkV7Rat3wfzAcNGHgR?=
 =?us-ascii?Q?r8OK5vak3DCJKgHqUk9BANyM1hkh32bbjbxQ1Kl5nxcQs8aJSpvsQ6tbTGyl?=
 =?us-ascii?Q?62VYS7K2YmcaBGvg6WJjZe+FX7dRzKAmSJczOORgCs40W2gY/NyTthPCG41s?=
 =?us-ascii?Q?S+RWBXGObiy1oicQkdRebjwkTlQl1/E7j3wRnYRv3ZLrkaxe4g+MXUmL0V+j?=
 =?us-ascii?Q?rY2uTZFy8GQMnVAGz37HZ7QxTO25ifrSa8IHKkUuYcuk73b/P8tH7RltbT5j?=
 =?us-ascii?Q?44o/B7Q20y+JQ7XZCUmHFIRRhkrDZYu6S9YhuHJp0lgdMLHYGYcewXOXKSFc?=
 =?us-ascii?Q?wOVF99Ly8gD408XMhxbqbpOVe10rSND9Y2YkUDyCTa4oApYtM7JQA5ZLxBOZ?=
 =?us-ascii?Q?uoTIYkuP3csdG+vL+cMQFcrhNXdjFvCCERqff583kV/RtlxvQp2JnZCynayn?=
 =?us-ascii?Q?rSx+dkAgp9uPl65f3Af/dzSA48a9ulGUpKm76UAIYoBUHQu6rE5t8PNygCv0?=
 =?us-ascii?Q?O1Vy0nQaaSzIVEC4VpyjW5Uw39X/JA6mvhjDnx05l7pvzaGxL9BaOdOJj52p?=
 =?us-ascii?Q?KLNONdUYXIX1VTL2rGtQNZPNsC9rDGpIP3x40hhQK7NsrGWRfC562O4VAnUz?=
 =?us-ascii?Q?+dI18QHK+/n06B46HHPxcw8Ggn+1wESqd13KgQjYk8S38MyWXS1mGkeA4JUa?=
 =?us-ascii?Q?ZjK9L7flgP/TDr5HkkUJXIWvehx2qsDuaLjVUw+kcHG+4/0DHztyHjJ4jP+o?=
 =?us-ascii?Q?zm0Mkbqpw0j3LUlyGOC9tViezImOiauUax+HnFIwNjLxF1N19rrXqHUmE2b7?=
 =?us-ascii?Q?RGAVpEfw18H1pthgfU0XmEl0yZr2M66W+ceatB0RVeSWmPZzlGobR42V+qFz?=
 =?us-ascii?Q?vHqOkyHcgt0R0I0pepIOao4h?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bird-technologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR22MB0006.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1cd6c51-2d90-4cb2-e158-08d924813fe4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2021 22:12:58.9282
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d98f3dff-397f-4545-896b-2aaed4317bf5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tLCLv+I/ReQEK2PX5ImF7s5Z28sjVg5tWeZeIpmD3Pp7rL3jyyuanbR/otWYOA0ShD0RJVCSKRsaOMqDj3oPGTOKCVkukBLQ9wUQCBUMPgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR2201MB1511
X-MDID: 1622499182-QYoswwe_SM-1
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR22MB0006916E6957F29F955A1DD5993F9CY4PR22MB0006namp_"

--_000_CY4PR22MB0006916E6957F29F955A1DD5993F9CY4PR22MB0006namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Not sure who to ask about this.
Using https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-ex=
tended/lighttpd/lighttpd_1.4.59.bb to build lighttpd, bitbake fails, and I =
receive tons of messages that look like:

ERROR: lighttpd-1.4.59-r0 do_package_qa: QA Issue: /usr/lib/mod_staticfile.=
so contained in package lighttpd-module-staticfile requires libc.so.6(GLIBC=
_2.4), but no providers found in RDEPENDS_lighttpd-module-staticfile? [file=
-rdeps]


Can someone point me in the right direction to resolve this?

-Bill


--_000_CY4PR22MB0006916E6957F29F955A1DD5993F9CY4PR22MB0006namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Not sure who to ask about this.<o:p></o:p></p>
<p class=3D"MsoNormal">Using <a href=3D"https://push.yoctoproject.org/cgit/=
cgit.cgi/poky/tree/meta/recipes-extended/lighttpd/lighttpd_1.4.59.bb">
https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended=
/lighttpd/lighttpd_1.4.59.bb</a> to build lighttpd, bitbake fails, and I re=
ceive tons of messages that look like:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: lighttpd-1.4.59-r0 do_package_qa: QA Issue: /=
usr/lib/mod_staticfile.so contained in package lighttpd-module-staticfile r=
equires libc.so.6(GLIBC_2.4), but no providers found in RDEPENDS_lighttpd-m=
odule-staticfile? [file-rdeps]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone point me in the right direction to resol=
ve this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Bill<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY4PR22MB0006916E6957F29F955A1DD5993F9CY4PR22MB0006namp_--
