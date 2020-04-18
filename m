Received: from APC01-PU1-obe.outbound.protection.outlook.com (APC01-PU1-obe.outbound.protection.outlook.com [40.107.132.111])
 by mx.groups.io with SMTP id smtpd.web10.5227.1587219400093985115
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Apr 2020 07:16:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=iP9Zpu7o;
 spf=pass (domain: hcl.com, ip: 40.107.132.111, mailfrom: rakeshku1@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CZowh5GDN5Lv7NvEOOQgJJqra2n+6GbFZKnemfGO1U=;
 b=iP9Zpu7oCXPU3i0w5Ts05XQpef2JTMubUQV6zGQTuImzusgOExy9vDSmnEtZKKE2Frb/M6ykcbfIqDZkC1IUCvJndgi1aBVFvRt6LGQuEXNUl5cjPRiiah2h44guf2U6N8bl3l1zR/jin8dGVpQJjcgqbUXWxy+gB+3b2gS8TlA=
Received: from PS2P216CA0035.KORP216.PROD.OUTLOOK.COM (2603:1096:300:1a::21)
 by TY2PR04MB3135.apcprd04.prod.outlook.com (2603:1096:404:9b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Sat, 18 Apr
 2020 14:16:37 +0000
Received: from PU1APC01FT052.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:1a:cafe::51) by PS2P216CA0035.outlook.office365.com
 (2603:1096:300:1a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Sat, 18 Apr 2020 14:16:37 +0000
Authentication-Results: spf=pass (sender IP is 192.8.195.56)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.56 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.56; helo=APC01-HK2-obe.outbound.protection.outlook.com;
Received: from APC01-HK2-obe.outbound.protection.outlook.com (192.8.195.56) by
 PU1APC01FT052.mail.protection.outlook.com (10.152.253.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Sat, 18 Apr 2020 14:16:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lfy+3UenBl63EmHwYGtWkTHJr1kMjURtmycjVYZXcNE7oQSNTqb6y5ejac2NKy7EsxVwSZqAFWEeOD9ORr6ez9pyiyYHMxSr9VIKnK3bXmCZxavFHOe5TgyD88NKEvFD0TXePqqAgLKRHYbVCykO2jSu7I4xJJ6FurUZ+fs6Be63NUeGpR4gY+hAVM5HKqU1XFBcE4umOA5SeSH8alKVFK3WvjIKfhgRaSnHgy3IIqMIDKDh8kyJTjXFCQbzl98Pg1XF8xvFWL93fPK6Jwh2kwfnYNmx5TKnzjDZnklQs8tRo52BcutcbXkvaFZPOARNpS2+B/zRI0cBkC4Py1dszA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CZowh5GDN5Lv7NvEOOQgJJqra2n+6GbFZKnemfGO1U=;
 b=PEMDkcYF6GSNyF4VOG9CDf/Spiy/t/k3JG3oZFLEGw5sHDkj2CZSLJsx+2M2iAvGcRY/0pe+buQkhU4C6Bw205wgnksQkWe80VEguzfkBjFCyr4W3s/BX2sUUwrIK/9gelQOcKKIYQzW2NFE/Bw3ogpLcPB8CJXzdW+ZOMhWNHeYT5gpZFKJcwfYL/NLJla6LZTR1Ip55VjOIfDPY4Oi1thf6NUHfnA/Vowg9dpdz5QKpvw5WZS1+SqiYm99k2cf/P6RSxKapEZFmna1QbmXMVDbU4G5ucUW3TLG87uxO5iwIUWAWGLQ/XzYpoT07beH3807vq4rYZtFynzASmcpPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CZowh5GDN5Lv7NvEOOQgJJqra2n+6GbFZKnemfGO1U=;
 b=iP9Zpu7oCXPU3i0w5Ts05XQpef2JTMubUQV6zGQTuImzusgOExy9vDSmnEtZKKE2Frb/M6ykcbfIqDZkC1IUCvJndgi1aBVFvRt6LGQuEXNUl5cjPRiiah2h44guf2U6N8bl3l1zR/jin8dGVpQJjcgqbUXWxy+gB+3b2gS8TlA=
Received: from SG2PR04MB4041.apcprd04.prod.outlook.com (2603:1096:0:6::9) by
 SG2PR04MB2361.apcprd04.prod.outlook.com (2603:1096:4:e::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.27; Sat, 18 Apr 2020 14:16:31 +0000
Received: from SG2PR04MB4041.apcprd04.prod.outlook.com
 ([fe80::70c2:dd6d:4a50:a79c]) by SG2PR04MB4041.apcprd04.prod.outlook.com
 ([fe80::70c2:dd6d:4a50:a79c%7]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 14:16:30 +0000
From: rakeshku1@hcl.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: bootsrap
Thread-Topic: bootsrap
Thread-Index: AQHWFYu4OttlP/oOK0SKefNHAYlPtg==
Date: Sat, 18 Apr 2020 14:16:30 +0000
Message-ID: 
 <SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60@SG2PR04MB4041.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=rakeshku1@hcl.com; 
x-originating-ip: [106.206.44.124]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 94435929-33a7-458a-00dd-08d7e3a31a55
x-ms-traffictypediagnostic: SG2PR04MB2361:|TY2PR04MB3135:
X-Microsoft-Antispam-PRVS: 
	<TY2PR04MB313550830A947945BA783690FBD60@TY2PR04MB3135.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;OLM:3826;
x-forefront-prvs: 0377802854
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR04MB4041.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(71200400001)(8676002)(81156014)(8936002)(478600001)(7116003)(6916009)(5660300002)(3480700007)(6506007)(66446008)(91956017)(76116006)(66476007)(66946007)(86362001)(64756008)(2906002)(33656002)(66556008)(55016002)(26005)(19627405001)(9686003)(52536014)(7696005)(186003)(316002)(166393002)(220243001);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Dzyu37zy/vTjEyRH/W6e+EiX+cMux07iBasaR+P9yiHBpLeKgAOv9ObUlcqRJvIZhl25+maiNuHKu+pcPyotlPsLcDHd6udJ3f+HnoyLEEhWorQBp70uFTv3mrj5l6qUJ88gREnAT6o1ipPbk180A4vpBgAFtk4iIz0u5vZCQUoPfZR2FZzQDE0niTullT1UzN7MbPdEh2S2sFdv2QVS4NpHwrYc1huXmLZT2DfmPleKTeVV5abMkl1d0vnyYKWPkFwcDT3m0M3lSZWhoEmZBsQGYjihtfn9WUHQ2IMwrKHHuAmEYpeJGF0rsh12W1DUXgqxipJJQ/9fHx4V7hzniWcnPo/L8bffTNvxiB+gYDZPTOsk8eG1kOVFGOHSQ2HTZD95qyFWdBGkaIG88SDyvaYB4yGc3tI+NNboNhT9Er7Z4dsgSCebrHIUk4kF+HBzE3pIVZlkXDOXK6jK//R6Z5dZVqXdIzrLZLETw3JEK+Xg4EW6k/YFAmmLQhmVUmVf86VhwWR2AGgHcj4/rvQiaw==
x-ms-exchange-antispam-messagedata: 
 2hQteMta3JzNPZO3+nqeaxtVRBKf+746LrkwAPjr3k9mGZeXAxf7pCKQQuayaK9KlFjypPeubz4ft4WKwG/8R7Gx7hCnGN/C4VAlAou4gDZkzB/rMWjuGC4RznngCMtI97owWrlSFoJL0qD4lI+/CA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB2361
X-DLP: MSGProcess
Return-Path: rakeshku1@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 PU1APC01FT052.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.56;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-HK2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(346002)(136003)(376002)(39860400002)(396003)(46966005)(8676002)(3480700007)(2906002)(356005)(5660300002)(47076004)(8936002)(81156014)(55016002)(9686003)(7116003)(6916009)(82740400003)(6506007)(19627405001)(70206006)(26005)(186003)(86362001)(36906005)(316002)(33656002)(70586007)(7696005)(81166007)(478600001)(52536014)(336012)(166393002)(220243001);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a8dc7e30-c864-4bff-5bdc-08d7e3a3177d
X-Forefront-PRVS: 0377802854
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	83Lt1uBN0sOGGOaKw2uiY0bRcymtmths3S4QAfJYybrk5ZHqPrsTk5m3Ti/ZSbmPGWFXHldHiv5NJaX16PkxwD1XyBWCuArxqb+cV9qYbQkCIcS1hrzRMXgPdAg4ujOjt94G2PyjO8WNa5eZIFS/3/EtBCFyAeb83rOsxBqqUq78OXGOF3YRtovHweAraSzZYDyGu4g9d91fWLAbsG/38lB194b6Lr4iVwXxRAYh4/AFlnb5Jk4aVOCvXk5HCMy21EiywN362pnR4Jkzi/FD6kSWOu7WOmQvKjl1/armPHxZokd+0K/MFA7TqhlRkP1l2+ktUbcZ7Ok3vbJGT0z7cKxWnKGv6LQZ8UzokzZ80BYsor3E15Bb6J4R5S6a8JHChHe9tceic+GSRQhvbIUpdpN30FE6uJFMJQvz8mizIpVngaSOlXi+mzaxYwdeJj87oQhQElQw55wY8/rSON9ZgbwEx/TNuD2+LaW+1IaR/ba7Ya/TfuDcJiwD5VsgyxnF8/9FuN+eBfztAglCEVLv5W3azp7eSmeR6iK6N4qsREziqgQlOJCNlnLn10wcSDBv
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2020 14:16:34.8246
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94435929-33a7-458a-00dd-08d7e3a31a55
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.56];Helo=[APC01-HK2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR04MB3135
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60SG2PR04MB4041apcp_"

--_000_SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60SG2PR04MB4041apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


Can anyone give me any guidance in creating recipe for any application whic=
h is having bootstrap.Here i am installing my application in /var directory=
 and this application is having bootstrap that needs to execute after creat=
ing rootfs.Here is the steps which i am following.


do_install() {
        install -m 0755 -d  ${D}/var/

        cp -rf ${S}/  ${D}/var
}

do_install_append() {

 cd  ${D}/var/my_app/
 ./bootstrap

}
::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents (with or without referred errors) sha=
ll therefore not attach any liability on the originator or HCL or its affil=
iates. Views or opinions, if any, presented in this email are solely those =
of the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, distribution and / or publication of this message witho=
ut the prior written consent of authorized representative of HCL is strictl=
y prohibited. If you have received this email in error please delete it and=
 notify the sender immediately. Before opening any email and/or attachments=
, please check them for viruses and other defects.
________________________________

--_000_SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60SG2PR04MB4041apcp_
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
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Can anyone give me any guidance in creating recipe for any application whic=
h is having bootstrap.Here i am installing my application in /var directory=
 and this application is having bootstrap that needs to execute after creat=
ing rootfs.Here is the steps which
 i am following.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span>
<div>do_install() {<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 -d &nbsp;${D}/var/<br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; cp -rf ${S}/&nbsp; ${D}/var<br>
</div>
<div>}<br>
</div>
<div><br>
</div>
<div>do_install_append() {</div>
<div><br>
</div>
<div>&nbsp;cd&nbsp; ${D}/var/my_app/<br>
</div>
<div>&nbsp;./bootstrap<br>
</div>
<div><br>
</div>
<span>}</span><br>
</div>
<font face=3D"Arial" color=3D"Gray" size=3D"1">::DISCLAIMER::<br>
<hr>
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or
 incomplete, or may contain viruses in transmission. The e mail and its con=
tents (with or without referred errors) shall therefore not attach any liab=
ility on the originator or HCL or its affiliates. Views or opinions, if any=
, presented in this email are solely
 those of the author and may not necessarily reflect the views or opinions =
of HCL or its affiliates. Any form of reproduction, dissemination, copying,=
 disclosure, modification, distribution and / or publication of this messag=
e without the prior written consent
 of authorized representative of HCL is strictly prohibited. If you have re=
ceived this email in error please delete it and notify the sender immediate=
ly. Before opening any email and/or attachments, please check them for viru=
ses and other defects.<br>
<hr>
</font>
</body>
</html>

--_000_SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60SG2PR04MB4041apcp_--
