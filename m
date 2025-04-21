Return-Path: <liuyd.fnst@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BC56C369AB
	for <webhook@archiver.kernel.org>; Mon, 21 Apr 2025 09:01:36 +0000 (UTC)
Received: from esa12.fujitsucc.c3s2.iphmx.com (esa12.fujitsucc.c3s2.iphmx.com [216.71.156.125])
 by mx.groups.io with SMTP id smtpd.web11.11517.1745226093239592996
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 02:01:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=tsIuOMtR;
 spf=neutral (domain: fujitsu.com, ip: 216.71.156.125, mailfrom: liuyd.fnst@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1745226094; x=1776762094;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=mXTl2aM2BPFr/K48HT0iZzpfVaLwO9k/rhzGDmn74Nc=;
  b=tsIuOMtRZJvxW2OTS9FEehRjVO94YlUUgMu6LccDFzVWnTCH+5N5F7NQ
   ht+8pP5qMz7GAsC2nyVT1VkFUj/+6iTWwUMNr8fz1tT4uYBw5zjhyLOoN
   nmZgImhukT3lGhrhccGnKKdPyDvDyUnjOS9ZM9t7IfD+DtqW9NWaWKX99
   uXm+DtDQyymxoiMqM2kb6qilQx3vWGFxkj8SatcBemPNqpFvp9gm5ZggO
   gKaDWdBHY1p8eE3cbGX3la6ypTACbl0CfXzunfv7nv3zaPQbYnAZ/AhDF
   gHMs5UuDZ0zIdq0P+KRg5uocSn8SYJqLXze581EnY//Ao9m4ssuBwkcBJ
   A==;
X-CSE-ConnectionGUID: I1FYBVQQQ5CgxUHymaRRiQ==
X-CSE-MsgGUID: pvNXd0WVQ8qiz+7KAjc5fQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="153526733"
X-IronPort-AV: E=Sophos;i="6.15,227,1739804400"; 
   d="scan'208,217";a="153526733"
Received: from mail-japanwestazlp17010007.outbound.protection.outlook.com (HELO OS0P286CU011.outbound.protection.outlook.com) ([40.93.130.7])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2025 18:01:31 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JudENx5EZE/gLGIYyDhR12WDykjHcJJ7Dy17YmQqprVVs/evJJ6Y/+eQrhPtU2F1JE3Rr4lLfwz0y0CQMmlllqlPPhap/2kwPu+Vz/D1I/LlBH+rGjVEJqMRLnWipsgOTtRGK4ktO42MPcAUC4GJITO1gdhhpfZvYwi9Rx3HMklZ08Z9wdD1coYSrKGk75yiKtQoPMH9tNwcV8u4SbboPLmgsjCo5yX1iitzKXw52jnLMm4l5HvIMgsZztXMTqPiPg1qOWR1POJRrb6RSAXZMw0MmjGQpS9KVFL2DY4nH8lsVslgR7SjS3SMJloHUhebUJhJYalEgfdeCMd6sm25Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SY+L+ZXGn5MFT6W9DiamJ1E/TUkgXyVpXWr63MfLKZk=;
 b=cxvzVjg7GM9teYxieKq2ld+mLztgAyk9yO381YTdbRX7jKM0aMfeC5WX412d4ABZ3cqVqZZAaHvyhUKSLejOiBmyEEhUab0+NrHYkaB3Xm8t0GHVhiHJzMR2ZQlMYwsKe8rkDvEixo4rhdgC++MM13oFt8qnlZ9ZNBUM47z+K8H3sXu75D8mpGhVXOjSRVX2tzuqahGlt2PDWBFbTCu7sd9TWzneh0P6w/YfMCyBHTqsSGpdeRXoj5d3eED2aLxzjzVbr/VlUEzE/3pTl3L0vQ9fxeG7vE3DnOYo3ihCzP2papGC+XwKN3593bz923Fe6m32Q280yHq3PahJqGkDeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OSRPR01MB11597.jpnprd01.prod.outlook.com
 (2603:1096:604:22f::12) by OS7PR01MB14430.jpnprd01.prod.outlook.com
 (2603:1096:604:38e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Mon, 21 Apr
 2025 09:01:23 +0000
Received: from OSRPR01MB11597.jpnprd01.prod.outlook.com
 ([fe80::cb27:d71e:9f8a:8014]) by OSRPR01MB11597.jpnprd01.prod.outlook.com
 ([fe80::cb27:d71e:9f8a:8014%5]) with mapi id 15.20.8632.035; Mon, 21 Apr 2025
 09:01:23 +0000
From: "Yiding Liu (Fujitsu)" <liuyd.fnst@fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: QA Issue: /usr/lib/libmozjs-128.so uses 32-bit api 'stat64'
 [32bit-time]
Thread-Topic: QA Issue: /usr/lib/libmozjs-128.so uses 32-bit api 'stat64'
 [32bit-time]
Thread-Index: Aduym+XoOa+DIbr8RuqRtowU6IJD2A==
Date: Mon, 21 Apr 2025 09:01:23 +0000
Message-ID: 
 <OSRPR01MB1159744545F10E644D8DB24CE9BB82@OSRPR01MB11597.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_ActionId=b95584b6-d808-4130-afc6-40800556bb7c;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_ContentBits=0;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_Enabled=true;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_Method=Privileged;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_Name=FUJITSU-PUBLIC?;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_SetDate=2025-04-21T09:01:19Z;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_SiteId=a19f121d-81e1-4858-a9d8-736e267fd4c7;MSIP_Label_1e92ef73-0ad1-40c5-ad55-46de3396802f_Tag=10,
 0, 1, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OSRPR01MB11597:EE_|OS7PR01MB14430:EE_
x-ms-office365-filtering-correlation-id: cc085810-83dc-4f97-234c-08dd80b3173b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|1580799027|38070700018;
x-microsoft-antispam-message-info: 
 =?gb2312?B?TFN0eXZGT3ZRRVFjbFBmZnZTVGFqc29MRUdDNU04czBKVWVCMFhsWEM3MUJB?=
 =?gb2312?B?Q1A2R1JRZENUYnlEMjlSNnc3bjhlQ2FOcXRCYmpNWlNpU0VQelduUzdOQ3l0?=
 =?gb2312?B?dDV6OVk2aG5aS3dxM3hrM3BzaHllU0laNkdFcnBKNVZyOURGc2lCQW9xRjRY?=
 =?gb2312?B?ckQydUQzRUw2VlFJem1BVzFyUXJJUWlNZWxrL1g2elI4MlVyMVVQWkl0c0xY?=
 =?gb2312?B?MXlaUlAyNzRCOHZzOEt4TTJQcDl2c29HY2VCZjROa1dpL1NNM2hWR092ZFpD?=
 =?gb2312?B?YWhJeG1VWVlZTVJRUzkzdGxnY3NwVVdqb2JXSUFwMzNUdGpSc3hoL2xsYWpF?=
 =?gb2312?B?ZjF1aGF6aGVtNlNZb1o5Q0FyTEVtNk5hNFBvM2E1Y0NFNXA3Z2w0YzZuZHZt?=
 =?gb2312?B?aTd5T1Nya3VBaXRqYkZwUUplQ05KUkxUTGZrTE5MZEdQZDZmWGI4RHpJeTNw?=
 =?gb2312?B?TXdYZFB1dFpCODAvMlIwZjM0ckxoekdPM25aTkxveUFpVzJLVFduWUQyalJw?=
 =?gb2312?B?OU56bTF4RHNJdURWWlFDdmFHMmY0WkE4WHpqNVJJY1JSV3VkTmx6TU1pVnV1?=
 =?gb2312?B?UnNYTE9oeDJnQjlvN1RlR3dPNHZIR1J3d0lEZ0tzSzEyMVNESjVicXo4YTVJ?=
 =?gb2312?B?eXV5aUR6ODViMjBTaGd3ZkNvYWJVVEgxZzU5TDgxa25HQWtVWC9xc3NYSSs1?=
 =?gb2312?B?aTBFVVNyazZDSXR0cEVsUGdJam5NTldpQzRON0hoemw3a2JQeFJEZlFrSzU4?=
 =?gb2312?B?SmRpazBaS2F2aUlWaEpFdVBxSGY0U0ZtRHZ2TVh3UjgzdGFEZDl5aDUrZ3pD?=
 =?gb2312?B?bVU1dGJtYjl0SUhxbzJVS1JiekVEUll0dWsrTVhqWCt2c3NGTjZZQkVObXlE?=
 =?gb2312?B?aU91anFTeStHRkVKblJFS1Y2V3BDTmtmWHAyeFZrN1JORllETWNnZG5zcGVk?=
 =?gb2312?B?N3BaQU4xQXVFKzlhN2ZoZHlhRFd3OXA3RWxURnhXRm5VdDBKdzYxa1RIU0dy?=
 =?gb2312?B?TXc0YjRRczk1cVhHajRtK0liWnlXb1dBRHBMWVdHZ1NGMHNwaFM2UWQzMnZz?=
 =?gb2312?B?d3Q4Vm9oc3VUOWxDazBjN21hdkdKWXNCdThpU3F1REZSY2ZSeExHek1aVWZv?=
 =?gb2312?B?UDFwNUlScXpmSkwwT2Roc1E4S0pOaWd4R1hFdkdhQ1ZuY3h4Y081MlVKYmJh?=
 =?gb2312?B?dFJmQmdrTDFEemxBS3ZFeVVERkZEZndKVU1KejJpcFFoSnZQMjNQVlRqaVcv?=
 =?gb2312?B?eHhwOXh4bU5ZOS9FRXBTd0o5b1dKazh0dUplSFR4STZvKzBnSC9yZElacFBZ?=
 =?gb2312?B?dWkrRXRudTB4YmhxTVdvQXd5VHJYUEdZdVYvOGtnaTBjQWRmRzRyditjS3dL?=
 =?gb2312?B?T0ZKcUMrZUxza01HRVVGZEwxdGJLOExHM3F1STJ3S2FDZGZ2dUdCNm5ZblZz?=
 =?gb2312?B?d2FlLzdEenZuZGhrQnJEbjBvNkxqRGVmNjB0OGtaUW02bWdFUmpIdURiT0Ex?=
 =?gb2312?B?TWFER3pzL1kzaVF4ZU01ZFJveTBZTWduMjhmNEg4QTM4UEVDNmF4R1p5RGVy?=
 =?gb2312?B?KzFqKy9WU2NQSXJDOUhhT3E5U0o5SThuMDFNc0haNmlZRGxlL2I4cG4xTzYw?=
 =?gb2312?B?dkZKMEYxc3RUdjcza3ZBYVBDQWhCZkFFN2FMbmNkTjlMdm1ZT3RsTlNoa1BB?=
 =?gb2312?B?Q0RYMUxsUnlGbFV0N1ltY1UzeE5pUDZzSDJndG5qeUZiRy9rQzE2ZFFodVVT?=
 =?gb2312?B?dUFLRmlHVStGSjdyU0N1d2x0WnBzcGc1bXRLdnhMbGJWVTFLRE9HMXo5cXZE?=
 =?gb2312?B?ZzRFSUpJRlF6K1BDb1VqYWExdnM0dlUrNzgyaDJ0ZmM1T2JFazh0bUFPQUUx?=
 =?gb2312?B?Q0VENyswYnpBczJWSWs0Rm9IcGN3aFAzNkVOUHVoRElhbGhuMjZVd0R3cFpz?=
 =?gb2312?B?VHdhUTExaHRCaThnYnhxcGxJNE1zRmZqZC9heENaU1J2Z0dwenhQczNtczE5?=
 =?gb2312?B?TXNkSVVwNjUzYW8wL0tXQWdJeTRzeHkwbnl3SDJzMDhLVmxELzVMNmgwYkho?=
 =?gb2312?Q?y3G55I?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OSRPR01MB11597.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(1580799027)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?gb2312?B?MkhJV2UxYktsdXlZb1dmUFJ6RE9vTkQrYms1aVVEUlJyMWhyVk50QlErcDdl?=
 =?gb2312?B?TUxiTHRwd2U5SDdFNjRDaGZiZ2ZUc21GUU5rTDE2UG93eHNOSjJPeU5DNTlz?=
 =?gb2312?B?WXJjem1xNjNnNld1Uk42ZjQ1d3hicTAyYy9BMVg3TGgwWDRaNTE5YkVyd3d2?=
 =?gb2312?B?S1JGTUxPQ3NZVWlFRjY3MlJDSWRWL0RaR1QrRk9WcnhNQll0cm05RDZTbkI1?=
 =?gb2312?B?eUZaVFBWZGxRVnFTSnJpbkJ2TENSMjMwdURGakFVSDhvWmVOSnJ1MFFjbnM5?=
 =?gb2312?B?K3VsRis0U3ZJZ3E2RzdkUmJFWUg3d01XcUdCcXpyUzlPc2FBVy9oUUpRUHlx?=
 =?gb2312?B?RDlhbjRhd0g5ZWw3ZXh0bnFuZFpqWWExLzVqZmNvV3FGdnBKWWVtc3pEQ3FE?=
 =?gb2312?B?bytBcEpYVmNZQ0hUN0YxR2hPZzZRVmxHVURzbTB0QllyaXNqRW9WdVNLT3l1?=
 =?gb2312?B?ZGNUZWtXMGtFbTY0QW1ETE1USTNXMy9GMWdudDZScDVDY2c4RkQ4V2l4UitQ?=
 =?gb2312?B?WGlNd2JESmFOZ0JqeU5tL0RMbE1XSUdkSHg2dC9jVDU3c0hTTDg4NUR2dmVz?=
 =?gb2312?B?ZWd6R0RmckdJWXJvU1lpY1hFUXFzM2xsUXpjVXM3ak1lR2FOdy9WRVllOUFK?=
 =?gb2312?B?aStMTmEyeHlQenF4MVM4c09kb0FZVFFhWFVQOVd1YncvWHhmRTJRd2dXWnM0?=
 =?gb2312?B?SDFwSEFDTjh0N0I3M0NCcFllSU5Eek5GaVU5eWQxUEsyK25GNHAzSy9WUS9i?=
 =?gb2312?B?M3RuRDJxd0dsS3BoWVdCK2lKOFA4TG5ValVTMCsvK0VneHNsdCtZZ2k0bSt0?=
 =?gb2312?B?ZnJpVFkwMFpVYjEvV1c1QlRTVVNYMFp6RFJIQWFrSzZsTy9KMDBpTkYyRmVE?=
 =?gb2312?B?eHU2cFdrcHcwQmZzaWNSeEdzckFqeTFOZ3ZnbDY2OEVkdm5keU9RWHpETXpM?=
 =?gb2312?B?L0pyWW93L0tUUDZMd3JaSk5BT01OOXd6VHcraGlxY3lhdTMzN08xZ2U0ZStn?=
 =?gb2312?B?enRCMW5EaUZta0FJUy83dUNUVXMrMDg3YkZ5bXZFQ1VMcGQ5cGtTVXBYbjNz?=
 =?gb2312?B?TlN5aEZBSUhvck5IdGZkbGN3bnRmN0hXVVpCYTNNNGxiMlEzNTdoNlVyUHY1?=
 =?gb2312?B?VUp1dWREa3luV1hkOUNUN2IwcDNmNWRydVdOTXVBaE02aVVwdkVxS3k3ZzNW?=
 =?gb2312?B?REF1Q09QMWc3TG1USXNaLzU5VUtzZjZGUmlORktyaUUzWVFhL0ZjOGpwY3NJ?=
 =?gb2312?B?UkdZZ2xDRVF2blMvSEVKLzNGNWVWeWpVT0pxTXNPOFI3b2NyWDR0d091aStn?=
 =?gb2312?B?TEJPdGNVejNjWFBsdHBYS1FGSGdPdEpxMVhhSXpyVTJ6QWFpVjg5Vk8yamp6?=
 =?gb2312?B?ays5SVQrTm9QZlZxMkpUMjJKTTJyeURIbWNyditxWUdEMzhWWjhGN2pJaE9X?=
 =?gb2312?B?YVhPdmIyT0ZGaWcrK2QrNkdQdFJrR1p6L1RpckxYSzhBNnNjREZnUkExK0gx?=
 =?gb2312?B?SkJhN2N5TXJmZzhuUjhFRFQ3RnczbnhoRmYwYVVPazkwVlFqV0ZmSjZoWFlm?=
 =?gb2312?B?NzdmMGYvZjZsSHRpSXVGdmpQTk5QdnpZbWkzeENoY3lLNXJiNGRWZGc4dEtG?=
 =?gb2312?B?U2R3azEvVmVSSHlTSGw1bTFsc244ekkrbVEyd3p1eEZKSDY3MDE2WkJXZjFx?=
 =?gb2312?B?dnJuNkJJRkNUUnFXMkg3bWpxR0RVQ005aE5QaGtNeHY5V0xWWCs5Q0x6UWVV?=
 =?gb2312?B?SmFTMDVaMktBRlZaRzBGTkw0dVo1UnpjSUFiUlQ1NFlLRWhxRXY2N2xjSHd0?=
 =?gb2312?B?OW9KbnhKeDV6WVExaitqRUV6bmVXYkYxUmhiazNrUXVsZTR2S0htTllLaitx?=
 =?gb2312?B?MDBxSGF2cEpSVnh6RnQ1Y0Rtcmk0V3QxcGJTZ0pnMm1rczMrb1MwQ3pURDhZ?=
 =?gb2312?B?N0lJMEllU00vWTNuSFN5RHJvVUgyYi9VUjJrUklvbWtldzJBckp3and3N2Mv?=
 =?gb2312?B?M1RXcUFWZlM1eDc3WUhUNHBpbWF5Qi9rS2JvU3BEb00xa29MV3pydjFEQWpZ?=
 =?gb2312?B?T0ZRUXBJb042czNIOEV5UFdlT1d0cklEelFSei8vMHpIMnpZNlh6MjdLZTI5?=
 =?gb2312?Q?t4WrNTTp7HeNf2WQ0TsuoMPWZ?=
Content-Type: multipart/alternative;
	boundary="_000_OSRPR01MB1159744545F10E644D8DB24CE9BB82OSRPR01MB11597jp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	mL70BodFtLus3fGV5Q6vZqYOvhSldgAl3byvlxq7/+71Kk4RE7UG/CqKIw5FAyHX6/Igssa+7bc6q0U0T8pCN3OMIk9kwA+nLNJ1fXht/3RujlMRWlHqLn9e/yOKNlaCIaXlqLbNek+/apzfIaVcwZnBfFR0vITRrFxBgkUGE8fdPlEWhpaXw+y3bFqwQiqVHb5IMOhdGPtAe2GVgtTeq+RXwWcTMHkyLGIVy3PNvzoLwMjYqfjlQ37dRh2DcrW627pansfN6O0Ci1aWgR/cU2DMSoZs+demY8pQiIx3nMQrV+kgz4sninPZvD/0e0v0iDlE/xt3aH7s2pNj9tvLvEPNJ46Ki8mWfoQ+hWn7OghDIbjsHiw3KwwERUjySxGwnOIrMfTwOLTg1TSxT+cyVGYtXsJ6JJBC2IyWHv2eQoUijE7Hv7KVhM4R60C/lYOqENB6Tl0UGmvV3IrQD6SiX4lzQo88xsBiD/CIPS62AqdnA7q3DcXjojJK6djxEEl/25dqRlFZbTIsAPiQFCA09W/P0nigNmOodmtQYsun5tPL1jcgk4UKXwRYku7RTwv3UoI30jZvioljUpX/5egSTuZJuD+DnQMM7yilTSZMyIV53diQx/6xvnUpyVXhaz/0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OSRPR01MB11597.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc085810-83dc-4f97-234c-08dd80b3173b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 09:01:23.3516
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wV3kYT2VHlUG1Jze+119KYSojxxtDOsn6hAoSMhHiheuteeE2VRdwn7S7lgjmZPTJb09xyb89YGhBybGqcnFWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS7PR01MB14430
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 09:01:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65206

--_000_OSRPR01MB1159744545F10E644D8DB24CE9BB82OSRPR01MB11597jp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgS2hlbSBSYWoNCmNjIGFsbA0KDQpXaGVuIEkgYnVpbGQgbGliMzItbW96anMtMTI4IHdoaWNo
IGlzIDMyYml0IG9mIG1ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1leHRlbmRlZC9t
b3pqcy9tb3pqcy0xMjhfMTI4LjUuMi5iYiwgbWV0IGZvbGxvd2luZyBpc3N1ZToNCldBUk5JTkc6
IGxpYjMyLW1vempzLTEyOC0xMjguNS4yLXIwIGRvX3BhY2thZ2VfcWE6IFFBIElzc3VlOiAvdXNy
L2xpYi9saWJtb3pqcy0xMjguc28gdXNlcyAzMi1iaXQgYXBpICdzdGF0NjQnIFszMmJpdC10aW1l
XQ0KV0FSTklORzogbGliMzItbW96anMtMTI4LTEyOC41LjItcjAgZG9fcGFja2FnZV9xYTogUUEg
SXNzdWU6IC91c3IvbGliL2xpYm1vempzLTEyOC5zbyB1c2VzIDMyLWJpdCBhcGkgJ2ZzdGF0NjQn
IFszMmJpdC10aW1lXQ0KV0FSTklORzogbGliMzItbW96anMtMTI4LTEyOC41LjItcjAgZG9fcGFj
a2FnZV9xYTogUUEgSXNzdWU6IFN1cHByZXNzIHdpdGggSU5TQU5FX1NLSVAgPSAiMzJiaXQtdGlt
ZSIgWzMyYml0LXRpbWVdDQpXQVJOSU5HOiBsaWIzMi1tb3pqcy0xMjgtMTI4LjUuMi1yMCBkb19w
YWNrYWdlX3FhOiBRQSBJc3N1ZTogL3Vzci9iaW4vanMxMjggdXNlcyAzMi1iaXQgYXBpICdzdGF0
NjQnIFszMmJpdC10aW1lXQ0KV0FSTklORzogbGliMzItbW96anMtMTI4LTEyOC41LjItcjAgZG9f
cGFja2FnZV9xYTogUUEgSXNzdWU6IC91c3IvYmluL2pzMTI4IHVzZXMgMzItYml0IGFwaSAnZnN0
YXQ2NCcgWzMyYml0LXRpbWVdDQpXQVJOSU5HOiBsaWIzMi1tb3pqcy0xMjgtMTI4LjUuMi1yMCBk
b19wYWNrYWdlX3FhOiBRQSBJc3N1ZTogU3VwcHJlc3Mgd2l0aCBJTlNBTkVfU0tJUCA9ICIzMmJp
dC10aW1lIiBbMzJiaXQtdGltZV0NCg0KSSBhbSBwcmV0dHkgbXVjaCBzdXJlIHRoYXQgIi1EX1RJ
TUVfQklUUz02NCAtRF9GSUxFX09GRlNFVF9CSVRTPTY0IiBoYXMgYmVlbiBlbmFibGVkIGJ5IGNo
ZWNraW5nIGxvZy5kb19jb21waWxlDQoNCkkgY2FuIG9ubHkgZmluZCBzb21lIHRvbyBtdWNoIG9s
ZCBwYXRjaGVzIHRvIHNvbHZlIHRoaXMga2luZCBvZiBpc3N1ZXMgYnkgbWFudWFsbHkgcmVwbGFj
aW5nIG9mZjY0X3Qtc3RhdDY0IHdpdGggb2ZmX3Qtc3RhdDoNCm1ldGEtb3BlbmVtYmVkZGVkL21l
dGEtZmlsZXN5c3RlbXMvcmVjaXBlcy11dGlscy94ZnNwcm9ncy9maWxlcy8wMDA1LVJlcGxhY2Ut
b2ZmNjRfdC1zdGF0NjQtd2l0aC1vZmZfdC1zdGF0LnBhdGNoDQptZXRhLWZpbGVzeXN0ZW1zL3Jl
Y2lwZXMtdXRpbHMveGZzcHJvZ3MvZmlsZXMvMDAwNS1SZXBsYWNlLW9mZjY0X3Qtc3RhdDY0LXdp
dGgtb2ZmX3Qtc3RhdC5wYXRjaA0KDQoNCkJ1dCB0aGVyZSBhcmUgZG96ZW5zIG9mIHN0YXQ2NCgp
IG9yIGZzdGF0NjQgaW4gZmlyZWZveC0xMjguNS4yIHNvdXJjZSBjb2RlLg0KQ2FuIHlvdSBnaXZl
IG1lIHNvbWUgc3VnZ2VzdGlvbnMgdG8gc29sdmUgdGhpcyBpc3N1ZT8NCg0KDQpQczogQmVsb3cg
YXJlIHJlcHJvZHVjZSBzdGVwczoNCg0KICAxLiAgQWRkIGluIGxvY2FsLmNvbmYgdGhlIGZvbGxv
d2luZyBsaW5lczoNCiBNQUNISU5FID89ICJxZW11eDg2LTY0Ig0KIHJlcXVpcmUgY29uZi9tdWx0
aWxpYi5jb25mDQogTVVMVElMSUJTID89ICJtdWx0aWxpYjpsaWIzMiINCiBERUZBVUxUVFVORTp2
aXJ0Y2xhc3MtbXVsdGlsaWItbGliMzIgPz0gImNvcmUyLTMyIg0KDQoNCiAgMS4gIGJpdGJha2Ug
bGliMzItbW96anMtMTI4DQoNCg0KVGhhbmsgeW91DQpMaXUgWWlkaW5nDQoNCg==

--_000_OSRPR01MB1159744545F10E644D8DB24CE9BB82OSRPR01MB11597jp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:=CB=CE=CC=E5;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=B5=C8=CF=DF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=B5=C8=CF=DF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=CB=CE=CC=E5";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:=B5=C8=CF=DF;
	mso-ligatures:standardcontextual;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:=B5=C8=CF=DF;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:=B5=C8=CF=DF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1509714220;
	mso-list-type:hybrid;
	mso-list-template-ids:-1530231592 -1232975384 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:44.0pt;
	text-indent:-22.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:66.0pt;
	text-indent:-22.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:88.0pt;
	text-indent:-22.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:110.0pt;
	text-indent:-22.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:132.0pt;
	text-indent:-22.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:154.0pt;
	text-indent:-22.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:176.0pt;
	text-indent:-22.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:198.0pt;
	text-indent:-22.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word;text-justify-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Khem Raj<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">cc all<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I build lib32-mozjs-128 wh=
ich is 32bit of meta-openembedded/meta-oe/recipes-extended/mozjs/mozjs-128_=
128.5.2.bb, met following issue:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: lib32-mozjs-128-128.5.=
2-r0 do_package_qa: QA Issue: /usr/lib/libmozjs-128.so uses 32-bit api 'sta=
t64' [32bit-time]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: lib32-mozjs-128-128.5.=
2-r0 do_package_qa: QA Issue: /usr/lib/libmozjs-128.so uses 32-bit api 'fst=
at64' [32bit-time]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: lib32-mozjs-128-128.5.=
2-r0 do_package_qa: QA Issue: Suppress with INSANE_SKIP =3D &quot;32bit-tim=
e&quot; [32bit-time]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: lib32-mozjs-128-128.5.=
2-r0 do_package_qa: QA Issue: /usr/bin/js128 uses 32-bit api 'stat64' [32bi=
t-time]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: lib32-mozjs-128-128.5.=
2-r0 do_package_qa: QA Issue: /usr/bin/js128 uses 32-bit api 'fstat64' [32b=
it-time]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: lib32-mozjs-128-128.5.=
2-r0 do_package_qa: QA Issue: Suppress with INSANE_SKIP =3D &quot;32bit-tim=
e&quot; [32bit-time]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am pretty much sure that &quo=
t;-D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64&quot; has been enabled by chec=
king log.do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I can only find some too much o=
ld patches to solve this kind of issues by manually replacing off64_t-stat6=
4 with off_t-stat:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-openembedded/meta-filesyst=
ems/recipes-utils/xfsprogs/files/0005-Replace-off64_t-stat64-with-off_t-sta=
t.patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-filesystems/recipes-utils/=
xfsprogs/files/0005-Replace-off64_t-stat64-with-off_t-stat.patch<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But there are dozens of stat64(=
) or fstat64 in firefox-128.5.2 source code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can you give me some suggestion=
s to solve this issue?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ps: Below are reproduce steps:<=
o:p></o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:-18.0pt;mso-list:l0 lev=
el1 lfo1">
<span lang=3D"EN-US">Add in local.conf the following lines:<o:p></o:p></spa=
n></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;MACHINE ?=3D &quot;qemux8=
6-64&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;require conf/multilib.con=
f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;MULTILIBS ?=3D &quot;mult=
ilib:lib32&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;DEFAULTTUNE:virtclass-mul=
tilib-lib32 ?=3D &quot;core2-32&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:-18.0pt;mso-list:l0 lev=
el1 lfo1">
<span lang=3D"EN-US">bitbake lib32-mozjs-128<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you <o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Liu Yiding<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_OSRPR01MB1159744545F10E644D8DB24CE9BB82OSRPR01MB11597jp_--

