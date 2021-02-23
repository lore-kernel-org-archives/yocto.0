Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5677.1614054282322505079
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 20:24:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OgLIRpBx;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yifan.yu@windriver.com)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2062.outbound.protection.outlook.com [40.107.236.62])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1A5C638C06A1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 04:24:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V4quCHVjzXwFeClt0Aul8CClSGsxZT8Vu+MF7gmMH9jBipjAwpHXYUAZ/5vgEU6b8194SXYW5AcaRfeFmzwzv7PC3EDnR4StX0skAI/7iSe/eCCMK38xXZXku4krBWgxLBLddgiVyNrSnSj/GVo4VypGrv8U4SgaXjEPd2JvrskBFi84SDDd5nB3mrQRHnKocOW9BWhZP6Ey2ChBCJYoBPO/ifuxXXm7XKUtctUeLdVX0DLIvABoZTAHjBOjcJxaLLnebIqPN9KULW0p3d/e8ceHKoVld5WvX90P+Y+uorShbuRMrxUciFxRCf4uCqYyPd/eOD6YrWY/Ew991CQGCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HpmacipznJ7DoHgFbJguE/UP/DaChLRc3/toQK57vqI=;
 b=V4xWd6cU5z54gALvHontfozKPc5mfUi+jkFz4P/uz0kB0qPKQdurYp51hCY67bHUMIgnA/TnKGLTtGBnvDak53N39KdW0SLOVNS91khMAyapSlOV8H6qnT6LRMZvB19odIU+3YUu1/5UBY2N6EUkKHA7WbJouw24FlYgC/LKmzeqyjQpylGH9GYfHeHI6b3wvG3umXjq8BJ8WxYgN3XkutgTMYEMZuadfc9j2Bov4iJtHw90romkeT4RZrSvWN/bVo83u/y+UUJOBHRdaQL7tFB9NXyxvxhQls7XKIbpgb85E1VnbL2deArLJOKiX3e+cPcjTX720wwe0IhOhZCDDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HpmacipznJ7DoHgFbJguE/UP/DaChLRc3/toQK57vqI=;
 b=OgLIRpBxz2EBiEj/vrHi7U/Kmp/4dzMWMW8JGq7BY/pHRdCD7HUqF5DvnZITsgI4PyXIZUgP8pGCTvlFDA2quN5YFooWgJr1qsSDhpDESVUSTT2X9yza4EI3XTzs99KaylD/ZzHXkVrmqN6hFz6VLa4f9BMbV/GBQvD/XcobbPs=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB2607.namprd11.prod.outlook.com (2603:10b6:805:56::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Tue, 23 Feb
 2021 04:24:40 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%8]) with mapi id 15.20.3868.033; Tue, 23 Feb 2021
 04:24:40 +0000
