Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFBE1E006D8; Tue,  7 Mar 2017 23:51:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 374D2E00519
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 23:51:18 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 6378D68A01C; Wed,  8 Mar 2017 07:51:15 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7C71268A019;
	Wed,  8 Mar 2017 07:51:10 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B46056740318;
	Wed,  8 Mar 2017 08:51:09 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <f0b0b440-ecd9-50df-9af7-8990b1a04c11@mlbassoc.com>
	<1603689.QGsDRQ6uvD@peggleto-mobl.ger.corp.intel.com>
	<cbaa3c69-d2fc-0c89-f373-2d27322c564e@mlbassoc.com>
	<1958036.lA1OqxSEfF@peggleto-mobl.ger.corp.intel.com>
Message-ID: <da1e84c7-d309-3879-343e-856fbea73f7b@mlbassoc.com>
Date: Wed, 8 Mar 2017 08:51:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1958036.lA1OqxSEfF@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Files missing from SDK
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
X-List-Received-Date: Wed, 08 Mar 2017 07:51:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-07 23:26, Paul Eggleton wrote:
> On Tuesday, 7 March 2017 5:44:05 PM NZDT Gary Thomas wrote:
>> On 2017-03-06 21:56, Paul Eggleton wrote:
>>> On Tuesday, 7 March 2017 2:28:22 AM NZDT Gary Thomas wrote:
>>>> On 2017-03-06 13:22, Burton, Ross wrote:
>>>>> On 3 March 2017 at 06:39, Gary Thomas <gary@mlbassoc.com
>>> <mailto:gary@mlbassoc.com>> wrote:
>>>>>     I'm trying to build SDKs for my board, both the native style
>>>>>     using populate_sdk_ext as well as including the SDK packages
>>>>>     in my image.  My image includes some extended libraries of
>>>>>     my own packaging (am335x-pru-support) that I need to get into
>>>>>     these SDKs.  This package (via debian renaming) turns into
>>>>>
>>>>>       libprussdrv-dbg - 2016-08-30-r0.23 - am335x-pru-support version
>>>>>       2016-08-30-r0 - Debugging files libprussdrv-dev - 2016-08-30-r0.23
>>>>>       - am335x-pru-support version 2016-08-30-r0 - Development files
>>>>>       libprussdrv-staticdev - 2016-08-30-r0.23 - am335x-pru-support
>>>>>       version 2016-08-30-r0 - Development files (St) libprussdrv1 -
>>>>>       2016-08-30-r0.23 - am335x-pru-support version 2016-08-30-r0>
>>>>>
>>>>>     On my board/image, I can get the files I need but only if I manually
>>>>>     include libprussdrv-dev>
>>>>>
>>>>>       # opkg files libprussdrv-dev | sort
>>>>>       /usr/bin/pasm
>>>>>       /usr/include/pruss/
>>>>>       /usr/include/pruss/pruss_intc_mapping.h
>>>>>       /usr/include/pruss/prussdrv.h
>>>>>       /usr/lib/libprussdrv.so
>>>>>
>>>>>     How can I get these automatically added to my SDK images?  To build
>>>>>     the
>>>>>
>>>>>     board SDK, I'm adding these packages to my image:
>>>>>       CORE_IMAGE_EXTRA_INSTALL = "packagegroup-core-sdk
>>>>>       packagegroup-core-standalone-sdk-target">
>>>>>
>>>>>     I suppose I could add libprussdrv-dev to that list, but I'd like it
>>>>>     a
>>>>>     bit more automated.>
>>>>>
>>>>>     For the native SDK, I tried adding this to local.conf:
>>>>>       TOOLCHAIN_HOST_TASK_append = " nativesdk-am335x-pru-support"
>>>>>
>>>>>     which only got me the 'pasm' tool in my sysroot, but nothing else.
>>>>>
>>>>> If libprussdrv1 is in your image then the -dev package should be pulled
>>>>> into your SDK images, assuming that you have IMAGE_FEATURES+=dev-pkgs
>>>>> already.
>>>>
>>>> Thanks, that did it for the embedded SDK
>>>
>>> That shouldn't actually be necessary. IMAGE_FEATURES controls what goes
>>> into the image, adding dev-pkgs to that is going to include those in the
>>> image, not just the SDK. We have a SDKIMAGE_FEATURES and the default
>>> value of that includes dev-pkgs. If libprussdrv1 is in the image and
>>> SDKIMAGE_FEATURES is at the default (or otherwise includes dev-pkgs) I
>>> have to say I'm not sure what would be preventing this from working.
>>>
>>>>> The same should mean that standalone SDKs (populate_sdk-style) contain
>>>>> the
>>>>> headers too.  Worse case, TOOLCHAIN_TARGET_TASK_append = "
>>>>> libprussdrvi-dev".
>>>>
>>>> Sadly, this still doesn't work.  With the TOOLCHAIN* line above, I get:
>>>>    ERROR: Nothing RPROVIDES 'libprussdrv1-dev'
>>>>
>>>> Without it, no changes - the bits are still missing.
>>>
>>> As with almost all variables, in TOOLCHAIN_TARGET_TASK you want the
>>> recipe-
>>> space name of the package, not the final (post debian-renamed) name.
>>
>> I tried that as well, and it got a lot farther along, but failed in
>> the final steps:
>>
>> ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packages.
>> Command
>> '/build/p8701_2016-10-22/tmp/work/x86_64-nativesdk-amltdsdk-linux/uninative
>> -tarball/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f
>> /build/p8701_2016-10-22/tmp/work/x86_64-nativesdk-amltdsdk-linux/uninative-
>> tarball/1.0-r0/opkg.conf -t
>> /build/p8701_2016-10-22/tmp/work/x86_64-nativesdk-amltdsdk-linux/uninative-
>> tarball/1.0-r0/temp/ipktemp/ -o
>> /build/p8701_2016-10-22/tmp/work/x86_64-nativesdk-amltdsdk-linux/uninative-
>> tarball/1.0-r0/sdk/image/opt/amltd/2.2+snapshot/sysroots/none
>> --force_postinstall --prefer-arch-to-version   install libprussdrv-dev'
>> returned 255: Collected errors:
>>   * opkg_prepare_url_for_install: Couldn't find anything to satisfy
>> 'libprussdrv-dev'.
>>
>> ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Function failed:
>> do_populate_sdk
>
> It sounds like you're setting TOOLCHAIN_TARGET_TASK at the configuration
> level, thus affecting uninative-tarball as well. Set it in your image recipe
> (or a class / inc file used from there) and that should work.

Thanks, that solved that problem.  I'm now getting the missing files in my
[host] SDK, getting much closer.

I'm still missing some others though - files from [meta-ti]recipes-ti/devtools/ti-cgt-pru_2.1.4.bb
I am getting the appropriate files when I build using bitbake, as well as
on my target when I include the sdk components, just not when I build a
host SDK using -c populate_sdk_ext

That's a very differently packaged recipe (lots of magic), so I'll take it up with the meta-ti list

Thanks for your help

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

