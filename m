Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E024E00848; Mon,  8 Sep 2014 05:15:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADFACE0056A
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 05:15:05 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s88CF2Hs020292
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Sep 2014 05:15:03 -0700 (PDT)
Received: from server.local (128.224.20.134) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 8 Sep 2014 05:15:01 -0700
Message-ID: <540D9DC2.5010900@windriver.com>
Date: Mon, 8 Sep 2014 08:14:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Ilya Dmitrichenko <errordeveloper@gmail.com>
References: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>	<540C68E0.5050907@windriver.com>
	<CAPhDKbGc=aZ0Uy2XD5nSivugzwERKFJXbW3MJH=ye4UEM-X5Tg@mail.gmail.com>
In-Reply-To: <CAPhDKbGc=aZ0Uy2XD5nSivugzwERKFJXbW3MJH=ye4UEM-X5Tg@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Kernel features
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
X-List-Received-Date: Mon, 08 Sep 2014 12:15:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-09-08, 1:50 AM, Ilya Dmitrichenko wrote:
> Hi Bruce,
>
> On 7 September 2014 15:17, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>> On 2014-09-07, 4:51 AM, Ilya Dmitrichenko wrote:
>>>
>>> Today I have spent quite a while trying to figure how KERNEL_FEATURES
>>> works and why some of the things I pass in my configuration fragment
>>> are not getting enabled.
>>>
>>> It turned out that some of the options no longer existed and some had
>>> been renamed.
>>
>>
>> Do you have an example ? We try and not rename or remove public facing
>> configuration fragments, and hide the changing CONFIG_* values behind
>> the fragment names.
>
> Here is what I was doing first:
>
> CONFIG_SND_OMAP_SOC=n
> CONFIG_SND_OMAP_SOC_MCBSP=n
> CONFIG_SND_OMAP_SOC_OMAP_TWL4030=n
> CONFIG_SND_SOC_TWL4030=n
> CONFIG_SND_AM335X_SOC_EVM=m
> CONFIG_SND_AM33XX_SOC=m
> CONFIG_SND_DAVINCI_SOC_MCASP=m
> CONFIG_SND_HRTIMER=m
>
> This is resulted in disabled options propagating as expected and
> CONFIG_SND_HRTIMER worked as well.
>
> The rest, however didn't.

Aha. The kernel configuration audit would have told you that some
options were set, and didn't make it into the final .config

>
> It turned out that basically CONFIG_SND_AM335X_SOC_EVM is misspelled
> and should be called CONFIG_SND_AM33XX_SOC_EVM. I think there must be
> a way to verify whether this existed or not.
>
> It then also turned out that CONFIG_SND_AM335X_SOC_EVM depends on
> CONFIG_SND_DAVINCI_SOC, and I had to enable that one and ensure it
> comes first.

And the audit would have told you that you had an invalid option
(i.e. the misspelled one didn't appear in any Kconfig in the kernel).

>
> This is a working set:
>
> CONFIG_SND_OMAP_SOC=m
> CONFIG_SND_OMAP_SOC_MCBSP=m
> CONFIG_SND_OMAP_SOC_OMAP_TWL4030=m
> CONFIG_SND_SOC_TWL4030=m
> CONFIG_SND_DAVINCI_SOC=m
> CONFIG_SND_AM33XX_SOC_EVM=m
> CONFIG_SND_DAVINCI_SOC_MCASP=m
> CONFIG_SND_HRTIMER=m
>
>
>>> The question is really why would this not get detected by
>>> kernel_configcheck or any other step?
>>>
>>> I'm guessing this might be the case of how kconfig works, perhaps...
>>> So I wonder whether anyone have looked into how we could actually get
>>> the feature dependency graph from kconfig to bitbake or at least some
>>> sort of helper tool? Perhaps parsing kconfig manifests in Python would
>>> be a starting point...
>>
>>
>> There have been many efforts are changing, writing and processing
>> Kconfig constructs in other languages .. they all end up being
>> pretty much a re-implementation of Kconfig, and hence a big effort
>> that needs to be continuously maintained over time .. also a big
>> effort.
>
> I basically think that we could do something better then blindly
> throwing a set of options without verifying it.

Ah, but we do verify it. There's a check config task, that used to
be more visible, I got complaints and we hid it. I have a 1.7 task
to make it more visible again :)

>
> The reason I mentioned Python was that I though of sharing Kconfig's
> dependency graph with bitbake and thereby detecting errors like the
> above.
>
> As a user, this is what I'd love to see:
>
> Error: The Kconfig option CONFIG_SND_AM335X_SOC_EVM that you have
> specified doesn't exist. (Did you mean CONFIG_SND_AM33XX_SOC_EVM?)
>
> Error: The Kconfig option CONFIG_SND_AM33XX_SOC that you have
> specified doesn't exist. (Nothing similar exists)

Pretty much already done.

>
> Warning: The Kconfig option CONFIG_SND_DAVINCI_SOC_MCASP that you have
> specified depends on CONFIG_SND_DAVINCI_SOC. I will enable
> CONFIG_SND_DAVINCI_SOC as a module for you.

This one you can't do without parsing and evaluating all the Kconfigs,
which is expensive, and hard to do. We can do something basic by looking
at only the direct options within a particular Kconfig, since they are
immediately available.

But we do detect a whole set of other errors already, and for the most
part, they lead pretty quickly to the issue.

Bruce

>
> Hope this makes more sense.
>
> Cheers,
>


