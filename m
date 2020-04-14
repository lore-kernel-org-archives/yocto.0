Received: from APC01-PU1-obe.outbound.protection.outlook.com (APC01-PU1-obe.outbound.protection.outlook.com [40.107.132.117])
 by mx.groups.io with SMTP id smtpd.web11.14097.1586879519122619374
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 08:52:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=jSGz1K5p;
 spf=pass (domain: hcl.com, ip: 40.107.132.117, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAfNY249ByKHe+ERav1uTj26caN1i/mrx3cxiKn0QnA=;
 b=jSGz1K5puCmXEkG1ueXlba3g1jyV/Z7R324cR+YRi0CKMe3pJ8ZVX8gQsE72DTBKtwo+LQcLAgJy/vD+SI61M3558MXdhgi5WZdHpyRfxOL/sGHsAIUzP7CTleAVgFo9qiPUVMEYLdg3JVK72ODOvnjBAYr/zauR6DmeTVqYz9U=
Received: from HK2PR0401CA0019.apcprd04.prod.outlook.com (2603:1096:202:2::29)
 by PS1PR0401MB2172.apcprd04.prod.outlook.com (2603:1096:803:7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 15:51:55 +0000
Received: from HK2APC01FT047.eop-APC01.prod.protection.outlook.com
 (2603:1096:202:2:cafe::bb) by HK2PR0401CA0019.outlook.office365.com
 (2603:1096:202:2::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.19 via Frontend
 Transport; Tue, 14 Apr 2020 15:51:55 +0000
Authentication-Results: spf=pass (sender IP is 192.8.245.51)
 smtp.mailfrom=hcl.com; windriver.com; dkim=pass (signature was verified)
 header.d=HCL.COM;windriver.com; dmarc=pass action=none header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.245.51 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.245.51; helo=APC01-HK2-obe.outbound.protection.outlook.com;
Received: from APC01-HK2-obe.outbound.protection.outlook.com (192.8.245.51) by
 HK2APC01FT047.mail.protection.outlook.com (10.152.249.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15 via Frontend Transport; Tue, 14 Apr 2020 15:51:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TTgAg4rgQWd43nuCB8zbG6D/Zk5uYE07CSulVlJc8s4d22f35k3MhZ+gw4+/OZFTaYiVL2l/C5ggi3nj4T6i/HAWjPcX7awO2ljpsCm5wD/bhUHBfeeVhRuniGpPZpkvzjEEq2aT/bMIoFh+tLb/s4xxGsAFXSTxS3YkfZ5fbmbUzoVE+eJcOtSgA57cyau5nAJgbhnSLwCmcJjEIl55af6XyDwzzfr1RhdVlbyFuZdi8klT2NbJmy+N37vNvvD5lTiwlb1lVFjA4nmAuJktzVSDMumVumKLeIbHarACb/VhS7RAxu16MwxX7CJWOhb1WK1HSyjm4nxoxcOj+E+uPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAfNY249ByKHe+ERav1uTj26caN1i/mrx3cxiKn0QnA=;
 b=BurMFZ9TuCPYsPfofQf/7rsluYd5MuwN5QkKi8B+ogsQQNusbHUVHGbpgTtpiCXe4IsAUV43ccVccMNZsXoEtCvw3O3HqkulHNffD4uG6rRBn5sTKwSR/UrT6ofxtHCnuqMiiI4ixekawVYeCIlwxuI7JQJ8Y/aJyG3WK6qc2N19FXufqd+NZEhAa9w1AqqG9MXv/2ZE458hXpS846jelp6b/tBojo9rz8IaLyai5OuZKv1cUymr2hD15Kq7KNiXgiX5ZLBPk8v7uvPii6Q8EI9vpp1AQfwWQ0UsauESSGhq/0I4/sR+wWkYA0CBY9KTtBaOU0uaLquPzGdC+t7QdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAfNY249ByKHe+ERav1uTj26caN1i/mrx3cxiKn0QnA=;
 b=jSGz1K5puCmXEkG1ueXlba3g1jyV/Z7R324cR+YRi0CKMe3pJ8ZVX8gQsE72DTBKtwo+LQcLAgJy/vD+SI61M3558MXdhgi5WZdHpyRfxOL/sGHsAIUzP7CTleAVgFo9qiPUVMEYLdg3JVK72ODOvnjBAYr/zauR6DmeTVqYz9U=
Received: from SG2PR04MB3335.apcprd04.prod.outlook.com (20.177.91.18) by
 SG2PR04MB2538.apcprd04.prod.outlook.com (20.177.8.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.24; Tue, 14 Apr 2020 15:51:50 +0000
Received: from SG2PR04MB3335.apcprd04.prod.outlook.com
 ([fe80::8e9:b76c:9a24:74cd]) by SG2PR04MB3335.apcprd04.prod.outlook.com
 ([fe80::8e9:b76c:9a24:74cd%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 15:51:50 +0000
From: "Ajam Ali" <ajama@hcl.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"gley-yocto@m.gmane-mx.org" <gley-yocto@m.gmane-mx.org>
Subject: Re: [yocto] Image size reduction
Thread-Topic: [yocto] Image size reduction
Thread-Index: AQHWBeZcNGow7JB2ME2ZHxK+8kxKv6hpKkuAgAAC1++ADj50gIABb/Kv
Date: Tue, 14 Apr 2020 15:51:50 +0000
Message-ID: 
 <SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0@SG2PR04MB3335.apcprd04.prod.outlook.com>
References: 
 <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <92687be7-1e7f-04ce-6706-9dec1c4c7798@gmail.com>
 <HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.prod.outlook.com>,<259e6251-19b5-1e49-8ba9-73f6aac273bc@windriver.com>
In-Reply-To: <259e6251-19b5-1e49-8ba9-73f6aac273bc@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.8.47]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 7b3c5c56-6d42-4308-c2ba-08d7e08bc112
x-ms-traffictypediagnostic: SG2PR04MB2538:|PS1PR0401MB2172:
X-Microsoft-Antispam-PRVS: 
	<PS1PR0401MB2172872B889BD068A194BE65B4DA0@PS1PR0401MB2172.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;OLM:2803;
x-forefront-prvs: 0373D94D15
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR04MB3335.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(376002)(346002)(39860400002)(366004)(396003)(136003)(5660300002)(52536014)(9686003)(55016002)(45080400002)(2906002)(7696005)(8936002)(26005)(8676002)(81156014)(53546011)(6506007)(71200400001)(76116006)(91956017)(33656002)(86362001)(110136005)(66946007)(19627405001)(66446008)(64756008)(66556008)(66476007)(478600001)(316002)(966005)(186003);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 6VByLQRT5wuRmrKy1UgX/E+e4OViwxmsv2Qd6yTdkYk4Sb2LlKtxwCT2wo79XuPRvzwiCAbQb023DWbQ8b4uxjwL6f6CuVKzI/AOvPsOxuSvP50CQMn6HKDGgVMoy+Owx8yLJfvWXoRhKL6ZKrTfEmLIfhWobfm49xJa76iTTOJArLkJpJyjUaGn7SuceNt5/4BInuBhDV0sNfQGGHC/xaVXeH7GLwMIT6m5nnyhmkdPaWdWzGznWalgmHJWPiBqoe+D6m/+PLFQtjGYAX+/OtxHDzgBV6+uQPns6AOWaqUaojyIIhJVTwTeqwCcyZC4F6gwoLuceQEFshliAAirBoCm4oHA0rhxODhm1xmlucXJFzdXVZIcRzQI98IkR/nDg74BzvenLBrpOxgFuLjvkPSmUMq5tq3pZrA1AaU4iGC8Pzys4baFqerP3NU6Yh4KaLKvHLKc2pml9WOzk3KYlczWHdSDvNdX5d7abWenLdkzfhNjj3YmrR/rzwd0hTb2+nhn5TqFFMQTyOssIotmsA==
x-ms-exchange-antispam-messagedata: 
 n+2k4PrXjo8XCKqPutlaPwirvLX10ed/q6KPmxtxT8K/VyYR3HEUP7c+Vav/+vRNoPGKFYRybXV6DYudUXO1FiBplosa5y4vR4mgeR4ei1FmmI2NtGvzdF9SjCQLuNwwDA+Y5ifDH91o9cFRBdUe6w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB2538
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HK2APC01FT047.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.245.51;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-HK2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(46966005)(8676002)(336012)(2906002)(186003)(19627405001)(70206006)(45080400002)(30864003)(966005)(478600001)(86362001)(81156014)(26005)(8936002)(70586007)(356005)(316002)(110136005)(7696005)(33656002)(55016002)(9686003)(6506007)(5660300002)(52536014)(36906005)(82740400003)(47076004)(81166007)(53546011);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	77f0b0f4-301e-4fca-a3c0-08d7e08bbf05
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GQY+uLWQfySElScChMS3I3cYTjDgDJYa4iCzSa3A5cnVWkHM20MJsEMviPqa1FDZSkdghmOYkuBWht4oy1m9dmluQr+cMNz9/W4L7YJrYnDiBokwzmpGdxyR/4OQAZYIXZrYCG9NonU8lVCrG++5b8Q+VVub6qANxO2tXJV6itfcKTLPPmd0Szhw3IHKzzNOz/mHn1HHLHi4qjI+oFNNmVdr0f2AEhePkDebem+vGNcqfQOBXJkys1W80JpHkV+xcVIu+FaZEM8+uMSVR8iiFzSziSizFT7he51XoCVGMtVcELg+yGR8N9+R91e/oLr1IFBEFXEEmL14DgP4ebaMuhjtlXdTYtuA9t1Gh+4vxhRNi5PLSVizyoySpHEjCAtQcrcDg2uyegBth7Cg3Sg/8admQ6igZATmKo0TPChVA7IdHckN9tzQu7gNNkq37yek6kC8Me/H9X3vZVK+mmFT//cZSAkyJMBX64bdJ1Ai4CIJYKfaMgrCU1poPZVkRRhw46fUd3wB299JGL+UhYb0qG7n5cOmWf5YZt10KO6RZ1MAxfz8QQB/Fy9tkfIEtD72vGoa/lBIquF4Qi4FxalXOQ==
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 15:51:53.4577
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b3c5c56-6d42-4308-c2ba-08d7e08bc112
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.245.51];Helo=[APC01-HK2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR0401MB2172
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0SG2PR04MB3335apcp_"

--_000_SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0SG2PR04MB3335apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Randy,

In my image most of the size is consumed by heavy size packages.
So i have given this task of image size reduction to application team.
If i will remove the dependencies then may be some feature get disabled wh=
ich could be needed.
Till now i am able to remove only python3 from dependencies.







Thanks,
Ajam Ali
________________________________
From: Randy MacLeod <randy.macleod@windriver.com>
Sent: Monday, April 13, 2020 11:18 PM
To: Ajam Ali <AjamA@hcl.com>; yocto@lists.yoctoproject.org <yocto@lists.yo=
ctoproject.org>; gley-yocto@m.gmane-mx.org <gley-yocto@m.gmane-mx.org>
Subject: Re: [yocto] Image size reduction


[CAUTION: This Email is from outside the Organization. Do not click links =
or open attachments unless you trust the sender.]

On 2020-04-04 12:27 p.m., Ajam Ali wrote:
Hi All,

Thanks for your suggestions. I am working on your suggestions.
I will let you know if it did not work for me.

Ajam,


It would be useful if you could reply either way.


If there's still a problem then perhaps someone can help.


If you are able to resolve the issue, then a brief summary

of what you did could help the next person who has a similar

issue.


Thanks,

../Randy


Regards,
Ajam Ali


________________________________
From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <y=
octo@lists.yoctoproject.org><mailto:yocto@lists.yoctoproject.org> on behalf=
 of Gmane Admin via lists.yoctoproject.org <gley-yocto=3Dm.gmane-mx.org@lis=
ts.yoctoproject.org><mailto:gley-yocto=3Dm.gmane-mx.org@lists.yoctoproject.=
org>
Sent: Saturday, April 4, 2020 9:36 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoc=
to@lists.yoctoproject.org><mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Image size reduction

[CAUTION: This Email is from outside the Organization. Do not click links =
or open attachments unless you trust the sender.]

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
> Sent from Outlook Mobile <https://apc01.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;data=3D02%7C01%7Cajama%40hcl.com%=
7Cf719cb14fe674f86f02408d7d8b236b0%7C189de737c93a4f5a8b686f4ca9941912%7C0%7=
C0%7C637216132261322392&amp;sdata=3D8in2t%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2=
Ba3QG9gU%3D&amp;reserved=3D0<https://apc01.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&data=3D02%7C01%7Cajama%40hcl.com%7C12=
8e3933213f473fc34a08d7dfd2da33%7C189de737c93a4f5a8b686f4ca9941912%7C0%7C0%7=
C637223969041569087&sdata=3DgY%2FoAEw1u9iOH8l9146xlNknKSslGAhehsRsWa83%2F10=
%3D&reserved=3D0>>
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









--
# Randy MacLeod
# Wind River Linux

--_000_SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0SG2PR04MB3335apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-b=
ottom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi Randy,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
In my image most of the size is consumed by heavy size packages.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
So i have given this task of image size reduction to application team.</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
If i will remove the dependencies then may be some feature get disabled wh=
ich could be needed.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Till now i am able to remove only python3 from dependencies.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(12, 100, 192);">
<br>
</div>
<div id=3D"Signature">
<div></div>
<div></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
Ajam Ali<br>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" s=
tyle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Randy MacLeod &lt;ra=
ndy.macleod@windriver.com&gt;<br>
<b>Sent:</b> Monday, April 13, 2020 11:18 PM<br>
<b>To:</b> Ajam Ali &lt;AjamA@hcl.com&gt;; yocto@lists.yoctoproject.org &l=
t;yocto@lists.yoctoproject.org&gt;; gley-yocto@m.gmane-mx.org &lt;gley-yoct=
o@m.gmane-mx.org&gt;<br>
<b>Subject:</b> Re: [yocto] Image size reduction</font>
<div>&nbsp;</div>
</div>
<div>
<p></p>
<p class=3D"x_MsoNormal" style=3D"line-height:12.0pt; background:#FFEB9C">=
<b><span style=3D"font-size:10.0pt; color:#9C6501"></span></b><span style=
=3D"font-size:10.0pt; color:red">[CAUTION: This Email is from outside the =
Organization. Do not click links or open attachments
 unless you trust the sender.]</span></p>
<div>
<div class=3D"x_moz-cite-prefix">On 2020-04-04 12:27 p.m., Ajam Ali wrote:=
<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Hi All,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Thanks for your suggestions. I am working on your suggestions.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I will let you know if it did not work for me.<br>
</div>
</blockquote>
<p>Ajam,</p>
<p><br>
</p>
<p>It would be useful if you could reply either way.</p>
<p><br>
</p>
<p>If there's still a problem then perhaps someone can help.</p>
<p><br>
</p>
<p>If you are able to resolve the issue, then a brief summary</p>
<p>of what you did could help the next person who has a similar</p>
<p>issue.</p>
<p><br>
</p>
<p>Thanks,</p>
<p>../Randy<br>
</p>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Ajam Ali<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"=
 color=3D"#000000" style=3D"font-size:11pt"><b>From:</b>
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:yocto@lists.yoctopr=
oject.org">
yocto@lists.yoctoproject.org</a> <a class=3D"x_moz-txt-link-rfc2396E" href=
=
=3D"mailto:yocto@lists.yoctoproject.org">
&lt;yocto@lists.yoctoproject.org&gt;</a> on behalf of Gmane Admin via list=
s.yoctoproject.org
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:gley-yocto=3Dm.gmane-m=
x.org@lists.yoctoproject.org">
&lt;gley-yocto=3Dm.gmane-mx.org@lists.yoctoproject.org&gt;</a><br>
<b>Sent:</b> Saturday, April 4, 2020 9:36 PM<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:yocto@li=
sts.yoctoproject.org">
yocto@lists.yoctoproject.org</a> <a class=3D"x_moz-txt-link-rfc2396E" href=
=
=3D"mailto:yocto@lists.yoctoproject.org">
&lt;yocto@lists.yoctoproject.org&gt;</a><br>
<b>Subject:</b> Re: [yocto] Image size reduction</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11=
pt">
<div class=3D"x_PlainText">[CAUTION: This Email is from outside the Organi=
zation. Do not click links or open attachments unless you trust the sender.=
]<br>
<br>
Op 29-03-2020 om 18:28 schreef Ajam Ali:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Actually my current image size is 3.9GB because of heavy size package=
s<br>
&gt; required by my project and without project required packages my image=
<br>
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
&gt; Please suggest the best possible way so that I could reduce the maxim=
um<br>
&gt; possible size(desirable below 1.5 GB).<br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance,<br>
&gt; Ajam Ali<br>
&gt;<br>
&gt;<br>
&gt; Sent from Outlook Mobile &lt;<a href=3D"https://apc01.safelinks.prote=
ction.outlook.com/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;data=3D02%7C01%7=
Cajama%40hcl.com%7C128e3933213f473fc34a08d7dfd2da33%7C189de737c93a4f5a8b686=
f4ca9941912%7C0%7C0%7C637223969041569087&amp;sdata=3DgY%2FoAEw1u9iOH8l9146x=
lNknKSslGAhehsRsWa83%2F10%3D&amp;reserved=3D0" originalsrc=3D"https://aka.m=
s/blhgte" shash=3D"MZSgP5/gVQCqa5UAlYJbtzqHB50yAVC79CYHf3&#43;MPzL5CWPAUJjJ=
fpsSs9SlTdDrRG32DNTPcv92fYmAnQ57ws4jjvFTSdL7C89Z8KPmxjgmweLhJCdnDbzV8NnbLit=
IoLH4Mbi&#43;7YzivftzeykVXBa5C2IZpn1HGzJ0Peb2xbU=3D">https://apc01.safelink=
s.protection.outlook.com/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;amp;data=
=3D02%7C01%7Cajama%40hcl.com%7Cf719cb14fe674f86f02408d7d8b236b0%7C189de737=
c93a4f5a8b686f4ca9941912%7C0%7C0%7C637216132261322392&amp;amp;sdata=3D8in2t=
%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&amp;amp;reserved=3D0</a>&gt;<=
br>
&gt; ::DISCLAIMER::<br>
&gt; ---------------------------------------------------------------------=
---<br>
&gt; The contents of this e-mail and any attachment(s) are confidential an=
d<br>
&gt; intended for the named recipient(s) only. E-mail transmission is not<=
br>
&gt; guaranteed to be secure or error-free as information could be<br>
&gt; intercepted, corrupted, lost, destroyed, arrive late or incomplete, o=
r<br>
&gt; may contain viruses in transmission. The e mail and its contents (wit=
h<br>
&gt; or without referred errors) shall therefore not attach any liability =
on<br>
&gt; the originator or HCL or its affiliates. Views or opinions, if any,<b=
r>
&gt; presented in this email are solely those of the author and may not<br=
>
&gt; necessarily reflect the views or opinions of HCL or its affiliates. A=
ny<br>
&gt; form of reproduction, dissemination, copying, disclosure, modificatio=
n,<br>
&gt; distribution and / or publication of this message without the prior<b=
r>
&gt; written consent of authorized representative of HCL is strictly<br>
&gt; prohibited. If you have received this email in error please delete it=
<br>
&gt; and notify the sender immediately. Before opening any email and/or<br=
>
&gt; attachments, please check them for viruses and other defects.<br>
&gt; ---------------------------------------------------------------------=
---<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
<br>
</div>
</span></font></div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
<pre class=3D"x_moz-quote-pre">
</pre>
</blockquote>
<p><br>
</p>
<pre class=3D"x_moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
</div>
</div>
</body>
</html>

--_000_SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0SG2PR04MB3335apcp_--
