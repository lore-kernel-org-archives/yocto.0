Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web08.9092.1605206664566619171
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 10:44:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=AeCO5PsM;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1605206664; x=1762886664;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=OYqLsMVQKxmbulQvIESM5SRiBIjAdEyRxAVDac77OP4=;
  b=AeCO5PsMyUjAOSwSQ20L6i7u639gqHvioG/lxaMGfANUI/wjM68VC5o7
   lYEW6+IvIWVdYGAIDCjKKeSnsstl6RUTAEh6iWx45fI1TfpzUMHWh9Ahc
   ChHAmqAiVE2zNUEOAc4pGt+defTDRg0aCHIxsgf1/KqeZpR+rsMgKtMXc
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3A0oIkjBEIbdvP19iipR0LkJ1GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76pc2ybnLW6fgltlLVR4KTs6sC17OJ9fm6AidRud6oizMrSNR0TRgLiM?=
 =?us-ascii?q?EbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ/iOgVr?=
 =?us-ascii?q?O+/7BpDdj9it1+C15pbffxhEiCCybL9vLhi6txjdutcYjIdtLqs91gbCr2dVde?=
 =?us-ascii?q?hR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+PG87+MPktR/Y?=
 =?us-ascii?q?TQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxVD+/4apnVAPkhS?=
 =?us-ascii?q?EaPDMi7mrZltJ/g75aoBK5phxw3YjUYJ2ONPFjeq/RZM4WSXZdUspUUSFKH4Gy?=
 =?us-ascii?q?YJYVD+cZPehWsZTzp0cAoxW9CwmjBuLvxSNHiHD5xqA6z/0hEQPa0AA8A94Crn?=
 =?us-ascii?q?LZp8j1OqcIVuC1ybHFwTvEYfNR3zf985bHfQ46of2UQLl+bNbRxlcxFwzbiFWb?=
 =?us-ascii?q?tJLoNC6R2usDrmaX6uRsXv+ohm48twF+vCavydkqioXTg4IVzVbE9T5nz4krPt?=
 =?us-ascii?q?21U1V0bsS6H5tLtyCaLJd2Td0nQ2Fzoio11roGuZuicSUM1Z8oyALRZeadfIiU?=
 =?us-ascii?q?/hLsSvyRITFgiX94Zr+ygxm8/Eavx+DzSsS50lZHoCVZn9TQqn0D1xLe58uER/?=
 =?us-ascii?q?Z/8EmtxzaC2Q/P5uxLIk04i6XWJ4Ihz7MwlZcet1nIECHxmEXzlqCWd0Mk9/Co?=
 =?us-ascii?q?6uTgfrrmupicN5duigH5MKQhhNCwAfgiPggJRWib9uKx36Dg803hWLhGk+E6nr?=
 =?us-ascii?q?PXvZ3YP8gXu6q0DgFP3osi6xuzFyqq3MgCkXQII19JYhaKg5LqNlzMJv3zEO2x?=
 =?us-ascii?q?jE62kDhxwvDLJrjhApLQIXfdiLrhZrN961JEyAo00NBf+4pYCrEfL/L3XU/8rM?=
 =?us-ascii?q?LYAQU5MwyyxubnE9Fw24caVG6TH6OVKqXSvkWS6u00OeaDepQVuTbmK/g5+fHu?=
 =?us-ascii?q?iGQ5lUUBcqmu2JsbcHG4HvJ4LEWFeXfgn8sNHX0Eswc8VuDmlVmPXDBJa3uzX6?=
 =?us-ascii?q?8w/jQ7B5inDYfHSICtmruB3CKjE51NemBJFE6MHmnud4meXvcMbySSItR/nTMa?=
 =?us-ascii?q?TrisUJQu2guwuw/hy7tnNfbU9TMdtZL4ztR6++rTlRQq+TxuE8udy32NT31znm?=
 =?us-ascii?q?4QRz4227xwoVB6ylqY1ah4gudYFcBI5/9TUgY6MoLTz/B9C9DqQALBedWJR0i6?=
 =?us-ascii?q?TdW6Gz0xScgxw9BdK3t7AMio2xDfwzKxUfhSk72QGIdy46XXw3/pPcF/xn3akq?=
 =?us-ascii?q?47gB4pBdpIPnGhwbN57BXZVLPPiFiTq6u6afEcwDLV7zXEim6Pp11DFh93WrnC?=
 =?us-ascii?q?RWoYZEbdsZL+/EyFQPi/Dr87NUxcz9WfIPh2bYjKjVhDDM3qOpyKeWuz3WSwCB?=
 =?us-ascii?q?OgybaFbY6scGIYimGVQlkDmBwU1XKHLhQlQDamqH7ZFCZpF1/kfwXr6+Y04Ceq?=
 =?us-ascii?q?SUQoyCmOblZ9zPyk/RUJguSGTPEe1a5Cvz0u/WZaBlG4ipjzDNybqgd6OO1nfd?=
 =?us-ascii?q?4j7VEP/iqZijc8dNT0NLxvmFMYNQFwuVjj2g5fAIxNitkxsH4v10x5LqfOgwAJ?=
 =?us-ascii?q?TC+RwZ2lYu6fEWL15h36LveOglw=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DlAwDNga1f/0HBJQpigQmEbYE2CpVWi?=
 =?us-ascii?q?haQL4FoCwEBAQEBAQEBAQgBGAsMBAEBhEoCghwmOBMCEAEBBgEBAQEBBgQBhlE?=
 =?us-ascii?q?MgjcFAgMfAQaDCwEBAQMBATkUNwQCAQgRBAEBAR4JByEHCQEUCQgBAQQBEggVB?=
 =?us-ascii?q?IMGglUDDi+wZXSBNIQ+AYEYgkQNgiQJAYEuhluBE4cuPoQjPoIbQgWBJwESAYY?=
 =?us-ascii?q?XBLdXVAcDgm2JD4segVSFCiuDGYEqjjeOfZNRinyCbpJlAgQCBAUCFYFrgQpwc?=
 =?us-ascii?q?IM5CUcXAg2XJIVEdDgCBgoBAQMJjFtcMl8BAQ?=
