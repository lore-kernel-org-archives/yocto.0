Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.49])
 by mx.groups.io with SMTP id smtpd.web10.46063.1609163311707925294
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 05:48:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=RB0M6KR3;
 spf=pass (domain: windriver.com, ip: 40.107.220.49, mailfrom: ovidiu.panait@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEaRM+5zLCdfFe4gmp3hrFqJwvuERN1r4N4fvP7x6d2df6VRPIWicmuBvrVkvqYxfhOJ5O19USi3ZJE2hZtsYkCuL4VWzjWV+xhwJ/l+TCwmm1CJ32Qxf/U4L2iTPsxF2yGRNNmq+1Dqq3u8BBc5qn9+i8e9A2RtVoLinwgv2JIoK25bM2WBmXBfqyhPpg30UUmMvICviFZlu5hS80mspKfGXmrTptXQ1CLMQajRnmZUdRe6Cp7wKsHa1Zwz/yiY+rb0YNzuecZsRmJgSQm43Ac0K+ijtdDqpgY7OYc0MC7AFi9Z2TgBtWLgiz0S8PzZYVhZ9/GXuxlj4WR/eCAd4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TWZxVzzurYx3y0xlRZ2CFSed4Rshv97FQHblJmaBltc=;
 b=POiF8nbfiPo/CRbyyvw9PK4WIf/gk3LNiBLO3fWJXRPpd/P2TH0HzUdzuL/xWQ6Ng0VWaGbLNu4RJJRQB+0Snu/INHXztciTvbEDqDga+K8/TWEhRaog6Sm4bAkikIUkct837mEkUl2KrKldireKAZZun5XqbX7YN9CIy/ijv3/REsNemvQoIzRmAxjcnI5MYDKEvA0Zx8yPCOk2PWFO8fVb8bAQ4NenWlXT9B75DXUrNY4DfJtRZ4pXPempJDI+I2DvTRmMRBlBYc5OTfAG2lz4Rv167SY8PSLEKEMzf5wcSQ278IPkvox0wiqDiO2m1n4bhkAdYNqh7XduAy3Ivw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TWZxVzzurYx3y0xlRZ2CFSed4Rshv97FQHblJmaBltc=;
 b=RB0M6KR3HiuMHZK6pwhhnM7lkBYruJmLBt1EtHHSCzQZyrdnv6nE6uTHq5kBpntaOORGDTAtoWr+zrdHFQ9sgOs/V96S6qHXfJmJxUdE8lEU3XT5ZdP/dCUyVQqwdxuR44vJObMyj0DFCMR33bFI7BGnGcOk+CXP4jfSnSCFNLE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BL0PR11MB3201.namprd11.prod.outlook.com (2603:10b6:208:6b::21)
 by MN2PR11MB4613.namprd11.prod.outlook.com (2603:10b6:208:26d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Mon, 28 Dec
 2020 13:48:30 +0000
Received: from BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::85d9:7219:6427:fb43]) by BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::85d9:7219:6427:fb43%6]) with mapi id 15.20.3700.031; Mon, 28 Dec 2020
 13:48:30 +0000
Subject: Re: [yocto] How to develop kernel modules on the target?
To: p32@tuta.io, yocto@lists.yoctoproject.org
References: <ErhJ.1609162832527601245.Tg4o@lists.yoctoproject.org>
From: "Ovidiu Panait" <ovidiu.panait@windriver.com>
Message-ID: <73579e95-a544-3e43-ca92-d70e665609a0@windriver.com>
Date: Mon, 28 Dec 2020 15:48:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <ErhJ.1609162832527601245.Tg4o@lists.yoctoproject.org>
X-Originating-IP: [46.97.150.20]
X-ClientProxiedBy: VI1PR0901CA0094.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::20) To BL0PR11MB3201.namprd11.prod.outlook.com
 (2603:10b6:208:6b::21)
