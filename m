Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.42])
 by mx.groups.io with SMTP id smtpd.web09.263.1605891863050671470
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 09:04:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=T+JST0r+;
 spf=pass (domain: windriver.com, ip: 40.107.92.42, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/l6i0rEL8sB3/PxKtlmVi3FoLKty2WV1b2fmYzrAl7SI0TuXdmQ7R0uQI2MlaGe9Hfu/XX6rD6oqM8LXDBs+5uKf78sOPdCFMaHQiJF4OUkUNdkKf+8DGw/d0f3yTM1EAdJ+stSqYvM47X4imSsYhz8H9s3Hki+NyaKIIdko+6AP1K6GVkrQgC+De/uu2WJbIHvz+VXFWZ19/jOT7XhSU5FthMr3j3fSyAICTwGZTK7CmGnDpNlnkYvVW47e63lRXGuccEvbMkgBH/sFiMSWBRilSYyvnSlPZQNb+/1vEcFW3MSMY/2GRheVjajeiYAcCorb23eHnQgjIgtT+ZDdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9R3gpe7Ulz2zTDBP3ED+/7CY/SEeb3RVe+2ms5lyLAU=;
 b=ESH2JEmrCIz5146U+Lt3zb/GuUjku8R/qmwJeHPNEsRmfWZHlpgbZ5+/I6JKpMQ60VQZYZ7HR6fdZ19mqsxj56VbvCnU54PnjZqxlYS+oYjuZisslawMUTex2wbB+MY3R1kn50clQaYN5D/aD/EkPhdidcNj82EnsjgtRsjmfd18ptLcb3njXJDev0v09X+xIPBdSzU6W8VytWe+Uyp1E2j3MH4kWFfwtUiSNCSsozRxGjev/CXhVJ4pybRrfR+y/nBqGdST65c0xG5J3tZ26hC5T48gwvt6kPTJ3GtqftbIyhXXzxHZM2duDqM37mqUNwjJuX5YV32JiTwjBhAQOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9R3gpe7Ulz2zTDBP3ED+/7CY/SEeb3RVe+2ms5lyLAU=;
 b=T+JST0r+gWe+POk7f3LE1LWML4I/OZd0CccDd61KJ/sJJBAhvZ1YUOd3E5hTu6NaRcKqgKgncPmY7LwdzX9sdoq4Nu4AB3GOIeYnyoQXo69O/RghNYBGZgj15kZRTmebqa5EzKxQWK5iQ4offknvllHA/WmaD9WvApOhXMGW6m8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN7PR11MB2611.namprd11.prod.outlook.com
 (2603:10b6:406:aa::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Fri, 20 Nov
 2020 17:04:21 +0000
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::2552:6769:b51c:251a]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::2552:6769:b51c:251a%11]) with mapi id 15.20.3589.025; Fri, 20 Nov
 2020 17:04:20 +0000
Subject: Re: [yocto] loading huawei_cdc_ncm #kernel
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>,
 yocto@lists.yoctoproject.org
