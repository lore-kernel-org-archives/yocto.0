Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0068E81DFA
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 13:15:09 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.59])
 by mx.groups.io with SMTP id smtpd.web10.12439.1696598106461021483
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 06:15:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=fZudm9qi;
 spf=pass (domain: kymati.com, ip: 40.107.6.59, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQCTS5HLOpWm7HqRrJ5VUlnZZMrjAX66vJ0dk7d7QKgceKlQ1+608IoMhHWI7ESoThbxV/9d4QOyCQwsSkVBmxsAelJhk8yp62AT7UYMALU4VZHQDZ1CDzZ3PtH3ExEpaoLH7g/tKmTaKs7fRQHfQ7VoMXqjYB0aSWPihIUNTIUs0kQ1OzYR2VTe1MTv9oq/lYW0NknTDGsgIaNJ8XCAzxiF0G47f/srjUjLLNLAGapUHRwftf+o559oumqvvxudysg7eWpgAdz+dFI2X+BDwG5YogDluSUpQBZrTcEI3DMWVW8R/6kaEZdZ7QA69J+0MV7EC7WhL2etqaHv4GpBPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=toC1DaZXcfnCe87jRKtyKN/LKNwfLtAyHapkx5fgdHo=;
 b=c06edKBtwRLapNSRl29z9cs/DWeIt3XiGSpAsoKxlAgvYAfYYg10qaWaUY2jbEwXiNM8nUQCxl8Ry4Hj0NmnY+G+rXqhUCegIYmtCWaX22G+Kejp2dL786CHsyT+QviEsZZN8agvYFMlq1RyoceFqBzj4Zs++Qo5wSKKi66R083ZeMujrDxOYGB0gsecsJvwVb9dIJ9JzxzoFRl+mLVriPvDydyBDL44uXyk9XnhWXR5swvzha/f4ptvWQoxcXLoQCfhk7mJw8utB6ayvJErInPhzW7hXcGZOfZ/HBaRKbypGEYX3QFOlpK4A/wVkPM/+0FWkz1ON3bWL0nnMGJdWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=toC1DaZXcfnCe87jRKtyKN/LKNwfLtAyHapkx5fgdHo=;
 b=fZudm9qiZCArOyK4+x8ZQ+XbJNG/eomRd7XAVMKcgHvGQBMdSCQ65cbw3JxRQRydq2Uhk8A+cNhIoCfvxY9aT1pjlp3QFTlVrlmBsMwiRxfpEooIaZ7Wly786o0zvoHDigMY5V3JKea/yS5Nlc5z3tRa7bnVhoQmARyrfj4HxkI=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by PA4PR03MB7213.eurprd03.prod.outlook.com (2603:10a6:102:bf::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Fri, 6 Oct
 2023 13:15:02 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::e590:fcdb:f3b7:e895]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::e590:fcdb:f3b7:e895%4]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 13:15:02 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: aptly repository manager
Thread-Topic: aptly repository manager
Thread-Index: AQHZ+FcRV9BkKNlJL0SP3JL3mKr8XQ==
Date: Fri, 6 Oct 2023 13:15:02 +0000
Message-ID: 
 <AM9PR03MB701298B52D19BAF588622F2092C9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|PA4PR03MB7213:EE_
