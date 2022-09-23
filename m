Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCCEC07E9D
	for <webhook@archiver.kernel.org>; Fri, 23 Sep 2022 17:24:39 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (NAM11-DM6-obe.outbound.protection.outlook.com [40.92.19.47])
 by mx.groups.io with SMTP id smtpd.web08.217.1663953872609441305
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 10:24:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=IL6ntjMb;
 spf=pass (domain: hotmail.com, ip: 40.92.19.47,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SH++YqiwPrIZNTw/+m8ZBn/1p848Z5zfpf289L3BxK+kQ0pXiQhVMN7gszJwACtkeb7cmcalgZDcR3+quaJ05F4byEB2hgl/NJc5BK2hwJMgQcW5pS15gbS8Ytd8PLceGQIrqQavG2TTVPLHh/JW8rggPL9Un1kcb6JeGuxGW5BLbBKOwFlVlR6jjXw6zuV1T2UB4AI1qSyD/nkR5IhPy7bLRAUFL99ySVUEXy2/N6jbz9eXuBD0cvIiNNm1Q7Lnp45YXPpFu/19nMQ50eFq0A4ALv1hxqfqejMKnnBavJq6BJ8s6hkVr81htOg+D54xOLkcZcT8SR5zcvX3aoyAYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jH208JbsKfAESj1tsASSJueMhVbqII5ekqQ6pJj87E0=;
 b=N4PI38/24TJo66h9NhE+7epSoGfR5o33ylrlqwFRoyPW8CCBcCbiFb42uG3ya+rXt6/ajD8KCDebjQSIz5cUz8GpmCJWWVJWFJADZeeyyanXE3lHmrJjVKSSBIboFLGTMtlJg3iJqY6qhAkcj/U1zQWATgABdC48VlHfDXb8/r+KYg7RMHj1C2hLZZCxr4Wj3HEIvURm4PIev77kMqj+gO0V6drOe2cCihhLuepvZh78IPEfR4yQGwzkMf6VJktTFdPmW+Au51H66moFmQ0qKmwXIOcXGX31vQt5y7UAyD8odXXqHzHQAm9h+HG244XSJ1YnE9aGLl4+Hdv8rTfyiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jH208JbsKfAESj1tsASSJueMhVbqII5ekqQ6pJj87E0=;
 b=IL6ntjMbHB/svMMZ9aezQIwt0SGPgPKZ8tQf2m6b3ILNEsB0GVjVHo29qgvacS3hwAyR2misYZFuT6wqRDOSKYfcsA1sRWx1WSEJBPWmwqEUAAM6FRm1B4mdl0RrF93Frju9+UCp56I4GQJBEdNw1NPq9akvrcSURNPMU9+Pa25kESYL5nf7dDRh/Xu5HTWDS5pIC88JEVWeIeG9LWWEBS1cWXg5/uDAnlS6rthrqlmt171bzD2DzF/l91rE/qxkNBx2SC4U5RT92gjMvgCfR4V00WYDZuRFGdeR/g7Erf7PubOnX6MZ5+NVQvFdX9XHN9XZ4C+9H8pYLVaJ5L0MdQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1824.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:436::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 17:24:31 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Fri, 23 Sep 2022
 17:24:31 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building vulkan-samples
Thread-Topic: [yocto] Building vulkan-samples
Thread-Index: AQHYz032zzVeru4P00at/wAoDBI5H63tBs2AgAA7rgY=
Date: Fri, 23 Sep 2022 17:24:31 +0000
Message-ID: 
 <PH0PR84MB1835A49FD63B22A0E89B966CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB18354240D7ECB34DC1D1F61CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-eH--escv13Q1nAEBzZqRkZbP7D8sMWqyRQFPJzB8fZA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-eH--escv13Q1nAEBzZqRkZbP7D8sMWqyRQFPJzB8fZA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TVQMoq1LoBmYKIrSZvGlpqvox4BqgO0v]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1824:EE_
