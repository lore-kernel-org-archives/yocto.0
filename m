Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.124])
 by mx.groups.io with SMTP id smtpd.web09.7389.1624020857230621960
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 05:54:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@exaleapsemi.onmicrosoft.com header.s=selector2-exaleapsemi-onmicrosoft-com header.b=BM1R+uVa;
 spf=pass (domain: exaleapsemi.com, ip: 40.107.138.124, mailfrom: rakesh.hs@exaleapsemi.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IgXXlh05JV6ExHn9aLDCIkBc9Vaev/wA0MD4N5vuAd+2Yg2NN3cF3cc5fGLIgTgax3amekiFsHwZfEPXSwETbZV1Ya9DnVh4N6Hffotc1Z8AYhEBk4WvTPfy9zF9hTYhKjkBZF2uT9JIamNEkixfSzUW5w4nHO9+5uToBQ1BGgbA5h0o8mIL22hvCkF1kUYX32cLEoDifsmAQ13ftXBuDPpLwOCcy8alyJL2pKNe/KMHxcH/T+J//M+OmRacl1RnYycnF/G6vT8Juvrzj9KXHW2tmHaqEzebiXhHdbE4hQt2ZwK5K+YgyoU3rx2BcQXvbj4hS4KtS6Rs06F6Ka/4eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3Om4LO2qgcUYPX+rKnyr1nvEtDCdz7ojy7z9lrpR3M=;
 b=oDtDtPhwBRAriy8JMVDhUh9LukcTH1/1MnOenj9oKRSDSHzA/5FwYzpqSNOA/mrHIGHfdAiRS1378Hx9nyrEP8m+wVEaoTZ90+ftwtjo1AzTf7ewMldY4o5AKgdbPsAnM1mAu5aDYuZ1SmsfsT8cTLGVU5k2SiN1g8jMul8KD39mQpOXcbVQmK+PZX4ORe8g6/Pbw7mHyS93ABzcpxOTqGrB/n22FWqT9uEanxb2k7zXe2M+VG5+cxK4CPS2Gfytvp991vNmnkrMeEzwCGX96RcDFkpEzh3wU5Y7ZDKl4fa5Lv5iFZPkC6ugoxghj/jxynZyG/10ZWzgAiTxdKFAoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=exaleapsemi.com; dmarc=pass action=none
 header.from=exaleapsemi.com; dkim=pass header.d=exaleapsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=exaleapsemi.onmicrosoft.com; s=selector2-exaleapsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3Om4LO2qgcUYPX+rKnyr1nvEtDCdz7ojy7z9lrpR3M=;
 b=BM1R+uVaKfOp4iaPQrN3okdDpYXo9YhPAMYZ98TvD8wK7NUHhIF+2gr/5I0N7m38GmnYuSZlfmrG0QWuWaWcW6T5+V/4iGPYkDeDL3BfYPlSeLmjp49qHyR4GbEAulptNdFGhvLl/UmhXczT60eYxSVV8j0V3007VxIvKRwwLsU=
Received: from PNZPR01MB4144.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:19::12)
 by PNZPR01MB5357.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:2f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.25; Fri, 18 Jun
 2021 12:54:12 +0000
Received: from PNZPR01MB4144.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d465:c903:545b:ab51]) by PNZPR01MB4144.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d465:c903:545b:ab51%5]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 12:54:12 +0000
From: rakesh.hs@exaleapsemi.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"lavkhush2208@gmail.com" <lavkhush2208@gmail.com>
Subject: Re: [yocto] cmake verison #cmake
Thread-Topic: [yocto] cmake verison #cmake
Thread-Index: AQHXZD2Ss973/z3Yr0+OhhC3UOzNuasZuOJy
Date: Fri, 18 Jun 2021 12:54:12 +0000
Message-ID: 
 <PNZPR01MB41449E736FE0B46DC01A7E1CF00D9@PNZPR01MB4144.INDPRD01.PROD.OUTLOOK.COM>
