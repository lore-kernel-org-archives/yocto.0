Return-Path: <richard.danter@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7307CC4345F
	for <webhook@archiver.kernel.org>; Mon, 29 Apr 2024 16:37:29 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.26471.1714408647247214826
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Apr 2024 09:37:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=VcbkwCyP;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=5849404f1b=richard.danter@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43T4qYGk021999
	for <yocto@lists.yoctoproject.org>; Mon, 29 Apr 2024 16:37:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-type:content-id
	:content-transfer-encoding:mime-version; s=PPS06212021; bh=D7FZY
	S2YztdYyZmBRtsXVacdj53I0ZcYyeClOZc+WFM=; b=VcbkwCyP0mRrQKN/EVfy8
	InJgpD0LiwiyLW7VsUErwllLGBDEpMHdKAWvzLfTSFvhlgOkh7HjA8auW0xg96fE
	4EpHAoN8dSZg0dDD1cK2h7QD6voHLZX6kf9fdpFHBOhwo20u5g53QqIsyTDuq0OV
	ScXE1iwpxETFBhDVF8RLP9pgIIldkJ8gyFZqkSmRloaSafC4Er6270VRbdFyCCTM
	N2x8FIx6fnCKnGPphVJ7EAD/3yw85p3hC3NryGsdNRuu6p04PNw2oXKCERyZy6vm
	b3AtE/hbIZRRqUVyK2xKLuKlodIaIxfFhj86HUr1ozDjIiV0gkuEufDvdZxzg1n7
	g==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3xrpjxaa24-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 29 Apr 2024 16:37:26 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNLGyIMHQ3gzH9OY9ZkNdZrpMorxRIqhem6oX+Zv1F5QgcA+9/VkefB+SbKKUAFkpqZXOPGUN/AtlkliC2YDs4qHv7y1K0zGeLu9tN4YLuQmuQ5oHIqYQ0CdQGHhxOPuR2XHYPV6G3IAAo3RMPnfm8EOWdyoQSJAwaSE3ig53cG7KgqAQmY3/MSuZUjKn69mWg6Y4QwHQ0DBGP84kAcXBokD8tH849wI5j7i4OfJ8eSsxr9/wCucbv11Fzhdb+jKVxupav7G1sDVz/0hHQ8vnokYIO0z2VqZF9t4z0j8HsHmKgSJiVrrrMF/t7OtxctvurjG6nWg7dSVm9kEopb/zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7FZYS2YztdYyZmBRtsXVacdj53I0ZcYyeClOZc+WFM=;
 b=Yb+Aqa6oidc7Bj/4MNTI9GgiZpGFQ33ybc8qHWlkbxoxPn/44h4Nu1VT84ycqUVdmdzipf41MA9LzZDIZ6ZJgIfn9pvinYnusD4o9cIpq7uqzGImG4vV5i/If2a2yA7sa3Z8wh16wn4VNWfmXRQNAfU7AOHrfw6DeP8Mg9/SYTZE9RU1zHUxpyhtk30obvdn0oUTN/D1hZwImmydT/7QGG2qSEr46cn8Njb4J+RijxjOxRuxelSsanhfH1VJvK9SIYBP1cDbQ9mISMmcLPfiYwH8GqBj72wHgrDHLDaU59Fri+g+OFTtEp8rct25VV4uFXgsJ15ZxI8Rls5cMEx03g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CY8PR11MB7685.namprd11.prod.outlook.com (2603:10b6:930:73::17)
 by CH3PR11MB7844.namprd11.prod.outlook.com (2603:10b6:610:12a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 16:37:22 +0000
Received: from CY8PR11MB7685.namprd11.prod.outlook.com
 ([fe80::c131:5e1a:2a2f:e429]) by CY8PR11MB7685.namprd11.prod.outlook.com
 ([fe80::c131:5e1a:2a2f:e429%7]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 16:37:22 +0000
From: "Danter, Richard" <Richard.Danter@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Forbidden host packages?
Thread-Topic: Forbidden host packages?
Thread-Index: AQHamlOCZALFbpX0mUeWM+F5vSXzVQ==
Date: Mon, 29 Apr 2024 16:37:22 +0000
Message-ID: <eb057a01711559ff9b6afc949bdebe9636a311c2.camel@windriver.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7685:EE_|CH3PR11MB7844:EE_
x-ms-office365-filtering-correlation-id: bba939a1-e4e4-4e62-8619-08dc686aa4e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: 
 =?utf-8?B?b1VRZ0V0WXQ4WVJNa1VFNStsSU1Vb01jckt6dXR2cm1hOEhyWEJRWms3RFBM?=
 =?utf-8?B?NjAzQTJDQStQa0tIWmhUOGlJM2p2M2xHTGlBbDB0OWV5akRabEYyUlpObDlM?=
 =?utf-8?B?Z21HdkJYQjdkZ1BkcEZCQ2tNU3krM2pHNGNyMnlLVk5FZWJvVGxpYmoyMDlt?=
 =?utf-8?B?N1RndEtEN3FrOFRzblVKZENXbEI2RXZVUDFHdTgzQURuZmxWRGlQMDdyaDU1?=
 =?utf-8?B?dUs4WDMzeFd1d2JxSGdxSk40OXgvQ0hEbitNZGNoTldzSGZuQ3VvVmxnZ0pG?=
 =?utf-8?B?aEFIWlFSc1gxbHA3aUVUZEp2enI4NFFVVS90d2w3Z05UaUVIeDYxMHcvbXhG?=
 =?utf-8?B?VDhhcW9vWGYxZVhDTDJnK0pUNzlNKzcyK0I2eWVodUNZbnAxRG5HNmZkM2ln?=
 =?utf-8?B?LzA2SDR2SmlHSVFSbkM3cVFzeVJUT1BzRmJGUWpEVG82TmFsaVA0NzNPSlhY?=
 =?utf-8?B?OEpHUTdJMGdiT08vV1BYUXVMTHZKbWN5YlFoMW5VYTVlSmIxMHRvKzFnWWR5?=
 =?utf-8?B?QTB4bEFvTlczYjlkbVArQ2dabXJzcERESzNrU2JIN21WOXlEVUdycytpeUF2?=
 =?utf-8?B?UENpekN0a09XdGFlNHB2NDM4cmpvZ29VQVA4YzA3T0YrRWJFemRrcnpuejhZ?=
 =?utf-8?B?Q043VVQxTUt6WUdscDhmM1dYc0ozVGVoeXhDK005U0pSRE51dTROcU55bXUw?=
 =?utf-8?B?aE5iQmhDQmovd0t1alNvajNPaDRNUU5Cd0JhNmcyQzkrUUVqZERTSjRQUkFR?=
 =?utf-8?B?SXRSbC9MbmdTUFVNZmhWakptRk05UUJtdlFTV0pmTVk1ZitBODdRbDFzVG5x?=
 =?utf-8?B?dWNCSkpHZWNtenlvbjdqOThIbGswU2lpSTdybU9OdlFjQUFuOG56ZVdhYTBN?=
 =?utf-8?B?OWJneUhQWTFkcTcrL2JyUjlvRlJUbGRRNDNsYXNhQTFWVGw1WlRjdHlrSjNt?=
 =?utf-8?B?cEhGRkxqOG9mc0s1NFJ5eDRvQ0ZLQ3ZuTkF0ZjZoQWtaUEI2NHJXL0dhT1NX?=
 =?utf-8?B?VlJuUThDdkVHbVVVZ0pRRC92Z3g2NWFwWjhXbm8zWUNOQzZXUjU5S1hBdG93?=
 =?utf-8?B?RWl2TXpYM2hyRUxTazU1NldId3ZzaVVCbEdydXNzQ0c1WDY3WUtNM0RmcDBa?=
 =?utf-8?B?VDIzNmZrUDFxVmtFa0tNYUdBNllCems5U08rSWFuWDUxRWFuWGdOaVQzOE9B?=
 =?utf-8?B?Z1UzamZoSnNXaEdvc1RwSFNOcWZGb3c3NnJCM25DdU4vOHZQbTMyOVE0VmR3?=
 =?utf-8?B?NkN3Ymw5MHFnQzJEd0owTW1NSHh4T1ZlYXJPZ2FjMTFWMC9zc2dHSUx5OEY5?=
 =?utf-8?B?TDFkazFQQzFEMlorT0hvK0pSVU12RldnODVNOUlIRkVhL1RJTldPOXRJYW5n?=
 =?utf-8?B?SEFnMGNiVVJ1NWJqOG1ZSUZlU0FEUXU4Q0l6VTFmNjlnbnFheHV1bnJqbFN1?=
 =?utf-8?B?bmdoSkl6R0xxVThDdlB3K2pZTkppamZ2d3JLZlgzQldoanBidDFEZ2tlTzRz?=
 =?utf-8?B?Nmk1RGFrb1R4elN4ZDE3ZkpGL2xuS3JWKzBobUxKdEkxbmxDcHdNd1VNeXZB?=
 =?utf-8?B?dkhoaElzRWRlamx5N1EzM25PT1hYZHpTUHhETWtEaEh2SFBjTUt1M2JoZy9Q?=
 =?utf-8?B?YndjRXVoSlgwWWRkSTdrTE1rcnJBdzc4dUFyc3IyckxjbDNEanoyQjc2bm9s?=
 =?utf-8?B?Z0ZtN0NSRXRDdmhJMTd0TWltYmQ2ZmR3Yytxb3Y4N0wrS3RVR2lvR1JjaGFH?=
 =?utf-8?B?Z0ExVUxNZDRQcDBvOHhsNWpHSTRMTUcwQ25RYXVibTA4Mkw1Z1VKa2I0NHRW?=
 =?utf-8?B?MzhaRGNjM3RiMGRZNkk2UT09?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR11MB7685.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VUNpNlhNZ2xTUzcxNnZqTTNvVksxNExyR2N5N0ZJbU5rNVdHeFNTZVkzSGNy?=
 =?utf-8?B?RmtkckpteGZKRDE0RFErVldNNm5RREUwanlyTEpGRzVUQ3ZxUFpEbmxRalJq?=
 =?utf-8?B?cDg4cGkwa0JxWWNqZFl0cFFxNUgyUmxvd0hrU2pjOEs3N2pxa0N5bXErUHpj?=
 =?utf-8?B?MlBRdXFsLzB3MnhFS2kxTHdKWm85ejIzQ0dLbFNzY0FwMGUxNXVFcDVBTlNM?=
 =?utf-8?B?ZTQvblpCRkUrMmZ2WnpZcVFXT0FBTWtwVUtIUkFOaEdQOXY4eEY4VzExbnFh?=
 =?utf-8?B?aEJ2VURPQXZWR2Vsb2xlcHl0RzMrbHA5U0dzeGhoSUtrQjlucXU3ZGJObFdD?=
 =?utf-8?B?RWpsT29oOElRV3VBZGluUTB4MUd5YjZmVERQQWIxTDVReVdtSnlPNmFOMzhQ?=
 =?utf-8?B?NGJhcUdNTmJaVDEyQUNGOW0wM1hiVVJVSEZXR2Z2WFZPblFkR3J2dUlBSkNu?=
 =?utf-8?B?WEhQRStWY1RrRTFFM0l3dE9YVVorZHF5aURxRlUyeHFZd0JKbFpaM3pmbmUy?=
 =?utf-8?B?VW9mdzZ4TW9XaEZ5Ylo1UC8zbWZFRjBKKzBtZkgwR1Rtc3huemk3T2hzeGFM?=
 =?utf-8?B?SG5WN1pFRXlWK1E3TzYrRUNoVm0rc1NKS1ZydFY2VGd4Q25ybFBjWXdUV1V1?=
 =?utf-8?B?Q1dnY3lBK3VpK0hwM1lyRjNLT0xYOTN6Vit2ODZwejRXRUJiQ2V0bE9IMDNx?=
 =?utf-8?B?Ly9GQXd2b2N1cU1kQ3VJYi9aaVBsNjFGNFVlVHk1NzN6UmdTQ05VTXlHcVpt?=
 =?utf-8?B?bWx0OVhkMUlueXJnTm5LMmxwR1ErbHJCRWsxK1JkOHZJS3RZejN6R0ZwWkVz?=
 =?utf-8?B?RlJKZWpERzM4SEhmUEdhZTloSzNMTDBSc3pJUHdvZHVhaUZQa2lTb2JJZUNK?=
 =?utf-8?B?c3ZFNFlIOE5nOWVNdDNocHp2T0xrNDJVOGFSMGZnS09oSks3dUlwVWpXYjZB?=
 =?utf-8?B?bk1DN291aTJrdGYvUjB0WURiZ1h3dlNiS3MxYzhvdjZjbDVHQTcxWlRtQndz?=
 =?utf-8?B?WU9YREl5M25FZUdVRUhpS1lmMDlLVi82U04wSmRnclBPVlNhd0l6QnRSanNW?=
 =?utf-8?B?a2lrcG1ZTGI0d3ptOHh6cVZ3Vm1BOVZyMk1PTjRDRWJHTXB5STlpSWxFWFRJ?=
 =?utf-8?B?Y3BEMGIvVkc5VGpjcEhsbWF4TFVmY0RnbDA1eHZtMU4vZVhsY09wSElFL1Fo?=
 =?utf-8?B?bzNCaDY4N2dDNVdia2RXamNIbXZrZ3RuNXRYREtzaGlEaUJsbDhhTW9FK0E3?=
 =?utf-8?B?M0c2RGt0RnlKQkM1RFo4YVBQemorOWN1QjFmSEYzWnYvUlBQeU5RbmxaZzEr?=
 =?utf-8?B?TE1HZVEyMHhPakxzVnZlU3JnRGJralpWWnUzRGVqVlVQSHdjdnpEUGJQcXU5?=
 =?utf-8?B?ZDRDenhLMHVnUlBPU0l6emt0OEVla0kwUmdMOWFpajFPZEFlNXJackxSckdR?=
 =?utf-8?B?SWVVVWtDQVBLMEVCR1RQNEVuTGRLcmt5NWFmUEdHcTVSMGlYTVlxTGZxanNw?=
 =?utf-8?B?Zm5DdkVMZnJVOVptdjJ1UDhaeDRieVpaeDhLa3kybE1zUThidGJZSG9mMm9p?=
 =?utf-8?B?bVBwOTJ3UENMZytuQTBaMm4rQ25YUlR1RUZKOEVFdTQ5L1h0U1E1dE10dHJo?=
 =?utf-8?B?K0VZWll2dk16SkwrUXU5ZFUrQVkrZW51SWRPYjhKM0hDamRESmQrbnY0T001?=
 =?utf-8?B?Yldhb1NSN2pPdTZXRkJmb0tkeW5FWXBaZ3ZYemRZek9mcW1lNDZlc3dGNUJ0?=
 =?utf-8?B?cjNpQ2RhZ3ZmSGVZMWRDNDFJMnhiWjdoQWZSRzQ4MGg2LzBtTjVrUlVvRlll?=
 =?utf-8?B?Q1VtMk1jcEt3Z3dxcVlISkZ6YnlDUlF3NE5mVjRlc1BQK2RHVVZmdXFDRDNI?=
 =?utf-8?B?NjVDRG5WNDlXMk9OTmFFdWtjakNWNDR4T2VPRjRHNmtkeEluZE02dnhRRWNl?=
 =?utf-8?B?aUgxNzNHVEl0ZWE3Zkd0QldyNHhPZHAvWGZkQ1BVTFpOODBQOVp2M0JYcG9z?=
 =?utf-8?B?WENzaVB4WldEd1YyOFlXZnVzRnI5Lzc5WGYrMzdMYUFOWTM1RzUyU08yMVF1?=
 =?utf-8?B?eW1OM1N2ZmxZMS9MR2pwVm9icUt2UmhrbG1ZVVFYciszWlZONXNPNEl0UXMv?=
 =?utf-8?B?d2JaWlV2T25adVdmVkdFZ2I4MGtEZWc4cjVoRUd4MkV5R3pySmRlcW84Lzlk?=
 =?utf-8?B?Rmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0025E1A746C4245B171B1C13165B597@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7685.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bba939a1-e4e4-4e62-8619-08dc686aa4e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 16:37:22.1645
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zZg4SsXxwIDIeToS8vXBUB7+4TS2UTHudeFAB6nf9ak6NHui91H094+33lvYE0CGjvOCnbFzGG8rH+YpNR3eQXko9CLFS/bOn02DEvPLv3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7844
X-Proofpoint-ORIG-GUID: SqwcSRQHpbPQIBXyCJulJ8RFYKjQXOSb
X-Proofpoint-GUID: SqwcSRQHpbPQIBXyCJulJ8RFYKjQXOSb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-29_14,2024-04-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=617
 clxscore=1011 mlxscore=0 spamscore=0 impostorscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404290107
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Apr 2024 16:37:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63010

SGkgYWxsLA0KDQpJIGtub3cgdGhlcmUgYXJlIGhvc3QgcGFja2FnZXMgd2hpY2ggYXJlIHJlcXVp
cmVkIGluIG9yZGVyIHRvIGJ1aWxkDQpZb2N0bywgYnV0IGFyZSB0aGVyZSBhbnkgdGhhdCBhcmUg
Zm9yYmlkZGVuPw0KDQpGb3IgZXhhbXBsZSwgSSBoYXZlIGVuY291bnRlcmVkIGEgYnVpbGQgaXNz
dWUgb24gYSBSSEVMIGhvc3QsIGJ1dCBvbmx5DQppZiB0aGUgZGF4Y3RsLWRldmVsIHBhY2thZ2Ug
aXMgaW5zdGFsbGVkIG9uIHRoYXQgaG9zdC4gV2l0aG91dCBpdCwgdGhlDQpidWlsZCB3b3JrcyBm
aW5lLg0KDQpUaGUgZmFpbHVyZSBpcyBpbiBidWlsZGluZyBxZW11LCBzZWUgYmVsb3cuDQoNClRo
YW5rcw0KUmljaA0KDQoNCnwgWzI0OTQvNTUxMl0gQ29tcGlsaW5nIEMgb2JqZWN0IGxpYnFlbXUt
YXJtLQ0Kc29mdG1tdS5mYS5wL3NvZnRtbXVfcGh5c21lbS5jLm8NCnwgRkFJTEVEOiBsaWJxZW11
LWFybS1zb2Z0bW11LmZhLnAvc29mdG1tdV9waHlzbWVtLmMubw0KfCBnY2MgLW02NCAtbWN4MTYg
LUlsaWJxZW11LWFybS1zb2Z0bW11LmZhLnAgLUkuIC1JLi4vcWVtdS03LjIuMCAtDQpJdGFyZ2V0
L2FybSAtSS4uL3FlbXUtNy4yLjAvdGFyZ2V0L2FybSAtSXFhcGkgLUl0cmFjZSAtSXVpIC1JdWkv
c2hhZGVyDQotSS93b3JrL2RheGN0bC1pc3N1ZS13aXRoaG9zdGxpYi9idWlsZC90bXAtZ2xpYmMv
d29yay94ODZfNjQtDQpsaW51eC9xZW11LXN5c3RlbS1uYXRpdmUvNy4yLjAtcjAvcmVjaXBlLXN5
c3Jvb3QtDQpuYXRpdmUvdXNyL2xpYi9wa2djb25maWcvLi4vLi4vLi4vdXNyL2luY2x1ZGUgLUkv
d29yay9kYXhjdGwtaXNzdWUtDQp3aXRoaG9zdGxpYi9idWlsZC90bXAtZ2xpYmMvd29yay94ODZf
NjQtbGludXgvcWVtdS1zeXN0ZW0tbmF0aXZlLzcuMi4wLQ0KcjAvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlL3Vzci9saWIvcGtnY29uZmlnLy4uLy4uLy4uL3Vzci9pbmNsdWRlL3BpeG1hbi0NCjEgLUkv
d29yay9kYXhjdGwtaXNzdWUtd2l0aGhvc3RsaWIvYnVpbGQvdG1wLWdsaWJjL3dvcmsveDg2XzY0
LQ0KbGludXgvcWVtdS1zeXN0ZW0tbmF0aXZlLzcuMi4wLXIwL3JlY2lwZS1zeXNyb290LQ0KbmF0
aXZlL3Vzci9saWIvcGtnY29uZmlnLy4uLy4uLy4uL3Vzci9pbmNsdWRlL2dsaWItMi4wIC1JL3dv
cmsvZGF4Y3RsLQ0KaXNzdWUtd2l0aGhvc3RsaWIvYnVpbGQvdG1wLWdsaWJjL3dvcmsveDg2XzY0
LWxpbnV4L3FlbXUtc3lzdGVtLQ0KbmF0aXZlLzcuMi4wLXIwL3JlY2lwZS1zeXNyb290LQ0KbmF0
aXZlL3Vzci9saWIvcGtnY29uZmlnLy4uLy4uLy4uL3Vzci9saWIvZ2xpYi0yLjAvaW5jbHVkZSAt
DQpmZGlhZ25vc3RpY3MtY29sb3I9YXV0byAtV2FsbCAtV2ludmFsaWQtcGNoIC1zdGQ9Z251MTEg
LU8yIC1nIC1pc3lzdGVtDQovd29yay9kYXhjdGwtaXNzdWUtd2l0aGhvc3RsaWIvYnVpbGQvdG1w
LWdsaWJjL3dvcmsveDg2XzY0LWxpbnV4L3FlbXUtDQpzeXN0ZW0tbmF0aXZlLzcuMi4wLXIwL3Fl
bXUtNy4yLjAvbGludXgtaGVhZGVycyAtaXN5c3RlbSBsaW51eC1oZWFkZXJzDQotaXF1b3RlIC4g
LWlxdW90ZSAvd29yay9kYXhjdGwtaXNzdWUtd2l0aGhvc3RsaWIvYnVpbGQvdG1wLQ0KZ2xpYmMv
d29yay94ODZfNjQtbGludXgvcWVtdS1zeXN0ZW0tbmF0aXZlLzcuMi4wLXIwL3FlbXUtNy4yLjAg
LWlxdW90ZQ0KL3dvcmsvZGF4Y3RsLWlzc3VlLXdpdGhob3N0bGliL2J1aWxkL3RtcC1nbGliYy93
b3JrL3g4Nl82NC1saW51eC9xZW11LQ0Kc3lzdGVtLW5hdGl2ZS83LjIuMC1yMC9xZW11LTcuMi4w
L2luY2x1ZGUgLWlxdW90ZSAvd29yay9kYXhjdGwtaXNzdWUtDQp3aXRoaG9zdGxpYi9idWlsZC90
bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgvcWVtdS1zeXN0ZW0tbmF0aXZlLzcuMi4wLQ0KcjAv
cWVtdS03LjIuMC90Y2cvaTM4NiAtcHRocmVhZCAtVV9GT1JUSUZZX1NPVVJDRSAtRF9GT1JUSUZZ
X1NPVVJDRT0yIC0NCkRfR05VX1NPVVJDRSAtRF9GSUxFX09GRlNFVF9CSVRTPTY0IC1EX0xBUkdF
RklMRV9TT1VSQ0UgLVdzdHJpY3QtDQpwcm90b3R5cGVzIC1XcmVkdW5kYW50LWRlY2xzIC1XdW5k
ZWYgLVd3cml0ZS1zdHJpbmdzIC1XbWlzc2luZy0NCnByb3RvdHlwZXMgLWZuby1zdHJpY3QtYWxp
YXNpbmcgLWZuby1jb21tb24gLWZ3cmFwdiAtV29sZC1zdHlsZS0NCmRlY2xhcmF0aW9uIC1Xb2xk
LXN0eWxlLWRlZmluaXRpb24gLVd0eXBlLWxpbWl0cyAtV2Zvcm1hdC1zZWN1cml0eSAtDQpXZm9y
bWF0LXkyayAtV2luaXQtc2VsZiAtV2lnbm9yZWQtcXVhbGlmaWVycyAtV2VtcHR5LWJvZHkgLVdu
ZXN0ZWQtDQpleHRlcm5zIC1XZW5kaWYtbGFiZWxzIC1XZXhwYW5zaW9uLXRvLWRlZmluZWQgLVdp
bXBsaWNpdC1mYWxsdGhyb3VnaD0yDQotV25vLW1pc3NpbmctaW5jbHVkZS1kaXJzIC1Xbm8tc2hp
ZnQtbmVnYXRpdmUtdmFsdWUgLVduby1wc2FiaSAtZnN0YWNrLQ0KcHJvdGVjdG9yLXN0cm9uZyAt
TzIgLXBpcGUgLWlzeXN0ZW0vd29yay9kYXhjdGwtaXNzdWUtDQp3aXRoaG9zdGxpYi9idWlsZC90
bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgvcWVtdS1zeXN0ZW0tbmF0aXZlLzcuMi4wLQ0KcjAv
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9pbmNsdWRlIC1PMiAtZlBJRSAtaXN5c3RlbS4uL3Fl
bXUtDQo3LjIuMC9saW51eC1oZWFkZXJzIC1pc3lzdGVtbGludXgtaGVhZGVycyAtRE5FRURfQ1BV
X0ggJy0NCkRDT05GSUdfVEFSR0VUPSJhcm0tc29mdG1tdS1jb25maWctdGFyZ2V0LmgiJyAnLURD
T05GSUdfREVWSUNFUz0iYXJtLQ0Kc29mdG1tdS1jb25maWctZGV2aWNlcy5oIicgLU1EIC1NUSBs
aWJxZW11LWFybS0NCnNvZnRtbXUuZmEucC9zb2Z0bW11X3BoeXNtZW0uYy5vIC1NRiBsaWJxZW11
LWFybS0NCnNvZnRtbXUuZmEucC9zb2Z0bW11X3BoeXNtZW0uYy5vLmQgLW8gbGlicWVtdS1hcm0t
DQpzb2Z0bW11LmZhLnAvc29mdG1tdV9waHlzbWVtLmMubyAtYyAuLi9xZW11LTcuMi4wL3NvZnRt
bXUvcGh5c21lbS5jDQp8IC4uL3FlbXUtNy4yLjAvc29mdG1tdS9waHlzbWVtLmM6Nzk6MTA6IGZh
dGFsIGVycm9yOg0KZGF4Y3RsL2xpYmRheGN0bC5oOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
DQp8ICAgIDc5IHwgI2luY2x1ZGUgPGRheGN0bC9saWJkYXhjdGwuaD4NCnwgICAgICAgfCAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fg0KfCBjb21waWxhdGlvbiB0ZXJtaW5hdGVkLg0KDQo=

