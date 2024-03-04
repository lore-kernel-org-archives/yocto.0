Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AAFC48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 09:59:38 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.48])
 by mx.groups.io with SMTP id smtpd.web10.94832.1709546372427546771
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 01:59:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pmA9suat;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pmA9suat;
 spf=pass (domain: arm.com, ip: 40.107.14.48, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=e5hmKTmeldL+REDrUm/e09+rMlq9vROG1g3TN2thbvAhCW7i+wHslIb+qvWyJSMS+LuYKiEcbT6oqDRM8csxwhHbUcJZfI869NbXLAL1G624lCSAocByG2cMh8OlYzeoc3RM4yt82RylvavpzmEdZShR19jAaEbGi2jhM5ANxCv6SKmRMtuqrREB1hS9N1ioA4Ie7rI2yU+BAOPzxxDiLiX1GPXo1gbazDFsIgNAzJ9BE+LXebpDEc7t6bGiXw3s46dG4Sb/NxcrouYS/VZoju3RIhkzgL9jxu534OYGIX4yuy1lFIjx83E7u18hUDpcDdsWg/jY+hB4o5puf25b4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MknZ90U+6y9zB06x9xePIA1bpTyZtyXgjMU6kWySMRI=;
 b=EASBPFatQTeVAFbst/FTfnz1ILo+slo+5qY+v4UJEFr/rUU8nAIklLJKOi3PmO6aQ9MHIzXZZFv3gYrdT+GMby60IIwJZO/T9RcXI5HFHn9Ir1OltZSrZGte8ZgwYhP5Df6+ptNUqi+MxDwBZRVYuVK7ghnNzH0Td6XwNESSVeFU0c6AW8hL56yki3rG6E+JrAl9oipqiHuQOS72Ls8ejS0et5QeGqyeUC4xn99nxAAf+lGWX5KxD+nP9u6ELqL1CSl/sS82al0cvxvBVFoHQ8Ln236KXatIEPI4+2mvoP0Z5yuw9Uw/5ubj+jsSZNTrFwKArW81upf7WvGKwVmgvw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MknZ90U+6y9zB06x9xePIA1bpTyZtyXgjMU6kWySMRI=;
 b=pmA9suat5wqrbP1IpJH5SEaU5sG+TSoNEe9DvZBZJ2D/1+rE1fncOwMlYE3mUwpmtJyd0Fnb6pmP0bixJ3Wwc+ldjxq3OCcLCJnywN4/2nZWibXulnpBkVGhFygWYS/oafzGhuGAtjpQ8/qfYy4y3sN9DD73vCDe8w5oevl5CAE=
Received: from DB8PR06CA0047.eurprd06.prod.outlook.com (2603:10a6:10:120::21)
 by AM8PR08MB6609.eurprd08.prod.outlook.com (2603:10a6:20b:317::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38; Mon, 4 Mar
 2024 09:59:28 +0000
Received: from DB1PEPF0003922E.eurprd03.prod.outlook.com
 (2603:10a6:10:120:cafe::2b) by DB8PR06CA0047.outlook.office365.com
 (2603:10a6:10:120::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38 via Frontend
 Transport; Mon, 4 Mar 2024 09:59:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF0003922E.mail.protection.outlook.com (10.167.8.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.11 via Frontend Transport; Mon, 4 Mar 2024 09:59:28 +0000
Received: ("Tessian outbound e4025c20aa63:v228"); Mon, 04 Mar 2024 09:59:28 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b158bf94cb65f352
X-CR-MTA-TID: 64aa7808
Received: from 1758c6ea6728.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id DDABD908-18F4-464E-AAEA-DA0B9576B1A9.1;
	Mon, 04 Mar 2024 09:59:21 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1758c6ea6728.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 04 Mar 2024 09:59:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lP2Zl/F9KPHQDUdUg43c0y4HI+D5H+3A42gTp9hi6nE2dLA1oOjf4XqAloxim4dCi+FZjv/19+SdMIwJO/SUr4Lp4/Ut+7mK8BzPDJRtj/mCDlxHpzaoZeuveMA/b+qv/P85Udy6dePMOm1uI74aR6XIb2pQXBTIFWjoz82/Nw/5Kcdw0vACOvDktAEwHxMuhm1Rf7mYGOCGHv7q/u1sGz0NR2w4CyrzeF9UpN/utNAgzZzZlVOgPa0bJ12jBAmZYj/r7DKlfwbtlcIgIACoLMGwKY3FVtv6vqv0Ksfp9rQhvLT/4ydZHmAqC1B27bKn8YqBNRvNbP7jo+mkU06xCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MknZ90U+6y9zB06x9xePIA1bpTyZtyXgjMU6kWySMRI=;
 b=F7lfKlmROy5ac4XyZQzdf+h3ndh7BVRlAGitYAg7cXeOYW7sHspHyNUhVQZnJwF1TM8GOXGtil9Bd3XRoNEA44s2fLqyy6yKsiQ/TE5q7fRRM/hEXfXWsHphWgb5/pp78RfP3WFO2m3BhBg4zW3M8mM/oK8nVY3yLmv5FAgPH/x5MqhsAsd9ZebHBVsrBVpTkXjdXTH/GXYBzCudR2FCBFg5GMmpr+Je9HLfL2P8c1YKjIwwV+xl2FjUA5I08hw2wMlq+v4QlTv4quBArzTp3LbNcxvvEoYCCZFLNpT6kVXq+WCyPSksWFeuRbzQNnV+nqqNrB81vFNjZiIqjNn+tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MknZ90U+6y9zB06x9xePIA1bpTyZtyXgjMU6kWySMRI=;
 b=pmA9suat5wqrbP1IpJH5SEaU5sG+TSoNEe9DvZBZJ2D/1+rE1fncOwMlYE3mUwpmtJyd0Fnb6pmP0bixJ3Wwc+ldjxq3OCcLCJnywN4/2nZWibXulnpBkVGhFygWYS/oafzGhuGAtjpQ8/qfYy4y3sN9DD73vCDe8w5oevl5CAE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB6510.eurprd08.prod.outlook.com (2603:10a6:102:158::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38; Mon, 4 Mar
 2024 09:59:20 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7339.035; Mon, 4 Mar 2024
 09:59:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"joerg.sommer@navimatix.de" <joerg.sommer@navimatix.de>
CC: "yocto-security@lists.yoctoproject.org"
	<yocto-security@lists.yoctoproject.org>
Subject: Re: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX
Thread-Topic: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX
Thread-Index: AQHabU84Kwd5Cn8kKkyrsNU1E5NI0rEnWpWA
Date: Mon, 4 Mar 2024 09:59:20 +0000
Message-ID: <D3FB0380-6404-4015-9FFB-C29944612056@arm.com>
References: 
 <DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2@DB3PR0102MB3658.eurprd01.prod.exchangelabs.com>
In-Reply-To: 
 <DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2@DB3PR0102MB3658.eurprd01.prod.exchangelabs.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB6510:EE_|DB1PEPF0003922E:EE_|AM8PR08MB6609:EE_
X-MS-Office365-Filtering-Correlation-Id: fa4e6732-0d08-40e3-7dd3-08dc3c31c7ca
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 N9kTJcoBtPFwa6qeIFU8cZu1xIX2MaJXjlBdgWJMI70Cd8P9YliV/raPkqAuoZ0QKYHj3Vp0W6/jKJCwfjtwyKo/dRwyBVjBLWr8Bu0dAZMrTjivTrG/JNYiu1Wx8LZkL0zDQhwwRIEeTarzZm7xbqep/GUlm7MaXxhg/4397KeKdFkmu8n0b4AjRO5TT4jErV7vt/F41v2baZbSXjch7k8Llt8WkXcxJD9TFt4l+1G5VjeCLXgMhvtnujcsAgmRdDekCpfoUuqBgRZ5MjfpL1h1WRGWcafJuPLGB5mHgyW/7Qk+f5OiaNGnqPmgDeNCxFzp147Il+GV3h1meX7xBgk+1QPvcpoRr+UkVJr6HCizhgAzef8HnantAAGMwVGqM5Az90tAXjrdl4PBejtX0NLXX2GyHmQvSfhpZTP+hUX7yy6GNR2m1HBX7FQe5Vbx2lLRVNPeraAsM7yXFfoRKOl+ZGoEtXVxO8yYtAPkOD0bRj4h2ql29DWHF2ubaXYxDDylqii07m6FyZ3dRj3aM0DxQC7rILHvso8LWZOs3UMALLZ75XvlukPEZjDktveW59gp9M7X2XglPaCZBSIP14h7+Y/qUXf7MzDKhPA0T3AZux2J9tzFDXdHCT7s2+RU0NoLOcWI998CoE0wKYf0mi38HPrfbRuRy5QezhiAOSY=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7F03340D45DA2C43B077262F052D5B2D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6510
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF0003922E.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	386b1848-606a-42a7-3524-08dc3c31c2f9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g7Sz5I3iqDGq1MAKGhAxuWmYEELtAvkr70SPXmMQ8AScAxDqdmfCLOCE4EQHz5EXffmlcbZCL8MYnSLd8jaSXYh/hGUoJ6b4aEHvUPhOf4SWL4Xu8qXI9HCY4xjYSVH209tbfV8x6yP1YLbrqa+5cjqh6vMzaeu5zK0SiOz1bjIRcfOcqSMxYM7lKrRoPu/4xAV5iHpm9Hkb43+NCRD0YbhSMNIWKa1IhfuzihOkHCFk8PuTtVFBpz1mH0avIXMesBcGcoWl/NDDe+McflTfWufImJbc2yqcsptXPcCu9yL1WVWCz8sudyyYB5bFfdg8e3qkUNfdfIztgSBMmv5xL2rnKaA9bZFK/hotK3V+lJMykNaoj+jneMVDHJsmMUebrDfCvhBget9jIT8oPYo/nVWK167ZltIiFNYccef/0WRcRB0x65u3kuSHSvsUo4S4j1lddZoJX25aI1P6uRl8WBw5qqwFpAoCAvkCR/SWXPxhJfILeusbKCqyBCPmUJ3xgEO37pjqPYiCxT5DhdQX6Sl6O6krGYZd1OuV6X6gAAZ6FrMn/KOxMUssKBhpzMtlO9Isz+E6EzSh3kDMOc99Di4aRobU0v6L2mI9fhsKUwY1r1IwnN1FO66jV90ujwzbM2pTTYt2f+QK7iz0bHv6RtM5AZ7DKMnOwOatzKa5Lxe9ivji5dwJetFl+X4DTNfySJrQBjHQDEMx0/RDW2+k5g==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400014)(36860700004)(376005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 09:59:28.2768
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa4e6732-0d08-40e3-7dd3-08dc3c31c7ca
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF0003922E.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6609
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 09:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62661

T24gMyBNYXIgMjAyNCwgYXQgMTA6MDksIErDtnJnIFNvbW1lciB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8am9lcmcuc29tbWVyPW5hdmltYXRpeC5kZUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gZG9lcyBhbnlvbmUgdXNlIERlcGVuZGVuY3lUcmFjayBodHRwczovL2RlcGVu
ZGVuY3l0cmFjay5vcmcvIHRvIGFuYWx5c2UgQ1ZFIHZ1bG5lcmFiaWxpdGllcz8gSSd2ZSBjcmVh
dGVkIGEgc2NyaXB0IHRvIGNvbnZlcnQgdGhlIHNwZHgudGFyLnpzdCB0byBhIEN5Y2xvbmVEWCBK
U09OIGFuZCB1cGxvYWQgdGhpcyB0byBEZXBlbmRlbmN5VHJhY2suIEJ1dCBJJ20gaGF2aW5nIHRo
ZSBwcm9ibGVtIHRoYXQgQ1ZFcyBmaXhlZCBpbiBZb2N0byBieSBwYXRjaGVzIGFyZSBub3QgcmVm
bGVjdGVkIGluIHRoZSBzcGR4LiBUaGVyZSBpcyB0aGUgc291cmNlSW5mbyBmaWVsZCB0aGF0IGxp
c3RzIGZpeGVkIENWRXMsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGVuY29kZSB0aGlzIGluIEN5
Y2xvbmVEWC4gSG93IGlzIHRoaXMgZG9uZSB3aXRoIFNEUFg/IERvZXMgYW55b25lIGRvIENWRSBh
bmFseXNpcyB3aXRoIFNQRFg/DQoNClRoaXMgaXMgc29tZXRoaW5nIHRoYXTigJlzIGJlaW5nIGFj
dGl2ZWx5IHdvcmtlZCBvbi4gIEluIHRoZSBtZWFuIHRpbWUsIGlmIHlvdeKAmXJlIHRyYW5zZm9y
bWluZyB0aGUgU1BEWCBpbnRvIEN5Y2xvbmVEWCB0aGVuIEkgc3VnZ2VzdCB0aGF0IHlvdSBhbHNv
IHJlYWQgdGhlIGN2ZS1jaGVja2VyIEpTT04gb3V0cHV0IHRvbywgdGhhdCBjb250YWlucyBpbmZv
cm1hdGlvbiBhYm91dCB3aGF0IENWRXMgaGF2ZSBiZWVuIHJlc29sdmVkIHZpYSBwYXRjaGVzLg0K
DQpSb3Nz

