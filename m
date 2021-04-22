Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.84])
 by mx.groups.io with SMTP id smtpd.web11.13012.1619101136988392332
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 07:18:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=RhE6xh4e;
 spf=pass (domain: windriver.com, ip: 40.107.237.84, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXoe7FKG5pDDZ/hEpT2/jCNuQDjfHL/UDF6ER1wdQfYc4NcriI45IB9LmNmLPzVwi22ia2aqulfrK45IScetX3mkzplC4AAkzNu2v7bGY+47Ki/GcE102mtoZILdHZBiTnpu7cd8K/Udrt7MaCleUtMQBWvHtn3as9vCTE0r0IxnSw566MfR+7E0RqtMFanmb4fP4wXm/D99PCgcrogfj4ePTSbDylKmoHG9NwHX3N4rj9b/zXQzo7T7rk8CUg6UV2uGWpxzZvadb9uH4XZXXi7XSraz1S6I3KVEdXIJLE9k3QNBA1wCbtZEbDxHoK/9oMx1WMxmhlg2Nr6IQwMptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PEuB/+dZEuBb6/1xkOPT6+mht7Q3E9q2Kx0wQZhJdBE=;
 b=BFPLUluD/hsTkYBRNBsqxl0ZcGq4H8vVmJnGrH9MvwgA45IEJf6Im+I/G4ba7/r2pPVdGbl7+AqN/YQ3A8Zy4eOllUxO6D4LtTtG5mdFz0EPTSFsd9RChBqaB/gwx+NfMC6asdcJ9DmxWAAv09uTlR+JaDiLuioBxcYTKwzAmsGiN+x5qV/AQQXsOXFYvwDxh2fcD8mMfW0V1XdMI9KasjX0qeCeb2/NS36zHsg0PROV+H6kWmwYyyGsU+eyoOGR+zrLj2lASg5ZXgYUsGKP0vazNtYlZamrHArw9RiTIt0CQfsNvtELHNF4feRfeVa8FOBghMEARMxExet+r9JfHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PEuB/+dZEuBb6/1xkOPT6+mht7Q3E9q2Kx0wQZhJdBE=;
 b=RhE6xh4e50pnyT8Y2rRUJUcLUsWgnEGfa7u+clihPj6wvWA8jAOtZHSYeIiJeeLGEmmhaniW+sO+Lf8fi5wnlmW7SGp3eRtWCuDqfGqPDIXWLcGrFD2gwY4wz4Lc0YMD4MVHFbB+UgKbAywTqS5K0RRLENN1r6eZqu6Y6yALk44=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22; Thu, 22 Apr
 2021 14:18:55 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%8]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 14:18:55 +0000
