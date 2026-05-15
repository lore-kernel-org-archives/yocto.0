Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E91CD4F47
	for <webhook@archiver.kernel.org>; Fri, 15 May 2026 15:53:24 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.59])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.38137.1778860400633301621
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2026 08:53:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Fssf13dn;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Fssf13dn;
 spf=pass (domain: arm.com, ip: 52.101.69.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=anrL2VCTOakxFY2GGzY9788xSR30u+Ag+XgWbxts18q4TwWzit9GypmbeAj/WcJ9pwTWFDCGoKd48AM6MsI35twRwXhRZCA4u6MQuhyM8vq30v0Bww3PbHvfldolrk5y1L9yED93N9XXTayz+thdOZ3KAErEoSJA8ZAscpTE21z8sM0N5J3XDmQspOVI4ZFIL0ghT194hNDJDC9kHPUCc0c5lCJvmkKPPX1JrQ+c1qtTVwDMov3fJt3vepIHJh0DTsozaYHbEDDrxHWPRv70MHHuBe43ZCSRl69BWJ9pVe+NYvZZ33jDkFWNKyi+ZfbVGFB9kvDvm+Gao0Ldgk/Tgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7zY0lvI0ExcNWoLFByp7kI7xsQVHmByTjALl/4SJtX8=;
 b=GmT9ruUXqHDJnQiy/g+x2lyBwk3bdB3GmegaTvmk95FD5i0TjvrWMBH1JMQ85IdzzPZFG9mi+fooKa9Pi28rU4sMYu3kLAKp6Jta4Vl4MEKhlx4WNDO12V6jhcXzVO+kuGsaQsinxxo44q7vOeYIPaL1kEZpLoYp6ijYypePC53fyULGptOme+PaUhGljdicxqVdk/emzE5Na2YUWBzpWmsAZhXKbzJAW6Pf8mSmy+HFFj2Sp2NxtIlNKy0ZIJk8LvBcoPapPlQnDvStchfepjOAl45sJqiQXfDhcU0Bfa12sTskz8mBrMHXy/zuHO/plJmmSZPe96s9sIgoz5kO5g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=gmail.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7zY0lvI0ExcNWoLFByp7kI7xsQVHmByTjALl/4SJtX8=;
 b=Fssf13dnOnuzM6iQ//cMEHmFrMleltiyqcKzhd9Hxeou/5nZvepFve/jpAe6MLuuzCha0MvB0hGtF8hk2hehXT+y91FIQuomddQ2+isLiY1MHge0FjbiUpgETXQesdTR8/mOgKC9RmACdwWpTB1bbQ4CcfJXJklhfIriphpEouo=
Received: from CWLP265CA0417.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1b6::7)
 by GVXPR08MB11661.eurprd08.prod.outlook.com (2603:10a6:150:325::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Fri, 15 May
 2026 15:53:15 +0000
Received: from AMS0EPF00000195.eurprd05.prod.outlook.com
 (2603:10a6:400:1b6:cafe::42) by CWLP265CA0417.outlook.office365.com
 (2603:10a6:400:1b6::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9913.13 via Frontend Transport; Fri,
 15 May 2026 15:53:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AMS0EPF00000195.mail.protection.outlook.com (10.167.16.215) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.13
 via Frontend Transport; Fri, 15 May 2026 15:53:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hz38rOWO2f1GF4726968BHCTykURO5YyqTf1Eepq0127gfXW9JvQY7EEaGu+Gf5f6UvFS2aB0z+R9/1tFR1Kr3x4z7BVhBne6654sPPPv1DmhRt6Rouo/UWrzK60a0+1akQ1I5oZ2K7hIQGovlhKGU0gNAz3+KdMzZWABuE3QC3ooHjjluM+Vc/0qR0dRN7qP6PAsFjs3X7Fv71PdrDAW9aA5BPL6fLmOI92UXdzl3NbbDeAPuid0+xvfRVkfeolV1cX/zoc8Qdk6BDlRcczb06BX7w824j2yEuxkV4SSMMHRTzH9Z8Tx+LlDsTHtay+IK3Cs3CENkm33pqiSihVoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7zY0lvI0ExcNWoLFByp7kI7xsQVHmByTjALl/4SJtX8=;
 b=wTq1Lg4Xe/EreDG6p7tlKbnt2CIeikkFAjeSvhnA05uyFVos65YV9k4lsbPVICHukfpQFnRfYK+oPcxH+Ade7KHh90TVdL0m1Lt5wjqr0KpbR4r7lvCF/iLiku6nx+lnwLxGk3Yjetg0lfv2DMe4NcH9MxeT8fOR6cooYKppNChYTkhlEF5bt/d8AyP884TEZQsbmAR1rxk0sStc30epHFfJJwoFL0aa0mmr5KXjj+45U/B063AmJNK6+LdnG79iQLmLpW5pzDxHnA0wfvVtM6QlpYzE7SpZ0nsK9EW8TLmGE39BGVbgXRZjILJSmlVoAn6hXBiBvKMdhV87nIGNtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7zY0lvI0ExcNWoLFByp7kI7xsQVHmByTjALl/4SJtX8=;
 b=Fssf13dnOnuzM6iQ//cMEHmFrMleltiyqcKzhd9Hxeou/5nZvepFve/jpAe6MLuuzCha0MvB0hGtF8hk2hehXT+y91FIQuomddQ2+isLiY1MHge0FjbiUpgETXQesdTR8/mOgKC9RmACdwWpTB1bbQ4CcfJXJklhfIriphpEouo=
Received: from AM9PR08MB6258.eurprd08.prod.outlook.com (2603:10a6:20b:287::19)
 by PAXPR08MB6656.eurprd08.prod.outlook.com (2603:10a6:102:135::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.19; Fri, 15 May
 2026 15:52:12 +0000
Received: from AM9PR08MB6258.eurprd08.prod.outlook.com
 ([fe80::171d:1f8b:720d:7a1b]) by AM9PR08MB6258.eurprd08.prod.outlook.com
 ([fe80::171d:1f8b:720d:7a1b%6]) with mapi id 15.21.0025.016; Fri, 15 May 2026
 15:52:12 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mail2uvijay@gmail.com" <mail2uvijay@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] imx93 yocto build failing due to parsec fetcherror
Thread-Topic: [yocto] imx93 yocto build failing due to parsec fetcherror
Thread-Index: AQHc5HqxlENqIMZzEkqSKz4Q3rxkvbYPMgcAgAABEgCAAAl6gA==
Date: Fri, 15 May 2026 15:52:12 +0000
Message-ID: <DF4DDA28-8A7A-43D8-BD0D-AD80A4197564@arm.com>
References: <QxVD.1778856846043312542.8F3H@lists.yoctoproject.org>
 <36BA4F6B-9434-462E-A2A8-BB5CD88CB7A0@arm.com>
 <2134633.1778858286628037772@lists.yoctoproject.org>
In-Reply-To: <2134633.1778858286628037772@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AM9PR08MB6258:EE_|PAXPR08MB6656:EE_|AMS0EPF00000195:EE_|GVXPR08MB11661:EE_
X-MS-Office365-Filtering-Correlation-Id: 75115a7b-cc22-4eea-e3eb-08deb29a12fd
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003|38070700021|4143699003|11063799003;
X-Microsoft-Antispam-Message-Info-Original: 
 LNCxU1sldebsqNtlBkLOh0QmbNSj/UAYHoDAXg6lS7vT+/aQCjvxPWbCD08WZKqQrbT9Pf49I6A1pDvPMxlutpefKRSTuRN1vCqUIoBaT1oLt4yyYRHFQEGnmfcHqbVjPfCE3ZQxJI57pJ16O3yKj/roNgN2UK5AqMbdG8OTxMab4ljLRzEXxzc/jPPBWXuasx2cb13G1RblLbjcIX2LHmnqKAS3RtSsmf/4Ru/+sZR3BgNi2vJeCTDTdC2p8NiagkU25mff1O0IkCuSuUS43HkFv843nKrxHtXlm+lnDkbWE0sExFmzdFE+6TWABpsphwX+RGZGmkDe9OsGF50OOTo3SK+5MTcckWKK3HUeSEEksJa1ZDIKuYiwdNHPlUok0RFdqQsEZ8fYauz5QtOYNhp6HzaEbcl3AzvAD7B8UH0ZjCVSEJB3oI3uf829hNnNBe+0Zmm3ZIS1DkEV0dMV9xT+NCD3duf+yvrvSAhZSBU51/UabINgV79mO97GA9d0Z0AJ6Mq9//kMeh+JGzPsJO2YnDaWOH3WN3Lgoc8j81/F+OfR8QNOWWD/8DRx+w6EosyVCoiZgUaQkOa+yBNBqCB3o0c30kjvZjV1xMhYG2c8Dh9Db6mH2JEydWeEI6sFjzXMylkvIdUGvhu5iRcHpSOphCSAQWOGb6+sDsU9NDPtokYb4NGv2hUdI5FFHdOtXuObxSDJ4V9VEhQKqM0OG0Z66dimNyURd84VaJ2jiPbk1VB7j+AGRY2yTAb9N+Y6
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR08MB6258.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003)(38070700021)(4143699003)(11063799003);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <5122E7DDBDB8D14689A518625E65D175@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
 vOT2g+VhL8QIipT8Wf3Qe73f20/l/2U0UdCnJGxgIFaY8oj17b7qrrpgHceFtaSr5RJ1tc+7qXijAsJgZFs0tN+dJ6tx5MIj0htcyMz3ncLlNINqJ03QxlwGMCX3NokFN3LdyUjtJMk7qNb/Fp61CbIVqNs/JzR5MqzVhxZhQ207ytTHc/m8Tcu0wk9gght8aHvPXm+I2xXPsIXSx/gA+c+1bpRhkL/H3jd10BtCIjNpYBSHdOLo6NmPsB3sq98iNY97l12yyiMhviaiQOsv6nfF987rvXKlrIAP5LjHqbgNKhErJ2QZ2a6kwB3JWkebHtWZ7l2rvk2ejgYBxU3+OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6656
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000195.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d7e307dc-5fc6-446b-ac93-08deb299edb0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|1800799024|82310400026|35042699022|376014|14060799003|11063799003|4143699003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	iec3lXkxXM+gL97AvQe1BQvmOEA/kTnt6tCQVcPaSYc1EIUPV0rnz5YDuFDFG1d7NGnsBM9o9ZzTDvW97o6ypASwilRKDRkSvOGtaL/qslypQVUjrRdD8bI5ncnTMx3JY81N546fABF1ESduyWNwpYr2ONi5n6J1ywWsZaiBi/mSUwiMwIebl0YTIWXrEMQcVdFpZE8kqtmyCG42g8GI1LurczD7ZbbrmF4HgbdrS/QV8mXepdmXTq4WSZZhNfZAQkbnGKiziI1yfA2sc6O/3H4YX8MP2kCXSghol1pzgMqECNarIFNdz6jXsVKUkUYmmydtFtLP0PoXcwra6RjSc9nB26DvPqRc3B+Cg4O9QdzSfUBX6wKdQElzDstZlas4WlwYVEeWZuDGDB/F0aCn0cnfeSx6CI3CmwKkp40ktgRIP85eqMcvWi1mFBgxx+GgSky7GtC1s6FaPSPbv+yURBB/TiY9vkC4RzS8ZC0LPGW+xvFNOr9ky3zjxGsndnest2/NArOcV7NqP0A2sqItoysqwQdn63mBfFUfBLFt31Txo6JnVJMWin3PUmTfFXRYtdYMMt3NT8lvwshJ6vKsCjTAIqc2aU0Adl7Iu1mm5l0RrI9gsV9tkxz2DcB7z6e/sVRezg6N9xu6K6qhmN27tFDGJkF21JupIAeA1avFLlgOIHJBnAhA9jjmV2Ul/hjPK4FI6FCBF3spR7UF0FIUTlapOn4WID1Ts6w5lqJGLyk=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(82310400026)(35042699022)(376014)(14060799003)(11063799003)(4143699003)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	+aiT0nPhDA1rxX7ZKmknkUgb4RhcSiU7Taa2YVPDLeasZZoOslHNyqDK/z+e5lm2HSAyeEaCvjuD4h393nLdSZ4PjeWXf0NMeWmZzlvlxR0DzBqEpGV4Ewru6QrBPKc3NLR/3vYSbS41RgPTA15CPDKkbusWSdCNrvJJa8+OLu4i8gcg2ZoVknGdxw/vyYCdQUrvbFalp38k0bfMC4gx6YaslVmIxyS1aUmwyYM/Evtc0sHfh8zCsiSPATOmXLXPZX4H+sw3PInboL5zlBYTgTSZkmTcSx3RG/2P5upawjdFPcqeioESNAPI/1V8zTVRZ4FsHwTE36cr2/Y5lsAzZ30POSp5ddMPT3MOfbiw7cJdx259E4+GMRCHX2+5E2iUX0VwIHL80Wjp+ni//yqWe2H7dlS9mtNIB2+/2s+82sjcsNU6JS4R+0jFp9zzPKCP
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 15:53:14.6116
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 75115a7b-cc22-4eea-e3eb-08deb29a12fd
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000195.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB11661
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 May 2026 15:53:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66565

DQoNCj4gT24gMTUgTWF5IDIwMjYsIGF0IDE2OjE4LCBtYWlsMnV2aWpheSB2aWEgTGlzdHMuWW9j
dG9wcm9qZWN0Lk9yZyA8bWFpbDJ1dmlqYXk9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+IHdyb3RlOg0KPiANCj4gYml0YmFrZSB2ZXJzaW9uIHVzaW5nIDIuOCBvbmx5Li4uDQo+ICAg
QnVpbGQgQ29uZmlndXJhdGlvbjoNCj4gQkJfVkVSU0lPTiAgICAgICAgICAgPSAiMi44LjAiDQo+
IEJVSUxEX1NZUyAgICAgICAgICAgID0gIng4Nl82NC1saW51eCINCj4gTkFUSVZFTFNCU1RSSU5H
ICAgICAgPSAidW5pdmVyc2FsIg0KPiBUQVJHRVRfU1lTICAgICAgICAgICA9ICJhYXJjaDY0LXBv
a3ktbGludXgiDQo+IE1BQ0hJTkUgICAgICAgICAgICAgID0gIm9zbS1pbXg5MyINCj4gRElTVFJP
ICAgICAgICAgICAgICAgPSAiZnNsLWlteC14d2F5bGFuZCINCj4gRElTVFJPX1ZFUlNJT04gICAg
ICAgPSAiNi42LXNjYXJ0aGdhcCINCj4gVFVORV9GRUFUVVJFUyAgICAgICAgPSAiYWFyY2g2NCBh
cm12OGEgY3JjIGNyeXB0byINCj4gVEFSR0VUX0ZQVSAgICAgICAgICAgPSDigJwiDQoNCklzIHRo
aXMgdGhlIGxhdGVzdCBjb21taXQgb2YgdGhlIDIuOCBicmFuY2ggdGhvdWdoPyAgWW91IG5lZWQg
ImZldGNoMi9jcmF0ZTogdXNlIENETiBmb3IgZmV0Y2hpbmcgY3JhdGVz4oCdLg0KDQpSb3NzDQoN
Cg==

