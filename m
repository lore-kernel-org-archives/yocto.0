Return-Path: <tim.bird@sony.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20C0CA0EFA
	for <webhook@archiver.kernel.org>; Thu, 21 Aug 2025 20:27:27 +0000 (UTC)
Received: from mx08-001d1705.pphosted.com (mx08-001d1705.pphosted.com [185.183.30.70])
 by mx.groups.io with SMTP id smtpd.web10.798.1755808044501420301
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Aug 2025 13:27:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sony.com header.s=S1 header.b=Od4cUqNA;
 spf=pass (domain: sony.com, ip: 185.183.30.70, mailfrom: tim.bird@sony.com)
Received: from pps.filterd (m0209323.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LKG1ak010433;
	Thu, 21 Aug 2025 20:27:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=S1; bh=6N9B5LA
	iuCYF+V0kOd/7au2GL0SzPv9AfwoCbtxlxWo=; b=Od4cUqNAi7d37jsJCjhGlkw
	UpeBxDiU1gX7l+7CdWydJqJWXXxdd1/FFVO5EjYWKHPG8mrBLTg07jYF2Y5OZt91
	L+Uv40zQheKiJ4mhQjEG6iYnxy8CQuHWTeDIIEKNwp0/GckhuP03W1I1iohMjUCt
	0N8jJWrXZjW0PCevGTbIDekkxhwZGXDkVP1P109xqYp9G7NaopA7rMbg2RKRVUIJ
	A7DLgiNUKUwvYe9CSGdvRsoMk9QvsksGEIn4ZT/yKgNDlzvQFoRE/ZZDAc/6TJkX
	x6NSqjuBPQprUWIjueZllIlyzosquYjcmY6pe4N5UNuu67KGcJ74kMhq+kLLyng=
	=
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11on2080.outbound.protection.outlook.com [40.107.223.80])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 48n37esx0q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 21 Aug 2025 20:27:21 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UZ7hfk0R/4JzqBPOSiuaP3CoTfKl5wbkNtd4efCQG6rpfN8YdT/MSXSlEzdQNWXeOcI5J6KXEtYFxtySM8AB+STYyGmHgiTL6JwUjIIEMUB60vR3L9lQ7prjszPxuUSwrDhEAPdQP1TRBd4hgnBAKRf0iFwqjFvN2Nn8KyjuVQ5jmuyMXjgK/K+1Sb+DFXSoWl36FPWRkh3eEKcEnGJadiHnv3QmDQJ4eYfJJKpSOk4uXGCbLFNgLZw+dEH4owDhMHFfuQt1rqIXlohVf6P75E5qH4dlPJOpApqHozeIG8e1zOrYTG/5ohirtOuY9+YaJ1oiGWUiZ9Ozp89Pzb+C7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6N9B5LAiuCYF+V0kOd/7au2GL0SzPv9AfwoCbtxlxWo=;
 b=AIR7dnUL9dC+DnGaXBuwd33PWLQwIZJ6uWsxCHuEI9+wXAmneTGhsnFgxZEjgO+8HhQNKKlbwihTnntnYJ6JDcSvzCzoefpgkYTpb6WFqvSNqoDPE2loKWpI2Hk9gr7/GIMb4n5+hp121nDaSsiCXbmfKdunKw96iZTswdu/CD1lLpv5eUiUICFjzBo0hfHfctkFBvTNC37gN3t66zJ4j+lbugN+v5YGjAHKdJKF257jUp8lo2CgJAvm+2kAzPz6NrkpG82rQhKJJFEUbRAEMPXFaKA1m6/gX+rnlpWK/PgeuAp/YGh7thwFziUnClP7hB3HuecE5kswC6NmPIvLKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from MW5PR13MB5632.namprd13.prod.outlook.com (2603:10b6:303:197::16)
 by DM6PR13MB4525.namprd13.prod.outlook.com (2603:10b6:5:209::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.22; Thu, 21 Aug
 2025 20:27:17 +0000
Received: from MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197]) by MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197%5]) with mapi id 15.20.9031.024; Thu, 21 Aug 2025
 20:27:17 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>,
        openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: RE: [yocto] defining standard build targets in layer metadata
