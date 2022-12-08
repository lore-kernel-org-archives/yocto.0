Return-Path: <ivan.shevtsov@pixelsmatter.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7021C3A5A7
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 14:02:26 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (NAM04-BN8-obe.outbound.protection.outlook.com [40.107.100.91])
 by mx.groups.io with SMTP id smtpd.web11.14467.1670508143236476422
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 06:02:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pixelsmattercom.onmicrosoft.com header.s=selector2-pixelsmattercom-onmicrosoft-com header.b=R7SO5yY6;
 spf=pass (domain: pixelsmatter.com, ip: 40.107.100.91, mailfrom: ivan.shevtsov@pixelsmatter.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3ujSf/iISeqrfwH2Pxz5IPYMQMPlxqc6cjcIg+cEZoQAkN6LB1DbEo2xrRBpn1PeH9VmSglbvsvOD/b99UQUUsbnABsonHxQUovD44kucy0HSPwfxIRSCVy+vhcGUVwQam++8sbn6hQRr+A5TLW4Nn31ZF6sosJb1hWAwmy2FufzoX5GH99KdjLN/JaC2v0p+9HT0RgWf/K4KE6fJHiMPBq+UKvZ80CM8Ob2YTgXBhUV5URIPULHKSymIC6av5r2I5cPLCwtWPDqn2o9ORSvF2/rYwWY3HeS0YHiGgTn1s/abHpPnyucZ76HzFbnJ/naF761RrxD6Fa9lyRkjVC6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0UevFI0N4egIQtnSW5JxvvpEnkRTOyzfUz3dJl70IMk=;
 b=k3vfrW5LnuCU5EK5o0MEXp1reS9unPVRS/YOOwU7EiD+QCzq7cKSuQL7Oe/4xvVQPekkGVC8ewGBI3pRUa144giR5wIH8B+9tXTnFd9tp+O/w4XiQtX7IshBq9rnDcep9UkAmMggY8MjNPPhvJqccV6wUsUsNJbVQtzKnAuEmToaUvFE6H7VoQyKrUMj+orcPb69yNDDXl67AWE+SqHotHhXUPRIapYQbEJzFVARD+g5wnoV7pnJSDIK/VUumVjpapMbmLiu4foKKkJaUZzpLcoJF+e87v4HkcphSwuTg3SxAC+qenW0FYuPtpc5SVhSyxzaKHsEsPjYFr1U72O+6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pixelsmatter.com; dmarc=pass action=none
 header.from=pixelsmatter.com; dkim=pass header.d=pixelsmatter.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pixelsmattercom.onmicrosoft.com;
 s=selector2-pixelsmattercom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0UevFI0N4egIQtnSW5JxvvpEnkRTOyzfUz3dJl70IMk=;
 b=R7SO5yY6j0CpHMy7OG6VderJMZvRVwQzYbhSOrBO5xr+cxHYnEys23ylrktjLOXSGTWTE0IL6PA3nnwcvHYqW56tVx8cXDXeknt4zb2Wl8IFQtDTJ8oora4DgSBeN6Q22JM4GvG3uLqnDGM65CjcPGJPkpJd3J2oYMG4pN8dSu4=
Received: from SN4PR18MB4870.namprd18.prod.outlook.com (2603:10b6:806:1ee::8)
 by CO6PR18MB3938.namprd18.prod.outlook.com (2603:10b6:5:350::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Thu, 8 Dec
 2022 14:02:20 +0000
Received: from SN4PR18MB4870.namprd18.prod.outlook.com
 ([fe80::a86f:60c3:430d:fe5c]) by SN4PR18MB4870.namprd18.prod.outlook.com
 ([fe80::a86f:60c3:430d:fe5c%6]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 14:02:20 +0000
From: Ivan Shevtsov <ivan.shevtsov@pixelsmatter.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Prevent rebuilding native packages on a production build.
Thread-Topic: Prevent rebuilding native packages on a production build.
Thread-Index: AQHZCwWn3xx4c7dOrESbAbwpUOnUbg==
Date: Thu, 8 Dec 2022 14:02:20 +0000
Message-ID: 
 <SN4PR18MB487013BE5C8C97B1175E85F99D1D9@SN4PR18MB4870.namprd18.prod.outlook.com>
Accept-Language: ru-RU, en-US
Content-Language: ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pixelsmatter.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR18MB4870:EE_|CO6PR18MB3938:EE_
x-ms-office365-filtering-correlation-id: fe562fac-1ed6-48e3-03da-08dad924d2ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ufBrl9wm7VpUGqNyY6LoE8TMMtZPPpPkbJOnGr+2KGjEFzsTfyP6SO3r3r+PjNrDflYvi4nQ5NVmw2K0OWlGUfFAax/PLUdopEwy3RX2cG3v+hP6BoCKIpeW0A163rHpKl1uBPQIECjmIWf05kFhF4f3lzVT3MWkJ/h8rs65d6FFO1GBCB3U5/10aUiT/a/8YDxM/qZVP9jS1NckoH0b8+tMc/3FT3rkJmNRaZgE/DuQZYJgrH13nIU/Iar+qrHk0HdjR94v1haHlrbaaNszR82BNGZOQcSQIitH9jB/Y9WyZXlE3/VFxWWGLFaa1k5twqnpyno1QtKJWrawLnMUml+aI96Gu2QhvvacAiuPPqc2EL7MRHFQrjnd8D5buLWv0BtEQBvtNdW6gQhhMyiPtTgK28gQkjQnCKc6Q8gxMaK5k0u+qs5sUmiMc+Kg5OFB+V9k3SEVpJffCy037VAymtptJXhdWZ8SFb46W4Ixriks4WqIhnh1WGHmcd+hqdXv30cCR5uuajvQMaPtQVkZcEOl/rrC7lHsdei8oNv7c7xlxRacCk8Pde0AMLYYDBPpX1bHChRfA0sVnqcElo+1s0J2orDhPkPsdJgU7kG7cYTGDqIb0qYZ9oOk9/MKM1OjJYqteOkhFeSx7VSkQSVJPUZzUyNmyUoD1xBlRXCOsJEQgb4V/F5rOZ/Pi6N89hyCMd73jd73k8qU3ur3eFaIjQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR18MB4870.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(39830400003)(346002)(396003)(136003)(366004)(451199015)(76116006)(122000001)(33656002)(5660300002)(86362001)(44832011)(8936002)(4744005)(38070700005)(2906002)(41300700001)(8676002)(26005)(7696005)(9686003)(6506007)(64756008)(186003)(55016003)(52536014)(66446008)(66556008)(478600001)(91956017)(66476007)(6916009)(71200400001)(66946007)(316002)(19627405001)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?koi8-r?Q?xWuBE5eJf+AUJy/eKmYBx4mEwrhyEj4yjA8ecssumEyztFjBHneZd44ckpCg1M?=
 =?koi8-r?Q?DgxF46bty2pAkwXxaAOEUOQZLFPc0Jz7SN9ABgzxBwNDBU+GoLY2E/I2bEpaeW?=
 =?koi8-r?Q?qOvkCCCR2LIZfF7c4faxjlrUCTdHehDkIjO48GxYVdoSG2pjFcfVu8qCq3/bhN?=
 =?koi8-r?Q?rXvyy6KW0QhBme/9lWbcaw3Vp8aGgfXAUezadhRS8F+H/eZsytsIYneTmE2bqG?=
 =?koi8-r?Q?DvOGA02ZyzT1ILFPrqWc0dkaZJ/2n9QPESux1Sv1ysUh4Hr4Bx+csnyCi+pAw9?=
 =?koi8-r?Q?KxgfT1IPxVGUYrruiIlbdG/+JNWDtNF9hCF7FEdYPvzZW37EuQ90+CxpUheUHY?=
 =?koi8-r?Q?HaGMbtAwk5vZQWt4PO0C22lyStsuH7mEyHeCxqj+YYYZzaN5bwdlT7zOaKfuPP?=
 =?koi8-r?Q?UfVyGb03RoRxkfPXnaydOzjh0M1K9qNH4TV+gffgDtODLGoGBqPxsp7+YIPD1K?=
 =?koi8-r?Q?0yBHAfbc0VRJ5m13gt7lKe6S/UCdmthsgB25xnBV+ToF4eQtqkop0K6fHw8FSN?=
 =?koi8-r?Q?p/dPQTKPmqfIaz9YbHLALh/ZctxsGn4/pYms+uaR32XeAbbWKyQg1wxrDuwHf5?=
 =?koi8-r?Q?po8qCa/eloaPplfxKGBQ7sKFxe5ejElRlyYFXJXPQfZJxBoAFyqOd4Vv5Z1RYe?=
 =?koi8-r?Q?BzNBDEbRmWLZX9F0sOLTqtB7Cy7CoODygqJegqC12OrYLbKdBcyMbhU6zH3DJ1?=
 =?koi8-r?Q?OeMVDQirz737GjGWdRPUgfNV8IngVz84v4NI6pmdJCi7rjFeYWZt1M8YDLKJZY?=
 =?koi8-r?Q?C7Q2FXKAAxbTWk6k4D1tzUQC31t6GGlvdRKGHSOHR+9NbxGbfhsd17HVpjvzG9?=
 =?koi8-r?Q?ExmrtA5CsH8TX/nduVMsw+vxiykjIwg5urBiIvvCmpgb28txcZGTJPLkMjdBcB?=
 =?koi8-r?Q?iELw4oWjnj5AN1X2rYW1NlMdkGvJPFtJtTnmILb5yEftb8yRntudf1OxEoNSCo?=
 =?koi8-r?Q?WmTBxRgUGOOPYI46SjKltpvj4PaOYNEWIZbIvFEuMpGQJvKkn8QD46dF5VnWw1?=
 =?koi8-r?Q?ZUC8TyDvoq15GN92U2CcpklLr4aymTCEfyC3cBZeiHunSyKEwqrH2AHiEzppkO?=
 =?koi8-r?Q?FMVdCbz6AirH0qWqgDsIIz/j/LjGfWm0SS8HfFqgAVkapZilTaP2bUeM2HAcXM?=
 =?koi8-r?Q?BdbbUirIGleDDie0pJS4MuXIF8KRTh1PWb2G2xoRKOlQW8X3b+7Vzfl09Q4QPJ?=
 =?koi8-r?Q?HVEzpyGnSLALnTEWWCp+MJHeBP99xi30nRqGfrpmgsiLepPQ9z9WRQF3VSQnZ3?=
 =?koi8-r?Q?lHM4xuKR0/AZeJcGwts78RoQ5FbhUyk+vNjtAHGTQ6rRf4ty3xKVUjQMHzZBo0?=
 =?koi8-r?Q?mt81tu5Q+OT+JYi1kX/b2dwV3/By8X7A/zF+EP7728zX37qzvxGumK3KB1qvQt?=
 =?koi8-r?Q?R9FAeolMaLc6nEvdf+lkU5tafELpG4kJ9xT0SD64QUcZiWQGQfhGZaYG8lAqpc?=
 =?koi8-r?Q?T5FaUT+hCfQM8iDBc0CMB/VA49Hso5egvjw1bs3oxO7xX76PArxkg5F0KfVxJQ?=
 =?koi8-r?Q?pGFiIi7tUtdVCQxr3bz4WNzHMadtfS5IVl9GjcdzscF1HIZZEjrnRfdA0MlqUy?=
 =?koi8-r?Q?tJEsjAWEfg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SN4PR18MB487013BE5C8C97B1175E85F99D1D9SN4PR18MB4870namp_"
MIME-Version: 1.0
X-OriginatorOrg: pixelsmatter.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR18MB4870.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe562fac-1ed6-48e3-03da-08dad924d2ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 14:02:20.6807
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ba7e352-befd-4d38-ae2e-ecbbf38f2b0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWrbbS5d7w7s4p2v3NqVYEefnXSXG4RSe2m1Yzjkxc5fqsopcUZbC9ViWbQ1y6SG58MDNYoqFcVCowwM3K4DVX9DXpkKqLURxYKsYJessI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR18MB3938
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:02:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58756

--_000_SN4PR18MB487013BE5C8C97B1175E85F99D1D9SN4PR18MB4870namp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hello everyone.

I want to speed up my production build, by preventing from removing -native=
, nativesdk- and -cross- packages.
For now, I clean all by removing tmp, sstate-cache, and some other folders =
(rm -rf /tmp /sstate-cache...).
Maybe, it is possible to split TMPDIR, SSTATE_DIR, to place native packages=
 in other folders, than nonnative packages.
Or place all prebuild -native, nativesdk- and -cross- packages to SSTATE_MI=
RRORS.

Any proposition on how can I make this best?

Ivan.

--_000_SN4PR18MB487013BE5C8C97B1175E85F99D1D9SN4PR18MB4870namp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Hello everyone.<=
/span>
<div><br>
</div>
<div><span style=3D"font-family: Arial, Helvetica, sans-serif;">I want to s=
peed up my production build, by preventing from removing -native, nativesdk=
- and -cross- packages.</span></div>
<div><span style=3D"font-family: Arial, Helvetica, sans-serif;">For now, I =
clean all by removing tmp, sstate-cache, and some other folders (rm -rf /tm=
p /sstate-cache...).</span></div>
<div><span style=3D"font-family: Arial, Helvetica, sans-serif;">Maybe, it i=
s possible to split TMPDIR, SSTATE_DIR, to place native packages in other f=
olders, than nonnative packages.</span></div>
<div><span style=3D"font-family: Arial, Helvetica, sans-serif;">Or place al=
l prebuild -native, nativesdk- and -cross- packages to SSTATE_MIRRORS.</spa=
n></div>
<div><br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Any proposition on how can I make this best?</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ivan.<br>
</span></div>
</body>
</html>

--_000_SN4PR18MB487013BE5C8C97B1175E85F99D1D9SN4PR18MB4870namp_--