x-ms-office365-filtering-correlation-id: 1be51c68-ecc1-401c-bcf8-08da9d8879d7
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 C8E671BGy0wcpfFsMYa5GTFr6ehZpdDT0qyLyzWkqSzoL3KsVlTjq0BM+e+6Z1xi6jqa0jl02rCHSp+grtnzOySdmVPXfDYcvNJa0FaufnzMGKhb1gZuDjHhIhFOspBkZ2EhQTe+5b1rb4VXMDcLzcfF8hrWyThK+8FastvBA+HHly8Wf3fiy/QcnbKSr1MmdX0dLSeDFY9baUPsfffLgBl69hNJKLonSog5ibP8wdfAyGYGu7wezDtuWWPQDEn1aqzpkOM0XW/d9zBA7nwYu2o24Msk8V4V/zVQlo+pH4jUKHBx5vqYGqSIxIoFgNt48z4Ejm7tO6wH4ZFAT98K3IawW7JTZOk73V/AaojDkIvymN4h0bkn/JyYWldkzP2tyU3tSQMoTNXQqnFUQyqdxwFbNvxReQ8izAJS8nQDyb8mZMeiAwehvRy0zgbpd0bbNrJU/rsawnfU/qg1EW/GDPmpsUJMMZ+6v+u+qDdzLyMMyNfFL5QO5hDrKCzgkkU2+Q3jyRw/+cdtuJbKId+VNOPVNduMeMMQR9r337LKNsG33+VWEFmCATI/HaFZJx0VyGVVKfj3ySDzMdL9mHfanOQAkzx/fjiQhoAMqjgWmqnUMjGzzXK4n7NvxpWL+0RusCyUrCfYRxhbxUpj6kOiQEe7gkDap4yDH6eOEkrwM8P7xRRKxwub1zZDKJ+dNnI7
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?pVPOvpJgXMiquM5V+KuuWRNoNbv/Hup7apubZjd1kMcVwFQcI1C4Icy9JG?=
 =?iso-8859-1?Q?GQHRVm1kdXY4QFYXPxKxfLDzs8DniQ33k0ZgmsCJs7x9P1AWJ/uoNNZ3Lf?=
 =?iso-8859-1?Q?SpjinpRvWwXNPndo98QnAQ5jrEWbgHqam777P1PGF3FxbWTGCsWEsDu57Y?=
 =?iso-8859-1?Q?wYlxZRtvgKzkaEHp6zsH+A+ceXGmmgYRRvaAMZGmfcnKEQr5AOdQawHAMc?=
 =?iso-8859-1?Q?pdL+xOa6BmI9iSc5imqbboHvKgH/v/j/ycrkY7UQCYAmUjX7+ot5tO9dJd?=
 =?iso-8859-1?Q?YZ6Y6X+35uxlHLNfbPOwMGsP3OE4tFo7e5t4BFnEgFUb0JKUAt5mLtf5zR?=
 =?iso-8859-1?Q?Z9o55riU0zZk1FJb9dUkCT0ZKqYX4RPqpkXhkGPdiqHgzZWV8/dGbzZv9G?=
 =?iso-8859-1?Q?9Bq1sWQJtO19I7fxnlUKZKHTEfgSZfkJJbDJlyx+uY72uKCfjKebnAz2x5?=
 =?iso-8859-1?Q?lVJw1dXjohqeX94i71G2o45pBARK7IH9YCvbSHL3UaQlc970PQnFAQcR6Z?=
 =?iso-8859-1?Q?WSvJ+b5a00Fp0VCdQDAm/j6kLB6vifPZUxAP3m/jl5xx6oVytCTDh1SRp2?=
 =?iso-8859-1?Q?I4DyTpTnwpZfKhLLwJ9uOwqFf4LS+Q/io2HacojvMWp0ipnej/+aDZ1YQo?=
 =?iso-8859-1?Q?USC69c/nXiHIVpkrqPs5Gn+ZWnM3gDZRowk0iUW5QdnL52L6kXLZoohk9I?=
 =?iso-8859-1?Q?jn4tDLfQYvh2vXWGwSP4sIxAySmTknJp7w+kRBonhoVRNkXr01hSqI+B9z?=
 =?iso-8859-1?Q?9otvrn8LorlJ2lfC+ceMHiMTjfmnV7oo+mzILMTDR0TBr8aKXqrZ+UcTMc?=
 =?iso-8859-1?Q?OLNuCHczv/0KgMlAkT0IQrLZiVk9iRy/SUIy/x53FiyDrqAR88P4zGlT5k?=
 =?iso-8859-1?Q?LZnGsb4OFbMnUV3rLiwFD5K46swySZFd7TmVZr4sFk0xjapfp8w2iVAG+N?=
 =?iso-8859-1?Q?wz5zWpgMrW6GRWqPgIw0f9zj2JD5YHBuQbbMUD0ujdCZgLFTmOP5viJnhq?=
 =?iso-8859-1?Q?KjcwpNr34t50ODmFlavodAJDhpvaUeBlisKCl0oK4/9MUeMB76hXGhqeYr?=
 =?iso-8859-1?Q?mOkJstqwLytzpwK91GM/w7g5aRLXw5tZSDdXizqLhrFB4T22uGWd5BdYqn?=
 =?iso-8859-1?Q?qVEIcdyAJaAiUMoN4JfoR1gJuj+Yq3n073BkvYyRi3iMeltcczKrBmoOqC?=
 =?iso-8859-1?Q?DOryEITqhdfteFtgNQ5rlrx4Zvn4D527urPUhCpLBecF1C70U8Zh15qBDd?=
 =?iso-8859-1?Q?hqSTG8+yjWONg+qNlx7lGRoO+8bryPsFFH9juywL+XqlN0LIHwqcKwiFlC?=
 =?iso-8859-1?Q?ojXI?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835A49FD63B22A0E89B966CC7519PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1be51c68-ecc1-401c-bcf8-08da9d8879d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 17:24:31.1172
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1824
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Sep 2022 17:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58147