X-IPAS-Result: =?us-ascii?q?A2DlAwDNga1f/0HBJQpigQmEbYE2CpVWihaQL4FoCwEBAQE?=
 =?us-ascii?q?BAQEBAQgBGAsMBAEBhEoCghwmOBMCEAEBBgEBAQEBBgQBhlEMgjcFAgMfAQaDC?=
 =?us-ascii?q?wEBAQMBATkUNwQCAQgRBAEBAR4JByEHCQEUCQgBAQQBEggVBIMGglUDDi+wZXS?=
 =?us-ascii?q?BNIQ+AYEYgkQNgiQJAYEuhluBE4cuPoQjPoIbQgWBJwESAYYXBLdXVAcDgm2JD?=
 =?us-ascii?q?4segVSFCiuDGYEqjjeOfZNRinyCbpJlAgQCBAUCFYFrgQpwcIM5CUcXAg2XJIV?=
 =?us-ascii?q?EdDgCBgoBAQMJjFtcMl8BAQ?=
X-IronPort-AV: E=Sophos;i="5.77,472,1596499200"; 
   d="scan'208";a="463179646"
X-IronPort-AV: E=Sophos;i="5.77,472,1596499200"; 
   d="scan'208";a="446026165"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto "zeus"
Thread-Topic: [yocto] #yocto "zeus"
Thread-Index: Ada4655XkpGu+2/XTAO/9E8TyS2IKAAYXyeAAApp6DA=
Date: Thu, 12 Nov 2020 18:44:20 +0000
In-Reply-To: <5c222c27-5f97-9ffc-ddf0-7fd774da5442@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1646D6F56ED5BFF3.4377@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


All things being equal, would you know why I might see

	"NFS: bad mount option value specified: minorversion=3D1"

when running app under "zeus" but not under "rocko" ?

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: Thursday, November 12, 2020 1:40 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; yocto@lists.yo=
ctoproject.org
Subject: Re: [yocto] #yocto "zeus"

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.



On 11/12/20 4:03 AM, Monsees, Steven C (US) via lists.yoctoproject.org
wrote:
> This is probably a simple question, but since I am new to yocto there=20
> is a lot to learn...
>=20
> How do I establish kernel access permissions for the "zeus" kernel so=20
> that when my application is up and running, (or an application startup=
=20
> script), can create read/write files for access/updating in the "/etc"
> and "/dev" directories ?
>=20
> In the few cases I do this I am seeing unable to open errors...
>=20
> Note the same code appears to work correctly under "rocko"...

you have to provide more context to help you more, but usually /dev is pop=
ulated with devtmpfs during kernel boot. and similarly /etc is mounted earl=
y on. So access permissions could be mounting issues perhaps.

>=20
> Thanks,
>=20
> Steve
>=20
>=20
>=20
>=20
>=20

