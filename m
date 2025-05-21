Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B42C2D0CD
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 10:38:07 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.47])
 by mx.groups.io with SMTP id smtpd.web10.8060.1747823877066546573
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 03:37:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=KFVbyu/O;
 spf=pass (domain: siemens.com, ip: 40.107.20.47, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e2p4liQycvDWm8Xjzu9Kmm1O/wVH4ltl8PoPuDRr6Z8K8zThKfh93n5Norm3DBTwz+y+pS7J1vZDRvMxG38bdvi5gAn7wajC/qeGYxR0ZgmKbxkWEntq05PdGjZGMjV8cBx/r0x2zimB6cPGZCYqJgPQoR+Q7Hh0NLH08FwVHx23T0x2ewG02EUI/hI95eXr6F+5PDToGMXhYDk5BJEgyCBHtWfivN9HkwBwLda0i62IJ7m+rB3zAVvaUE/nlLLU0cCF5tVZLPFBDwVU6jbaUMFbyNnHICzadPF1RZL/UeHDXWG5SCzwrT37dgbE8y9z1DM7p1vNXEVA7PYb+EKTFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wo3aNEzuL869tYtJm+xHHPFBAUlXAe0Gd8ra6SrsxPU=;
 b=PeWI5cFbFodWO0hneXFBOU6vQe8pM6DTFN56oOogrLR/K80shChtibmmnFnjY/pqPCAVPR4cYegK7VC59vbPauf+3IvjxUHxiA0qfZMwpOHlB1IskaUMBCVw5H2flhecRK0RQ/H10DeleJBiv95xnJNfJaTzkqguWTKGI9ps2rmyFrtJ03IygsgZ7lqnui5hCGGMV6CDpAG+AHJ2BapfeMoz+qpKwM6UNIExYFDQay0brVGMZVwvjWT3R1TyvVJWSlmlKqIAdBwtuVJsM5obZaFoN9GwuMWw3AO6BCy5jBuc129Eyi6l3vr56ck6GbN3jiSX8sfEQ+eK7ITDwydyHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wo3aNEzuL869tYtJm+xHHPFBAUlXAe0Gd8ra6SrsxPU=;
 b=KFVbyu/OPg4sZgEWvBVtvSWobCSe1JE5Bzfgp2cakZhSFqlzNgVQLuquvjHYzC69jejkKIMEOAyppZ6V2JNNUwuQdPcI0NGxnkbzXQY82QsXiBhohWs6ytRYd7cllQMvOLPq2/I8hEgLt/FIB24fgDY09SUcjBlWCfC1F1uCGzRuO+VO3ZVdwimuag73TmhGstb8fpyOAU29hBPvsDSESBdUarGqkDBI4p6t1hztKbKarBqkBJ8cV5shA5Cbzx7pEDq60nBBDtyPgjw2ryAkgURSs9jMLwAm5IqVqj8ymkP755Sj1+GZMTIL1KjpYXCb4mfR17iTdwJWwVIhA5557g==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by GV2PR10MB6936.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:e0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 21 May
 2025 10:37:53 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%4]) with mapi id 15.20.8769.019; Wed, 21 May 2025
 10:37:53 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"sateesh0457@gmail.com" <sateesh0457@gmail.com>
Subject: RE: [yocto] meson upgrade issue dunfell (0.53 I want to upgrade 0.63)
Thread-Topic: [yocto] meson upgrade issue dunfell (0.53 I want to upgrade
 0.63)
Thread-Index: AQHbyjpuELH7sYU66kiSCXPCMUw+2rPc4tuAgAABFiA=
Date: Wed, 21 May 2025 10:37:53 +0000
Message-ID: 
 <AS1PR10MB5697C84BA131B0FB085FB72DFD9EA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <urlO.1747823018739136306.ditq@lists.yoctoproject.org>
 <CANNYZj-+kZUPy23+7onssTXf8t_L6FAcUReAg4nMLCwGZbrmBw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-+kZUPy23+7onssTXf8t_L6FAcUReAg4nMLCwGZbrmBw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=41b831d0-1ace-44cb-9716-b5e04194598f;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-05-21T10:36:24Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|GV2PR10MB6936:EE_
