Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01D0FE0074B; Tue,  1 Nov 2016 23:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E2A4E0070F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 23:25:22 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 23D1568A01A; Wed,  2 Nov 2016 06:25:22 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 47EB468A019;
	Wed,  2 Nov 2016 06:25:15 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 549096740215;
	Wed,  2 Nov 2016 07:25:14 +0100 (CET)
To: yocto@yoctoproject.org
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<1861981.ABIzZx3oLe@peggleto-mobl.ger.corp.intel.com>
	<11df0b01-8b63-9bbb-aeb2-84d8e97dfaff@mlbassoc.com>
	<3716500.351XhGvxqH@peggleto-mobl.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <fca382f4-53b0-55e2-e635-e78e93363a46@mlbassoc.com>
Date: Wed, 2 Nov 2016 07:25:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <3716500.351XhGvxqH@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 02 Nov 2016 06:25:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-02 03:25, Paul Eggleton wrote:
> On Wed, 02 Nov 2016 03:02:11 Gary Thomas wrote:
>> On 2016-11-02 02:44, Paul Eggleton wrote:
>>> On Wed, 02 Nov 2016 02:37:57 Gary Thomas wrote:
>>>> On 2016-11-01 21:33, Paul Eggleton wrote:
>>>>> On Tue, 01 Nov 2016 13:36:57 Gary Thomas wrote:
>>>>>> On 2016-10-31 23:06, Paul Eggleton wrote:
>>>>>>> FYI the eSDK will use whatever you set in DISTRO - you have your own
>>>>>>> distribution, but I assume you are still referencing poky - perhaps as
>>>>>>> an
>>>>>>> include from your distro configuration? At least meta-poky must be in
>>>>>>> your
>>>>>>> bblayers.conf, otherwise I don't think you'd be getting this error.
>>>>>>>
>>>>>>> Regardless of that, there is a bug here somewhere. What do you have
>>>>>>> under
>>>>>>> layers/ in the generated SDK? Are you setting TEMPLATECONF anywhere?
>>>>>>
>>>>>> I don't have meta-poky, nor any mention of poky, in any of my layers.
>>>>>> I'm still relying on the poky GIT tree, but that's for historical
>>>>>> reasons
>>>>>> (started long before the OE-core split).
>>>>>
>>>>> I think that's where the problem lies. You may not realise it, but the
>>>>> TEMPLATECONF environment variable is being set simply by using the poky
>>>>> repository, since there is a .templateconf directory at its root that
>>>>> sets
>>>>> it to "meta-poky/conf" if it isn't already set. This isn't a problem
>>>>> during normal operation since meta-poky/conf exists there - you'll just
>>>>> be using poky's template local.conf and bblayers.conf rather than any
>>>>> other. When you generate the eSDK though, meta-poky won't be copied into
>>>>> the eSDK because that layer is not in your bblayers.conf and thus you
>>>>> get
>>>>> the error.
>>>>>
>>>>> I will have to try and figure a way around this. In the mean time you
>>>>> should be able to change the saved value in
>>>>> <builddir>/conf/templateconf.cfg to "meta/conf" to work around the
>>>>> issue,
>>>>> but it'll come back if you create a new build directory unless you set
>>>>> TEMPLATECONF in the external environment before running
>>>>> oe-init-build-env.
>>>>
>>>> I'm still confused.  There is no mention of meta-poky, or of the $DISTRO
>>>>
>>>> 'poky' anywhere in my <builddir>/conf:
>>>>    gthomas@europa:p8701_2016-10-22$ cat conf/templateconf.cfg
>>>>    meta-rainier-am335x-p8701/conf
>>>>    gthomas@europa:p8701_2016-10-22$ grep -i poky conf/*
>>>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta \
>>>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-oe \
>>>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-amltd \
>>>>    conf/bblayers.conf:
>>>>    /local/poky-cutting-edge/meta-rainier-am335x-p8701 \
>>>>
>>>> conf/bblayers.conf:  /local/poky-cutting-edge/meta-ti \
>>>>
>>>>    conf/bblayers.conf:  /local/poky-cutting-edge/meta-webserver \
>>>
>>> It turns out I was mistaken. The templateconf.cfg in your build directory
>>> has no bearing on what the value ends up being in the eSDK because that
>>> file isn't copied over - instead it is created from scratch. I am working
>>> on a proper fix now.
>>
>> Thanks.  I tried overriding this on the machine where I want to
>> install the eSDK (not the same as where I built it) like this:
>>    gthomas@zeus:~$ TEMPLATECONF=meta-rainier-am335x-p8701/conf
>> /work/tmp/amltd-glibc-x86_64-arm-toolchain-ext-2.2+snapshot.sh
>>
>> Sadly, it still failed the same way.
>
> Right, that's because the environment is filtered by the SDK installer, so
> that won't make it through into the environment used during installation.

I've tested your patches for this (from the OE-core mailing list)
and I can now build and use the eSDK for my board :-)

I do have a couple observations/questions:

* I added my missing tool with this line in my local.conf
      TOOLCHAIN_HOST_TASK_append = " nativesdk-ti-cgt-pru"
   Why did this cause many of the nativesdk tools to have to be rebuilt?
      NOTE: Tasks Summary: Attempted 2423 tasks of which 2043 didn't need to be rerun and all succeeded.

* When I built 'nativesdk-ti-cgt-pru', I got a number of scary looking errors - here are a few:
     ERROR: nativesdk-ti-cgt-pru-2.1.1-r0 do_configure: Taskhash mismatch eb0229a8c364c4c399fc2e84f4dfaf91 versus 
b5d16aa43836f3832200af39aba5b796 for 
virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cgt-pru_2.1.1.bb.do_configure
     ERROR: Taskhash mismatch eb0229a8c364c4c399fc2e84f4dfaf91 versus b5d16aa43836f3832200af39aba5b796 for 
virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cgt-pru_2.1.1.bb.do_configure
     ERROR: nativesdk-ti-cgt-pru-2.1.1-r0 do_compile: Taskhash mismatch bc0d6bb3a62f58875962d4ccf1b60dd9 versus 
9e207a5a6aa53512135b5ea3a0610bf3 for 
virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cgt-pru_2.1.1.bb.do_compile

* When I installed the eSDK on a machine other than where I
   built it, I also got a lot (865) of messages like these:

WARNING: The quilt-native:do_configure sig is computed to be 315b89079a159e1d4e43d3199c487bdb, but the sig is locked to 
a9909bdcc4c81106eb42c21bb0d760fc in SIGGEN_LOCKEDSIGS_t-x86-64
The quilt-native:do_compile sig is computed to be be128011cc1f47157898f513dc4e9bbb, but the sig is locked to 
fa83446de41fe9e7c2c49c2745438a8d in SIGGEN_LOCKEDSIGS_t-x86-64
The quilt-native:do_install sig is computed to be 85c8be820a93b84901dd7528eb61840e, but the sig is locked to 
6caa366055ef06147ef64cbe7d83c608 in SIGGEN_LOCKEDSIGS_t-x86-64
The quilt-native:do_populate_sysroot sig is computed to be 5b0f52254aa8548fa406b806dae000cb, but the sig is locked to 
d3cf7e526716d0286ce596c44c6b9936 in SIGGEN_LOCKEDSIGS_t-x86-64
The glibc:do_patch sig is computed to be 373272e62465460928320aa7643f9916, but the sig is locked to 
712620a3943887e11d9730013d1e07f0 in SIGGEN_LOCKEDSIGS_t-armv7ahf-neon

All that said, it is now working for me, time to learn to use it!
Thanks for your help.  Feel free to add my Acked-by or Signed-off-by
to your patches if you wish.

Acked-by: Gary Thomas <gary@mlbassoc.com>
Signed-off-by: Gary Thomas <gary@mlbassoc.com>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

