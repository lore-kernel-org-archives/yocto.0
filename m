Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5147FC7EE25
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 08:53:28 +0000 (UTC)
Received: from esa18.fujitsucc.c3s2.iphmx.com (esa18.fujitsucc.c3s2.iphmx.com [216.71.158.38])
 by mx.groups.io with SMTP id smtpd.web11.4512.1686214398334099439
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 01:53:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=QZaE3Lsh;
 spf=pass (domain: fujitsu.com, ip: 216.71.158.38, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1686214399; x=1717750399;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=eOPAdTCj9G52ZVdfn8G2by5sa6C9H1iH0LOdKkSFj3A=;
  b=QZaE3LshE4QcxY5Tej/ckOb81wQgzabjhhaCxAwmmc237lJwFNdcyqCm
   BYN7DH+Dto76kHG8bE/h5AtiSl3pU9amHrsRrDOvLqp9fxg0dCa38+V9l
   Nu1gih6/Pi8xpKarSEtAqDsuCFC0T+pZyqUvG8OlxNTa9NSq0GqpNi5Ax
   GFyar8QM1OLKyMslUfRBK++ZinBUHKSP7iQB9T5pvLk3LR4zvxDr/m3zY
   7LZcz1FYyCMs7JI9uF3qp9uqPzDhJAqmETClDf/kazlIxgp7RlFzVoFbx
   JyNqqUUw7Ur0nclAAXLY/fmFajIDVB9C04ZAusBoVipXdhITKCWFzCzZb
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="89286811"
X-IronPort-AV: E=Sophos;i="6.00,226,1681138800"; 
   d="scan'208";a="89286811"
Received: from mail-os0jpn01lp2107.outbound.protection.outlook.com (HELO JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.107])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2023 17:53:16 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxrCD8hhD2cgW6rL6s29kr8qV58YUb5NtbWPWxnbIZOzY4t+xA0NRbQ5YAKZ7+XTc8fP3lXeGdTuAO7dh5wjdgGEeHDDXJ6Yv8iHSG4AVMs0sE2yVT2MYiiMZ677KiPVYFu7l/SVs5y1V0vAlWHvdGVdaKN5S1oaCBJOhei0bzWj45qiK1pS3ZV75xb0ZKhibDD+KsFVlFujdiFN9AAo08Rh7ihS1KmBseFHLTXuofhQhgH0t/bsxvcB1nbWXnEtogQnReBJSJ01FxZCB6HxYVQCsVVCKHslofeco3wKezyf+Mh6UjU7pnoskyaR6IqrjnxXSUfnVMAj8nbT01TaRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eOPAdTCj9G52ZVdfn8G2by5sa6C9H1iH0LOdKkSFj3A=;
 b=c1XV8LyqXjiqeP8MJE42ePPGK6bf9r4yCWm/GAyQhlohoebfh/XY7paTAjqQlzqdPGZSjxaYc4FmtRh1V3Y22WIcJJIEmdjijf5Z4nxWRNw9RuBIJe6Bubmbsp0cm2p5UkxQmr3ElOOvk1vbVEA1kTTvlNenZBzbbw0e17vIgI7o+pbDk1sfVAulp4+woUh/aHkwH7LDKW1K37+p8KTSuBwMzf4XuDPc3iF2e7fY8hiTiOY/3qXxm/umtRVY4xhtt5gJSL7LGXWBKuZ0ptkFPaShVW9Dp6EjxBoqEipZlMRDPTRh6FMaE/eLwhnHAOWhEkL0FG8Anl9lEUESLAnbBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by TYCPR01MB8455.jpnprd01.prod.outlook.com (2603:1096:400:15d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Thu, 8 Jun
 2023 08:53:12 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::a949:3db3:11cc:a89c]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::a949:3db3:11cc:a89c%3]) with mapi id 15.20.6477.016; Thu, 8 Jun 2023
 08:53:12 +0000