Thread-Topic: [yocto] defining standard build targets in layer metadata
Thread-Index: AQHcEbbRmdMFmUj+002+aa7CpRk0g7RtjYBA
Date: Thu, 21 Aug 2025 20:27:16 +0000
Message-ID: 
 <MW5PR13MB563252C3D31F984C8F8FC578FD32A@MW5PR13MB5632.namprd13.prod.outlook.com>
References: 
 <CANNYZj8mvVaL1+VFCgShCxLyPHEEuwRZm-jo4z4o0R+yqYfM=g@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8mvVaL1+VFCgShCxLyPHEEuwRZm-jo4z4o0R+yqYfM=g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR13MB5632:EE_|DM6PR13MB4525:EE_
x-ms-office365-filtering-correlation-id: 74d3ba76-4a96-484a-f0f0-08dde0f11f20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?NlVlOWxEN25nenVFS1M1RTR5VWRJbmJDNmgwRjhIOUFpR3A2WmljdklvQ0VN?=
 =?utf-8?B?VHY1YXZFUmRna0s1VW4rQzNFV3gxamlkWkdtVG5US0cyQ3pzUzdWM3hyVmtl?=
 =?utf-8?B?S1VkU3N5bm5qc0tEU3o3SkxyL1VhWldvQUIyc2REYWpNc0dZY3NsNFlqZHR6?=
 =?utf-8?B?WmtWa0NJaFlsUlpwRzk1US9Zbk1Ta2E3UHdvUmVJK09NbjRHTGlxeENPK1JQ?=
 =?utf-8?B?d0RXUHZyaUtmbWhFZVk3bk9EUTlUeFV4VkpDbkhTRWJxNStjeWlLdmtxM2tr?=
 =?utf-8?B?OGwrVXpuSjVJTXFnZUhMVDg4cks5dXlmKzNrN0QycExvL1lRN3oySndEVjFG?=
 =?utf-8?B?M0tsVGZoRzduN1BNbmVoVUVKbnpZT2lBb0w1azg5OVE3Tng3S2VWRE80L245?=
 =?utf-8?B?clFmUGJrSCt6RVB4U0RYdlkvSlJmQTJxUFZYMWVGbEt5bGl2R0dqbkVBMk04?=
 =?utf-8?B?SXFsOXJLOXJlNldodHdVM25nU1c0UzJPNGppa0F5ZkdDcytMKzNkZE9hUS9S?=
 =?utf-8?B?R1Joa0pkdUovQlFvdno3eXlKLzFITFNqeU9EaVVFcWREaW56clB1QzBCUnBu?=
 =?utf-8?B?c1NIQjdDcFN6Y0V1eUl2VjNkcGdRaFRucnFSQmFyZDBmWTlsRlZyZnZ4U2ZH?=
 =?utf-8?B?VmhWbEViYnhqYUxlblczWmlBVFZPM2RZNnZkVCtOMnFLTHRpUnVlMXNaUVVy?=
 =?utf-8?B?elBlS3RHN3Zaa0greUViRDNkTUhkNHozZUJ3Vm5JM1Q4dFlkcS93M002Vitx?=
 =?utf-8?B?eWxHaTRZTlZzYmlQV1FoZXJKR01OVFE2MTZTdytVcTlZck9YaGJNQTJKTlNZ?=
 =?utf-8?B?ZTZrODJqbmhTTWNzSkFYaEpQRmdYcmZpU0FuZXhLVEw2RG5aUHVCWWkrZUdr?=
 =?utf-8?B?Z2dpalVRZEVpN0xCMW0xcXMxaStUa3dTNzEwRTlqQURYNTJ6SGxXejY1b05N?=
 =?utf-8?B?OXpWYmU4T2JPM1dyWU1NVXJ0M2VrWTNOU0pnMmQ5dGZFbmZyNm9ZV25zZi9M?=
 =?utf-8?B?dllKSkcyNCt3WlFxVlpQaVp4dzA2SnBGeldrOFJDTHpFQzgvdG5ZWWRBZ1BQ?=
 =?utf-8?B?bXJmOUFaSUp0SVFOeEUybXNSSlIzdlNKdEsyWGNWSnphbnFHMEFVZFo4L1Vh?=
 =?utf-8?B?UmFzMmdISTFWSjRzT05YcEJmZ2QvR1Vka0J4MmcweW9DeWZuOG1ZOUxKQ0xq?=
 =?utf-8?B?N3JWNXFIcTkybUtjRlNZNCt1QXdsWDB5VjNsT00yYzRYckwwMkFFK1p3K296?=
 =?utf-8?B?ZE5PZVhZdUF0bCtUaVU3a2xiekk3STgzRHNZK2IxMEMreWdUa0hLOWMwQkc3?=
 =?utf-8?B?TUVkb0xUZWwwUHFBaC9MSnVmRG41TVVuUHBWdksxRjZ4cWtNVnp6T29jeE1t?=
 =?utf-8?B?MEJya01ra2NoMWdOaW1YRytoZG9UNERMd0lTU1RwSnU1Q2FXMHdVa3BtN2F2?=
 =?utf-8?B?RmVKV1FJWFkzLzBPMzYzdmdXbTlvU2RXNUJ3eEtzN3BoS2ZQenZER0wvbTdw?=
 =?utf-8?B?dkVXaTk3WTdtY0ZtZFRDS3FkQmIxOHlHZ1JiNW90UUdVTFBGU09wTENwd1JJ?=
 =?utf-8?B?UXp2VVdGODdQVEl6YU5zdE1vOCtkNzlTbGhJbkhVc2pjdmMwWWFieUlrMG5Q?=
 =?utf-8?B?RzRjMGEzbjMyK1JRUHk3MXJNNkZHVHRPc3BUSDNaMGF4OEVnVnk4RFI4UmxO?=
 =?utf-8?B?RWpsZy9EQzArcUpVZDRwZ1ZJK0tnRFE1dEw4TktHc20rb3RJdTZIK1hrMTlY?=
 =?utf-8?B?cTB1RnIzT3NZQklqMHVzZm51dXk5eWdNR2lpZ3RWNWg4YkhkajZlSmErTklO?=
 =?utf-8?B?cGd6MCtDRVJqdFpOczI4cmFEWFNiWUZXcEtaZ1VKT2EwSE5xUlNnRjJLaUhY?=
 =?utf-8?B?TThTN01ZM0ZtQWlpaEpBMFpod3BaWW9mUEpuUTZYUGJWRUkrV0tScis2cmdH?=
 =?utf-8?B?MjRpWlhmb0VxNE5WamFRTkwvNDZHV0xLNkZHdEY4Q1dvbUhCbkdROFljaGM3?=
 =?utf-8?B?dWlmdnhkdnBRPT0=?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR13MB5632.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?THhNMHpuOTRpTGl5Sk1vdTdIL2wvODhEY2tKbDhJTHYwK1pQcDIyclJDeG5U?=
 =?utf-8?B?RjJNcTB6NzJDZGtpMXpQZWZ0ZXBRbU5UMGJoV284TVNGd2V4NG9KOXoveEZ4?=
 =?utf-8?B?cTZ4dURiMWpHR0VtRUJleXBBOVkwUlN3RldqdGFDSmh5aHIydW1oSU5vcGxl?=
 =?utf-8?B?UEJLK0s5QU5FTEozUmNOc2R6NkRmcXBTTU1xZlpvaFVBTVJoOC9nb3ora1VX?=
 =?utf-8?B?eVFjL01ub3dtcHpvdFExdGxETm1LVHJCOUZMQVZXeDhLTjB4QzA2bWRlRGlj?=
 =?utf-8?B?NVFJZjRzTWJ2aHVOLzlSLzFjQ2lUNXh4U2hWZGZMM1kybnZUWWhnVytnYTlG?=
 =?utf-8?B?blpkeEJXbWk1V2J5M1FLY2VmczIwN3NvSVhXc2plbzM3bDR5R0grQkhCTXg1?=
 =?utf-8?B?MUl2UExQK3ZpcFJLaDBjOTZ5ellxNEpPUERlSzZjcndvczdDalM4WHk4SVRB?=
 =?utf-8?B?U0hRR3dhbDRRWjZTREtZSW9WU1ZVQlVDeml2NWxNcGRLNVYzQ0E1ekFUdjRv?=
 =?utf-8?B?ZytWQ2VXUmdrOVIrUm9xQ3cxQWtqQXA5SktGZHhFVlBUSTBFdy9uL2RVL3Vt?=
 =?utf-8?B?S1IvWW1CbGVHRjVCcTZ0Rzd3akNFTzYyeFdLdkRvN1JHMmUzWUpINC8wc2pT?=
 =?utf-8?B?NW43cG1oOFphRGVJc1RzbmNUVjQzMGNYOS9BT2plNEMrb1Arb2dnZGs4N3A4?=
 =?utf-8?B?cVpGQlJ5bjVWYXoxM1A2SEVEaVNWRmlTMHgrWkJkMEJVQW5wbnlqUTB6Tytq?=
 =?utf-8?B?VDdSUFlEMUhZWGM0MVVRd2tjenpZdnk0RGNhdDBveG9XVG1WUXgrVE1mOGFm?=
 =?utf-8?B?b1UzUzhpVVA1Y05OaG5Bc2dDd2tJKzh3L3BDMkxhclhlTlRvS0lIcDRTT3pJ?=
 =?utf-8?B?VXFUUmRRZUIyZEF1eUkvb2F6SVVBUkNSM3RIclZJM1gxblJGbjFocDRiZTJq?=
 =?utf-8?B?R1E5cVhsaGYzOEppNzBBMndEdzBUMmI4cnNEWmF1aVdYejcwZGRUK2M1MkJR?=
 =?utf-8?B?OUwzM0Q4TkZuWG9lNVVIaWxhVU1xdEhRSS9vQm5ZZ1lNekhxcWJKZlI2RWo3?=
 =?utf-8?B?TkJZblVEUW1PUEIvMzNvd1ZwK3pXbm0xbjJnNHJCUHVrRy9peldDN1N5Tmwv?=
 =?utf-8?B?Vko5dU9nbml1ck52UzVuM2dyRUVrSmlNcGpzaUpEZjJ5L0gwZ013NkZ6dkFK?=
 =?utf-8?B?cThLWUF3d2Q5bWRRNGdxS1pqL3FZRmgwc0FpKy9CaGhlVzNFRnNuYTFNSEg3?=
 =?utf-8?B?N2FzRlFnanNIOGJMVnJOaDZSdkpPZHdhZmxMeXErOFRtbVhsZ0pzY3NzaWNL?=
 =?utf-8?B?N2pLTVNOYXVVRDNJZmpyZTI2c2pDcjFxTGtaYlhGSXoxcjZOeHVkOHNOTndF?=
 =?utf-8?B?bTFRbmROMkhWMmx6cUZabnlxSDdhV1p1T0RuazNYL2NTWkxpeGJTOFJ3UzJU?=
 =?utf-8?B?Mm5tRzAzWGJhR2ZsVzc2NVptbHlQSkpFQ3RYWFlnRXdldnZQcjRjWGRBYis2?=
 =?utf-8?B?MUNVUnh0bG81eDRTUmp1eG1tMUt3R3BodXl2aTJpeVRqQmNHazhLYnFvYnZo?=
 =?utf-8?B?cXRGcWUwTFNZMHJoejVLZzVBcm4xUnJZTnpFMEw2bDl3VHR1eFNyNUp5U05P?=
 =?utf-8?B?YzRXYUY0YWlwb09tNHFMYVBBeDU4czdDNUhZbTlVUXRZZ0xYcm9rMkVpOVFX?=
 =?utf-8?B?TVBxUWROZ2lva0hKNkVhbHIvelNaamg1NkJaZGFhYjBES3hMMVU3TERRbWVm?=
 =?utf-8?B?cUR5NFNnRVdBQU5tVGMxcVJjd1NRbGx4NStZeGdka05EOTVXMjNGcUNQL0h5?=
 =?utf-8?B?dmt4VVlKZ29qS3pPckptTEs3czJTcTNhUXd3c0IyUGYrSjRBQkhhZ2tla1g3?=
 =?utf-8?B?SlNuOXYvMlZFWFdtbmRFVTRJUUVvOEZ4VWI2R1FnUG5pM3NWUEdiTklQS01Y?=
 =?utf-8?B?MnNTbWQyTVJMV3dOSllYOEUzV3Y2TUtSVUhyWkJjZkNqa3ZwaUc2azRqNjdZ?=
 =?utf-8?B?aEVPVjhXL3VtYjVOYmJDYVVESFFGSzZ4U1ptUm92ZUZkQlF5emM5Um1JRGNi?=
 =?utf-8?B?WmxaSGJ2alBPN1NhT24rOENMeVZkYWUyb3l4TnNLVnhnalQ0ZEU2S3Yzd2dL?=
 =?utf-8?Q?Fk6s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kf5whweuLxJDjf8uEqub1b8MOjW7mX/JneMnYU+Pzt5YCsbrzBabVaIXAMkfjEp4tVCrzSWNnr9pNxnaop8eOlbqt1GqHCRYeZJoFOHImoZOrENAWJzHtokya+xvDzT08+qy1sFMeM7ZzbaEK/l6k9+aLXEMCqVoZIMjfPjjLEWu9jeF3ZiLBRVDQbfj+4aBTT8TJouqStWOrgS1usUBK+yI0X0JTj7ttaYeWUS5FFZGFRcfI6N0BnSRuCo1Kmln/1ch/ex1wXOg0KHa2MTP3EL1XgqZvS1n4SzObcUnsJUr1RPNBvTD0A5CHbsmyvnVvGGIf4ro0JG/MVkvh6o/IrouXI1UXm3mGuPeXyJG3PtmKUHaiqajdPyJQvSQncsh9kMIGzMtzcrBsJhfRwZEbK7NxIRWXxwbEP/clu4ZB1P6Y7OLl+ZCqTGPk24ZBiJcv0PDhxzPaRJBXCCTYP7N00oJwaBf7K8Xf0UWt3kBLYYYx9NlwEATUadumVBItq/h+jMb9UG728A373osx0NQnEbOAfW1KSerxhvGQTJxQIYZJXiqeVIu8Xq5GJjESHEg2f6uCp/LPUZmuhtv4XFWqXtmypa0+AOQlJnAmlV++3LXOHAJq2lFmjXjwX32lnLp
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR13MB5632.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74d3ba76-4a96-484a-f0f0-08dde0f11f20
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 20:27:17.0197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hBpdDLgWItICjhjeRjhni8KTtCcbLUXBvPnphp1MbwbWOz8AoAjh0GrlxoGSeeX3+VDtzbp9TE8JR0B4hLh5YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB4525
X-Authority-Analysis: v=2.4 cv=btcVxEai c=1 sm=1 tr=0 ts=68a78129 cx=c_pps a=8S/DJttheiBikGf6adc0sA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=xR56lInIT_wA:10 a=iGHA9ds3AAAA:8 a=RNNe7reewsbypEd7zJAA:9 a=QEXdDO2ut3YA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
X-Proofpoint-GUID: mnu5jqH4kUHTUFHBAv933BK3ZJamEvav
X-Proofpoint-ORIG-GUID: mnu5jqH4kUHTUFHBAv933BK3ZJamEvav
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDIyMSBTYWx0ZWRfX61DwQZ0/2Tuv 5oLrPjeXQwsxfXQuvCSyBJgJGGBLVmTbo/p0SxPdn+uHvEmXhON2RyH53vByKHHzTeb/x8k98H3 DXVCCg70zLcaiomjdi8y5rKDzba3GBh8t0x+fZoVev7TRoJWbiYR6bGghSDRod/sMML8nyemiex
 U7x3uiLZStak1yjpg8o8ig82x3KyEVZhS4Q1OWmS4685/siArx2+A49B0yHuUX5nb6ZwtL7v1vR V1R8aYxp+zs6NAp+bOgcbrAeNsgXukgipVKKBob81jHkPjMJatU65q+43IRPuWFPjpxWOy0WaeP zkm2HMz1OIkoYYiscRGXwnSOAX8Sh5pciNIIGyU5LOLgyiF9pJbpAZSU3LBmmcm/FeqVz5uo9Mn
 N1wz56BcBerRkTt2P2/J4J7pErjuJQ==
