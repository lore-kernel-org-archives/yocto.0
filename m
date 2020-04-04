Received: from APC01-HK2-obe.outbound.protection.outlook.com (APC01-HK2-obe.outbound.protection.outlook.com [40.107.130.121])
 by mx.groups.io with SMTP id smtpd.web12.566.1586017671587983834
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 09:27:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=TEFX5BNV;
 spf=pass (domain: hcl.com, ip: 40.107.130.121, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IcV590w+i1PvV/HfoFfr6HUOhVPtn4P3QuECDI1w2KI=;
 b=TEFX5BNV2c+vgHI0L114I4T3Q4k0qtizhLJgFBpVjVcUly6aoAcdz1BwrWv0r0+w10OgroMmM9WIA1dBfi5Ati6W91EBWRYYH5Sv1UCvl4kH515++m0XgZJgoPOqvQEl+O0gm5B993Cjo4tseRgmP+7TR5I7EZBaXq09mFRPda4=
Received: from SL2PR01CA0024.apcprd01.prod.exchangelabs.com
 (2603:1096:100:41::36) by PU1PR04MB2470.apcprd04.prod.outlook.com
 (2603:1096:803:2f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Sat, 4 Apr
 2020 16:27:47 +0000
Received: from PU1APC01FT010.eop-APC01.prod.protection.outlook.com
 (2603:1096:100:41:cafe::87) by SL2PR01CA0024.outlook.office365.com
 (2603:1096:100:41::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Sat, 4 Apr 2020 16:27:47 +0000
Authentication-Results: spf=pass (sender IP is 192.8.195.59)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.59; helo=APC01-HK2-obe.outbound.protection.outlook.com;
Received: from APC01-HK2-obe.outbound.protection.outlook.com (192.8.195.59) by
 PU1APC01FT010.mail.protection.outlook.com (10.152.252.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Sat, 4 Apr 2020 16:27:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QRsoC09Ljnc2dOzXzVj+hstgE9xvaRbBF0MDvIGERAceLZZ9NLlmnko0JTRebHDHdyc3Ka5bZOFBQLco24iFcrcJPZK818ZtkNTW9n/iWH7UI0ns5S+JdE+7TQo7cXM0ZMhWXwuCrZe59Ag1UovL+uve5jQEt16BrqbQoly2QUCsUJ3fjKooDxMSf0TZ3vOUSC0LmypFCD0jxH6dz9EfnpEaubtPIfuHh83EytqsTJLIkYQUns175jnkVi/8XN2XulaJmemQ2i0H6Wn1oTb7n5dzYPp4kZcUMpbdiRifj+Zg+CNGWdGKMRcu/ucSCUVWYie9H0emUmyxOIIu7Hn3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IcV590w+i1PvV/HfoFfr6HUOhVPtn4P3QuECDI1w2KI=;
 b=lv+VY9z9NojFOS3291WFZ9VFkICX5Ex9riG8mljtfXn29HbKrHKRQhMVgeW2eOdCGKQOmPuhWdXZvtFUJe4vtQ8y9Ujdwzw+r/W61cf2AS/m1zwmIqEmgySTWLbAP02uupdCipYNT68UIft2/Uk3Uu5dVFBkX8e2WCdKnkufkGuduIA7Uy82bMMwW7+o1S6AE/Jmatg517CzS5liIuelOeDC5LEfBZFGpqhq2JIsfXgoK9jLfBXuu0cgbYiADaBcGCkOi1hos0NBWgPgHQ/FsjFz43+9oPwcPFWrJf5qrtVuFmV6xHzayH4ALw9WwIRcRutBrj//a0Myl/KY8wv1NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IcV590w+i1PvV/HfoFfr6HUOhVPtn4P3QuECDI1w2KI=;
 b=TEFX5BNV2c+vgHI0L114I4T3Q4k0qtizhLJgFBpVjVcUly6aoAcdz1BwrWv0r0+w10OgroMmM9WIA1dBfi5Ati6W91EBWRYYH5Sv1UCvl4kH515++m0XgZJgoPOqvQEl+O0gm5B993Cjo4tseRgmP+7TR5I7EZBaXq09mFRPda4=
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com (20.177.25.76) by
 HK0PR04MB2420.apcprd04.prod.outlook.com (52.133.148.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Sat, 4 Apr 2020 16:27:41 +0000
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44]) by HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44%5]) with mapi id 15.20.2878.018; Sat, 4 Apr 2020
 16:27:41 +0000
From: "Ajam Ali" <ajama@hcl.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"gley-yocto@m.gmane-mx.org" <gley-yocto@m.gmane-mx.org>
Subject: Re: [yocto] Image size reduction
Thread-Topic: [yocto] Image size reduction
Thread-Index: AQHWBeZcNGow7JB2ME2ZHxK+8kxKv6hpKkuAgAAC1+8=
Date: Sat, 4 Apr 2020 16:27:40 +0000
Message-ID: 
 <HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.prod.outlook.com>
References: 
 <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>,<92687be7-1e7f-04ce-6706-9dec1c4c7798@gmail.com>
In-Reply-To: <92687be7-1e7f-04ce-6706-9dec1c4c7798@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.57.117]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 239f2f1a-bfef-4c89-4b5e-08d7d8b51c0c
x-ms-traffictypediagnostic: HK0PR04MB2420:|PU1PR04MB2470:
X-Microsoft-Antispam-PRVS: 
	<PU1PR04MB24704B6C5B22FD01AEA77074B4C40@PU1PR04MB2470.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;OLM:3513;
