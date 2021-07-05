Received: from NAM04-DM6-obe.outbound.protection.outlook.com (NAM04-DM6-obe.outbound.protection.outlook.com [40.107.102.124])
 by mx.groups.io with SMTP id smtpd.web08.10788.1625493296019508718
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 06:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@irobot.com header.s=selector1 header.b=QAj7Wpbg;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: irobot.com, ip: 40.107.102.124, mailfrom: imoya@irobot.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AnxGK0GujG/kYSGVb+OSuhzl7JGd+UH9/bcprEnH/N0bMZEFvc/zc2sSaKh7uE62K3v1C9aowNLpjYOs75d/srzgTvhHRtUa/YXcFtnLuS19NelOJL9koAhZiaekwRO0FGuEs4Gimq+thiqzQh9/FL5ER10vG11TAhUsWn0H6ziDEX6TncsQ3/QddAAYiUgKMm2gIgT0Twn2eETI9gNJ2qF4UTt/MhIAkM3FWSPR/xiSQc/SQm7FYYR1O/PreHEwvzRjscYhBSpD7x8KIZjG8KgwL/sRvQibf/P7tmSmRib+yiZIB+qJVcXXpCxCvwclbvOd2vF64V1tVQDK26o1Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FvHEKNNVcoPqsem7LTPDcuQIXr2gjGzYBByd2YYgNYo=;
 b=kkITZx9AeXze+Oo69dy9PpN+O8CLguKTNGv34hoHTqPsddTJEXK57qs/8eHNBaiXS8DCEt+iZEop5rzy/3BH22uMylu8JP1vQXxl13jepB5ptX0DUrGVSvDCwB+Sr+qlanPyKjRNYKW8MfKU6UckJI4sy/72y60SlHvFgwXwBikxxkVmMYZowX4zlj7M1DnhpH/RYtnMnJ03+2mfIBsVWRe1HAnNA+NjT0cloDnt0TtZQMn4rMJUhj6ix8peZD+NypH11OGduPzNYN3Bm8cs1ymdSfKLaaztscks251V7YKQ7tZ6dPz3UMPi6dd+5QYFLQ+DsP+3LOTlCOvd3smTsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irobot.com; dmarc=pass action=none header.from=irobot.com;
 dkim=pass header.d=irobot.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=irobot.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FvHEKNNVcoPqsem7LTPDcuQIXr2gjGzYBByd2YYgNYo=;
 b=QAj7WpbgDz52hoLP7TBc5wtXT5ae2NOjGA8VbBy3Ts4FdG/5as0Bm7lFikxsU0TJPw4Hl20IzMhk7TRsytU8izmqHt0YB5YmHTkmE6XDjWHBOQwpJZATqqT3G0GrbGSD6+0sIBMK5V7YoHJAQmWuS9OMgQvwrKmu5pGtGblb8F0=
