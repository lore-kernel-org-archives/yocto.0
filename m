Return-Path: <tim.bird@sony.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 080E3C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 22:13:27 +0000 (UTC)
Received: from mx07-001d1705.pphosted.com (mx07-001d1705.pphosted.com [185.132.183.11])
 by mx.groups.io with SMTP id smtpd.web10.6568.1738275205645447292
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 14:13:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sony.com header.s=S1 header.b=AZGGmVXC;
 spf=pass (domain: sony.com, ip: 185.132.183.11, mailfrom: tim.bird@sony.com)
Received: from pps.filterd (m0209326.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50UMASv1016385;
	Thu, 30 Jan 2025 22:13:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=S1; bh=45TN4on
	EezJwX6K4Yrx6eHVzswybjt/KnPlmy6a6OAk=; b=AZGGmVXCmVH08X1p8uVOxmd
	UePVT8ZJviernCmy1cX8Nz9QVEYtXy7Ob21uorSdYkgnh9kDyDYMsI1fMec0n2GU
	orQVV/kN/cWQBuW36vZHEUtnWgNQplW5Pzj2Ga1rtrY301a7a1FsMWySBZkoqVIu
	aBdC0VWvt2e7D7uOnHyYp2Jac4kr9GpAR1/9RBY0Jm74d6I3QdAvLzwBnt0va/zc
	BkYJmRm3zvpmSOn08oPCZJv9FnwXaGGamIYBSuu6rX+vozZ7uVZ/GtOUiwuXrpT1
	3LH9UADIEZqEAb38slvuVjR9f7h0s7oeRp08dfiO/Zl0F7EoE/7Bu5lcT0TcQqQ=
	=
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2049.outbound.protection.outlook.com [104.47.57.49])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 44gf94g3mk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 30 Jan 2025 22:13:23 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ky3suitJ7BbypwzEh0h79AJpkuZkWwLQXzw67PgucGaczA9/OqEYoW4vghRopc+m0jfISrtIjd0HEWBi8EQEIXpqJ2oBEDSu6FKOI6lLxCXbMzHO2CKbGIfysscwDAW6pj6M/zRF9UanJSGvP+b+P/58JShFUPijzGM0iM3lhruTJ2eNczpk3pBVGSIhKgaCT2F/MR99X/plKW+BkcELcaeZMnI2VPCNUMlsk0tJnHHovzCXqHVgvgS0HWjUwRWfBuwfG7U2oH9BzeloRr1VdvxfPhHj7kxKgmpvqysNrJ7Kldk1FziKInQEF+OIZPNOIzDR9RXh2BVjNi2jChsryQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45TN4onEezJwX6K4Yrx6eHVzswybjt/KnPlmy6a6OAk=;
 b=JUAw7qoh0leoCyNa1eoAVsTvP0WgZ9qb4jf7VUZYEgdCGVP3cAwR5Zp50fWzdOzPUnMFD4qKK168kVFTyRZA3W7UF/y0DSOM5wCnDW2/nvo/D/nX+NEjg11TvVZqSKppaW0EeJ48gGD+eBTj6/rp9wL7oBYR8L8I+QnNko6Tm/vnRT2EZ9X2ecBspOMpYum0tfCYxJIKqOiw5LUocW/gMiOGmL9tMne6/JhOJkMdoRh3YPaHAlmq+QKprv6kibOsxlMcdV8rwC5Tp0cADbTvAl0ir+LSOy3kmt4FoGYcjZdRTSA4EOkpC0YUewiqN+juok/UTaWJqdQYVJ6sLNwCUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from MW5PR13MB5632.namprd13.prod.outlook.com (2603:10b6:303:197::16)
 by SJ2PR13MB6473.namprd13.prod.outlook.com (2603:10b6:a03:55b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 22:12:58 +0000
Received: from MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197]) by MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197%4]) with mapi id 15.20.8377.021; Thu, 30 Jan 2025
 22:12:58 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: Yoann Congal <yoann.congal@smile.fr>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How to determine distro for a YP-based image?
Thread-Topic: [yocto] How to determine distro for a YP-based image?
Thread-Index: AdtzTCGl8NhcQIwZQYqeZDYCHbcXmQAFBbgAAADepEA=
Date: Thu, 30 Jan 2025 22:12:58 +0000
Message-ID: 
 <MW5PR13MB563261F3C4E43C1EFB41F888FDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
References: 
 <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
 <CAMSfU+41x7r=mMNxDUEdOOt-xVzNXX6hKj6WkEqRmFAcDKLkEA@mail.gmail.com>
