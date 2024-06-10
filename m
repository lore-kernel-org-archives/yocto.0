Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD998C27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 10:39:00 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.66])
 by mx.groups.io with SMTP id smtpd.web10.16506.1718015932736304163
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 03:38:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=QjqYhY+n;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=QjqYhY+n;
 spf=pass (domain: arm.com, ip: 40.107.22.66, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=EeHWrUB/eUVsOuyW83y6KoIULTchTVaoCF2+Bta0Fo98kNmwMOZclFVo1OMmafXuR0BL3lNujmcWRycyp5NO3fXKejj4CmvtyCQ6h8EpldsvHIZdXs2y9QaQfKooomNymW5xg+P+g7zRQv8u7PSgx02Bmvj+qoz53RDtfGTz4KXtBXgk8eFmA+kFXZiNvGpf8UyFmzLrKTDR6F6nz07SXlSCxa7NbubgV7N/qnHaNQb++gU3IbTS4+RC2O2ALSfyAPF3vvsXWCrd1dr2lSccbtJ7EEu9gLUrjyWIHefCd050S8MROIl0/jpv9dSUPJvAxwTsjcTdW64SKc15lv0Cfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fddXJpouDxpX3Bj0J0MxxWulZNmhbPTQsXSnCD2F0/0=;
 b=m1NGzpNDwkgBeF9LauJesh7BmAvpgYJoVFZdqknpbnb7BJr6OVL1iT1lkjb/GmHmZ+lQ7LEBP3crMGONLajyDW3TfR6I/F2x5Smfdx9ikNlV0PpvR0xe2KRh42Ez3CW6nJYKfLoUhbxF4/LrWaydxpg9C1crpFNykfQRy+am0ZLTIWc2N0dE6HYfk307ZXVZgkVWT1q2WPxMD/GP6QK0wRUdR5lM6FHVDgwma6Ot0a5ZxjAPQx3x4C3DW9FOUiIC9rbeCD2NtYu6XKnsT3HxMIjU5sDO6CYdPGaQiIBwtBevTQMKjH+Ap+uowVoJp05PDUOHbClGSZyrU+aXdSQsXA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fddXJpouDxpX3Bj0J0MxxWulZNmhbPTQsXSnCD2F0/0=;
 b=QjqYhY+nZFbOp+x96N/sa8/3ZTJcT6z29kRn1fRxbpESX8/f72oFAb/AscdcNBmrVAKweNlHU05oJCJfPoQ17zTa6Vw65NGdgpr5lOexiLniOuDjFY5s14FLlFr0sdVzgbB0z+JiGon7GjIsDIQ7ApY64niBpSSiACTBoMEMGww=
Received: from DU7P194CA0006.EURP194.PROD.OUTLOOK.COM (2603:10a6:10:553::15)
 by AS8PR08MB9362.eurprd08.prod.outlook.com (2603:10a6:20b:5a9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 10:38:47 +0000
Received: from DB5PEPF00014B88.eurprd02.prod.outlook.com
 (2603:10a6:10:553:cafe::c2) by DU7P194CA0006.outlook.office365.com
 (2603:10a6:10:553::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7656.25 via Frontend
 Transport; Mon, 10 Jun 2024 10:38:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B88.mail.protection.outlook.com (10.167.8.196) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Mon, 10 Jun 2024 10:38:45 +0000
Received: ("Tessian outbound 22b47b37b644:v330"); Mon, 10 Jun 2024 10:38:45 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2b6738a4387d1ba0
X-CR-MTA-TID: 64aa7808
Received: from 6165ba165608.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 5228052F-5EAD-4D1B-9363-ADDD155CFAE1.1;
	Mon, 10 Jun 2024 10:38:39 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6165ba165608.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 10 Jun 2024 10:38:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E4mYAz6zUtysqqJ5Rck6fHeujJc7LyUgPzLqm4BDm5m8snZ24AeePtS/vFNasCPR9JtHX9W3/nc5t3tulS98nAe4yJNqR1/zIjBIwDOldMkatVkAHfZoc+Af1jmkHNHDv6PZMD3XdmfKfb8U7ezBMZjTpBnCOfkdmxJvu2k9ZFM3FGESb8q0UKI2u0QdQo4ep1tyJ22iujjsLMAIJXbzM5VFX6ssqqQ1Vfe0KKQBu0fh0Zu0SQPZYA9mR0usUNDScWPFv+hfug8sA0cHlYKlRqCDay4VFbTMxJP+wCT4hnXdJKTDDTg0kf2kR29nU7trD9wpP4lPTaM6BKJ+TZTt7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fddXJpouDxpX3Bj0J0MxxWulZNmhbPTQsXSnCD2F0/0=;
 b=RBIAt/PUQlk/C0+dHslow/54o/ipm98BferZnVNuasIC61y7Rq4B/i7OyO4Rz01vc95XwaoE2DuPeXbsm2xL4F8b180IFFSvsr078x9MztUjhfFO0sK3gGgucaRv5ubgjhS2ohqOuwD9npgPLsQgFTVU/OLtInrEHqzmOvzilIVHsfVk+ODwMIAUDTu7s1jw8EChGB2FokSge1MwZkjqz3RHrvIo06f+5HYvdXjQZvkD6eDb9arrz7I55oQS06uG8w8DAtfZ3FEhcW7qSeEcJB1ojTOR8BQdlrVmdvoozpX3N67egOwN4pNUxFN6/AmAfgtGgfBR3fnm2I+t38NEuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fddXJpouDxpX3Bj0J0MxxWulZNmhbPTQsXSnCD2F0/0=;
 b=QjqYhY+nZFbOp+x96N/sa8/3ZTJcT6z29kRn1fRxbpESX8/f72oFAb/AscdcNBmrVAKweNlHU05oJCJfPoQ17zTa6Vw65NGdgpr5lOexiLniOuDjFY5s14FLlFr0sdVzgbB0z+JiGon7GjIsDIQ7ApY64niBpSSiACTBoMEMGww=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8831.eurprd08.prod.outlook.com (2603:10a6:20b:5f4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 10:38:37 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 10:38:37 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"Salahaldeen.Altous@leica-camera.com" <Salahaldeen.Altous@leica-camera.com>
Subject: Re: [yocto] depoly-ipks are missing the lib**.so file for shared
 library yocto recipe #kirkstone #yocto
Thread-Topic: [yocto] depoly-ipks are missing the lib**.so file for shared
 library yocto recipe #kirkstone #yocto
Thread-Index: AQHauyClLi3xNkhzp0iIuR0M2+jrRrHAzmUA
Date: Mon, 10 Jun 2024 10:38:37 +0000
Message-ID: <4F653B98-5776-4076-8CA4-F37D017038BC@arm.com>
References: <ubXW.1718015161943743348.Q0eO@lists.yoctoproject.org>
In-Reply-To: <ubXW.1718015161943743348.Q0eO@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8831:EE_|DB5PEPF00014B88:EE_|AS8PR08MB9362:EE_
X-MS-Office365-Filtering-Correlation-Id: 3157ac7d-1bc9-4223-b6ed-08dc89398131
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?aXFKQlIzRzI1S2dtUDJxWnZEMmU3VVkycGdWOTZCRUxCMDBVVHZUZFhIOUZ0?=
 =?utf-8?B?RFNKUk90cnFURlZuOW1FMHU4a044RUJlWlBpNWpENXhXZFVrTXU4dWcvcXJL?=
 =?utf-8?B?M25ER3krV291b3RuUXUxQVJsTHNEanVzQlNjRm5IRzZhVWwya1crZnRDU1Iw?=
 =?utf-8?B?VTZSVFM5cUtPOWdqZzZRalBvMFMrbFBLWURuZmdMaHh1YkN2Kzl3dXIxdVB1?=
 =?utf-8?B?SnMrMEljK3dKL3ZMSzhUdmY4ZnBIaXdteGFRRjlCalVUd2MwK1d5UEJuT2pU?=
 =?utf-8?B?aGZQWnMweUVCVkRVTXh2bEwxVGFqSnVCSHNXWUlOQkdpeVlMNFpoYW5kRFVq?=
 =?utf-8?B?b0dWRXNBWStRL3ZUY2RGVUJUbGVPTkswUFpVZktOMXdWZENYY0EzWllWZk5S?=
 =?utf-8?B?ZkJSMlpvUXRVbVJZWjlVMVNzMXVRdlNQTG9TUGNmbkE3bEVkRVVZRFA1MFNj?=
 =?utf-8?B?KzJYVTA2WGFVWXZiK2tZZVg0Wk8xcFVuU0pxckNRQ1lmRklxZWxUVkdYN3ox?=
 =?utf-8?B?YWRpS2VmSy9DUGF6b3M1d3ZZdzJUbHV6RyszalRKYU9hZjJpS2JVRXE3WnRP?=
 =?utf-8?B?Znh0cjEvM1hMYm9jMUVCbTVHWUlZeWlDN2JrRXY0TWgxL1JkcGhTMG5ZUVJv?=
 =?utf-8?B?TGpYbm5YQThWWlB3ZERlRnRodXZRNFBRVks0QTVtN1hBOUMxcnJjVVRBTFZp?=
 =?utf-8?B?ZUVYZ3F4dGFKaE56UDkvQWl5UCtrandod2RkZ0FwTitCZFVuZWJCL2s1Rlls?=
 =?utf-8?B?Zk1WS3NCV0pJWjU1bTloTjFYMHJnMTNzTklqSlYwQ3A3cUJ3dkQ4MXAvRWhp?=
 =?utf-8?B?VkV2T3paSlVRcXg1bGxFVEZVS0grUjcvSFRPNng0UmRqWVdKUHgwWHQwdW1t?=
 =?utf-8?B?bm01MzR3ODRDeVFSb0VEbmp3U1FBNkVzeUt2UkU4WXV1bS9xcFhWSjJ5M3ND?=
 =?utf-8?B?LzIvcEhoOEtOWUpaRjVJRktaWGtETm83QWM4V2FQMGNuN3RGRXcvajQ4Z1FB?=
 =?utf-8?B?cXpoMXFqeWV3N2I3VVZhMEIzdXJJVHkxelhtN2V6eHpwYkkrMVdGWFhzdG10?=
 =?utf-8?B?c2VOM3BzV0hoOTZhVTEvalA4VUw0VGl2VGZoSXROUXVJNGxsWlVYQTc5US9U?=
 =?utf-8?B?akR2R2JNOEd4V1pJZkJMblFsSTZtZDlPaXZYTXAyQmV4U0RqbVlaWnQyc0JY?=
 =?utf-8?B?S05OWWxIKzZQZ0t4aEVwRURzdU5kYUwwTTA2WWFSR0RMVjdNMVBtcUU4ajJu?=
 =?utf-8?B?eXJXZ1k3Q2NORS9vZk1JTFhKMWkxMXZMVktQeG00YUtWaWMrTlpOdmZjdU5u?=
 =?utf-8?B?NlhncG9BMSs0YlFPN1VNMDVrclo0eDlqcWFHUisySzRnVW1NellpaWR3S2ZJ?=
 =?utf-8?B?ZDduYXhvTGpVcllUYzE2czFWVjI5ZEZOSGFCTmUraElnb1VleUFZRm1oUkhG?=
 =?utf-8?B?M0MzZ0QzWFF3RWRFYStxZExabGlHa0Y5QmRJQWdMS1UrN0dTV05oYzJSSGtx?=
 =?utf-8?B?cG01TUp3Tk9ZTStuTG5FVzBZYys1OTNmWmhNZXMwdzJWUlhoTzhEd1RxaUJk?=
 =?utf-8?B?V2xKcVFLOWc4ZE9jbjFwZ2x2WjBCbUFxYllIaXhEYStsbVZiNWN6Vnk4MXJt?=
 =?utf-8?B?UDk4bE5VTXRJYWN2YWhOd0ttcTlwNFFlWUUxOW1YREQ5QXFEQVpKRHRuYlFO?=
 =?utf-8?B?WFkyYTRiV1AxdDZXcXNkUHEybzVraUFSMzVEQktsZkJJZHFEL2I0K3Q1TjBD?=
 =?utf-8?Q?4DRa6Vj74kO3LRJxgBezmbdHLspsfsYyOMXNfZP?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2857AD688CE87846ACDE8F3134156403@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8831
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e9bf77ec-1104-4b14-632c-08dc89397c41
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|1800799015|35042699013|376005|82310400017|36860700004;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aUo5RDROYzdJT01WTkRjVWdTU0w4Z0doNDY1YkpBRkx5R1J1UDVlSStORHdF?=
 =?utf-8?B?V2V6SGx0RE45MnpKeTRHT0NSNkZqZFBsSXlvQ2JPTWVyK0t4aWx2Q3d6dVRt?=
 =?utf-8?B?MWc4NW0zc0ZEbFBVd1RPZ1QydmcyM3l5NlBkY1EyWm40ZVgwOGVJQW51V09I?=
 =?utf-8?B?SWZrdzZVYUZhM3BWeWg5bURhNlpsNzFvRzV4YXIyK3JadUdGZEk5dXJIZ1NS?=
 =?utf-8?B?TjA2VEFMNloxRlltclRJVFlBblNSd0RmUXVlRnJuWE4wVklGeElmeXNNKzBm?=
 =?utf-8?B?NTl4NXVOWDFOWHVWZ1h4cnN2Q1BsYzYra1RlVmZzdFVjMlVDb0xIcE8yZWJ3?=
 =?utf-8?B?UnNQTXZJQ1RrVldGN3F0dHVkenBXZExQNmovdmNmeVp3b1ZCbEpxM1JucDk3?=
 =?utf-8?B?eXVJZVYwZHN0WE90RTZ1R1Y5MWt5SG1uMXErWExrZHkrUnFUMG9pUG1najNo?=
 =?utf-8?B?N3d0ZnpNK1dxWnU5Q3prUE8wSm1ZT0hZbGlCalU0QUtpUUlKQS82U2k2RFlG?=
 =?utf-8?B?L0JNemIvQlpFTUx2WnFOcDNDUmlnaVoxcnY1Q1J5YldXSXhWVERoclJGM21G?=
 =?utf-8?B?VjBPenB5S0ZjZTkycjlLRmNrRUVKTVpab1czVmVpVFBZWHpBcDVVbXg2OWlh?=
 =?utf-8?B?OCtRRTBSaUFBRHhWLzZoYnd5V2QxUC9mbFBlUWtBeTZyTy9MMERlcmhjcUNC?=
 =?utf-8?B?VWpCcDdYNUxWRGNaY2sxSDFHc01NSjVjWFlDc3R4dUNnK24xZVl2YkpGckZ2?=
 =?utf-8?B?VkNjQmVIbVBrQ1pSZFVjajVva0RGblJnSHR3MHo4M0x0b2pDUEJ3Uk5NMWUv?=
 =?utf-8?B?Zmd2WDk0YXBydGNjMzAvSEg3cTE1S2ZSVzJZR0E1WWxjWHV4MEowYTI0QnlD?=
 =?utf-8?B?c0x2N05SVmFWckR4b1pNOFBMR1p6TFB1ell0MkVhNHgraHRnSUt0ZW9vckRq?=
 =?utf-8?B?UEVqYVBQTFZIZ1dlc2JoVE12QnNBY2dEYkhsUzBtMDcwRTRRMEJEdkhPZkRs?=
 =?utf-8?B?R2NXZDJTbUx2elBkNk0xdXRhZU05QkJnb0JZOExHdDE0Vmx6MmVvbWludC8z?=
 =?utf-8?B?Nm1Ra1Q5RUtyWkovRUdMOGRzdjRNQTRsTjJIaDNROFdieUJkRjI4MUFIZGln?=
 =?utf-8?B?MjRURjVUTklYOTBac1l2blM2WXVobFlLaCt5UDNoc3ZzVjFwODNyZUs1ZmVq?=
 =?utf-8?B?TnNBamh0OU9SMnZ4MXVyWnpjU3FuRHBiSVhsSEdaNGdEYWVxZ1VHZnRJQmlF?=
 =?utf-8?B?TUpJSktZVDlwSnh3K1F6WVNMMWFzWTJwczllamEzYVBHbUZhamRQcU42OStZ?=
 =?utf-8?B?L2JqOHFIclpzMDN6Zm05YkhHV2JBczQ0ODZJdndIbGtpQmcrVXY5RFdFaFdP?=
 =?utf-8?B?cUd3dmI5S2NaOWxxRnhkTEJ2Q2x5M0RsU05xdWg5R2hmLy9Wd3RXZ0xvbk5R?=
 =?utf-8?B?aUN4QVFXRisxU1piU1dFUEJQNXNKTlZCSTVMUmtyWkdSK0k5ai8rbWtkWkVB?=
 =?utf-8?B?dFVHeU5saFZiUE9YdlNqSW5vRUx3NzdNbkM4U25tTk1RT29vYnBtWVN3czk5?=
 =?utf-8?B?UWNicEFnaWxEcDRVNFpTaDBCWlRra3JQRm1XaGRmT3V1MFpXZndWQ1M0Smtt?=
 =?utf-8?B?cVhwcXljSG5tT0p5ZVdKNWhIWFBETkEyWnJqQmF2UmlFYU5obUV5dFFPWGtG?=
 =?utf-8?B?NWlwdEFFbndsQUY3dnlpUmsyZzNBWGlmcjBmZnU1dzFSQ3FvNkVMaU90ZlZ1?=
 =?utf-8?B?Wlk1V05hSmRsbVVmTURSNzZoL1YyYnRTVjlFTm5YVGxYdWwrSWVHVkdqQkE5?=
 =?utf-8?B?WVFuVkM2VkkyYVc3YUVTZz09?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(35042699013)(376005)(82310400017)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 10:38:45.3427
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3157ac7d-1bc9-4223-b6ed-08dc89398131
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9362
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 10:39:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63302

T24gMTAgSnVuIDIwMjQsIGF0IDExOjI2LCBBbHRvdXMsIFNhbGFoYWxkZWVuIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxTYWxhaGFsZGVlbi5BbHRvdXM9bGVpY2EtY2FtZXJhLmNvbUBsaXN0
cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpIEFsbCwNCj4gIA0KPiBJIGhhdmUg
b25lIHlvY3RvIHJlY2lwZSB3aGljaCBpbmhlcml0IG1lc29uIGFzIGJ1aWxkIHN5c3RlbSBhbmQg
Z2VuZXJhdGUgdGhlIHJpZ2h0IGxpYnMgaW4gdGhlIGltYWdlIGZvbGRlcg0KPiANCj4g4pSc4pSA
4pSAIGxpYmxjX2NvcmUuc28gLT4gbGlibGNfY29yZS5zby4wDQo+IOKUnOKUgOKUgCBsaWJsY19j
b3JlLnNvLjAgLT4gbGlibGNfY29yZS5zby4wLjQuNw0KPiDilJTilIDilIAgbGlibGNfY29yZS5z
by4wLjQuNw0KPiBidXQgaW4gdGhlIGRlcGxveS1pcGtzIHRoZSAuc28gc3ltYm9saWMgbGluayBp
cyBtaXNzaW5nIA0KPiBkcnd4ci14ci14IHJvb3Qvcm9vdCAgICAgICAgIDAgMjAyNC0wNS0wOCAx
NDoyOSAuL3Vzci8NCj4gZHJ3eHIteHIteCByb290L3Jvb3QgICAgICAgICAwIDIwMjQtMDUtMDgg
MTQ6MjkgLi91c3IvbGliLw0KPiBscnd4cnd4cnd4IHJvb3Qvcm9vdCAgICAgICAgIDAgMjAyNC0w
NS0wOCAxNDoyOSAuL3Vzci9saWIvbGlibGNfY29yZS5zby4wIC0+IGxpYmxjX2NvcmUuc28uMC40
LjcNCj4gLXJ3eHIteHIteCByb290L3Jvb3QgICAgIDI2NTM2IDIwMjQtMDUtMDggMTQ6MjkgLi91
c3IvbGliL2xpYmxjX2NvcmUuc28uMC40LjcNCj4gYW5kIGluIHRoZSBkZXYtaXBrIHBhY2thZ2Ug
dGhlIG1pc3NpbmcgKi5zbyBleGlzdA0KPiBkcnd4ci14ci14IHJvb3Qvcm9vdCAgICAgICAgIDAg
MjAyNC0wNS0wOCAxNDoyOSAuL3Vzci9saWIvDQo+IGxyd3hyd3hyd3ggcm9vdC9yb290ICAgICAg
ICAgMCAyMDI0LTA1LTA4IDE0OjI5IC4vdXNyL2xpYi9saWJsY19jb3JlLnNvIC0+IGxpYmxjX2Nv
cmUuc28uMA0KPiBJIG5lZWQgdG8gaGF2ZSBhbGwgaW4gb24gZmlsZXMvc3ltYm9saWMtbGluayBp
biB0aGUgcmVsZWFzZSBpcGssIGFuZCB0aGUgcm9vdGZzIHdpaHRvdXQgdGhlIG5lZWQgdG8gaW5z
dGFsbCB0aGUgZGV2LWlwayBsYXRlciBvbiwgYW55IGlkZWEgd2hhdCBJIG5lZWQgdG8gYWRkIGlu
IHRoZSB5b2N0byByZWNpcGUgb3IgdGhlIG1lc29uIGZpbGUNCg0KVGhpcyBpcyBpbnRlbmRlZCBi
ZWhhdmlvdXIuICBDb252ZW50aW9uYWxseSwgbGlicmFyaWVzIGFyZSB2ZXJzaW9uZWQgKGVnIGxp
YmxjX2NvcmUuc28gPGh0dHA6Ly9saWJsY19jb3JlLnNvLz4uMC40LjcpIHNvIHRoYXQgc3BlY2lm
aWMgYmluYXJpZXMgbGluayBhZ2FpbnN0IHNwZWNpZmljIEFCSXMgYXQgcnVudGltZSwgYW5kIHRo
ZXJlIGFyZSBjb252ZW5pZW5jZSBzeW1saW5rcyAobGlibGNfY29yZS5zbyA8aHR0cDovL2xpYmxj
X2NvcmUuc28vPikgdGhhdCBhcmUgdXNlZCBhdCBsaW5rIHRpbWUgc28geW91IGNhbiBqdXN0IGxp
bmsgdG8gbGlibGNfY29yZS5zbyA8aHR0cDovL2xpYmxjX2NvcmUuc28vPiBhbmQgdGhhdCBpcyBy
ZXNvbHZlZCB0byBhIHNwZWNpZmljIEFCSSB2ZXJzaW9uLg0KDQpUaGlzIG1lYW5zIHRoYXQgYXQg
X3J1bnRpbWVfIHlvdSBuZWVkIHRoZSByZWFsIGxpYnJhcnksIGFuZCBub3QgdGhlIHN5bWxpbmsu
ICBUaGUgc3ltbGlua3MgYXJlIHBhY2thZ2VkIGludG8gdGhlIC1kZXYgcGFja2FnZSBhbG9uZ3Np
ZGUgdGhlIGhlYWRlcnMgYmVjYXVzZSB0aGV54oCZcmUgb25seSBuZWVkZWQgaWYgeW914oCZcmUg
Y29tcGlsaW5nIGNvZGUuDQoNClRoaXMgaXMgY29udmVudGlvbiwgYW5kIHRoZXJlIGFyZSBleGNl
cHRpb25zLiBUaGVyZSBhcmUgdHdvIHBvc3NpYmlsaXRpZXMgaGVyZToNCg0KMSkgVGhlIHZlcnNp
b25lZCBzaGFyZWQgbGlicmFyeSBzaG91bGRu4oCZdCBiZSB2ZXJzaW9uZWQsIGJlY2F1c2Ugb3Ro
ZXIgYmluYXJpZXMgdXNlIGRsb3BlbijigJxsaWJsY19jb3JlLnNvIDxodHRwOi8vbGlibGNfY29y
ZS5zby8+4oCdKSBhdCBydW50aW1lIGluc3RlYWQgb2YgbGlua2luZyB0byBpdCBhdCBidWlsZCB0
aW1lLiAgSWYgdGhpcyBpcyB0aGUgY2FzZSB0aGVuIGlmIGl04oCZcyBzZW5zaWJsZSByZW1vdmUg
dGhlIHZlcnNpb25pbmcgZW50aXJlbHkgKGFzIGl04oCZcyBwb2ludGxlc3MpIGFuZCByZWFkIGh0
dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL25leHQvZGV2LW1hbnVhbC9wcmVidWlsdC1saWJy
YXJpZXMuaHRtbCNub24tdmVyc2lvbmVkLWxpYnJhcmllcy4NCg0KMikgWW91IGRvbuKAmXQgYWN0
dWFsbHkgbmVlZCB0aGUgLnNvIGF0IHJ1bnRpbWUuDQoNClJvc3M=

