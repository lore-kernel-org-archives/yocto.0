Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BE27C35FFA
	for <webhook@archiver.kernel.org>; Wed, 19 Mar 2025 12:46:21 +0000 (UTC)
Received: from mx0a-00622301.pphosted.com (mx0a-00622301.pphosted.com [205.220.163.205])
 by mx.groups.io with SMTP id smtpd.web11.6935.1742388373961098738
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Mar 2025 05:46:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ambarella.com header.s=com20210415pp header.b=BomH/Nfl;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ambarella.com header.s=selector2 header.b=i2iNvyMJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: ambarella.com, ip: 205.220.163.205, mailfrom: prvs=4173c1cd88=mwen@ambarella.com)
Received: from pps.filterd (m0241924.ppops.net [127.0.0.1])
	by mx0a-00622301.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52JBdcrr018134;
	Wed, 19 Mar 2025 05:46:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
	 h=content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=com20210415pp;
	 bh=qyXn/oDZd+XuRuamYfkqwOJJ6014bIyCmJBA+3dL0uE=; b=BomH/NflXRxc
	VQFSWi4N/bTIU4Q4oAt0jYmGEHzCo6v7g8Yo5EkYKyWVmR2WV+/wud1UOaWVkxKf
	3dVdFWieqt7RC1K2+exmAI6jT2GgglimsSsXTLxEitPwK/8ahZXZWiExc2HFqF+R
	cMkE9SrIxec/+hzWEMeKwkuXh1ViDZnH6Z8yq4B/5b4hqOJUPYZpUIiUMZv1ambp
	s2aEqsflqxaiK9w0bXYh1UBsA+BjV6gAW4peUmvhj32IrFiUsxnx23yBQv4Jx0nd
	aFY3p2NwCvcrmK+i5GFwhHn0AAfMWxr6tGVSWh24QubJWdm+CO80V2LzcoqR8Kfm
	mqipQRJgmQ==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-00622301.pphosted.com (PPS) with ESMTPS id 45fw75011q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Mar 2025 05:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p3fEIrSU2+xypa0o/CBI4JIsp1gqOdEq6qm8WCQPJpW6+I67jCGioDO3ygSfcRmjpKKndrT7YHSzL0Y7AbqNMyiziqqa+wtit4MZ043T3/h82Zjv8BsiDT20Zf7tTNPzPO87zRq1bMuywXJTydXQzl2mWJbtC3qBvBeGAtCvZLp9hmRUtRHDnk5+mjFMT5xIFivXxw6iDrhjyE6U7gZZ9UW7fRDJ1sCjHiKgX76sujgJ+ZpBhN17GIo8sX96kgEr3qt0ly4w90+TC4JcZGnvHFFglksRb1o95YTni6jZd7nLNaA3TO67hjOpRk3JRVwezoomSqY1McX5HzQY0uwU7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gK9D+66fKod9JU7Ie4PUIs/OBRCh5ymy20WElv81dVM=;
 b=sCAt1luJT3aI2edfdJAr85TvqAH02jrd/KIoob0CGj4RDmfMdBkARzjf7B/Y60e9RTkC979rIsXKnKxtNJK1u9RBm+pjwrJT55+kmNgUo24ldNa8gElBsZtFop9v9Cc6PgegT/+sc49NMQnGGSw7u1jg+jtCrcljn75C61cPsWFFZVaNzGv7QHa1+XbR2Qfc9WyfWCD6jciqa0JEPM25JB1VTLPkdD9YBKhY4BPl863+RmliS9D7IWtXn0sVRZ5oXBOMvSjLIAuNpD4GgNRzJWlQDv+YmwG8YsXkt8HozLzEPoqHKluA2PRI7u6emjGXHNtn+wGy4SrmxyIOvNM1vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ambarella.com; dmarc=pass action=none
 header.from=ambarella.com; dkim=pass header.d=ambarella.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gK9D+66fKod9JU7Ie4PUIs/OBRCh5ymy20WElv81dVM=;
 b=i2iNvyMJBfP0hk7ds8zWOQbbcXenv8r7H5KzeGG8FmXrOeGnNvfShMfsI/K7oHca8Z6pOsqdNwff3UsyEfb51dngv6qqSUbO9F2PWfqll0q0qUCrtFD+P1dqflfltR8EeC6wSyynrD8nhMGjVsf7NXA26KtXaptBRinNsJW2JWPYnhM2I6NIYkIUicBcnTOxRib6sUt55xsAKJpoMULzqEIm5paJc1dHcvpvqZP2uWptrnfX2zZtIFPWz3yJLL9rnrhfempQrcNjIgaNf07YEa0L6o8acBLyMVQKWV0obQdyQjUSTBfXjpMRC0ZRBxDgFw+Awnd+lmsr2t8KcEMC/Q==