Received: from MN2PR13MB3677.namprd13.prod.outlook.com (2603:10b6:208:1ee::20)
 by MN2PR13MB3774.namprd13.prod.outlook.com (2603:10b6:208:1ed::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.8; Mon, 5 Jul
 2021 13:54:52 +0000
Received: from MN2PR13MB3677.namprd13.prod.outlook.com
 ([fe80::3d97:817c:69b6:d7a]) by MN2PR13MB3677.namprd13.prod.outlook.com
 ([fe80::3d97:817c:69b6:d7a%8]) with mapi id 15.20.4308.019; Mon, 5 Jul 2021
 13:54:52 +0000
From: imoya@irobot.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Upgrading connman to a version over 1.37 fails to build.
Thread-Topic: Upgrading connman to a version over 1.37 fails to build.
Thread-Index: AQHXcaSGfEEs4H4AdEuwEYqrekAFgA==
Date: Mon, 5 Jul 2021 13:54:52 +0000
Message-ID: 
 <MN2PR13MB367778F964A3AB848D4CAD4ACB1C9@MN2PR13MB3677.namprd13.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=irobot.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19ed71f4-7aa4-4b40-4e8c-08d93fbc767e
x-ms-traffictypediagnostic: MN2PR13MB3774:
x-microsoft-antispam-prvs: 
 <MN2PR13MB37745C02E706B41246BEE695CB1C9@MN2PR13MB3774.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dbNnMqifYoLRB4XCMynfhLV2C1KQu8yhWJPRBh5qO55w6BEN5pKUv+x7bMNUPDtyu5KDv1GTJV2BvWhOrSjbWg/0VbyHBTc19QEAqT1AImvk0QzrS85Dqp6sj/CjyJK1kQfZNZ4Jjd7gQMAIhP/HM4R02et/ZnvkOid2m2wTfDgLs7P3yGjL4FRmTvt+AJr2EU0iCaUvgWMM6yhaqPiSjqZBfDqWXS32afCpri2mJ8pMAXKt7T2vtICrKYt12XDOglUIHsJrm2gwKdt+loec/3M3nDUiTNfybrKYJ/1NCtHU3rsoxaulJRdlQ4+YTn6D5A4AWrqAfRWGobF4JM+hn2iKsPatZ4Pytase4wgmOhYjRSgXSIyT4ALmUdahpFszLHgy8T0DXkJenvorQhEJ1w1AfoLe40A+4Bm3uU8R0i0M/7zxY07SlIiIshpAeiHMRQSuPkrJpQaFRa9zjyV+2SmjielqPDx8ynKm1s4MQ3bz0QW1UX8JSmSvz6WinAQgIMsbeSVUt1I6ZXgGHhz6IGay7aMahIIcwTBVwK4GOOsmEMfrdwWVhiMoE1nh/mF9Ilq7n17EGKHQWV2kIt/PUh0zOqFJdcpC9+fg5C6jpfi3l1IMJTErUJFGbRjDvDkK5QITpr0SKIhPsjHKCpJVdw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR13MB3677.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(346002)(376002)(366004)(39850400004)(6916009)(8676002)(86362001)(19627405001)(7696005)(8936002)(33656002)(83380400001)(316002)(478600001)(71200400001)(122000001)(9686003)(76116006)(91956017)(66946007)(38100700002)(66446008)(64756008)(66556008)(6506007)(52536014)(186003)(66476007)(55016002)(2906002)(26005)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Z3bWqcI80Q6ggFrqEbW3DiFDuqlZDBx/7XqaTJ/bALiMnCJCgvRBBKSELt?=
 =?iso-8859-1?Q?Jd0aKKXYQ8aOSLO1T96AeL55Xofk7CPhwf4kTm+nbxIz5xrFBhoBER5g7j?=
 =?iso-8859-1?Q?BqD+fWAGpdXQwn+dDgJu6VI+nxLt9aYi2VC2FvlOI6+7CdtJv6SXQ4yDCP?=
 =?iso-8859-1?Q?eHWSXvrr8lCBhDjb7sMpea4XaQZHedZf7IMH+GE7NhYiKhmxCzf3YtT8/l?=
 =?iso-8859-1?Q?N2fHzPySLvj5VbXUW4zOjVjAnTrbwytac9WybvVaqbZBOESfLRBRvrqyHP?=
 =?iso-8859-1?Q?YjPJwQn70UmcLWwyrdCHf8uxZm8qZ9uJj09joz0UXhpKn6MvZTbVdA9A4o?=
 =?iso-8859-1?Q?+mi/DeWbdX85FBLJCUuHkeYA9RUMYEC/CXq7cfr78LUBXGuSZ0s++OIg6X?=
 =?iso-8859-1?Q?KodpyymWssN0UvF9NaWbdkW3RsJQ3aJv3/2KHQHwLuZi1s5UK6LJoBPL1V?=
 =?iso-8859-1?Q?P1ErCVJzfp+aw8K/QOoWuA4U34ACUzrM1zsy4f7q3OdAIfM9BLSLEMqxFh?=
 =?iso-8859-1?Q?G11yBkSiZTIl2TCg8RJs/drK1OUH81xzpFFW7dBVaR3UnYLwN54yP6lW22?=
 =?iso-8859-1?Q?E/YSGcq4isJLCeNmkK1eSpNBdEUJoswvC802Z+RYAe4X2Et8DLDFRVslOw?=
 =?iso-8859-1?Q?cNnjpjP7DB4eIRrQUMKZgQZFEHgANIvvmrAmJbDo/zHWOQ3WxSsc0lSxdt?=
 =?iso-8859-1?Q?fTj/2Nw2Vu9Z+OjiJRqidVcyHZq/ICBltkut6MfaEmfsIgUV+cDE+xWs+7?=
 =?iso-8859-1?Q?l6D4qrioh6TgNXFQcQDAoeVzuQoDki6KMhLGR8epXfwjThxngbxj5KtlNa?=
 =?iso-8859-1?Q?vwMLvKbpmmfWuVCXyJOfDlu7Yp2B+MugBLUJztTP9lG8Gyn9WtIejPb9yy?=
 =?iso-8859-1?Q?yHPbev5MHyH5GI96OKQX+/lttd82Q1H8oZWmX+r1c/maU/vXmzEJms/QnW?=
 =?iso-8859-1?Q?B8yQvNcxoL6cBF3aW2tRmVTR9kmI9wMMs0FCGZ7UHOKxEu74z9vRNLU/S3?=
 =?iso-8859-1?Q?4TzQvrZRPrWc1+UeE42UBlcNQkCL0KUtyesrl6lAvh8zFk1nyvT6yNfUUJ?=
 =?iso-8859-1?Q?k8a0lkuhZ9qbXlbzTgu5PuLn68VEJFfAhQPPUmvNvPXfD7H2ZK2m+5zha3?=
 =?iso-8859-1?Q?Zi/gbabRB/sVPHGjgFRZp4kcEZRmpoCC9LgNHfGTKsW+Gy5erVXnzwx3VA?=
 =?iso-8859-1?Q?JtXSquWucjoJS34JJkTiuKbaKUUkKNTV4chWc7ylgld+nVhD5jPU2/XDUM?=
 =?iso-8859-1?Q?WzKWFizAgZ84VhSfzXFbj2uMli6WRqqb88xolMwKAy7ME0SqVGv1/+no/V?=
 =?iso-8859-1?Q?d+crZghc+7Gmor3r4U2+gzzk8KDE+bbqCsAoGXSlnzbHZTg=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: irobot.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR13MB3677.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19ed71f4-7aa4-4b40-4e8c-08d93fbc767e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2021 13:54:52.1846
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a0bf7449-7b5c-485b-8795-6308895cac67
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hvyyW/HnXvfWzY4+iFDlLIn6KN9w3qQHzZYEF0FIKS9aI/iSfH4xkens3Oa56E1xGKZ4TIRVfE5aHWCvqmLOdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB3774
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR13MB367778F964A3AB848D4CAD4ACB1C9MN2PR13MB3677namp_"

--_000_MN2PR13MB367778F964A3AB848D4CAD4ACB1C9MN2PR13MB3677namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to upgrade our connman recipe to 1.39 or 1.40 version, but when =
I try to build our image, it fails in "do_configure" because it can't find =
libmnl.
This is the exact output of my connman/1.40-r0/build/config.log

configure:14443: checking for libmnl >=3D 1.0.0
configure:14450: $PKG_CONFIG --exists --print-errors "libmnl >=3D 1.0.0"
Package libmnl was not found in the pkg-config search path.
Perhaps you should add the directory containing `libmnl.pc'
to the PKG_CONFIG_PATH environment variable
No package 'libmnl' found
configure:14453: $? =3D 1
configure:14467: $PKG_CONFIG --exists --print-errors "libmnl >=3D 1.0.0"
Package libmnl was not found in the pkg-config search path.
Perhaps you should add the directory containing `libmnl.pc'
to the PKG_CONFIG_PATH environment variable
No package 'libmnl' found
configure:14470: $? =3D 1
configure:14484: result: no
No package 'libmnl' found
configure:14500: error: libmnl >=3D 1.0.0 not found

My libmnl recipe is located inside poky ./poky/meta/recipes-extended/libmnl=
/libmnl_1.0.4.bb . This error only happens with connman 1.39 or 1.40.
I appreciate any help or suggestions off a better place to ask this questio=
ns since is connman related.

Thanks,
Ignacio.


This e-mail message and any files attached may contain information that iRo=
bot Corporation considers confidential and/or proprietary or may later desi=
gnate as confidential and proprietary. If you are not the intended recipien=
t, please contact the sender and delete the email immediately. Unauthorized=
 use or distribution is strictly prohibited.

--_000_MN2PR13MB367778F964A3AB848D4CAD4ACB1C9MN2PR13MB3677namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm trying to upgrade our connman recipe to 1.39 or 1.40 version, but when =
I try to build our image, it fails in &quot;do_configure&quot; because it c=
an't find libmnl.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This is the exact output of my <i>connman/1.40-r0/build/config.log</i></div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<i><br>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<i>
<div style=3D"color:#333333;background-color:#fdf6e3;font-family:'Droid San=
s Mono', 'monospace', monospace, 'Droid Sans Fallback';font-weight:normal;f=
ont-size:14px;line-height:19px">
<span><span>configure:</span><span style=3D"color:#b58900">14443</span><spa=
n>: checking for libmnl &gt;=3D
</span><span style=3D"color:#b58900">1</span><span>.</span><span style=3D"c=
olor:#b58900">0</span><span>.</span><span style=3D"color:#b58900">0</span><=
/span>
<div><span>configure:</span><span style=3D"color:#b58900">14450</span><span=
>: $PKG_CONFIG --exists --print-errors
</span><span style=3D"color:#2aa198">&quot;libmnl &gt;=3D 1.0.0&quot;</span=
></div>
<div><span>Package libmnl was not found in the pkg-config search path.</spa=
n></div>
<div><span>Perhaps you should add the directory containing `</span><span st=
yle=3D"color:#b58900">libmnl.pc</span><span>'</span></div>
<div><span>to the PKG_CONFIG_PATH environment variable</span></div>
<div><span>No package </span><span style=3D"color:#2aa198">'libmnl'</span><=
span>&nbsp;found</span></div>
<div><span>configure:</span><span style=3D"color:#b58900">14453</span><span=
>: $? =3D </span>
<span style=3D"color:#b58900">1</span></div>
<div><span>configure:</span><span style=3D"color:#b58900">14467</span><span=
>: $PKG_CONFIG --exists --print-errors
</span><span style=3D"color:#2aa198">&quot;libmnl &gt;=3D 1.0.0&quot;</span=
></div>
<div><span>Package libmnl was not found in the pkg-config search path.</spa=
n></div>
<div><span>Perhaps you should add the directory containing `</span><span st=
yle=3D"color:#b58900">libmnl.pc</span><span>'</span></div>
<div><span>to the PKG_CONFIG_PATH environment variable</span></div>
<div><span>No package </span><span style=3D"color:#2aa198">'libmnl'</span><=
span>&nbsp;found</span></div>
<div><span>configure:</span><span style=3D"color:#b58900">14470</span><span=
>: $? =3D </span>
<span style=3D"color:#b58900">1</span></div>
<div><span>configure:</span><span style=3D"color:#b58900">14484</span><span=
>: result: no</span></div>
<div><span>No package </span><span style=3D"color:#2aa198">'libmnl'</span><=
span>&nbsp;found</span></div>
<span><span>configure:</span><span style=3D"color:#b58900">14500</span><spa=
n>: </span>
<span style=3D"color:#2aa198">error:</span><span>&nbsp;libmnl &gt;=3D </spa=
n><span style=3D"color:#b58900">1</span><span>.</span><span style=3D"color:=
#b58900">0</span><span>.</span><span style=3D"color:#b58900">0</span><span>=
&nbsp;not found</span></span></div>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
My libmnl recipe is located inside poky <i>./poky/meta/recipes-extended/lib=
mnl/libmnl_1.0.4.bb .
</i>This error only happens with connman 1.39 or 1.40.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I appreciate any help or suggestions off a better place to ask this questio=
ns since is connman related.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Ignacio.</div>
<br>
</div>
<p style=3D"font-size:8pt; line-height:10pt; font-family: 'Cambria','times =
roman',serif;">
<em>This e-mail message and any files attached may contain information that=
 iRobot Corporation considers confidential and/or proprietary or may later =
designate as confidential and proprietary. If you are not the intended reci=
pient, please contact the sender
 and delete the email immediately. Unauthorized use or distribution is stri=
ctly prohibited.</em></p>
</body>
</html>

--_000_MN2PR13MB367778F964A3AB848D4CAD4ACB1C9MN2PR13MB3677namp_--