In-Reply-To: 
 <CAMSfU+41x7r=mMNxDUEdOOt-xVzNXX6hKj6WkEqRmFAcDKLkEA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR13MB5632:EE_|SJ2PR13MB6473:EE_
x-ms-office365-filtering-correlation-id: e5ab9726-b751-4142-e2ff-08dd417b40f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?MlBzczN4OGtwR0UrNkVnbG9FRlc0NS9Qbm9IR0pxU0w0cmxKcmNWNmsrWW5p?=
 =?utf-8?B?dVAzVGR1N0NzaEFNY2NMeDE3S1V5Ky9IM083Yld0bGZZVmI2VDFJbVFEd2Ft?=
 =?utf-8?B?T0tRZkczMENKSTV5Z0hYMlRLeWdLVEpFUStpUzZZUDZwTGFYREJKcVI0eUxU?=
 =?utf-8?B?Sys3c2lDNDA2dXpDcXNsR3NPY2Q2QzY4S1ovMG50NE82YXpMbDAyVkNuZ0lZ?=
 =?utf-8?B?aGwvVXpxRnB3aDlxNGpQeHJ1SVpvekMwV3hPQWx1R0h5R0FFQ3pvU0pUTGt4?=
 =?utf-8?B?WXhWRW96WnIwL0FuT3labkZ0WWFhazBDM2NMVGltZDAvSmFSTmdKcnNZZkpJ?=
 =?utf-8?B?b2ZMQ0RteGh6R2d0aXdXbHFudzhtQzQ4ay9FdUpDUTBqTWF5V2pPYXA4VVRB?=
 =?utf-8?B?S2RHKzBmWWk4YS9LY0pydkprcFRhOW9UM1B5L2ZaRXlaUlNyQmNiQldxcElv?=
 =?utf-8?B?M1JrMVl4VjhkclNBRnZqVldud2FxWndJTkRYREhVbDNVYjdnV1FPTUtnY2VF?=
 =?utf-8?B?YlBDUHE4b0RJMFhxZ1d2WFo4M3FkbHlYT0pRUENDVUE4WTZJaDNBcW9JUTNU?=
 =?utf-8?B?MnY3dk1PMkc4UEh6azVQYjh6UnE5dzNvQ3kvYlFHelloMGZ3eGNIdHA5Q1dD?=
 =?utf-8?B?QUF4dWJSWE5MSHlIRFRURmdJRjNxUTZ4Yk1PbTA3SmcyMWZ5ckVzeVY3R3hm?=
 =?utf-8?B?aTQ2YXZCS3ZqQ0pmM3NHaFF4NEo0MTNWNEQ2aGZXV3ZWZXZVYUtBbXlMeUd2?=
 =?utf-8?B?R2dBcmRZWnE5YWwyOThldTVsQUdDNzhjWldhK0JNd0UyaGVXWHltSWpjQkRJ?=
 =?utf-8?B?Q1NoS244VWNyMmpqSkc5Rk9KZ055MUFyR2lJa2NNN3EvMHFLUk53WjJrSTYx?=
 =?utf-8?B?UURWMWdXaFBpWDAweUgya2NvSUpERWt5L01jWWplWGg2MTdjaXF2TDlzTVFv?=
 =?utf-8?B?NDlFeWlRTWNXSVp4RmwzYzFBRGlKclprU0hVKytnM2p6ek1yMUN5aVljR3h0?=
 =?utf-8?B?azczM29PUHRva3A5N3VSQnZCbThZWGJDYnIvNitzVzEwT1ZzY2EvQ3k0ckto?=
 =?utf-8?B?c2lvK0gvalptY2QzKzY4NnpnT0V3K01lcjRtckJtM0cwWHRuY3J1dlJNeXpB?=
 =?utf-8?B?UW4rMi9xN2QrTS9YZkw0azZZYkdIOXJ1UDdjZVF1cy92eHZMWjZ6Y0ZNUEtH?=
 =?utf-8?B?R3FlMVdnMzN0U1greXhnT3YvWjhYd2xuMHlaWDBDMHJoZU1UaFdicS9KZVk4?=
 =?utf-8?B?UThRYmZxQU1UZmVOSlMzWkJheFZLc1I4Z3pyWXB4Wi8rYWUrem1qVE9IZlU0?=
 =?utf-8?B?Y25xQk5GVUlhZkd2ZklVZlVsOUZTNGJIK0MvK2E3VktPOEJxR2tJZlY0ZUx0?=
 =?utf-8?B?a2hZcmlvSFo0MGFUMGRlcUQ0OCtnODlxQ0VlTkY2SFVhREZUUkY5Q0FlYjlV?=
 =?utf-8?B?ZmVtVC9oZlNYZWhrOFJqcnBaZGs3SGpxOEhEclQreXloZEVEZFIrOHhmSW12?=
 =?utf-8?B?ZDQvcVNOQ2RGdEdLOEtFYjlOQUdGeUcveXU4QWViMkVMTHMzb21ydHI5YjUy?=
 =?utf-8?B?bnBESHhzeXRCNTlvMDAyd2RhN0NzRGtNVENPa013S0pPRWM0UUdrWCtMc2pP?=
 =?utf-8?B?SVVweEk4NmdXTkhnNVpaZU1YMFFQekg3djNsZ3BNU1VOWDV5d0c1ZUI3T2ta?=
 =?utf-8?B?OE9wVGh0M05odWNHbWdlVUJic0dtVVRQcHpEUTlKUWF5bU9hMW42dVJPd1FM?=
 =?utf-8?B?b1k5aGYyYkNFd2JWVDhPczdDWWY5Z2c3T3pSTzBxakdrN2xVMzEzUEtFOTU2?=
 =?utf-8?B?N2NoS1NuN1FNQWVrakxRQjFQaWVCRUcxUGdjaFp4NitNeCtMZXVyN1F4NDhn?=
 =?utf-8?Q?y2rrDKJiZLw87?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR13MB5632.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TlVwc3dncjlwc3FEdWY2NmMvdjdrMk5jK3YwQ3RxY3E3NDZIcDNPRGpNK2Zl?=
 =?utf-8?B?WG1UL09iVU9waFNRTlNTQ2lLNmlJM0VFWVF6bTdUcnhhZUcxUTVIQ3FIY0FU?=
 =?utf-8?B?bEFmOXBKbUtrNGpQWHd2QUZaNFpZcG9GY0dqdkxqMTkrNWk5ZTlmNklKY0dJ?=
 =?utf-8?B?UjAxVTNHakV2RDF1Ukc4MUx5UTh3UVcwT0gwQkd0K1hpN2JDRmV3NTdSaEFZ?=
 =?utf-8?B?U3NIamI5WWZ6RmQzc3NSVlNGd2NBOE9VM2s3UitVRm51Q0Z4M3Y0YmczNWln?=
 =?utf-8?B?b3hCcXJ6MlkvZW1lS3lMYnBwS0VGY0VUU3AraEVMVEhCdTBpcUJNRTRrTEdG?=
 =?utf-8?B?Q1l6aGhvWlhSbkgxbnRYb1dsSkZLMjBpd3JIa0RTK3BwWS80OG5UUHFjNnRS?=
 =?utf-8?B?ZmxXd3FhZzRORXNFWk5GZm5QQmYrNnpmMUJTeXpkOGZsaHhWUlByVVJOM2tG?=
 =?utf-8?B?Mk01R2hrN3ZjangxamFpamYyUmFQdWw2Ukg1am1HclZxUi83aG9zTC9BdWVL?=
 =?utf-8?B?NkY1cjVJejg3b1hzRVBNTGtrd0R3aTlXVkdFL1grNXR4eHZCUGE5d1NHZGhK?=
 =?utf-8?B?cTJrRkF0Z1d1ajZ6eDUzamRNZzNwbWc0dWswaE80Z0ZURUx6eURFM1Z6cVJj?=
 =?utf-8?B?S1RrbWZuV09GU3d5eTlJY0MzbnlOVEhXVklBeDdhM1pSd2UvWUppLzYrTnVK?=
 =?utf-8?B?TThLMnN2RTc3UFowTTIrVEdPU0xBcGJyZTBZR0FnZG0xcy9DT2hvNGhiM1hT?=
 =?utf-8?B?bGJQTlJDSjcrNTIzMnlnMU5uV1hUalNDVVFKWDV4R0kvenV5S2FmVkJDWWtN?=
 =?utf-8?B?WHhadkZQbTFEWEFSNmJoRExXUS9UbVM0Z1FIWWtxdDF0SWJ3aVpPek9Ga3ZZ?=
 =?utf-8?B?YXdSbFQzWFUwblU5c1VYelpyYjhzbndubG55K3U1cENDSWhyZmkxY1gzNGhj?=
 =?utf-8?B?M3MrVVhKOFlkNEpCQVl0NlFaTHJ3TndLeWVFSGJ2ak1TdHk5dFNaSnZ5dEhB?=
 =?utf-8?B?bS9Mc3E2aE9BZk1nT3l3UzFadEVMS2JHa0VzYktqSTIzZFJrNGlySkN4WGZ4?=
 =?utf-8?B?bk5XWFZhT0tKM0x3ZStiN1N6bE1ORkdpK295MHo1QnVTRWdOaXZkVzVsaURt?=
 =?utf-8?B?NGxSaDhWcUpYYlFwVStqSG5Oa00wSEtNTmhhQ3FNYk1VY0R0UVB4TGhVbVFv?=
 =?utf-8?B?dGZ0c0VHSlJXN2RlTVByNEVvYXBPWVlaT0lVUGlYeTlaR1NueFJoRStpWXFj?=
 =?utf-8?B?cmQ0ZzNVQW1lcWtjMFErMVVDNCt1Z3hFQ3hLT1dDcExORWZWYkdoV3ZSdER4?=
 =?utf-8?B?T2xzSDZwQXFQY3FPMm1jSDU2cWVuVVFaZkNBY2o1Wm9yVmZpU2VZMjJNbVY2?=
 =?utf-8?B?WUw2Q21UdzVsanhTZGlNME9HVDVPaHFvQytxQ0Y0K3FjcVc3aXpLSS9qRmpq?=
 =?utf-8?B?QnorYWFjM1dMOGszWnlENUxIYTVLb1doSkhmU1RmTklnczVCbzVBbFpTVDZC?=
 =?utf-8?B?NHNzNXBBelM4c2dwa3ZrcVJVaXhKbEdiOU8zZGNMeDk2SVdvNStYeFhjM0R4?=
 =?utf-8?B?alRTd2pGR2psS2xxY0ttNkhTUTlCVm9vZ1hINkpxVU94TTZMNmk1YkdveDBP?=
 =?utf-8?B?WWNwUGpRaTBXVnc2dEV0WWZDS0tTVFc4REhOK0RJRUp4S3NJL2pYS3M0eEdQ?=
 =?utf-8?B?Tmc0aE5ZaWE3TDB0V2l1U3k3aU41QWdZcU5lSWt4MTVKYjFpQVowVFRpbEw5?=
 =?utf-8?B?M3dSckpDZlFCY1RPTGFoWGtyN3hDUnpKQzl5QllSbzE5QS9YRE1yRHZMUzNw?=
 =?utf-8?B?ckJocDVJM2FwemNuUU9SVXMzMTBobHBZUUJuWlVUS1VEZVZ4dzRnZWFDOW12?=
 =?utf-8?B?SWNKYTc5eXphendYY3ExTmcvZzQrZ3RGWkdMTG03dC9GR0MvaDVVOSt3cEpX?=
 =?utf-8?B?Z0pPbkRtbzI2dVlNQmRNQ1JoOFRZcllpOHprUjlOSmE2Q3d0dnNYK0VGV1VZ?=
 =?utf-8?B?NkFIaXZsbnJKNGEvS094ME8xYkZJeFBlbXVCYVJlay9EeGllMWtvNENOL2Yz?=
 =?utf-8?B?UUM4NkhrSDA2aEpMYTdEY3RRK21PdGZ6WFVIUHVHaGJkajEzUjU5aHpMT0lj?=
 =?utf-8?Q?egdE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	L7J2R00IKvHND/MGVvSmqqqiGVkuaJwMx4zuRDBDbiMDx1OAhRJJHonPXSAcWgedZ03yUxVyu3QnL32vTtt8uAy/SlWia5R1rt+pwY8VO6J7987n7bjCWunq3o1yP3HPM0QWeHPlqGy8ucQS1UtAds/Ya82m/6tRej/rj6QMr832nw67BwGqUEn4yLd9JjWQrUvGO0od/bKEW3kF59hLSaBrNqxJ9bCQ6DrzDY1iWXaPX7R4momJkftivSX74AhBo+p1FVm+DYaMjTJ7V4c6vcNJCBoyV3vOk6//rWeLjmEy8DHSKmJP2ThDJSj870KL15H9vKYrvpzUktI+cfxfCy/11WdfDWrVCX3NiZLXShjCO3yc72NH61GcsaCzqSgSVvEQiu6NQNRcgZpbrA1qOsSwFlSSRQkRee8HutSg2MiXh0NXMOn6VM7dOX564xgQm1bk0G7qMY8HjkwQgq/tqOaRVnmFVc5wBdMsCAF5FEOzBrDO40NlUUZyp3ikwgFPLx62NBxj03vUDP1OykA3U3qyUute7yAHDWELCAoif+brrMaJf4GuMwrjn78/8bR457OmsovbEoCRmACYjojfBpqJSqYuIVH9msjbncXOTMSxe8yKm+10uCWwsl9/boxf
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR13MB5632.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5ab9726-b751-4142-e2ff-08dd417b40f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2025 22:12:58.2616
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JbHpoGirXxP0Cn7oSOZ/wIj3pG7YyuyyR1ta9Q8sIzCCSEfarNFEb5rGywL+rfghvYkK+BEfBBY8mQqKncGoHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR13MB6473
X-Proofpoint-GUID: awGf-nZiwNJDxVoYPK84overvRvm3GIt
X-Proofpoint-ORIG-GUID: awGf-nZiwNJDxVoYPK84overvRvm3GIt
X-Sony-Outbound-GUID: awGf-nZiwNJDxVoYPK84overvRvm3GIt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-30_08,2025-01-30_01,2024-11-22_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 22:13:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64686

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWW9hbm4gQ29uZ2FsIDx5
b2Fubi5jb25nYWxAc21pbGUuZnI+DQo+IExlIGpldS4gMzAgamFudi4gMjAyNSDDoCAyMDo0OCwg
VGltIEJpcmQgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPGh0dHA6Ly9saXN0cy55b2N0b3By
b2plY3Qub3JnPg0KPiA8dGltLmJpcmQ9c29ueS5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8
bWFpbHRvOnNvbnkuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+ID4gYSDDqWNyaXQgOg0KPiAN
Cj4gCUhlbGxvIFlQIHVzZXJzLA0KPiANCj4gDQo+IA0KPiBIZWxsbywNCj4gDQo+IA0KPiANCj4g
DQo+IAlJcyB0aGVyZSBhbnkgd2F5IHRvIHRlbGwgd2hhdCBkaXN0cmlidXRpb24gb3IgYml0YmFr
ZSBpbWFnZSBuYW1lIHdhcyB1c2VkDQo+IAlieSBsb29raW5nIGF0IHRoZSBjb250ZW50cyBvZiBh
biBpbWFnZS4NCj4gDQo+IAlJIHJlY2VudGx5IGJ1aWx0IGEgZGlzdHJpYnV0aW9uIGJhc2VkIG9u
IFBva3ksICB1c2luZyAnYml0YmFrZSBjb3JlLWltYWdlLW1pbmltYWwnLg0KPiAJSSBoYWQgaG9w
ZWQgdGhhdCBJIGNvdWxkIHNlZSB0aGlzIHJlY29yZGVkIHNvbWV3aGVyZSBpbiB0aGUgaW1hZ2Us
IHNvIEkgY2FuIGRpc3Rpbmd1aXNoDQo+IAliZXR3ZWVuIHRoYXQgaW1hZ2UgYW5kIGFub3RoZXIg
aW1hZ2UgSSBzb21ldGltZXMgdXNlIGZyb20gVGV4YXMgSW5zdHJ1bWVudHMNCj4gCXdoaWxlIHJ1
bm5pbmcgb24gTGludXggaW5zaWRlIHRoZSBpbWFnZS4NCj4gDQo+IAlJdCBkb2Vzbid0IGxvb2sg
bGlrZSBZUCBwb3B1bGF0ZXMgL2V0Yy9vcy1yZWxlYXNlLCB3aGVyZSBkaXN0cmlidXRpb24gaW5m
b3JtYXRpb24NCj4gCWlzIG5vcm1hbGx5IHN0b3JlZC4gIElzIHRoYXQgcmlnaHQ/DQo+IA0KPiBJ
IHdhcyBub3QgYXdhcmUgYnV0IGl0IGxvb2tzIGxpa2UgYSBkZS1mYWN0byBzdGFuZGFyZCBwdXNo
ZWQgYnkgc3lzdGVtZA0KPiBodHRwczovLzBwb2ludGVyLmRlL2Jsb2cvcHJvamVjdHMvb3MtcmVs
ZWFzZQ0KDQpJdCdzIGJlZW4gYXJvdW5kIG92ZXIgYSBkZWNhZGUgYW5kIGlzIG5vdyB1c2VkIGJ5
IGFsbCBMaW51eCBkZXNrdG9wIE9TZXMsDQpidXQgeWVzLCBpdCB3YXMgb3JpZ2luYWxseSBpbnRy
b2R1Y2VkIGFuZCBwdXNoZWQgYnkgc3lzdGVtZC4NCg0KPiANCj4gDQo+IAlJcyB0aGVyZSBhbnl3
aGVyZSBlbHNlIGluc2lkZSB0aGUgaW1hZ2Ugd2hlcmUgaW5mb3JtYXRpb24gYWJvdXQgdGhlIGRp
c3Rybw0KPiAJYmVpbmcgYnVpbHQgaXMgc3RvcmVkPw0KPiANCj4gDQo+IA0KPiAvZXRjL29zLXJl
bGVhc2UgaXMgbm90IGJ1aWx0L2luc3RhbGxlZCBieSBkZWZhdWx0LiBZb3Ugd2lsbCBoYXZlIHRv
IGluc3RhbGwgdGhlICJvcy1yZWxlYXNlIiBwYWNrYWdlIHRvIGhhdmUgb24geW91ciBpbWFnZS4N
Cj4gRm9yIGV4ZW1wbGUsIGhlcmUgaXMgdGhlIGNvbnRlbnQgb24gYSByZWNlbnQgUG9reToNCj4g
cm9vdEBxZW11eDg2LTY0On4jIGNhdCAvZXRjL29zLXJlbGVhc2UNCj4gSUQ9cG9reQ0KPiBOQU1F
PSJQb2t5IChZb2N0byBQcm9qZWN0IFJlZmVyZW5jZSBEaXN0cm8pIg0KPiBWRVJTSU9OPSI1LjEg
KHN0eWhlYWQpIg0KPiBWRVJTSU9OX0lEPTUuMQ0KPiBWRVJTSU9OX0NPREVOQU1FPSJzdHloZWFk
Ig0KPiBQUkVUVFlfTkFNRT0iUG9reSAoWW9jdG8gUHJvamVjdCBSZWZlcmVuY2UgRGlzdHJvKSA1
LjEgKHN0eWhlYWQpIg0KPiBDUEVfTkFNRT0iY3BlOi9vOm9wZW5lbWJlZGRlZDpwb2t5OjUuMSIN
Cj4gDQo+IA0KPiANCj4gCUknbSByZWxhdGl2ZWx5IGluZXhwZXJpZW5jZSB3aXRoIFlQLiAgSXMg
dGhlcmUgc29tZXdoZXJlIGluIHRoZSBidWlsZCB3aGVyZQ0KPiAJdGhlIGJpdGJha2UgY29tbWFu
ZCB0aGF0IHdhcyB1c2VkIHRvIGNyZWF0ZSB0aGUgaW1hZ2UgaXMgc3RvcmVkLiAgQ291bGQNCj4g
CXRoaXMgb3Igb3RoZXIgZGF0YSBiZSB1c2VkIHRvIHN5bnRoZXNpemUgYW4gYXBwcm9wcmlhdGUg
L2V0Yy9vcy1yZWxlYXNlIGZpbGU/DQo+IA0KPiANCj4gDQo+IFNlZSB0aGUgYWJvdmUgIm9zLXJl
bGVhc2UiIHBhY2thZ2UuDQoNClRoYW5rcyAtIHRoaXMgaXMgZXhhY3RseSB3aGF0IEkgd2FzIGxv
b2tpbmcgZm9yLiAgSSBndWVzcyBJIHNob3VsZCBoYXZlIGdyZXBwZWQNCmZvciB0aGUgc3RyaW5n
ICdvcy1yZWxlYXNlJyBpbiBteSB5b2N0byByZXBvc2l0b3J5LiAgSXQncyBiZWVuIHNpdHRpbmcg
aW4gbXkgcmVwbw0KdGhpcyB3aG9sZSB0aW1lIQ0KDQo+IA0KPiBJZiB5b3UgbmVlZCBtb3JlIHBy
ZWNpc2UgYnVpbGQgaW5mbywgeW91IG1heSB3YW50IHRvIGV4cGxvcmUgdGhlICJpbWFnZS1idWls
ZGluZm8iIGNsYXNzDQo+IGh0dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL2Rldi9yZWYtbWFu
dWFsL2NsYXNzZXMuaHRtbCNpbWFnZS1idWlsZGluZm8NCg0KVGhhbmtzIHZlcnkgbXVjaCBmb3Ig
dGhlIGluZm9ybWF0aW9uIQ0KIC0tIFRpbQ0K