x-ms-office365-filtering-correlation-id: a47763f0-6526-436b-efdc-08dbc66e4029
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 b/A8c4gX3MFnl4V1fwP9P0F47J3Dnz6hKLHT+WiS0NJ7giWL2BJuOxtDi0k13W1XEh0HWJqRNp6e31kpJ88bkQ6/jOnFW4zXMy/9xecqAcXSyQ7XkhPfnoh3CycqLr7c7Lxpfjs0yWfg68Uzd4CNAT0QJER2vhJkhfFVCvrZ788cV67+XRvUlM/gb5NtPnEOKG481oBxyJ1jiqhAbtHt4PU/PPpE5ap4IcNHI2nyClVzQjHunTRKPEfTcU1JZxIZkOWmOuSYXtMBlcrjBpRfxFV8XqKYcl3o5Fz0g3l9L/A0YdCS9I7EyxyIxgYl0Hk5ryJoKxxviRuj6vNNUJur9lQA5hRQVd7WgXnBDgicye4+jZq9ozNJdK8vTIuP8jn7mbl5FbcKBGSqQ8fTDi0RXjQdmhvq3+fOBSR/4icoUJs/pLihmKyjocrGRqiMhjjSiO7RDh/1kXbhXXrbr4WPd8cJlXnYXjF8R0rgq53pt85CylbaM6MS/9lBI/cgilHG4c+W1Rq6dFzQLBMd4DY01oaW+yKWoLSg3NhVdo1YRyuBMDHDefFub8fLv70kOWO0Wxx+cJbwcb+lOFr8gL5RnbSUEGeAedp0f0iFUAOvDkKUSNx0tNOXRhMPuilinMRBnBLXG/Tw9G2/2gG2FJ/+bA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39830400003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(66556008)(3480700007)(2906002)(64756008)(66446008)(52536014)(6916009)(6506007)(316002)(7696005)(9686003)(76116006)(478600001)(91956017)(71200400001)(66946007)(44832011)(86362001)(38070700005)(5660300002)(38100700002)(122000001)(41300700001)(8676002)(558084003)(8936002)(7116003)(33656002)(66476007)(55016003)(19627405001)(133083001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?aaIVnAd+BH6sERj1i6kTW3+x33iF7HvHpEayhFRiDfJ1H30op6WtKVlcVS?=
 =?iso-8859-1?Q?DAXHwbCItUlQvuPvt8rY3/oUtgFot7FERQGgvAl/ZCHZP9Mw63X5hMWNOT?=
 =?iso-8859-1?Q?MxEzZeGQ//pR9RMtNS04/MmZmsTuZeOP9nzyIAt3EJjRWVShTXHqb8JFGr?=
 =?iso-8859-1?Q?Deet1Y+y+msyytJvAlLXCC3Sj59nDVjITXz1WC5QXegTwJLAACP57Tl9Ls?=
 =?iso-8859-1?Q?k7x1fGJ7YTS+gWzUWdw3EN1aRBBVQ+XdbXvHQAYEKgHqlwWtCZjl6cIS4c?=
 =?iso-8859-1?Q?HvYVTaU7oFNjg8WAoTMPlr5P5ypAMUU2K7v2us/RYp3HYORO+Aw+BfJZs5?=
 =?iso-8859-1?Q?J2i2ZLE7yo5nwKAfbh7C3IdbfbtPWJMy9aGPkEMf4CCQ+KiZVPMVnGYtEF?=
 =?iso-8859-1?Q?1J/YS7COZfy0GU1XmAYmrqUf636rRdGNDKATET3u8/9WoSwla1GLYkPWaw?=
 =?iso-8859-1?Q?MtMf1FyvyaLsXctabt8j+RpWsfjvo+Zr8po8549EAqcyf9Z8xNUfNR2sEc?=
 =?iso-8859-1?Q?DVj9fHg1V0t12UYYP+BX9juj8Ui+JQJZHAmxlZn/zU5gfJqkr5YwVy/gym?=
 =?iso-8859-1?Q?BH2GDG5dgqIrKy3D2perZDxFpqw8SVYvjMIlF3vf2S57KO1k9YTRK/Xpa6?=
 =?iso-8859-1?Q?3Lmizi8nKednGp4LkAW4Z19UT/9t3zJ9QidiPHriZkVGsoWXZvjKnIbGNY?=
 =?iso-8859-1?Q?6Kg5AO6Z+Ot3hcUNUjwTjU4ts6b8aVtMgRBx3LZO90TEaC+eEZZ0KhXLwO?=
 =?iso-8859-1?Q?NDCXyOHPIDiVmH6vc2hhqQfDnEwosNcxXFgbehnBeJSzq3nutXiD/gL5bY?=
 =?iso-8859-1?Q?jvNGjWYlTMgakFC0w6948678H/ZS/7xbHMqyHeUpAqe01/MaYHNsyCkJ+Y?=
 =?iso-8859-1?Q?3fsta8doHd3baM7XdBiH96AjSBzDhS74PefQXhw9jmcbqYAlrVfmhit8kA?=
 =?iso-8859-1?Q?QNoeDzG52kkp8yktoVWfHXq2VwDNN6ti6p/XVjV/LU3UQ4HdP+M6QJqomJ?=
 =?iso-8859-1?Q?N/iljNrZYQixy1DOb7C+qrYPEtfpoGpOwxJXMsDHx8+polZblyJDwNoerR?=
 =?iso-8859-1?Q?h4QrVFxIzly0/rNcVYOKtnLdzzCpqpCM/TxbYskvf9Qpb7MtGKEExBOeBS?=
 =?iso-8859-1?Q?Tdfo02Vf3ZJLWw7YUSjvKRUVjSaJgELMmPHdW7nc6P7f9jlrDgjacr23+s?=
 =?iso-8859-1?Q?GsFsSaLytk9OlPmC1eaUtqwCVmCammOq4uAOnWtcViATAzjdqiEBkOCXB0?=
 =?iso-8859-1?Q?OnTpfABMhP72lB7gByFwwMVachNTjf/6hDcvqK9Pb9M50MzHK672LnTUmz?=
 =?iso-8859-1?Q?NQkLUHT33tCfTn+EMzZ2CIHPDMXaQIflq5mvm5gBx5Kiv9kDdn+lCqiHoK?=
 =?iso-8859-1?Q?RDztUiq5+mdUu3CBH0EAMSUqjUvsorKfpiX3BauvBo9ePi+vQ2OC87krZL?=
 =?iso-8859-1?Q?W1ujlkuYDSiVIqQ8l9REgd76S2+VGmx1EANAh68/n3tuYpnYPXqCEHEE6v?=
 =?iso-8859-1?Q?PiUNzZtFA6WgPQvHhxOzpgUdFNVBNQGhHiUJd5pYxpcbRPeUDyahcHEypl?=
 =?iso-8859-1?Q?2HdS95AMQT22oplLYyANYLVyzlYQeguk3dmRuBPuocCq/9KlPz4nRL0+lz?=
 =?iso-8859-1?Q?ekbDlYHUijImNSjJKpakUX4KBbAwTnbp+OTnDaqPVynquwyKpO47N+TUnE?=
 =?iso-8859-1?Q?PCn+ZbJQr+ukYA/v9U/OSTZVzmaK8cW1Iwvk7dj3?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB701298B52D19BAF588622F2092C9AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a47763f0-6526-436b-efdc-08dbc66e4029
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 13:15:02.8059
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r4ytD4vFW7uXLE07lJZYrmvaKZZOO1PSOnJY2/LTQadVXgD9LgCYFokVz35Z8Bv+rSeESccMxFupikRYA9byiNiC5DvR9y0/fIloBnjXgPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR03MB7213
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 13:15:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61259

--_000_AM9PR03MB701298B52D19BAF588622F2092C9AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Has anyone added this to a yocto build?
I am sure it is possible but cant find any info, maybe someone has done it

--_000_AM9PR03MB701298B52D19BAF588622F2092C9AAM9PR03MB7012eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Has anyone added this to a yocto build?&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I am sure it is possible but cant find any info, maybe someone has done it<=
/div>
</body>
</html>

--_000_AM9PR03MB701298B52D19BAF588622F2092C9AAM9PR03MB7012eurp_--

