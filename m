Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.86])
 by mx.groups.io with SMTP id smtpd.web12.9182.1607200083259995588
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Dec 2020 12:28:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=nE7Zadr9;
 spf=pass (domain: windriver.com, ip: 40.107.94.86, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MWzCu7IwiXN4J0dW5GP+9juEYcu3VmnIzwNrs2rNjOt2+M5vex9o9+uI9Dd6GoVWWFI7S9uSADLEoKtKuS4tueybsGSEhzP0MS1GzB2d1wGcQhtQ3ee8Cq47DLxEZwOvxVGejkxQpyuLE8PIb3j+eaB5jl8pjjKo5sBy+iYixEsoRZoBlpa0diPe1WlCi8fNI6IPb9LzeDEWzaf0AIhjuu8VeSDzm82KqDMXwjsb/7PWXszeBFomlpB+oVhgci+EK/UM5Rn/9cUM0S73ISVcIdr6+TUgLPjsD9ekMHM6kyFDzdec212Zlshg5t4or9woX8447r++KS9qC4/Z4Swr0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=klYfKdcqHK6D7WzAziC03VhrljYeof06oPi+JQDmMhk=;
 b=FIFgrCmgM+k4kEs0VPaGGVvtwJElDB8X/FOh/qHJ6jkE9+wyxqFINfQALIvhNF65JJAwTsTMeOt8X4X5Kgzxrz8r5DW2tt06Z1IjsgrAbg4+0Nqj7kTTg9Sebp0YnQKcSiPVY/uvR/MOQ/R8WTLZDU/pSdKOzEHSm/7Q9dbg7svX528pXmqAOw5/n39yPsbXi1MzVtlDYnt/uctzHihqe4EFeuDdtenJOIlu1E1RGyDkLs0RYoA9iEokZmr+hV/ySvlyUntBxIasWmnvGLJg5WGMrFnYGZ/W67C22aH7OxyL4opjnUb/GpPGNh5egATXkT8ImOB0GmW/FnvgJzCpbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=klYfKdcqHK6D7WzAziC03VhrljYeof06oPi+JQDmMhk=;
 b=nE7Zadr91E066BTzcXNryDsycvnSN1l8dLoBDfu7yKLaJJK/uadhvJLnAxglb1NHLJfzoI74j1kqn7NTyYP90bepxbZ76r0INqy7IKsGOQEeFMzzm3YCRs39SDnDLBWEocnvkjPid0+JkGno4hd3UjUpFMpyJdpEdrDWGc1ID3k=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1964.namprd11.prod.outlook.com (2603:10b6:3:111::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.22; Sat, 5 Dec
 2020 20:28:01 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3632.017; Sat, 5 Dec 2020
 20:28:01 +0000
Subject: Re: [yocto] #uboot Problem compiling u-boot with bitbake
To: Andrew Ellis <ajellisuk@yahoo.co.uk>, yocto@lists.yoctoproject.org
References: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
 <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
 <cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <93d905af-b0cc-77d7-07f1-53386e535834@windriver.com>
Date: Sat, 5 Dec 2020 15:27:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0136.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::21) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0136.namprd03.prod.outlook.com (2603:10b6:a03:33c::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17 via Frontend Transport; Sat, 5 Dec 2020 20:28:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab02e182-6d6c-4002-8912-08d8995c433c
X-MS-TrafficTypeDiagnostic: DM5PR11MB1964:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB196460179A92710A7DC1876BF8F00@DM5PR11MB1964.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	T/M9VAUy9OD/bIhB1H4SGD4/abDztpxgAdR/8bZeN8dhp5ueJKu6iYvsd2puJeZ3omTeij6+ZK4iBEeMp4Y9xp3vX6UDtMS0mne0dod57LzxTWsZ6MNq30E++8bWuZ6/k5fVtwOBUGlxcqB6RGcQQoYToxaBAdVDDN6bydk0tyWW+0VYSQaWq6D2KzyT86PcfTLCB/1jTiefqyDQ7c/noCazvRfoe6m9cOO8rLeP+46JOvxq6e59DkXCEneJUUdLfgC/Ov2f364CRiuZXUsD+11EljEc6iBYW8rr7csrixJZlwUKoiNDXJinWpPRkF2vboKOOeaToV7kju0aCeb5F76WSyd7jly/wcG4m32DhjXpJb25faGLfvnPAXEpVKxZxmSJ7JWEYB5da72BBMOlx3pIVyykYe/a2APaugFHkcD+zPm5jyTiCzEb2izM4GCl+8Ff5adI2s2kPBKcorgJ7xYsl4/O7ppHquL2zGfr0qk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(376002)(136003)(39840400004)(346002)(2906002)(16526019)(83380400001)(8676002)(316002)(6666004)(31696002)(956004)(8936002)(53546011)(86362001)(966005)(2616005)(66556008)(31686004)(16576012)(36756003)(52116002)(66946007)(478600001)(6486002)(26005)(186003)(66476007)(33964004)(21615005)(5660300002)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?YS9CckJmeVZydlQ2VGNrdmE4T3pIejJianhTRW0vdnZLNVJxRjBuZytQYmFX?=
 =?utf-8?B?VU5zODNXZ0I1ckJkd0kwSFg1dkRIZlphV1dzd0Ntaml0QWduSTBaWmtBODlk?=
 =?utf-8?B?UmxQUkpia1A5YUhNbEg0RTBkekhoNnVRZk5iM0paVHliZ1RXclJGeVRLMmZJ?=
 =?utf-8?B?eTNBazNYZURDRm9jb0pVZmIrYjljUHorVnBHaXNCOElQdzBhNm5xejlZVzVz?=
 =?utf-8?B?aFlzY3laTGdmU1JwUDRoS0o3UjNET2kwbC9RRmp2MmdTZkQwU2dWWE5TTEhL?=
 =?utf-8?B?ZXJRS1B2cWhjeUsxMWN0UkVkNmI0SlVtekNMR2VONWpiTmJhREZlWU9JZUx4?=
 =?utf-8?B?NXNWaXRTVFJldHBnK3NhYUJ2ZE5WT2pMTXh0VVVzaVQzV3BpNFY4ejRnTEty?=
 =?utf-8?B?a09OaVZVV3psTTQ0a0V4ZEVNbzkrTW4wYU1Wc2hKSE1zdDN2UEhNWnBoTGgw?=
 =?utf-8?B?QW1oWlVacTNJZUtCVVRURzQxcWs0RmM1Vlc3bjBFR0RrQ0FDT1pkOFhOb0wx?=
 =?utf-8?B?akVkZ0c2U1hOVjRERVdRM01hdmhuM0E5WkJJbjIwS1lXRzFPVDkrMXUwT3Nt?=
 =?utf-8?B?Q3dQVXl6U0xUak93V1NwNjhtMXdoc09rV1pRUkcySU5CVldzS0hLb21ZMWx1?=
 =?utf-8?B?M0lvVWI3T2hlOFlQUTUvZFRJa0ZPUEdrNmRSVXpQTlBZRlRMOGsvY1RVSkxk?=
 =?utf-8?B?WXNrdjIwQjgxb0RUc2szS29KNFd1ZWliL201cnhiQS9TVGFGdjhaTXlMaFUy?=
 =?utf-8?B?YUNodkVBVTZoSFJ5QVJxaC9CNlRXSlZZRUpqNEFWZWhrWjlJcVBHK0taSGd2?=
 =?utf-8?B?OFNSVU8rUlNnZjlpazFvVDRDSzRsVXZGWENzSWtQWTB3WHY3a0ozVXEvTGVQ?=
 =?utf-8?B?ZVVxSFpVYkFWbjY1RW52NVZGV2ppMzhJTVVxcVFPakNxK0FNQzdSeUE2Nkx2?=
 =?utf-8?B?d0JZWklyMUhJazV2a0VPeWtzajViMnV4VEJ0WlRlVGJOWXp5OGR5RngwVHp1?=
 =?utf-8?B?MUpTV2E3WjRSM3lVMkZ6MU5MZWZrbkFpVTVZcEE5R0gyMDE0dXA3ZnBGeHI2?=
 =?utf-8?B?Z21KalBOQXJzdnBGUTVVRW1HbW8wZ1FlQXpvWWhFKzdiOGdSTVhUSlgvb0c0?=
 =?utf-8?B?MnBvNjRKVjVhY3llSVZ5NnVPUWN3WGduV1RvbGIxbmh3em05RlFDRzFlemhh?=
 =?utf-8?B?eDlDQktKQVlseHUrcTg1a1VFVFFEdkZYVXhIVFJLMWw5NUJKU25zbzFVTy9T?=
 =?utf-8?B?dWNtRnB2dmhUUFFxMEN2UE9TaVUwVWpma1Z5blJVSFlnQXpTMHhxZXNrVWZh?=
 =?utf-8?Q?7OO5THftsNvLQvqPLkgcEUsIm35nUyakS+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2020 20:28:01.6627
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: ab02e182-6d6c-4002-8912-08d8995c433c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oZjjVmW6i/bVJpSB7lZDwDSIpU+dMXRCs8VPCTyLYjtgjE4eYo9r4SRksfMmvxY1Uwr8LjoRmVDumGFK/CyhL5kmPoVul3rbTR6GjK8BSXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1964
Content-Type: multipart/alternative;
 boundary="------------87805E7CE69D1BA8A270433F"
Content-Language: en-CA

--------------87805E7CE69D1BA8A270433F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-12-05 2:59 p.m., Andrew Ellis wrote:
> Hi Randy
>
> Thank you for your reply.
>
> I'm using Ubuntu 14.04 .
>
> After reading what you said about coreutils in your last message, I 
> tried installing coreutils and got a message saying the latest version 
> is installed. Doing "which test" doesn't yield anything. I've looked 
> in /usr/bin/ and there is no sign of test in there.
>
> The version of Yocto Project I'm using is 2.5 "poky"
>
> Andrew

Andrew,

Thanks for the info about your distro and YP version.

It's odd that 'test' isn't part of your coreutils install.
    https://launchpad.net/ubuntu/trusty/+package/coreutils

Is it possible that you have removed it somehow?
If so you could try:

$ sudo apt install --reinstall coreutils
or
$ sudo apt-get install --reinstall coreutils

../Randy

||

>
> On 05/12/2020 18:54, Randy MacLeod wrote:
>> On 2020-12-04 7:08 p.m., ajellisuk via lists.yoctoproject.org wrote:
>>> Hi
>>>
>>> I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from 
>>> MSC technologies), but the compile process fails with the following 
>>> output:
>>>
>>>     ERROR: Unable to start bitbake server
>>>     ERROR: Last 10 lines of server log for this session
>>> (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log):
>>>          self.cooker = bb.cooker.BBCooker(self.configuration,
>>>     self.featureset)
>>>        File
>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>
>>>     line 197, in __init__
>>>          self.initConfigurationData()
>>>        File
>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>
>>>     line 356, in initConfigurationData
>>>          self.databuilder.parseBaseConfiguration()
>>>        File
>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py", 
>>>
>>>     line 317, in parseBaseConfiguration
>>>          raise bb.BBHandledException
>>>     bb.BBHandledException
>>>     ERROR: The following required tools (as specified by HOSTTOOLS)
>>>     appear to be unavailable in PATH, please install them in order to
>>>     proceed:
>>>        test
>>>
>>>     ERROR: bitbake u-boot-imx -c compile –f
>>>
>>> I have had errors like this before, and have been to resolve by 
>>> installing the missing tools indicated. The problem that I've got 
>>> here is that I'm not sure what "test" is referring to. using, "sudo 
>>> apt-get install test", doesn't work.
>>>
>>> Can someone please give me a hint as to what the problem is here.
>>
>> Hi Andrew,
>>
>> It seems odd that you don't have coreutils/test already...
>> Test is part of coreutils on Ubuntu-20.04:
>>
>> $ which test
>> /usr/bin/test
>> $ dpkg -S /usr/bin/test
>> coreutils: /usr/bin/test
>>
>> What distro are you using for your build machine and
>> have you installed the suggested packages?
>> See the quick start guide and links therein:
>>
>> https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html 
>>
>>
>> https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions 
>>
>>
>> Also, if you could mention the layers and version of YP code
>> that you are using that could be helpful in general although
>> for this issue it shouldn't matter.
>>
>>
>> ../Randy
>>
>>
>>>
>>> Thanks in advance
>>>
>>> Andrew
>>>
>>>
>>> 
>>>
>>
>>
>

-- 
# Randy MacLeod
# Wind River Linux


--------------87805E7CE69D1BA8A270433F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-12-05 2:59 p.m., Andrew Ellis
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk">Hi
      Randy
      <br>
      <br>
      Thank you for your reply.
      <br>
      <br>
      I'm using Ubuntu 14.04 .
      <br>
      <br>
      After reading what you said about coreutils in your last message,
      I tried installing coreutils and got a message saying the latest
      version is installed. Doing &quot;which test&quot; doesn't yield anything.
      I've looked in /usr/bin/ and there is no sign of test in there.
      <br>
      <br>
      The version of Yocto Project I'm using is 2.5 &quot;poky&quot;
      <br>
      <br>
      Andrew
      <br>
    </blockquote>
    <p>Andrew,</p>
    <p>Thanks for the info about your distro and YP version. <br>
    </p>
    <p>It's odd that 'test' isn't part of your coreutils install.<br>
      &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://launchpad.net/ubuntu/trusty/+package/coreutils">https://launchpad.net/ubuntu/trusty/+package/coreutils</a> <br>
    </p>
    <p>Is it possible that you have removed it somehow? <br>
      If so you could try:<br>
    </p>
    <p>$ sudo apt install --reinstall coreutils<br>
      or<br>
      $ sudo apt-get install --reinstall coreutils</p>
    <p>../Randy</p>
    <pre><code>

</code></pre>
    <blockquote type="cite" cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk">
      <br>
      On 05/12/2020 18:54, Randy MacLeod wrote:
      <br>
      <blockquote type="cite">On 2020-12-04 7:08 p.m., ajellisuk via
        lists.yoctoproject.org wrote:
        <br>
        <blockquote type="cite">Hi
          <br>
          <br>
          I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus
          from MSC technologies), but the compile process fails with the
          following output:
          <br>
          <br>
          &nbsp;&nbsp;&nbsp; ERROR: Unable to start bitbake server
          <br>
          &nbsp;&nbsp;&nbsp; ERROR: Last 10 lines of server log for this session
          <br>