x-ms-office365-filtering-correlation-id: d57a04e8-06bb-4c26-5214-08dd98538acc
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018|7053199007;
x-microsoft-antispam-message-info: 
 =?utf-8?B?T1lqZG51ZFlPVmtienRvU01zYlBXdzBBSzYvWVFvVWs2WVhLTWowbFlIZ1RP?=
 =?utf-8?B?eUNWdWhnWlJEYmtFYTNpV1ByVHExMUtrc3lISnNyK29zRHpIbUN4WjJFWS9j?=
 =?utf-8?B?bVhsaFl5ZkpvUHl1V1hHTlBsMytkT0wxSXpWZWxuK2JaR05xc3JGa2c1S3Zi?=
 =?utf-8?B?QXVsU1VKSjNrUXRkNE5TYmthUXZ2VVpZaUZlK3k2b1JDNGxoR0xqa0JPQjFH?=
 =?utf-8?B?aWtzWll1NWdSZzVKL1dOdTBNK3kvaGlKVGFMWHhLY09KdzFOVXpSQ1l4b3lG?=
 =?utf-8?B?eVEyOFp0V20zVnBKMFJpUys0V3FWQURxUWMwbVVWZ3VYVjZSNUkyOCtoOTF5?=
 =?utf-8?B?RFpCMk9rYXZOMy9yaDJQNGNqajZtWmNzY2x1UFhoc21DSllBOTI2Z2dkaTBj?=
 =?utf-8?B?SEJLR1UxdG1WbHRnN29YY0hpTEFkcTZSbCt4UXpxQU9ML2p0aGUrOHBUTFRP?=
 =?utf-8?B?T3lBVHZjc3paSzZva0RzcTg2b3hITVlFWnJxNVo0ZjBHR0hudzBrR1V2SlFM?=
 =?utf-8?B?NU53UFM1K0pIdTJJUHVUWWNvMUpEZnYrTnhLSGs2dkpLQUdIM3BBS3BVSGRH?=
 =?utf-8?B?Zm9FdElEZE5RMjU2dWQ5MGJ1MzZ0TGVGMWdhM0tTbnMwMFRyNGczLzJtU25C?=
 =?utf-8?B?MjB3WlkrRllocjgyUnRrajMyUTJQSXhrck9RT3liTjl0OVlHWEpVcEFxTmpF?=
 =?utf-8?B?YXdBa0QzMTRFb1JuWVVCZ1Rwc0l3b3Q1S0hrcUxnMGFObFlrZkREZ0FWd0cw?=
 =?utf-8?B?UlE1VXJvSllIdzhzQlU3RzJlRnZhdUFycEJMeENWYTc1MFc1dW53b1FMcHZv?=
 =?utf-8?B?cVBHbzU3ZWVXYTJCUXlvU3NOaVBvSnJ4R283ZEFYQURYOUg2azkwV0V6NjFF?=
 =?utf-8?B?THdWV0czVUdLSldWZnB5bUMwWjZoa2liS0lBTVZsblZGOGs0MW1wUG5XOXhH?=
 =?utf-8?B?dWFGQ05NQW9DUU5Xb3pSRVJPa2RDZ3pkQUhhU044bTJNS2FZamxXclhqbnNo?=
 =?utf-8?B?V2dWc0ZwakhyTXNDQTgvWWhaaUpxaHlkVXBxWHVUdGdFL3BUb2JscUhiR1dq?=
 =?utf-8?B?WCt0T1RCVU0rV3lVaHVnc21UUm14T3BYR0c0QkRSVGM5K1JDeEhMMS84MEZ5?=
 =?utf-8?B?d3dKSmQ5eFF5RExKOXBhelV0VVAxRHppV3BjK2RYQ0g2KzdoNWJYSDZuZWYw?=
 =?utf-8?B?K1FsTE9ic29BdkFjT3VrV20zOFQvZHdXbUhMMnduSVA5UWhZc3Q5THlURjZq?=
 =?utf-8?B?bXgzSTY5WVk4QkdlbDVzcUlTTW9hVmw5Z2FXQVVCVXdlYWkrYUNrM3JObE96?=
 =?utf-8?B?QTNXVG04eXEzb2FpbmNrc2FENStNUVVndWpQd0c2WUprT2NSSDRQeWxhais5?=
 =?utf-8?B?Tkg2TlRxblNOY0pTS3EzNG8wNndYRUtmUkdEdkp3dGIrNW9VL0dlRFhib3Ex?=
 =?utf-8?B?QzMvc1hkdERDZ2xSUlFrczg2Z3orU0tJU3E2aFlyZkRwRTg1WmxYV2NMOUYv?=
 =?utf-8?B?MjZ0dDJrLy82aU13WElra3VNY0dxc3REZnNjaitYNHFFL1piSWZOelBuSVhI?=
 =?utf-8?B?bmx4QkxaNkgrZFVuQ0xCTXBPNFpET3MzTHBFcU1ZN2k0MzJUR2dOV1gzeEt1?=
 =?utf-8?B?SGc4eFhLaVVlOWxxTzNBMXIrYy8ydkhPeS96emp1ZlZlVEdsNVo1MDNNNGxU?=
 =?utf-8?B?SHdOeXQ1ZXFBZWNHYzVlRzFuWHFGM21FQlR4WlZZdTlVTzJZc2ZrVjJEdEJQ?=
 =?utf-8?B?MHBSaFJFcGpvV1BrTkZ0bDlSc2pIR1NTVS9TdlUvQWJXOXFvTG5VRkczM3o5?=
 =?utf-8?B?U1llZVNRK2JFTWVxZmdyUDlTYnM0MU5nZDluMU1xb2N6QWtPV2diVXU1d2R0?=
 =?utf-8?B?S1ZqRlRHcSsrcXA4M2VoRzUwRTNwNlNLVUVuczZESks1UndSRFVQY0pVd0JR?=
 =?utf-8?B?MTBVZmtsUWt2V0ZzMm5kUU5PcVYwTXNSZTZCaWlzRk85Z0RMcEs5dVY5TEdZ?=
 =?utf-8?B?WisvZ2xjd1BnPT0=?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SUZmVXFNdGR6SWlvbXlmcmhPUDVqRnNlZEJTTkVWczFNSEdPT1psRm1BenBN?=
 =?utf-8?B?dXF0OUhOWXNsSzM1WlhtRDNURVQ3cldQRElzbGtqOHhTd1gyS213bk82NVN2?=
 =?utf-8?B?cXdLUUozeUp0Njh1UXNLeGFqSTk5L0Z4R0YxREdnclN4N1FkSXgxY0hoWkE0?=
 =?utf-8?B?ZUFNd2JKdVpnT0xxaG9ReTZhUkJEanJKdVl6ZjJRRnQzaHd6WllvYm9vdmY2?=
 =?utf-8?B?eHg0VXNqdm5wSFYzMHlmWk8wZGQyZzYrNmRUWlVkWkZaNVJmdlF3S1cwWWRN?=
 =?utf-8?B?MW1HeWM4TzFaZWRnUFJlRU5KYjA0N1A3OFJHRitIbzZaMzhNcHFHU293TVR5?=
 =?utf-8?B?Yjh2VEVKMnVka3kzdVNBRkxSNDZJeXljSkNtZldzYTFSY0VBdjZ5T2p3Z1NP?=
 =?utf-8?B?MGxnUnhQWFBBSXlVeDZ4WERMOGdmZ0tONVY4MUc4Qmsrbkd1R0hCbXora1k3?=
 =?utf-8?B?OFV3YUJGNWt4REpGVHpWV2N4Q3o4VnpRcmc3Q2JGWlkvWURBRWxVcE9Qc2Q5?=
 =?utf-8?B?ODExSDdTSHIxaWljSzcrdHdvUDFkZ09jOFJTUTZSYUgwVFBBRFR6L2w3dktV?=
 =?utf-8?B?U2RIQVluY0pPcW13UXNVZjBrL1c1c0VRWmlBWEJvQ1hpMWpTa1doemtYRWla?=
 =?utf-8?B?S0Q3bHo2M2VRSHRWUmhqK3gvU1h4VEVuOWtxQ1h2OG5Bd1FWR3lwMTJILzNB?=
 =?utf-8?B?Q0lqREV5eHoxcmp0ZlBkWTM5anBkbWdqTEtYSFRzM21RSTgvL3JwaVVodWZa?=
 =?utf-8?B?dklLS0dtWnJKc1Nsb1BFamxuaitMbDkvaWVMTVN5Q2xvSmRKTXc5ZURPK3l3?=
 =?utf-8?B?dzluZlNRQ2tnRmhBbUYyaGh4N3hDZldzRXFuQ21DMldnb1V3U3BmSXF6OEl3?=
 =?utf-8?B?WWVuRnFodm41eW85Vm9NOURoc2ZPUFZFSVlPczludjVTMXVYd0FyS1JiNCtn?=
 =?utf-8?B?QzV1UnlscVlSZXRCV1JqWFM2VFVtNnVGZU45dTJqc3NYL3JwMzkrQURWMU0v?=
 =?utf-8?B?V0MxWVpPMU1wYStWUWY0cjkxZ0kyUWFEM3NUbDZlczhtelJtYjdEU0ZTTG0r?=
 =?utf-8?B?QW5ETUFsRi9xcTVWZ0JDb0h2VTg3ZTlhNUp3NjNxcUlnNnZpSlZBaVZCTEVN?=
 =?utf-8?B?eGtONUFDMVM1M3hoL3JGZVlRNzhEeno3Sm14UXUrQzhESXM1M0h1a0ZLaHgw?=
 =?utf-8?B?WXhCeUppVzNxSnZnSWlZYWFWYWdHR0x2dkg4V1ZZTlhKSXdKcXQ2b1RVdmwx?=
 =?utf-8?B?SU5ZTnEvQTJXdWpwbUQxMGxzVVlHN3dHSmR5VEV3WmsvZUpCUmdnN0NHT3pQ?=
 =?utf-8?B?VmZPa0pkRS9VRlJKdWxTeTQ3WURFUnJWend1Y0ZTQ3dBRzIxcEoyTUNteUZr?=
 =?utf-8?B?YzhCMVFCd3Z3OW53ZXpRTS95Ym9lYUEvSEdFVFc5clZKbWxoRkUrVzNpTVNm?=
 =?utf-8?B?S3pBZm1MUkdHMlFZQ09EYVBiNEdXb3FQblZ5NG1RMkxGcUtMTzBwTnhtREdV?=
 =?utf-8?B?aEJ3WHhVcmtDMzJua0ZRaTdNYVR5Rm5tVFVqdHFmWVJ4TVUycUxSRmtqYm5i?=
 =?utf-8?B?cUQwS1JNNlE3eEJlY3FXZmhIT1NHb2Z6anBiM3RibHQ4M2pVamZUbDlucUEz?=
 =?utf-8?B?bmVIKzltRFA1TDVGYmZDMEx0Y3pTMGJSSzJubVUvSlgxZ3c5MUpKdDlSWHhn?=
 =?utf-8?B?cFZvbEJGWWhYR0VLemhRRmhVc2ZoQ0VDTjI2RUxYd2U1K28xeEdIVTN1Tlpv?=
 =?utf-8?B?dzFsa2NwTkUrQWRqQUd5S2E5TzlNQkVkT0J1K3UwQ0FaUkZlb3BnYkczTFpN?=
 =?utf-8?B?dmsrZjdUdzJTMlk2aFArYkJXUUtNNjgvcnVZRFNVY2piMitnd1kydk0yaURs?=
 =?utf-8?B?azVjb3FPT3dRSGpkSHhldUhGZ2lxTVBtNEZKd2pnMjZTdDVIREV3WFBZcXVv?=
 =?utf-8?B?c21tTXplRW9xU0s2SkZKRWFSN051cU95Z1Y0bHAwZnNlQWxBNnoyL1pBZnds?=
 =?utf-8?B?dlRIdDVHRzg0SEVQVDl1LzJLQVBFczJoYU9NZm9rbUVpV1dKYVlScEkveWdo?=
 =?utf-8?B?a3o5WHpTbGdyMEZoSU1kVVJzaUx1U0ZZVGY4TUthNDdJdm5QdEVhZWNacm9N?=
 =?utf-8?Q?71MNnBrLdzWjimwf5NCFoJP6v?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d57a04e8-06bb-4c26-5214-08dd98538acc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 10:37:53.4246
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q4AkYhuKXHcKaIFw1j6hxihz6k5S+AqSVX+p3Prr1s1OkYD5sd1thybWX42FfSyBmyLaw07GJ4RB+iPu1IZBbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB6936
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 10:38:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65385