References: <8be714f70fc4472f88c17161a4a9dfa2@Exchange.sewerin.de>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <3267830e-8483-0e6a-0d84-c93307a8033d@windriver.com>
Date: Fri, 20 Nov 2020 12:04:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <8be714f70fc4472f88c17161a4a9dfa2@Exchange.sewerin.de>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: DM6PR21CA0015.namprd21.prod.outlook.com
 (2603:10b6:5:174::25) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by DM6PR21CA0015.namprd21.prod.outlook.com (2603:10b6:5:174::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.4 via Frontend Transport; Fri, 20 Nov 2020 17:04:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f6a5130-8498-4b6d-cccf-08d88d7652b0
X-MS-TrafficTypeDiagnostic: BN7PR11MB2611:
X-Microsoft-Antispam-PRVS: 
	<BN7PR11MB261122473BE0644D89E4D8F4F8FF0@BN7PR11MB2611.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Gcj57K+374zWdpLQ+431EJI6hJPY30xkSEwFrODBOmtdQ/i4TtDQ0Mztf0PvZoB7SCr76Fys5f0NrCbXm3+a2ivhojG4iSFEIjHpI03d/57cMbORN+X9DftnRMTIXdBKnZCYcJpm84I1F8fo+yc9ITgqWvjNrpGT4LrBlQ/sKHJfHds9TMeKZkuvSBeeafkQSCrzxljvfPAaP8231graWZwNtK2/2MKvAiambjDS7UZbnsUsnO+ZNKPcZ3Jb3QlRnx4GZyflO0pZoJ+0WXWcPaGDt+uRIpLZGAh2bNsGQsIELcqxJLX1HF6BbhjEjvYFyjVA+iu+Krn/9YR+ow6Vt2mWels+cpTfJEBCJs7WY9F1of9ztxSpwlpWV10+hK/VFfssRDijiT94WfryhWnRxCjGtnepFJBQB8W8rX8ibGddaS6vwn/1i41cVPX5QNalFKp0fMfeej6aA9+NhnR43Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39850400004)(366004)(396003)(136003)(478600001)(26005)(186003)(316002)(966005)(5660300002)(36756003)(2906002)(53546011)(15188445003)(16526019)(83380400001)(52116002)(16576012)(4001150100001)(66946007)(86362001)(6486002)(8676002)(2616005)(31686004)(8936002)(956004)(66476007)(31696002)(66556008)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	QYk+XF+EXY+dRT0DH4n/2/RZ9Wq2ysFZ9qA8o6p5gybWSAarUvPLNNgj75gAiR+iUDF+48g7HoArmIgrmIDs0EWYH1c4sZA0W8wiExiwK/6sKKeKL7RlmSQ0zWCmGIL9lMSRRs4F788Sb4HkBLySU9uobVejuNAFJGne96k1fELiRf5RJjffLOitxlPQGnCL8An/ktQ6ubkV0/LwPOT6AGvVlUlfLhTTYrUI/augEmQDuTpvJtQo7X1MKrk37XQe+nv85L0IQTWkU4agNEyVMqa1gr489+tdFyt2N6yY1MzGHHZa4Qhu88JIsbUOTlDpYAjOL8Y2Hrf34z3C9HuQRugGWhlgZTOsN7BEbMAJPp1ASRstXWjpAy5Sz6MaK44tuSAmyFd6CNtGruAClR4kRKz4O2SayBHj9yIh+p0ix+qbzdCqzEE6uNbpW3EoETkMPhiOUb/m0IXvq25dHFndTwtRC8suRT9rWnJo4V9b/VpD6UeW5LblzY1SAFzFWIdiSmSZugMBbgXDgVDXfeFIEKfZW3cpoX9Ewij+WoIpFbOtichvztMLHwN5qvT/ZVVM/Fd0VO9WH2bC01s4ZzpPPLPbCcG8aAnHLuad3LO6Tm+jM/RNaH+zfujtuAFNFJdsxyMmAfN0rLN+9QJ6x8M5Ug==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6a5130-8498-4b6d-cccf-08d88d7652b0
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2020 17:04:20.7780
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KLsq/K/HzpcjBA2cL2sV9yNKKr0ZQTBPAVGUdo93ZYU/Z0PplaqFfzs4aU7ueQs6MuB3PK6n+99EpLhYeYXttyBncS/PXj4Enn6usAZ/IuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2611
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-11-18 7:10 a.m., Zoltan Kerenyi Nagy wrote:
> Hi,
> 
> I'd li to include as a kernel module the huawei_cdc_ncm.c file and 
> autoloaded as a kernel object.
> 
> I did this in the main recipie file, but it's not enogh:
> 
> KERNEL_MODULE_AUTOLOAD += "cdc_ncm.ko"
> 
> I guess I should have a bb file for the huawei_cdc_ncm.c, but I didnt 
> find any on the net.
> Could you please help me?

Hi Zoltan,

See:
 
http://docs.yoctoproject.org/kernel-dev/kernel-dev-common.html?highlight=external%20kernel%20module#working-with-out-of-tree-modules

Good luck,

../Randy
> 
> Thanks
> 
> Zolee
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