Return-Path: ovidiu.panait@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.125.152] (46.97.150.20) by VI1PR0901CA0094.eurprd09.prod.outlook.com (2603:10a6:800:7e::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27 via Frontend Transport; Mon, 28 Dec 2020 13:48:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5155d15e-a35b-40a8-b9be-08d8ab37428e
X-MS-TrafficTypeDiagnostic: MN2PR11MB4613:
X-Microsoft-Antispam-PRVS: 
	<MN2PR11MB461386615E0DD94F3A8602B9FED90@MN2PR11MB4613.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gI7UA3V6j4dijLEjaiKZ1C2lYtoefG7Ma3J4bjsSoixskIhvgUdek0ImlYZ1Rf6QnRNnvk2oo3JnSZnfBROjuETXVWUVmOMBvvP1zPU10KB3aiKpNuf9sWR5bm5CINKssG+oUTnSRTMu6XasEIAUMjoXROI+SdxIhoYz5+xi9FtoYdYQAHMsS7SDTL9y7rsbsJHFmgRGZvre9mYNQGO8NCNbJBvs9OS+0swrabBO8er5g6CI//jbyGBs9gJ/706VCLjAEYjHAu0IxBrkRabbGyt/BE8qsli+mTHwffkRtDueHeVI8l1HVe35qTeiJb+ZS8XtEIi/9XFsfz1eYRkV2nUWpspLsW2tkumbaa8sBn3LTgtXORGQRo+vGtrzsRjQeN0bWZ3dRv8bmKSHrfWMf2WhjDX8FvZ5OpzYlQBPhHx/vKa3cD5az5X0tBWWeOBDy+UrIUizcO5dIWgQEk63DeesMex1qPOggZddBbrw447Lqnsf77r3M+SqlneoLDZ0G7BYXT5IPH4j5GDUBquRFhjNDdQnODbIKiJ9rp5KmQlpTgcF7yMAVqso4b9nDjHQgrPzawTlDVKJ1clf49R3EA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR11MB3201.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(346002)(39840400004)(396003)(66476007)(166002)(83380400001)(66946007)(31696002)(33964004)(2616005)(53546011)(6486002)(44832011)(8936002)(16576012)(2906002)(16526019)(52116002)(66556008)(36756003)(478600001)(26005)(6666004)(86362001)(6706004)(316002)(956004)(966005)(186003)(8676002)(5660300002)(31686004)(21615005)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?QXZWZVNQNXFmdllDOEJ1REVyclgvWW5UM0ExVXFmb0hpSXYvZm8ydTVyMnkz?=
 =?utf-8?B?SjBpR3RPNkp3bFRvTjl6aUxnU0EraUNxN3A4RVZJL3VEOFFtMnZaSGRRQ1BT?=
 =?utf-8?B?Smc4N2pWQ2ZCcVFPK1VCNHBjTzhVZHFTcmIwQ3FnTkxya0pQNEVxWDFabU5a?=
 =?utf-8?B?ZEJ4V0NQSzBLRXdxcnZtZmpkakJoclUrdmQ1NDVIbUlqYUg2Y211YzQ0WVFR?=
 =?utf-8?B?d1ArSUxpVHZjT0tSWmN2OVJFdTcvcVUzRG9NbStQOHNRMitWcDR4aTlmYWdi?=
 =?utf-8?B?VStEaDkzaUU4dUE1amJUeTh2aXdNdHM5WXAwRUVWMXhKWVU3b2J2M1doampX?=
 =?utf-8?B?K3dWM2xVZllYKzJZd2F5aE1MMlpaaTI2WTlDNjZSR0JDMExYQjRxWkV6dnk0?=
 =?utf-8?B?K21pbU9EM3J1NzczK2g0U3V3SVpqbExRTDFyQ0N5cE90ZkUrdlJiTlpWTGJw?=
 =?utf-8?B?ZEV4bjJJVlc2dkRYZ3JNSTBDUmtnK0ZjY0FRYjc1MXA5d0REZnpzZmpTcU9C?=
 =?utf-8?B?Y2FnMU43OTRaNGxVRzJzR05mSS96OThqN1lWLzc0dy9pK2E0VWFsazN2YVY0?=
 =?utf-8?B?K1luY2NaQXU3Y1UxZG5RdUF5cCtXOHNLYnlST2ZYUTZzSmkyNS9ZUjhnMzRr?=
 =?utf-8?B?cUhJTTVQSVRMS0VBRFROTVI5U1pDbUFjRXVKRlRmczRNakNtVC85OHEyR05I?=
 =?utf-8?B?UVBGdjlha3duUnFCTGIvMk9PaFROMEhWZTVPOXdHTjJ5TU1LR1RJcUUwQ1Vl?=
 =?utf-8?B?WElOaVNveUpTYk91UU40NXVMeTJSVzZtT1V2eTVSWGhZekt1eGdTV1dvb2o0?=
 =?utf-8?B?U0JpbVZ0elBGdlBic1dVN21haHY5Vm4rb0MyM0xSdDhrTTVoS3lFRjNDdmJ6?=
 =?utf-8?B?c1psNnplY2lLWVRJS0ZLV2VmZ3ZzY2ZsTkx1OXc4MnZDcURuRityZEl0U1dB?=
 =?utf-8?B?MTAzK1E4MG0xSlJGRzlMK1lUS1prQ2VuT0ROaWpieWs2MGZnbWpjWUVvRWlx?=
 =?utf-8?B?VGpsbGc0RVRSQWVMZExudHFwWUZqbVp2WG1vRUlBNWJDZGpGVlJ3OVB4VThp?=
 =?utf-8?B?UlpacndJZGg5bGZoK2NhZlVJMmNjZXBvOTQxWG44T0FmUm0yeFMrMllQc2g2?=
 =?utf-8?B?aFRpQjA3OXNqcEo0Z1NNZWdrOXR1NWM4bEZtNlAwZmQ2R3VDMGdBUUNkM1Fo?=
 =?utf-8?B?TFZWYURPbGRkU1lDZFp0VitVZmFNN2V2R1FicnpVRmtKWjNJUUp6Tm9QbjM5?=
 =?utf-8?B?eVBnV3gxT0FLWmg5eUhMUElkS21oQytRTnVmWFF1NlVZVjkyMlk4RERMNENW?=
 =?utf-8?Q?zbK9x0ymAyfunGRazQWANFFPDi91PyRzgF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3201.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2020 13:48:29.9487
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 5155d15e-a35b-40a8-b9be-08d8ab37428e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dP3BzCszrIvRniRDuxhEHS5snDiPpwB+Cce1GxDBIBP5a/UM++JDKqoa56fkctxj6dyhmMa4ncq1N5AToTGhEPSpH+IUTlVmQ0y6+s3eVkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4613
Content-Type: multipart/alternative;
 boundary="------------F39620A280A9FA351C3BC6AD"
Content-Language: en-US

--------------F39620A280A9FA351C3BC6AD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28.12.2020 15:40, p32 via lists.yoctoproject.org wrote:

> Hello everyone,
>
> I am using the Yocto-based build system provided by NXP (primarily via 
> the meta-freescale layer) to create Linux images for an i.MX 8M board 
> and would like to develop small kernel modules without going through 
> the build process of the entire image after each modification. 
> Therefore, I would prefer to compile the kernel modules on the target 
> architecture and have added the following items to the IMAGE_INSTALL 
> variable via my local.conf:
>  - packagegroup-core-buildessential
>  - kernel-modules
>  - kernel-dev
>  - kernel-devsrc
>
> I then tried to follow the the official build instructions 
> (https://www.kernel.org/doc/html/latest/kbuild/modules.html) on the 
> target but was unable to create a kernel module:
> imx8mqevk:~# make -C /lib/modules/$(uname -r)/build M=$PWD
> make: Entering directory '/lib/modules/5.4.47-2.2.0+g5ec03d06f54e/build'
>   CC [M]  /root/hello.o
> In file included from ./include/linux/types.h:6,
>                  from ./include/linux/list.h:5,
>                  from ./include/linux/module.h:9,
>                  from /root/hello.c:1:
> ./include/uapi/linux/types.h:5:10: fatal error: asm/types.h: No such 
> file or directory
>     [...]
> compilation terminated.
>
Hi,


You need to run "make scripts prepare" in /usr/src/kernel before trying 
to compile kernel modules on target.


Ovidiu

> What am I missing here? Is there something else I have to do on the 
> target before I can compile kernel modules on the target?
>
> For the sake of completeness: The build is based on the Zeus release 
> and the following repo manifest file:
> https://source.codeaurora.org/external/imx/imx-manifest/tree/imx-5.4.47-2.2.0.xml?h=imx-linux-zeus
>
> Thanks!
>
> 
>

--------------F39620A280A9FA351C3BC6AD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>On 28.12.2020 15:40, p32 via lists.yoctoproject.org wrote:<br>
    </p>
    <blockquote type="cite" cite="mid:ErhJ.1609162832527601245.Tg4o@lists.yoctoproject.org">
      
      Hello everyone,<br>
      <br>
      I am using the Yocto-based build system provided by NXP (primarily
      via the meta-freescale layer) to create Linux images for an i.MX
      8M board and would like to develop small kernel modules without
      going through the build process of the entire image after each
      modification. Therefore, I would prefer to compile the kernel
      modules on the target architecture and have added the following
      items to the IMAGE_INSTALL variable via my local.conf:<br>
      &nbsp;- packagegroup-core-buildessential<br>
      &nbsp;- kernel-modules<br>
      &nbsp;- kernel-dev<br>
      &nbsp;- kernel-devsrc<br>
      <br>
      I then tried to follow the the official build instructions (<a href="https://www.kernel.org/doc/html/latest/kbuild/modules.html" target="_blank" rel="noopener" moz-do-not-send="true">https://www.kernel.org/doc/html/latest/kbuild/modules.html</a>)
      on the target but was unable to create a kernel module:<br>
      imx8mqevk:~# make -C /lib/modules/$(uname -r)/build M=$PWD<br>
      make: Entering directory
      '/lib/modules/5.4.47-2.2.0+g5ec03d06f54e/build'<br>
      &nbsp; CC [M]&nbsp; /root/hello.o<br>
      In file included from ./include/linux/types.h:6,<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ./include/linux/list.h:5,<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ./include/linux/module.h:9,<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /root/hello.c:1:<br>
      ./include/uapi/linux/types.h:5:10: fatal error: asm/types.h: No
      such file or directory<br>
      &nbsp;&nbsp;&nbsp; [...]<br>
      compilation terminated.<br>
      <br>
    </blockquote>
    <p>Hi,</p>
    <p><br>
    </p>
    <p>You need to run &quot;make scripts prepare&quot; in /usr/src/kernel before
      trying to compile kernel modules on target.<br>
    </p>
    <p><br>
    </p>
    <p>Ovidiu<br>
    </p>
    <blockquote type="cite" cite="mid:ErhJ.1609162832527601245.Tg4o@lists.yoctoproject.org">What
      am I missing here? Is there something else I have to do on the
      target before I can compile kernel modules on the target?<br>
      <br>
      For the sake of completeness: The build is based on the Zeus
      release and the following repo manifest file:<br>
      <a href="https://source.codeaurora.org/external/imx/imx-manifest/tree/imx-5.4.47-2.2.0.xml?h=imx-linux-zeus" target="_blank" rel="noopener" moz-do-not-send="true">https://source.codeaurora.org/external/imx/imx-manifest/tree/imx-5.4.47-2.2.0.xml?h=imx-linux-zeus</a><br>
      <br>
      Thanks!
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------F39620A280A9FA351C3BC6AD--
