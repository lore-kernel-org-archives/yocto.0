Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B625FC61D85
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 02:37:33 +0000 (UTC)
Received: from esa8.fujitsucc.c3s2.iphmx.com (esa8.fujitsucc.c3s2.iphmx.com [68.232.159.88])
 by mx.groups.io with SMTP id smtpd.web11.128313.1700793449485660393
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 18:37:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=QqwgGc/t;
 spf=neutral (domain: fujitsu.com, ip: 68.232.159.88, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1700793449; x=1732329449;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=5hd8mUSxstWc4EaQxhmWZnsujFgiXoyetDdPdQWWha0=;
  b=QqwgGc/tgNvw2ng3fqZ+4ljXEMy93mT9h4atftaPhUqA8QzNAW5MiN5G
   1kWQQ5t5GlQtm4lxXp21c88GwHOUPGhK7xJXaNNfUalVZJOxbY7nqJbVu
   nCgJfqyODUGMaEK1/w0tw1mv4WXDZYEXtLIyZYLGDPGOH9rZpUO7R58S0
   YFk+yofEJvS3X17SGobnRpF7e8EvOg/TbgsD7PH0zebzNi1d0iggZJqMW
   LQMinuB4p1Yrf72UKf1a35YQz3EK8RvWHSkWvOUVpEFmnPG9/qNPYw8cK
   678Sw727cpQFAg/Xhu7I9llZcJPrz4OzLtxswnGtYSkSl41/pap4IjI3P
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="103490707"
X-IronPort-AV: E=Sophos;i="6.04,223,1695654000"; 
   d="scan'208";a="103490707"
Received: from mail-tycjpn01lp2168.outbound.protection.outlook.com (HELO JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.168])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2023 11:37:26 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVd7LWWIjdAQx0zcDx12jeAacFIG8FVJtSwv9Z1u02kjsMigNg6XtLiO5XrE/RnmBYy7pKrOJ8i4/mtK6EUE0vA6Z9vRRbrIseiJvL+4RP89EDSZsWX+Rtjh6Zh8PTKHtpIuiRUy0QxH9uXhz6sNBRAPxe5LZHIBOxZHVTumpoK9NB/hfYs5RTrJwZdOZPK9elvqUTzfGRH+veWpmpld+45b4vFDD7dwtgKqP3WPhijonZGEHvxTHE95N1q59wLVollXhbtbu+wa4qgpCDJ3nr4AoHwdkkyE1DD2PcTVpm+lMV+0r/mBffikRVwxzXuMf/zmvLZo2+aQ6BHn6yhBTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5hd8mUSxstWc4EaQxhmWZnsujFgiXoyetDdPdQWWha0=;
 b=KIS7YvnQbteGDzx2j0xEmmtqGOdCxCbyiq/S3ZsxnZpNuuzYZISCTodKEOqH4hzioQUpzpSSD68DKko60IdQxdr3xjFrDRybvkzaCpNmVBmLIrZFzuZC6/1ct/+MzcxeBovFReu+FBFVRZHoPzrIv/nfvwUXZwtD32UtcX+QljQzRB+y5/1JOEKng+T0SC9aPNVEzmn5AYLCC5SW5qXkGadnM2fQZaBSDgBSNSTENbEWh5foMp/eFc0nbnEIc5gZN1eyGwheK2Al7WxgTFCzw62x7ZoVR14KSCad6mY9EZ9/D7xcP9bhnfXAREO21MTdX+oNyitLrT/bSGJ00fZEwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OSBPR01MB1845.jpnprd01.prod.outlook.com (2603:1096:603:5::13)
 by OSZPR01MB8219.jpnprd01.prod.outlook.com (2603:1096:604:1a6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 02:37:23 +0000
Received: from OSBPR01MB1845.jpnprd01.prod.outlook.com
 ([fe80::b5ef:656c:918b:abf9]) by OSBPR01MB1845.jpnprd01.prod.outlook.com
 ([fe80::b5ef:656c:918b:abf9%6]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 02:37:23 +0000
From: "Mingyu Wang (Fujitsu)" <wangmy@fujitsu.com>
To: "Mingyu Wang (Fujitsu)" <wangmy@fujitsu.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: RE: [yocto] [meta-cgl] [PATCH] layer.conf: add nanbield to
 LAYERSERIES_COMPAT
Thread-Topic: [yocto] [meta-cgl] [PATCH] layer.conf: add nanbield to
 LAYERSERIES_COMPAT
Thread-Index: AQHaGGouuZK1sjhahEyl/5SD2rWrWrCIzU2w
Date: Fri, 24 Nov 2023 02:37:22 +0000
Message-ID: 
 <OSBPR01MB1845C140D9FF1639DD3F9058DCB8A@OSBPR01MB1845.jpnprd01.prod.outlook.com>
References: <1700124694-22973-1-git-send-email-wangmy@fujitsu.com>
In-Reply-To: <1700124694-22973-1-git-send-email-wangmy@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?utf-8?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2Uw?=
 =?utf-8?B?NTBfQWN0aW9uSWQ9NmNmN2RkMGEtMzczYS00MjM1LThiY2YtYzViY2Y3MGQ0?=
 =?utf-8?B?OWFmO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRm?=
 =?utf-8?B?ZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5?=
 =?utf-8?B?LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxlZD10cnVlO01TSVBfTGFi?=
 =?utf-8?B?ZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRmZWNlMDUwX01ldGhv?=
 =?utf-8?B?ZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3Mjk1Y2MxLWQyNzktNDJhYy1hYjRk?=
 =?utf-8?B?LTNiMGY0ZmVjZTA1MF9OYW1lPUZVSklUU1UtUkVTVFJJQ1RFROKAiztNU0lQ?=
 =?utf-8?B?X0xhYmVsX2E3Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9T?=
 =?utf-8?B?ZXREYXRlPTIwMjMtMTEtMjRUMDI6MzY6NDVaO01TSVBfTGFiZWxfYTcyOTVj?=
 =?utf-8?B?YzEtZDI3OS00MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIx?=
 =?utf-8?Q?d-81e1-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OSBPR01MB1845:EE_|OSZPR01MB8219:EE_
x-ms-office365-filtering-correlation-id: 50a8532b-1b86-46c8-9774-08dbec9649c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dXbTjNZ11boOpNDu3U5Y2puqSuwgbM+o7hUt2R04ljpfMoV4sYwLmJdx1QSiiHOScuGHCuG/EbR6CVcnCYDzQKd/q5Bq089WQ+NjbG+6kPUkHBeWpkBWYYwsDgrnSGl6mvATnTpXrPIjbKDEp846uD+Xv/OZM/+t0H4LOhJbZDda+jXP7d7Q0Oi/lRq0aciA8KXdQKn79Qv+Bj3KjLo2ynYDj41yrs39cM6h/HJIq2TAoNy9jWzyQe41O0phjqAc365ToJvMptVLclI8VSUxmDeEr46+FRfix7+9dcOc3sUMOfc5szxdVIJv1uqn5jlKB9YI3KrZ8/xVtkiL2qvh7E4JQqOT2AcB2BuqNHXBMM4eiwYBSLq+KYZn2ynx0qxyvZVZukf+SbyFO2qW3L+WLQCxO3y4Wo12ZSeOgaBg6Y5kONMumQ8xOMp16mOzfzNtHJGPaK4K8jlzzezPo7JkPQuupvgQlYmO2QGSlC3aFJk5Hu+ORM8bBNE9blFbfuZTHEybfB8HqWbxIVXe70PsfeCPobifBgZdqBdug3q4ksL6El5tV+10uhMUAGeeMrX5FyeJ0hST7VP461NrbYcFmMhPQw4BQo2KWnHIjh6Sc4IfogDHDfBj7/2G91jvMohn
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OSBPR01MB1845.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(1590799021)(26005)(7696005)(9686003)(71200400001)(53546011)(6506007)(478600001)(83380400001)(4326008)(5660300002)(8676002)(8936002)(2906002)(66476007)(110136005)(66556008)(41300700001)(66946007)(64756008)(52536014)(316002)(76116006)(66446008)(966005)(122000001)(38100700002)(33656002)(85182001)(38070700009)(86362001)(82960400001)(1580799018)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZmRvZXY1Tm1DeFBDYm9qNkc2QjlTSCtsS0x4M3M0c0c1b2dmVnFnUmI1RXlk?=
 =?utf-8?B?QTBjTG9jRGlDTGRzQ1c0OXg4WmpQTlkwNzR5ZVJFZGFoSXlBbXBrak10bU0w?=
 =?utf-8?B?bjhEdVZseHhKaXFSSlpZcUMvdUZFMW5hVzY3OE8wNzdIa3cyRGRmL1FDeFBJ?=
 =?utf-8?B?SjloU3VLcEdwT3RWUUNHMmZEalNuUURvcFdQZ1pqbmRaSFRIRFZLUGtWN2li?=
 =?utf-8?B?RjBpM1JPM3dMZGxBTllyRTFQK25aK2h1NHBuU0lNWjE3RE45T29yMzAydG1S?=
 =?utf-8?B?VW5uSXUyamo0U2pxNUpwZ3BvK1VwSGN6bzVmcnhXcHcyUjlwZUNaWVBJWkZy?=
 =?utf-8?B?WHFiSUJVZkJ3OGFRbHFNNkcwQmExSUJjQ2R6UkpodGdtbjlTdzkzTzlVeDVw?=
 =?utf-8?B?MEN6eEtzRDJ3ekx1aExSZk9qbC9zZ0crR0N3TzZCd1ZGZ1RLaFdmU3dxckJC?=
 =?utf-8?B?eDlRbHFIWXNUdHkzWXU3KzJGNFhLd0wvM1B2SlQ1Z1g1UmNBN0pjNmU2bGVh?=
 =?utf-8?B?dDVRZVREaXVsZ0ZveGcvVWUzYW9TNVlTZ3BWKzl2OEZPcDd6dmlFUytCdkww?=
 =?utf-8?B?Um41UytPUzBsSDZQVFVJV3dvMGUvSU9mNlczcnRCL1dHMHZKZkxGb1puamEw?=
 =?utf-8?B?RUsrMTNPb0JVU05nb3RJT292YWJrN0tlL01DdWdDSlNaL2Z6OTVLdE8zTWho?=
 =?utf-8?B?V1crWkthRnVZOGkzdlN0SDJMWVk0d1FhS3dGbUV3eXZ3NWZMQUtKOXBsd29j?=
 =?utf-8?B?Y2xEQjI0Ync5SjlzaU82SmpCWXl2T1pVTHZPTEowT1hZbVhYRnZ0RlRIMHZG?=
 =?utf-8?B?QWg0Ulp5MTdxQTI3Ry8reEM4NmxDclAxVmMwUy9EQlBvSjR3RXkrZEtuSWRO?=
 =?utf-8?B?KzRXUVN3YVp2NTBzbFE5WEJOaitFRVdoazZVbTZNWGh6OEVxR2ZUMTFHSCtx?=
 =?utf-8?B?aW1aUytidkhoT2dDMGxNdkd1RHphSzllTWpPa1FTNDZrUjRIM3hOR1JjWDA5?=
 =?utf-8?B?cGwrV1dnM1gyTEs0QWpIaUNwcndZci9Tem4vOXZUQVZRVUV3WjZzTFYveW9a?=
 =?utf-8?B?b1dUQnQ3L0FEQ2JTU3pubTFibWI4b2xvWDJyWnpmeVl3OFJ3VklwaTVVMm52?=
 =?utf-8?B?bDBGRU1PcUgwUERkSUJ2bEF6RTE5N3Q1TzhnYVJaWnRVOERBdGhHRGU1UURN?=
 =?utf-8?B?cG1VQ21MNmg3c1NWSkRFOWpvTHg3SklvYmtleWZxSnhpLzkreGErRlMzczJD?=
 =?utf-8?B?VHlzcE45VzU4Uzl3QUJsM0NGYVE1SytRZWFua01GeVNSL09FL052b2F5cVdH?=
 =?utf-8?B?MDVWUVF3ZWd1OHB0TnlBSHNENzVmTEI5UklreENtVk1KYUtFaDFja1dUV0kz?=
 =?utf-8?B?cjVaUEppU0Z0N1FDVXZzdk9aL1RKOFp6d1M2ZGFzbGxxKzFlMDFDR0habmgy?=
 =?utf-8?B?WHNwTFNucThRM1c0WUdKVFJEVEVqamJKZ2k2N3RRR09rQk1DRDBZVStsUHg1?=
 =?utf-8?B?LysyelA3SG52bGlNdHIxUUQrZTMvTU9aUVYraTJCa2swSGhJQVQ1RjQweHZW?=
 =?utf-8?B?SDVSTU5Id042VHFDRlBTOE5USmtTZHg3UkVhaitWTGx1MXdXR1B3djZyUnZJ?=
 =?utf-8?B?TklQK0VGUUJvd3lqMEIzaTBRQmY0TXZST1F5U3g3UkZxbkJqTmxwcHN2WDJr?=
 =?utf-8?B?Z1N6ZkVFMW85bVphY1BIa0c3RmVWUTY1ckRaY2praXRSSjFPV29xdWdEUW9i?=
 =?utf-8?B?clhVeGNZUXZqZ1pDVXVLUTdXNERTZHVGRkpqRlJxcURIc1JuTUlyUUNDa1k1?=
 =?utf-8?B?TU80Qk5pWHhtdGFsTjdGT0NIWTEwN1RiMkJ2RkIzektiVVhNZEs5WGhzMU5R?=
 =?utf-8?B?OWJlZzhucTlvb1lyazhDRlA2Y1pGS0MvbDlhZ2VYWUxWZHhXTEl5NG41WWJm?=
 =?utf-8?B?eHFIZldxTjkzYWltUzFQYUF2OUZncjIyVk1vd0pHQWNWU3M4NmRhWThiUitG?=
 =?utf-8?B?WGhhTjJMQ1oxQkJKakwyUlBBRUx0dlFHalFheW5WQ2Rkb2Q1UjFkRGdZOGNC?=
 =?utf-8?B?V2IyL0tUaTlJdkJUVDJBQS9VcFp6MkJqdTFtMGlTYm90cStqeFg1TFBENG0x?=
 =?utf-8?Q?KHYiAh2DgK+B60RtFdSqTd7yq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	8cF05PbFX5iTCnGjfy3hUJaaMd+gXHQjRBRqsaWramsMueGXmzWo2ERlcLCg+R4W6ECiREYNzSnK+ZeiujbpLAedXV9FDBQJDdffJGui26LP20fmUrbKde/QhLkBFR5VeSUQ+WPVrEcM+bP4fXaUhRAARBrHglT/wnDUHWhdld/7DQKFcOM/ftb1KQUqkAvns61DVADMFAenKqVahA/G0ZdEKNX8J5/jml0qdkCcyfSWTxq3mT001aUNC7htXqTFnYIITnZb+xNcDzX1clkxbKgcJt+nW6cIVuo63IKHcTr4cEppn5VNKhJbwyJ+WpAttEvgUsTA23VDpThc6U9m5N1hECnB9cCu1C7dBiU7VyOtNogc+6CVkIuX8LkgW1ROQLVPAW7B31gPnNBjkEYDQdmxRy9dByvf4CLgGGW+/D6nHfcw+nu1pyi27Eve9DwngrYAyyB6J2h6oASVULPCsVWXRVNtw1XdKSgT03rM+GoX2dWDDupo/RwawX9XfEeGBcofdcBwNHuRdLzvEzqH8N3MpvFKA1KeidGpXexdMsiUm5Xnbs5GOEug6EQaA5RvJP2HuSBwJrpErqmDQC53rq93CJbMndFUSinpsm2lCyw18Bd2pRwg+6r61W3pwHiS3PBkfALC9m8JVUJnDLi5aEDaKzhIVp/ficpqWNkH6W2EnOO5cGVEy60qi7LTxUCknM4QlWIIHu62NoKaKXcGY/SJjIDrQF/3uq1rzkpOXEm12ORyRQ7B8lkln/DVW+BOXuDf427+4CPNstMujxs/wvc0K6HBmuosdh6fw0kF1jiITBakIa0acx/V8xs0xTuq
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OSBPR01MB1845.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a8532b-1b86-46c8-9774-08dbec9649c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2023 02:37:22.9809
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P1cmOFxKxpgi7GHyMpZGM9EQ/xbRxnmgVFAs4B06Ipl2XsGZTuvyNDipdiCJsVQhpBKoT0oIyEYj1Kd4RWaMRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8219
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 02:37:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61751

cGluZw0KDQrCoCAtLQ0KQmVzdCBSZWdhcmRzDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCldhbmcgTWluZ3l1DQpEZXZlbG9wbWVudCBEZXB0LkkN
Ck5hbmppbmcgRnVqaXRzdSBOYW5kYSBTb2Z0d2FyZSBUZWNoLiBDby4sIEx0ZC4oRk5TVCkgTm8u
IDYgV2Vuemh1IFJvYWQsIE5hbmppbmcsIDIxMDAxMiwgQ2hpbmENClRFTDogKzg2KzI1LTg2NjMw
NTY2LTg1NjgNCkNPSU5TOiA3OTk4ODU0OA0KRkFYOiArODYrMjUtODMzMTc2ODUNCk1BSUw6IHdh
bmdteUBmdWppdHN1LmNvbQ0KaHR0cDovL3d3dy5mdWppdHN1LmNvbS9jbi9mbnN0Lw0KDQo+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHdhbmdteUBmdWppdHN1LmNvbSA8d2Fu
Z215QGZ1aml0c3UuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMTYsIDIwMjMgNDo1
MiBQTQ0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBDYzogV2FuZywgTWlu
Z3l1L+eOiyDpuKPnkZwgPHdhbmdteUBmdWppdHN1LmNvbT4NCj4gU3ViamVjdDogW3lvY3RvXSBb
bWV0YS1jZ2xdIFtQQVRDSF0gbGF5ZXIuY29uZjogYWRkIG5hbmJpZWxkIHRvDQo+IExBWUVSU0VS
SUVTX0NPTVBBVA0KPiANCj4gRnJvbTogV2FuZyBNaW5neXUgPHdhbmdteUBmdWppdHN1LmNvbT4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFdhbmcgTWluZ3l1IDx3YW5nbXlAZnVqaXRzdS5jb20+DQo+
IC0tLQ0KPiAgbWV0YS1jZ2wtY29tbW9uL2NvbmYvbGF5ZXIuY29uZiB8IDIgKy0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL21ldGEtY2dsLWNvbW1vbi9jb25mL2xheWVyLmNvbmYNCj4gYi9tZXRhLWNnbC1jb21tb24v
Y29uZi9sYXllci5jb25mIGluZGV4IDJhMjgwZTQuLmY3OGQwMmQgMTAwNjQ0DQo+IC0tLSBhL21l
dGEtY2dsLWNvbW1vbi9jb25mL2xheWVyLmNvbmYNCj4gKysrIGIvbWV0YS1jZ2wtY29tbW9uL2Nv
bmYvbGF5ZXIuY29uZg0KPiBAQCAtMTEsNiArMTEsNiBAQCBCQkZJTEVfUFJJT1JJVFlfY2dsLWNv
bW1vbiA9ICI3Ig0KPiANCj4gIExBWUVSREVQRU5EU19jZ2wtY29tbW9uID0gImNvcmUgb3BlbmVt
YmVkZGVkLWxheWVyIG5ldHdvcmtpbmctbGF5ZXINCj4gcGVybC1sYXllciBmaWxlc3lzdGVtcy1s
YXllciBzZWN1cml0eSBzZWxpbnV4IHlvY3RvIg0KPiANCj4gLUxBWUVSU0VSSUVTX0NPTVBBVF9j
Z2wtY29tbW9uID0gImhvbmlzdGVyIGtpcmtzdG9uZSBsYW5nZGFsZSBtaWNrbGVkb3JlIg0KPiAr
TEFZRVJTRVJJRVNfQ09NUEFUX2NnbC1jb21tb24gPSAiaG9uaXN0ZXIga2lya3N0b25lIGxhbmdk
YWxlIG1pY2tsZWRvcmUNCj4gbmFuYmllbGQiDQo+IA0KPiAgcmVxdWlyZSBjb25mL2Rpc3Ryby9p
bmNsdWRlL2NnbF9jb21tb25fc2VjdXJpdHlfZmxhZ3MuaW5jDQo+IC0tDQo+IDIuMzQuMQ0KDQo=