From: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: A build error on v5.15/standard/nxp-sdk-5.15/nxp-soc branch
Thread-Topic: A build error on v5.15/standard/nxp-sdk-5.15/nxp-soc branch
Thread-Index: AdmZ5j+Kn0pqQR1wRoqZ9Mx9YQocqQ==
Date: Thu, 8 Jun 2023 08:53:12 +0000
Message-ID: 
 <OS0PR01MB61782DA860BE0A3D7582439AA050A@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?shift_jis?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZl?=
 =?shift_jis?B?Y2UwNTBfQWN0aW9uSWQ9ODJmMWVlZDQtZmJlNC00OWMwLWEwYTAtYmY2?=
 =?shift_jis?B?NGRjNDgyODdmO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFi?=
 =?shift_jis?B?NGQtM2IwZjRmZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9h?=
 =?shift_jis?B?NzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxl?=
 =?shift_jis?B?ZD10cnVlO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQt?=
 =?shift_jis?B?M2IwZjRmZWNlMDUwX01ldGhvZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3?=
 =?shift_jis?B?Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9OYW1lPUZV?=
 =?shift_jis?B?SklUU1UtUkVTVFJJQ1RFRIHKwMs7TVNJUF9MYWJlbF9hNzI5NWNjMQ==?=
 =?shift_jis?B?LWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9TZXREYXRlPTIwMjMt?=
 =?shift_jis?B?MDYtMDdUMDg6Mzc6MThaO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00?=
 =?shift_jis?B?MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIxZC04MWUx?=
 =?shift_jis?Q?-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS0PR01MB6178:EE_|TYCPR01MB8455:EE_
