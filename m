Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.76])
 by mx.groups.io with SMTP id smtpd.web12.1601.1619724895426924853
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 12:34:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Xreue3Jl;
 spf=pass (domain: windriver.com, ip: 40.107.220.76, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwL6s+zT+cZAvgACpVkUSxSyK04kK7Hr99Na86dWll3a4xiN/A1nKmiKUlRBks/4wHsV3ncaAtcfIJgGqGbpCmZY67du/4eb1F2zRoTcO3m1b+/5T+6bzbYOCpflQ8yT2lvSkihBVUUxuzSMG/tKjWkNdfcpXhgB3nfpNKs7PiWPWZ7Idyt+NC2c0jzQGzTenXDnyUQk4obceAuWaOXCZ22zH90DrRg9EednYyHqeWlffgRk7JwAGuyiEcvx+UYMUPt5w8sWDAOtfaqNLeeu0Bmje1X9vz77M1IYYEmxu/nr+84Kteaaa+y6grOaMvqP9vcBVR57b4tyHdlUW9Lwmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0LptiHBBlngxyCx5i1yAEq7AVbPK4f+s8Flca0HF3so=;
 b=XRJ9wplCwK9QvfJLIDbdN2Bqt714TncVtbgDpgOVL3rJSnM+j+sez3BbVXKpU/AdwBLh/EdzUHDD2AXzaZu8DvT/SIZd1Oigezh1MTtUlskyHDSDxpEbdMAUKmsxEBUit4qctoOJmw0p3zDUAWGYJN7XID/ajS71uqSZ8IOAECcWKp9Vy4wt8EDVL5KvV2cI3yWogPlk6hlW4LHIXOY/fqG1eOMtjQT0nBd66jghWbyUr9DM+lxf0qpMgyj5kwnV3DkUs/EOWBF7GvQDkZRVmNsCF99x19rrAo+isc9oBWuQO7fjJ7txFN2uJ0xK0Rk1zl+FplI/Hjsc07UbvKRigQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0LptiHBBlngxyCx5i1yAEq7AVbPK4f+s8Flca0HF3so=;
 b=Xreue3JlSXKWqzbB8+p6rTBG67Y3OwS0rdRgrDz+hgiDznoXhXqKC7+Uh0sEGSiXlMa4+trLXDgtIQLz23WZuZ6ep/JA4w/WSjstEJh1ncaOYGVBYyE8w4QFbMX5cCpXXlqNodwqyLGS1MEuuWVLrQ5D1X9ngrSBgRLgmztowOc=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3354.namprd11.prod.outlook.com (2603:10b6:5:9::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4087.25; Thu, 29 Apr 2021 19:34:53 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.025; Thu, 29 Apr 2021
 19:34:53 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder2 1/2] meta-arm has a hardknott branch now
To: yocto@lists.yoctoproject.org
References: <20210428150904.958213-1-ross.burton@arm.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <d194d584-ce2f-9d27-f645-d05eafa378c0@windriver.com>
Date: Thu, 29 Apr 2021 15:34:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210428150904.958213-1-ross.burton@arm.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::12) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR05CA0007.namprd05.prod.outlook.com (2603:10b6:a03:33b::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.8 via Frontend Transport; Thu, 29 Apr 2021 19:34:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4746474-641b-4940-15e1-08d90b45dc87
X-MS-TrafficTypeDiagnostic: DM6PR11MB3354:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3354FD6657B04D51A54A0211F85F9@DM6PR11MB3354.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:279;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oPqKDrbC2Kdo3DP7eyfdEePtFde3MvcTbiFH8gro9Hv/0CIjc/7KVSMbfI09QRaO49I1M/5Z0i+dKZtHS2K0ECi//tqrJBJHyyqylaxwTY/nXXWA5y/rKN3PIKA4BZEZ26VM+DwY8RQn2dXbslgJz34g38el0xmcvJGQlJlp4aSRozCwhrZGKnF88lmu8odvxuDT16yIqFhXxmSi/BTA6Clz4hRvDX6cPzvRlMC18MBYwl1po+m0WpjsKVJxVeJSqpKXuKKSwc/RwGEFfAEIcc4yIbxRBxgthX7jcWk0l/W2ZzmUr2o7E3AwpSUB3mrnBdheuJrbeITy/nBmjaH3LTqMomqlvGc7a4VIMK1unRlzGWSohPjNbOt+VpVVVDSMMVX6xJnFI2Ui+vJkkI2Sg2hPsP3ENZ/iRtoaSszRCwxUVv3AVBX2UEo4FlbRJLmdDnvFKpNWGegFw0EANI4s0QgVsa+22uF0f+VgjQUrzd8gyJUXfieEEQrfJzmznoYDKAq+/f3VBUWj+Z1S1XHcuiWD8Plack/VZDAKkeYWw6EaIGcuDdnm/2sgvg4g88D0gY3s/R5Kb4lQ8kzZmGPmIo+Kx11gRzHbS6p8xf72Trj6Bps9Qz/Qm/eMa7qVU9H5o7rqguurpVFXrTbIjvVJfhAR6j35f9WV76l6MykInLh9fM5ArHAyk1pDq+fVvyYf7seOle6b1aYhp/nC4+EO9inF7Ah2S0+h32q1a18jZHA1Xp/vDXJl6mz38P5UsVt3TeJUYZIxY5ezvWyweqjtNAZjSWCGVJiOjU4ixD4odcM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(136003)(39830400003)(396003)(346002)(66556008)(956004)(31696002)(86362001)(26005)(2616005)(66476007)(66946007)(316002)(16526019)(5660300002)(186003)(6486002)(83380400001)(31686004)(52116002)(8936002)(38350700002)(478600001)(966005)(2906002)(6666004)(6916009)(16576012)(8676002)(38100700002)(53546011)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?dHZ5a25kQXZuMHpJdlhzT29DTmE1dnpncDBmeXZoSDUvVzRTcWwwVFJwNHJm?=
 =?utf-8?B?cDNTZEF2N29xM0tseUsrYWJobFVmeW1LRURzaTcvUlp1aGhPS1N5R01ZUTZB?=
 =?utf-8?B?NFNGWUtSUjNEbk8yK1J3dVppNzZJM0dWdmZYbHNCV1RPMzA4UGpKb0tFM2Va?=
 =?utf-8?B?RFprcWtLcWVzazJHM2ZtUTM0QUhKZDFvL1BVaHR5aUZEcnRiUWdKS1YwM0Vz?=
 =?utf-8?B?QUFpbis3Uk1qVHVsbGlzYUg4cktYVmFQTFpQczlJaElrVnNKSzJOSjR0ZnJz?=
 =?utf-8?B?dGFSUWo0a09QWkoxaFdYbmtJendtSWJyOXhSVzUvMDhNUlFwcEo3S2xYWkh4?=
 =?utf-8?B?Q1cvcll1RFNKUzFMOHFSRUUzdnpRVi9yRXFBTlBlMERFaGhyaWgvWERDQTB3?=
 =?utf-8?B?TW9NVnZ2SjR4K25YNnR5Yk9uSUJEdnVpYkg3YUdlMDg3OGx4SFd3bGpRbE45?=
 =?utf-8?B?blF1Wjk5SVo3RnJEaFVTd3Fra0lJc2xVai93eEVnaG03SDJSZG8zSGlRTHdE?=
 =?utf-8?B?NHlSS0o0aWMyMy9tZFlBSTdzZUZ2WWhjRWRSVVhMWjZrajhaaW52TjJpMDZ0?=
 =?utf-8?B?Um4vRTVmem1NVzhWdE8xZTcxaWV2QmlEdlo0NVB6WFFMWkVGVm10NjR0ckUv?=
 =?utf-8?B?VHJpSkU5WWlZVGZvcm5ENy9vNXY0WVE4NHo0ZnJabFM3WDM2aWZ5aUJXTXdI?=
 =?utf-8?B?VDBoS3lUZWtnWFZzY3hMSURwOXNZejIwWXA1eFFMSldaMWRQd3NtQXJaNmIz?=
 =?utf-8?B?SjJqbjVPZ2RBd1M0L2c2OUdHWmJzZ1h5SGloKzNpMmVMVDY4WnpFL0J4TlI5?=
 =?utf-8?B?aS9XcGJiaXVoVGZJeW16QVBkQ1B2aGR1V1BKNUd1WWw5cUtyMW85bG0xUnEy?=
 =?utf-8?B?NU9iT2RmWnFqazc0b0VsR2RHQ2ZUUVNINWsvUWN3Q1BBZGo2N3dBd25ZQUww?=
 =?utf-8?B?ZUtXejkwUGkvaUJWT0FjUTJ0Z0tuUzFlUEYyWUw3R0E0VVp5eUwzL2NGRXhO?=
 =?utf-8?B?RThzUjB5dUR2bWdZcWZaYVdmQkNsWmpuaVlZMDlJSVI3VXlNR2ZYUEg1TCt5?=
 =?utf-8?B?WGNOcnFiMzZjV3hoMjhCTGRoK2lsdDhtaHdRa2FpMmlPeW5zV1FjOUZlVUxt?=
 =?utf-8?B?aERMallUV0VQS09BbUdhSlFXVG9VMzYwZWNXT014dEpEczhlaXFPN1RXUHBo?=
 =?utf-8?B?eDUrOXZTeTl1cGpPNzVTK0Q0dklzWVNpdms5bXZJeEJqYi9CcWhIK1g0WGl3?=
 =?utf-8?B?UlJEZnBHZXRpNVg5V0lmWFgvUytFeldqZWpxOENKaXFJUkx0ZlAxZHE1dW5K?=
 =?utf-8?B?NGt2VUlmdW5NSmNRb3lmQTRnVXI2Skp6RzhHYmlMUy9SZVNJWFMrdnM4dlJy?=
 =?utf-8?B?L0V1VmNnUFg0bHRGSTF5dVZETm5VNjdGbEllLzhwem54VUN1aXNQOWZ5dnVM?=
 =?utf-8?B?RnNZeXErMXF5V0V6Rm9sK29MS00vZU5CVHgzUWVhUTZUVXFwQlQ4ZHdWVzlF?=
 =?utf-8?B?S0FWc1h6dHEveDIzYkh2SnN2eVNrL0UvYzZTaXcwTVRsQ2tidHIyejAyNVJm?=
 =?utf-8?B?a2tKRVF6MmxMcW1qOUZEUjFBb0JzWnVtN2tNZXdnd1B2ekJTK2pOZjNTdkgx?=
 =?utf-8?B?TmdMOWJWSHhBNUF6UFE1WUR1aVhwc0kvd0RhSzNnb1lMaVJ2VHAzaldMa2do?=
 =?utf-8?B?S2ZhSzBnZ0paM1MvUmtqVlRDQ1FVaklOVkdnMG5wSUNqeVJjOFUxMDlydlFL?=
 =?utf-8?Q?Ks18HBYxmkvWU0W0nmiEhLZ+L/X0ZA/PPoI3IHl?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4746474-641b-4940-15e1-08d90b45dc87
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2021 19:34:53.1294
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CcqRRt+stc9bG/Z4Ho4qQzS1kzX1CtYhgCHOJc1b+wTYScSW3AoK7FX3mBcHXU3ANf+YUc2J6Weg6z6pT4MDj6pqr5LjIw4BcnI5zK7eZjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3354
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-04-28 11:09 a.m., Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>   schedulers.py | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/schedulers.py b/schedulers.py
> index 8b166e0..93b8f34 100644
> --- a/schedulers.py
> +++ b/schedulers.py
> @@ -206,7 +206,7 @@ def parent_scheduler(target):
>                   'branch': 'hardknott',
>                   'branch_poky': 'hardknott',
>                   'branch_bitbake': '1.50',
> -                'branch_meta-arm': 'master',
> +                'branch_meta-arm': 'hardknott',

It doesn't have a yocto-3.3 tag yet...
Could you add one?

../Randy

>                   'branch_meta-gplv2': 'hardknott',
>                   'branch_meta-intel': 'hardknott',
>                   'branch_meta-mingw': 'hardknott',
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