Subject: Re: [yocto] [PATCH] [yocto-autobuilder-helper 1/2] config.json: Add default MACHINE qemux86-64
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: yocto@lists.yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <167770699A3D62DE.13049@lists.yoctoproject.org>
Message-ID: <054ed3fb-5391-f5d8-53b8-d64d57e83b14@windriver.com>
Date: Thu, 22 Apr 2021 10:18:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <167770699A3D62DE.13049@lists.yoctoproject.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: BY3PR10CA0001.namprd10.prod.outlook.com
 (2603:10b6:a03:255::6) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by BY3PR10CA0001.namprd10.prod.outlook.com (2603:10b6:a03:255::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend Transport; Thu, 22 Apr 2021 14:18:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 732477b7-453d-49c5-d708-08d905998f7c
X-MS-TrafficTypeDiagnostic: SA2PR11MB5036:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB5036BA7A1D1F8F6AAC1AD86380469@SA2PR11MB5036.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VJ0imJ6Vqg3ufjFNOMgQKFUBE51rldh8l499/sJ7q7J0iTcuVHmsTUtU9gI7ErYBlaSxRqNJXm/r37GBtikj9mzatPPjQ4HA3EfLGUAOm31zoEoPsiUPzkuj7bDPXdsZOVOhrImUgV6b1wvUsYJYXTw9k1qE+bPRdYQ3XktaMKpp5ylc0L0THPLvmUaDGPHQvCxDz/rvAB1zQJ4wiBcZmQcjJLJeEQ4zFaIW2lOA5QOy8/ghB897aAC9olDc9C49efGTjIOjCjlA+ziro/NQ7hmObNOs1hQL0bmwDYqiJRrjUN0JnDnGRjvZYU9BEKpxXwLB3Ho8KNtyLxcSUkSNH4/DdX2xV5g6oj1afGh4qynrzHdtHjyWni9xvEma3KqxkVNBl7rZLZuYxDqyJjPqCVoY3cnLBUEaePncrrW7thNRm2kT7jLiqGXmFNrtM3pLHTGc98k4nU/P6PBouCBPmlkYY7Y6LM3+MCTzacloQ0CnvCcJjXpxlt/esg34+GXYblIOUJDSx9+StMjKvn65aigMDCrgcTjo6+FX8IOb9Mtw06V4PosSqA5roWCETneNhmSX6pNqnjb0g8/OQ0/mxO1tOQsf53lHdleK94TMIT2CKpxDSuwiar5GYsIzq1wogHlZkUdi9wY3N++Ic197pt42lbSebA2HWwpVawfbOhem4aM/uANkRvv2b8/K9WmZxudAJYErxuZEvxHfx/Wnab/QbLJkuN51j9/UMwRlEJY3E1iDpxmJSDg0rnBf1IQfI9lo/Xt2b90ZNLjzKnGzx1Vm6GM9vPx07dyJL5E7PYs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39840400004)(376002)(396003)(366004)(186003)(26005)(2906002)(66946007)(38100700002)(16526019)(52116002)(31696002)(8936002)(66476007)(966005)(5660300002)(8676002)(6916009)(31686004)(6486002)(53546011)(6666004)(66556008)(38350700002)(36756003)(478600001)(2616005)(86362001)(956004)(83380400001)(16576012)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?WEdEM0J0S0VpZVN2Rm81c2pzL1FyMDRDU0NTbGJGa3BzSmRacldlWDNNaXpM?=
 =?utf-8?B?RHFBMUd1dERoYTZGcGNqUDBSR043WlBlcDFhTkJGNlVKcDNseTA1Vmh2bWMr?=
 =?utf-8?B?ajZwbmJtU2JJa1R0K0krZWlqc0NxUWNCMWwrMVAzaXJHajdBQ24yeUpOSHc2?=
 =?utf-8?B?aElud2NTWXp4VzhVT1VVaW43NGtEeGgwNU56c0k5WjhSeXM2QzRWeWxZbUk2?=
 =?utf-8?B?SDEyZDh2QWNqRE1UMkRaUGZlS3JxcG93cGJKaWhnWlRuMnp1dHZQM2c3RFVT?=
 =?utf-8?B?emZ1M1A4Y1dGdTl6aHZObDN2dzNRRlgrbG12b2NXTUxEMUlVQUlITWs1dFZn?=
 =?utf-8?B?YlVYZlgvby9jc253cnVudUpTZXVlTnlKUDZNNStZMGUzUmt4NCtMWU9SME1J?=
 =?utf-8?B?TStGaVdRNDZIRjErdjhUWTFOKzA4ak9Mek9xUHJ5Q2VHUFlqNlpVdlZIU2pu?=
 =?utf-8?B?elJQZDc3NTVZY3NpK0x1a2gzZHY4MTFJMnVEK21aQ0RsRkpyKzZHY3hzbU02?=
 =?utf-8?B?QXIzN0xxaUNMMC9HbkluUnVzbWJWM1dJWEpOVDRuSjZaYkVZYlE3QW5nem9j?=
 =?utf-8?B?ak1oKzhETTNScGZOV2VwR2RRS0FPY1FjNW80Y0ljRkRUek1lVkUyYTlydUdG?=
 =?utf-8?B?M0RNSlZrQ1gwTjYxbStybGZ3c1N6ek5YQm1XMnQ1TnB0cUVvcHY0SVZ6OFVm?=
 =?utf-8?B?WnhHeUM1WklPcTNrM0h6RlUvdkw2OSs2alNza0s3ZEo2cDNYcG9mb1QxaFU1?=
 =?utf-8?B?a3JSSmpUazVMZ1k1eXdoZ1JPa0JkSjVWcGIwekNLRVpuUFpRV09KZjBSbCtn?=
 =?utf-8?B?S0JjT09DSm1TZnFUQnFhR2luSzVQU000SGlYS1MzVXorZ3NjdWNqRUttSGM5?=
 =?utf-8?B?NmxjTzJpcWRhZUhxR2pGZkdxQndqUzZhYTFzQ2tIaGtLNW1rYjl6MmoraVk0?=
 =?utf-8?B?MG1rZlFranJmNEU3VmlaQzB4NUN3WEtybTBTaVMvR0pXOGJGUDJ6Y3ByeEw4?=
 =?utf-8?B?YkFSWmRWVG91NDA4NmZ0WDJleXNQZkFZREYxSnlyMUE5eWk1enQ2YWR5bVg5?=
 =?utf-8?B?ODV3V3pVaUxHbmRhNDBJbDQvN2Fjb2Y4YlFXNVhWM3VmRDhNNG5uRjhaelM0?=
 =?utf-8?B?SHZCYnBXYmF2a0FMRWFQd1VUdUtqOEE3a1dOTXFuRVNkci9mSHVmSUw3eUg5?=
 =?utf-8?B?ai82UlhUUlkvZHN0bXlvYUFhT0pWaTU1ZmhBRCt4Ym9POStBSEpQSU9lQzV1?=
 =?utf-8?B?cmRhT3NpM1A1eStibG14bmtkVjNEK3hTNllKbkg1dThHNkhkemR0aHJQNW1S?=
 =?utf-8?B?RWtldlBBS09oWVRYUXphbjNFU2ZydkdTaXFIU2dTbEhtajZZY2NQeERtSjBy?=
 =?utf-8?B?SWNOQlJLSUFZc0hEc2hlUmQ2bWk0RWVzckJHalFDVkdwdktXS3RNQWRxSnBN?=
 =?utf-8?B?TENyT1JEKzNaS3JoMmlpM2RuSjl2dldweFA4VFZEQUN0c1d1RkhBMk9pZFFI?=
 =?utf-8?B?aS91WmFYdXBxZ1JLRVd0dzlESVFGTTdSaE4vMlBXeExTWEtUL1IxTmhLYlNQ?=
 =?utf-8?B?eXZzSG9DYm5OVWVzY2FDaFBVdmQ5L2JzTnc2ejhPaUZJdnNhT2pxZ3pnaTha?=
 =?utf-8?B?T0k0eVNabEs3cUFNdFNXZnF2dHVhNVBiT2ptRS9hY2I3ajFTSEt0YkRDLzE5?=
 =?utf-8?B?S3N3ZXp3QnZDQU1KWFZHd0k4SXl4NmhrUHJua3F1c3lxek5LeFhIRU5UZWI5?=
 =?utf-8?Q?TJZoV7DD8wMWI0b+DgZxm25p5ENIL8hQE5+P/RO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 732477b7-453d-49c5-d708-08d905998f7c
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 14:18:54.8569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BBkClFTzU4rqdrOZUNvJavI0yqLZHFrtI6cqybaAvB8vPRKiDwlqbIN+L5+BY5AnC1C9JpL5P9aBgbWJj/1Fpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

+cc RP
On 4/19/21 10:36 PM, Yi Fan Yu wrote:
> This is the default oe-core MACHINE value.
> 
> Prevent error-reporting tool to report simply False.
> It was seen in check-layer where the MACHINE wasn't specified.
> 
> [YOCTO #14208]
> 
> Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
> ---
>   config.json | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/config.json b/config.json
> index 962d8ae..2d1a698 100644
> --- a/config.json
> +++ b/config.json
> @@ -26,6 +26,7 @@
>       "defaults" : {
>           "NEEDREPOS" : ["poky"],
>           "DISTRO" : "poky",
> +        "MACHINE" : "qemux86-64",
>           "SDKMACHINE" : "i686",
>           "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
>           "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
> 
> 
> 
> 
> 
