Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.74])
 by mx.groups.io with SMTP id smtpd.web08.20354.1607273772498975912
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 08:56:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=lelE5v87;
 spf=pass (domain: windriver.com, ip: 40.107.220.74, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dZ7rHaqNC6gf+G7OQZZFB1O0DMdScXzHaZDLE0xECIOY63+JAxgrocTq6zZR0/KgAuLw8fRsbU3xwVtZpsyjQVGw9c0acnlIRu1YHiiR1hThFhSek2Xfj0G3zXO80jeh08LUeAoliTpXuz2fYNrFA2MfoNPm4CbZrEO5KCxYelcn7CGD0gxDG483R2Ne8dmaIQjSZejngdXL5OIoemMO2ovo4iCHefalOL1ZPKdXECc2MM6M6XA60nnpBeaRQFdoW/6wW08hQxA2PkzUhDNSPTcFfcZiCddP+yUpSCxkq9NaGmI2xwtVQGDJPWn9pAEF9ip8l/czNBsO8nQT/KLvLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RV5zCwEVdkwqJ1YEM2L4h2MPUOfdx0p81HlwJNibJPY=;
 b=PZmHMdRZKZlsJnLsoziFdt5QfamfEp7IS9Dwa2BU3LWMdA+jvP0LeWHAiupsD2873PxQwEKnWx+MXNAQQbzsHqUDTWDgU0RrwPL4ZS8XsvQvkluLHSSkAPukGzMhxgruqqUnM0XcQTIAB7+cXtml9djMw9lb0As3iUavgGWyrnw8h1F4mWj187QxoFIH/ksiJzUfDNmpnACRwn72I3cvJNrKMS1sXHh4AMJwf8OhqheZ6y2dbua7HPJlfLV7MTdQqYCCr+k5Z7E8WlwnY/QA6J5+/rv2zPJTlY3pqgudBVCssj7wJvcQkt8SpERml/sSvgtkpYqkBo96ZdHaJ1F5UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RV5zCwEVdkwqJ1YEM2L4h2MPUOfdx0p81HlwJNibJPY=;
 b=lelE5v879zDD7mHZgcfTLtsU/Xro6VsnnkwmiGuCUjnyQR1a1okEZfL29dYG+O7zWYZTV7JNoxlxNnhskuRBvZOWvB+IFwhaRNfC8ZRrFNb39JYiqcvKE00gQZ5EkP6Uji2ohSSp3kFAmQtq3WoCGTX2Yl43YvX+OKt+wtBT8wM=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1673.namprd11.prod.outlook.com (2603:10b6:4:c::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17; Sun, 6 Dec 2020 16:56:10 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3632.017; Sun, 6 Dec 2020
 16:56:10 +0000
Subject: Re: [yocto] #uboot Problem compiling u-boot with bitbake
To: Andrew Ellis <ajellisuk@yahoo.co.uk>, yocto@lists.yoctoproject.org
References: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
 <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
 <cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk>
 <93d905af-b0cc-77d7-07f1-53386e535834@windriver.com>
 <03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <265bba7c-bf36-12cb-4a6e-f867c59af35b@windriver.com>
Date: Sun, 6 Dec 2020 11:56:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR05CA0018.namprd05.prod.outlook.com (2603:10b6:a03:c0::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.5 via Frontend Transport; Sun, 6 Dec 2020 16:56:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d864d81d-b90d-4fbb-2cc0-08d89a07d503
X-MS-TrafficTypeDiagnostic: DM5PR11MB1673:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1673291949A988491FE0B085F8CF0@DM5PR11MB1673.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DeFHGsQfu1coolYVFAz9s5GfNd/zXklY2+JbSk4fg6kdLbc+mZXp7N8pp4nyu+3lhT8T4sY2YGDSweO49F0JGgufEL96Po0dvJ76f1pS6tGHnjq6DMofCN/Rg8zC8BzV2IZe/2PO4pUB+wC7I/YAWzYnFXvMjaqf9UsfTYbi5iba4POl/ccqX/581s1qXJmhOJIAEOuCCBOeFnSxZppi0NfWGspUKLN94qA1p4XJz7i2fzotBLcemLCsiFYfOVDdLwsUNguZPWN8vFe0ejTEJp1ms/x3nJIAGkXJQVdvGhdV2LBecMGa9UpmGPMxYImfJwkncFuGWfM5Lg6VBFrJKJ1gBNKtoGhB5zvdrI/1emwwOe+ncvVfOdYzDBtND6mCfIfi9PuTLObzYEoV/5kC8f9ltD1eD85BSgnzUopGF9TYCcbF/Cu9Jtr7lrkSXitQvNcPL4AYaEKWGlYdY+KWUomt83eii1M27y7wjYeugYY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(136003)(396003)(366004)(39830400003)(16576012)(31686004)(53546011)(2616005)(21615005)(66946007)(66476007)(956004)(6666004)(2906002)(66556008)(316002)(86362001)(83380400001)(966005)(33964004)(16526019)(5660300002)(8676002)(6486002)(478600001)(166002)(186003)(26005)(31696002)(52116002)(36756003)(30864003)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?ZElpWERtWE5rNUh1MWFpQjFJMnZRMkZaeUdBdmowTU5XRVdxVGZVaTYrUFor?=
 =?utf-8?B?dlpnWHNUb2xhdTZGcm1McTFmR2tWeXJkazF0VERKNEQ0RWZwaGtEUnlqSmRE?=
 =?utf-8?B?allUdE82UFJMSStudFVlSXpEYXhNTWs0TWxBUnRRMk53WVZ6ZDZQcURvaTdI?=
 =?utf-8?B?WlNxQXh2WFBtU3BSbWMyZzFPVG1aazdDcXhrMzhpd0x2Wk9rRFR4Y04walpl?=
 =?utf-8?B?dkNHLytXdFYvNTZSemNBVlZqUFNnZlJiR3FCcHo3b3AwSlhLaUlYVWVCWnlN?=
 =?utf-8?B?NnpEVzJETmtFRDZGaGIrcVBVWHBIVUM3YWxCR3RtT3ZRODJIbXZyNzB4c2RC?=
 =?utf-8?B?VHM4WlJiVG5rNGgxYmVqSjdGaU5wY1d2dFJzcTlxaGJTU2lpeDIwNDNnTkdj?=
 =?utf-8?B?ekJyb3UzZHp1OGZmU0UwbkxlOXh4a1BIR0pKVHJoVG5LUTc0SHFOSGNMZjUx?=
 =?utf-8?B?VGR5SFYvcktxQmZyczA3ZzQ0cGpBcE1sV3NSSExwNzZtWFY1K29KVitXOURT?=
 =?utf-8?B?VlQ1NXpjbzdPcFJka2htanBEdGZ0YjVSTUhUdkQ2d3k2RGlCUTJxakdZMmM5?=
 =?utf-8?B?a2V0NEtXRlp3ZVhXQmxvM0JRaDNhVTQzU25tQ3FpT2tSSElMVGtKK3d6aUxS?=
 =?utf-8?B?ZWs0VXNxU29VOVEzK0F5Zk5DUVZ1dk1teWZZTW1QM3FjUDVwVy9KdWIwS2Ny?=
 =?utf-8?B?RGhFWkdveGsxeXhKWkdwblpFbngzN0htOXQ5RmNLMURjS3haYUdwNHF1VTJ2?=
 =?utf-8?B?amJJZW16NlJNU0FQTU5PdzFpUGFlN1FxRWpuVEZ4VEpQODl2eG03dmM2Nm44?=
 =?utf-8?B?QWlqcTg3bHcrN1l4Zkd4Vmh4Z3A3ZEFvdE5Jck9hZ1A2NEs4S0pxNFc3c1c0?=
 =?utf-8?B?T2luNWpSeTJHODkxMUl3U003elo3TGZnSlpiUVlhT1pXTEhQK3BhZGFhV1Nl?=
 =?utf-8?B?cW91blN4dEdGOTluTmw2c1c0K0lHL25FSnRiLzl2MW8wZERSZFpYWU1WbjJm?=
 =?utf-8?B?RzYwRGJFTWU4aGtRa0tJMG55QTk1ZEVPNjFNNlFhaWNNQUJ3RHRPLzVnRk9J?=
 =?utf-8?B?UmhlUUlGSE9lU3A3WDdXRXgvOVBYZ1c3bmRmekpUWXhGSXczMTlUUEdlc2Fv?=
 =?utf-8?B?dFdiWDE2VHdKWng4eDhjRU85aXBXVHBoczBaUXhjWkd3VkNRUXAydHpBUFVS?=
 =?utf-8?B?d3FlUzZneDc2QUxDRnF2VklxWkplN1B3c1A3MmRtdWQrdHh5V1JwNllYaXNP?=
 =?utf-8?B?a01MY1M1T3lBdmZPRFBTeExkc2VVSjFWTTZZV2NtYm53a25aME9EbmgxU29I?=
 =?utf-8?Q?jNr2HoXqZpLFkxwpzD7Ojlj14Mv0ZC4Eo4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2020 16:56:10.1489
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d864d81d-b90d-4fbb-2cc0-08d89a07d503
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEVtnEZIM7F0+5wU/uiTD1T0mZRDIapVCueKTk8geLkviEsz92HovjZic96nDjLghmkeVUmNAsiT0HKGdrSru1F2gPkfACQnnp5TkrN/1fQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1673
Content-Type: multipart/alternative;
 boundary="------------71F9D805A34E588DD18E5E9A"
Content-Language: en-CA

--------------71F9D805A34E588DD18E5E9A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-12-05 6:20 p.m., Andrew Ellis wrote:
> Hi Randy
>
> Thank you for your reply.
>
> Doing, "sudo apt install --reinstall coreutils" fixed the problem with 
> test not being found. I'm not sure why it was not on the system, but 
> that error is fixed.

Ah, good.


>
> Unfortunately I've run into another problem when I try and run 
> bitbake, the process fails witht he following error:
>
> / ports/linux/pseudo_wrappers.c:68:16: error: ‘__NR_renameat2’ 
> undeclared (first use in this function)/
> /
> /
>
> I'll take another look at that issue in the morning.
>

You'll need to upgrade to a newer yocto release or cherry-pick:

$ cd ../oe-core.git

$ git log -1 --stat 0fb257121b68f38b40c078150db8f7d0979b7ea5
commit 0fb257121b68f38b40c078150db8f7d0979b7ea5
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Apr 10 19:07:02 2019

     pseudo: Update to gain key bugfixes

     Newer distros are using new versions of glibc and coreutils which 
use the new glibc
     renameat2 function. We need to intercept this for correct 
functioning of pseudo. This
     is essential to ensure new distros continue to work with the project.

     Also, this version has a fix for path/inode cross corruption 
problems which
     may explain our mysterious locale permissions issues.

     Many thanks to Otavio and Peter Seebach for the help in figuring 
this out and
     fixing it.

     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

  meta/recipes-devtools/pseudo/pseudo_git.bb | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)


$ git tag --contains 0fb257121b68f38b40c078150db8f7d0979b7ea5
2019-04
2019-04-warrior
2019-04.2-warrior
2019-04.3-warrior
2019-04.4-warrior
2019-10
2019-10-zeus
2019-10.1-zeus
2019-10.2-zeus
2019-10.3-zeus
2019-10.4-zeus
2020-04
2020-04-dunfell
2020-04.1-dunfell
2020-04.2-dunfell
2020-04.3-dunfell
2020-10
2020-10-gatesgarth
uninative-2.5
uninative-2.6
uninative-2.7
uninative-2.8
uninative-2.9
yocto-2.7
yocto-3.0
yocto-3.1
yocto-3.2


../Randy


>
> Andrew
>
>
> On 05/12/2020 20:27, Randy MacLeod wrote:
>> On 2020-12-05 2:59 p.m., Andrew Ellis wrote:
>>> Hi Randy
>>>
>>> Thank you for your reply.
>>>
>>> I'm using Ubuntu 14.04 .
>>>
>>> After reading what you said about coreutils in your last message, I 
>>> tried installing coreutils and got a message saying the latest 
>>> version is installed. Doing "which test" doesn't yield anything. 
>>> I've looked in /usr/bin/ and there is no sign of test in there.
>>>
>>> The version of Yocto Project I'm using is 2.5 "poky"
>>>
>>> Andrew
>>
>> Andrew,
>>
>> Thanks for the info about your distro and YP version.
>>
>> It's odd that 'test' isn't part of your coreutils install.
>> https://launchpad.net/ubuntu/trusty/+package/coreutils
>>
>> Is it possible that you have removed it somehow?
>> If so you could try:
>>
>> $ sudo apt install --reinstall coreutils
>> or
>> $ sudo apt-get install --reinstall coreutils
>>
>> ../Randy
>>
>> ||
>>>
>>> On 05/12/2020 18:54, Randy MacLeod wrote:
>>>> On 2020-12-04 7:08 p.m., ajellisuk via lists.yoctoproject.org wrote:
>>>>> Hi
>>>>>
>>>>> I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from 
>>>>> MSC technologies), but the compile process fails with the 
>>>>> following output:
>>>>>
>>>>>     ERROR: Unable to start bitbake server
>>>>>     ERROR: Last 10 lines of server log for this session
>>>>> (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log): 
>>>>>
>>>>>          self.cooker = bb.cooker.BBCooker(self.configuration,
>>>>>     self.featureset)
>>>>>        File
>>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>>>
>>>>>     line 197, in __init__
>>>>>          self.initConfigurationData()
>>>>>        File
>>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>>>
>>>>>     line 356, in initConfigurationData
>>>>>          self.databuilder.parseBaseConfiguration()
>>>>>        File
>>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py", 
>>>>>
>>>>>     line 317, in parseBaseConfiguration
>>>>>          raise bb.BBHandledException
>>>>>     bb.BBHandledException
>>>>>     ERROR: The following required tools (as specified by HOSTTOOLS)
>>>>>     appear to be unavailable in PATH, please install them in order to
>>>>>     proceed:
>>>>>        test
>>>>>
>>>>>     ERROR: bitbake u-boot-imx -c compile –f
>>>>>
>>>>> I have had errors like this before, and have been to resolve by 
>>>>> installing the missing tools indicated. The problem that I've got 
>>>>> here is that I'm not sure what "test" is referring to. using, 
>>>>> "sudo apt-get install test", doesn't work.
>>>>>
>>>>> Can someone please give me a hint as to what the problem is here.
>>>>
>>>> Hi Andrew,
>>>>
>>>> It seems odd that you don't have coreutils/test already...
>>>> Test is part of coreutils on Ubuntu-20.04:
>>>>
>>>> $ which test
>>>> /usr/bin/test
>>>> $ dpkg -S /usr/bin/test
>>>> coreutils: /usr/bin/test
>>>>
>>>> What distro are you using for your build machine and
>>>> have you installed the suggested packages?
>>>> See the quick start guide and links therein:
>>>>
>>>> https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html 
>>>>
>>>>
>>>> https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions 
>>>>
>>>>
>>>> Also, if you could mention the layers and version of YP code
>>>> that you are using that could be helpful in general although
>>>> for this issue it shouldn't matter.
>>>>
>>>>
>>>> ../Randy
>>>>
>>>>
>>>>>
>>>>> Thanks in advance
>>>>>
>>>>> Andrew
>>>>>
>>>>>
>>>>> 
>>>>>
>>>>
>>>>
>>>
>>
>> -- 
>> # Randy MacLeod
>> # Wind River Linux
>
>

-- 
# Randy MacLeod
# Wind River Linux


--------------71F9D805A34E588DD18E5E9A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-12-05 6:20 p.m., Andrew Ellis
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk">
      
      <div class="moz-cite-prefix">Hi Randy</div>
      <div class="moz-cite-prefix"><br>
      </div>
      <div class="moz-cite-prefix">Thank you for your reply.</div>
      <div class="moz-cite-prefix"><br>
      </div>
      <div class="moz-cite-prefix">Doing, &quot;sudo apt install --reinstall
        coreutils&quot; fixed the problem with test not being found. I'm not
        sure why it was not on the system, but that error is fixed.</div>
    </blockquote>
    <p>Ah, good.</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk">
      <div class="moz-cite-prefix"><br>
      </div>
      <div class="moz-cite-prefix">Unfortunately I've run into another
        problem when I try and run bitbake, the process fails witht he
        following error:</div>
      <div class="moz-cite-prefix"><br>
      </div>
      <div class="moz-cite-prefix"><i>&nbsp;ports/linux/pseudo_wrappers.c:68:16:
          error: ‘__NR_renameat2’ undeclared (first use in this
          function)</i></div>
      <div class="moz-cite-prefix"><i><br>
        </i></div>
      <p>I'll take another look at that issue in the morning.</p>
    </blockquote>
    <p><br>
    </p>
    <p>You'll need to upgrade to a newer yocto release or cherry-pick:</p>
    <p>$ cd ../oe-core.git</p>
    <p>$ git log -1 --stat 0fb257121b68f38b40c078150db8f7d0979b7ea5<br>
      commit 0fb257121b68f38b40c078150db8f7d0979b7ea5<br>
      Author: Richard Purdie <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a><br>
      Date:&nbsp;&nbsp; Wed Apr 10 19:07:02 2019<br>
      <br>
      &nbsp;&nbsp;&nbsp; pseudo: Update to gain key bugfixes<br>
      &nbsp;&nbsp;&nbsp; <br>
      &nbsp;&nbsp;&nbsp; Newer distros are using new versions of glibc and coreutils
      which use the new glibc<br>
      &nbsp;&nbsp;&nbsp; renameat2 function. We need to intercept this for correct
      functioning of pseudo. This<br>
      &nbsp;&nbsp;&nbsp; is essential to ensure new distros continue to work with the
      project.<br>
      &nbsp;&nbsp;&nbsp; <br>
      &nbsp;&nbsp;&nbsp; Also, this version has a fix for path/inode cross corruption
      problems which<br>
      &nbsp;&nbsp;&nbsp; may explain our mysterious locale permissions issues.<br>
      &nbsp;&nbsp;&nbsp; <br>
      &nbsp;&nbsp;&nbsp; Many thanks to Otavio and Peter Seebach for the help in
      figuring this out and<br>
      &nbsp;&nbsp;&nbsp; fixing it.<br>
      &nbsp;&nbsp;&nbsp; <br>
      &nbsp;&nbsp;&nbsp; Signed-off-by: Richard Purdie
      <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a><br>
      <br>
      &nbsp;meta/recipes-devtools/pseudo/pseudo_git.bb | 2 +-<br>
      &nbsp;1 file changed, 1 insertion(+), 1 deletion(-)<br>
      <br>
    </p>
    <p><br>
    </p>
    <p>$ git tag --contains 0fb257121b68f38b40c078150db8f7d0979b7ea5<br>
      2019-04<br>
      2019-04-warrior<br>
      2019-04.2-warrior<br>
      2019-04.3-warrior<br>
      2019-04.4-warrior<br>
      2019-10<br>
      2019-10-zeus<br>
      2019-10.1-zeus<br>
      2019-10.2-zeus<br>
      2019-10.3-zeus<br>
      2019-10.4-zeus<br>
      2020-04<br>
      2020-04-dunfell<br>
      2020-04.1-dunfell<br>
      2020-04.2-dunfell<br>
      2020-04.3-dunfell<br>
      2020-10<br>
      2020-10-gatesgarth<br>
      uninative-2.5<br>
      uninative-2.6<br>
      uninative-2.7<br>
      uninative-2.8<br>
      uninative-2.9<br>
      yocto-2.7<br>
      yocto-3.0<br>
      yocto-3.1<br>
      yocto-3.2</p>
    <p><br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk">
      <p><br>
      </p>
      <p>Andrew<br>
      </p>
      <div class="moz-cite-prefix"><br>
      </div>
      <div class="moz-cite-prefix">On 05/12/2020 20:27, Randy MacLeod
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:93d905af-b0cc-77d7-07f1-53386e535834@windriver.com">
        <div class="moz-cite-prefix">On 2020-12-05 2:59 p.m., Andrew
          Ellis wrote:<br>
        </div>
        <blockquote type="cite" cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk">Hi
          Randy <br>
          <br>
          Thank you for your reply. <br>
          <br>
          I'm using Ubuntu 14.04 . <br>
          <br>
          After reading what you said about coreutils in your last
          message, I tried installing coreutils and got a message saying
          the latest version is installed. Doing &quot;which test&quot; doesn't
          yield anything. I've looked in /usr/bin/ and there is no sign
          of test in there. <br>
          <br>
          The version of Yocto Project I'm using is 2.5 &quot;poky&quot; <br>
          <br>
          Andrew <br>
        </blockquote>
        <p>Andrew,</p>
        <p>Thanks for the info about your distro and YP version. <br>
        </p>
        <p>It's odd that 'test' isn't part of your coreutils install.<br>
          &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://launchpad.net/ubuntu/trusty/+package/coreutils" moz-do-not-send="true">https://launchpad.net/ubuntu/trusty/+package/coreutils</a>
          <br>
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
        <blockquote type="cite" cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk"> <br>
          On 05/12/2020 18:54, Randy MacLeod wrote: <br>
          <blockquote type="cite">On 2020-12-04 7:08 p.m., ajellisuk via
            lists.yoctoproject.org wrote: <br>
            <blockquote type="cite">Hi <br>
              <br>
              I'm trying to compile u-boot for an iMX6 board
              (iMX6-Q7_Plus from MSC technologies), but the compile
              process fails with the following output: <br>
              <br>
              &nbsp;&nbsp;&nbsp; ERROR: Unable to start bitbake server <br>
              &nbsp;&nbsp;&nbsp; ERROR: Last 10 lines of server log for this session <br>
(/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log):
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; self.cooker =
              bb.cooker.BBCooker(self.configuration, <br>
              &nbsp;&nbsp;&nbsp; self.featureset) <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; File <br>
&quot;/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py&quot;,
              <br>
              &nbsp;&nbsp;&nbsp; line 197, in __init__ <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; self.initConfigurationData() <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; File <br>
&quot;/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py&quot;,
              <br>
              &nbsp;&nbsp;&nbsp; line 356, in initConfigurationData <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; self.databuilder.parseBaseConfiguration() <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; File <br>
&quot;/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py&quot;,
              <br>
              &nbsp;&nbsp;&nbsp; line 317, in parseBaseConfiguration <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; raise bb.BBHandledException <br>
              &nbsp;&nbsp;&nbsp; bb.BBHandledException <br>
              &nbsp;&nbsp;&nbsp; ERROR: The following required tools (as specified by
              HOSTTOOLS) <br>
              &nbsp;&nbsp;&nbsp; appear to be unavailable in PATH, please install them
              in order to <br>
              &nbsp;&nbsp;&nbsp; proceed: <br>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; test <br>
              <br>
              &nbsp;&nbsp;&nbsp; ERROR: bitbake u-boot-imx -c compile –f <br>
              <br>
              I have had errors like this before, and have been to
              resolve by installing the missing tools indicated. The
              problem that I've got here is that I'm not sure what
              &quot;test&quot; is referring to. using, &quot;sudo apt-get install
              test&quot;, doesn't work. <br>
              <br>
              Can someone please give me a hint as to what the problem
              is here. <br>
            </blockquote>
            <br>
            Hi Andrew, <br>
            <br>
            It seems odd that you don't have coreutils/test already... <br>
            Test is part of coreutils on Ubuntu-20.04: <br>
            <br>
            $ which test <br>
            /usr/bin/test <br>
            $ dpkg -S /usr/bin/test <br>
            coreutils: /usr/bin/test <br>
            <br>
            What distro are you using for your build machine and <br>
            have you installed the suggested packages? <br>
            See the quick start guide and links therein: <br>
            <br>
            <a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html" moz-do-not-send="true">https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a>
            <br>
            <br>
            <a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions" moz-do-not-send="true">https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions</a>
            <br>
            <br>
            Also, if you could mention the layers and version of YP code
            <br>
            that you are using that could be helpful in general although
            <br>
            for this issue it shouldn't matter. <br>
            <br>
            <br>
            ../Randy <br>
            <br>
            <br>
            <blockquote type="cite"> <br>
              Thanks in advance <br>
              <br>
              Andrew <br>
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
      </blockquote>
      <p><br>
      </p>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------71F9D805A34E588DD18E5E9A--
