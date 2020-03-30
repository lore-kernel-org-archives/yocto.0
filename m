Received: from APC01-HK2-obe.outbound.protection.outlook.com (APC01-HK2-obe.outbound.protection.outlook.com [40.107.130.119])
 by mx.groups.io with SMTP id smtpd.web11.42735.1585537214023962187
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 20:00:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=X3bf7d5e;
 spf=pass (domain: hcl.com, ip: 40.107.130.119, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYL0LSU38VFIb9jP2bdqtPZ/XQK8teZmKB7WnEJRnSc=;
 b=X3bf7d5eekRGRXfLTCRwleeRc388yjudVuS48ewCfoKNeQ3Qu3Wyxe79HSKncimyrQZf4yvQKWYtQ5jDmuBaCZWovpEU3c7ESY8JdMwTaQrU28kQV6r8vKMWg2e+retaiscLpCYTO+1yOUDClS+qMoyQuhHa1FdZ1Utcg5BWsrI=
Received: from SG2PR0401CA0015.apcprd04.prod.outlook.com (2603:1096:3:1::25)
 by TY2PR04MB3487.apcprd04.prod.outlook.com (2603:1096:404:30::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Mon, 30 Mar
 2020 03:00:10 +0000
Received: from HK2APC01FT046.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:1:cafe::46) by SG2PR0401CA0015.outlook.office365.com
 (2603:1096:3:1::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend
 Transport; Mon, 30 Mar 2020 03:00:10 +0000
Authentication-Results: spf=pass (sender IP is 192.8.195.59)
 smtp.mailfrom=hcl.com; gmail.com; dkim=pass (signature was verified)
 header.d=HCL.COM;gmail.com; dmarc=pass action=none header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.59; helo=APC01-SG2-obe.outbound.protection.outlook.com;
Received: from APC01-SG2-obe.outbound.protection.outlook.com (192.8.195.59) by
 HK2APC01FT046.mail.protection.outlook.com (10.152.249.180) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Mon, 30 Mar 2020 03:00:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H2C+nQWJJLw3onFTtvbG9+85SFzcKW1p62CxWa3seRL3OdVeJf7LTTnq0WKBAuPNLL30aPfCkgHy2bRJSy6KpMs4VlCITksywb6E3f4PQRZi/X7kFay91MMNSKwtpDPSsFmkxVKPD55IZuzcaeyVlxcE1A6UGBrTzL3zOtyVDlXh1n86cy78Qc6eYxUp2WBnS4cWMsXJ3XTHnRs7TWtx+fi/BTvv1sDmrqEeHQHpB8mo04g0cky8DvGKTUPxd+YIHwEKKRaj9k1A7E85jAU02nouhzFqg8fApTJC1ypsDHjDmLAzio8lpmu6izF/ydClRwI/OG2tSHjTyqoNzOuidA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYL0LSU38VFIb9jP2bdqtPZ/XQK8teZmKB7WnEJRnSc=;
 b=BHNSxQ3eTvoxXyr5KGgsI6+ckiqLMUwjrUr6YX751dZczI/tN0lnlpaNQGayGNFOH55hjpQ5EHXSU+tdiJJbVYw52HsAGKjRGdqeJQV03MLyX1zjYT+lDop8wOsYb2QLKDB7K7GEGJK8rfWgunoZBFPXmFsHMYmCjmfF/x+AnTo/MECC1R2N2v3aqsazP8FBuSfnK+ZlPpCleL7knLIrHi/pOPx26fqA7LjSzVhy3/9Fe+6NxyZQkx4OZuG6qQK6EzDHla3QG7mpS+G/DttNQBWFT4MxywkJClAPXVBy97vFBB+YH1c0p0DDRVu74jS9XOYwJ3XBQENEKwaq1UcPAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYL0LSU38VFIb9jP2bdqtPZ/XQK8teZmKB7WnEJRnSc=;
 b=X3bf7d5eekRGRXfLTCRwleeRc388yjudVuS48ewCfoKNeQ3Qu3Wyxe79HSKncimyrQZf4yvQKWYtQ5jDmuBaCZWovpEU3c7ESY8JdMwTaQrU28kQV6r8vKMWg2e+retaiscLpCYTO+1yOUDClS+qMoyQuhHa1FdZ1Utcg5BWsrI=
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com (20.177.25.76) by
 HK0PR04MB2945.apcprd04.prod.outlook.com (20.177.24.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Mon, 30 Mar 2020 03:00:05 +0000
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44]) by HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44%5]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 03:00:05 +0000
From: "Ajam Ali" <ajama@hcl.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Image size reduction
Thread-Topic: [yocto] Image size reduction
Thread-Index: AQHWBeZcNGow7JB2ME2ZHxK+8kxKv6hgEjqAgABgEYQ=
Date: Mon, 30 Mar 2020 03:00:05 +0000
Message-ID: 
 <HK0PR04MB2914115F5AB129C9AEB709FFB4CB0@HK0PR04MB2914.apcprd04.prod.outlook.com>
