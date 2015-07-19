Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00560E009FD; Sat, 18 Jul 2015 21:32:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C710DE004E5
	for <yocto@yoctoproject.org>; Sat, 18 Jul 2015 21:32:05 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t6J4W3pG011552
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 18 Jul 2015 21:32:03 -0700 (PDT)
Received: from server.local (128.224.21.172) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.235.1;
	Sat, 18 Jul 2015 21:32:03 -0700
To: Ryan Soussan <ryansvb91@gmail.com>, <yocto@yoctoproject.org>
References: <CAMeZNHSyDNsKD0aX0P_cnpS3o8jZPkGcN8d0ZDnWFhrC3P1cHw@mail.gmail.com>
	<55AB1F48.2050404@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <55AB2842.6070405@windriver.com>
Date: Sun, 19 Jul 2015 00:32:02 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55AB1F48.2050404@windriver.com>
Subject: Re: Problem overwriting default kernel config values
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 19 Jul 2015 04:32:10 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-18 11:53 PM, Bruce Ashfield wrote:
> On 2015-07-17 9:35 PM, Ryan Soussan wrote:
>> Hello,
>> We're having a problem overwriting the default linux kernel config
>> values.  We tried adding our own .cfg file to our layer and appending it
>> to the source url of the linux-yocto bitbake file.  The variable in our
>> case is not getting overwritten though (changing CONFIG_ATH5K=m to =y).
>> Here's some relevant output from mismatch.txt:
>> Value requested for CONFIG_ATH5K not in final .config
>>        Requested value:  CONFIG_ATH5K=y
>>                  Actual value:     CONFIG_ATH5K=m
>>
>> And basically the same error message in missing_required.cfg.  So it
>> looks like yocto is seeing our request but ignoring it.  The source code
>> for these messages is located here:
>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf_check
>>
>>
>> We were following the instructions for editing the config file located
>> in the linux directory of the meta-skeleton layer in poky.   Any help
>> would be appreciated!
>>
>
> What release/branch are you using ? This is a test case that I run
> ever release (and use every day), so the overrides do work.
>
> The kernel configuration system doesn't have the opportunity to
> ignore settings. They are consolidated and then passed to the kernel's
> config subsystem and then the results audited.
>
> I'll run a similar test here, since if something else later in the
> configuration is selecting that driver as a module, or another constraint
> is kicking in .. you will end up with a module, no matter what you
> set in your fragment.

And yes, it was a contraint in the end. I needed this in my fragment to
flip ATH5K to =y

CONFIG_ATH5K=y
CONFIG_ATH_CARDS=y
CONFIG_ATH_COMMON=y
CONFIG_CFG80211=y
CONFIG_R8723AU=y
CONFIG_MAC80211=y

I'm working on some diagnostics and symbol lookups that will help with
this in the future .. but it is much more challenging than you'd expect!

Cheers,

Bruce

>
> Bruce
>
>> Thanks,
>> Ryan
>>
>>
>