Subject: Re: [yocto][error-report-web][PATCH] parser: make contains_tag ignore non-str fields
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: yocto@yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1662D8277DF9F532.2349@lists.yoctoproject.org>
Message-ID: <8d66dade-2487-6afd-e3f7-ddb2920546f5@windriver.com>
Date: Mon, 22 Feb 2021 23:24:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <1662D8277DF9F532.2349@lists.yoctoproject.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: YT1PR01CA0143.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::22) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by YT1PR01CA0143.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2f::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29 via Frontend Transport; Tue, 23 Feb 2021 04:24:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50a4b8d8-dde9-42b7-58f0-08d8d7b2efb1
X-MS-TrafficTypeDiagnostic: SN6PR11MB2607:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB26071C2DDA330A44938E478180809@SN6PR11MB2607.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	D6OIxONmQxsHiR1aMo6UV0l2cRuprjxrMFgh7WvUFlMymzJG6DIuV03jd8xvmaQWf/HEFwPR5x1MqqC9XQS4kXi765zhoZ27TSTMwVRWIQtrVerIkJYEtIccVTpb3hsHlVWYMYzssKHW1X5KsrAsoSWMKI4gEXAvPUPLF1O1GrSvax8X7CV1sJVNGk9PCCRelPH2C/7ofTdLdgiCFrwvfFVEskMsWf8mFbdDZCYO89Sbqf0duEzLewFs+TmrROOp3OLoTiSbtK2N+6tOXay0Abhzf0amGCNRoL5nZXYhOzDQ8m13cK2kePK1DSF/tTmbfxGRX0bBxSxYh/GNQR44CBNaEmEdneC/sRX9OgbE73b9ArcuiVvbzExlYJVsDW3IVoAinwlmd5cCZurz9sedpEFn6Zt6nd3GztIePh9tJonX+epyDSNwIGkq6reD8n2uY5t9G3fu/uvdKcoyApjfPkhNf+PoqDuOJJEOP/g+a2mR+H2H3l/2KuT39cWySDNhu2HzFOxxJqQMhSFvrEh7seGbVfac+7fm2/0jRf8SP2Ebq4knSDTINfEPii8b3ExGP0aX2gHTI1FbFCwEaxYwLqdERSewJ6kxAiyRy5J3zr4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(376002)(346002)(366004)(396003)(136003)(8936002)(16576012)(316002)(52116002)(558084003)(31686004)(36756003)(4270600006)(6916009)(66476007)(66946007)(66556008)(478600001)(6486002)(26005)(5660300002)(2616005)(8676002)(86362001)(31696002)(186003)(16526019)(956004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?MlJCcDhZVXJHUyt1R056a3FQQkUwTWtIWmxzL1BWWS94OWRtOVcwV3A0QmlK?=
 =?utf-8?B?ZDNuQkZVSnVzR3BhekVob09TUUN3TlRrbUVTNlpyemZScW1sSGcwMVcxRmdw?=
 =?utf-8?B?emtwb3lqcVRDOUJtd1hwbnVjTXdwYnVJMHZIL1lucHZOR1lJUk1ZZC80U2ds?=
 =?utf-8?B?VTM1Y29UeFFlZ1lsWm9ITjRpbW5ZTmZjdGpsVDhRUERNREhVVU1UN1JCRG9S?=
 =?utf-8?B?MGp0UG4zcjhncnJKNVlzTkVuSnI0aXFYTWR3dDlESE5ZZk4ycitIRHp4Qkx0?=
 =?utf-8?B?bk44bDZkTFdSOUVNd0Myd2hvOGxHeUlhajlRNmRnY2VuYTBOYzFDTFpuY0Q0?=
 =?utf-8?B?L0JWWGp4OHNWRnVuSXpOVlVqUTUyYmhZMzd2TCtQNG5jb0V4RWpPdnZGWUhl?=
 =?utf-8?B?Z0VRY1gzMUIraVJ4dXZBejdJZGprWnZwTU9QNml4dTZCcnRRTnpURWNRMmtJ?=
 =?utf-8?B?cnZhYVpqSTRUa0I5VkdYRG5sMXlDQnNNRXBuUDFzcTdlUk9VUjJNaFM0Q2JW?=
 =?utf-8?B?elArdjBTU1lNZm44ZGdtYThWY0JhMklOVHNNaFpBeHZoNVVxaGRVWVZGbEJm?=
 =?utf-8?B?MXdGUXJrRzRiTlVCSDBDb1k0SGpSYXJhUkRENDZWQVVXRk5LbXp4SmJHc0hH?=
 =?utf-8?B?ZFFDSGhTRGNCQ2Nheks1QkVEKzFwSnFneGRJc0lpcUR4ZmRQSFJtM3o3TTll?=
 =?utf-8?B?UkNXU29SN08zQXZnOWFmU3NLWU9KK2xHVmJpbThRc1Q3bkU2WmVPbUcrclVQ?=
 =?utf-8?B?RDFycWRHaExvbGZGOTZSYWlSU0t2QWtnaHB0SWR1Rm8zWHdXMm8rbTlaczlR?=
 =?utf-8?B?aDd2YjhmZXptcDk1VnNpVzBNTXdWY0t3NXBEalQ1My9SMmlHQkMvbERrUFE2?=
 =?utf-8?B?YlpBUUpORlZOK3NNSTZMai9mZmNNd1hEUG44d2t6Wmgya3M2MzhWOEpjUVNs?=
 =?utf-8?B?NFhtMDBNQ2FIZTV1U2Z1QXNYSmNRK3IzUlI2bWpnZk1uNGUwQy8va2VNRDFC?=
 =?utf-8?B?T2k4ZXlyUHVCYTVtUlh4bTdIUlJIeUpPa05pa0FkWjZWMW95YUhXNVp2d1FN?=
 =?utf-8?B?TGd3SG40aGVQdWNXZVo3TlVTdFV0bkgzNWRmMFhxVW1xY0w0RGJwbTBXUU0w?=
 =?utf-8?B?ZVlOUml4Q3pLZU9uNUd5QkxUNGhNVUx0dmZhWnNkV1dvclJDNG1MMlltNHp2?=
 =?utf-8?B?VENFWVl2ciswM2pYRjZ5NS9RMlY1dTRzcVVLN3MxamN4VGdrdnZJMDdaRXpV?=
 =?utf-8?B?VUNJNEFwV3JNYUk5OVNsclZlS3RLTGhMSkpyQXBCeTNZbmhCUlYxNlBVZ0h3?=
 =?utf-8?B?SktmcTNQaDVEaFV4OURXMGZtemNrWGlqVnQ5eUxNSGdBdVk0ZlY4elNUR1lz?=
 =?utf-8?B?UHpNa2MwY1pHbVR0YkQxem9Sc3lyRmc3eWNOL2tNS3NudDB3S3JydDlwckF5?=
 =?utf-8?B?d0s3MDVNL2lCZFRvVEVLelYrMC9NL05HTFpGSS81ZkxBSHpGYkVtSnBGdGkw?=
 =?utf-8?B?T1d5UUFlTnIybTVaWmJQa1ZrcWJ0T1Zwa2UyZmpzNVdMeHpFOFBMVVgzYnph?=
 =?utf-8?B?QTFpY013VVg2VWFueEhRcFhYTmFVVEhBaG5WQjR4QzgzRzJKNGlUTFBEdmtJ?=
 =?utf-8?B?V1F2aEk5TUNHVlVQbC9nallpTkd4M3o1SFdTSml4ekNJUFVpNXY4a1NZeWcy?=
 =?utf-8?B?LzRMWU1yTU5FUTFGZktrK091UFlNRXViQmxqcnUzcmhQQVYxM1ZLWjlHM0hv?=
 =?utf-8?Q?ZmzHkKwX9SQ6e+m9QAJZnDsJ2b46GqG2+yjZUaZ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a4b8d8-dde9-42b7-58f0-08d8d7b2efb1
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 04:24:40.1499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bdre8rLMfqnGBeYB9VKEKZvtU0a/JBWDLC9VN5+VwXyKztGcvoykizb3JAEo7XCjl6S7JDwyIK/6k2sCDGfZig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2607
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

RP,

if you want to get this merged too that would be great.

yifan