References: 
 <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>,<CAMKF1spcwhbFNYrVjd8TgNiWG2EWWFN8rm=fM0_VsV4hQ=ZqFA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1spcwhbFNYrVjd8TgNiWG2EWWFN8rm=fM0_VsV4hQ=ZqFA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.48.73]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5729240b-14e5-4fc4-d34a-08d7d45675d3
x-ms-traffictypediagnostic: HK0PR04MB2945:|TY2PR04MB3487:
X-Microsoft-Antispam-PRVS: 
	<TY2PR04MB348723F8AA1C528754DCDAA3B4CB0@TY2PR04MB3487.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;OLM:1751;
x-forefront-prvs: 0358535363
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2914.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(8676002)(33656002)(81156014)(8936002)(91956017)(76116006)(66946007)(2906002)(81166006)(4326008)(316002)(45080400002)(86362001)(52536014)(186003)(6916009)(966005)(71200400001)(66446008)(9686003)(478600001)(7696005)(53546011)(55016002)(66476007)(66556008)(64756008)(6506007)(5660300002)(26005);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 PpRwhAzMJrHZPatIF1OBcjV10/iG1Rh8oQoC62qk6/GqI3oZaxg4OT0IowU2VXhT+r9wqewcZVhthrz8mRD55ac+jwKzcTWuCkEBJL6X31QWnjAHPB2HgBYfbNSx/+OahTajXAJjwb1OggapppETkXS3PEt042OOXvksM6PVRVtT1Vd55nQCunKDECn8dPR1cHgxzv8Ht4AgD44pJgZ/qVl+tgsZGv8Q2aPvzVuGlUXwrlLucC37aakbxA9yvn5mgDBgWGx4+aZBi5iWZxRji1Cnj86EaInmsNxyV02uErRM59zfjl/aO2CJE+4fbrjEyLEbzhwYW95H724gebTYR/OdoIuv68UzsC1XyOgSyz31US3VS1oOE5vxXQohwnHNKJ7cx7eGwxFonnUKzEYeabgDnT2utMgSkNTvuCF0lf3VHMlxUo7ZdXeuFYD93euG6SdM5ruDdGjlHS7StztsZwpNHyAW+FuOwntj7b989n9CKf+HLxYvQBK5WDZTG2UFd7fx6aMHzimaP2wgRE18+A==
x-ms-exchange-antispam-messagedata: 
 SNzgtJp3Vg634Utec1dIwqIrr2Nydd59uhCiorWWZs43cCCVK090tumNSzQwZc+ZuDyMcPtsPgHDGtDpN/I7nS0WpyYTR/hxRDOY0PetrnuR0oCEcr0OWSIa4R2lCXu7TXfi16eUGesBv482zyNVaQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2945
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HK2APC01FT046.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.59;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-SG2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(46966005)(2906002)(55016002)(47076004)(45080400002)(478600001)(82740400003)(9686003)(81156014)(4326008)(86362001)(336012)(8676002)(81166006)(53546011)(6506007)(316002)(8936002)(36906005)(7696005)(52536014)(26005)(186003)(6916009)(70586007)(5660300002)(33656002)(966005)(356004)(70206006);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ad476bad-a843-4922-7ef0-08d7d45672f9
X-Forefront-PRVS: 0358535363
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AKnI6pHLK0E1Vjo61pXc4DX0MnkA5j9zRyvWqawXZW994ekdkU8t6taQw7C2gi42R3vnJmVmVVKy83onWCPsQYOHWyA4m5xR+TIOBLy+OXlHkGHIxHGcAQlZEAy4Ti0BsO1J+PKPTni/ozTgbKAEsG6bBsOztviY5o40w98BY6YPVhshZvi91hLvjpSszJHLqkftm9wekrBgrfPUNU/2RlFH2HLKYJH4jq6wilTWj/PsNrs7IcGZhSXXncry98apMsvUeBVcu7xwWqIREhjT3K1bCXr0zQE9xJhrFSFf0HTJV9vHCfRkMdVuwn1poLJz9lr+egqTGAlCv/OHhXpWA7dm6krQ+MT/VOvSiiXhP9ZXjGu/kb5Axnl7Ii93621314WXG3jXVIkTjj835Ti1SDOYfRVVrBBTVkQznilmAM6u/jKgIyumgeTWDqRCg4MszZSOia1EGI1Cwpl/bKyxQ4RoVXR0Hpd2OqZ+VUhyfc97msJYNAkK/nSugMs/TvW1t0LQSx64nVW0r+fFneVHCp0BvXLzSuP1n7Jx2XAIhZhCiGlkv8K73+DNy4ZVj+XYqKwurk9rgLOA/mRASIcziA==
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 03:00:09.8090
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5729240b-14e5-4fc4-d34a-08d7d45675d3
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.59];Helo=[APC01-SG2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR04MB3487
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR04MB2914115F5AB129C9AEB709FFB4CB0HK0PR04MB2914apcp_"

--_000_HK0PR04MB2914115F5AB129C9AEB709FFB4CB0HK0PR04MB2914apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi khemraj,

Please suggest the way to reduce the image size. Your earlier suggestion i=
s not that much helpful.

Thanks,
Ajam Ali

Sent from Outlook Mobile<https://aka.ms/blhgte>
________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, March 30, 2020 2:44:21 AM
To: Ajam Ali <AjamA@hcl.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Image size reduction

[CAUTION: This Email is from outside the Organization. Do not click links =
or open attachments unless you trust the sender.]

On Sun, Mar 29, 2020 at 9:29 AM Ajam Ali <ajama@hcl.com> wrote:
>
> Hi All,
>
> Actually my current image size is 3.9GB because of heavy size packages r=
equired by my project and without project required packages my image size i=
n Yocto is 800MB.
>
> I want to reduce the image size as maximum as possible.
> Please suggest the best possible way so that I could reduce the maximum =
possible size(desirable below 1.5 GB).

Add INHERIT +=3D "buildhistory" to local.conf and then do a build

Start looking at the buildhistory folder especially the size file
images/<machine>/glibc/<image-name>/installed-package-sizes.txt

>
>
> Thanks in advance,
> Ajam Ali
>
>
> Sent from Outlook Mobile
> ::DISCLAIMER::
> ________________________________
> The contents of this e-mail and any attachment(s) are confidential and i=
ntended for the named recipient(s) only. E-mail transmission is not guarant=
eed to be secure or error-free as information could be intercepted, corrupt=
ed, lost, destroyed, arrive late or incomplete, or may contain viruses in t=
ransmission. The e mail and its contents (with or without referred errors) =
shall therefore not attach any liability on the originator or HCL or its af=
filiates. Views or opinions, if any, presented in this email are solely tho=
se of the author and may not necessarily reflect the views or opinions of H=
CL or its affiliates. Any form of reproduction, dissemination, copying, dis=
closure, modification, distribution and / or publication of this message wi=
thout the prior written consent of authorized representative of HCL is stri=
ctly prohibited. If you have received this email in error please delete it =
and notify the sender immediately. Before opening any email and/or attachme=
nts, please check them for viruses and other defects.
> ________________________________
>=20

--_000_HK0PR04MB2914115F5AB129C9AEB709FFB4CB0HK0PR04MB2914apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"auto">
Hi khemraj,&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"auto">
Please suggest the way to reduce the image size. Your earlier suggestion i=
s not that much helpful.&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"auto">
Thanks,&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"auto">
Ajam Ali</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Sent from <a href=3D"https://aka.ms/blhgte">Outlook Mobile</a></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" s=
tyle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.khe=
m@gmail.com&gt;<br>
<b>Sent:</b> Monday, March 30, 2020 2:44:21 AM<br>
<b>To:</b> Ajam Ali &lt;AjamA@hcl.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t;<br>
<b>Subject:</b> Re: [yocto] Image size reduction</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt=
;">
<div class=3D"PlainText">[CAUTION: This Email is from outside the Organiza=
tion. Do not click links or open attachments unless you trust the sender.]<=
br>
<br>
On Sun, Mar 29, 2020 at 9:29 AM Ajam Ali &lt;ajama@hcl.com&gt; wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Actually my current image size is 3.9GB because of heavy size package=
s required by my project and without project required packages my image siz=
e in Yocto is 800MB.<br>
&gt;<br>
&gt; I want to reduce the image size as maximum as possible.<br>
&gt; Please suggest the best possible way so that I could reduce the maxim=
um possible size(desirable below 1.5 GB).<br>
<br>
Add INHERIT &#43;=3D &quot;buildhistory&quot; to local.conf and then do a =
build<br>
<br>
Start looking at the buildhistory folder especially the size file<br>
images/&lt;machine&gt;/glibc/&lt;image-name&gt;/installed-package-sizes.tx=
t<br>
<br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance,<br>
&gt; Ajam Ali<br>
&gt;<br>
&gt;<br>
&gt; Sent from Outlook Mobile<br>
&gt; ::DISCLAIMER::<br>
&gt; ________________________________<br>
&gt; The contents of this e-mail and any attachment(s) are confidential an=
d intended for the named recipient(s) only. E-mail transmission is not guar=
anteed to be secure or error-free as information could be intercepted, corr=
upted, lost, destroyed, arrive late
 or incomplete, or may contain viruses in transmission. The e mail and its=
 contents (with or without referred errors) shall therefore not attach any =
liability on the originator or HCL or its affiliates. Views or opinions, if=
 any, presented in this email are
 solely those of the author and may not necessarily reflect the views or o=
pinions of HCL or its affiliates. Any form of reproduction, dissemination, =
copying, disclosure, modification, distribution and / or publication of thi=
s message without the prior written
 consent of authorized representative of HCL is strictly prohibited. If yo=
u have received this email in error please delete it and notify the sender =
immediately. Before opening any email and/or attachments, please check them=
 for viruses and other defects.<br>
&gt; ________________________________<br>
&gt; <br>
</div>
</span></font></div>
</body>
</html>

--_000_HK0PR04MB2914115F5AB129C9AEB709FFB4CB0HK0PR04MB2914apcp_--