x-ms-office365-filtering-correlation-id: 63de4d8a-44a2-4feb-750e-08db67fdca45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ShINlR6ls/hS/sHISn+BrvFy1tEUWLP5N/knFNFTIsXXPT1XRZjr3h5l5jPDef4Uc9LMj/MP08ROif1nzdZlRQtaDPl2Mjm/fRelsh6QAIYaYR0qRWvY09TfHH889DH1CceaEX3uaCGNJHttVU7Vpy6pzI6s5/EQ33rr1AlsPGxsFJcrz0ubkwIi0O8qC+uukMKLXmKTytDaObie616JHyySno4Kq8GhKnPeYOY2lG4LB2eUhT4+FekRGlwyd21xtoIZplqKFAljrUEqIIj/3SNl5qYl9s2bpJy4jHZ7w9bNUB9mu0g4OSuEkT7z7BIHFZ/NSErgGJyNagRhjFf+znKCeNpYW9jJe+xedH+LqNFMt1QQApp3A0Wx3mIArvNH8VVXAVTXPXwDW4JDaXz5RlB7EK6+TM3pg+saCZ/OgSMdt2004cGZPOGjypYjudU4ljlCdIpqTHmtn1otm66w5o6m/05qGnbgoFO+C5JZzfJLTtND3FtKB6UOQTNBBqkVlBL5CaX/5Fu/z8KJCJssDmY0icGhc7HaODqacaay3KxbAxyXNyB2hEPDZt8tjmLRu9/ptiC6mUy7+C29txUGqUzrbFG9c+3mEQn4XBeo9fi7Ic3u9utS3sAEHjKDTq1FYhn0d3en+TEU3iN84lUi3w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(136003)(39860400002)(366004)(346002)(451199021)(1590799018)(82960400001)(55016003)(478600001)(33656002)(8676002)(8936002)(41300700001)(38070700005)(66476007)(66946007)(66556008)(66446008)(52536014)(64756008)(38100700002)(86362001)(122000001)(6916009)(5660300002)(76116006)(316002)(71200400001)(7696005)(85182001)(2906002)(9686003)(186003)(6506007)(26005)(1580799015);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?anB4SFBJUHo5SnpheDBPOW4zUzhsOExaMXZrVVJGSXVlUUVlMXlsVnVG?=
 =?shift_jis?B?cm00Z245djYzRHVtY01YYngvQ3JyVWZHeWRvNWx2MEZiOFlaZTBqallI?=
 =?shift_jis?B?S2VqUXpEVlVaY3FmT1NUcUNsdWU2eGZyUUpQNFg2ZjJlQkdyeE50RVVt?=
 =?shift_jis?B?SnRnUndIVS9nOUdva0VoRS8zbjlrcTVaeU9TMnloK1NPQXp5V1E1R3A5?=
 =?shift_jis?B?czg1Y3FwRUFqZkszMCsxa2JVcE1ONXk1YVhJNWRuYzI2Z3piR2E0WDFy?=
 =?shift_jis?B?d0hubzIwN3ozT0lJYjVXOHh5TUlYVTRvM2lzaHllUFgyRXJuK1BKUkpZ?=
 =?shift_jis?B?WTM3bFdrdktHTXhmV1N1REVERnJTVkg0ZnZVOEwxT1V5UnVpK2ozM2hI?=
 =?shift_jis?B?NzJndG5wMzliMXhqcGpxRU5oam1rS0NZaDMrQ0JHOVlMRmwxS2xuODdK?=
 =?shift_jis?B?Y1F4S1RPUzJieUc0SnppbGsvcWphcTNHSmVBbW4vbXg3Q3JEbmRoUmJ2?=
 =?shift_jis?B?a0l5eFlwQi9XbS96N1ZOc1JaSFNBclFCZDdvZS9oV2tSRExjMHhULy8r?=
 =?shift_jis?B?WWdNS0JpZ1RFRHZVbU1Ka09FVkxyZzlBdzUwbE45aXVRbGhNNUxpenZr?=
 =?shift_jis?B?b2ZHVEM2M0c0SGRXR3V3RGJoRmk0cXFyN0kwZTFpYkVJYzR1bDlaZ3BU?=
 =?shift_jis?B?Z0lpM3hRNjhUS2FZRkFXUnZYdUNvQWpYTzFwWVR6b0pmSHU0b1lsekNB?=
 =?shift_jis?B?eUwyaTJ3aWt4dUFrTjdXVHU4K2RadUlNcktZSmZlbllHaXNxUC9GOFFN?=
 =?shift_jis?B?eU4wUytYSXpyQ0d6blRGSW9Ic3p5NmM5ZWcweUsvbThrbTFEVGhBTmV5?=
 =?shift_jis?B?ditSeVVvUEVDRzFtemhSKzkrdVJxSnlQSUNGK2F5VzZwSElBYmVBTkxK?=
 =?shift_jis?B?dDFHQmMvZEN2NTV5bU02TGM0dnl0VWt0UitvVGRGb25WK0RtT2ExSjZo?=
 =?shift_jis?B?T1dWTm0ySTRxYU92MUFxQjdHS1RBcXFrT0QvSW52OWM2YUliL0taWXB0?=
 =?shift_jis?B?ZndCamRUS2NWSFF6dXkwUThnUDI3TnVZZlgzL3ZwL2d1TFpvaTJFS0Ny?=
 =?shift_jis?B?V1d5cFZ6eDJJNTFSMWtMSmxmb0RNbDVMcnF1bmZ1cVZQV3lDeXJjc3E1?=
 =?shift_jis?B?WlUxQ2U0OHlUWjE4V25OWVJncGQ4emRtck5IMDczQmtidFRxWGhab29H?=
 =?shift_jis?B?T3YxcmE4VCtxQ0wwZGVyNzdlSTBtKzNFeXBucnA3QkdueCtoTk0xckpK?=
 =?shift_jis?B?SDRCV1FOeXlKdFpqVnNBaEpIYTAxNFEwUHk5Wllvam82c2VpRC9kNkgy?=
 =?shift_jis?B?Q242ZzNsY0h4MWJudzI0OHJNV1AvQUN6QTB3SWs3aHNhUDBrc01RaTJx?=
 =?shift_jis?B?RXNQR0R0Y0dxMGdOVkx6aFRHYWgxTE82T2QwczlNNXpWT2ZxbFNFRm9Q?=
 =?shift_jis?B?MG51MTNkRStwdVowS1l2elZjUk1KN2dPdEs5NExMVHBDdnRkWGEvdllo?=
 =?shift_jis?B?OEJaU2pZK3BhMXd6NzJONW1INE9XTGsvU09zL2tFZkRMU3JUUk5OUXBS?=
 =?shift_jis?B?MXd1bkdJZHNqK05UOU9SWjk1WDdvdEl4MnlBVFZudVNvRkNiK20zcitp?=
 =?shift_jis?B?MTFYVU9GK3pjU051aWJVSkl2cDgzeWNYT1RBcTIrdGprVG9QNTNuam5k?=
 =?shift_jis?B?Q09meDB6akVJbDFMRVFWb3htendkL1NWRmhGMDhaMSsyaFRFY2pVN2JZ?=
 =?shift_jis?B?VHh2aHhUTHFYVTBTRVdKOWVKQ2JmYjZScjZQY2hjdWlCTUJpelpndkhI?=
 =?shift_jis?B?Q0htTmZiZ21xMkJsWWUvMThaVTQ4YlJSSjBPS0xobEtNQ1dOeTBERFBP?=
 =?shift_jis?B?cDYrRHVBeG92TCtsN29SLyt4M2pwRFpDK1QrMUpPSnI1a0N3OFFZMVhK?=
 =?shift_jis?B?eWpxRTAvQTlEMzVOWjl3dzNyemlFb21UOUNkNWpIMVcxczFLUU5rdzZx?=
 =?shift_jis?B?dlV1NkNEZWxmamZmRUtZd2NrZFNOSTEyME14VGhXNkVsNkJJYStNdlRx?=
 =?shift_jis?B?bWcwK2lvSzJVd0tRSXBaZ1ZJQ3dUUWFMbmd2RXZjQ0xMVFVGb3RxbHJh?=
 =?shift_jis?B?OVhhLzVLVUNxbktFOXRQQlFGTmNZbVRuMFNnS3lvRzBqVFN4VGZxMFFX?=
 =?shift_jis?B?ekFrdU91MDN2L2M5ZG11bmtWWEpFQWV1NUtHcFJSSm1CVVRPaW5MZjlQ?=
 =?shift_jis?Q?OxKZ?=
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	yucoE2VH3DN3Mr8mKyBbIGMv3NxHRc933aqlr+bFJbsBDKOJlnjB235EcLxf+i6ZOX0X1IP+sKcn1RxJ4/OhEHE64ykgLux00ca3bcQAvDIwFvTbksos+fXgWuwN5vgvMoD/RSjApNk1tyEaf+laQqf1lXVW58pfusFZXlBcL0i4f3OJZVWpbV7wwUm1+XwJFEmyPmOnbv2JUPFC/+SDiQtmoTm0KYsqXedw89IXVAq8yhY/4xxVHkpdNPRYG+qk2AB5ALJNc3BkbbyMvVQ88NbJEsLIx2ZF4CsPCxCGm+VFaoGxoSTXvvyhBsLvpG/SlrpZ/ESKme9bqMX13U+yh1mDNUtlCNmt+ump8/fMalCb0/XWDpdF4JPPUsEVvQjcwNRVWCGuG3ysWIlPg6cUn/R0isImuAIUoFguCJN/vfv8btO/9tVSKaRP3GzGI174PWQbVZXU3hlBPtifBrIV+ASjr2iwTWcfVDYrXtSF67yMWBFZWABB+yiQjZxGMzwwMOR32R4vlNvlRZxQUzbRZ7mba3AbFJY8Xya35OGXACTD+XFc+32Afhqum4YXt1psIB6UDAUeuVXJxYbl1SzFlunrCarnVfIyqqXK1E/25vDnkUndpoOzp58h3JXf4hN5oQdPGCEAP+T2rheBXTk4/nzRQtw10LjAh9SU2lcJ9n7Q7jh02Vlm2Sr3gGaLQuTEtCQRcrXab2x96Ko/wH2XEbcFCvK1XUqrAb/H06aiZkkQXZLMtf4QK1/wtepl8zz5Jb8ga4A4MmOVL0CC9zjKTNWy4eCNi8sY2yI2kVfJuOk=
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63de4d8a-44a2-4feb-750e-08db67fdca45
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 08:53:12.0684
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KxW/EAZpOvs62ZwZ3IIGtDlhMMo8frWnzda9HJntIN8OaevddBmpmEYMeKXPz8wVSDAT4V+wVkcSIaubbXW0vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB8455
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 08:53:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60222

