Return-Path: <richard.danter@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F16C1C4345F
	for <webhook@archiver.kernel.org>; Mon, 29 Apr 2024 17:09:09 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.27171.1714410547978777023
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Apr 2024 10:09:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=Yq3kntXQ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=5849404f1b=richard.danter@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43T4qYIq021999;
	Mon, 29 Apr 2024 17:09:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:references:in-reply-to
	:content-type:content-id:content-transfer-encoding:mime-version;
	 s=PPS06212021; bh=T2Hmj7iB8xhk2auwDXER3cIvOs9YVwhWWrl7C5qwXto=; b=
	Yq3kntXQTOeyu1E2IPdJDbFgbTXmHZhfAKyCw5ouNcyeqFVzx0ihTEHi9opEygpt
	Sk4iGb/98N91o6I8geXSP8iVY4x+kv3wfmfxEuK3RIgIcz/vhlRN9BuDGzV1sqK0
	ElTJqGXI8ow4PwkGQ6EMW0+7H7Xqp79gXIalLE+yWv/DTfnlyLSpfTtJiJ9MOrlf
	4TJJ+fwupxCgvRWHaIK7lLve8Rjov+/1iG2fg5KXXyu7+VgZ8OYxsqO3U1eE+BFn
	FFapEBWnku51CLjesbiBId9qz1X6UNTwQeymVVRIXEt2fJWDAMM9sMKebTmQrxZK
	bUkJLfCvd8irN9efRNkpMw==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3xrpjxabts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Apr 2024 17:09:05 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sq5f+Ppf4SW63y4+u3qd4yaCNtVjhUmVAaPxjy7Qt9EkH393IOtriy5o8LohbFfVCxNXzoGNF1LQ0V8TKgvyOY9wuhZZ9KAEqv4sx1/ovcaysbtvngYO37UI361j+9XjXMKYwI32TG2ti7Q9mu2zIDnqhVKv52e7epM9GoFjqWJa9idjsb02qDpd1p4ndd6hapkwRKTG5R0MA8cDxULza3xCz2fMtkyZoa82GfDSBvu4mfjqR8K2l/YGfpmnt1BAP7lY1dGX/A+pN0uZTsI1hdi8jua6x71unCDcT3LidU+RrzMiwzS1pH7qdlGPW0oHS+ml0Tg6OU830WrnWbNwHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T2Hmj7iB8xhk2auwDXER3cIvOs9YVwhWWrl7C5qwXto=;
 b=MCPoIZT2YMLYt7rLImdFr6PLu4w0JSdK2jQ1b3LQTjACajjE9keZwx3NnIjEcrmfo/lYb9wSkv/HgNf9xCioPtV3ft/wLajokFTWV5rV2RUXFUZxYKZBzGpVFczqCRqqfmWUKB+8k3B8316UTUXzMMnwtceF8eXzGIPfztd2j6h0/6xVYDZbGiCDuxOq6QzPBJsBOctVRJcVb3OI7qKb6hBlCwYV5AJ7ZhaWCWfeK1snnP6uEbRdLO4LP6T0d4ecJvC8mVKYRkHyOVkcQDts8BimiOI1Nuxt0CDWna2ASjyp15pqG1wyl+3MiFnVvTjJH7b+GBj5XJSnwFgFahBaWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CY8PR11MB7685.namprd11.prod.outlook.com (2603:10b6:930:73::17)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 17:09:03 +0000