--_000_PH0PR84MB1835A49FD63B22A0E89B966CC7519PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for looking at this.
Can you tell me why the vulkan-samples_git.bb manages to install spirv-cros=
s but not vulkan_samples although the third_party directory lies directly n=
ext to app? I'm puzzled what the standard conform solution would be to gene=
rate the path to build/app/bin/aarch64 for the install command as I can not=
 find an environment variable that has it.

Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Friday, September 23, 2022 1:45 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building vulkan-samples

I finally got a moment to look at this. The binary with the samples is
being built (you can find it in
$WORKDIR/build/app/bin/x86_64/vulkan_samples), but is not installed.
So if you want to get it packaged for targets you need to adjust the
recipe and add a do_install:append() section that does it (plenty of
examples in poky/meta). Patches welcome.

It's also a bit sad that no one has actually used recipe until now,
otherwise we'd know sooner.

Alex

On Fri, 23 Sept 2022 at 15:11, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> I added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL but it only installs s=
pirv-cross not any of the samples am I missing something? Regards
> --
> Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58145): https://lists.yoctoproject.org/g/yocto/messag=
e/58145
> Mute This Topic: https://lists.yoctoproject.org/mt/93869516/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_PH0PR84MB1835A49FD63B22A0E89B966CC7519PH0PR84MB1835NAMP_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks for looking at this.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Can you tell me why the vulkan-samples_git.bb manages to install spirv-cros=
s but not vulkan_samples although the third_party directory lies directly n=
ext to app? I'm puzzled what the standard conform solution would be to gene=
rate the path to build/app/bin/aarch64
 for the install command as I can not find an environment variable that has=
 it.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Friday, September 23, 2022 1:45 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Building vulkan-samples</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">I finally got a moment to look at this. The binary=
 with the samples is<br>
being built (you can find it in<br>
$WORKDIR/build/app/bin/x86_64/vulkan_samples), but is not installed.<br>
So if you want to get it packaged for targets you need to adjust the<br>
recipe and add a do_install:append() section that does it (plenty of<br>
examples in poky/meta). Patches welcome.<br>
<br>
It's also a bit sad that no one has actually used recipe until now,<br>
otherwise we'd know sooner.<br>
<br>
Alex<br>
<br>
On Fri, 23 Sept 2022 at 15:11, Edgar Mobile &lt;heideggm@hotmail.com&gt; wr=
ote:<br>
&gt;<br>
&gt; I added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL but it only install=
s spirv-cross not any of the samples am I missing something? Regards<br>
&gt; --<br>
&gt; Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet=
.<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#58145): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58145" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/message/58145</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93869516=
/1686489" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/mt/93869516/1686489</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_PH0PR84MB1835A49FD63B22A0E89B966CC7519PH0PR84MB1835NAMP_--

