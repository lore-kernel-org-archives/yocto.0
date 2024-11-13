Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42B9FD637BF
	for <webhook@archiver.kernel.org>; Wed, 13 Nov 2024 20:55:44 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.63])
 by mx.groups.io with SMTP id smtpd.web10.22507.1731531338114339162
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Nov 2024 12:55:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=nRvks6A3;
 spf=pass (domain: siemens.com, ip: 40.107.20.63, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OE2KU6S6/1nqaSL0/W5ZiPZ/4DMp3mh0vCaehuR2TP1is95c2wyz1BpQUng+4D+9bBLzpoxjGOgNkVCQqIO5fC28i7plpQ/CgyAiAJwHzrhOAeqrtVadASDAw0ya8wUQlj5nPoD8AkXuidtTNAIoPLoowowgseigzJAF5DEPr3u4T8cE3YGzoNnTdsNKoi78VhxdJRIq7+WV2ybXHlTlBqXoFzQfXINFq1vwXSfeRUtYz5z/qOHnnaLOVIMROc/esDwm5yB0UHjcxEDXF/X3Vh2Vmt7rk2acRBy84Zex/vLhAkLPCQuYa0ibekm+vZTgAZ1v42E10XIaxj92Hbz1zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=llI+JsYUBvORw06BtjqDlO4LnjACUAnpyTO1uXI4/kw=;
 b=mrCwK2UPQJtXM0ApncjOdSA83GdFAV5z+5+95IbcyubZpo03jwf7l7MYLoYJmtHJOtkysKNCAiBUZ0xeIiERQMwo37Ml/MfyW1kWCP5VOuKRcYiCMGR1pRzcBKOB20Ami2cQE45M86NWZyens8faP2HvPavDnFAusFRGB+V7G8RDjLowz2e2/9JGZTukJR3OKvZB5Bagk5QnQdbzmI3nXyearI/Ds3WnAmF5ngMxyIrgrSBqZLHz+7kfZRuxHcGogOItgw0McjL5GGq0h+7DJFskwKUTeeAGjg97vJRRAJZLP0vikp1ZYAaegq9XU0uMuuN9yi8ddFU387FCRrxLcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=llI+JsYUBvORw06BtjqDlO4LnjACUAnpyTO1uXI4/kw=;
 b=nRvks6A3yEdHEh50jb71y6kO6Oxx0N1diGHvteSwoB/2TVB1rNahOoKK5WrR8Xg3dtsvZr7k26scberCim/iRAq5JIOcrw1eQe8ojWaBJL/0YVVu7bpKREMQlS/g04Z/SQpB/NuuuxNpgAogu+mF/N/nmn9hC9WLL8QNXH7cPjhg+BtcOrlKCtaUXuvDPcQYGMV8f79L2JQZNjWTtqfHsc7MgRm49/V0cG+HWHvTV5MGcgJMvl7tYbqeZL8NbJkLDT8bSJ+82uZu/5PYdINEw7Sy6UJTR77A+27lwGbcBTHwswc3AoI6zxaAGewDAeLKyFRbGnSlto1gy9uHgpbPOQ==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by AS2PR10MB7802.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:64d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.16; Wed, 13 Nov
 2024 20:55:35 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.8158.013; Wed, 13 Nov 2024
 20:55:35 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"tsoos99@gmail.com" <tsoos99@gmail.com>
Subject: RE: [yocto] Kernel name is too long #poky #kirkstone
Thread-Topic: [yocto] Kernel name is too long #poky #kirkstone
Thread-Index: AQHbNgfrdswDAQMXuEi+qIdu5HFgJbK1rw1g
Date: Wed, 13 Nov 2024 20:55:35 +0000
Message-ID: 
 <AS1PR10MB5697363646EFBC44A59FDBDCFD5A2@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <4F24401C-C73B-4F23-94BA-8FEF15D514CA@gmail.com>
In-Reply-To: <4F24401C-C73B-4F23-94BA-8FEF15D514CA@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=25aeb647-66e1-4d4a-9b94-72e57281279a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-11-13T20:49:39Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|AS2PR10MB7802:EE_
x-ms-office365-filtering-correlation-id: 586fe53a-7271-4242-b116-08dd04258539
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?MURsd3NYR3BvbGdyYTVaQ3FsYlBrUE0wdlFGY2NNa2dabm1kTTdxdTVjaU52?=
 =?utf-8?B?bGo1RGxzYXBUbUNVcldrYmtTa1FuMXczK09qM3dFOHR1Ni9NQzV0cGIxSW9N?=
 =?utf-8?B?U29ZbURQQ0dFVUFXMDNNSUVsUU5QZVFpT3FXR1BrVGgweUlvTkE2QVlRbjA2?=
 =?utf-8?B?Ylg4WDRoRmJFL1ZJZDFLSFc1eUlsVC91QWQwQ2IycTRhUnFncHhNMWFPQ2ls?=
 =?utf-8?B?Zkp0aVlZVDZ5MzdRSjlmZ3pYenU0K2pnTDU1clhqTHIxSWhyVVdOWC90QmNv?=
 =?utf-8?B?WVFiOWFZckNmM0hyaGJsWWVoQlcxejJSUVUwR3owTDUwSXJHUmMvNDg5OGw5?=
 =?utf-8?B?QzE3bVVWYkY5QXRPY1Fzb1NTU0RrVjdRUUlrUWx4Sm9GdEViZkRSRnhqcllh?=
 =?utf-8?B?MGxKVCs2SG1mNUxGZ3B2Q21TUVh0ZmtCNVNFK3dWVGRZWHhISHozR1pNaUNY?=
 =?utf-8?B?dThUSkxzb3NZSzhxbmQremFJWjhoRHRSNWdodHJXVHNwc3AvOHZUZTlVSTZ4?=
 =?utf-8?B?NnpUSzZVdGJVVHAwNEM4bmpxMUUzSHVMV29XSmcrdnhDb0pZNXNiT1JyK2tP?=
 =?utf-8?B?NWdySVRkT2t3L3E1YVBpL0xjdHZ2WGpCK1RVU1YxU0Y5cytrYWdCR3Y4WXR6?=
 =?utf-8?B?L1VLcnpMQ2R4Z3VTUTlEREhCdGU4T1c3alRIMDZFVU9pMHphQlVPYkI4alVI?=
 =?utf-8?B?NVR3ZTN0bXJxZDVnaExRMWtBOHlaaDRXNVl5MzlxTm5IQUZBbktVUWdPU1Fz?=
 =?utf-8?B?SlNmR2YxQjlFN2w5R1JmNTZUYVRRVzNQRXcvVGlxRlJBSk5aOVdkOFpiSnZa?=
 =?utf-8?B?MEZIT0JlZjBjd0E2WDV4RmorQ0Zlb1AySU9mazk2OWROVXlYeGRDMnZjUERa?=
 =?utf-8?B?d0VlMEJNQWJGM0MzVzRIQjVMM2FGRE12ZSt3RktRVWU2dkhMTDRYSHRsRXVJ?=
 =?utf-8?B?MzNUN08xK0JVV01DQ1BsdzRoTDczRDhMOHRUQmlRZ2JXM3dCTHdxZVJEc2Fq?=
 =?utf-8?B?S09NTUhkY3QwODVFWFBBT3ZBSW9TVkVyRE1qUWJmWXpaemROTG1UdFNsM1A3?=
 =?utf-8?B?TkdWTFFTUmFNM3B4VXZTL3hCc0Z2RngyQlF3aUVTMXdJN1dBaVo5blkwSDJn?=
 =?utf-8?B?VXdRR3hOQzZ2TlhvcjZoRkNJaXFVdmVsK1dxcE1saWNRVVduT2tXYmM4OExk?=
 =?utf-8?B?bEtkMFk4VjhZenNnVjk2V2p1TlhxQTY1c2E2eVBVdHcwb0JNeDFFdzJaZHJZ?=
 =?utf-8?B?K2YzWVUvUU9ucXUrSzBZeWhKemZ3VmFkTTAyQkpWRjJ2KytGNDlkTTFMMklB?=
 =?utf-8?B?eUprc0dWakQ2ZG4ycENoempuMjhkKzQzM3RxVStoSkpYTktrdkx1R01JdlF2?=
 =?utf-8?B?dFVGV1I3MmFSdXJqdGZ6SkxDSW4veFdmOGtqZHd0emJIaUhrZjJuc05DcTJI?=
 =?utf-8?B?WkFKTjRpVTIxV3M5NE1sTkVkeDIwWVVhM09MdjBicHV3d09WVnovMmFVc0Ev?=
 =?utf-8?B?MG5CSE5Mb3JXN1JIbmU4Ni9lcG9vaCtJZG1DL3JrU2g1dVJwalI2dTd4NjhL?=
 =?utf-8?B?Y2xtOXFtcktoMStYQjd2WUtrTXpMZnMveWhSbElMWndaYWZXT1JWUmU4VzZQ?=
 =?utf-8?B?OTl0MUF2eEVkeEJBMWNKby9qSFNwblNtZ0RYcFVkWElhUE5sQ0p1S0EzNDhD?=
 =?utf-8?B?ZFF2c1A4cWYzaE5meUQvaENncGg4K3pZUlV0dElobzRqNThFenFJVTVVVHp3?=
 =?utf-8?B?cVZDWm9BajZOa3dpYjJvSk1oUDN2OUxFa0NSRnFjaUNiS01pRmo2WGkwU0JL?=
 =?utf-8?Q?Af0FA5SM470G6xS0Q1Cw9nHfz6DrqVtWhl0d8=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a2ZiZDRpNTRPUGVwNG44TXYwWno0Mk9JTWw4QXZFWUNRY3dYL1JzMGozZy9E?=
 =?utf-8?B?Q3NDS2JYd3kyVkpoK0RvYUdoZ3pWVE1PN3NjQmZvbi9xRjhCK2N2OElFTnhI?=
 =?utf-8?B?WHlRcE9raytTNVF0ZzZxRTJ5UzhaRW9YTXlIRkdLbHdXN053clpVby91eU1l?=
 =?utf-8?B?dDd2OGR6MERabDJRZ3VXR1lhbTZUNWZIRk9zOGxybVN6ZjBaQnZlL3QvazZn?=
 =?utf-8?B?RVZBZUljUE9qd3VFZmNHRWRDYUE1djJXV1VaMytuZEI0bEZxMzhCNU9TWE9t?=
 =?utf-8?B?N2pFK05BYmw3MmQxSEpnSjhhZHI3R0NWWXJLV2oycHZWUjd3ODVvS3JjeXVv?=
 =?utf-8?B?SVpONTVBV29lMjYzVlJoUEF2dUp6cTdwdDZaeGZ0V25qMllpVnpqVzdOM2pu?=
 =?utf-8?B?dzMzYzFEZjBZdWp4RkN1WCtsR01JYUJoaHYvVWZVUWp3emtXZlprS2lFa1h6?=
 =?utf-8?B?aWx0VVp0ejdUcEphOXNmYXJ6VWh0R0ErWWxIOTJiK0MvOUh1UUNqN2RRdVdy?=
 =?utf-8?B?d1lLSkYxaUtGSlUvQmFSaXdxQ2pXU1dEVEltZi9jeEFRVmRSKzIzdUdVbWh2?=
 =?utf-8?B?RFhpeVhrZDl2YVlzL2RCVHhQWUdoaDQ0OGJtM00vNTQ5UDZ6dlBveVR5UDc4?=
 =?utf-8?B?dCtSa3RlbHhod1FQYnJjTUNyYjF1OXFSSk1DL2dicmYzbXB5MktqYWliZkZZ?=
 =?utf-8?B?dm9uNmpuNFFuRGlWTlM0bHRIcldtdjV4S1J3RWhjU2N0U2U5Q3pqeVRqTmRQ?=
 =?utf-8?B?Q2FwUDQ5VlFEakl4OVZmeGxua1k0VXlmdHdCWFBGOS94dGtXR2piUW8rSGYw?=
 =?utf-8?B?QVBKQUR5a2pCOGcyM0syYlRsY2Ywd1gxL1Y1WDFkcVh0dWZ1VG5keVJ6Nm9X?=
 =?utf-8?B?UUtObTlsR1RjZU9SMFJIcmJLY2RsclV4Q1lLRy9HMnpKSWhLUVBTWHRNRUpB?=
 =?utf-8?B?NndOam0wamZhTi83ZTI2NVhISTBSWCtuM2FqcnQzY1ljTUZ4K1BabXByZEsv?=
 =?utf-8?B?anJPeFhFb0g0dHo2NmJGY0YxVTNTemtRdGJJSFBJUXU5emFYcXhmMkpoZmdv?=
 =?utf-8?B?cXA3STBtMXNtS2FoQzczd3ByNlFRaHlya0ZzdDRwMlpwazBlR1YyUDVPOXgv?=
 =?utf-8?B?RVZxdEtBUTZES1lmMVE3dXlNc0cwamFRYmZZeEhpZXBZTlhzU2hqcWFxQUUy?=
 =?utf-8?B?Tjh1T2wrSHBMem5Eb2pKZXlaM3lmM2MxT1ViTytnYVhYK21MbE1KS3ljeFp2?=
 =?utf-8?B?RDczM0lyckNOVnZ3T1puOGtQamx6YXJqQm4rYXFKTE9TOW5nMHozUVVPRVRx?=
 =?utf-8?B?cUtOVVlMc0taYmRVZEd3THh6WG5kbEQxeEN3R3lmT0hSNXJQdGQ2WmEvYmdh?=
 =?utf-8?B?TXZBeEdvVFlXRm5HUGZpR09jVXNGMVNlMEdkMk5lK1VwcVFsaEJJaklFa3Ux?=
 =?utf-8?B?eGJtM0ttODlPV0RUemYwSm9RTlg0SmlvS2RXbW1NZ29TL1NNT0NFQjlMUDRC?=
 =?utf-8?B?eEIyTnU0eThNd3VOSXYzS25SMVB4RmdmcUdvYVpGVVZDOWs2dU5vRGlaa3o3?=
 =?utf-8?B?TWlvYUtXSHZsdWpmUUlibnZEZllyN0VjOFlqeHd6UUJrZkhjN3Nidm9DaTFJ?=
 =?utf-8?B?NHlqM0dLZDE1cndYVjVLSm9UZUtuSXRHU2F6OG5iR3FZV2prcS9qbGVhYU1P?=
 =?utf-8?B?aWMwL2dkZjBzVkpkWkFFQXlWbm02V3BrQ3lBaDYrMGZPcFp2WHhHdXlwL0FT?=
 =?utf-8?B?STdCTG9xaGRlNEdBcEg1MjZLZC9oa2VGQnRZRHpVTjZtMHhYTHU1N1dqR3dv?=
 =?utf-8?B?M0o3OG9RMU40MFBtcmxiZXg1ZHNNVUNxenU1Qi85M09lM2wyQ1pQUTlKSWxS?=
 =?utf-8?B?N3d6c3F6Sm5LVnF1QStWWFlMSVhXZUxIa3p4Z1JHWTVMcmRwSDUwYnlRbGVl?=
 =?utf-8?B?NXRtNFVWVjRGdFBHeGFXSzFVZEN4OTFRRCtCbThqQjQzZ3VyUHFrNDgyb25P?=
 =?utf-8?B?TzY3ZkI4M3ZndkpSdjlnUnZyMEZ6RVl6SVM3S204RS9ZZjNNQmxMZVhnOTVq?=
 =?utf-8?B?Vjd1eW85VkVPck5Qem9FOWd1cEk3MDRnY0VDZGpmaHN2RDBrcTJ5MDNvVk9O?=
 =?utf-8?Q?WWLACDqJjSqgYftOwea9EYXjr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 586fe53a-7271-4242-b116-08dd04258539
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2024 20:55:35.1610
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mSZ39pa+N+PjShapaHkyzHDEdqpT2BCxe3evcgltEnez/Jzvy3pThe7yN0apFIHgTJk5kjBUMexCNxNlJg8H0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB7802
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Nov 2024 20:55:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64273

WW91IHNob3VsZCBkaXNhYmxlIENPTkZJR19MT0NBTFZFUlNJT05fQVVUTyBpbiB5b3VyIGRlZmNv
bmZpZw0KYXMgaXQgaXMgbm90IGNvbXBhdGlibGUgd2l0aCB3YXkgaG93IHRoZSBuZXcgS0VSTkVM
X0xPQ0FMVkVSU0lPTiBmZWF0dXJlIHdvcmtzLg0KSXQgd2lsbCBkb3VibGUgdGhlIHZlcnNpb24g
c3RyaW5nIGF0IHRoZSBlbmQuDQoNClBldGVyDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mDQo+IFRhbcOhcyBTb8OzcyB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDEzLCAyMDI0IDIxOjA5
DQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0b10g
S2VybmVsIG5hbWUgaXMgdG9vIGxvbmcgI3Bva3kgI2tpcmtzdG9uZQ0KPiANCj4gSGksDQo+IA0K
PiBJ4oCZbSB0cnlpbmcgdG8gYnVpbGQgYW4gaW1hZ2UgZm9yIGEgY3VzdG9tIGJvYXJkLiBUaGUg
YnVpbGQgd29ya3MgZmluZSB3aXRoDQo+IGtpcmtzdG9uZS00LjAuMTYsIGJ1dCBpdCBmYWlscyBv
biA0LjAuMTcuIEhlcmXigJlzIHRoZSBvdXRwdXQgZnJvbSB0aGUga2VybmVsIHJlY2lwZToNCj4g
DQo+IHwgICBIT1NUQ0MgIHNjcmlwdHMvZHRjL2xpYmZkdC9mZHRfZW1wdHlfdHJlZS5vDQo+IHwg
IjUuMTUuODItYnNwLXlvY3RvLWFtcGxpcGh5LWFtMzM1eC1wZDIzLjEuMC1ic3AteW9jdG8tYW1w
bGlwaHktYW0zMzV4LQ0KPiBwZDIzLjEuMCIgZXhjZWVkcyA2NCBjaGFyYWN0ZXJzDQo+IHwgbWFr
ZTogKioqIFsvaG9tZS90YW1hcy9wb2t5L2J1aWxkL3RtcC93b3JrLXNoYXJlZC9waHlib2FyZC1y
ZWdvci0NCj4gYW0zMzV4LTEva2VybmVsLXNvdXJjZS9NYWtlZmlsZToxMzA4OiBpbmNsdWRlL2dl
bmVyYXRlZC91dHNyZWxlYXNlLmhdIEVycm9yIDENCj4gfCBtYWtlOiAqKiogV2FpdGluZyBmb3Ig
dW5maW5pc2hlZCBqb2Jz4oCmLg0KPiANCj4gSSBzYXcgdGhlIGZvbGxvd2luZyBmaXhlcyBpbiB0
aGUgcmVsZWFzZSBub3RlcyB0aGF0IGNvdWxkIGJlIHJlbGV2YW50Og0KPiDigKIga2VybmVsLmJi
Y2xhc3M6IGludHJvZHVjZSBLRVJORUxfTE9DQUxWRVJTSU9ODQo+IOKAoiBrZXJuZWw6IGZpeCBs
b2NhbHZlcnNpb24gaW4gdjYuMysNCj4g4oCiIGtlcm5lbDogbWFrZSBMT0NBTFZFUlNJT04gY29u
c2lzdGVudCBiZXR3ZWVuIHJlY2lwZXMNCj4gDQo+IEkgY2hlY2tlZCB0aGUgY29uZmlnIHdpdGgg
bWVudWNvbmZpZyBhbmQgc2F3IHRoZSBsb2NhbCB2ZXJzaW9uIHdhcyBzZXQgdG8g4oCcLWJzcC0N
Cj4geW9jdG8tYW1wbGlwaHktYW0zMzV4LXBkMjMuMS4w4oCdLg0KPiBPbiA0LjAuMTYgaXQgaXMg
YWxzbyBzZXQgdG8gdGhlIHNhbWUgdGhpbmcuIFRoaXMgaXMgYSBjdXN0b20ga2VybmVsIHJlY2lw
ZSB0aGF0DQo+IGluaGVyaXRzIGtlcm5lbCBhbmQga2NvbmZpZy4NCj4gDQo+IFRoaXMgaXMgYXMg
ZmFyIGFzIEnigJl2ZSBnb3R0ZW4uIEkgY291bGRu4oCZdCBmaWd1cmUgb3V0IGhvdyB0aGlzIGxv
Y2FsIHZlcnNpb24gaXMgc2V0LiBJIHRyaWVkDQo+IHNlYXJjaGluZyBmb3IgaXQsIGJ1dCBJIGZv
dW5kIG5vdGhpbmcgc3VzcGljaW91cy4NCj4gSSBhbHNvIHRyaWVkIG1hbnVhbGx5IHNwZWNpZnlp
bmcgS0VSTkVMX0xPQ0FMVkVSU0lPTiBpbiB0aGUga2VybmVsIHJlY2lwZSwgYnV0DQo+IG5vdGhp
bmcgY2hhbmdlZC4NCj4gDQo+IEhvdyBjb3VsZCBJIGZpZ3VyZSBvdXQgd2hhdCBpcyB3cm9uZyB3
aXRoIHRoZSBjdXN0b20ga2VybmVsIHJlY2lwZT8NCg==

