Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.57])
 by mx.groups.io with SMTP id smtpd.web08.2808.1616010902505400774
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 12:55:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Uc4XHTzf;
 spf=pass (domain: windriver.com, ip: 40.107.244.57, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ASdrk6CyySE26jpSFpfDq6me2khZhM2LUVGwkuJjLQq8hsDdl4i05BcXdr3YLdyVaiOaMVTHldB2hHNPDSnZK+SIMXPXHuxbX5MnWxGpw6zpsVwINUHf19TX5nwLEnG8SDtk7UKtIYbzqVglHtnjauHHY67zr3VsaFZ60OdvOYtbKglpMphhiv8fWR5J0QvBf5og5x1edpjvjNwU26v8TCEsAULMqUREqBd0c3Hr04+1m0ex/4rt2Tm3B5affe1StHroVMYi3K4LctsEpgMZ5z/U3URiuPxzv+VxbFBYFTh7U6Fpm9GHmUH6bkv/UQuqjr7mx1uTJyG4nqpDg3I3aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PzBDOwA1RJw/Yrr2LIw+O+qFrhuNHJH0Nmjh6YJzPkI=;
 b=gf+uInq7N05/uat46MVTtIyw7oUHuzItawpJRzwaiGK19DDkbZ/RHXTGiY/3lpWyFbC3XmBEAnAg61BBH4hpoMobn7DF0PymPzC02BHlsRcleEgIFUHohK0AgEdxjqQRHi9eZB/n2t1kMftnEFKqYD+p66Ya2lKSIOnRFrWvwZ7XjjJ1D8YW1iikItQLknUM0i3KbxASHqM+Rq05hVh7bogC1G4U8iz1d+L4TYSAoauRCFVTICFWpip4EsPF+j80pSU/T0ayIGcblMhfpYXLsP9KVKG88/1yQJ/K+oPRUkIAd9LlYhk0I11vdmxf5kvBCY+lxX/luzIMzYnXFUgNtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PzBDOwA1RJw/Yrr2LIw+O+qFrhuNHJH0Nmjh6YJzPkI=;
 b=Uc4XHTzfFiKzJfNt57NKxKAszJEjKdbCSIxumdmCIQmP6dXbiJfsRvPWeGOPrhkTlOIIh+L+ItBsndHApFlOUGJh3SDaszbY82wHwgjzbKRwqgxmkmrI5P4AufSRbLZBxmPwiok012bKIv4J09bkUSUhK7XuveP6FqowcHy9lX0=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Wed, 17 Mar
 2021 19:55:00 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9%4]) with mapi id 15.20.3955.018; Wed, 17 Mar 2021
 19:55:00 +0000
