Received: from NAM02-BL2-obe.outbound.protection.outlook.com (NAM02-BL2-obe.outbound.protection.outlook.com [40.107.75.49])
 by mx.groups.io with SMTP id smtpd.web11.1093.1614191913163822462
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Feb 2021 10:38:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=YhRroOnG;
 spf=pass (domain: windriver.com, ip: 40.107.75.49, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HI4c5OkcXnyk5EvitxYok0mRKztP2eIRnHeou1HbSfZsnZNbQeHhEypgWBtU2nKdNd9BcPRySDa/PVBo+YoSfw/X7wBeOqigZkRy3jdJmuQjfx+EKRZleqJIZjIiML1rXn2yg13xtpJ6p8O/j3azcxnouikGtGq+aaJY5b4lOJ3JRk8wL72mdQTvir6VhDuBfXGkQRCPBE3//8ZOb1NjC6eOa7vmQ1TH+Pt27+jADZ5+iZ3qUR7ToaDtpHXmRRRsSFbU59/v7tmu271Mj6FPjtqJ+hn3ZWcTi8jRBLcYDdqGV5Sh+4aRCqBdepcUvqy4AJCZOggWkmfU/gLgMmcwhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HG2Qdys3+jEpDekjUfESatg1imLeJ/bFid5NFprzD/U=;
 b=WAZXeRPIyN2MeVE2XsYtogZE6gytf8gCcgsToL67pguF5I7WGuCoHcOJj1QtLTiBeL7Gk4qrVI/5So4kKvImRiJypw+mkDiEAyVxGw1o9kHltndpnD48fyz7Dvyqqd/8+YyKpIIogDmi9Tw1m2A29aZ5hpPWg/N7TEWHDOjiRAtxsOv0wvih18J09H4aW377crBbfxkBTIGPUNUrFXTACt3jNtJzujuJOADbtCH+SeSVeng3lmXzUaQ9kATfpB3ri4IcUdSzeQuhXrw4cRgT9GDsBejKCbiX4QIApuJAaJRMVf7QzTvbsTUR7sGT+pnExhVA5ohuCx0NDzk+mdeB7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HG2Qdys3+jEpDekjUfESatg1imLeJ/bFid5NFprzD/U=;
 b=YhRroOnGM5o1puRmCc38tSe7waO9w71OnTObp0H9r6ytBQzGrOZZy0rylK5gP+deH+MxqzQn5fNSwDmT5axQWI35ZzHinBkUUjcWC9a+LjUALCoRFisHcw4aTPAjkCo0JpSJhUIriSAdQafElMPFXnf8KOaEKDRyk9OXXjvi16o=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2185.namprd11.prod.outlook.com (2603:10b6:4:4f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.32; Wed, 24 Feb
 2021 18:38:31 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3868.034; Wed, 24 Feb 2021
 18:38:31 +0000
Subject: Re: [yocto] Yocto- Apache2 build guide
To: sharmila.d@honeywell.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <SN6PR07MB8032F6B8B8873A9FC93F0699999F9@SN6PR07MB8032.namprd07.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <ebbadb92-bccf-830f-5310-2d4b5ae8d781@windriver.com>
Date: Wed, 24 Feb 2021 13:38:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <SN6PR07MB8032F6B8B8873A9FC93F0699999F9@SN6PR07MB8032.namprd07.prod.outlook.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SN4PR0501CA0079.namprd05.prod.outlook.com
 (2603:10b6:803:22::17) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SN4PR0501CA0079.namprd05.prod.outlook.com (2603:10b6:803:22::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.9 via Frontend Transport; Wed, 24 Feb 2021 18:38:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19f8115a-f16b-46b5-0914-08d8d8f36252
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2185:
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB21855AEE0D821138B92F573BF89F9@DM5PR1101MB2185.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	W6POf93Xb1JjeT92vf+75v6Dw2fTysTuydYza0bYfxhUi6IKprjYJMk3bnMciJPGX2QhcdfgK/y2Nl+wbkHqUgsKA1HGh/4YbEE2LK2/w4d4J33SCj70b009qoZMmXzsKtKC9yHpqqcoWqwxhjqAXzoOKPSJ+tkeY20zBe+heGTmg5+p8xoisfF9H9Ag4syG/N9kPoOkO0SlZ4JTwwJv14CkcUGHEa1RoaL07qHSEDzNZdfBtLpw5ie63Ou2SlsT57BkgOGYhUhkwabuywaDGr0zSqvDk3pxS80fdJuuHLfa5gs5rkD60Yss99Ybom159aGEBKXr/Ux+ZoOhyZ2mRW8a/jA1osiKzMyXOT6r7lPELNNP0qW9+PfcJ/EnQaihYK1+gh+ABcu2utQCgMtn79qKXRuf0yA65h7E7bFAJlI6sb8l7dvLnYErdupI1fvw/W5eNVKaBM9WipuAQAxHRar17/PGvB5waQub0R63gUTyDh0I1OfBzOV7mHttZQCjAEbRC2FUwZix6e9+MWJ62rywQb6GSxy4AfvAtoYKImP8S9TKySUGF2l9fmfPGh+bt4uJm4nfv87LyOH15JhyLWYnZU6yhlfs9PkCI87N4pCiHHhBDctSxR4TTj2SK+GRHGgJMbM0OB39vLD+l0wq3gW8y4EXx/74Mz1a5gOxGUkE7Svg6lRtHm5q74JBRDH+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(136003)(376002)(6666004)(53546011)(31696002)(478600001)(5660300002)(8936002)(16526019)(186003)(86362001)(6916009)(26005)(66946007)(36756003)(6486002)(31686004)(316002)(83380400001)(2906002)(956004)(16576012)(52116002)(8676002)(2616005)(66476007)(966005)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?Windows-1252?Q?zpDJowO3vCxKM/z4XvDqBYRJL0mBSCJrMkbLxsc7bAckbJYcDqHg4xBz?=
 =?Windows-1252?Q?41gmYolWZMzJKvqoJdJ76kH1lV6B2W8T2kOAS7D5LudI5tkfSxaC7dXr?=
 =?Windows-1252?Q?KdPCTextB1GJKcWUDv7mko0m7j6ZAkv7dPrUDUyBgCnookssflZBhqu5?=
 =?Windows-1252?Q?+t6DnE0NBU5D6n7iyuUGs2QJo7uRdRtJZbVRMefAoY/LLjY4DxqanREt?=
 =?Windows-1252?Q?6IvF3c2M0H63r9ufkUiGMXJ2R/VQ520uFb/14ndvt4XsW3m0iY68GTy8?=
 =?Windows-1252?Q?OIFcFnUBfPl5NZy4Cxom8cQxM9hubXdKCLHpA4AgjNOHKUrKSuuPfa12?=
 =?Windows-1252?Q?jJKEeL03ZxAui764bBPOMEHBPTjv2xrVM5lKTucD5PeyrWVe6kXxynxp?=
 =?Windows-1252?Q?Tm9rvxBoVtJgg4IPVqc/7YsY6y5ZzRHtjtRop7qalrrjbpO7bTqLQTJt?=
 =?Windows-1252?Q?kFTMUtqJq/FX9Szc3FeNmspIFoVdSc6TLTQat7P/iBUCoi1GFkeKyGn/?=
 =?Windows-1252?Q?jRMbBtxwsP/R7iWgDTLPA4Hq2+EBj/I1O+JJNVMmcVc/rquH2dDYIINw?=
 =?Windows-1252?Q?qNO1jrtA7N+ngVpcaHnC1UmEJUPGCE0uM/0hqzFm8wt3IsitlZ/4kBZV?=
 =?Windows-1252?Q?Wi2godOH+KXFbObabeOXAiYDFwXBj6ASsJ2GZjn8JTyQfUHRGhzJIgb9?=
 =?Windows-1252?Q?uY0mTJ0xT210yOb2kCPleqljCg8l+asoDMmYuHHvSwzyaEQx9VM2xExr?=
 =?Windows-1252?Q?8KjQu1wSsCC1qhrKnUoTBAdAiiN/wdUoXpjvNDvPa3XjWQtI6hwO5IhS?=
 =?Windows-1252?Q?1l41kRyiapne8HdrFjOPS46ZWJEPQ6v+WWBggIuiRD3RSOgZ6fdaW9yD?=
 =?Windows-1252?Q?zqMwsA8tORuiM6DmtzjUk3KKgvbGxRdJKzYUW1BvphbKtS4L9htyfrAd?=
 =?Windows-1252?Q?iGandGqnIpVkAEgzSCc/wN4R4aE/Q9ZmUx/wSEp8cWECCFh8tNqMoIZb?=
 =?Windows-1252?Q?OT2lrNWWwCQ0eoOOG3CJHsjHlw13soT+APOPrNrTAcwYqyrB6864/XJI?=
 =?Windows-1252?Q?4yOTKgSJTiZg1TAIQOByW8Jq7kgvkaItH9kDsUgMvPf2ixpmKp5USdcv?=
 =?Windows-1252?Q?glrG3VqsB7c1Odd76b9rqDNtdQY0VdNyOqqIGkkH+of8uDU6nIcr33ul?=
 =?Windows-1252?Q?Sxi5EmU8etMBwDU5+3o/4PQwzaRTmSWuQHluxdrGbFEU4hoxAQ/C5hwb?=
 =?Windows-1252?Q?iJEEdQZaRr12di5rKYw0TiAGdBuIlXnuFLe0AbIY8Isy5TRZ0V9mzOJn?=
 =?Windows-1252?Q?zsIUewZrGfp8Ej86bOrVCmIHqwn5bcwZaR966IZ2TPeGJx4e63Ztf7Qv?=
 =?Windows-1252?Q?4rxkYEjiuB4G/h59o9GsE1GO1Zgz+aIjfy6kBLi7rcK2LR+c7RggQA2Y?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19f8115a-f16b-46b5-0914-08d8d8f36252
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 18:38:31.2360
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KuuwiDMOwTLZojqUQzoZ9aH5BEYvNC+kMoerd64CADTI+Xp5sT7eSdUDDEtdM2zD4B/v/g/3CIb+SENi6RBzta/AntYD+fPyhD9l0u7ZHMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2185
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-02-24 5:04 a.m., D, Sharmila via lists.yoctoproject.org wrote:
> Hi,
> 
> I am trying to enable httpd package into my yocto build, steps I 
> followed is as below
> 
> 1. Added below layer in bblayer.conf file
> 
> sources/meta-openembedded/meta-webserver
> 
> 2. Added below line in local.conf file
> 
> IMAGE_INSTALL_append = "apache2"
> 
> The yocto build using bitbake core-image-minimal gives below error
> 
> WARNING: core-image-minimal-1.0-r0 do_rootfs: busybox.postinst returned 
> 1, marking as unpacked only, configuration required on target.
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of 
> ['busybox'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in 
> /home/h440246/Projects/rfid/BSP/tisdk/build/arago-tmp-glibc/work/omapl138_lcdk-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: 
> /home/h440246/Projects/rfid/BSP/tisdk/build/arago-tmp-glibc/work/omapl138_lcdk-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.2937
> ERROR: Task 
> (/home/h440246/Projects/rfid/BSP/tisdk/sources/oe-core/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) 
> failed with exit code '1'
> 
> Please provide the solution for the same

Hi Sharmila,

This doesn't appear to be related to adding apache.
Are you able to build core-image-minimal without adding apache2?

Can you provide detailed steps wrt what layers and HEAD commits for each 
layer you are using? Ideally, you'd reproduce on a supported release or
on master. That's Dunfell/3.1 or later:
   https://wiki.yoctoproject.org/wiki/Releases

../Randy

> 
> With Best Regards,
> 
> Sharmila D
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