Received: from CY8PR11MB7685.namprd11.prod.outlook.com
 ([fe80::c131:5e1a:2a2f:e429]) by CY8PR11MB7685.namprd11.prod.outlook.com
 ([fe80::c131:5e1a:2a2f:e429%7]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 17:09:02 +0000
From: "Danter, Richard" <Richard.Danter@windriver.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Forbidden host packages?
Thread-Topic: [yocto] Forbidden host packages?
Thread-Index: AQHamlOCZALFbpX0mUeWM+F5vSXzVbF/dt6AgAAEVgA=
Date: Mon, 29 Apr 2024 17:09:02 +0000
Message-ID: <5099ede3b255d8d36fdec025c39b466aa8bd31ef.camel@windriver.com>
References: <eb057a01711559ff9b6afc949bdebe9636a311c2.camel@windriver.com>
	 <3e66a8b6b8bd016cb04cf87abd6a3fd6146d507d.camel@linuxfoundation.org>
In-Reply-To: 
 <3e66a8b6b8bd016cb04cf87abd6a3fd6146d507d.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7685:EE_|MW4PR11MB6811:EE_
x-ms-office365-filtering-correlation-id: ee2ac0f7-d891-4ac3-7da1-08dc686f1174
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: 
 =?utf-8?B?R0FMelcyMGVKTXBNWlk1VHNsZjIyRElaeEFYWWVTUWdKbnh2bVhQWUlKQ3Nu?=
 =?utf-8?B?QmdEa01GMHVDL2RCTlVtaFhiOHZ4MGRjc1ZocmV4MkJRMXkya3Q2Q05TM1pG?=
 =?utf-8?B?bWwySHBwZ21RTFJJYnR0NEZwM2swRHQyalJnT2N1L2ZqYWl5UUZHZEczUGpG?=
 =?utf-8?B?dSsyVjlPL3htS1dRZFZMbjE2Vkg0aFJaV1BUWmllZ0Z0SmFFT3FJMHV6QWJC?=
 =?utf-8?B?dDlTbGlGcDVUU2M1UDlLR3JMejVzRUs0cnlJTVdVZUJkZ2lGbCtxMVhURUlT?=
 =?utf-8?B?OG1YL2FQcGdRWUVGVkV1S056TlFPY1JBQXA0dkY4Ync5K0RZYWdPUy83bEMx?=
 =?utf-8?B?MWhBS2xpVkRnREllUUxkaEhHVUFLVnRKSXhSeEZBdytZbFdncFRZQ3dNUHFh?=
 =?utf-8?B?Mjg3SjI5MFQ1YVpaUHg4Z1FOMFd1Q0poKzZFbm1HcytjNDhJcDlNUjB6OSt1?=
 =?utf-8?B?UHRqRSt4TzBxRjQzYVlNOXVuanZpMEg0MWdUMkovNmY4eG1pWi9kT0dTam53?=
 =?utf-8?B?QWc3Y2tDSHZaWjZyWFRyR0Q0VEI3aTZWNFBwZExUc2NYSW85Q2VaU0o0UmM1?=
 =?utf-8?B?V3FsdHlkSlB4QmNaQW8vNk1nWm90K1R4VkFEcEswazAyeG42Q0QrczZjYTVD?=
 =?utf-8?B?VTgrNUhVY215ak9ESXgrSnJ1QmZ3d3BtK0NNUWFBWVRjbEtid2hyZkYyMzh4?=
 =?utf-8?B?UDl5R0hoWDlIU08yTk9NQ0MvTzJNUkYzSml3RkJ3SzdYakd3TFVzMlNHYVhs?=
 =?utf-8?B?VWNwVm92TmRGLzE3VkxZVU1SNTBRSkl4SEhPYUZMOHFReFp5a3g5NHF0T0U5?=
 =?utf-8?B?d1RNU1ZvNG5JemZCUlA4aS9SRkFobnM5NzFaRWcvcjNDSFQ2SkRiUkZQdjFT?=
 =?utf-8?B?cmViSTBzZGFGaytRRTUyQjJUV1Q3MGdsenVwNTZ1b0NZSnREZ1dLVFNaMUc0?=
 =?utf-8?B?ZTRWbFNJckIwN2VQU2RjKzZxdWpkZHJSS0w4Ly9pSUdnbVhKdVNxekpQSHVl?=
 =?utf-8?B?MTFZTGZzRXVDbmw2RldXUUJTRjFtVURESmNQZzBYZHd3VVExNXJmT2ZSaFl5?=
 =?utf-8?B?MHRYaEVOb2RxVnlPM0tEck5RNUtROVBiZzZkcFNnSXdCVFdGWTJuckN2ZjVG?=
 =?utf-8?B?TitWWHlndi81Q0ZtYlgxTmFrbjc3OStZL1BoMUQ2ZEU1eUE4Vm81UUswcFMw?=
 =?utf-8?B?bXJJOE9ISktsOHF4U3lHbzJDdzZESFBwRjU2U2IzSUFOZDNGVzhrT05WWkYw?=
 =?utf-8?B?K0JCbURCK1JObGgydk9EeE5sWXF3T3MxVitJNUFYVVZCRFhDMWhGalhIQ1hQ?=
 =?utf-8?B?aWxKSXNEUkJveEFlRGw3R1doNzlLUDdncjNNY1JUeDd4RnJVNmJwU0ZmRTJw?=
 =?utf-8?B?bUx3RjNQSmxQU2RORlZOVEx6S3FpaW5NKzFMTmRBSy9tSnViUnQzb21xQmo3?=
 =?utf-8?B?RjBDajlPdnB6c1d0VlVoNmVuTnVjOThPYUJVTHBtd2JZN2NPY2Q2VGxEUDZ1?=
 =?utf-8?B?MWpzdTgveXgzalEwd05scWFER3JBUHRkWmFNbi9FSW8zTG5NaXFuNk9CMEFS?=
 =?utf-8?B?eDZMd0MxS0dLcGRrQ0RkNXJiR2g4dFd5ZXNHTVpodUFVSTRRazg0QVU5NVJM?=
 =?utf-8?B?Zk4zTlpFdEJkK0gvOVhjZkhFRXdsb3QyVGVwa3JXUHFDendnYmFWNy9rZzZ3?=
 =?utf-8?B?aHppNU1IT2hzanE0Qkk2VGpuMUFxUGZ1dmpDY2swT1d0dXM3VVN4Z3hnbGMr?=
 =?utf-8?B?SU9BRkI3ZllZaVhRTnZ0TVVpTkZURFJHZEVQdkpCemF4bUxmaWlBNDRpb2Z0?=
 =?utf-8?B?Y3dKSW5lcXBTdTNORTNwQT09?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR11MB7685.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dXJvaWJKdXR6ZnptUmxKVlBsZENjMFc1YmZoR0hkV000SVEvNkxaek1JUitW?=
 =?utf-8?B?V3lXK2RpSmZTVk05ZkZ6ckI2V2poRkVhYUxuQzQzancybGdHeU1jdDQxUXd0?=
 =?utf-8?B?RkJBbUJFdldHMHdHcjVZWktxSHRWOU1BL2x3aUhuV1pCdEc2ZXNKd3ZYRTN4?=
 =?utf-8?B?MEh0ZGRkRGtLNVVOMHo3MEFWUTZjYmU4MzlrakRvTUVPRE12eUM0b3l4eW5r?=
 =?utf-8?B?Wi91eGFmd1MzMENoV0tlQThzNmFKZGJtNlIrQWdueHRUM0JxeVNKbTBzbU5I?=
 =?utf-8?B?UVBpdFl3OVBnSUhQcmdyblB6bTlvczVUYVJrT1Q5bmtSb2o5Um80SUNEOGl4?=
 =?utf-8?B?NjlxLzRoTSt2YVMwclp6SGVzQUtTdXB1Z2czMndVdXVZbzZKSW4yOEl1OW8x?=
 =?utf-8?B?UEUwaTlwVUpqZHp4czRUbkVRbktiN1NCVzRDSzBtb0FKeHRzdnFjYlJLS1NG?=
 =?utf-8?B?dWlkWUhqR2FKcHJKUmZQSTErM1B1REJZKzdGanhKZTd6SzU0NlRka1ZHZ0o2?=
 =?utf-8?B?ZVU1MllieW02R1NWMUYwdGtQellOdzFOS2IzRzUzUG0wS0o2YU5OdGZ5NGRG?=
 =?utf-8?B?M2Z4K205U2dPbkJycHp4Mi9DdEUzdUVLYVAyemNCMnJMWmZLUVU4WmFNTC9m?=
 =?utf-8?B?L0tNeStrdWdIWWZlbk5uMENhWmp6dTdVYXBBUlBMNFlVRWdlbk1tVTcvekVC?=
 =?utf-8?B?SWNmak0rRzJFODZWdCtNVEpvc3RXNWIxVVdhYXM2M1dTZ1BsQ3dxNmJzSms3?=
 =?utf-8?B?aDg4UGxtSGczdWVVN0orNHBBK0QrQWdKTXlJazAxcGFaMWt2UUNxTnhtYmI3?=
 =?utf-8?B?S20yNHN0d0VRWHlDL3YwMDVGNElKZExsOGwwQk84Q2JKZ2Z5NEt6NEpFTkVt?=
 =?utf-8?B?VnpNTHhZbU9BQ0RPVTdGUzdDeDQrNXpuMFFUN0tSZTJaQXJjS0dvbXNCSnhu?=
 =?utf-8?B?emlQa1pnVWtUN0ZGQUJORitUSE5kbUEvOXREUWhFVHo5YVNyb3hBRkNhOGVo?=
 =?utf-8?B?d2RDVFVuS0lmR2RUc0F1c1B5Zmh6RldtazdmQlluejJPQTFqMXE5clAxYmJD?=
 =?utf-8?B?RjRxS3RhMm8wTjZLWGo5Z0t0WmJBdHhJTlNYSmlUdVpmWnFHRVdTeEFjUHpL?=
 =?utf-8?B?TTE2STZTczlhbE50Uy9HTFk1ZTdUbWJqYmxGems4cG5pTWREc0FPQXdJVDlR?=
 =?utf-8?B?ZVBoc3FyUmFtQlFyYXJRKzZieTNIUVhZcnZlTGxmK05CaGtIVWxvUWJEWFhS?=
 =?utf-8?B?dFRlMkJsNjR0dEMrV1dId2FSRmVRbzduK2l1eWZsL3dRL3laYnU1WS9XczM2?=
 =?utf-8?B?bVE1WHUxVHdTMHE4YmFTRG11WWdoMHh3K0pqd1pKSm0yQnZWaURxbXRISUVn?=
 =?utf-8?B?L2ZWWVNFWDUvYlNZaE9VUEJvQitGdlE2K0VHNUZEVFQzZXJwd2hCTDVnVVBX?=
 =?utf-8?B?eVdoeWs4QXFZVUpwR3Y5aC82WllqWW4wZVZNRU5jU2JhdHB4c29iQ2VzbFhw?=
 =?utf-8?B?V1dNbVZjdXgzNzViZjVRb1RZVW5SUEE4dGJnblg0dGpseHo3aW1wbGlDRU5N?=
 =?utf-8?B?OW1NQnFOZFJ3YnhvY2Q0OFhPRExYS3dpQXdTaW5haGFnZ3JBYzdDdnVNaXZP?=
 =?utf-8?B?RHNXVXpKUmxQZEh3NWhhSi83ZWNDWjFXUWRxclBMcVM0WTU2WEVSallsMHJk?=
 =?utf-8?B?QXJZZW94MHdVaFkrd0Y2ZlFHNlIrM2VreERYVUo2TXFUUXdWZEViVWYvVlRt?=
 =?utf-8?B?Z2JYVjlvWUpWRXRxaWpuU1ZUZUROa0h5VU15RXJCMW9qV3NUSk4wWkF2U2ZF?=
 =?utf-8?B?cXFhcFc1bTJxRGNCdjBOR21sNHdtYUZkRUZHYlNzemF2VitsbTQ5aGxEbkJX?=
 =?utf-8?B?NkxzZnI0RzdHRlRpbTFQa3dUcWYwWFk0aVVxK0RRVzh3Q0FrNjVGNk9CUGdU?=
 =?utf-8?B?NDE0WmFrWTNlM2xIZ0lvd0JSOTBGK0VVNVFzYzM4SmRCYmx2Nkw4RGpVbktl?=
 =?utf-8?B?ZEt6L05ZS3NOeUQ1dmVxWEc2eGhUdVBIZk1oWVliTFcrQzNzM2RJSU5NR0lP?=
 =?utf-8?B?SnhoSXVnaTViWDBrdzZTVlpwOFFOOXZoVEtmS0VmY2xtditNUnRla0xCSXFO?=
 =?utf-8?B?TTkzQzRsdlJLekdXdjNrYmJUZ21pYnh1aDdCZktTMU9QZHNkSi9TaE5XbXk0?=
 =?utf-8?B?L3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <52EC6AD25BA37049B8A77332A60892DB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7685.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee2ac0f7-d891-4ac3-7da1-08dc686f1174
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 17:09:02.3043
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m2j8eRx/Qk3p6IXhAdg+xX76eYJVstA3HPaYk9udojgzkuLKtEjvOpXZGa7fLneiVwjMps3T2w658ZWu4v2hpD2Sn9C5mZzf8pfDxZy98oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-Proofpoint-ORIG-GUID: 0rJA-xC1VGJtiWfZjvyJthYDnELI4O6m
X-Proofpoint-GUID: 0rJA-xC1VGJtiWfZjvyJthYDnELI4O6m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-29_14,2024-04-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=761
 clxscore=1011 mlxscore=0 spamscore=0 impostorscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404290110
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Apr 2024 17:09:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63012

T24gTW9uLCAyMDI0LTA0LTI5IGF0IDE3OjUzICswMTAwLCBSaWNoYXJkIFB1cmRpZSB3cm90ZToN
Cj4gQ0FVVElPTjogVGhpcyBlbWFpbCBjb21lcyBmcm9tIGEgbm9uIFdpbmQgUml2ZXIgZW1haWwg
YWNjb3VudCENCj4gRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNz
IHlvdSByZWNvZ25pemUgdGhlDQo+IHNlbmRlciBhbmQga25vdyB0aGUgY29udGVudCBpcyBzYWZl
Lg0KPiANCj4gT24gTW9uLCAyMDI0LTA0LTI5IGF0IDE2OjM3ICswMDAwLCBEYW50ZXIsIFJpY2hh
cmQgdmlhDQo+IGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+ID4gSSBrbm93IHRoZXJl
IGFyZSBob3N0IHBhY2thZ2VzIHdoaWNoIGFyZSByZXF1aXJlZCBpbiBvcmRlciB0byBidWlsZA0K
PiA+IFlvY3RvLCBidXQgYXJlIHRoZXJlIGFueSB0aGF0IGFyZSBmb3JiaWRkZW4/DQo+ID4gDQo+
ID4gRm9yIGV4YW1wbGUsIEkgaGF2ZSBlbmNvdW50ZXJlZCBhIGJ1aWxkIGlzc3VlIG9uIGEgUkhF
TCBob3N0LCBidXQNCj4gPiBvbmx5DQo+ID4gaWYgdGhlIGRheGN0bC1kZXZlbCBwYWNrYWdlIGlz
IGluc3RhbGxlZCBvbiB0aGF0IGhvc3QuIFdpdGhvdXQgaXQsDQo+ID4gdGhlDQo+ID4gYnVpbGQg
d29ya3MgZmluZS4NCj4gPiANCj4gPiBUaGUgZmFpbHVyZSBpcyBpbiBidWlsZGluZyBxZW11LCBz
ZWUgYmVsb3cuDQo+IA0KPiBxZW11LXN5c3RlbS1uYXRpdmUgaXMgYSBsaXR0bGUgc3BlY2lhbCBp
biB0aGF0IGl0IG5lZWRzIHRvIGludGVyZmFjZQ0KPiB0bw0KPiB0aGUgaG9zdCBncmFwaGljcyBz
byBpdCBoYXMgd2lkZXIgc2VhcmNoIHBhdGhzIHRoYW4gbW9zdCBwYWNrYWdlcy4NCj4gDQo+IFdl
IHRyeSB0byBleHBsaWNpdGx5IGRpc2FibGUgZGVwZW5kZW5jaWVzIHdlIGRvbid0IHVzZSBzbyB0
aGlzIHNvdW5kcw0KPiBsaWtlIHNvbWUgY29uZmlndXJhdGlvbiBmb3IgdGhpcyBvbmUgaXMgbWlz
c2luZy4NCg0KVGhhbmtzLCB3ZSB3aWxsIGludmVzdGlnYXRlIGZ1cnRoZXIuDQoNClJpY2gNCg0K
PiANCj4gQ2hlZXJzLA0KPiANCj4gUmljaGFyZA0KDQo=

