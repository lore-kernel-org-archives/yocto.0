Return-Path: <shrikantvaishnav@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F096C4167B
	for <webhook@archiver.kernel.org>; Sun,  5 Nov 2023 12:04:42 +0000 (UTC)
Received: from IND01-MAX-obe.outbound.protection.outlook.com (IND01-MAX-obe.outbound.protection.outlook.com [40.92.102.101])
 by mx.groups.io with SMTP id smtpd.web11.28525.1699185876033510559
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Nov 2023 04:04:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ismFgNFz;
 spf=pass (domain: hotmail.com, ip: 40.92.102.101, mailfrom: shrikantvaishnav@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eg30sYHxWOeAeSdgWRb7Xko8cpfW0Kx3Em//DdxK79rrZg2faWXWOm4UvmbxsrFgNhAssaEUpWtaLecTGRc7TcfaAJuSVW24ihbw5Xj0Bx9juzcaFHS7Rni7qIRuTbs9XRZ3Qd//cK+jwGEgzdI1Qc/br8NZO7IiAdOSxZxkWTntbtk5jelBHLIlc9dHGBlfA8hCUSljLkrbsZlkjA/2xuKDDhxITt6xZOEmay8Ih4JlgqG6qDtypiW+IwGbfrASy9fPVvBsh8p1jij0vejnu4jLcLRlURvn8qoWu837W52esHC8gjS/kvFZn6hDrTxEfOiPZoMKlo7cGTGe22NuJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vjlt9waRysypUDwmHNmNsVTfRyGP7e/Y+K+H8IAdEoY=;
 b=I+UBJz4epk//YtLjM3ZfYB8K1RpIaLDweb4hS7fNF/gryQ9LIDOy7XRyytuuv3EUVJw+zwQaIjPyruCW1DC+dz/yOutOmYBCysIyX23BL2JA0tezSkHiJshXc0Qw24wM8hslMDY4XuY4/xup0eZpNTPjmn1ttOUrzFD97jPqzwiam2joniFkqcwrQpw89XgD3JoiZ8Mvypk5f4YjMkft/EQJDsgalO6U3k1HuQMk0E81f4Nm+OVDkGm4VDBGltDt784hgzdYLhtjF7gI4dht2ILievNOOw5I8NmAZ6OjK2CUfXcWdBmVDDHt8K2aLTCB7yDi1wOirrXKLo96+xBehw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vjlt9waRysypUDwmHNmNsVTfRyGP7e/Y+K+H8IAdEoY=;
 b=ismFgNFzjqaIbL4dDlALFzPq63PnY0o9Ilr24oh+vE9ZJ5199BtNXb1JEgJOQxCXiODHHaWkLH86XsEiSdoolEUQoR/Rnlc4s9nZnP/fkbFY82yg2pwceWDQcnBBaa7NZ9TuDKR8ZqErDNtkuCoZtMhluXf6tstjk9nb7xCKcCTee/s3FvabNfARfJpukwLB3OTlKZmohqARi/W1Q6YP4L0BDdZMKEx6DdHEyOy3HViWqQtZ2Sspn6PORLSqiR4pL+3zmpsamV0YZBIMZNiymGAKMeRo1RahjEFIuQtEqi4r/R6WIPMmWsXKubCjLD0Kp+gTcmCkY3gx/7tPHZy1vg==
Received: from MA0P287MB0516.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:bc::11)
 by PN0P287MB2290.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:188::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.27; Sun, 5 Nov
 2023 12:04:27 +0000
Received: from MA0P287MB0516.INDP287.PROD.OUTLOOK.COM
 ([fe80::a636:97fa:f1d7:8a4a]) by MA0P287MB0516.INDP287.PROD.OUTLOOK.COM
 ([fe80::a636:97fa:f1d7:8a4a%6]) with mapi id 15.20.6954.027; Sun, 5 Nov 2023
 12:04:27 +0000
From: Shrikant Vaishnav <shrikantvaishnav@hotmail.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: Private: Re: [yocto] how to add tkinter in Yocto?
Thread-Topic: Private: Re: [yocto] how to add tkinter in Yocto?
Thread-Index: AQHaDzdsPGHaJk1cV0GbIa/NrupEWLBqfeyAgAEZ95WAAAoXyg==
Date: Sun, 5 Nov 2023 12:04:26 +0000
Message-ID: 
 <MA0P287MB0516AD06500AE33AD7D9431FC3ABA@MA0P287MB0516.INDP287.PROD.OUTLOOK.COM>
References: <2efe609e-b54a-40d3-b12f-cfe6ad441179@gmail.com>
 <17154.1699176566812471423@lists.yoctoproject.org>
 <de5721e0-d27e-43d4-b072-2de9e12098c4@gmail.com>