X-Sony-Outbound-GUID: mnu5jqH4kUHTUFHBAv933BK3ZJamEvav
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Aug 2025 20:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65782

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9m
IEFsZXhhbmRlciBLYW5hdmluIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IEhlbGxvIGFs
bCwNCj4gDQo+IHdvcmtpbmcgb24gYml0YmFrZS1zZXR1cCBtYWRlIG1lIGNvbnNpZGVyIHRoYXQg
YSB0cnVlIGVuZC10by1lbmQNCj4gY29uZmlndXJhdGlvbiB0b29sIHNob3VsZCBhbHNvIGtub3cg
d2hhdCB0byBidWlsZCwgbm90IG9ubHkgd2hhdCB0bw0KPiBzZXQgdXAuDQo+IA0KPiBFYXJsaWVy
IGJpdGJha2Utc2V0dXAgcHJvdG90eXBlcyBhbGxvd2VkIGRlZmluaW5nICJvZS10YXJnZXRzIjpb
Li4uXQ0KPiBpbiBpdHMgY29uZmlndXJhdGlvbiBmaWxlcywgYnV0IEkgbGF0ZXIgb24gcmVhbGl6
ZWQgdGhpcyBkb2Vzbid0IHNjYWxlDQo+IGFuZCBpc24ndCBmbGV4aWJsZSBlbm91Z2gsIGFuZCBp
c24ndCBpbiB0aGUgcmlnaHQgcGxhY2UgdG8gYmVnaW4gd2l0aC4NCj4gU28gSSB0b29rIGl0IG91
dCBpbiB0aGUgbGF0ZXN0IHBhdGNoc2V0Lg0KPiANCj4gU28gaGVyZSdzIGEgcXVpY2ssIG5vdC13
ZWxsLXRob3VnaHQtb3V0IGlkZWE6DQo+IA0KPiBCQl9UQVJHRVRTID0gImJ1aWxkOidjb3JlLWlt
YWdlLW1pbmltYWwnIHRlc3Q6Jy1jIHRlc3RtYWdlIGNvcmUtaW1hZ2UtbWluaW1hbCcgIg0KPiAN
Cj4gZGVmaW5lZCBzb21ld2hlcmUgaW4gYSBsYXllciAoZS5nLiBjb25mL2Rpc3Ryby9wb2t5LmNv
bmYgb3IgaW4gYSBmcmFnbWVudCkuDQo+IA0KPiBBbmQgdGhlbiBvbmUgd291bGQgYmUgYWJsZSB0
byBydW4NCj4gDQo+IGJpdGJha2UgYnVpbGQNCj4gYml0YmFrZSB0ZXN0DQo+IGJpdGJha2UgZmxh
c2gNCj4gYml0YmFrZSBkZXBsb3kNCj4gZXRjLg0KPiANCj4gd2hpY2ggd291bGQgc3RhbmRhcmRp
emUgbm90IG9ubHkgc2V0dGluZyB1cCBhIGJ1aWxkIGJ1dCBhbHNvIHJ1bm5pbmcNCj4gaXQuIFRo
ZSBwYXJ0aWN1bGFyIHNldCBvZiBnZW5lcmljIHRhcmdldCBuYW1lcyBhbmQgdGhlaXIgdmFsdWVz
IGNvdWxkDQo+IGJlIGRlZmluZWQgZGlmZmVyZW50bHksIGJ1dCB0aGUgYmFzaWMgaWRlYSB3b3Vs
ZCBiZSBzaW1pbGFyLg0KPiANCj4gVGhvdWdodHM/DQoNCkkgZG9uJ3QgaGF2ZSBkZWVwIHRob3Vn
aHRzIG9uIGltcGxlbWVudGF0aW9uIGRldGFpbHMsIGJ1dCBJIGhhdmUNCmV4cGVyaWVuY2Ugd2l0
aCBvcHRpbWl6aW5nIGNvbW1hbmQgbGluZXMgZm9yIHRvb2xzLg0KDQpJIHRoaW5rIGl0J3MgaW1w
b3J0YW50IHRvIGhhdmUgZGlzY292ZXJhYmlsaXR5LCBhbmQgdGhlIGFiaWxpdHkgdG8gc2hvcnRl
bg0KYXJndW1lbnQgbGlzdHMgd2hlbiB3b3JraW5nIHdpdGggYSBjb21tYW5kIGxpbmUgdG9vbC4N
Cg0KV2l0aCBteSBvd24gJ3R0YycgKHRhcmdldCBjb250cm9sKSB0b29sIChzaW1pbGFyIHRvIGxh
YmdyaWQpLCBJIHN1cHBvcnQNCmEgJ3R0YyBsaXN0JyBjb21tYW5kIHRvIHNob3cgd2hpY2ggdGFy
Z2V0cyBhcmUgY3VycmVudGx5IGNvbmZpZ3VyZWQgaW4NCm15IGxhYi4gIEkgYWxzbyBoYXZlIHRo
ZSBjYXBhYmlsaXR5IHRvIHNwZWNpZnkgYSBkZWZhdWx0IHRhcmdldCAoaWUgYm9hcmQpDQp1c2lu
ZyBvbmUgb2Y6IGEgc2V0dGluZyBpbiBhIGNvbmZpZyBmaWxlLCBhbiBlbnZpcm9ubWVudCB2YXJp
YWJsZSAoVFRDX1RBUkdFVCksDQpvciBhIGNvbW1hbmQgbGluZSBvcHRpb24uICBTbyBjYW4gZG8g
c3R1ZmYgbGlrZToNCmV4cG9ydCBUVENfVEFSR0VUPXJwaTQNCnR0YyBrYnVpbGQNCnR0YyBraW5z
dGFsbA0KdHRjIGNwIHNvbWVfdGVzdCB0YXJnZXQ6L3Vzci9sb2NhbC9iaW4NCnR0YyBydW4gL3Vz
ci9sb2NhbC9iaW4vc29tZV90ZXN0DQoNCk5vdGUgdGhhdCBJIGRvbid0IGhhdmUgdG8gc3BlY2lm
eSB0aGUgdGFyZ2V0IG9uIGV2ZXJ5IGNvbW1hbmQuDQp0dGMgYWxzbyBzdXBwb3J0cyBhICd0dGMg
c2V0ZW52IDx0YXJnZXQ+JyBjb21tYW5kLCB0aGF0IGlzIHNpbWlsYXIgdG8NCm9lLWluaXQtYnVp
bGQtZW52LiAgSXQganVzdCBjcmVhdGVzIGEgbmV3IHNoZWxsIHdpdGggYXBwcm9wcmlhdGUNCmVu
dmlyb25tZW50IHZhcmlhYmxlcyBmb3Igb3BlcmF0aW5nIG9uIHRoYXQgdGFyZ2V0Lg0KDQpJIGhh
dmUgZm91bmQgdGhlc2UgdmVyeSBoYW5keSBpbiBteSBvd24gbGFiLg0KDQpTZXBhcmF0ZWx5LCBJ
IHRoaW5rIGl0IHdvdWxkIGJlIGdyZWF0IGlmIHBlb3BsZSBjb3VsZCB1c2UgYml0YmFrZSBmb3Ig
ZGVwbG95DQpvcGVyYXRpb25zLiAgSSdtIHN1cmUgaXQncyBwb3NzaWJsZSBub3cgd2l0aCBhcHBy
b3ByaWF0ZSByZWNpcGUgZmlsZXMsIGJ1dA0KSSBzdXNwZWN0IGl0J3Mgbm90IHN0YW5kYXJkaXpl
ZCBmb3IgdGhlIFlvY3RvIGVjb3N5c3RlbS4gIE1heWJlIGl0J3MgYWxyZWFkeQ0KdGhlcmUgYW5k
IEkganVzdCBkb24ndCBrbm93IGFib3V0IGl0Lg0KDQpKdXN0IG15IDIgY2VudHMuDQogLS0gVGlt
DQoNCg==