VGhlIGVycm9yIG1lc3NhZ2Ugc2F5cyB0aGF0IEJVSUxEX1JFQURFTEYgdmFyaWFibGUgaXMgdW5k
ZWZpbmVkLg0KV2hlbiBjb3B5aW5nIGNvZGUgZnJvbSBuZXdlciByZWxlYXNlcywgbWFrZSBzdXJl
IHlvdSBjb3B5IGFsbCBkZXBlbmRlbmNpZXMuDQoNClBldGVyDQoNCj4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mDQo+IEFsZXhhbmRlciBLYW5hdmlu
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDIxLCAy
MDI1IDEyOjMzDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnOyBzYXRlZXNoMDQ1
N0BnbWFpbC5jb20NCj4gU3ViamVjdDogUmU6IFt5b2N0b10gbWVzb24gdXBncmFkZSBpc3N1ZSBk
dW5mZWxsICgwLjUzIEkgd2FudCB0byB1cGdyYWRlIDAuNjMpDQo+IA0KPiBZb3UncmUgYmV0dGVy
IG9mZiB1cGRhdGluZyB0byBhIHlvY3RvIHJlbGVhc2UgdGhhdCBpcw0KPiAtIGN1cnJlbnRseSBz
dXBwb3J0ZWQNCj4gLSBoYXMgYSByZWNlbnQgZW5vdWdoIG1lc29uLg0KPiANCj4gQWxleA0KPiAN
Cj4gT24gV2VkLCAyMSBNYXkgMjAyNSBhdCAxMjoyMywgc2F0ZWVzaCBtIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnDQo+IDxzYXRlZXNoMDQ1Nz1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBIaSB0ZWFtLA0KPiA+DQo+ID4NCj4gPg0KPiA+IEkgd2Fu
dCB0byB1cGdyYWRlIG1lc29uIHZlcnNpb24gMC41My4yIHRvIDAuNjMgaW4gbXkgeW9jdG8gYnVp
bGQuIEkgYW0gY3VycmVudGx5DQo+IHVzaW5nIDMuMSBkdW5mZWxsLg0KPiA+DQo+ID4gRmFjaW5n
IGJlbG93IGV4cGFuc2lvbiBpc3N1ZS4gQ2FuIGFueW9uZSBrbm93IHRoaXMgaXNzdWUgY2FuIGhl
bHAgbWUgdG8gZml4DQo+IHRoaXMgaXNzdWUuDQo+ID4NCj4gPiBFUlJPUjogRXhwYW5zaW9uRXJy
b3IgZHVyaW5nIHBhcnNpbmcgL2hvbWUvcF82MDEyMy9oZGQvTkMvcG9reS8uLi9tZXRhLQ0KPiBj
dmUtcGF0Y2gvcmVjaXBlcy1leHRlbmRlZC9tZXNvbi9tZXNvbl8wLjYzLjMuYmINCj4gPiBUcmFj
ZWJhY2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6DQo+ID4gICBGaWxlICJWYXIgPGluc3RhbGxf
dGVtcGxhdGVzPiIsIGxpbmUgMSwgaW4gPG1vZHVsZT4NCj4gPiAgIEZpbGUgIi9ob21lL3BfNjAx
MjMvaGRkL05DL3Bva3kvLi4vbWV0YS1jdmUtcGF0Y2gvY2xhc3Nlcy9tZXNvbi0NCj4gcm91dGlu
ZXMuYmJjbGFzcyIsIGxpbmUgMTAsIGluIG1lc29uX2FycmF5KHZhcj0nQlVJTERfUkVBREVMRics
DQo+IGQ9PGJiLmRhdGFfc21hcnQuRGF0YVNtYXJ0IG9iamVjdCBhdCAweDdmZjUyYzJmMWM1MD4p
Og0KPiA+ICAgICAgZGVmIG1lc29uX2FycmF5KHZhciwgZCk6DQo+ID4gPiAgICBpdGVtcyA9IGQu
Z2V0VmFyKHZhcikuc3BsaXQoKQ0KPiA+ICAgICAgICAgIHJldHVybiByZXByKGl0ZW1zWzBdIGlm
IGxlbihpdGVtcykgPT0gMSBlbHNlIGl0ZW1zKQ0KPiA+IGJiLmRhdGFfc21hcnQuRXhwYW5zaW9u
RXJyb3I6IEZhaWx1cmUgZXhwYW5kaW5nIHZhcmlhYmxlIGluc3RhbGxfdGVtcGxhdGVzLA0KPiBl
eHByZXNzaW9uIHdhcyAgICAgaW5zdGFsbCAtZCAvaG9tZS9wXzYwMTIzL2hkZC9OQy9idWlsZC1w
b255L3RtcC93b3JrL3g4Nl82NC0NCj4gbGludXgvbWVzb24tbmF0aXZlLzAuNjMuMy1yMC9pbWFn
ZS9ob21lL3BfNjAxMjMvaGRkL05DL2J1aWxkLQ0KPiBwb255L3RtcC93b3JrL3g4Nl82NC1saW51
eC9tZXNvbi1uYXRpdmUvMC42My4zLXIwL3JlY2lwZS1zeXNyb290LQ0KPiBuYXRpdmUvdXNyL3No
YXJlL21lc29uDQo+ID4NCj4gPg0KPiA+DQo+ID4gICAgIGNhdCA+L2hvbWUvcF82MDEyMy9oZGQv
TkMvYnVpbGQtcG9ueS90bXAvd29yay94ODZfNjQtbGludXgvbWVzb24tDQo+IG5hdGl2ZS8wLjYz
LjMtcjAvaW1hZ2UvaG9tZS9wXzYwMTIzL2hkZC9OQy9idWlsZC1wb255L3RtcC93b3JrL3g4Nl82
NC0NCj4gbGludXgvbWVzb24tbmF0aXZlLzAuNjMuMy1yMC9yZWNpcGUtc3lzcm9vdC0NCj4gbmF0
aXZlL3Vzci9zaGFyZS9tZXNvbi9tZXNvbi5uYXRpdmUudGVtcGxhdGUgPDxFT0YNCj4gPiBbYmlu
YXJpZXNdDQo+ID4gYyA9ICR7QG1lc29uX2FycmF5KCdCVUlMRF9DQycsIGQpfQ0KPiA+IGNwcCA9
ICR7QG1lc29uX2FycmF5KCdCVUlMRF9DWFgnLCBkKX0NCj4gPiBhciA9ICR7QG1lc29uX2FycmF5
KCdCVUlMRF9BUicsIGQpfQ0KPiA+IG5tID0gJHtAbWVzb25fYXJyYXkoJ0JVSUxEX05NJywgZCl9
DQo+ID4gc3RyaXAgPSAke0BtZXNvbl9hcnJheSgnQlVJTERfU1RSSVAnLCBkKX0NCj4gPiByZWFk
ZWxmID0gJHtAbWVzb25fYXJyYXkoJ0JVSUxEX1JFQURFTEYnLCBkKX0NCj4gPiBwa2djb25maWcg
PSAncGtnLWNvbmZpZy1uYXRpdmUnDQo+ID4NCj4gPiBbYnVpbHQtaW4gb3B0aW9uc10NCj4gPiBj
X2FyZ3MgPSBbJy1pc3lzdGVtQHtPRUNPUkVfTkFUSVZFX1NZU1JPT1R9L3Vzci9pbmNsdWRlJyAs
DQo+ICR7QHZhcl9saXN0MnN0cignQlVJTERfT1BUSU1JWkFUSU9OJywgZCl9XQ0KPiA+IGNfbGlu
a19hcmdzID0gJHtAZ2VuZXJhdGVfbmF0aXZlX2xpbmtfdGVtcGxhdGUoZCl9DQo+ID4gY3BwX2Fy
Z3MgPSBbJy1pc3lzdGVtQHtPRUNPUkVfTkFUSVZFX1NZU1JPT1R9L3Vzci9pbmNsdWRlJyAsDQo+
ICR7QHZhcl9saXN0MnN0cignQlVJTERfT1BUSU1JWkFUSU9OJywgZCl9XQ0KPiA+IGNwcF9saW5r
X2FyZ3MgPSAke0BnZW5lcmF0ZV9uYXRpdmVfbGlua190ZW1wbGF0ZShkKX0NCj4gPiBbcHJvcGVy
dGllc10NCj4gPiBzeXNfcm9vdCA9ICdAT0VDT1JFX05BVElWRV9TWVNST09UJw0KPiA+IEVPRg0K
PiA+DQo+ID4NCj4gPg0KPiA+ICAgICBjYXQgPi9ob21lL3BfNjAxMjMvaGRkL05DL2J1aWxkLXBv
bnkvdG1wL3dvcmsveDg2XzY0LWxpbnV4L21lc29uLQ0KPiBuYXRpdmUvMC42My4zLXIwL2ltYWdl
L2hvbWUvcF82MDEyMy9oZGQvTkMvYnVpbGQtcG9ueS90bXAvd29yay94ODZfNjQtDQo+IGxpbnV4
L21lc29uLW5hdGl2ZS8wLjYzLjMtcjAvcmVjaXBlLXN5c3Jvb3QtDQo+IG5hdGl2ZS91c3Ivc2hh
cmUvbWVzb24vbWVzb24uY3Jvc3MudGVtcGxhdGUgPDxFT0YNCj4gPiBbYmluYXJpZXNdDQo+ID4g
YyA9IEBDQw0KPiA+IGNwcCA9IEBDWFgNCj4gPiBhciA9IEBBUg0KPiA+IG5tID0gQE5NDQo+ID4g
c3RyaXAgPSBAU1RSSVANCj4gPiBwa2djb25maWcgPSAncGtnLWNvbmZpZycNCj4gPg0KPiA+DQo+
ID4NCj4gPiBbYnVpbHQtaW4gb3B0aW9uc10NCj4gPiBjX2FyZ3MgPSBAQ0ZMQUdTDQo+ID4gY19s
aW5rX2FyZ3MgPSBATERGTEFHUw0KPiA+IGNwcF9hcmdzID0gQENQUEZMQUdTDQo+ID4gY3BwX2xp
bmtfYXJncyA9IEBMREZMQUdTDQo+ID4NCj4gPg0KPiA+DQo+ID4gW3Byb3BlcnRpZXNdDQo+ID4g
bmVlZHNfZXhlX3dyYXBwZXIgPSB0cnVlDQo+ID4gc3lzX3Jvb3QgPSBAT0VDT1JFX1RBUkdFVF9T
WVNST09UDQo+ID4NCj4gPg0KPiA+DQo+ID4gW2hvc3RfbWFjaGluZV0NCj4gPiBzeXN0ZW0gPSAn
JGhvc3Rfc3lzdGVtJw0KPiA+IGNwdV9mYW1pbHkgPSAnJGhvc3RfY3B1X2ZhbWlseScNCj4gPiBj
cHUgPSAnJGhvc3RfY3B1Jw0KPiA+IGVuZGlhbiA9ICckaG9zdF9lbmRpYW4nDQo+ID4gRU9GDQo+
ID4gd2hpY2ggdHJpZ2dlcmVkIGV4Y2VwdGlvbiBBdHRyaWJ1dGVFcnJvcjogJ05vbmVUeXBlJyBv
YmplY3QgaGFzIG5vIGF0dHJpYnV0ZSAnc3BsaXQnDQo+ID4NCj4gPg0KPiA+DQo+ID4NCj4gPg0K
PiA+IFN1bW1hcnk6IFRoZXJlIHdlcmUgMyBXQVJOSU5HIG1lc3NhZ2VzIHNob3duLg0KPiA+IFN1
bW1hcnk6IFRoZXJlIHdhcyAxIEVSUk9SIG1lc3NhZ2Ugc2hvd24sIHJldHVybmluZyBhIG5vbi16
ZXJvIGV4aXQgY29kZS4NCj4gPg0KPiA+DQo+ID4NCj4gPiBUaGFua3MgJiBSZWdhcmRzLA0KPiA+
DQo+ID4gU2F0ZWVzaA0KPiA+DQo+ID4NCj4gPg0KPiA+DQo=