Subject: Re: [yocto] Avahi in yocto #yocto
To: lavkhush2208@gmail.com, yocto@lists.yoctoproject.org
References: <1pVi.1615879241446868495.OKhQ@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <1c6e80eb-102a-b121-f262-5be52df129b9@windriver.com>
Date: Wed, 17 Mar 2021 15:54:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <1pVi.1615879241446868495.OKhQ@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR17CA0003.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::16) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR17CA0003.namprd17.prod.outlook.com (2603:10b6:a03:1b8::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend Transport; Wed, 17 Mar 2021 19:54:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb739922-ecfa-472b-4a9e-08d8e97e8c33
X-MS-TrafficTypeDiagnostic: DM6PR11MB4530:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB453055E36963180F328685A3F86A9@DM6PR11MB4530.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1J3bYbrpJY79D7gfSduPBuyiKWe1XymRexCyVylx/UK5RUCLrTOzoh4N8ni1pZtV7oDci8Y8t83/k+jXBtLN42miYPpNyGC5jjg9p07LIpOF5c7eGW/fcs1ug+xfQuvZXoQrwFwwraFGDqnqTXpq2bk05LxxujQGEiodtQl55spDSP/mtVOCT8dkUp+Or9VW6L2NKLnmlocdyiDTDXIeggb8SSf8GZhbfiuxLLvmu5EFITF5kMUxxBSKtAz9uHMVWEtnRhOMau+F+KEGbmI4nFu98/2DluiSphpPtY1SRpdDvNMgu/49O8yUsyrNlnS7b2Dm4npNlzmbfBSSANnk45QgQ5X4bXCx9t1lk023IStC8CPfVbvYfQQUrZmxSHJ4LMfT8DuFyywkhntF94ktXK4TiA5P1W/yzcsn9gYUow/7ATRkjPjTJJzniXJlap20zr3tVBlVmg77irBB0E0o3DVpXFBLbU0sdFGGyPzxwk0KstFdusdCQAqDiLGeFTVlur/nWlzLbmyi1+zGQAGNbcWR+D4rjvPfov63JoMQLprdcLXy6UZX60VTHALA1ocBz4qNcfT+WoP/Qk1koCVgAfxIG8mAx92rhtWH+qWeB7sdgfc24n3Nxg9wuAPh3eMvk/01ake5GBfJ+3uNP6z9hOmYh+LprZMIWXYHrSK2zSGHTzPD1t1FC4hKvLJ8sG6DG5ZBUl9KPaV0mbsau0yxBfdrWFMQksUNYYD2Y1IUp/c=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(396003)(346002)(136003)(36756003)(66556008)(86362001)(66476007)(2616005)(26005)(16526019)(186003)(53546011)(31696002)(66946007)(8936002)(956004)(83380400001)(2906002)(966005)(316002)(8676002)(16576012)(5660300002)(6486002)(6666004)(31686004)(52116002)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?WVZyd0pKZjRidFNKYkozT3VyMzlvRUUreXR4ODg0a0NkSisxS3cvYTFoczhU?=
 =?utf-8?B?Nk82bVE2eGJTNWltVWliUE15M1BRQUtiMEdiNTJMdDc3L3owQlQyL25WVnU2?=
 =?utf-8?B?UGhhclV2YzRhKzNHRmFjR2pteWt6VUlrUW1uSHBKSXhwN1NreTdFeUxBdjlq?=
 =?utf-8?B?dmtzNUFIYnZtdXI5cDFrbGVGLzdXcUFBSFY4UXlSeWpyLzUxV0lQOXluNTQ2?=
 =?utf-8?B?aHVBa1d3c29VN3RzRUowRHRCK3BRNkpieERXVUxHQTU5dSszUUZwUDRGRndm?=
 =?utf-8?B?NDJEeXlLSlVBZ2MrZlZhU09wc3FsMy95WTZvUTczaXJ4YklsOXhVWE5hSDBS?=
 =?utf-8?B?VENSM2JuWDM0Q2RoN0dPcERLS1Yvdm5PNFZEQ3NXdFN0MXpMSFF1SkpPTkZk?=
 =?utf-8?B?UitKQ0ZiMDhtZk40endtYmhYRDJGZVNWYUNzTFpBVUpraXA1WEJWSDBaNlRy?=
 =?utf-8?B?M1ZoWEE5MG40T2hJODRPOTAzV2Z3OVg2OVZIZXU5cmxMaTFFbGFDMGh3Nlha?=
 =?utf-8?B?bEM0SlB3aFBYZWV6WWZyY3Y5a0JqQUpsTlRETjNUMVhFY1k4c3lRWGRDTGRk?=
 =?utf-8?B?Sjk0cEpCNytHUldjcXpiVXlMbXZmZk9hMjA4S29MY0hZSEdXeUhqWUtmQkhK?=
 =?utf-8?B?QnRSRUdBWXllbm5mV3d5bmdkU0hsOCtDcUtLVkdIQUNXMXA5eGpYSHlqZVZX?=
 =?utf-8?B?ai80Y2JpNVRBcS95cmFodWJKZTJ3MnpySWFheEZLZVZoQUlsNnVUTGxPcDJr?=
 =?utf-8?B?eHR4Zi9SMFgwdlc1N0tITkJ2WjR4L1YzUTlJZTJrbnN5cGRQeU44cnhzWW8w?=
 =?utf-8?B?VXNtL1g5UnM0SnBUVTI3L3AzZFhsalRNU2pNYlBYOHZFc0k2eEI0ZU9WK2tU?=
 =?utf-8?B?REFLelFsSVhFOEVRQTgyUFFMTlNUcnBEbmovMDZzRFgvQWwyaWtiTmc0QXRq?=
 =?utf-8?B?cUZrOVp2d0JUeDlPQlRRdmZHSFFnYUdNT1pNUlhkNUVJcUROdjZTWlQyYXdw?=
 =?utf-8?B?YWk2R1VWb3E4bnpaZXZ2WTJuVFZIQUh0NWxhN2lZVTRNcDVrMGlPMzJVOUlL?=
 =?utf-8?B?SnRUaCtwMzNBZFFRMEFMT094NVk5Y0kyelNZbGxuTnV3amhZYmhrNDFxa0ND?=
 =?utf-8?B?SmloQ3k4YnJxUWk5M1lKR1JYNVpIejRiVzZKUjh6Vzg2YkFTVHdHdjRpWFlu?=
 =?utf-8?B?WFNlQzZzYkR6K29xWTYybjlVdU5YcVZNdjA3K1QwQVQ5TFQrRTRPRTQveXN3?=
 =?utf-8?B?M2JIY2xyVkU3OUJ0eFJ0cisrdUIrY3czaWR6ZXVyVkh1RkRyOXJhTXRrRlE4?=
 =?utf-8?B?dzVYWUR5LzBVZzJQVFVORjFvNHV5VFFrazluaDQvQlNIWGFrckgwdjJXdWZM?=
 =?utf-8?B?ZTVRdXNzY1NYNXlqOXBYcHRVT1ZVZHVON2t3QU5uaWZTcGRrYWhTRHZkaWV1?=
 =?utf-8?B?TFh0ajMvdCtkWWNWR2lLdWh3dVRoN0VxYmhxUDZpUS85REFjYVphQ0ZKcis4?=
 =?utf-8?B?ZWozOEpPY2Y2TExzekdrRCt4bzc0aGhWOTMwTzFNU1VZdWN5ZFM1OHVnbWM5?=
 =?utf-8?B?OWdIY0I2VUZ0MFM5UzFBYWNFVWNORVdNeG5EM1ZTaUNNZVE4S2wxY3pYR28w?=
 =?utf-8?B?MHJtUnZwRHBqc3o0cWMyd1UrektUYUNQNlVaNjVzVGVsV1NPTTd5VDkwZkw5?=
 =?utf-8?B?KzZaQ09UaEZrUUJNSE1FbCs3SUdVd2tZVTNDQldZb1RzaTYyRm5laHFjLzRm?=
 =?utf-8?Q?Q8sh598WsWhFPw7Y+sHEnndBT2djW1W5DPgTnyt?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb739922-ecfa-472b-4a9e-08d8e97e8c33
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2021 19:55:00.2686
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3iWmyNOE3SW81A5A9f0/msz6NzknlSt3oRNbKq04F6IzhG3423MizSqJjtV7FDhBl5LXVgGCJjQa3epw+SeWHpbkAmm5MdJh2qEa36EAMPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-03-16 3:20 a.m., lavkhush2208@gmail.com wrote:
> I am getting issue in Avahi
> *Issue- trying to remove PID file.(/run/avahi-daemon/ /pid)
> 
> *Due to this issue, i am not able to get "Service name" on host machine. 
> please help me.

Hello,

It's a bit hard to know where to start without more information.

Can you tell us what release, layers and hardware you are using?
Are you able to reproduce the problem using runqemu ?
Are you able to reproduce the problem in poky/master or
a supported branch:
    https://wiki.yoctoproject.org/wiki/Releases ?

What conf/local.conf changes have you made?

What steps and commands do you run to see the error?

../Randy

> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
