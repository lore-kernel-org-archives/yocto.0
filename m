Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE28E00B5D; Fri, 21 Aug 2015 18:07:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rcagley[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f195.google.com (mail-ig0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F65DE00B56
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2015 18:07:28 -0700 (PDT)
Received: by igcse8 with SMTP id se8so2976017igc.2
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2015 18:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QlGjlaA+LZ4X7PuMU1HgoVaNTialBwqL7lYj4Dhppi0=;
	b=whJYOWijOqLtFsgAjCBEX/m4UQB9Y94k9Hetgk+T3ixNwuN4KmAo/uxFrkzqpPlPBM
	BEXLiqbOTkIaIt1lBvTN2L+9nrWO46LUOIIeiT2yn1WJXccvH97UwfT8FmVNrGFFdYgU
	3vfJGsls6eXBpRUjgRMPLQM3P3fod+L5p+LfOAQMmVRfQUicJXFZ4rwZOV0CxWFIKjRZ
	i4DjHqZf4pcIr74bo01HBY+ayA2fFONsrHOutxAmL6MP2YJ4zlWW/vbNcKatECzl5Iqm
	+FrEdBC4eHTtqfoFOmI0X9nVvGV9/BN0xmFdvU+46nVxgxrB63w8Cw1O+23+rYcvW7Th
	rbOw==
MIME-Version: 1.0
X-Received: by 10.50.65.97 with SMTP id w1mr5076675igs.80.1440205647661; Fri,
	21 Aug 2015 18:07:27 -0700 (PDT)
Received: by 10.107.153.131 with HTTP; Fri, 21 Aug 2015 18:07:27 -0700 (PDT)
In-Reply-To: <CAN-NoH2LqW+CU59ueQVG-8Q_Y7BfyLWJcQdqsFiV3B7WL2WJsQ@mail.gmail.com>
References: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
	<CAMKF1soi6wZ=KsfHTRfvj3V3q6U92KHti-Lv-w7-vD284Q2b+w@mail.gmail.com>
	<CAN-NoH2e4M=aX7Las_osh7ONyz=SmJSp3=qDQ4BG_i5y-9E1Fw@mail.gmail.com>
	<CAMKF1sozjnGeP2ESZnK3i0W2NhvhxdU6CsrfLYeYn74j8dAdDQ@mail.gmail.com>
	<CAN-NoH2LqW+CU59ueQVG-8Q_Y7BfyLWJcQdqsFiV3B7WL2WJsQ@mail.gmail.com>
Date: Fri, 21 Aug 2015 18:07:27 -0700
Message-ID: <CAN-NoH2RT2hXpwtDyau9T23GZ9hs2LZdOzS2QkJC6sK6KcvB+Q@mail.gmail.com>
From: Richard Cagley <rcagley@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fido qt4-embedded packaging problems
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
X-List-Received-Date: Sat, 22 Aug 2015 01:07:32 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 14, 2015 at 9:51 AM, Richard Cagley <rcagley@gmail.com> wrote:
> On Thu, Aug 13, 2015 at 5:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, Aug 13, 2015 at 5:47 PM, Richard Cagley <rcagley@gmail.com> wrote:
>>> On Thu, Aug 13, 2015 at 4:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>> On Thu, Aug 13, 2015 at 1:56 PM, Richard Cagley <rcagley@gmail.com> wrote:
>>>>> When I try to bitbake core-image-minimal-dev I get an error involving
>>>>> cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.
>>>>>
>>>>> I looked in the log file and I see a bunch of "PT_INTERP segment not
>>>>> corresponding to .interp section" and "STT_GNU_IFUNC not handled on
>>>>> ARM yet" errors and then a final failure about rootfs creation due to
>>>>> cpio.
>>>>
>>>> these are prelink errors. Which release are you on ?
>>>>
>>>
>>> fido with poky and meta-xilinx. 1.26 for bitbake.
>>
>> ok
>>
>>>
>>>>>
>>>>> Is there something special I need to do to include qt4-embedded for an
>>>>> arm target?
>>>>
>>>> No. Although as a workaround you can disable cross prelink by removing
>>>> it from USER_CLASSES
>>>> in local.conf and see if that works then we know its a prelinking issue.
>>>>
>>>
>>> I removed image-prelink from USER_CLASSES in my local.conf and got the
>>> same result.
>>
>> can you remove tmp/ and rebuild ?
>
> same error.
>
> It appears that on fido I can't have both tools-debug and qt4 stuff
> together. Below is my local.conf that causes things to break (bblayers
> just modified to included needed meta layers). If I remove tools-debug
> things work. Any ideas?
>
> MACHINE ??= "zc702-zynq7"
> DISTRO ?= "poky"
> PACKAGE_CLASSES ?= "package_rpm"
> EXTRA_IMAGE_FEATURES = "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
> tools-debug qt4-pkgs"
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> PATCHRESOLVE = "noop"
> BB_DISKMON_DIRS = "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K"
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> ASSUME_PROVIDED += "libsdl-native"
> CONF_VERSION = "1"

it's actually dbg-pkgs that is causing the problem and not tools-debug.

Is there a way to include debug symbols, e.g., use dbg-pkgs but
exclude debug symbols for certain packages, e.g.,
packagegroup-core-qt4e?

or, is there something better than dbg-pkgs?

On Fri, Aug 14, 2015 at 9:51 AM, Richard Cagley <rcagley@gmail.com> wrote:
> On Thu, Aug 13, 2015 at 5:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, Aug 13, 2015 at 5:47 PM, Richard Cagley <rcagley@gmail.com> wrote:
>>> On Thu, Aug 13, 2015 at 4:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>> On Thu, Aug 13, 2015 at 1:56 PM, Richard Cagley <rcagley@gmail.com> wrote:
>>>>> When I try to bitbake core-image-minimal-dev I get an error involving
>>>>> cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.
>>>>>
>>>>> I looked in the log file and I see a bunch of "PT_INTERP segment not
>>>>> corresponding to .interp section" and "STT_GNU_IFUNC not handled on
>>>>> ARM yet" errors and then a final failure about rootfs creation due to
>>>>> cpio.
>>>>
>>>> these are prelink errors. Which release are you on ?
>>>>
>>>
>>> fido with poky and meta-xilinx. 1.26 for bitbake.
>>
>> ok
>>
>>>
>>>>>
>>>>> Is there something special I need to do to include qt4-embedded for an
>>>>> arm target?
>>>>
>>>> No. Although as a workaround you can disable cross prelink by removing
>>>> it from USER_CLASSES
>>>> in local.conf and see if that works then we know its a prelinking issue.
>>>>
>>>
>>> I removed image-prelink from USER_CLASSES in my local.conf and got the
>>> same result.
>>
>> can you remove tmp/ and rebuild ?
>
> same error.
>
> It appears that on fido I can't have both tools-debug and qt4 stuff
> together. Below is my local.conf that causes things to break (bblayers
> just modified to included needed meta layers). If I remove tools-debug
> things work. Any ideas?
>
> MACHINE ??= "zc702-zynq7"
> DISTRO ?= "poky"
> PACKAGE_CLASSES ?= "package_rpm"
> EXTRA_IMAGE_FEATURES = "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
> tools-debug qt4-pkgs"
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> PATCHRESOLVE = "noop"
> BB_DISKMON_DIRS = "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K"
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> ASSUME_PROVIDED += "libsdl-native"
> CONF_VERSION = "1"