References: <y6Mh.1624019354276585273.R2sE@lists.yoctoproject.org>
In-Reply-To: <y6Mh.1624019354276585273.R2sE@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=exaleapsemi.com;
x-originating-ip: [14.98.179.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30454f60-3c4c-4612-a967-08d932582bcd
x-ms-traffictypediagnostic: PNZPR01MB5357:
x-microsoft-antispam-prvs: 
 <PNZPR01MB5357D0048F1625A8F9B0208CF00D9@PNZPR01MB5357.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uzVekBQ4f9PGicypOo0GBPmcyKd9r2uUaa+VxkYpCqC9KKLrXyYHj1+kgOmm+3qn4qveVL87u95hlLs4+u0CnbfIWRmiIp8qNgumT+D21Fzvb1jjb/IXy0DV48tA3xU+BRy9maiNYbXT8zYpedR3imrcrJHUwXUMKXxS2tUqTimOt3lob6GzyqW97vWp9UN2i95AA7wrNnEMBvs3hg4aj7WdchUY670Sv+6XV1uDAXSdX3hzBQYBRoJJ75FTHHF99VgwlbyNhyYfrbI1PlQOosnmy9thHs39l+/zDZaJBLUaHhjcfHK4nooa3CHE+M48UXgeAREe6/lVId6Rj1TC7G63mJTo2gIKBIxrL3kPZBdRp+L+q3Fpk0ofw/xmLrZPtoHxctkhTfsnuKflhkSDBHgTKPgSpnIWOl7Jy0h/pCBGJmc83i6tKDiB9+6+Mk7mr/M7YoMl0z1cWX50V7PqicaSZyhf14ODtu+Tfce4rhYs0L8LQ+//vR29/fh2DQqKXfiKHGsVlN6NMGZZZ5yYjIuyr/DrxsSzVjiXLg/dgO65r1HClR2UbGYbozFe9KYF0ueOWAid0EII8kepWQC+AAkvAQRfUCN4rNDrDUtH+LU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4144.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(396003)(39830400003)(346002)(366004)(376002)(6506007)(5660300002)(66946007)(7696005)(76116006)(64756008)(55016002)(122000001)(55236004)(478600001)(38100700002)(66556008)(33656002)(8676002)(8936002)(2906002)(110136005)(86362001)(66446008)(186003)(19627405001)(26005)(71200400001)(66476007)(9686003)(316002)(52536014)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?MrVvfgVKET6da0NeyKxIFgD1TQEwm22+pNjtI1P5wmHsPmizki/3LJAJp4/+?=
 =?us-ascii?Q?o1fTzSbVw5TL27N+WGvGlzX3dDZnSy6NmR8YXPejQJiVFgUFferSX6tgL3fK?=
 =?us-ascii?Q?0qeZm2Wq7XlVAQ/Nzt1afXu1076a3UvR1gYtt823wHUwhHMaKr5XJylJsJeF?=
 =?us-ascii?Q?vc92uuL4DQfz16oQE4HUQo5TeR5DgNUZbl4WiIY5sSHIKeka+ranHKMNbm9d?=
 =?us-ascii?Q?Xj7kCCS94+a0lcQlaYy/+VwOziB80u39ipfIa8lDopUhCRcabA2mUGohUK4X?=
 =?us-ascii?Q?RpDz1dcsCeOCQtUywlh6CfITnucOzbd2lkuGCvvD4PQFMEi4tAPhjF6KFuC0?=
 =?us-ascii?Q?HmI4I7r+W2dnxr33kD7n1nV2rhsP2bTCJUhD8f7RoGOOeddimk+xMGzNQtz3?=
 =?us-ascii?Q?WA8LWQ/t51weO9lUjxXSx/sZYYjqgtYIg6eUolR5cxeIeEkq33Jp0PB8ZYdN?=
 =?us-ascii?Q?JIxO9QWPikC+VbMo206EFGP3QG/Zsn9B6quGz+rScr6oRn4EjnNWWejPlSzL?=
 =?us-ascii?Q?QWDifjFk9UJn1NXhfWat1HCBeJUARV7U8kyMenkU+J1U/fH7iKZiN8h2V6po?=
 =?us-ascii?Q?JxzeO7mhCUPRaKr/6mT+xkSQ4ZmWSl/fKQ8NGT53AMRhwEqeruIJgaiYLceR?=
 =?us-ascii?Q?Kx1PfQYMoFwOlzxUKJuw3QnBnlqzpEH4APJHN0wG8nYkQX9/B1k+gw9/6M4c?=
 =?us-ascii?Q?/sx07ydPJdxSkoRTUZEkQCp+4CkMOGXqrMZfvDwMIrfJ+6GEDh0gihyfQTRX?=
 =?us-ascii?Q?iXcI3XA30ykcgb/UI1MHz96ZBc2xNy1ghw8V+Oq53fLkv3V3811GjIVyc6cD?=
 =?us-ascii?Q?aCfURBukny6uN/1OcvJzfr9VyPXLpwxX3Euf46DfiltrU5pnEeUtWfUzPNq1?=
 =?us-ascii?Q?+gfVKqWAeALBBuORLUdhft0OzCgHcJVh0ZECm5yQQKoltYz3D2jA/bZBOqTu?=
 =?us-ascii?Q?3YQfy4n4HhaIPt+Wz5OQ5vD1+hNQosC3V0vP/EkXt3AUMIOmkzYzCXx8JmyU?=
 =?us-ascii?Q?U/umTHxl6G+n2zxrOR/pqzvsIDYkmYN99Re6/70JfdWZEs2q6/kPbTxs+uve?=
 =?us-ascii?Q?Nhp9s8Jc28y2uVxP4Y8TzwNWSFn2hVZ9y6j5ERR1uzDK6OiIgOxS6rG5lyWw?=
 =?us-ascii?Q?OibWRkJUVcksU/p2KIBP+6dZyRWtQ6TAZSa4bx+anqmX4+6BZPIZi6UhyGJ0?=
 =?us-ascii?Q?H0vYyGyChNeGm5JjBUKYm0ZdGBndo4VtkNm/aqyUrgwCzBo3JbLhbx/9ICyY?=
 =?us-ascii?Q?Sg35bvlNPX/WFRzd9cULYM/VkUO7fKqXhBNg4trq/t8PPQ6ZxQ/B0P/me6X1?=
 =?us-ascii?Q?Dcs=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: exaleapsemi.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4144.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 30454f60-3c4c-4612-a967-08d932582bcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 12:54:12.1880
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 34df156e-9bc4-4450-9e80-487c0e7f9471
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j1GBDipSfvbE4iT/bxfikphLZgQOhsD5VPQheoRZ9CioYyXgJfvWWO2ZTj5DGWJD7RRQf9LMiLs6Q3dhrQCzSCz72ut0Z82glibPJBG9WN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PNZPR01MB5357
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_PNZPR01MB41449E736FE0B46DC01A7E1CF00D9PNZPR01MB4144INDP_"

--_000_PNZPR01MB41449E736FE0B46DC01A7E1CF00D9PNZPR01MB4144INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Kush,


Please check the recipe what you created and add the below line in recipe.

inherit cmake

It will resolve the cmake issue.



Rgs,
Rakesh H S


________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of lavkhush2208 via lists.yoctoproject.org <lavkhush2208=3Dgmail.com@lists=
.yoctoproject.org>
Sent: 18 June 2021 08:29
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] cmake verison #cmake