Received: from DS7PR19MB5807.namprd19.prod.outlook.com (2603:10b6:8:7a::11) by
 LV3PR19MB8626.namprd19.prod.outlook.com (2603:10b6:408:272::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 12:46:05 +0000
Received: from DS7PR19MB5807.namprd19.prod.outlook.com
 ([fe80::816b:7f33:f229:feca]) by DS7PR19MB5807.namprd19.prod.outlook.com
 ([fe80::816b:7f33:f229:feca%6]) with mapi id 15.20.8534.031; Wed, 19 Mar 2025
 12:46:05 +0000
From: Ming Wen <mwen@ambarella.com>
To: Quentin Schulz <quentin.schulz@cherry.de>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [EXT] Re: [yocto] Linux LTS kernel upgrade strategy for Yocto
 Poky
Thread-Topic: [EXT] Re: [yocto] Linux LTS kernel upgrade strategy for Yocto
 Poky
Thread-Index: AQHbk0zj7uyk4X3dcUS1OF2GtCAik7N6cwUw
Date: Wed, 19 Mar 2025 12:46:05 +0000
Message-ID: 
 <DS7PR19MB5807931860600E5834064AE1DDD92@DS7PR19MB5807.namprd19.prod.outlook.com>
References: <yBST.1741783392825809496.3HmV@lists.yoctoproject.org>
 <52f162e1-7f75-4ea8-9d37-eebdddcdf2da@cherry.de>
In-Reply-To: <52f162e1-7f75-4ea8-9d37-eebdddcdf2da@cherry.de>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR19MB5807:EE_|LV3PR19MB8626:EE_
x-ms-office365-filtering-correlation-id: 6fd9a654-c218-4f8b-d846-08dd66e403a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?b0NocmpRc0NLdW5nVEtybmx6NXphcW5YK1R5SHdQamNmY1pzLzF2MzBpUmF6?=
 =?utf-8?B?TS81STJyYXUyZmVLYjNiQ0pjc3JPNER4QzJEUXRTNlhuZVI3dVVaK3N1dVda?=
 =?utf-8?B?QlpyUzBXOVNCYVB2amxza3lSZndVKzhybzRjb3lpbFpyanNSZ0xpclE5V2ZD?=
 =?utf-8?B?NDJVSWRXYmt0VFhHUGZadjZ5Y2JsTWpISG52ZTlxUW81cEU1L0dMRm1MNXZi?=
 =?utf-8?B?U0thUEhNMFhiSStMcVZSOXVJNHpGbDFNekdoK2JvUzg1WndEQ2M1WU0zdUhR?=
 =?utf-8?B?UW8wZG15N3FlZmxMSHc4TnczeE04T0R2dFFOODQzKzVxa0FadVpMNmFHVGw4?=
 =?utf-8?B?MWlmU0kxVnZ2bzFqL2oyYXIwRCsvc0JleVNxbS9DUkszeDJBYUovT0JpRXRU?=
 =?utf-8?B?bmJvQjlPUnNlMnFOUmk1UzZVV2VoNVh6a2czV1FYQVFJRDVtWCtmSUtlcmRF?=
 =?utf-8?B?eVVtNkh4R2lmeGF1WnFhOGtxVzE5cm1CM3NMdzB4U1hHMDJkeUIwN2hJRS9h?=
 =?utf-8?B?R0tiTWpvb2NtOGUydEJmU1J5Q2hLendDKzJkQVRxSmhuNk5DOUpJWmhTWGtX?=
 =?utf-8?B?ZDhIWFhySGdIUTA0dG12WFgzRmNLNWlTY1FUTUNVeExBTkpKeisvQldvMCtx?=
 =?utf-8?B?Mlc4OG5jMk5RQUFmRVJIN2NzN0FGT0d0ZnlBMkRacFpsckc0WTBJekY3bTBa?=
 =?utf-8?B?NzU2cThDRm9oc3FYK1Y0dWM0a3VHZnBpVE41UjVnRk9aRUVKMjViSldKVG44?=
 =?utf-8?B?SnR6VnpneTdaSU9BL0N5WmhtcWRrQTVpSU9tOEluamc4MUpLUzd3WVEvMlMy?=
 =?utf-8?B?Ymx3N0llSUd1RkJXekRWYURiZzhOcFQ2NTFqSHpXY28rajVlbVhFWmdmOFV0?=
 =?utf-8?B?RXZBVVRLZ0JNN2psTWxoTzNibERxS2lGVVFPTEZ3SXZOM3VqU3FWeUZVUmkw?=
 =?utf-8?B?aVFkMDNZTm9GblRCa3d3M2pjUWpKazh6enZoZ1d0dzNuSm5mTkZqaW82M2Fk?=
 =?utf-8?B?UHdIUTkxcWRYRjhoYzU2bm9TR3dGUFZFRnpEYWhlNWFqTFducXU1SjRyKytO?=
 =?utf-8?B?TVM3OWdzVEE4NUppZUlTb0ZaTGxsaG5BNEtoWndjMFJ5K3JYT2Q0L2NPU1dH?=
 =?utf-8?B?eE1NbmtlSE9PTVBzUS9qcFFQUk5WdENDQWY0cENabjhmSlNmbU9mZVJnWWNS?=
 =?utf-8?B?VVMvb2tUaVF5Z1VXYlJtWlhnbVl3NSs3TlhXd3pZQSs3SUFGbll0dlFPempV?=
 =?utf-8?B?SVpIaDJQeXlTemtoWnRMN3JxQlBhUVVGYkZrRSszRDBXSEQ2bXZaL2JmU2Jw?=
 =?utf-8?B?TUZOSmNmbUREUVlCV0NkcStXcXg0SndsSlZWNkpDRDFiQzBhK2EyODVhbUl2?=
 =?utf-8?B?Tk1pTEdCTmdlM2FmNmZFS0RPaU9aZGkrZmh6QU12ZmorR3pmSW9Cb1V0bUZZ?=
 =?utf-8?B?aFJmby80U1JOSUlsdTlrWWoxL2FwMlprNHo5Ui9iOVNPTzgvYjFVdWxuaUFU?=
 =?utf-8?B?MFIxRFJrUGVQSFF4V2pTcndpRldwK1lNU3NLNk9RcWIwRnFZQlRlL1MzbjFu?=
 =?utf-8?B?Q2laVVFiLzhoZHJkVnJ2WUkxVUFlYmszYkJLTm50TURoNTMveFpDbUVVMm1C?=
 =?utf-8?B?ZEFwUWVxOTRaeWg0ZGhUemo3a1F0Qzh6UXA3elVNOHFrczB4REhXNGlhMVJm?=
 =?utf-8?B?L0d5b21wclE0TWJNZmM1dUVBekxxZ2o2ZEhKdE4rRkNGZDgvNllTZmhNTThI?=
 =?utf-8?B?VFdSUkp5bVJidElSVHJ1L2RDbjVMOGRPWGJPUmtDL2FjWkFwc3R3ZWowb25a?=
 =?utf-8?B?ZjFWOWIxbHBFWkVHRHk2c3FudmJ0dnVOWDd2Szg4UFlHak9HYW9mVkF6VW5U?=
 =?utf-8?B?SnN0dWJhMHovb2kzUXdtZSsxTW1hUm5ucUFtQ1dqT0xmWkkvNThnV0VNYTZC?=
 =?utf-8?Q?+JBX1yr/NOHDWMgJVuaiuXZmSDjwvynl?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR19MB5807.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZXFtbTM3SUFEOUtDcktHaE80NkloeUtGaVFTc0FyTWF0cjMxOXd5NVpUVlJt?=
 =?utf-8?B?NVBkeVJQUDFmcVhxM2V2ZG5Pc09tYXRiOU9Vc3d4S3pYK3FKbEl1MEFmdEJS?=
 =?utf-8?B?cUNsZUlhRVEzT21HL3NQckJBUVdieEdTK3FiZVNIeDNWNjJncTlDUjZVSlJk?=
 =?utf-8?B?K01uYjhYL2NJdmNaM3VJR2VTaEJyL0c5Y25oR25ER09iNFlGdTExNHZYK2I1?=
 =?utf-8?B?ZlhtQXMyNDMzZzYvd1VlVC93d0Fnd2cxNkRsSmVMNHdva0ROR24zdUxla1J6?=
 =?utf-8?B?SHplWWgxcEFqRGpiTlgzTzYxMyt3UWVSV1NJNXpGMWsyMjdyU09nUXdGZC9h?=
 =?utf-8?B?ZStqQkNIMWhhNnVDRzVhL2gyREY0ZWVXdGZLZTVKckN4amxnTnEyZnhKOFFy?=
 =?utf-8?B?eGVkVmswNVNwREJHY1dJd3Z0aVhMcWZsNkt2dTY5TjlhcXBCMUZnSklSQk5G?=
 =?utf-8?B?UUdySGFKVENzL2xINFhnaktSVGg4QmxuRDJKbVBQVkJkWElyVVh5QmFOMkFx?=
 =?utf-8?B?S2YrcEJlcnA1U25TQXM5bXdmZG9lWWNYN0kyV1ZhQ1NaSys5bW40UmNuN0xG?=
 =?utf-8?B?V2N2M3JMQ0hIUkRjeDN1WGxuQ1haTDZEVzl6V21nZUNzUm4ybXcraGRmK0xN?=
 =?utf-8?B?UTdsQms2dEZhOWhsaDBqL2NYK0lnQXIxbUhqOXozSlZrWXRVMG5SYWZUZEhm?=
 =?utf-8?B?Q3ZZL2JCaFBiV1UwbHc4Yk52YVJMeDd0Rk5ibG9vcDdmbGZ5cUMxNE1wTURD?=
 =?utf-8?B?RDlaOUpzYVA0L1pLeTNERUxlMFlyeVFwNi9rSVRVZHE0QVcyanB4cTlxaGt1?=
 =?utf-8?B?VFdvYUsySDZrdWprZDJ6SlQ0cVhqZHJWeEdQS2xsR1htZ1dnQUgvNUtiN3Ni?=
 =?utf-8?B?ZUxsYktpeEtZZnhjZnByWDc5d3h0WCtnUWJRSHl3eERUTlo2bU9zdjRLNnNx?=
 =?utf-8?B?RGdYdFZzSGFtRHdJMTZDQnZMTURFczVwNndmaXZHa05Tc3dYRlVCMytTNmhy?=
 =?utf-8?B?c0ZIejZIanN6bmo5N0NqMHVGd0ZhMmtNV3B2OVpuaUdYalVuYTkvbEJuTDBB?=
 =?utf-8?B?UFBuTEhwOVFoejFpRXNlVzgwRG8wcmtqUkhmUjZXT2thanEyd0FESk5kcWty?=
 =?utf-8?B?U0dQZVRsUWlDSHRXK2RWZDY5OEJCQ056MHJkYzdWMmZVREFKZld3MmZwRDhV?=
 =?utf-8?B?ZjgzcFBaZG1ZTlI1Uk05QTI5MlNwTjgzd0N0UG5qYTJSZjhIaXBYcG9XR2RH?=
 =?utf-8?B?TjNXUFhUeGZJZHdndWRhS0JpWU45NzhHR29BeEJpcHRscEp1UzBMMTdnOVJT?=
 =?utf-8?B?NGZUem9vV2U5dzZIOGNRSWxnZnk4bHBqSmRWTGNyY1JXcnR1bkwyNFlGOStt?=
 =?utf-8?B?aW1pT3pmVVdacm5xQSsxMXpTQnk3RGVXWkh3N1Zna0dXcHZGWERRZGhTSDBL?=
 =?utf-8?B?L0RZTmJjUlNiU05WNFMxbEUyV05nSVA2ZFk4N05xZTNia1V0U2daY1Y1UmtJ?=
 =?utf-8?B?R3NpOTNnMExZSTI0dzNoNTdEQjR3dS9xZzVwVEphM0dHR2xqZjFxVkJpdUlk?=
 =?utf-8?B?ZlIyd1M1RllqYU5ybDByTXNrNXpPZFRVOEVqc3UzUDhFRm9ic0w3dSt3U2J1?=
 =?utf-8?B?YjRzL251MXg2dkNvbEtDYno3ZnZXTzhPM1hIY3kxWEVTRG16VU1USjZJcThm?=
 =?utf-8?B?dExBM3NlYXNYRVpHeTc1d2pLYlQ3MVJ3V0U5WjRXOU5jNitiUmpXTFdyUW5S?=
 =?utf-8?B?RkVnR3FyK28xWkgwbitiTkR4SnVTUDd5cE9ndFg0anp6RXJWZVBmWms5b09C?=
 =?utf-8?B?UDdrMGZnSURDbWV1VFRMY1MzNVhWQkhkSmVMeHY3UFExRU5jak5SYU5jU2RT?=
 =?utf-8?B?UFVwWmtBbEUzNVBvNHZCQWlzbUJ1Vi9nTFFMU3ErWjdidXBzcU04RXFSR2hx?=
 =?utf-8?B?ZWhRWEcxMjJoTlZYVFYwbHhDQkFsWGhjUHNEVmM0QmRaYWk0VVN2OXM0RmRG?=
 =?utf-8?B?MlcwYkdxVGdpWTI5U3l4OHRGcGRvcEFsQ1JLNkZMNVVoMHBQVWY1bEdBdnV5?=
 =?utf-8?B?cnBRdjgvUy9CQ0VxbFRRZzBSa3R1MkE5UU1ITUEwOXY4OTB2eHFSMnpveGVh?=
 =?utf-8?Q?CZSriJqKJKp0AdbthPpOSXc4D?=
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ambarella.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB5807.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fd9a654-c218-4f8b-d846-08dd66e403a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2025 12:46:05.5927
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ccd3c8d-5f7c-4eb4-ae6f-32d8c106402c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cGY5iRMWybzQcPyagDbhVWrnGka/hplZZckYRlVq93tuOJJNSOqWXDLtLAmUsMsBjR50+JPDWHdjrCIho5QhuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR19MB8626
X-Proofpoint-GUID: zs3zezW7Qak3ycG2B0YM0Inqt7niKmeN
X-Proofpoint-ORIG-GUID: zs3zezW7Qak3ycG2B0YM0Inqt7niKmeN
X-Authority-Analysis: v=2.4 cv=eIMTjGp1 c=1 sm=1 tr=0 ts=67dabc92 cx=c_pps a=1mby/iHf9ieL9308fKykyA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Vs1iUdzkB0EA:10 a=H5OGdu5hBBwA:10 a=dkMdDuzY2HgA:10 a=_EeEMxcBAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=iGHA9ds3AAAA:8 a=ppJngBeKAAAA:8 a=muaZk8cb0nNlWD7HeM8A:9 a=QEXdDO2ut3YA:10 a=-UZi6s5u-ZMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_04,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 mlxlogscore=852
 impostorscore=0 phishscore=0 clxscore=1011 spamscore=0 mlxscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.21.0-2502280000
 definitions=main-2503190088
Content-Type: text/plain; charset="utf-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 12:46:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64984

SGkgUXVlbnRpbjoNCsKgDQpUaGFua3MgZm9yIHRoZSBxdWljayByZXNwb25zZSENCsKgDQpCZXN0
IFJlZ2FyZHMhDQpNaW5nIFdlbiAo6Ze75piOKQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4gDQpTZW50
OiBXZWRuZXNkYXksIE1hcmNoIDEyLCAyMDI1IDg6NDcgUE0NClRvOiB5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnOyBNaW5nIFdlbiA8bXdlbkBhbWJhcmVsbGEuY29tPg0KU3ViamVjdDogW0VY
VF0gUmU6IFt5b2N0b10gTGludXggTFRTIGtlcm5lbCB1cGdyYWRlIHN0cmF0ZWd5IGZvciBZb2N0
byBQb2t5DQoNCkhpLA0KDQpPbiAzLzEyLzI1IDE6NDMgUE0sIE1pbmcgV2VuIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPiBZb3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWlsIGZyb20g
bXdlbj1hbWJhcmVsbGEuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcuIExlYXJuIHdoeSB0aGlz
IGlzIGltcG9ydGFudDxodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9ha2EubXMv
TGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uX187ISFQZUV5N25aTFZ2MCFrQmczaUl1T281
TTBYaUY5eXdQTmg3dFZGYm4xaTNSQUR0WE50Z0hGNU5QT0Mzdy11WUxMT0M1OG1SOEFidG8ybFRy
X0NuVWR4RURYYlVtR01MYW03ZnJ3SmckID4NCj4gDQo+IEhpIFlvY3RvIE1haW50YWluZXJzOg0K
PiANCj4gDQo+IA0KPiBBcyB5b3UgbWF5IGtub3csIHBlciBMaW51eCBjb21tdW5pdHksIHRoZSBM
aW51eCBMVFMga2VybmVsIHN1cHBvcnQgd2lsbCBiZSByZWR1Y2VkIGZyb20gNiB5ZWFycyB0byAy
IHllYXJzLg0KPiANCj4gVGhpcyBtZWFucyB0aGF0IGV2ZXJ5IExpbnV4IExUUyBtYWpvciBrZXJu
ZWwgdmVyc2lvbiAoSUUuIDYuMTIpIHdpbGwgYmUgRU9MIChlbmQgb2YgbGlmZSkgaW4gMiB5ZWFy
cy4NCj4gDQo+IA0KPiANCj4gSG93IGRvIHlvdSB0aGluayBhbmQgcmVzcG9uZCB0byB0aGlzIExp
bnV4IExUUyBrZXJuZWwgc3VwcG9ydCB1cGRhdGU/IEZvciBMVFMgUG9reSwgd2lsbCB5b3UgYWxz
byBjaG9vc2UgdG8gZm9sbG93IGNsb3NlbHkgd2l0aCB0aGUgcGFjZSBvZiBMaW51eCBjb21tdW5p
dHkgZm9yIExpbnV4IGtlcm5lbCB1cGdyYWRhdGlvbiBiZWZvcmUgY3VycmVudCB2ZXJzaW9uIGV4
cGlyZXM/DQo+IA0KDQpUaGlzIGlzL3dhcyBiZWluZyBkaXNjdXNzZWQgaGVyZSBpZiBJJ20gbm90
IG1pc3Rha2VuOiANCmh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xvcmUua2Vy
bmVsLm9yZy9vcGVuZW1iZWRkZWQtY29yZS9DQU9TcHhkYkMtPTZodHowZzhpOE5wY3JtVHNUcERY
TTBBa3h0QU8zMzRLSEVtS2d1NVFAbWFpbC5nbWFpbC5jb20vX187ISFQZUV5N25aTFZ2MCFrQmcz
aUl1T281TTBYaUY5eXdQTmg3dFZGYm4xaTNSQUR0WE50Z0hGNU5QT0Mzdy11WUxMT0M1OG1SOEFi
dG8ybFRyX0NuVWR4RURYYlVtR01MWmprclJtMVEkIA0KDQpDaGVlcnMsDQpRdWVudGluDQoNCiMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMNClRoaXMgRVhURVJOQUwgZW1haWwgaGFzIGJlZW4gc2Nhbm5lZCBieSBQcm9v
ZnBvaW50IEVtYWlsIFByb3RlY3Qgc2VydmljZS4NCgoqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqClRoaXMgZW1haWwg
YW5kIGF0dGFjaG1lbnRzIGNvbnRhaW4gQW1iYXJlbGxhIFByb3ByaWV0YXJ5IGFuZC9vciBDb25m
aWRlbnRpYWwgSW5mb3JtYXRpb24gYW5kIGlzIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBv
ZiB0aGUgaW5kaXZpZHVhbChzKSB0byB3aG9tIGl0IGlzIGFkZHJlc3NlZC4gQW55IHVuYXV0aG9y
aXplZCByZXZpZXcsIHVzZSwgZGlzY2xvc3VyZSwgZGlzdHJpYnV0ZSwgY29weSwgb3IgcHJpbnQg
aXMgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVh
c2UgY29udGFjdCB0aGUgc2VuZGVyIGJ5IHJlcGx5IGVtYWlsIGFuZCBkZXN0cm95IGFsbCBjb3Bp
ZXMgb2YgdGhlIG9yaWdpbmFsIG1lc3NhZ2UuIFRoYW5rIHlvdS4K