(/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log):
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; self.cooker = bb.cooker.BBCooker(self.configuration,
          <br>
          &nbsp;&nbsp;&nbsp; self.featureset)
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; File
          <br>
&quot;/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py&quot;,
          <br>
          &nbsp;&nbsp;&nbsp; line 197, in __init__
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; self.initConfigurationData()
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; File
          <br>
&quot;/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py&quot;,
          <br>
          &nbsp;&nbsp;&nbsp; line 356, in initConfigurationData
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; self.databuilder.parseBaseConfiguration()
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; File
          <br>
&quot;/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py&quot;,
          <br>
          &nbsp;&nbsp;&nbsp; line 317, in parseBaseConfiguration
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; raise bb.BBHandledException
          <br>
          &nbsp;&nbsp;&nbsp; bb.BBHandledException
          <br>
          &nbsp;&nbsp;&nbsp; ERROR: The following required tools (as specified by
          HOSTTOOLS)
          <br>
          &nbsp;&nbsp;&nbsp; appear to be unavailable in PATH, please install them in
          order to
          <br>
          &nbsp;&nbsp;&nbsp; proceed:
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; test
          <br>
          <br>
          &nbsp;&nbsp;&nbsp; ERROR: bitbake u-boot-imx -c compile –f
          <br>
          <br>
          I have had errors like this before, and have been to resolve
          by installing the missing tools indicated. The problem that
          I've got here is that I'm not sure what &quot;test&quot; is referring
          to. using, &quot;sudo apt-get install test&quot;, doesn't work.
          <br>
          <br>
          Can someone please give me a hint as to what the problem is
          here.
          <br>
        </blockquote>
        <br>
        Hi Andrew,
        <br>
        <br>
        It seems odd that you don't have coreutils/test already...
        <br>
        Test is part of coreutils on Ubuntu-20.04:
        <br>
        <br>
        $ which test
        <br>
        /usr/bin/test
        <br>
        $ dpkg -S /usr/bin/test
        <br>
        coreutils: /usr/bin/test
        <br>
        <br>
        What distro are you using for your build machine and
        <br>
        have you installed the suggested packages?
        <br>
        See the quick start guide and links therein:
        <br>
        <br>
<a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html">https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a>
        <br>
        <br>
<a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions">https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions</a>
        <br>
        <br>
        Also, if you could mention the layers and version of YP code
        <br>
        that you are using that could be helpful in general although
        <br>
        for this issue it shouldn't matter.
        <br>
        <br>
        <br>
        ../Randy
        <br>
        <br>
        <br>
        <blockquote type="cite">
          <br>
          Thanks in advance
          <br>
          <br>
          Andrew
          <br>
          <br>
          <br>
          
          <br>
          <br>
        </blockquote>
        <br>
        <br>
      </blockquote>
      <br>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------87805E7CE69D1BA8A270433F--
