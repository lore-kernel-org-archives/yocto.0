Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71623CCFA04
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 11:33:52 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15039.1762253803613323979
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 02:56:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qualcomm.com header.s=qcppdkim1 header.b=iTK36cuM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: qti.qualcomm.com, ip: 205.220.180.131, mailfrom: amanna@qti.qualcomm.com)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A48g5VY1583519;
	Tue, 4 Nov 2025 10:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=U4WNrDV1psyBDMfNgkGXmF
	BlCjkKkcNDlMoeajEakZc=; b=iTK36cuMRMYHxUq3h6y9aE8Ez8OEPk3O516N6z
	CtLfkQB9MI3XxphcE6PSMUBjtWxDh0MarzCwtPihPfwRhmVY/dQIXsC4dzmaMMYC
	68jd8apzMZrwz44srjiveTNPFPtdPB5glV+3DwoNfPfCJ+b/G03u5pYW8H8JoqaX
	kIDvY9XhyGVL/axRoaXSQSLScBfk+I+Q0ECOZ4dWg5lqH1QI88sZFCrravpKikKU
	3/sGhlQtTiVLVKzUY3nyUGXtfr77GJpWfp2MSTCX/oVtEZ2Tu/RqJlRk/uw4wxqF
	EZjtfvAj/fjR6OvV2cjZVWFGrBiS9OUTxUG9MNQPyPny0haQ==
Received: from bl0pr07cu001.outbound.protection.outlook.com (mail-bl0pr07cu00100.outbound.protection.outlook.com [40.93.4.0])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a79jjs6cm-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 04 Nov 2025 10:56:42 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZjhkzDla+o0VdhSsvaEhPYxRsyTiTb8y/K7AWGXsOYKAHLaAZMNGWrGO7/D+mrjPS+UIsiceCRemfvTD4W4QBZAM0YrwMFGFdHp+VV5cHORjbw6RQ2YobTD6pqLe7B4ZMvLxY84UJWsxFOZ/yuq2JayVTFgE3xAmBNt3KvpgD0eDJKvLzMjUboIE0oL0G7/dsDzfjytMo/msFywV0g60IHHwSb0/WzBHc7y6zmmBhw5D2JRJClV4kZcq51wFOBPVceiBmdp2ioRVMiWRWc9phXmC+4wxFG5i8AxIMJ0vAOCsceQueEm529Xoy+RksHHy7KhAiHMXVfPugE693AcXcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4WNrDV1psyBDMfNgkGXmFBlCjkKkcNDlMoeajEakZc=;
 b=pQpmsKfN4xVaqWJee5X7eaiXx2KV9I+wnihMomXzEG/ucFTTpxAFpXJ97FS6XxS9r5fKZvYqDKigxrlfTHXilkQKZpcC6Kp/WodUtR9957tNZJeu+3qH8M/JkSR+74nqIR5/uTQAV5pOCkwzAQhSYNhCJB0wZle/YS+kkJn8IUsrvLrAdqt6xP6B2/gW1NWUl10edZXCMa4lJ/OFNvuoQOSvUgQhfjtWGMnmaAMhJq8yxcGJiQuXIvDR6xi4CZcuPinffIP0bkWpHTOaNRXJkGLxLwHArocWkx9yvuffpqVDl39CAtk0IZr1PzpkAdaPnEf6HCwM+wZyqdXb17c6Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qti.qualcomm.com; dmarc=pass action=none
 header.from=qti.qualcomm.com; dkim=pass header.d=qti.qualcomm.com; arc=none
