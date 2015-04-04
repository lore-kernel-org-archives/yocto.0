Return-Path: <cca_liam_maps@mail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3276E00956; Sat,  4 Apr 2015 12:55:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cca_liam_maps[at]mail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.200 listed in list.dnswl.org]
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE4ECE006E5
	for <yocto@yoctoproject.org>; Sat,  4 Apr 2015 12:55:12 -0700 (PDT)
Received: from [192.168.0.54] ([84.41.69.7]) by mail.gmx.com (mrgmxus001) with
	ESMTPSA (Nemesis) id 0MXqqX-1Ytb8T1czX-00WkrF;
	Sat, 04 Apr 2015 21:55:10 +0200
Message-ID: <5520419B.4070100@mail.com>
Date: Sat, 04 Apr 2015 21:55:07 +0200
From: Liam Maps <cca_liam_maps@mail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <551EF93B.7080307@mail.com>
	<CADkTA4OTkNRUQuiFK7k2qq2CXB+E+apWB3i92_K4rsYj0vZp-w@mail.gmail.com>
In-Reply-To: <CADkTA4OTkNRUQuiFK7k2qq2CXB+E+apWB3i92_K4rsYj0vZp-w@mail.gmail.com>
X-Provags-ID: V03:K0:tE+RNOlx2qk5uJT5/n5ls4Y1JremQw3eQaBRLLAKZJbm3qz+1sV
	lpVDec12864133HaAlLobcG0sCQ5LW2lFIBPOJ+Gbxb41Ii/ziutDJpXELcHucwby54eWrG
	7Rg+ceNfSZcvK45VC+88Iq2MYCpElxP+3kKfUqZeiiJ3aZA92IigPaeU+FmuXYiZYcpEWHw
	PKzdTQCzT0SlKDQVJb2CA==
X-UI-Out-Filterresults: notjunk:1;
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [kernel config]: specified values did not make it into the kernel's final configuration
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
X-List-Received-Date: Sat, 04 Apr 2015 19:55:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you for the info. But who sets the .config "Requested value" of a 
configuration variable and who then overrides it and sets the "Actual 
value set"? (The quoted text is from the [kernel config] warning.)

After a bit of research this is what I think I know:
For my example when working with the master branch and building for 
BeagleBone, the CONFIG_ARCH_NR_GPIO config value gets set to 512 in the 
meta/cfg/kernel-cache/bsp/beaglebone/beaglebone.cfg. So the beaglebone 
bsp for the kernel.
Somewhere that value then gets set to 0. But I can't find out where and 
by who. Shouldn't the bsp values be the final ones? It's the bsp who 
knows most about the target device after all. Or am I mistaken?

Thank you.


On 04/04/2015 08:10 PM, Bruce Ashfield wrote:
> On Fri, Apr 3, 2015 at 4:34 PM, Liam Maps <cca_liam_maps@mail.com> wrote:
>> Hi,
>>
>> During the build of a core-image-base for BeagleBone using the master branch
>> I was presented with the following warning:
>>
>> "WARNING: [kernel config]: specified values did not make it into the
>> kernel's final configuration:"
>>
>> The full list of configuration values, which did not make it into kernel's
>> configuration can be found here:
>> http://pastebin.com/sAvXuNC8
>>
>> Most variables seem to have something to do with things which are not
>> applicable for my particular build and device. There is no need for any
>> graphics so values such as CONFIG_FB_CFB_REV_PIXELS_IN_BYTE and
>> CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY seem like they are not needed
>> anyway. But there are a few which look less innocent such as for example
>> CONFIG_ARCH_NR_GPIO and CONFIG_LEDS_GPIO.
>>
>> I did a few builds with poky-dizzy-12.0.1 before moving to the master branch
>> and the mentioned warning was not issued during those builds.
>>
>> The only information about the warning I was able to find on the web is
>> this:
>> http://patchwork.openembedded.org/patch/89289/
>>
>> So it seems that this is not that critical and somewhere during the build
>> process some kernel configuration values are dropped. Since I do not have
>> enough knowledge about the subject I would like to ask the more
>> knowledgeable of you to reassure me that this warning is not critical. Also,
>> if someone could give an example of why some values are dropped and by
>> who/what, I would be most grateful.
> They are just that .. warnings. We have a patch for the beaglebone to clean up
> the input configs, it just didn't make it into master yet.
>
> Old values, values missing dependencies, etc, all may be dropped by the
> kernel configuration phase. The tools detect and warn if this happens, since
> it may be critical (i.e. boot failure) or not .. and if not, it does
> indicate that
> the input configuration fragments need some cleaning.
>
> Cheers,
>
> Bruce
>
>
>> I should probably mention that I can successfully deploy the build despite
>> the warnings and everything works as expected. Well, there is one thing and
>> that is that one of requested packages is not built (ntfs-3g) but that is an
>> issue for another thread, if I am unable to find the solution myself.
>>
>> Thank you.
>>
>> FYI: I am new to Yocto and this mailing list
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


