Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6613FE77188
	for <webhook@archiver.kernel.org>; Mon,  6 Jan 2025 12:53:12 +0000 (UTC)
Received: from APC01-PSA-obe.outbound.protection.outlook.com (APC01-PSA-obe.outbound.protection.outlook.com [40.107.255.89])
 by mx.groups.io with SMTP id smtpd.web11.58326.1736167989389807980
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2025 04:53:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=fGTM2pU8;
 spf=pass (domain: siemens.com, ip: 40.107.255.89, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JzVZ019IahcwWf0IEFPcGELG1quXbD8QrgmOf4ZxO8GuG+/ejKVtfpej8IXRccIUjFiOSqxO22jkCX9kR+RlR34QoqB/+JLwPfUXmCc9/KBbEtozSeU6tyBtSOAYBoGONYJhNB07WPyeNw8I0+KpifnC9Dw6YdCrCmdkXnY2VjEzFX6cHB+GYcnyn8B7CMxEqKXZ/nFTYGeu8LCY71fGGtR9KEGO5rO/u4ODM2aSl31iSYE2d2SQfohEYYD+/n+7/gnFiZTBXSjrX0OnsyPwgc0DC6YgffVrva2UEmGh2iyRlKSMZo08SFi14jmC5Okup+Hh8db0xJOaTyxdKzegbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qMmniTJZ/4G4eOMDu0Zd6fBXj3SKvZ4BYKHPekTX5LY=;
 b=Wo6ESG4cJFStkGsZd2BTPyq6BGduk0ym4/Ii2wDUijT6gUsIZwsvgg39mcblCDJuJ+cH7woLFJ8xPSX4v4Ffz8P1oh2RN+yJoJefK79LETfAbNEG6Y832BidmakNaSQypmrtO6Q3v1wZbMD1vbcdm1OgA2jqcZQZCkIfgNr8TEWPq2vhGLBpQHwknyKoX3iVm5z3eZqd421uUgSIw+4q7donD0wynhEM3UiqKTwf7lr+pXOYR9EAJyQvIhN+n2mW7ZMww8sA9rWlhqrj1xy+EzS/wiw36JuGSbeMgbCi+J3kqqNGrW3wn04nTsvNYnYC8v52FIe7qlCpoSFfIIodJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qMmniTJZ/4G4eOMDu0Zd6fBXj3SKvZ4BYKHPekTX5LY=;
 b=fGTM2pU8GJI2aVmoMIPbXkJB0NkdTM6aNFwwGUJutW8kYVOsuceZyllwxeegTJGrWSbw7TF81Dr26emVMwks3NZi44MgOH3aEly1hAQsNaHgex3Ab34vkUowEOSisuJh7ZuMeerSuvr1SPqdXYd/SnUlfbbW21sTQD/Wb8eBLmay/z/lgnMhmawvJczvaouzVqa4aUbgNwiEARTVTIxtlLTmMxWx9pulttUszJKR0Ttd1X3KGTDaqy4M4XgsiP/sxScaLIRcciweAoxdRUTHPojNphuwCx7PZgcM9Mg0C+/o71i2rj38EQxThpAi6c+VQDmtJLznvQBwqwiYoPKqSw==
Received: from SI2PR06MB5170.apcprd06.prod.outlook.com (2603:1096:4:1bd::6) by
 TYZPR06MB7096.apcprd06.prod.outlook.com (2603:1096:405:b5::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.6; Mon, 6 Jan 2025 12:53:02 +0000
Received: from SI2PR06MB5170.apcprd06.prod.outlook.com
 ([fe80::7a7b:f13e:4bfd:9178]) by SI2PR06MB5170.apcprd06.prod.outlook.com
 ([fe80::7a7b:f13e:4bfd:9178%5]) with mapi id 15.20.8335.007; Mon, 6 Jan 2025
 12:52:59 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOY=
Date: Mon, 6 Jan 2025 12:52:59 +0000
Message-ID: 
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
References: 
 <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
In-Reply-To: <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=True;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-06T12:51:13.0980023Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR06MB5170:EE_|TYZPR06MB7096:EE_
x-ms-office365-filtering-correlation-id: eea49e34-989a-4bbf-3942-08dd2e510cde
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?rnfzS4JknVQiAI6SkZjyxCjmp2+KsNuc/ZFifesOk6ckIMNo5wsezAUTLPW8?=
 =?us-ascii?Q?bNA7RayseWlvFkyic+Egtgg9iN67In3UIjSRTaMkqJYD1n3z2BOCuv76CYXo?=
 =?us-ascii?Q?MZKgVff67b/6xYEV/7DgwMfNzme0zg5VIlPewLKBys6ho7/CVSQ1OhOy/toj?=
 =?us-ascii?Q?wb8RDpXW9JGEN4gwdC2lxm8qx7pl927C9JAfP/eRJ3kZOekI0HJCbS7SZ9Mv?=
 =?us-ascii?Q?F6+Kmwt9MLYJI3bDxG5FMNGvNcYQh45GiyVU7oDm73LXXCRNvOT6bbnZYcU8?=
 =?us-ascii?Q?BfvhQpkAB16oFWtRWDUJUQ54VdZz8w0ZSYUfMy5ybAN6yIu7xjfUvm4GF/9q?=
 =?us-ascii?Q?PZu8XyYDIMNWprVeHXToJto2cabJ9DNGMzZAw1hcTqH+UNpM6DPGlMGjppo2?=
 =?us-ascii?Q?9efLhGenhmoLrZRLWDNPjDWxu1fqUBWzuARKCRpHI0vAGrKSNCOTqtIfkB9r?=
 =?us-ascii?Q?gjHHyKX7HS0B3xsSHOQYKy/Zrpf8dcmE278Q/9Kd7HaCam73ONhQiC2cbNbT?=
 =?us-ascii?Q?ctTwamM1z8Jhsz4/W2QHh+CLjmmL7BuyYPXHVswbtgcGP+P6Je2SPa7woHTu?=
 =?us-ascii?Q?2pds63/DejP6gtnLkZoeiASvduZGpEiz2NIvXX0Q6COr1L/17qyd8PVF1Qwo?=
 =?us-ascii?Q?Vfo/ALQt8KZfwZZvi10s9k9P8bYRX51MkocdhsEw1Nz97+WZmVoLRvWR8QT+?=
 =?us-ascii?Q?XjHOAPz01JvMAH/RjIwhz8PHA2EzOIp/jTAqAahgn6Vg9xdJtO+ynsbOvbJw?=
 =?us-ascii?Q?lAb+QY3+wFe4cJ9jATLae2bjXBBAJ7UpJ49YAsWxEXhqgv/0LSe/Uev1q4fX?=
 =?us-ascii?Q?YrZqp4cTac/eU3yR4a49jvJKt6fgp+fq5HGkztG+P+Z0sSEzPHQsT/udWo2d?=
 =?us-ascii?Q?mE79GJex/mL0oOk9BHe3mSB1hdN8GnzKaRJ7JPxvUSR8UyL7p3efZe+u21IN?=
 =?us-ascii?Q?VNLr+Nn4AULFLDp30mJUjPpOcMTfb9E7VuR6y8GTefaYV+sNgVsNyaFVoA0/?=
 =?us-ascii?Q?+RSCa9LoqAJcFgenUFI9ouoe1ONa9pk9GuXHopV++yY/r2CzdKYYB/dlUEEm?=
 =?us-ascii?Q?gJMd/UY7zQQYZW2aoeyzJ77XC01pBJeeaP0stS4otO4HgopXJWAgurpzovcV?=
 =?us-ascii?Q?wBEDFZ44Kdgk93fhVVu85GUx0VIDskPE9SPUsMlmN3bEhOi+G0GYT3zzIzNf?=
 =?us-ascii?Q?A1eqf9/sFMmzos/EsZQ7wzB7dgubiEJEKrJ+a0k+nAo/T5Je3pUJFYjcn7jG?=
 =?us-ascii?Q?unUIbK1tyOg4dB5CmsNJqzYtsdJGAlUUqMjnyDoILD8gR8a9FyaZOHB4T11x?=
 =?us-ascii?Q?//6wK+xaGiVIltdFn4qcZPXjGE6XhQmNF5bC9i6lg0ntT0XI4fAdwNz9QoxB?=
 =?us-ascii?Q?YJsOZ7NqILrlWRgMZjWRQ4o/nD7mC7JgyFsWTvlkMDgSTl+8IoNA+WDHrNHg?=
 =?us-ascii?Q?B1IjvBZh+c/x+ljIraT45ZMKc82g+2wp?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR06MB5170.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?uVlwmi89VJdxDvNgM7vaEESL325JdYEg0w0CPrdeS9LSmbkUfCuBFLQxMvQQ?=
 =?us-ascii?Q?IjkBa8e6JS1i60I9rM3S4ZYmqm8YvAwdali3GW3n/NS5RLFRVaMPB80MSl79?=
 =?us-ascii?Q?rPAjfLaLCufZLc4IvK77Ao3BRTaB9HSXALSfgC23eDbaIOiz8fRAmosPWeqJ?=
 =?us-ascii?Q?W7HVONh6s+IwhPnLP7Ay0ZlVDdq9i+CFrkNf/Sc8QeJecKfJAMnqRWRcVtsl?=
 =?us-ascii?Q?KmiOsVjtt/HULo+7VQ9GrzSEedCwvUmyf2hIWHZ7ki/6uODLlYlYhQXDpRxQ?=
 =?us-ascii?Q?iYMr1v0V3hAB3um71fyQl1fTJ/Mku+12ajAxSZW2D/v5oc47PePvwBigCRjj?=
 =?us-ascii?Q?cAfW1PNihuny01Mh1WHQfE1Um+lD0E3JBBarZL1jx8Kj4cnPgtBgjOvFLFOG?=
 =?us-ascii?Q?IxZPSUbFJufTxutSK9aXMxeY6ufj6sNSHIMDNXEW0amWyMOw0n5/i0UWZAV4?=
 =?us-ascii?Q?iGcgZJ1LA0Enqj0Gtzdy/FMI8gBwpM0jyvY5C3VDtMtSSzdI72P9s5vXzweR?=
 =?us-ascii?Q?azOkPUP6kLnzR3ZvFVhTGW5whjn0wyCbmA0iKzdvDNVIO4S+rYZRE7JpoMEQ?=
 =?us-ascii?Q?xMnrGLsX/2ksn3Zs52hZrGnHuo6cn8+KWtbfEFKWRk9K+7b7Z9l9uq3mSjPA?=
 =?us-ascii?Q?/HhW1JMFZ3KCxXBOO+6dYXaZ74dG9iLs9K1Xs2mJrCXOS8kCfta4cTO0P1gb?=
 =?us-ascii?Q?AXYR12UR8rtyDtzPjVfQB5Dl7/TwnU3g6w0PB4iUqjP5CmMEkv+74DgtkJ35?=
 =?us-ascii?Q?XfQYchFy7mbSOmKBb8jVE6ZIClXUJoq3WrWc6Tah67EhNSuAtpKIhJlJD7Qu?=
 =?us-ascii?Q?33BToqra7F1kLveNbaViAvscJx4z1hOfo9CtMDb+uQ3hY9sJBT+fWTALJtfI?=
 =?us-ascii?Q?8sxeVpfpjwwEgi2YBI+2L0lgXHyJH4jg2tGUL8JSnyJiEaIcdw/vhGRet/Av?=
 =?us-ascii?Q?OLyuRSVoqU0WRqjq5By4DWswjNp/ztx7FHwsYhoqHrKzDEmrXrg4jO/Ep65P?=
 =?us-ascii?Q?LWrs+7xdL7f2YQH0xogevuiqCP5EiDrOD1OMS09Ti48ltPVjCrYk1RRp5vBc?=
 =?us-ascii?Q?n9dO9qq31xLW7OFrjbm3//i57QyR5Eldzfu9eflzck7T2DdLgzmPRqXjKSZH?=
 =?us-ascii?Q?Cuk0fpuMmgP2MzrjBqXuzw8BnLUNwNBP8+tjrcCodDgJ9WWU9nYXgTMdhMhO?=
 =?us-ascii?Q?5+lEpSYrJhOwKE3L8l/Ar8eqDc59RG/W2ryEtnCDZOE9IVXbu1/PwyHFrA4z?=
 =?us-ascii?Q?FsIsqYu+eZjNK3wpBLGgllIXM5SdwQCncXB9LbnjlpF+au+lrAD4Nsxc6JXt?=
 =?us-ascii?Q?tJKCB7XidimV0HPvysiOM/6K9trIngZoPn6NXfoZWm0t1g5P+pAkPUmi9Ym3?=
 =?us-ascii?Q?lYDghr3uhba3o8tADogGiBiBF3GHIqw52VKdYpQuuLu+kADG2wX+UX3j29zX?=
 =?us-ascii?Q?tPr3B5zJkqBLHC12DF9MMI1GF8SHx8DB1Yw41v0PIOiC34jW7ATI6qUza/9H?=
 =?us-ascii?Q?upJkLLmaIkHzvaELY2XwQTZ52WlOpiPYpOQ+l3Etr3nhqexlPWc6Nhuhdw4y?=
 =?us-ascii?Q?tYyF66vmSSa4j09wLbtsi784QfnTWEWhTKlFCCERxuww6+bsx1TPz4yKpqW8?=
 =?us-ascii?Q?vg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SI2PR06MB517020EDA3F2E22BC5EA20B186102SI2PR06MB5170apcp_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5170.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eea49e34-989a-4bbf-3942-08dd2e510cde
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2025 12:52:59.9531
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1p0hPz2eSsxzLN4RABY+sZG6e3TA+s45W5fMzxg5+U5IPozjH8MPS95P/bt3FKgaRWhxQSQeIomhdeMicg2rSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB7096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 12:53:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64497

--_000_SI2PR06MB517020EDA3F2E22BC5EA20B186102SI2PR06MB5170apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes Sarvari, you are rite.. I have declared as per your input .. but i am f=
acing same as I mentioned in previous thread ..


________________________________
From: Gyorgy Sarvari <skandigraun@gmail.com>
Sent: Monday, January 6, 2025 4:03:02 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Kumar, Man=
u (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

> *
> *
>
> *IMAGE_INSTALL:append =3Dlightttpd *
>
>
Just to confirm: "lighttpd" has only 2 "t" letters (not 3, as in your
message), and it should be enclosed in quotes. Also, note that when you
use the override-style ":append", you have to take care of the spaces
around the appended value too:


IMAGE_INSTALL:append =3D " lighttpd "


--_000_SI2PR06MB517020EDA3F2E22BC5EA20B186102SI2PR06MB5170apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div dir=3D"ltr">Yes Sarvari, you are rite.. I have declared as per your in=
put .. but i am facing same as I mentioned in previous thread ..&nbsp;</div=
>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Gyorgy Sarvari &lt;sk=
andigraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, January 6, 2025 4:03:02 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; Kumar, Manu (FT D IN PAMC MI EMB FW) &lt;kumar.manu@siemens.com&gt;<br>
<b>Subject:</b> Re: [yocto] Query: Regarding lighttpd/librarries in /usr/li=
b not copying</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&gt; *<br>
&gt; *<br>
&gt;<br>
&gt; *IMAGE_INSTALL:append =3Dlightttpd *<br>
&gt;<br>
&gt;<br>
Just to confirm: &quot;lighttpd&quot; has only 2 &quot;t&quot; letters (not=
 3, as in your <br>
message), and it should be enclosed in quotes. Also, note that when you <br=
>
use the override-style &quot;:append&quot;, you have to take care of the sp=
aces <br>
around the appended value too:<br>
<br>
<br>
IMAGE_INSTALL:append =3D &quot; lighttpd &quot;<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_SI2PR06MB517020EDA3F2E22BC5EA20B186102SI2PR06MB5170apcp_--