Hello Guys

I am using pytorch-1.9 version using github source,  but i am facing an iss=
ue:-

ERROR: pytorch-v1.9.0+gitAUTOINC+ecc37184a5-r0 do_compile: 'python3 setup.p=
y build ' execution failed.
ERROR: pytorch-v1.9.0+gitAUTOINC+ecc37184a5-r0 do_compile: Execution of '/h=
ome/kush/package-create/kush/sources/fu540-build/tmp-glibc/work/riscv64-oe-=
linux/pytorch/v1.9.0+gitAUTOINC+ecc37184a5-r0/temp/run.do_compile.14902' fa=
iled with exit code 1:
Building wheel torch-1.10.0a0+gitecc3718

raise RuntimeError('no cmake or cmake3 with version >=3D 3.5.0 found')
RuntimeError: no cmake or cmake3 with version >=3D 3.5.0 found
ERROR: 'python3 setup.py build ' execution failed.

if something is missing, please update me so that i can modify.

T&R
lavkhush

[EXT]

--_000_PNZPR01MB41449E736FE0B46DC01A7E1CF00D9PNZPR01MB4144INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Kush,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Please check the recipe what you created and add the below line in recipe.<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
inherit cmake<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It will resolve the cmake issue.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Rgs,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Rakesh H S</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of lavkhush2208 via =
lists.yoctoproject.org &lt;lavkhush2208=3Dgmail.com@lists.yoctoproject.org&=
gt;<br>
<b>Sent:</b> 18 June 2021 08:29<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [yocto] cmake verison #cmake</font>
<div>&nbsp;</div>
</div>
<div>
<div>Hello Guys<br>
<br>
I am using&nbsp;<span style=3D"font-weight:bold">pytorch-1.9</span>&nbsp;ve=
rsion using github source,&nbsp; but i am facing an&nbsp;<span style=3D"fon=
t-weight:bold">issue:-</span><br>
<br>
<strong>ERROR: pytorch-v1.9.0+gitAUTOINC+ecc37184a5-r0 do_compile: 'python3=
 setup.py build ' execution failed.</strong></div>
<div><strong>ERROR: pytorch-v1.9.0+gitAUTOINC+ecc37184a5-r0 do_compile: Exe=
cution of '/home/kush/package-create/kush/sources/fu540-build/tmp-glibc/wor=
k/riscv64-oe-linux/pytorch/v1.9.0+gitAUTOINC+ecc37184a5-r0/temp/run.do_comp=
ile.14902' failed with exit code
 1:</strong></div>
<div><strong>Building wheel torch-1.10.0a0+gitecc3718</strong><br>
<br>
<div><strong>raise RuntimeError('no cmake or cmake3 with version &gt;=3D 3.=
5.0 found')</strong></div>
<div><strong>RuntimeError: no cmake or cmake3 with version &gt;=3D 3.5.0 fo=
und</strong><br>
<strong>ERROR: 'python3 setup.py build ' execution failed.</strong></div>
<br>
if something is missing, please update me so that i can modify.<br>
<br>
T&amp;R<br>
lavkhush</div>
<div>&nbsp;</div>
[EXT] </div>
</body>
</html>

--_000_PNZPR01MB41449E736FE0B46DC01A7E1CF00D9PNZPR01MB4144INDP_--