SGksIGFsbA0KDQpCeSBwb2t5KGM2NzYzZDI3ZWZkMTFlMmJjMmE2MjE0Nzg5MGFkMTA2N2M0YWYy
ZWMpgUFJIGJ1aWx0IGxpbnV4LXFvcmlxLTUuMTUsIGJ1dCBmYWlsZWQuIEkgd29uZGVyIGlmIHRo
ZXJlIGlzIGFueWJvZHkgY2FuIGdpdmUgbWUgc29tZSBzdWdnZXN0aW9uIGhlcmUuDQoNClRoZSBz
b3VyY2UgY29kZSBjb25maWcgb2YgbGludXgtcW9yaXFfNS4xNS5iYiBpcyBhcyB0aGUgZm9sbG93
aW5nOg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiQgY2F0IG1ldGEtdWJpbnV4L3JlY2lw
ZXMtdWJpbnV4L2xpbnV4L2xpbnV4LXFvcmlxXzUuMTUuYmINCi4uLi4uLg0KS0JSQU5DSDp1Ymlu
dXgtYXJtdjggID89ICJ2NS4xNS9zdGFuZGFyZC9ueHAtc2RrLTUuMTUvbnhwLXNvYyINCktCUkFO
Q0g6dWJpbnV4LWFybXY4YmUgID89ICJ2NS4xNS9zdGFuZGFyZC9ueHAtc2RrLTUuMTUvbnhwLXNv
YyINClNSQ1JFViA9ICJmN2E3MTIwMDFkYjZlYzZmNDU3OTQzNWIyYWIyNzc2MWVlY2RiMDcyIg0K
U1JDX1VSSSA9ICJnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9saW51eC15b2N0by5naXQ7YnJh
bmNoPSR7S0JSQU5DSH07IFwNCi4uLi4uLg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NClRo
ZSBidWlsZCBlcnJvciBpcyBhcyB0aGUgZm9sbG93aW5nOg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQprZXJuZWwtc291cmNlL2RyaXZlcnMvbXhjL2dwdS12aXYvaGFsL29zL2xpbnV4L2tl
cm5lbC9nY19oYWxfa2VybmVsX29zLmM6NTgzNToxOiBlcnJvcjogY29uZmxpY3RpbmcgdHlwZXMg
Zm9yICdfUXVlcnlTaWduYWwnIGR1ZSB0byBlbnVtL2ludGVnZXIgbWlzbWF0Y2g7IGhhdmUgJ2dj
ZVNUQVRVUyhzdHJ1Y3QgX2dja09TICosIHZvaWQgKiknIHtha2EgJ2VudW0gX2djZVNUQVRVUyhz
dHJ1Y3QgX2dja09TICosIHZvaWQgKiknfSBbLVdlcnJvcj1lbnVtLWludC1taXNtYXRjaF0NCnwg
IDU4MzUgfCBfUXVlcnlTaWduYWwoDQp8ICAgICAgIHwgXn5+fn5+fn5+fn5+DQp8IEluIGZpbGUg
aW5jbHVkZWQgZnJvbSBrZXJuZWwtc291cmNlL2RyaXZlcnMvbXhjL2dwdS12aXYvaGFsL29zL2xp
bnV4L2tlcm5lbC9nY19oYWxfa2VybmVsX29zLmM6NTY6DQp8IGtlcm5lbC1zb3VyY2UvZHJpdmVy
cy9teGMvZ3B1LXZpdi9oYWwvb3MvbGludXgva2VybmVsL2djX2hhbF9rZXJuZWxfbGludXguaDoz
MjI6MTogbm90ZTogcHJldmlvdXMgZGVjbGFyYXRpb24gb2YgJ19RdWVyeVNpZ25hbCcgd2l0aCB0
eXBlICdnY3RCT09MKHN0cnVjdCBfZ2NrT1MgKiwgdm9pZCAqKScge2FrYSAnaW50KHN0cnVjdCBf
Z2NrT1MgKiwgdm9pZCAqKSd9DQp8ICAgMzIyIHwgX1F1ZXJ5U2lnbmFsKA0KfCAgICAgICB8IF5+
fn5+fn5+fn5+fg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KQWx0aG91Z2gsIHdpdGgg
dGhlIGZvbGxvd2luZyBwYXRjaCwgdGhpcyBidWlsZCBlcnJvciBpcyBkaXNhcHBlYXIsIGJ1dCBJ
J20gbm90IHN1cmUgaXQgaXMgY29ycmVjdC4gDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXhjL2dwdS12aXYvaGFsL29zL2xpbnV4L2tlcm5lbC9nY19o
YWxfa2VybmVsX2xpbnV4LmggYi9kcml2ZXJzL214Yy9ncHUtdml2L2hhbC9vcy9saW51eC9rZXJu
ZWwvZ2NfaGFsX2tlcm5lbF9saW51eC5oDQppbmRleCBhNDM2ZWRiMTFkOWEuLjQzYmViN2EwNmY3
MyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvbXhjL2dwdS12aXYvaGFsL29zL2xpbnV4L2tlcm5lbC9n
Y19oYWxfa2VybmVsX2xpbnV4LmgNCisrKyBiL2RyaXZlcnMvbXhjL2dwdS12aXYvaGFsL29zL2xp
bnV4L2tlcm5lbC9nY19oYWxfa2VybmVsX2xpbnV4LmgNCkBAIC0zMTgsNyArMzE4LDcgQEAgX0Nv
bnZlcnRMb2dpY2FsMlBoeXNpY2FsKA0KICAgICBPVVQgZ2N0UEhZU19BRERSX1QgKiBQaHlzaWNh
bA0KICAgICApOw0KDQotZ2N0Qk9PTA0KK2djZVNUQVRVUw0KIF9RdWVyeVNpZ25hbCgNCiAgICAg
SU4gZ2NrT1MgT3MsDQogICAgIElOIGdjdFNJR05BTCBTaWduYWwNCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQoNCg0KQmVzdCByZWdhcmRzLg0KTGVpDQo=