In-Reply-To: <de5721e0-d27e-43d4-b072-2de9e12098c4@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hhCvZ+PQlVMk8JvcRdGqJLrlX1zm0NxooPGPyo9Ht+JuSBAFz/RbXrZBSNwLjqcl]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0516:EE_|PN0P287MB2290:EE_
x-ms-office365-filtering-correlation-id: 69e4319d-4893-4593-0fce-08dbddf75bbc
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AGvy+QzBS+GA1LTTlHxM5ohcIwAPMY2u3n6GeZp4GQFbT5hgPKbwNo2kuBBhaou2W+jaj3kO6ARHyWlLAfOnRoZFIB/NCNB3iZbQjz1rocFh6/RdqT9qlYPzhELOi9gzn9H3iIxoXVxAMiFgb9ZGJfNr3nh1bUlmLDG1jpmWxvOfjXlzEJx1sVQ+AGbdlr7YJ8yHmN20s6qeS56tnmBfSzIPXeNhn58C0HM8aqk6ycWgsa8jclkOKxgbkkbNdCc4nfrjHH+U9qdnYS9b/MrA6jvyfZBZncxVbvVQHkOnECXm4Ntd/Ah1/BeadZVLgCO1rNNKOP5Q1bnMbbFI5Qg7G7FJbG9YN02sRcbetDP4aPKm+lqdPU/fesOwU3d1mh3r2Pgo7cpsTtK/fXy1vjqv197SQ7JIdQogG6PKXM3Rc3dU7k2mOIy1pSkESpHoZesXwz2JO2JgYXIiUTiRBHo3BqhLgLH+fB0J63LyjH1A+v5KyiIJrSNBDZP9sKY2cXu0pGjDcF1oGnsdrq8JCJ84NyJogapcp2Umy75fxJpKNCeg7IeL2yBCOYHD3seHTo9q
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?dZXJvQx/0GGLRiljvL+YcSI6t7v4AF4n9TSXaW7wbr4y3Y2MG+d6TqlDMNCn?=
 =?us-ascii?Q?ubIPnIHDk753C1MLCRuuehKjWIhQ7z4FU5MB+gVltT5DafLOG/I+RZjuyZiC?=
 =?us-ascii?Q?nDwV0YgoNPNA7DyYf1lVXr9itt554ZPPC6pLYbsRzmtoCGXoCxT5QmulKjAu?=
 =?us-ascii?Q?zxWtGI9KKXpllMKixg3aaBzNBETta0f3Mhkod2Ev3gXn8HgQbN+877XLAOfq?=
 =?us-ascii?Q?Ordk0xThY/k1YwoSf2yvaHuWOJPVARfenztjajKDdmfPnQ19gxqOCs0oVlcO?=
 =?us-ascii?Q?NZuIQiPur6VaHSbCVyii+lwDq7CopWNa0tXheQ6IuIdzNHomVCCEu5Q6LFik?=
 =?us-ascii?Q?rLcn4zUQVPW26Y8nTbHRwRl3xA/9dYVltR705Q1lpPq2Xgqfz9Bsio+yoyCz?=
 =?us-ascii?Q?mgkxUw759kcjesTrhemGKHg6PQn7BxRqo7NgXLncmSzxfT4vDj1fXMHOam6u?=
 =?us-ascii?Q?HlTaRqnP3DnXHEPjvRjWhvuGjNtc39LH1dBPhf2g58OjhPFSNWvBPJauL3hS?=
 =?us-ascii?Q?+iWzk6x5ekxesOdmy17H13n+StyX2vNfU58/bv3SY4Gmhpxqj9R8yT5TLYRw?=
 =?us-ascii?Q?f/mYZT5kqoLjpKFmd7gbr6WWSMw8ZtCD6si9QsboTlCyYjb0FPwwpABcQM95?=
 =?us-ascii?Q?D4n6oLbXkhq3SV9/NMTYAtA/Ryh3DiPYlo3bjrnzuntCZRJg4R+DIY3jdXAE?=
 =?us-ascii?Q?2XSIXtBeXLymGUmRTkzCbWB+jMjR31SSVZHEoDFlFKdamfI9+BeWQqsMtZmk?=
 =?us-ascii?Q?NeLAiTmap32BSHvciqy3WlQ2rcvrY89udnvhV+G187pXbjyd2Ka3gNj2snnh?=
 =?us-ascii?Q?+JEMOXPUzLBCcDAU+hHd0UpSnB3zVh1k4xO0rSEbb18HcGZZtI2RzgqCbeYe?=
 =?us-ascii?Q?EDAn2vKQjexySzmU2fQJ+y2blmT2OgWF+jha7Z1ecEpuGzTRFNegiWwSZalY?=
 =?us-ascii?Q?gibcszSVljDx5+IuMiLB2M6bYCofJSOudNXnHn8dlh8C9WwAbNSPpv8e6dAv?=
 =?us-ascii?Q?Ju1hCvRVtbzB4ppBVC0wwujpasLcqpoficeTM6o7+aiPmTtwK5HmYqEj3V+s?=
 =?us-ascii?Q?yLtw7PeARPiC7ZOEAFxehO3KfjrCFDTk1v4ZPQnjwCZ2aX20TjubQ9FkrcdW?=
 =?us-ascii?Q?5q0R+sQ9ZvhzcH5tiRxkD3UTxcL7kyJD3xneypgUOd97HWNF7bow8vZ41Rp0?=
 =?us-ascii?Q?dWyUZ0AEofwX4o+mwPKMz9iBN7XsIbTCnj1DmbRy71L6qLUzEOMDz2mlbf1a?=
 =?us-ascii?Q?a8EpbTxuD2WFf5iUNKpx4rfi9BMKulJr97a2w6duDfVzVe242lUE57SM5GY2?=
 =?us-ascii?Q?ZX0=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MA0P287MB0516AD06500AE33AD7D9431FC3ABAMA0P287MB0516INDP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-bafef.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0516.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e4319d-4893-4593-0fce-08dbddf75bbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2023 12:04:26.8727
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB2290
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Nov 2023 12:04:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61617