Received: from IA0PR02MB9662.namprd02.prod.outlook.com (2603:10b6:208:48c::15)
 by DM6PR02MB6906.namprd02.prod.outlook.com (2603:10b6:5:257::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 10:56:40 +0000
Received: from IA0PR02MB9662.namprd02.prod.outlook.com
 ([fe80::3c24:cd47:920a:202c]) by IA0PR02MB9662.namprd02.prod.outlook.com
 ([fe80::3c24:cd47:920a:202c%7]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 10:56:40 +0000
From: "Abhilasha Manna (Temp)" <amanna@qti.qualcomm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "yocto-security@lists.yoctoproject.org"
	<yocto-security@lists.yoctoproject.org>
Subject: [meta-security][DISCUSSION] : Enable Additional Security Configs in meta-security Layer
Thread-Topic: [meta-security][DISCUSSION] : Enable Additional Security Configs
 in meta-security Layer
Thread-Index: AdxNdtStx+FWQkqbSs2y4/zN0XNuLQ==
Date: Tue, 4 Nov 2025 10:56:40 +0000
Message-ID: 
 <IA0PR02MB9662D122E02DB89D545BBA92FEC4A@IA0PR02MB9662.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR02MB9662:EE_|DM6PR02MB6906:EE_
x-ms-office365-filtering-correlation-id: ad7a636a-1a20-4c2d-1d50-08de1b90d56d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?rfVFHcwUWJy0P4TPpvXDPm1PIwv1/2pCEOPqgCdKULNA6BhxXx1TdIEwf2?=
 =?iso-8859-1?Q?dgHP9CloUOan3rDDd3HSxQVHC+E5B2c5ttwXvJijFRx+MGTwc4bq49RHxm?=
 =?iso-8859-1?Q?udfot1htxAdSzXh+4qgaFdQ653WGeC25Zaew+1LTxhfqLb9xNqeHfWEn3C?=
 =?iso-8859-1?Q?UPWEEXKg+Gn0/Pof6/ufHYwubLXC/ROXmH+sjFK61CAB8rs6/yUCIc0LpP?=
 =?iso-8859-1?Q?0LFvI0VLp4GDQSgzbrbM05JJVUroU+8fjAZLwfu5a6m97mxYctgHwPjGQK?=
 =?iso-8859-1?Q?SCz9n/yJdceamB4Tg0uBZtdZPd+to3wDXjVeFfnv5xfSNiKNa5tG0vKWb5?=
 =?iso-8859-1?Q?/6ZKCWXsg7oLy0/nYCwjNNWWgy3vwX4yJsGVE3y3fZNc+CW4GrLtO0ewhB?=
 =?iso-8859-1?Q?ttOWfKfS3n0zM+CscTAe+q2U1WH0RDB/sSHZAXz8kUW7ZK8u82SLFJANwZ?=
 =?iso-8859-1?Q?R31xbYrWXV9mjYJIxS7RgT9zDrZo2M7wf+AQ/4VkEyziL8ykfTJf1pRCBE?=
 =?iso-8859-1?Q?AH3uZ4ycXwwpsQqi/pDEhgVms2bpllH9mu1os6BQkl413yoTKmGbSkwclG?=
 =?iso-8859-1?Q?RmgRfV+jorb0a1DsfuDB61MR3sONxdYhosDe/O4Qv2+ieHCDE18sph+WBr?=
 =?iso-8859-1?Q?kORYsAa03JsFyWP//WE9mXs1RF7ITSZrJEwyF/XxgNaV61eRttjlsaxCO4?=
 =?iso-8859-1?Q?Xz8PcFHIpBFON+nanlmTpLTtoxt/aznLvTqqOAakB9S7GO52hETBCPaZ1G?=
 =?iso-8859-1?Q?4Ev7cNzSiO6/EaYF6XvtkMk+ffeO3i2+6lZrSehZEeb6aFEzpT4g8pCaUM?=
 =?iso-8859-1?Q?JxOq9wM6D0Pt2z4+4KthhVTc2hR3YEY5Ngd30inUE3Kgb80Vw0HtAJnANH?=
 =?iso-8859-1?Q?f4RcylWPgQsehmWLWjyRoGyQwFX44qnBMy8LggCpo3xm9T9A0oEZkD89/F?=
 =?iso-8859-1?Q?q3V3pIK3r7V33mqVas+cPh9Y0XTagZlDVuMcRJ/hHI7LSUbF9+QvD/RtvL?=
 =?iso-8859-1?Q?WH8vQqVoo7VZuDe7KoFdlBnQMZVqXdQuauN9bFGFlLq8P8jzkYzHX0INE7?=
 =?iso-8859-1?Q?wHn2uYh+RGXNtc5oH0KJmOl3aXIXl76rxzc6UQtLMqgiqgDM4TyDHqZRB7?=
 =?iso-8859-1?Q?4DOlKcrUGBlwir8xjfVT/ijjerGpSGRkZBRDni9SO26rk/beww2Aa3w00L?=
 =?iso-8859-1?Q?xOO5rer4l3Pw2WdfBHU1dvTi5MPF6SvNP0NOc4hbVowUWNq+Rx6GBLrccS?=
 =?iso-8859-1?Q?XJEiK0iqzHtC206yJbk2Ge0dEdPYtfb2bVF0VLOgLPwuunLPs4SjTCjYjO?=
 =?iso-8859-1?Q?p5OLIUfQaNqsF/CZe6IeN93cPYb/r9pJnOYcjLPaDafUwWW7D0NXhD6GLh?=
 =?iso-8859-1?Q?CXVGa72xIfNie631Uz9IQJMUhLj1QxGPbnYa1bKlITaLUwMZcB5/se2tTs?=
 =?iso-8859-1?Q?RlHxCCsHPUKn9Th85bTYV2vCk8Bwm1KURxyB+uNm/Emx6NfAndfMF0NWc0?=
 =?iso-8859-1?Q?WOoNol276LarapIa3TJ9YeJc5McjBWQiIxmgAutls6hCNpgdYQckmLhUJp?=
 =?iso-8859-1?Q?4vEQH6YbWN3fOWpf4IzBCMyWwNCu?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR02MB9662.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?4rVAJgFgZ4Hk5uSCc4FCh1FumVbbEyrDxHnI82dWwJiK2KCnpTsXny3GHU?=
 =?iso-8859-1?Q?GBBK68bfgEUViGb1u3K5p73OJPEyVUAY2XYyOAIHOa/MGzFYOHCUOBlPMM?=
 =?iso-8859-1?Q?AL2zPPUMlXRf4siABkFSV82VCmM77HeKZX6Hi0UerH+ibI7LPvZZ0nSo9m?=
 =?iso-8859-1?Q?mEo7qi2Dp4rkJqsMOSJ7J9BVRuPkA7bYh8Bbo2HTPkTVnSdSauTAhjrJn0?=
 =?iso-8859-1?Q?xeVvmRfCgKj4yrXsxzs0PtZcNSxI+c5sUyYOvsEm1GSZlpXNS/2EkLIqnO?=
 =?iso-8859-1?Q?FWdODl/+yGvR1bpgk1fs+e/k1SFbJvlV3z8sSUim9J8i53WGCRan0+OT0N?=
 =?iso-8859-1?Q?zypqeSsSMIWonYAPJV2lD8kMIJQ7LsT09arVCLJice7u7IPQDVHicXtvrR?=
 =?iso-8859-1?Q?vGHucHsV6dWW9FmVLu6rLMy6YrpjAEhp0O2gW8eBs0Hw5vC4WJ7o3omhgi?=
 =?iso-8859-1?Q?VSuqDqR4qcsGn23HH7twm3JZq/9UNw24k/sdhQKLqJgXrE+BKdn2D4ofKO?=
 =?iso-8859-1?Q?00MpPupUS4N1OzW6VdGpduC/YPu65wgKk7qRo+0KyzJhZHUcI8lIYdN4+R?=
 =?iso-8859-1?Q?DrKUbVAxX3jYDBqBGZ1irwnOIsKW/68IFphcEEvKVfxUtrm+jyWJYbMyac?=
 =?iso-8859-1?Q?+JWRF+yiG3+m3E3Ya3XZ1aIgU+m6Vq5SEZvAlIq0X1ecL7twRzuaKxQjBj?=
 =?iso-8859-1?Q?eaOPBH3YvmOs+oYpDYdGLgdNS0FMx/Ziq7+MTLFOwe9W2JOXYybRpTVZ2s?=
 =?iso-8859-1?Q?jgyDiZeKppwzp1HlRyPKqEmsvJXmpwESi/k6a6QUpwdQdCPgHCh1OpcpBd?=
 =?iso-8859-1?Q?z/X/9HPgTKYvsUAZzqVrvo97Iw9LaiH+bajRM2vb0Y7jrFU12NVeuMd5Ql?=
 =?iso-8859-1?Q?RqmN1wsXtE0dKW2mQBZ1RJU8IDnCFb2TXwQBK8FkyDvUNOztzdqxZkpScw?=
 =?iso-8859-1?Q?xNl+SLjjL2Pr/WSkXHhIaQIDdcXT/ys1U85A2ZBovhY8punffkyS2kxlwQ?=
 =?iso-8859-1?Q?VxDl119nOjs7NaS7EWfc1Y7e5Pk+GjSmCPWQcXt8yEnLFa9XVmC9HeuI4J?=
 =?iso-8859-1?Q?Sd1yeVjXDQK7jZ9QxpIVHxv8oCbzYzW95DW9y/H65OB0kmCe9CwXXqNZ05?=
 =?iso-8859-1?Q?mD+JLGdOBjgGJ5psO+FPiWOa6UZmHMSN0QHxbUR/u8H7Du0LKs8P14lDx/?=
 =?iso-8859-1?Q?SXEepjTgnKqi4S/LFbsl7sStFbIkYnz8c/UK7putXP1tifVHpjozQWOM+p?=
 =?iso-8859-1?Q?koBinYXq9cSrRfwNv6tNVLkP3xxYC4lySuzD7lV/odlRSLWQKtcl1Tkfbn?=
 =?iso-8859-1?Q?vad1PnPiqyzXHb2H1NfUIGvXRuJuocMeLXrKK25IHF5JGnYreNcDoqA+cG?=
 =?iso-8859-1?Q?IZCW9gjJS2MT9mXPOaQhtxjhSVTkfL9mk9rd4EAeOS3hfmH6+BoIxOORsN?=
 =?iso-8859-1?Q?D6FHKNYlMPsASTNrBWw6EALNSXize6GjAluW3c82MB2NP6mZeziWymSbcy?=
 =?iso-8859-1?Q?CoajoxpTEfD5evEv2QVArmrs/q1dWAcgfBD6gfdtHmLby8/XQy9KgdaKXj?=
 =?iso-8859-1?Q?hdBkLeFThYRtR/K6qTm4+EKExJ/6qT7vXXJP9RLKF4PGSvDDgfDbJrtGQJ?=
 =?iso-8859-1?Q?IJAMA2Ho3ljHJEcuVaZP9wbEekdr4gbeiM?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Usfxvb+nF6HIuVFoSz32j2an0AH4vIXWbYAWgpxFIR5sfiCHaljlPjOvYMJiUcqg+bDcRSDI37EmzPbHUT1L+mn3ONDNLCPpkF7epd5EDAQ6r99aPetbIEljhawfM9Be4X9ClY/xReu8eEb8A+my9JYpAeNuAAVIYpWiB19vx2uqzcd3tvKkiU+U/10OCyJFVdeunAoNJJixLIbqVOh6JqFJfDZOQV/Aa6lxMcYd4j9qJqZR1NCS0D9eQbK2hVDqrzXYDRgmftmBQURlqKOpmAfuRkgf4Ca0l7OVi8BcbhUHsHGRHGYeM6dbXxNKfb2qfgx4Hh7JzIBTFgWT1HDcjscxJVzHw3JvAMnAifz3snuZfhMxvVbwvWopqkwTiBngfob9X/1c43nuFt8msZvulPJ50jlFcbX/y9WpTR76NVk2vsMWvnL0mDvHPlYqaE281e5q8sccOu6iV8NSH+o04cc2ISXgCdVGYD1lyjpbSep+XdyJ/FIWS7LbxsuOq9Y786FoNAOgdQJoxXbB1W8BXkRyqTvK+/0PJK6LmLlgXte52nrspOeEB/YF0TDLod3yr6ZqDZCO1ncaY82Rm2GqjBtxP3JJMDWofe/wMYVJpRKOoJ5BM7wQOaejh+nRO/8h
X-OriginatorOrg: qti.qualcomm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR02MB9662.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad7a636a-1a20-4c2d-1d50-08de1b90d56d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 10:56:40.2922
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OeYPIiwRwoZeTOCDTnbKlDo7slI4uYYewzWd395oWUo7BEdD2c2293a0TIFMw5mojb9ARthCKhHP4Ueyvnwabw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6906
X-Proofpoint-GUID: Dl61KFmcX9knTl_ApRKj8-0QnoWAskXu
X-Proofpoint-ORIG-GUID: Dl61KFmcX9knTl_ApRKj8-0QnoWAskXu
X-Authority-Analysis: v=2.4 cv=TuPrRTXh c=1 sm=1 tr=0 ts=6909dbea cx=c_pps
 a=R7I9PRAlQjBSNlIBhwzs+g==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=wayllDVpWAVrv4HbGKUA:9
 a=wPNLvfGTeEIA:10 a=ZXulRonScM0A:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA4OSBTYWx0ZWRfX+21ABK1YSam8
 /NMx3pt0bO04hkE/BvQTRRM154kVC5nO9CK9Ket3EK7okaglGoJCcgo1gsiYkjNlPgFtNJA4cFk
 bQzI4kIaQgPwg0ebpbbAQ58cbNXQiXjpzDhglnmrK/mWTP6ropjN9Aktc+dDLTkVzPmQhHcZX8I
 IAgTHMOZaR2MKIMrvd115lZPixX/yOTdEoWP1/X1MJmHB7jikaQci2WpykUv3WnjjlapecUZant
 kjyeLvWU4Ao36DMlDtl6QsMzB2zfjluzUCTG39qCSlFjoEOqtmo5e+YmWTcHS0GvM1v78/7mYFy
 AeUYdfVvqtEQGYpTV7XAtkKY1L0oza4BuVOoZ+oBnj3XQxf3NAHnPGUXjhVJZsVfeXr2Xwv0uDD
 c3iJECpReJ+fMxmafNpVZHPK2l74EA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0
 clxscore=1011 malwarescore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040089
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 11:33:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66000

Hi Yocto Security Team,

I'm currently working with the Yocto Project and exploring the `meta-securi=
ty` layer. I'd like to propose enabling additional security configurations =
to enhance system hardening.

Specifically, I'm looking to enable the following configurations:

- CONFIG_SLAB_FREELIST_RANDOM=3Dy
- CONFIG_SLAB_FREELIST_HARDENED=3Dy
- CONFIG_HARDENED_USERCOPY=3Dy
- CONFIG_FORTIFY_SOURCE=3Dy

I'd appreciate guidance on the best practices for integrating these into th=
e layer, and whether there are any existing patches or recommendations from=
 the community.

Please let me know if this is something that aligns with the goals of the `=
meta-security` layer, and how I can contribute or proceed further.

Thanks, and regards,=A0=20
Abhilasha Manna=A0=20