x-forefront-prvs: 03630A6A4A
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2914.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(376002)(346002)(396003)(39860400002)(366004)(136003)(55016002)(33656002)(9686003)(7696005)(81166006)(2906002)(186003)(6506007)(8936002)(26005)(8676002)(81156014)(19627405001)(52536014)(110136005)(5660300002)(66946007)(64756008)(45080400002)(316002)(91956017)(66556008)(478600001)(76116006)(71200400001)(66476007)(66446008)(86362001);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 eqXcBq+gqHHYlWz3MKSF4zANFl1Pp46h328P495Kl/wWnUoc4XG4JqUXUZjTgHI8ONec6jiH2+zt12FW5qQuP/NUkN5XE0o8GHSV+h38Def7Lo15VgSn1SPmJ5rX864381r5L2bh9Qy0+kwF0wJiqDrBVNgTmL6T8zNbM9jSRHPsscseR5pCilfwuI+iembDYLWOfQXM4ZuaNzhJj0uxkYowWCxOCypenrwsALKlf+hWBuamr8ccilDhm6LhpHzxWH2c4I1kS0s26W9jv1ZOyb57jcz8JZHh3DPR1PYsNPdw0XrTBdGxjC5E5XOvHI0thAy2TUqT4cIAzP690gbKeKvKsDIr6NBX9D8s5MztGiUnK58CtM7o1mSNWcCZORrYHEJghUGVhzcoFa+FoO/76BXZbcSbjmMXOiBaVtS29GQDuevpvuWB4lmAh1LD01Av8UElMQdteTSYgtZRLalj6SkMHqtojUY6L7HDslx0gK5+os9lCVumksy318RRFHX7tf0AnGSJbveQmjruc63zLg==
x-ms-exchange-antispam-messagedata: 
 1F8th50nRmGdWJMW1yiTKNgIfb/x6EBoObCJiVTcnvMXb86oid7Yk/B1S4lc8Nq4DYk8CX/cjPbCSaCOnWx9oy8FwDNmL8RLMPj+7d3fQJHtXFxQwcX3mus3MVTAVkTtj8ALuvdAqVJGxp0iNN7kpg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2420
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 PU1APC01FT010.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.59;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-HK2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(376002)(346002)(39860400002)(396003)(136003)(46966005)(33656002)(19627405001)(55016002)(47076004)(82740400003)(9686003)(81156014)(5660300002)(36906005)(316002)(45080400002)(356004)(478600001)(86362001)(52536014)(81166006)(8676002)(70206006)(70586007)(8936002)(2906002)(26005)(7696005)(110136005)(186003)(336012)(6506007);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	4628c18e-9c97-4ce8-a45c-08d7d8b518a7
X-Forefront-PRVS: 03630A6A4A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WWPdIlSh9DeYkMgAU1rwsDdRDOABVnS5fA7uxMf+WhpxOJwLBp5iBcpBNa5/Bkcf8Q/NxivDWy+awRDHLmxzoADq+QtJq+ouJbznM+/nPrfzfDDUlL08E+vzU7hAc34uYaqGBBIs7vrvpQTb3IVVjSJYh2N6b24i33a8IOs7Aa5I7aBjvoA+HEfuDyPDPeTF45Q6jSQfwVvnp7cTJO8+XK8NJZzUxOR+kFgQK3S8rtvlCuyOyfiC07fRB58jlZHLwUaVlguKZRy9/xDU9UrpfNnd15F3mwxKSWdQQNmNB+8DyG5lsPnqD0C9selTLzlrISKvWlbLiQtQL9SAyXvXnjGeaTO3t6V4PR2CH+9bFlu2xuife0LUQNTUV1nUgGvorO9xtbj4RAckpFWoJXUSwu7UxXg2xp2Uh3SP1+HjDTr27VuKY831FOYa7IRG8mwY2aaQmZ21wYXqX7CpiIqBYXrQFb1uO6b1Ti7rAyR/q8tuSNY8stGI01vklR+WudfcoWTo+N8dEgpb4DUyueAoOnc3m+IcUACMJcvZOOykaBdqRmqN/gHFb+/EiKaLvxEo5H34qxQYMBiKq1JjyZyXL4ZpQjL+TbXkqfzyzGoPL74=
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2020 16:27:45.6297
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 239f2f1a-bfef-4c89-4b5e-08d7d8b51c0c
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.59];Helo=[APC01-HK2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1PR04MB2470
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR04MB2914FE5FB74F913D86030FC9B4C40HK0PR04MB2914apcp_"

--_000_HK0PR04MB2914FE5FB74F913D86030FC9B4C40HK0PR04MB2914apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Thanks for your suggestions. I am working on your suggestions.
I will let you know if it did not work for me.


Regards,
Ajam Ali


________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Gmane Admin via lists.yoctoproject.org <gley-yocto=3Dm.gmane-mx.org@lis=
ts.yoctoproject.org>
Sent: Saturday, April 4, 2020 9:36 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Image size reduction

[CAUTION: This Email is from outside the Organization. Do not click links o=
r open attachments unless you trust the sender.]

Op 29-03-2020 om 18:28 schreef Ajam Ali:
> Hi All,
>
> Actually my current image size is 3.9GB because of heavy size packages
> required by my project and without project required packages my image
> size in Yocto is 800MB.

So your project adds 3.1GB right

> I want to reduce the image size as maximum as possible.

3.1GB is huge. Compare to f.i. Libreoffice (installed 0.5GB or so).
Either your own code has a lot of fat, or you are pulling in lots of
packages you don't really need. But is there no way to advise you
without knowing more.

> Please suggest the best possible way so that I could reduce the maximum
> possible size(desirable below 1.5 GB).
>
>
> Thanks in advance,
> Ajam Ali
>
>
> Sent from Outlook Mobile <https://apc01.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;data=3D02%7C01%7Cajama%40hcl.com%7=
Cf719cb14fe674f86f02408d7d8b236b0%7C189de737c93a4f5a8b686f4ca9941912%7C0%7C=
0%7C637216132261322392&amp;sdata=3D8in2t%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2B=
a3QG9gU%3D&amp;reserved=3D0>
> ::DISCLAIMER::
> ------------------------------------------------------------------------
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only. E-mail transmission is not
> guaranteed to be secure or error-free as information could be
> intercepted, corrupted, lost, destroyed, arrive late or incomplete, or
> may contain viruses in transmission. The e mail and its contents (with
> or without referred errors) shall therefore not attach any liability on
> the originator or HCL or its affiliates. Views or opinions, if any,
> presented in this email are solely those of the author and may not
> necessarily reflect the views or opinions of HCL or its affiliates. Any
> form of reproduction, dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior
> written consent of authorized representative of HCL is strictly
> prohibited. If you have received this email in error please delete it
> and notify the sender immediately. Before opening any email and/or
> attachments, please check them for viruses and other defects.
> ------------------------------------------------------------------------
>
>
>



--_000_HK0PR04MB2914FE5FB74F913D86030FC9B4C40HK0PR04MB2914apcp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi All,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thanks for your suggestions. I am working on your suggestions.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I will let you know if it did not work for me.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Ajam Ali<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Gmane Admin via l=
ists.yoctoproject.org &lt;gley-yocto=3Dm.gmane-mx.org@lists.yoctoproject.or=
g&gt;<br>
<b>Sent:</b> Saturday, April 4, 2020 9:36 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Image size reduction</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[CAUTION: This Email is from outside the Organizat=
ion. Do not click links or open attachments unless you trust the sender.]<b=
r>
<br>
Op 29-03-2020 om 18:28 schreef Ajam Ali:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Actually my current image size is 3.9GB because of heavy size packages=
<br>
&gt; required by my project and without project required packages my image<=
br>
&gt; size in Yocto is 800MB.<br>
<br>
So your project adds 3.1GB right<br>
<br>
&gt; I want to reduce the image size as maximum as possible.<br>
<br>
3.1GB is huge. Compare to f.i. Libreoffice (installed 0.5GB or so).<br>
Either your own code has a lot of fat, or you are pulling in lots of<br>
packages you don't really need. But is there no way to advise you<br>
without knowing more.<br>
<br>
&gt; Please suggest the best possible way so that I could reduce the maximu=
m<br>
&gt; possible size(desirable below 1.5 GB).<br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance,<br>
&gt; Ajam Ali<br>
&gt;<br>
&gt;<br>
&gt; Sent from Outlook Mobile &lt;<a href=3D"https://apc01.safelinks.protec=
tion.outlook.com/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;amp;data=3D02%7C0=
1%7Cajama%40hcl.com%7Cf719cb14fe674f86f02408d7d8b236b0%7C189de737c93a4f5a8b=
686f4ca9941912%7C0%7C0%7C637216132261322392&amp;amp;sdata=3D8in2t%2B6mXtrsR=
wa7GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&amp;amp;reserved=3D0">https://apc01.saf=
elinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;amp;=
data=3D02%7C01%7Cajama%40hcl.com%7Cf719cb14fe674f86f02408d7d8b236b0%7C189de=
737c93a4f5a8b686f4ca9941912%7C0%7C0%7C637216132261322392&amp;amp;sdata=3D8i=
n2t%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&amp;amp;reserved=3D0</a>&g=
t;<br>
&gt; ::DISCLAIMER::<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; The contents of this e-mail and any attachment(s) are confidential and=
<br>
&gt; intended for the named recipient(s) only. E-mail transmission is not<b=
r>
&gt; guaranteed to be secure or error-free as information could be<br>
&gt; intercepted, corrupted, lost, destroyed, arrive late or incomplete, or=
<br>
&gt; may contain viruses in transmission. The e mail and its contents (with=
<br>
&gt; or without referred errors) shall therefore not attach any liability o=
n<br>
&gt; the originator or HCL or its affiliates. Views or opinions, if any,<br=
>
&gt; presented in this email are solely those of the author and may not<br>
&gt; necessarily reflect the views or opinions of HCL or its affiliates. An=
y<br>
&gt; form of reproduction, dissemination, copying, disclosure, modification=
,<br>
&gt; distribution and / or publication of this message without the prior<br=
>
&gt; written consent of authorized representative of HCL is strictly<br>
&gt; prohibited. If you have received this email in error please delete it<=
br>
&gt; and notify the sender immediately. Before opening any email and/or<br>
&gt; attachments, please check them for viruses and other defects.<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_HK0PR04MB2914FE5FB74F913D86030FC9B4C40HK0PR04MB2914apcp_--
