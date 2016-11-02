Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30529E0074B; Tue,  1 Nov 2016 19:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9E21E0070F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 19:02:13 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2A1D468A01B; Wed,  2 Nov 2016 02:02:13 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4CD9F68A019;
	Wed,  2 Nov 2016 02:02:12 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E1A0E674021B;
	Wed,  2 Nov 2016 03:02:11 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<8906607.HU35dOrijf@peggleto-mobl.ger.corp.intel.com>
	<af40b507-f25b-a45e-4b80-2d90801c25b4@mlbassoc.com>
	<1861981.ABIzZx3oLe@peggleto-mobl.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <11df0b01-8b63-9bbb-aeb2-84d8e97dfaff@mlbassoc.com>
Date: Wed, 2 Nov 2016 03:02:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1861981.ABIzZx3oLe@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Wed, 02 Nov 2016 02:02:20 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-02 02:44, Paul Eggleton wrote:
> On Wed, 02 Nov 2016 02:37:57 Gary Thomas wrote:
>> On 2016-11-01 21:33, Paul Eggleton wrote:
>>> On Tue, 01 Nov 2016 13:36:57 Gary Thomas wrote:
>>>> On 2016-10-31 23:06, Paul Eggleton wrote:
>>>>> FYI the eSDK will use whatever you set in DISTRO - you have your own
>>>>> distribution, but I assume you are still referencing poky - perhaps as
>>>>> an
>>>>> include from your distro configuration? At least meta-poky must be in
>>>>> your
>>>>> bblayers.conf, otherwise I don't think you'd be getting this error.
>>>>>
>>>>> Regardless of that, there is a bug here somewhere. What do you have
>>>>> under
>>>>> layers/ in the generated SDK? Are you setting TEMPLATECONF anywhere?
>>>>
>>>> I don't have meta-poky, nor any mention of poky, in any of my layers.
>>>> I'm still relying on the poky GIT tree, but that's for historical reasons
>>>> (started long before the OE-core split).
>>>
>>> I think that's where the problem lies. You may not realise it, but the
>>> TEMPLATECONF environment variable is being set simply by using the poky
>>> repository, since there is a .templateconf directory at its root that sets
>>> it to "meta-poky/conf" if it isn't already set. This isn't a problem
>>> during normal operation since meta-poky/conf exists there - you'll just
>>> be using poky's template local.conf and bblayers.conf rather than any
>>> other. When you generate the eSDK though, meta-poky won't be copied into
>>> the eSDK because that layer is not in your bblayers.conf and thus you get
>>> the error.
>>>
>>> I will have to try and figure a way around this. In the mean time you
>>> should be able to change the saved value in
>>> <builddir>/conf/templateconf.cfg to "meta/conf" to work around the issue,
>>> but it'll come back if you create a new build directory unless you set
>>> TEMPLATECONF in the external environment before running
>>> oe-init-build-env.
>>
>> I'm still confused.  There is no mention of meta-poky, or of the $DISTRO
>> 'poky' anywhere in my <builddir>/conf:
>>    gthomas@europa:p8701_2016-10-22$ cat conf/templateconf.cfg
>>    meta-rainier-am335x-p8701/conf
>>    gthomas@europa:p8701_2016-10-22$ grep -i poky conf/*
>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta \
>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-oe \
>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-amltd \
>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-rainier-am335x-p8701 \
>> conf/bblayers.conf:  /local/poky-cutting-edge/meta-ti \
>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-webserver \
>
> It turns out I was mistaken. The templateconf.cfg in your build directory has
> no bearing on what the value ends up being in the eSDK because that file isn't
> copied over - instead it is created from scratch. I am working on a proper fix
> now.

Thanks.  I tried overriding this on the machine where I want to
install the eSDK (not the same as where I built it) like this:
   gthomas@zeus:~$ TEMPLATECONF=meta-rainier-am335x-p8701/conf 
/work/tmp/amltd-glibc-x86_64-arm-toolchain-ext-2.2+snapshot.sh

Sadly, it still failed the same way.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

