Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3AB6C369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 13:43:38 +0000 (UTC)
Received: from HK3PR03CU002.outbound.protection.outlook.com (HK3PR03CU002.outbound.protection.outlook.com [52.101.129.38])
 by mx.groups.io with SMTP id smtpd.web11.20469.1744724613345112917
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 06:43:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=je/COGTM;
 spf=pass (domain: siemens.com, ip: 52.101.129.38, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zOKrsulm6vTYKAbWrumcj2MqJ49vz/SMvQO1Ngul/31YCgsFxx7s02aRHtZBLBU8k0zoiX+rwdmpF9UEYs5wwSQPkfeqrAy7m4h4UPJo2jEHJAIdbsn6/LkRveYeorGf82I7YCcIWwYvsm5LgSb/q/okgCQzMnU97xR8o0l0iGguMoYZvGRiGi85AK+hA4JKNWigSttbKZC4q14XYteoaX9VyPhc5txMA1gAIJ03f7dcHWq3ecxfzWALiVLmzNaAUWKOzca2BCBAb6xvGcd8dSIMOiaSFKxsRE2p0vYr1RAbB9hLuKclJByFtFm45CMOH3DL4HqyXOrC61YxD5AKdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lBzJ/GJTfAnrXmegNR0V1Ei0rJyZC5mph4zeUiRpGPA=;
 b=tr1zIDWCcX0GBa+HpLAQ0qCVjh298X4vZNUL+jw6Thf/AfjwIdcrsCz9pmPmjRkEQsnhsscW93zBZlzLsvkkA6B8kIGlaIWKiZ4tlSbIGzPOS13ENivQVdHervSaAEdD4zXSXbwXusrZy+SuSguR/MLQyo2SlxiVYstFC34ghGI2pE+fvDG6NhqwraRrDbaMXcm7dktatJt73l7DZCaEWwBkgcy/oPHRtqJuAlEBZl9/MLn8DMZVTDfHtTVj8QQKKJaMu+1dXAkvI+Qr6BAK1gev/AArYky4c213AEwJla3KFg5jBdDoXTuz2itEzLWxonE8zGNavCV+Gbqxaye2Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lBzJ/GJTfAnrXmegNR0V1Ei0rJyZC5mph4zeUiRpGPA=;
 b=je/COGTMwcLEQuoQHQhzHYaeY5lJF4eFCBxwUd97FqxjkjBhfaqSATInEFHLHvXU0LIgrSpP5auzAPF6CkkeviT/PAsaOvZCDIoH6RUlAluQt28depyvHGDg/yqt/Gf4WKfxHs/pF7hF4vx860uDtqSoIsJOTqZeLdeaf/t8yMofTf+sMex65ckDMccqj4ybaWI8U1UIQUArANuH1W5KuOs2ZD/Ofs2N7b5yNCfzleFCqdRJ3nVZPbGtGkQ6VCK49s6SXz1l0yt6QAjwbPfLJrDtNTXYeBoP5+HlxlJvpf4TinpS9T1LC7lVoi8iye09XtwytlmNC7ss5T117p1H0g==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by TY0PR06MB5779.apcprd06.prod.outlook.com (2603:1096:400:27e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.29; Tue, 15 Apr
 2025 13:43:25 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%3]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 13:43:25 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Gyorgy Sarvari <skandigraun@gmail.com>, Alexander Kanavin
	<alex.kanavin@gmail.com>
Subject: Curl 7.82 not supporting protocols smtp smtps
Thread-Topic: Curl 7.82 not supporting protocols smtp smtps
Thread-Index: AduuDFppE7HUg604QUqN8uz/8CP00A==
Date: Tue, 15 Apr 2025 13:43:25 +0000
Message-ID: 
 <TYZPR06MB5178F94F85D11BC311E4676186B22@TYZPR06MB5178.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=17b0564d-d2c1-48e1-9c13-a5c211d3b489;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-04-15T13:38:31Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|TY0PR06MB5779:EE_
x-ms-office365-filtering-correlation-id: e9ed09b6-72aa-4cd5-ef09-08dd7c237f0c
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018|8096899003|4053099003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?8rtDKAkDibMHg4PhqTegoHfM8OlMO8LPfdWOqf/3OTt2gvlMGUqgAmFwAzis?=
 =?us-ascii?Q?EdB5iFFjRyOs/J8IlIjg1AdCYnDA7DL6qbSOXPZddwmNTRhXrg4Xbld3m/Te?=
 =?us-ascii?Q?BFBMYxEeltnSvdusjc1aASlfuiIp2Xl1e+tGvOLu7PAAzE72Yx3TAc/V/s5W?=
 =?us-ascii?Q?Q9fIMNG9LPsN7huMf7pkvGOrrolZPJem1HFKsWL0+e4l9zq/m87TN8WU+ZkM?=
 =?us-ascii?Q?sfTOFC7PtFVUdE9y7TWQPd/mpgmhodoGXJlttVmFDen9wPXbQgQ98VcLLPqY?=
 =?us-ascii?Q?CJF8ENND+9LweL4Nr6s1VsV5YwLRl5JgffQWg5LQ3qLydsr+Oo/+bwNZBuCe?=
 =?us-ascii?Q?a3FpLnfVp1SjNY04AovK9mL6ZcjgirHtMzsxgQ+9tQHhfaafoUqNRAfjPNfZ?=
 =?us-ascii?Q?dm12LymP0M1B4bB4DzUUCWpInVErdU0kwFH6T4yshURoARMK4OjGF36mzt6q?=
 =?us-ascii?Q?djx3uT2XHOG0V3aQ2YpiGyhBuv08/meHdGJFNfzSIJrmFvtJgF35DBwar3u2?=
 =?us-ascii?Q?O16I1gmIZl1aBKBzRHXadJrlZrVPWkakUm55qrYv2QIpvXi60BRx/IgVXc3o?=
 =?us-ascii?Q?un5Z5gOWqiY41Op6OwlyMeqfqkI3PjFB1MGjpD9KcAepntzHEDqq2DHSqCaq?=
 =?us-ascii?Q?9AeLTyijgZi0w4wTD6Qz/OsTESZay4n9fmoIXGT4je4dWl2O8RmENLOfrcZb?=
 =?us-ascii?Q?iUgV/GTvIpxunS6mDGAwbUV2JLGhbGeoMBWOHxhHbGk/sPcPkeG6RFCQTrOa?=
 =?us-ascii?Q?B/X6RKAYhx0nwsKvUvvt2o2W3RTBwCqRGgZbgJPEGnTQmlHkbqz8ceicUKBi?=
 =?us-ascii?Q?hdN+mhUW/20sa+6W/FGj7aJXqdQR+f8RJAtNRKlMZ8W3iB1zk0zsHiNYC8AX?=
 =?us-ascii?Q?yoNtYlLfUtF7I05/4pQyRyqR6ENmlIU8eqvaRKsv4/rHTmzOd6RNuPwYPp5f?=
 =?us-ascii?Q?Nk8OJ4L6nBtr7xq3AaYeEBeMABZWtMc9Qe/EGNMV1Dij51vvBjF5flubPMnK?=
 =?us-ascii?Q?z1dXHmIctddUd4+rjoBomUVDnDC/Vbu5ntxL+sB2KzCl017viu3l/xnwkNWX?=
 =?us-ascii?Q?OPBkNyCDejBgg17uf29MbylZ62mef7uE+OMJzyW7Nw7bzmoNXRzBCbakxegH?=
 =?us-ascii?Q?UilBKIXWrfd4QVOQ28trvhBOSuwlTUpLeaq1SM3utBzRDOdb3sdIEkHUnxJY?=
 =?us-ascii?Q?qbjlB34zN7zgl68zmdFBqFOJvmVnNWsAQfVBD8UDI7CxOIubr0y5jQeU2HDR?=
 =?us-ascii?Q?2PZzY1MHr5ijDBnVf+L1UUQOrxHJbF+PDOIGmCH1LSOWhw8xtirRfMlh3eW2?=
 =?us-ascii?Q?N3ZkYXAzSCMyp9vAiShQeowUGwVGOtIacSCzsIu/Ffa4Apbb70kPX+FaYhC3?=
 =?us-ascii?Q?2MjlNjloR/6jR0NxQRR8yzgOYki5Sg7wNTgkggQm+F02hXIIp1xRBHRVlhkx?=
 =?us-ascii?Q?M90j7l/xE3BalMmkKqIZ9UwLS9L1eKbAW1R3vj6I3/E3CEOsB9mNRQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(8096899003)(4053099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?2r9B51N58DJ1KSYQqjigkWKkBUiEO5Tqrfhop0sJXPVZmXKal61rRM2jbQYT?=
 =?us-ascii?Q?3bdQn4QX/GwGA8nfMOW+umI9rYEy/9sJw7QNouVW1SAGsdcUtPCqH3y/XXTD?=
 =?us-ascii?Q?5j+g6XuhiSdiu7DRZt9l1E5D9dkd99rfhu12XMszjpf3TfnpGMN5wraiT2Ln?=
 =?us-ascii?Q?TnuevPZNBUhvUw5qNh4cX3WUowdHAXry7DxFkTrK7dwdFaO2Rm0UZQIQSL35?=
 =?us-ascii?Q?+S3Bfz1KDE6EGX+vak52dQUGMkZXmAhkHFxnxJC3OTAcOzEWvHVVSD4Rvm84?=
 =?us-ascii?Q?8P8mMrJgW+WADuetiUd5N7Dom29qYROtTPYqtZkREFmzoK8FkBDJu5vs7djd?=
 =?us-ascii?Q?VnBsHZhjlqRgr0SSu7ujMWZteHG9lfA3pFB9Y29pxKmgIlLooCzM10+Zsynj?=
 =?us-ascii?Q?zRsW7PMPvfzobrpOnpuF1PmiyNl3d3VxPq59LC7DQ2n6T4Nnul6fHKomMk4N?=
 =?us-ascii?Q?HDKjFCEphkuxn2FXseJh3tGkbqCU8oyJOyPQrqcx8/FYubqjxsr4U6TnYLet?=
 =?us-ascii?Q?NBxjEBBHvJ+Z7EBrRX9VhfyPcgBg1iGPkvmG6IZnYLXkY5zZO9sobyf2EaUN?=
 =?us-ascii?Q?PYr9ycmOqSo5eq5aKxyZjGpFBiWNFRkubdsef/foiHDEETV2LFcofRYQ9EzP?=
 =?us-ascii?Q?WmxDQ/mTRtsDlTTbysQMZgSPGp2ScThnnyyMoRi9A1pEqJFuWjjeb91KW713?=
 =?us-ascii?Q?2kHAvM1QbKP6Ol1UxCqLx70WtMDIZLhCFdqdR5hSgk565V/rND9nhqSx5gxc?=
 =?us-ascii?Q?NhRo0SrY19+1VVV4oVd/dhPFHZczDMeS3TOD9Fvv/oh94852NfJRZ3H2lom0?=
 =?us-ascii?Q?pcSdjpSDfVJlQ9oYDoUd7etrX0lCvcnbepzy4k9QcbBXU96VRTk/2en5rX9C?=
 =?us-ascii?Q?CIW1VjLrHia7Jb0hLsDzq2rIj1eNs36jdUmiBPuj2CDcJNStqPPAlaav4tDh?=
 =?us-ascii?Q?l4Aelin+iDlBsA+uWTh1veeEqwAP4y3HpASk/arGS6ur9k1KE9fRctTw+LJo?=
 =?us-ascii?Q?Aln28ZuafRBjuTDQTW5DOFD/b+tfBKUgG9t8xMd+DI5mZQFKt+5WtZXVce+0?=
 =?us-ascii?Q?Ssr0ZHWfN01zSIHQU0eW7Adu89FI2R+3jCq/2rKS3ipy9VQA3crIowXRWDRu?=
 =?us-ascii?Q?IMZ2ae2tELdNpbi5bfW7XPFAlH7ctb8Dtfp0wVoKz9IxPbKgRBko/H/Or0Hv?=
 =?us-ascii?Q?7bWxICbK4hs1CBK6WDhaxZzOQ2xsRYA3ZFN+gHXBBZ6LcUEhhIAQPwOhkq+f?=
 =?us-ascii?Q?xQdQK/FAjvD4gdi8mE+EB6wQKs99/6OBMGrn2YVHkzQAspFFPnhNQe8CSHrw?=
 =?us-ascii?Q?FWTwnh4J8gi1VAxeR3FORUmNOEicXD41/koJZltTPoM9CNr4o4o0Ijw1sccV?=
 =?us-ascii?Q?rLGbE3n9iZ6HrQumAg0Zbjyvp/lNnh1qKwsRoZqrMVLveKl9LUfGbtpObqEG?=
 =?us-ascii?Q?SSwHZFupDP7gX5xkHoaIjU8e62pxYVTNCiQ/zZKJTX+d136z0AowjI6jIJDm?=
 =?us-ascii?Q?cDiMsMdKYeiic4+CUzviyC6FfICyqweSKqaGURudaWIjbKrtFHi5YfpLg0Kv?=
 =?us-ascii?Q?YlTUHMv4XQE412Qv4xhHjkgzRxVMyQL/Vm+nZbrM?=
Content-Type: multipart/mixed;
	boundary="_004_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9ed09b6-72aa-4cd5-ef09-08dd7c237f0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2025 13:43:25.3226
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r1ut6mMO/3JN66AFcDYfRHTN2qcu7rI8xf6C5QwIYKRRHxIPXgVxdt7aj5TWm4gc1Z8PviS1+0MG3QCW5zkuJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5779
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 13:43:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65172

--_004_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_
Content-Type: multipart/alternative;
	boundary="_000_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_"

--_000_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

We have observed that in latest tisdk 9.1(curl7.82) the curl library is not=
 supporting smtp and smtps. But in tisdk 8.2(curl7.69) we have support for =
smtp and smtps.

Below is the logs for 2 versions,

curl --version
curl 7.82.0 (arm-oe-linux-gnueabi) libcurl/7.82.0 OpenSSL/3.0.11 zlib/1.2.1=
1
Release-Date: 2022-03-05
Protocols: file ftp ftps http https
Features: alt-svc Debug HSTS HTTPS-proxy IPv6 Largefile libz NTLM SSL TLS-S=
RP UnixSockets

curl 7.69.1 (arm-unknown-linux-gnueabi) libcurl/7.69.1 OpenSSL/1.1.1l zlib/=
1.2.11
Release-Date: 2020-03-11
Protocols: file ftp ftps http https smtp smtps
Features: HTTPS-proxy IPv6 Largefile libz NTLM SSL TLS-SRP UnixSockets

I am attaching curl bb file please have a look.. and let me know any modifi=
cations needed to support smtp and smtps.

Thanks and Regards
Manu

--_000_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have observed that in latest tisdk 9.1(curl7.82) =
the curl library is not supporting smtp and smtps. But in tisdk 8.2(curl7.6=
9) we have support for smtp and smtps.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below is the logs for 2 versions,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">curl --version<o:p></o:p></p>
<p class=3D"MsoNormal">curl 7.82.0 (arm-oe-linux-gnueabi) libcurl/7.82.0 Op=
enSSL/3.0.11 zlib/1.2.11<o:p></o:p></p>
<p class=3D"MsoNormal">Release-Date: 2022-03-05<o:p></o:p></p>
<p class=3D"MsoNormal">Protocols: file ftp ftps http https<o:p></o:p></p>
<p class=3D"MsoNormal">Features: alt-svc Debug HSTS HTTPS-proxy IPv6 Largef=
ile libz NTLM SSL TLS-SRP UnixSockets<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">curl 7.69.1 (arm-unknown-linux-gnueabi) libcurl/7.69=
.1 OpenSSL/1.1.1l zlib/1.2.11<o:p></o:p></p>
<p class=3D"MsoNormal">Release-Date: 2020-03-11<o:p></o:p></p>
<p class=3D"MsoNormal">Protocols: file ftp ftps http https smtp smtps<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Features: HTTPS-proxy IPv6 Largefile libz NTLM SSL T=
LS-SRP UnixSockets<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am attaching curl bb file please have a look.. and=
 let me know any modifications needed to support smtp and smtps.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Manu<o:p></o:p></p>
</div>
</body>
</html>

--_000_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_--

--_004_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_
Content-Type: application/octet-stream; name="curl_7.82.0.bb"
Content-Description: curl_7.82.0.bb
Content-Disposition: attachment; filename="curl_7.82.0.bb"; size=6273;
	creation-date="Tue, 15 Apr 2025 13:33:11 GMT";
	modification-date="Tue, 15 Apr 2025 13:43:24 GMT"
Content-Transfer-Encoding: base64

U1VNTUFSWSA9ICJDb21tYW5kIGxpbmUgdG9vbCBhbmQgbGlicmFyeSBmb3IgY2xpZW50LXNpZGUg
VVJMIHRyYW5zZmVycyIKREVTQ1JJUFRJT04gPSAiSXQgdXNlcyBVUkwgc3ludGF4IHRvIHRyYW5z
ZmVyIGRhdGEgdG8gYW5kIGZyb20gc2VydmVycy4gXApjdXJsIGlzIGEgd2lkZWx5IHVzZWQgYmVj
YXVzZSBvZiBpdHMgYWJpbGl0eSB0byBiZSBmbGV4aWJsZSBhbmQgY29tcGxldGUgXApjb21wbGV4
IHRhc2tzLiBGb3IgZXhhbXBsZSwgeW91IGNhbiB1c2UgY3VybCBmb3IgdGhpbmdzIGxpa2UgdXNl
ciBhdXRoZW50aWNhdGlvbiwgXApIVFRQIHBvc3QsIFNTTCBjb25uZWN0aW9ucywgcHJveHkgc3Vw
cG9ydCwgRlRQIHVwbG9hZHMsIGFuZCBtb3JlISIKSE9NRVBBR0UgPSAiaHR0cHM6Ly9jdXJsLnNl
LyIKQlVHVFJBQ0tFUiA9ICJodHRwczovL2dpdGh1Yi5jb20vY3VybC9jdXJsL2lzc3VlcyIKU0VD
VElPTiA9ICJjb25zb2xlL25ldHdvcmsiCkxJQ0VOU0UgPSAiY3VybCIKTElDX0ZJTEVTX0NIS1NV
TSA9ICJmaWxlOi8vQ09QWUlORzttZDU9MTkwYzUxNDg3MjU5NzA4MzMwMzM3MTY4NDk1NGYyMzgi
CgpTUkNfVVJJID0gImh0dHBzOi8vY3VybC5zZS9kb3dubG9hZC8ke0JQfS50YXIueHogXAogICAg
ICAgICAgIGZpbGU6Ly9DVkUtMjAyMi0yMjU3Ni5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NW
RS0yMDIyLTI3Nzc1LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjItMjc3NzYucGF0
Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMi0yNzc3NC0xLnBhdGNoIFwKICAgICAgICAg
ICBmaWxlOi8vQ1ZFLTIwMjItMjc3NzQtMi5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NWRS0y
MDIyLTI3Nzc0LTMucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMi0yNzc3NC00LnBh
dGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjItMzAxMTUucGF0Y2ggXAogICAgICAgICAg
IGZpbGU6Ly9DVkUtMjAyMi0yNzc4MC5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NWRS0yMDIy
LTI3NzgxLnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjItMjc3NzkucGF0Y2ggXAog
ICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMi0yNzc4Mi0xLnBhdGNoIFwKICAgICAgICAgICBmaWxl
Oi8vQ1ZFLTIwMjItMjc3ODItMi5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovLzAwMDEtb3BlbnNz
bC1maXgtQ04tY2hlY2stZXJyb3ItY29kZS5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NWRS0y
MDIyLTMyMjA1LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjItMzIyMDYucGF0Y2gg
XAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMi0zMjIwNy5wYXRjaCBcCiAgICAgICAgICAgZmls
ZTovL0NWRS0yMDIyLTMyMjA4LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjItMzUy
NTIucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMi0zMjIyMS5wYXRjaCBcCiAgICAg
ICAgICAgZmlsZTovL0NWRS0yMDIyLTQyOTE2LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZF
LTIwMjItNDI5MTUucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMi00MzU1MS5wYXRj
aCBcCiAgICAgICAgICAgZmlsZTovL0NWRS0yMDIyLTQzNTUyLnBhdGNoIFwKICAgICAgICAgICBm
aWxlOi8vQ1ZFLTIwMjMtMjM5MTRfNS0xLnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIw
MjMtMjM5MTRfNS0yLnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjMtMjM5MTRfNS0z
LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjMtMjM5MTRfNS00LnBhdGNoIFwKICAg
ICAgICAgICBmaWxlOi8vQ1ZFLTIwMjMtMjM5MTRfNS01LnBhdGNoIFwKICAgICAgICAgICBmaWxl
Oi8vQ1ZFLTIwMjMtMjM5MTYucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMy0yNzUz
My5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NWRS0yMDIzLTI3NTM0LnBhdGNoIFwKICAgICAg
ICAgICBmaWxlOi8vQ1ZFLTIwMjMtMjc1MzUtcHJlMS5wYXRjaCBcCiAgICAgICAgICAgZmlsZTov
L0NWRS0yMDIzLTI3NTM1X2FuZF9DVkUtMjAyMy0yNzUzOC5wYXRjaCBcCiAgICAgICAgICAgZmls
ZTovL0NWRS0yMDIzLTI3NTM2LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vQ1ZFLTIwMjMtMjgz
MTkucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMy0yODMyMC5wYXRjaCBcCiAgICAg
ICAgICAgZmlsZTovL0NWRS0yMDIzLTI4MzIwLWZvbDEucGF0Y2ggXAogICAgICAgICAgIGZpbGU6
Ly9DVkUtMjAyMy0yODMyMS5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NWRS0yMDIzLTI4MzIy
LTEucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMy0yODMyMi0yLnBhdGNoIFwKICAg
ICAgICAgICBmaWxlOi8vQ1ZFLTIwMjMtMzIwMDEucGF0Y2ggXAogICAgICAgICAgICIKU1JDX1VS
SVtzaGEyNTZzdW1dID0gIjBhYWExMmQ3YmQwNGIwOTY2MjU0ZjI3MDNjZTgwZGQ1YzM4ZGJiZDc2
YWYwMjk3ZDNkNjkwY2RjZTU4YTU4M2MiCgojIEN1cmwgaGFzIHVzZWQgbWFueSBuYW1lcyBvdmVy
IHRoZSB5ZWFycy4uLgpDVkVfUFJPRFVDVCA9ICJoYXh4OmN1cmwgaGF4eDpsaWJjdXJsIGN1cmw6
Y3VybCBjdXJsOmxpYmN1cmwgbGliY3VybDpsaWJjdXJsIGRhbmllbF9zdGVuYmVyZzpjdXJsIgoK
aW5oZXJpdCBhdXRvdG9vbHMgcGtnY29uZmlnIGJpbmNvbmZpZyBtdWx0aWxpYl9oZWFkZXIKCiMg
RW50cm9weSBzb3VyY2UgZm9yIHJhbmRvbSBQQUNLQUdFQ09ORklHIG9wdGlvbgpSQU5ET00gPz0g
Ii9kZXYvdXJhbmRvbSIKClBBQ0tBR0VDT05GSUcgPz89ICIke0BiYi51dGlscy5maWx0ZXIoJ0RJ
U1RST19GRUFUVVJFUycsICdpcHY2JywgZCl9IGxpYmlkbiBvcGVuc3NsIHNtdHAgc210cHMgcHJv
eHkgcmFuZG9tIHRocmVhZGVkLXJlc29sdmVyIHZlcmJvc2UgemxpYiIKUEFDS0FHRUNPTkZJRzpj
bGFzcy1uYXRpdmUgPSAiaXB2NiBvcGVuc3NsIHByb3h5IHJhbmRvbSB0aHJlYWRlZC1yZXNvbHZl
ciB2ZXJib3NlIHpsaWIiClBBQ0tBR0VDT05GSUc6Y2xhc3MtbmF0aXZlc2RrID0gImlwdjYgb3Bl
bnNzbCBwcm94eSByYW5kb20gdGhyZWFkZWQtcmVzb2x2ZXIgdmVyYm9zZSB6bGliIgoKIyAnYXJl
cycgYW5kICd0aHJlYWRlZC1yZXNvbHZlcicgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZQpQQUNLQUdF
Q09ORklHW2FyZXNdID0gIi0tZW5hYmxlLWFyZXMsLS1kaXNhYmxlLWFyZXMsYy1hcmVzLCwsdGhy
ZWFkZWQtcmVzb2x2ZXIiClBBQ0tBR0VDT05GSUdbYnJvdGxpXSA9ICItLXdpdGgtYnJvdGxpLC0t
d2l0aG91dC1icm90bGksYnJvdGxpIgpQQUNLQUdFQ09ORklHW2J1aWx0aW5tYW51YWxdID0gIi0t
ZW5hYmxlLW1hbnVhbCwtLWRpc2FibGUtbWFudWFsIgpQQUNLQUdFQ09ORklHW2RpY3RdID0gIi0t
ZW5hYmxlLWRpY3QsLS1kaXNhYmxlLWRpY3QsIgpQQUNLQUdFQ09ORklHW2dudXRsc10gPSAiLS13
aXRoLWdudXRscywtLXdpdGhvdXQtZ251dGxzLGdudXRscyIKUEFDS0FHRUNPTkZJR1tnb3BoZXJd
ID0gIi0tZW5hYmxlLWdvcGhlciwtLWRpc2FibGUtZ29waGVyLCIKUEFDS0FHRUNPTkZJR1tpbWFw
XSA9ICItLWVuYWJsZS1pbWFwLC0tZGlzYWJsZS1pbWFwLCIKUEFDS0FHRUNPTkZJR1tpcHY2XSA9
ICItLWVuYWJsZS1pcHY2LC0tZGlzYWJsZS1pcHY2LCIKUEFDS0FHRUNPTkZJR1trcmI1XSA9ICIt
LXdpdGgtZ3NzYXBpLC0td2l0aG91dC1nc3NhcGksa3JiNSIKUEFDS0FHRUNPTkZJR1tsZGFwXSA9
ICItLWVuYWJsZS1sZGFwLC0tZGlzYWJsZS1sZGFwLG9wZW5sZGFwIgpQQUNLQUdFQ09ORklHW2xk
YXBzXSA9ICItLWVuYWJsZS1sZGFwcywtLWRpc2FibGUtbGRhcHMsb3BlbmxkYXAiClBBQ0tBR0VD
T05GSUdbbGliZ3Nhc2xdID0gIi0td2l0aC1saWJnc2FzbCwtLXdpdGhvdXQtbGliZ3Nhc2wsbGli
Z3Nhc2wiClBBQ0tBR0VDT05GSUdbbGliaWRuXSA9ICItLXdpdGgtbGliaWRuMiwtLXdpdGhvdXQt
bGliaWRuMixsaWJpZG4yIgpQQUNLQUdFQ09ORklHW2xpYnNzaDJdID0gIi0td2l0aC1saWJzc2gy
LC0td2l0aG91dC1saWJzc2gyLGxpYnNzaDIiClBBQ0tBR0VDT05GSUdbbWJlZHRsc10gPSAiLS13
aXRoLW1iZWR0bHM9JHtTVEFHSU5HX0RJUl9UQVJHRVR9LC0td2l0aG91dC1tYmVkdGxzLG1iZWR0
bHMiClBBQ0tBR0VDT05GSUdbbXF0dF0gPSAiLS1lbmFibGUtbXF0dCwtLWRpc2FibGUtbXF0dCwi
ClBBQ0tBR0VDT05GSUdbbmdodHRwMl0gPSAiLS13aXRoLW5naHR0cDIsLS13aXRob3V0LW5naHR0
cDIsbmdodHRwMiIKUEFDS0FHRUNPTkZJR1tvcGVuc3NsXSA9ICItLXdpdGgtb3BlbnNzbCwtLXdp
dGhvdXQtb3BlbnNzbCxvcGVuc3NsIgpQQUNLQUdFQ09ORklHW3BvcDNdID0gIi0tZW5hYmxlLXBv
cDMsLS1kaXNhYmxlLXBvcDMsIgpQQUNLQUdFQ09ORklHW3Byb3h5XSA9ICItLWVuYWJsZS1wcm94
eSwtLWRpc2FibGUtcHJveHksIgpQQUNLQUdFQ09ORklHW3JhbmRvbV0gPSAiLS13aXRoLXJhbmRv
bT0ke1JBTkRPTX0sLS13aXRob3V0LXJhbmRvbSIKUEFDS0FHRUNPTkZJR1tydG1wZHVtcF0gPSAi
LS13aXRoLWxpYnJ0bXAsLS13aXRob3V0LWxpYnJ0bXAscnRtcGR1bXAiClBBQ0tBR0VDT05GSUdb
cnRzcF0gPSAiLS1lbmFibGUtcnRzcCwtLWRpc2FibGUtcnRzcCwiClBBQ0tBR0VDT05GSUdbc21i
XSA9ICItLWVuYWJsZS1zbWIsLS1kaXNhYmxlLXNtYiwiClBBQ0tBR0VDT05GSUdbc210cF0gPSAi
LS1lbmFibGUtc210cCwtLWRpc2FibGUtc210cCwiClBBQ0tBR0VDT05GSUdbc3NsXSA9ICItLXdp
dGgtc3NsIC0td2l0aC1yYW5kb209L2Rldi91cmFuZG9tLC0td2l0aG91dC1zc2wsb3BlbnNzbCIK
UEFDS0FHRUNPTkZJR1tuc3NdID0gIi0td2l0aC1uc3MsLS13aXRob3V0LW5zcyxuc3MiClBBQ0tB
R0VDT05GSUdbdGVsbmV0XSA9ICItLWVuYWJsZS10ZWxuZXQsLS1kaXNhYmxlLXRlbG5ldCwiClBB
Q0tBR0VDT05GSUdbdGZ0cF0gPSAiLS1lbmFibGUtdGZ0cCwtLWRpc2FibGUtdGZ0cCwiClBBQ0tB
R0VDT05GSUdbdGhyZWFkZWQtcmVzb2x2ZXJdID0gIi0tZW5hYmxlLXRocmVhZGVkLXJlc29sdmVy
LC0tZGlzYWJsZS10aHJlYWRlZC1yZXNvbHZlciwsLCxhcmVzIgpQQUNLQUdFQ09ORklHW3ZlcmJv
c2VdID0gIi0tZW5hYmxlLXZlcmJvc2UsLS1kaXNhYmxlLXZlcmJvc2UiClBBQ0tBR0VDT05GSUdb
emxpYl0gPSAiLS13aXRoLXpsaWI9JHtTVEFHSU5HX0xJQkRJUn0vLi4vLC0td2l0aG91dC16bGli
LHpsaWIiClBBQ0tBR0VDT05GSUdbenN0ZF0gPSAiLS13aXRoLXpzdGQsLS13aXRob3V0LXpzdGQs
enN0ZCIKCkVYVFJBX09FQ09ORiA9ICIgXAogICAgLS1kaXNhYmxlLWxpYmN1cmwtb3B0aW9uIFwK
ICAgIC0tZGlzYWJsZS1udGxtLXdiIFwKICAgIC0tZW5hYmxlLWNyeXB0by1hdXRoIFwKICAgIC0t
d2l0aC1jYS1idW5kbGU9JHtzeXNjb25mZGlyfS9zc2wvY2VydHMvY2EtY2VydGlmaWNhdGVzLmNy
dCBcCiAgICAtLXdpdGhvdXQtbGlicHNsIFwKICAgIC0tZW5hYmxlLWRlYnVnIFwKICAgIC0tZW5h
YmxlLW9wdGltaXplIFwKICAgIC0tZGlzYWJsZS1jdXJsZGVidWcgXAogICAgJHtAJy0td2l0aG91
dC1zc2wnIGlmIChiYi51dGlscy5maWx0ZXIoJ1BBQ0tBR0VDT05GSUcnLCAnZ251dGxzIG1iZWR0
bHMgbnNzIG9wZW5zc2wnLCBkKSA9PSAnJykgZWxzZSAnJ30gXAoiCgpkb19pbnN0YWxsOmFwcGVu
ZDpjbGFzcy10YXJnZXQoKSB7CgkjIGNsZWFudXAgYnVpbGRwYXRocyBmcm9tIGN1cmwtY29uZmln
CglzZWQgLWkgXAoJICAgIC1lICdzLC0tc3lzcm9vdD0ke1NUQUdJTkdfRElSX1RBUkdFVH0sLGcn
IFwKCSAgICAtZSAncywtLXdpdGgtbGlidG9vbC1zeXNyb290PSR7U1RBR0lOR19ESVJfVEFSR0VU
fSwsZycgXAoJICAgIC1lICdzfCR7REVCVUdfUFJFRklYX01BUH18fGcnIFwKCSAgICAtZSAnc3wk
e0AiICIuam9pbihkLmdldFZhcigiREVCVUdfUFJFRklYX01BUCIpLnNwbGl0KCkpfXx8ZycgXAoJ
ICAgICR7RH0ke2JpbmRpcn0vY3VybC1jb25maWcKfQoKUEFDS0FHRVMgPSsgImxpYiR7QlBOfSIK
CkZJTEVTOmxpYiR7QlBOfSA9ICIke2xpYmRpcn0vbGliKi5zby4qIgpSUkVDT01NRU5EUzpsaWIk
e0JQTn0gKz0gImNhLWNlcnRpZmljYXRlcyIKCkZJTEVTOiR7UE59ICs9ICIke2RhdGFkaXJ9L3pz
aCIKCmluaGVyaXQgbXVsdGlsaWJfc2NyaXB0Ck1VTFRJTElCX1NDUklQVFMgPSAiJHtQTn0tZGV2
OiR7YmluZGlyfS9jdXJsLWNvbmZpZyIKCkJCQ0xBU1NFWFRFTkQgPSAibmF0aXZlIG5hdGl2ZXNk
ayIK

--_004_TYZPR06MB5178F94F85D11BC311E4676186B22TYZPR06MB5178apcp_--

