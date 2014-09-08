Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A8BE007AA; Sun,  7 Sep 2014 22:50:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFC61E004F5
	for <yocto@yoctoproject.org>; Sun,  7 Sep 2014 22:50:28 -0700 (PDT)
Received: by mail-ig0-f180.google.com with SMTP id hn18so2187630igb.1
	for <yocto@yoctoproject.org>; Sun, 07 Sep 2014 22:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AtQUGn8mfFOk88xW32mB8HLSbPA+f9kbuXFvL0KGNRY=;
	b=CaHQAOjaWySfagLl8ZO9oH7hpYPKyqEiKIHw0RQX/z8W1CllKf20eeigy1RxxFZ887
	SKzes4SEjukVSURSPJwncINrRhV/OYFoUcEJXxYwSHZcR31KMDbpyMbP4LGMKeukaeNT
	Le+QnLTuN3ZnPtewq4HvL35qKlGOavb6W7WSkV5Ouy3FLVmuo9wCLgQCW7vKu7aTyMW9
	lNxsqzbScs5eLd8JCAsant34VGjomf7Brqj9UBgfFufpTzCMBBSRvioTvJLHAk7XeNhh
	LnqMJ5Kq7mAQ3mvLp0p7X1EFnaUZdmf+me5Vj6lra3/lJtlj03ALYBJcsCSCwqQY2dGC
	EX8A==
MIME-Version: 1.0
X-Received: by 10.50.66.229 with SMTP id i5mr9121507igt.27.1410155428184; Sun,
	07 Sep 2014 22:50:28 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Sun, 7 Sep 2014 22:50:28 -0700 (PDT)
In-Reply-To: <540C68E0.5050907@windriver.com>
References: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>
	<540C68E0.5050907@windriver.com>
Date: Mon, 8 Sep 2014 06:50:28 +0100
Message-ID: <CAPhDKbGc=aZ0Uy2XD5nSivugzwERKFJXbW3MJH=ye4UEM-X5Tg@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Mon, 08 Sep 2014 05:50:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

On 7 September 2014 15:17, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> On 2014-09-07, 4:51 AM, Ilya Dmitrichenko wrote:
>>
>> Today I have spent quite a while trying to figure how KERNEL_FEATURES
>> works and why some of the things I pass in my configuration fragment
>> are not getting enabled.
>>
>> It turned out that some of the options no longer existed and some had
>> been renamed.
>
>
> Do you have an example ? We try and not rename or remove public facing
> configuration fragments, and hide the changing CONFIG_* values behind
> the fragment names.

Here is what I was doing first:

CONFIG_SND_OMAP_SOC=n
CONFIG_SND_OMAP_SOC_MCBSP=n
CONFIG_SND_OMAP_SOC_OMAP_TWL4030=n
CONFIG_SND_SOC_TWL4030=n
CONFIG_SND_AM335X_SOC_EVM=m
CONFIG_SND_AM33XX_SOC=m
CONFIG_SND_DAVINCI_SOC_MCASP=m
CONFIG_SND_HRTIMER=m

This is resulted in disabled options propagating as expected and
CONFIG_SND_HRTIMER worked as well.

The rest, however didn't.

It turned out that basically CONFIG_SND_AM335X_SOC_EVM is misspelled
and should be called CONFIG_SND_AM33XX_SOC_EVM. I think there must be
a way to verify whether this existed or not.

It then also turned out that CONFIG_SND_AM335X_SOC_EVM depends on
CONFIG_SND_DAVINCI_SOC, and I had to enable that one and ensure it
comes first.

This is a working set:

CONFIG_SND_OMAP_SOC=m
CONFIG_SND_OMAP_SOC_MCBSP=m
CONFIG_SND_OMAP_SOC_OMAP_TWL4030=m
CONFIG_SND_SOC_TWL4030=m
CONFIG_SND_DAVINCI_SOC=m
CONFIG_SND_AM33XX_SOC_EVM=m
CONFIG_SND_DAVINCI_SOC_MCASP=m
CONFIG_SND_HRTIMER=m


>> The question is really why would this not get detected by
>> kernel_configcheck or any other step?
>>
>> I'm guessing this might be the case of how kconfig works, perhaps...
>> So I wonder whether anyone have looked into how we could actually get
>> the feature dependency graph from kconfig to bitbake or at least some
>> sort of helper tool? Perhaps parsing kconfig manifests in Python would
>> be a starting point...
>
>
> There have been many efforts are changing, writing and processing
> Kconfig constructs in other languages .. they all end up being
> pretty much a re-implementation of Kconfig, and hence a big effort
> that needs to be continuously maintained over time .. also a big
> effort.

I basically think that we could do something better then blindly
throwing a set of options without verifying it.

The reason I mentioned Python was that I though of sharing Kconfig's
dependency graph with bitbake and thereby detecting errors like the
above.

As a user, this is what I'd love to see:

Error: The Kconfig option CONFIG_SND_AM335X_SOC_EVM that you have
specified doesn't exist. (Did you mean CONFIG_SND_AM33XX_SOC_EVM?)

Error: The Kconfig option CONFIG_SND_AM33XX_SOC that you have
specified doesn't exist. (Nothing similar exists)

Warning: The Kconfig option CONFIG_SND_DAVINCI_SOC_MCASP that you have
specified depends on CONFIG_SND_DAVINCI_SOC. I will enable
CONFIG_SND_DAVINCI_SOC as a module for you.

Hope this makes more sense.

Cheers,
-- 
Ilya

