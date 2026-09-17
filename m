Return-Path: <Priyadarshini.Babu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95847C982D2
	for <webhook@archiver.kernel.org>; Thu, 17 Sep 2026 21:26:33 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.720.1789680386196576871
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2026 14:26:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=Ip6FFh7D;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3720f51478=priyadarshini.babu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68HLHrwG1161821
	for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 21:26:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=Hxdd9AiEVIVjrKfliujiXN
	m7vIJ7HH92ezFaFaLMISs=; b=Ip6FFh7DIieGiwTmUnh54IEtERNp8p1gziVXoL
	2nRQojWy8WGZ0M3NibNpoeu6cdvdmuZdbONOydQqrnM+9LWaYsRbVHtNkSjeCaht
	FVXahXsS3KettV2J8BhMmjxY1Jgvo0XrJXc0kP8cG6Rl0fpFaVj2QghgJgUkFJfh
	E18LWxW/no/p85dedX8hIsv4WvLx5oPQECRM3/WCr0sDZFWCQiQh5238sK9pghWd
	zBPGt+zysJ0zEm0WUCrSspUtVi1i+wDSYEghBGsdmHT8fhFPL7Kpki8I/MtptExN
	0kvj3qdHAlBiU3HSjD4WYXVCKHtIkrjecY+u6GwrCIUg+ysg==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11023113.outbound.protection.outlook.com [40.93.196.113])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4gqc1nn5rn-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 21:26:24 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4X7bMTALfhqtqWEIZo1F41OL9hu24dWIqXWJmzwiWerjziNx1f4SYB130/Vgfe0Gpucn50iMbIGFuos1GkJl/xiDFpSbhqRvFM9/kXYgiw7+843tIthYnMTOFzHfSr9s51XmbdygKrwpPfIkOFMZJp8KbYfYV+SxwBr9p5oe3kApcygJyoQDKsN56AlAE3CEpABITqwOsTUsbETVscG+k3HF0MMxtoXa3vTAaE1AuJzdGNKiO56IwnEbBiFpb1/3rcHlFbzXmz/afSqjWKBpoyc+Ch/5DJMjyxZww5bZHIBFi+N+2LMmuFM9TykRTK14mZdNJ9A3HjNYq3/Iq78WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hxdd9AiEVIVjrKfliujiXNm7vIJ7HH92ezFaFaLMISs=;
 b=SuAhPW1iUr9i06N6OZP028JcdHTMWIoU5YKSVc8YFiewq3X4gKV9991/EXo6znuyJtcdBRN6igKOOodB+VdqGPmFQeEldpHSrYgYL9tdF3lHa80LO6Bt0ss7ZUoyLpMMFJtX4bUrejkckMuAWAnHbReob3Fp5ul/HlOnSYZXB8B3/TwEnAm9eV+N6O6WRaKs/QW+Vsw9EgIySBGQHF6C/3BM7UQFAsl5TyQ+htMKeMTFyvmsw5ZCCvfjzCnUjtwRgDAayQvTZ2XhTBwlhO+um0cLAyul6I2JCmdRe2p7KfvXmnt8QQbu1lMLmrCWcbNZvifvl8ksL+e3G64QYXnzlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8520.namprd11.prod.outlook.com (2603:10b6:610:1af::11)
 by DS0PR11MB6400.namprd11.prod.outlook.com (2603:10b6:8:c7::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.428.12; Thu, 17 Sep 2026 21:26:21 +0000
Received: from CH3PR11MB8520.namprd11.prod.outlook.com
 ([fe80::65f6:1d93:a783:d398]) by CH3PR11MB8520.namprd11.prod.outlook.com
 ([fe80::65f6:1d93:a783:d398%4]) with mapi id 15.21.0428.011; Thu, 17 Sep 2026
 21:26:20 +0000
From: "Babu, Priyadarshini" <Priyadarshini.Babu@windriver.com>
To: "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "J, Sandeep"
	<Sandeep.J@windriver.com>
Subject: Re: [yocto] [meta-anaconda][PATCH] README: update source code URL to
 valid HTTPS link
Thread-Topic: [yocto] [meta-anaconda][PATCH] README: update source code URL to
 valid HTTPS link
Thread-Index: AQHdRetc0ZZXDHdjT0OOufDV6+r3U7bTSla6
Date: Thu, 17 Sep 2026 21:26:20 +0000
Message-ID: 
 <CH3PR11MB852010CEB2DCC77197C33FBF90B82@CH3PR11MB8520.namprd11.prod.outlook.com>
References: <20260624065958.1549176-1-Sandeep.J@windriver.com>
 <871943.1784710828590231126@lists.yoctoproject.org>
 <c5f78b6f-fe01-4b3a-a4c3-4c1b6bba53cc@windriver.com>
In-Reply-To: <c5f78b6f-fe01-4b3a-a4c3-4c1b6bba53cc@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_3ea094ce-8c76-406f-84c8-0af1663f74b7_Enabled=True;MSIP_Label_3ea094ce-8c76-406f-84c8-0af1663f74b7_SiteId=8ddb2873-a1ad-4a18-ae4e-4644631433be;MSIP_Label_3ea094ce-8c76-406f-84c8-0af1663f74b7_SetDate=2026-09-17T21:26:20.180Z;MSIP_Label_3ea094ce-8c76-406f-84c8-0af1663f74b7_Name=INTERNAL;MSIP_Label_3ea094ce-8c76-406f-84c8-0af1663f74b7_ContentBits=1;MSIP_Label_3ea094ce-8c76-406f-84c8-0af1663f74b7_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8520:EE_|DS0PR11MB6400:EE_
x-ms-office365-filtering-correlation-id: e3336f90-940f-4175-01de-08df15025155
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|23010399003|4022899009|38070700021|56012099006|4143699003|11063799006|10067099003|18002099003|22082099003|8096899003|13003099007;
x-microsoft-antispam-message-info: 
 DyiEBrqcR4aHtTahmg6fG2luujgfwNWtlT4aBr1cZkOsziG80tIlSSqm1tFkxp1Tt3dT/RvruSW8gJ2FrQ5r6vSCHlDcAGHp4AeZBkzh6zf/hMxPFIo/AWrGzS+olQeRutKN5ZxGDcCBoCjP+qD3hEc0tcjbuhze9TmcM61aKrT3C4tV4oqtiprNoINXMvooe+d+jzUS4ckheUGC2Lg2QHuCty14eZ5M9RfUbHJSGxxRf88RFSqNqbJoVGdEWUVPgiD1gB5T8MphkgIkVJqMRSQqHqyHWUAWAGIiFWJ6/dD8KcHyDgDbcoqbe+PjlMg6qP9X79uQrRNWki/6+Mrtp70dMZfyQQWifDnWQqJHd/oxBOOffHMwXccBbyZ170eId4FHP0VqnAs1gR5BVZIg79+mshsm72/YKeht6q7UxRVX2YwQBJ55H6kKWBQsoe8yhgaOSxGeD8HJsr4+zYZKtnSG06MyY2zg0gmKZusBhD+NoZYsyaeWzeM9sjMEwADA7+hDxk6gnYZjcqdizRkR8CqC5pzcPjavkPB/atfhtfpcCATLY2W3zAUelyqa2rZAtRE/GV4f7xT7xtEI+JG43Fd2NM7Reg+G3XOmCNgaGQC2SpUp+HvqvwTstP89SBy5MmvMXp+bXX+bJGkOJ4IiuRIZpOWOXISNocQtqz4ebJ4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8520.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(4022899009)(38070700021)(56012099006)(4143699003)(11063799006)(10067099003)(18002099003)(22082099003)(8096899003)(13003099007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?jCXEkdLzPSJTe6ohUQEy1FV7Dy61bo181DS/VXNQYmTDWzuiflVITJQIprhI?=
 =?us-ascii?Q?wRyWJUhdQHYn1X6BSe/3XBlNqgoI63ZVqsznXUe94VNPwNBA3s8oKfALtQio?=
 =?us-ascii?Q?CNyrqKe6B9ssObUyO6PNIguhM3cdJchxB8bZY2SQY5E54dndns52yTBjCF7F?=
 =?us-ascii?Q?LHrgbrUt7sbxsvCfCVlU+QNNrYm+SaAI3zbaRSQzKApOePL0AgwXQz1qumDN?=
 =?us-ascii?Q?FyISvYWFEyGyYEzh3r2HIMyZKtiNQRKJ+4Zo12mG+0/RhCaV19BGidkd/LAC?=
 =?us-ascii?Q?NGAtb1ZJOO6vMmlwxJapdbQJLd012v7eb8C+z/LXAiSlEnahn4+c1q1BRbgR?=
 =?us-ascii?Q?fp860m8wMGyIIifROCAwa9dM9tuArKLSQzHRcBraJLvTavhZqOLdV3I8vb69?=
 =?us-ascii?Q?dxg8wWehqoKY0DPFlDPKVlakm6O0f0O96jZGBf3/rEheNhrnxMzfEZtKnS6o?=
 =?us-ascii?Q?cyRdQlgyMcUZ/8/IYyviR2P3suUJIPR5gTe/Aj16X3GyFQQ2uF1y4n3TzAw5?=
 =?us-ascii?Q?8uFAaYAdBt/ogoDWqXqJpFCh2+TDvUEYyY/kzJQTXpVz1cNeoC7R5jfYNzji?=
 =?us-ascii?Q?flejgXLG6mnQR3G65e/dK8EiZDsWCcur0tfHUTCrXJaLVSFx2gvuv4s6cLne?=
 =?us-ascii?Q?QLpTNGEFKRhLes06fMxR+0WIeDW0NJmEpur5jnkRKT9X+0IJ9C2t4NTMXORn?=
 =?us-ascii?Q?D2yonwPytPMAqtndQKO6WWj+1LpjoBisHWopLKlubNHygAOOhBVmyqEyPNfx?=
 =?us-ascii?Q?oHodLhZ7pCqCnzk3YX8HbJMAJ9t/GzVyXE20P8Z3nEs2tr3viFdxdDD36sJ5?=
 =?us-ascii?Q?PEp/OTobBP0VFQBZmyXn7dauYdUx29+vaLNYj99aFAa2t9hWM0iaXKbdhM9v?=
 =?us-ascii?Q?QkCPvgdxFIXSUV0TOVr2n4aFT1AQ5T21w9ZrGT2ruJlwdbnYIKWJE/6UJC11?=
 =?us-ascii?Q?vtQdVGVkQdQ48qZg+z6eHCQQ3U9F3dJ+Q/R+do6VmmKlt3jLjeVk8MaUdL7S?=
 =?us-ascii?Q?SGx6luPF0gG3wTZTEkBf8b+gUIYbEOm45pOnBgwMBi+P3cPDtxmpLc3WYzMe?=
 =?us-ascii?Q?+FgwBsN78ge+74gXkqmNRU70c8vWYY6FpJ1w3mKXuul1axNoeuyhKfcWr0JJ?=
 =?us-ascii?Q?M1w6FJhdFj2Brb053GglPoNtslneEU6ZKT/GrIAM5tKGbqPNYlUlcVrQsVED?=
 =?us-ascii?Q?/oxZI9ZbrOftU4j0j6KtHDv5XpwpNR6dqVTOTP/Nqm6FZBaZHWpCQdaf9qoF?=
 =?us-ascii?Q?7kAKNq/FEA6+armmpNriTIpHq2i3gr8782Km2UA5KK5KIu/ks1NsgU89ppxR?=
 =?us-ascii?Q?4k9ujz5QUXM0ZgRUsxvkK5x86n+8ASDHQouJKAghiqWrc0Cku/ilhMKm9ZiF?=
 =?us-ascii?Q?gW3ak78P0RqoN8vGLooV1ipuA0g+pf9YO+V9BJv8vlom28obIseppTXHQYHh?=
 =?us-ascii?Q?CmXU8gsy3NjVzfK8U07mV9Pu0qyOV0NDG9PBBcylygBztFEOmwhw2aYCTVfT?=
 =?us-ascii?Q?WwweNPJGrNQcAY705s822CkB05XHG33BnDxa5ZEIKTLI4zMYFLjp6EvVFsoN?=
 =?us-ascii?Q?Tyo1FIw1gfqqpyf+fsmKH6gQAI+68xVPQXKJh4NVI8B2yaAW1/KIH4+K3SnE?=
 =?us-ascii?Q?b+9FqVCrV5PkQuS02tAPkpklgxmnQQTkR5fCP5/ZoijCnGbr07OgjruCEDTD?=
 =?us-ascii?Q?AzjWHAeng2M1NO/IyXMbpPmTqp0F9jt5X3Ry4EjA98A/1kcrILK2ZSdjWOCk?=
 =?us-ascii?Q?+esNEmXh+CtERd5Oa6EiASO9LR1b6Nc=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB852010CEB2DCC77197C33FBF90B82CH3PR11MB8520namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	lGsECrMwlIBLJTygr2uhqaxJzUK4bjGP7k6aaOuiKGsYF10ADERw56wupEr11NToKt0wtK5HRNOEkCDj7RFuf0dYi8kfAr1MP1rNM1x8SCOOn1diAs1IzBWqL4i/Nr6oOuaUj0diCU6RuiMN5fMMj4tcDUWfF6L36wWFcpYWjZEn2MAzcf/PPk3K9s4RbjhiX3bktk9xOHIuSrt9zsy9vN/R4eqHyQ1ltru8R+N00cV0THiUa4ocyzMTswVk9v0lQE8/k0U14p8WOFflCx4HDTykoOn2ot4YVLWGSJQe9RJzemCKjFBVlMyLmMGNuFg87qWRnz3H2Arxb4d2UHzUFA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8520.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3336f90-940f-4175-01de-08df15025155
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2026 21:26:20.7995
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nTUQzX5wQ5GQrODnZGEEG9wCZxjowzd8uLdY6vxvpSVRjAtih8AuYJZRVu3aXfv5A7KTGCZTRUS5cd8JhRqr9ewV3I/tAIozKMjehqkG6zdi230XFeTRmNmrcqw396D+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6400
X-Proofpoint-ORIG-GUID: XoSDWyCgcLaOPfkT6JeR4XGsVd2XRsH7
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDMwNyBTYWx0ZWRfX4RUzWllcnXRn
 HjB6cy9f+IwRVad50mxNuWEW42Lo3d0I5SFHJir+qpxo4xR/UME/T1K2npgxbAOk84RLjJFhCtH
 iQtjCBqPV8HeGuGK324VfS46DOKQTA/Haoz2BfXXGX7auu8uE5IH
X-Authority-Analysis: v=2.4 cv=L+GI0OT8 c=1 sm=1 tr=0 ts=6aac5b00 cx=c_pps
 a=JdlTsRgc0rHlLZ46F4FfNA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=VdqzKS8jKosA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22 a=klDOsUkWDRETUCZYPvoE:22
 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8 a=hWQ_nsk61lS5MSnyNAkA:9 a=lqcHg5cX4UMA:10
 a=CjuIK1q_8ugA:10 a=2y9B0ohvTgGUuuYi:21 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: XoSDWyCgcLaOPfkT6JeR4XGsVd2XRsH7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDMwNyBTYWx0ZWRfX/CRATNueoJN1
 8LVNlzm9Fj4BdGJuCEfirogMswnQGipKcNBaHAIoLaGPV0sqa6YGMqKFNzzn1UKVIrJxo2cHtBf
 MuLphA7/nAF8hfkTwppnRid9IpBjE9BVlMwy13n7JJj4YzzukXMmvSyuuYDcQSSdJAvFpgheyVp
 /440gHGzkZ7bsKN+uIf1dITk4X8bMFI8kB0HlC8va2ZY6t1Dii+wd48JDPdZ3jB+OR32A4vmIks
 SPIbVnT9bm2DTkQEczkU+XOuQSIvVo1rh/uGnCU5koSR2ZQlwak0VjBsS6W2TldLTwkd0xuMjsD
 cwYxCmAf47OeH8I8uQomL4xeLSGa/jpb0jaqxcEt4krmztH5oeEWPAuYEeUeumZRG/HkjNk8IjD
 mcEPOWJ0eXfhTvvKv2Gq02ANfOV6P/8XKen3Q3pvfYRYvvI9Sq24jqxuvq7+AtQzUt6l6fBlY/L
 zoMr7v147Y+2hyp4/cg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_05,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170307
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 21:26:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66734

--_000_CH3PR11MB852010CEB2DCC77197C33FBF90B82CH3PR11MB8520namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged!

Thanks,
Priya.
________________________________
From: MacLeod, Randy <Randy.MacLeod@windriver.com>
Sent: Wednesday, September 16, 2026 10:55 AM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; J, Sandeep=
 <Sandeep.J@windriver.com>; Babu, Priyadarshini <Priyadarshini.Babu@windriv=
er.com>
Subject: Re: [yocto] [meta-anaconda][PATCH] README: update source code URL =
to valid HTTPS link

On 2026-07-22 05:00, Sandeep J via lists.yoctoproject.org wrote:
Hi,

Gentle ping on this patch. Could someone please review and apply it?



Priya should be able to do that now.

I've forwarded the patch to her.


../Randy


The patch updates the broken HTTP URL in the README to the correct HTTPS fo=
rmat.

Thanks,
Sandeep J



-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#66653): https://lists.yoctoproject.org/g/yocto/message/=
66653
Mute This Topic: https://lists.yoctoproject.org/mt/119953604/3616765
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto+owner@lists.yo=
ctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@wi=
ndriver.com<mailto:randy.macleod@windriver.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-




--
# Randy MacLeod
# Wind River Linux

--_000_CH3PR11MB852010CEB2DCC77197C33FBF90B82CH3PR11MB8520namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Merged!</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Priya.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> MacLeod, Randy &lt;Ra=
ndy.MacLeod@windriver.com&gt;<br>
<b>Sent:</b> Wednesday, September 16, 2026 10:55 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; J, Sandeep &lt;Sandeep.J@windriver.com&gt;; Babu, Priyadarshini &lt;Priy=
adarshini.Babu@windriver.com&gt;<br>
<b>Subject:</b> Re: [yocto] [meta-anaconda][PATCH] README: update source co=
de URL to valid HTTPS link</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2026-07-22 05:00, Sandeep J via lists.y=
octoproject.org wrote:<br>
</div>
<blockquote type=3D"cite">
<div>Hi,<br>
<br>
Gentle ping on this patch. Could someone please review and apply it?<br>
<br>
</div>
</blockquote>
<p><br>
</p>
<p>Priya should be able to do that now.</p>
I've forwarded the patch to her.<br>
<br>
<p>../Randy</p>
<p><br>
</p>
<blockquote type=3D"cite">
<div>The patch updates the broken HTTP URL in the README to the correct HTT=
PS format.<br>
<br>
Thanks,<br>
Sandeep J</div>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-
Links: You receive all messages sent to this group.
View/Reply Online (#66653): <a class=3D"x_moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/66653">https://lists.yoctoproj=
ect.org/g/yocto/message/66653</a>
Mute This Topic: <a class=3D"x_moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/119953604/3616765">https://lists.yoctoproject.org/mt/1=
19953604/3616765</a>
Group Owner: <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"x_moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</=
a> [<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@wi=
ndriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
</blockquote>
<p><br>
</p>
<pre class=3D"x_moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
</div>
</body>
</html>

--_000_CH3PR11MB852010CEB2DCC77197C33FBF90B82CH3PR11MB8520namp_--

