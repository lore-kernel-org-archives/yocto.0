Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0D9BE00CB6; Mon,  2 Oct 2017 13:46:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A6BE00C65
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 13:46:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v92KkCqg015531
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 2 Oct 2017 13:46:13 -0700 (PDT)
Received: from server.local (128.224.21.215) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 2 Oct 2017 13:46:11 -0700
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1506828179.7624.9.camel@sdl.usu.edu>
	<3fd40621-6c3e-d7e2-69c0-baa1aa4dab86@windriver.com>
	<1506956727.2816.5.camel@sdl.usu.edu>
	<1506957801.2816.10.camel@sdl.usu.edu>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <d0f77147-e417-537c-5be6-2b2570f5a530@windriver.com>
Date: Mon, 2 Oct 2017 16:46:10 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506957801.2816.10.camel@sdl.usu.edu>
Cc: Jack Kiefer <Jack.Kiefer@sdl.usu.edu>
Subject: Re: Configuration fragments not making it into kernel configuration
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
X-List-Received-Date: Mon, 02 Oct 2017 20:46:23 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2017-10-02 11:23 AM, Jonathan Haws wrote:
>>>> I know I can fix this by simply doing a menuconfig, but that
>>>> isn't
>>>> the
>>>> proper way to do it - I have multiple BSP layers that do the same
>>>> thing
>>>> and they all behave in the same way.
>>>>
>>>> What am I doing wrong?  I've attached my layer that contains the
>>>> recipe.  If the fragments are getting installed I think the
>>>> recipe
>>>> is
>>>> working right - but is there something in the lower-level class
>>>> that
>>>> isn't working or do I have a configuration that is breaking it?
>>> I did a build with morty and your BSP, and I'm not seeing
>>> the same results.
>>>
>>> One notable difference is that if you are using the tip of
>>> the morty branches, you should get 4.8.17, not 4.8.3.
>>>
>>> I did zero extra configuration, just added your layer, meta-intel
>>> and then bitbaked linux-yocto-rt.
>> I just noticed that my meta-intel layer was a few commits behind, a
>> likely culprit for what I'm seeing.  I'm rebuilding to see what I
>> get.
>> I'll report back when I have something.
>>
>> If this doesn't solve my issue, would you recommend wiping my sstate?
>> I've already wiped out tmp without success.
> 
> Issue resolved.  Fragments now making it into the kernel configuration
> correctly.  Thanks, Bruce!
> 
>>>
>>> Maybe I'm misunderstanding what I see in the BSP layer, but I
>>> did get IGB disabled:
>>>
>>> :~/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-
>>> yocto-
>>> rt/4.8.17+gitAUTOINC+bb6984f46b_9c4f52cb2b-r0/linux-corei7-64-
>>> intel-
>>> common-preempt-rt-build$
>>> grep CONFIG_IGB .config
>>> # CONFIG_IGB is not set
>>> CONFIG_IGBVF=m
>>>
>>> And I did get a warning during the build:
>>>
>>> ---------- CONFIG_IGB_DCA -----------------
>>> Config: CONFIG_IGB_DCA
>>> From:
>>> /home/bruce/poky/build/tmp/work-shared/xpedite7570/kernel-
>>> source/.kernel-meta/configs/standard/preempt-
>>> rt/intel/features/dca/dca.cfg
>>> Requested value:  CONFIG_IGB_DCA=y
>>> Actual value:
>>>
>>> Config 'IGB_DCA' has the following conditionals:
>>>     IGB && DCA && !(IGB = y && DCA = m) (value: "n")
>>> IGB && DCA && !(IGB = y && DCA = m) (value: "n")
>>> Dependency values are:
>>>     y [y] m [m] IGB [n] DCA [y]
>>>
>>> --------------------
>>>
>>> Which explains why CONFIG_IGB_DCA didn't make it into the final
>>> .config
>>>
>>> Can you clarify what you were looking to get for final
>>> configuration
>>> settings ?
>> The three fragments should disable the Intel IGB driver (CONFIG_IGB
>> not
>> set), enable some GPIO I2C drivers, and enable direct cache access.
>>
>> I'm guessing CONFIG_IGB_DCA was set in the original config and
>> CONFIG_IGB is not being set, so IGB_DCA is getting unset causing the
>> warning.  I'll adjust my IGB fragment to explicity disable
>> CONFIG_IGB_DCA as well.
> 
> I get the same warning, and I believe it is because that setting is
> only available if CONFIG_IGB is 'y' or 'm'.  Since I'm removing
> CONFIG_IGB, CONFIG_IGB_DCA isn't even an option.  If I add "#
> CONFIG_IGB_DCA is not set" to my fragment, I get the following warning:
> ---------- CONFIG_IGB_DCA -----------------
> Config: CONFIG_IGB_DCA
> From: /opt/yocto/poky/build-teisit/tmp/work-shared/xpedite7570/kernel-
> source/.kernel-meta/configs/standard/preempt-
> rt/intel/features/dca/dca.cfg /opt/yocto/poky/build-teisit/tmp/work-
> shared/xpedite7570/kernel-source/.kernel-meta/configs/standard/preempt-
> rt/intel/Remove_Intel_IGB_driver.cfg
> Requested value:  # CONFIG_IGB_DCA is not set
> Actual value:
> 
> Config 'IGB_DCA' has the following conditionals:
>    IGB && DCA && !(IGB = y && DCA = m) (value: "n")
> IGB && DCA && !(IGB = y && DCA = m) (value: "n")
> Dependency values are:
>    y [y] m [m] IGB [n] DCA [y]
> 
> What is the best way to clean up this type of warning - one where the
> setting is a conditional option and is enabled in the default
> configuration but a fragment removes the parent option?

This actually shoots through a gap in the audit code. Not a bug,
but due to a historical way that the options are flagged.

Only mismatches in 'hardware' options are reported, since that could
cause a boot failure or other similary severe issue with a board.

The option in question is tagged as 'hardware' by the upper layers
and there's currently no way to undo that tag.

The warning you are getting indicates that while the option was
set to a value, it wasn't in the final .config at all .. i.e. in this
case a dependency is gone so the option doesn't make it in at all
(off or non).

Since it is only a warning, and we understand it, it can be
ignored. I'm going to add a method in master that would allow that
hardware tag of the option to be cleared, and then it wouldn't be
in the final .config.

Cheers,

Bruce


> 


