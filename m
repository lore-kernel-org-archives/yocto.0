Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.54])
 by mx.groups.io with SMTP id smtpd.web08.11963.1614263849500675847
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 06:37:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=lPdOx7e+;
 spf=pass (domain: windriver.com, ip: 40.107.243.54, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YD4yIDB1REKNw/uUwNLb1JYFm+qWHCbgkW3H8UQQ2hZbBtcB9cOPnnCMi4ignhbmqi190ni1PnnscpjT84xXyVfA1Gtc+lNZYijtVApPpAAh/htiZdiAQsnTzZo6HfCNVHnHHnJ4UEUDpEwuhhX1ZLfxVwWsRlr7tZ5VviAr6vdCC2TUY2aRALRPnVGxgzU3KSaelEfAWvxv6Z29x/fgKJXdO3QJrUHBOpwOSRYqbxNhOE8+lZ0Ei33CU6KgrFnWtjh/WM8DJkS/3q1TfooIIQS6xPpFN7MOxVRMX5a46v57xnAR7jeawwyYRuI/OHDTETbnhrYAEWAwxA2jgsshUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VkjfI9q5hhe10SI090WlA336+5x+T2Ivp/5lw5RdTl8=;
 b=gaFSgKTcdliGoeWHTyfTCVfRhThk22xgxhDgHFrO67G/OMCadwA8ZPPxDBvJ8TnGhBxXLh0/UCnQwYuoaC/EqeWXin9MNXDDCJMIMBbTXyeuuwbDwzswciZBCBB4KALDYpwNM0CfYuZOhT/bg38nARqo5G03M+bGRvRZFuvatYwrV9mVVFFGllp6PUMlecUB7UuoVLt347uUWeyC2sN4uTqgQ5A8X1Ys4GXTGIBcvHUOH5objQMfYKu7J88UkhW902W0hPIHO4UsPsfR7Bgm70Y1m+NhKem+wa2dhOwfthhWyeMHG9l3p744Svm/GpGtzugSw1MuiWHIG5Hg/ln/6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VkjfI9q5hhe10SI090WlA336+5x+T2Ivp/5lw5RdTl8=;
 b=lPdOx7e+z8XEInbyu6OFLZu/JRGYnSqqBBhz6fbpu+w0TVS90ol2UU+aftjsnZifUVtzz0IZ/TXOBNdh3pGjcbmYFcHg3TSp2XYiJa3rtGRLUF1u4eqjJp+eeaC5gMWWuYE1jSkpgUE8q71m71Zww96ehGM0S3F4Vc/EgQVbjZI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2602.namprd11.prod.outlook.com (2603:10b6:5:c0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Thu, 25 Feb
 2021 14:37:28 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3868.034; Thu, 25 Feb 2021
 14:37:27 +0000
Subject: Re: [External] Re: [yocto] Yocto- Apache2 build guide
To: "D, Sharmila" <Sharmila.D@Honeywell.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <SN6PR07MB8032F6B8B8873A9FC93F0699999F9@SN6PR07MB8032.namprd07.prod.outlook.com>
 <ebbadb92-bccf-830f-5310-2d4b5ae8d781@windriver.com>
 <SN6PR07MB80320BC75EFA419659E7ED46999E9@SN6PR07MB8032.namprd07.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <2002c56f-ebe7-bf01-0ea7-8d8f37adb584@windriver.com>
Date: Thu, 25 Feb 2021 09:37:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <SN6PR07MB80320BC75EFA419659E7ED46999E9@SN6PR07MB8032.namprd07.prod.outlook.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0235.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::30) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0235.namprd03.prod.outlook.com (2603:10b6:a03:39f::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend Transport; Thu, 25 Feb 2021 14:37:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f442d014-eb54-4c79-81ba-08d8d99adfc9
X-MS-TrafficTypeDiagnostic: DM6PR11MB2602:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB26024F10E1825808C762C574F89E9@DM6PR11MB2602.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	r0VJYerMmENPUEJ8oF1SJ2A2THzdmS8UqFaX0r0/pQfShz1K0H9zHyDJxaYwaDZO1C93zb2/22LuXeDK6sJUWNi/3a7YWcKnXTcOcIwcdqLDAsG6o1HRs7RZiLXVAPZIUpgipw8Ia2PDPeAiiOf5wF1wH32KPZzn15Ny7xcVu7F/ncuu3BvOyK/y1YT2cU0jzD/m+cOqMideCUeAY+fqZFPlv+s3nI3REc0SIU54NvmbHKlhbkQOB+/4Zv03WaRY15KQNFf6+7oNZbgQ6j/DaAMjHTl1cfuVOEFZgEIkillkkJGk7LYEZQm2kqpaCAn/ZRn+8Dh1NOiGotv/N6/FjfS/LlWFbUexWeJLLjD3Mo8rwNt7T2lv9aQqQy8l+gbluft8B5rKNDN6mSzCC4wVOynxlwpxMftuQgaxwUqNdt14uRFH2r6SrDrY9i9wIfi+1Zd7xPKrFTbh+bVktDmn9gyAMoLkj/TlPRWzgCXrSpJxF0/AGjOXyfJNpwLGrW1ZPplDfSVFzfqjiPcGq7Txxskq1wOGB0W9+vNZIwx2ou+Q8nncnMSLsreD2wTGxgiYR06J888hUabAZw2VVRS05ddhrDHRStLZojMqY3MVaYsZQMrAA1GjZwDdN+15ylRapnRZ4xONvzY2VUx5V+iXdkUEnJxat//Dm2htIalPq94VkNpduXhgT6WPiN38UYgE
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(136003)(366004)(39850400004)(346002)(478600001)(36756003)(66476007)(26005)(16526019)(186003)(6666004)(8676002)(83380400001)(52116002)(31686004)(53546011)(86362001)(2906002)(66556008)(966005)(6486002)(31696002)(5660300002)(66946007)(956004)(8936002)(2616005)(316002)(110136005)(16576012)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?TVk0UWJ6eklUalVDU3c0UHE1MEhVdXRuL2NpdlIwT0ZsZERPQmVycWdPQThV?=
 =?utf-8?B?UkdQNVBLK25ndk5wUmNsNFZxbmI1U3d2bGdQY1h6OHozYlpqY0lFeHNKd2xs?=
 =?utf-8?B?L25CY2htY3U0dzdJdUZENmFNT0pLa0F2QXlXOWpYMFhzYTB0V0pTa3V0Q0ds?=
 =?utf-8?B?YnhvZy9CYUg5YUFBLzhEVnJqWUxaS2Vna1RDN0FuODN3R2dYSWZNWkNQdy9u?=
 =?utf-8?B?b1JhNnBxc2RHMGJpK2lnbkRjQUJ1TVNhaDJDeDJhR0hmS3M2NnJ2VHJyUXRl?=
 =?utf-8?B?QkNuQ3ZYM2M0RjdYTWFpR1VlVkZva1Y5SzRkakZiNk1HUlRwZ0tBMVhMV0ZL?=
 =?utf-8?B?Y3g5U2h2SVRjWGRaRWY2MzdJK3E3RHV6bzhqcUtJblR6cGFwQzNieTdVZjJP?=
 =?utf-8?B?UTROMWgyU0ZNWllBc2E5TXFWTTZMSk44L2ZOUmVXUHkrT25jWUJvRlJ0UXV5?=
 =?utf-8?B?T2tVeTZIVHVDVnlxUGhWU3dacGw0QTZEOWtqYW5rR2ZTTHZKOVNCNm9uYm9M?=
 =?utf-8?B?T0w0ZXFiMWsrbWNVOHhNSDZvYXQ3K2w5S0ZLRlB1cm5PbVcyampSWjdTRkZn?=
 =?utf-8?B?R1ZGSk50L1VjbUYvUlNMZ2R3K1ZoR2lHaWJQVTdXTnhaMk9uQWlPZTdWWXBO?=
 =?utf-8?B?ZlNzaU9kajEyVmltRFVkSThsWVVkQzVtcTRQeUxITjlua0oySmNSbE5uOUlD?=
 =?utf-8?B?NnNzSHpiMnF1T1hhT0gxMFlLdzR2ZERBblVoRWRzZjl0cXRCRi9kZFlVdGdh?=
 =?utf-8?B?YTN1UndwU3RHYllsZUNRT0kycGJnRTRIajY5K3hKVUtidzZVMU1hdVJqNk5j?=
 =?utf-8?B?cnZORmRqcnA3b2dlQ25ZSFV3bzI3RUxjUW8zb1J5ZnVHbzJqL2hjbVc3K3hn?=
 =?utf-8?B?VW1NVFpYeTFWdEd5UEJvUmppQU1STTROS2VzWC9KYmRXWkptL2VzM1pna0VX?=
 =?utf-8?B?ZTBZckViaURwK013dmErOFErdGcxTDVzZmQyVmJkZFl6QTI1b0hucndoUlhB?=
 =?utf-8?B?L2hsbVNreWwrMjRGYlVqK1JBRUpaR0podVFRS3VNMDRxb2lHbGRlbENsL01k?=
 =?utf-8?B?bEJrSjIyYjgwZkx2UHZxQWlCTmFmL3NsSTQwZ1RvbFZpaXJxRnFEaXlSSHp5?=
 =?utf-8?B?TE1rZmFLT2piQmN5QythMjllNWVaRzZiRkZZa29HeXRQVllPbzhRZG9pVEhJ?=
 =?utf-8?B?cjJzYVhiRWdqOWRQK0daWHozVytjYjVhaFIwWkoxbzEwWFdzQ29ZUFJrLzVG?=
 =?utf-8?B?MFQyRVBsUjc2azROazg0OUJDTXgyQzhwSjZHaTJkOG9teStvSXdSbUpSQmFj?=
 =?utf-8?B?dmF3Y0RSNFR4LzBFaGJEbXVremJlelVSQzVVVGw0RVRwdHRoVUVZS1UxT3Bi?=
 =?utf-8?B?dFhzMkNBQ1ZNN2FEeklvRzNIejZTZDZjNHlLa2xFQmpHOWxSSzZFbFk2MGJq?=
 =?utf-8?B?MVh6L1BWSWxwSERobjUzNVY5dGRIa0k5aGdWMVpwZXBVb2ZKblU4N2xKZ1ll?=
 =?utf-8?B?N1Z0bjVlR3VRMEJkZFcwMkVlMnVZYjl4aWdSTTVmT1IvVWd4dzdrNE9zd3hH?=
 =?utf-8?B?RlVJKzlqNWxIKzVPQTZXeE9PRjQ5SVdsdjhGbTl1bU5nZFczNHQ1QnZraHdo?=
 =?utf-8?B?b0NrMll1eVZOc296QmtQcFhscmNrRHFPVkVBRWpOYk82VUR3aVcyRjl0c3VF?=
 =?utf-8?B?WCtnblpOL2tyZEc2V21pcGV6bHI3THN1cm5FT2xnZkJVcVlRalhZYWJqUDJW?=
 =?utf-8?Q?a6wbCm61afgqLTBOipgOC8r/R5XadrBS6Bwt8TJ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f442d014-eb54-4c79-81ba-08d8d99adfc9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2021 14:37:27.7150
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 115SxVGGgFiw6NA+j5ysIjBTWFZwGSqHYfMAuJ05/y/7O1MaFP51Qu4/AICFZ+xnIH5Tg+e28O2/E2nQfLSOh370HAEQOHKCCNpSoz++x/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2602
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-02-24 10:37 p.m., D, Sharmila wrote:
> Hi MacLeod,
> 
> 	Thanks for your e-mail.
> 	Yes, without apach2 I am able to build the core-image-minimal successfully. The issue is only when I add 	apache2 in IMAGE_INSTALL.
> 	I am using TI processor SDK and I have setup the arago based yocto environment based on TI user guide.
> 	 version is THUD.
> 	Do you need any further details about the setup?
> 	Please provide me the steps to include apache2 package into my final image.
> 
> Looking forward to hearing from you at your earliest convenience.

Hello Sharmila,

If you can reproduce the problem with only the oe-core/poly + 
meta-openembedded layers then perhaps someone on this list can help you.
Otherwise, you should contact the people who provided the
TI processor SDK.

By the way, Thud is EOL in the YP community:
    https://wiki.yoctoproject.org/wiki/Releases
but commercial vendors do have longer support cycles
so hopefully TI can help you out.

../Randy
> 
> With Best Regards,
> Sharmila D
> 
> -----Original Message-----
> From: Randy MacLeod <randy.macleod@windriver.com>
> Sent: Thursday, February 25, 2021 12:08 AM
> To: D, Sharmila <Sharmila.D@Honeywell.com>; yocto@lists.yoctoproject.org
> Subject: [External] Re: [yocto] Yocto- Apache2 build guide
> 
> On 2021-02-24 5:04 a.m., D, Sharmila via lists.yoctoproject.org wrote:
>> Hi,
>>
>> I am trying to enable httpd package into my yocto build, steps I
>> followed is as below
>>
>> 1. Added below layer in bblayer.conf file
>>
>> sources/meta-openembedded/meta-webserver
>>
>> 2. Added below line in local.conf file
>>
>> IMAGE_INSTALL_append = "apache2"
>>
>> The yocto build using bitbake core-image-minimal gives below error
>>
>> WARNING: core-image-minimal-1.0-r0 do_rootfs: busybox.postinst
>> returned 1, marking as unpacked only, configuration required on target.
>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of
>> ['busybox'] have failed. If the intention is to defer them to first
>> boot, then please place them into pkg_postinst_ontarget_${PN} ().
>> Deferring to first boot via 'exit 1' is no longer supported.
>> Details of the failure are in
>> /home/h440246/Projects/rfid/BSP/tisdk/build/arago-tmp-glibc/work/omapl138_lcdk-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>> /home/h440246/Projects/rfid/BSP/tisdk/build/arago-tmp-glibc/work/omapl
>> 138_lcdk-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs
>> .2937
>> ERROR: Task
>> (/home/h440246/Projects/rfid/BSP/tisdk/sources/oe-core/meta/recipes-co
>> re/images/core-image-minimal.bb:do_rootfs)
>> failed with exit code '1'
>>
>> Please provide the solution for the same
> 
> Hi Sharmila,
> 
> This doesn't appear to be related to adding apache.
> Are you able to build core-image-minimal without adding apache2?
> 
> Can you provide detailed steps wrt what layers and HEAD commits for each layer you are using? Ideally, you'd reproduce on a supported release or on master. That's Dunfell/3.1 or later:
>     https://wiki.yoctoproject.org/wiki/Releases
> 
> ../Randy
> 
>>
>> With Best Regards,
>>
>> Sharmila D
>>
>>
>>
>> 
>>
> 
> 
> --
> # Randy MacLeod
> # Wind River Linux
> 


-- 
# Randy MacLeod
# Wind River Linux