--_000_MA0P287MB0516AD06500AE33AD7D9431FC3ABAMA0P287MB0516INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Will do, thanks!





Thanks & Regards

Shrikant Vaishnav





________________________________
From: Gyorgy Sarvari <skandigraun@gmail.com>
Sent: Sunday, November 5, 2023 4:58 PM
To: shrikantvaishnav@hotmail.com <shrikantvaishnav@hotmail.com>; yocto@list=
s.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: Private: Re: [yocto] how to add tkinter in Yocto?

Please make sure to send your response to the list, so the most people
can help you (and others having the same issue can find this info also).


On 11/5/23 10:29, shrikantvaishnav@hotmail.com wrote:
> Sir,
>
> After adding *"meta-oe" *inside *"bblayers.conf"* image compilation is
> successful now.
> But when I try to test for tkinter using the command: *"python3 -m tkinte=
r"*
>   I get following error:
>
> /*_tkinter.TclError: Can't find a usable init.tcl in the following
> directories: */
> /*/usr/lib/tcl8.6 /usr/lib/tcl8.6 /lib/tcl8.6 /usr/library /library
> /tcl8.6.13/library /tcl8.6.13/library */
> /*This probably means that Tcl wasn't installed properly.
>
> *what am I doing wrong?*

Do you have tcl installed in your image? Add "tcl" either to the
RDEPENDS:${PN} variable of tk in a .bbappend file, or add the same to
the IMAGE_INSTALL variable in your image recipe - both ways supposed to
help installing the missing file.

> *please help.
>
> Regards
> Shrikant Vaishnav/
>
>

--_000_MA0P287MB0516AD06500AE33AD7D9431FC3ABAMA0P287MB0516INDP_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span class=3D"smartReply">Will do, thanks!</span></div>
<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; font=
-family: Calibri, Helvetica, sans-serif; color: rgb(0, 0, 0);">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; font=
-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji=
&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&q=
uot;, &quot;Android Emoji&quot;, EmojiSymbols; color: rgb(0, 0, 0);">
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Thanks &amp; Regards</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Shrikant Vaishnav</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
</div>
<br>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Gyorgy Sarvari &lt;sk=
andigraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, November 5, 2023 4:58 PM<br>
<b>To:</b> shrikantvaishnav@hotmail.com &lt;shrikantvaishnav@hotmail.com&gt=
;; yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: Private: Re: [yocto] how to add tkinter in Yocto?</font=
>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Please make sure to send your response to the list=
, so the most people
<br>
can help you (and others having the same issue can find this info also).<br=
>
<br>
<br>
On 11/5/23 10:29, shrikantvaishnav@hotmail.com wrote:<br>
&gt; Sir,<br>
&gt; <br>
&gt; After adding *&quot;meta-oe&quot; *inside *&quot;bblayers.conf&quot;* =
image compilation is <br>
&gt; successful now.<br>
&gt; But when I try to test for tkinter using the command: *&quot;python3 -=
m tkinter&quot;*<br>
&gt;&nbsp; &nbsp;I get following error:<br>
&gt; <br>
&gt; /*_tkinter.TclError: Can't find a usable init.tcl in the following <br=
>
&gt; directories: */<br>
&gt; /*/usr/lib/tcl8.6 /usr/lib/tcl8.6 /lib/tcl8.6 /usr/library /library <b=
r>
&gt; /tcl8.6.13/library /tcl8.6.13/library */<br>
&gt; /*This probably means that Tcl wasn't installed properly.<br>
&gt; <br>
&gt; *what am I doing wrong?*<br>
<br>
Do you have tcl installed in your image? Add &quot;tcl&quot; either to the =
<br>
RDEPENDS:${PN} variable of tk in a .bbappend file, or add the same to <br>
the IMAGE_INSTALL variable in your image recipe - both ways supposed to <br=
>
help installing the missing file.<br>
<br>
&gt; *please help.<br>
&gt; <br>
&gt; Regards<br>
&gt; Shrikant Vaishnav/<br>
&gt; <br>
&gt; <br>
</div>
</span></font></div>
</body>
</html>

--_000_MA0P287MB0516AD06500AE33AD7D9431FC3ABAMA0P287MB0516INDP_--

