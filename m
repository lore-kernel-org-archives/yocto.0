Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F00F8E00A49; Fri, 14 Aug 2015 09:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rcagley[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE933E009E4
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 09:51:33 -0700 (PDT)
Received: by iods203 with SMTP id s203so90832848iod.0
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 09:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JJ++GkOZk9NDQiRsujOWWIh7S1PNAT0vhubKG64UrXg=;
	b=IygilBT6TUqUJia2lBY/e1MwqzIRX+zhIualMVjegk/3v0KaRZ21ldWQeHrme55Sg8
	tnQ/74rZaCLNHatRvtTiCd3PR/JXBXhKShGWEz9Hj3sx3+5jzarraIX/uEMucxtREVVw
	LVPj6VdsyG74Gw3LUysyGlx4GXFc/I/ZA4qnDZt/ZL4wrvGl07B2pHSSht3AkoBgTWAB
	q7uhMmg2SmRdfgsF7S00HzOS83DINNqtVU0dcbUZiylcGwBEVJdKDyhZTGrYZoSQ8kUp
	TvLwi+YpsL2vD1RtD1mkkUgsM+Wkywo2uXll7ILuZsYVasdjQRMnseIdlUqrKYWvb90f
	bSOw==
MIME-Version: 1.0
X-Received: by 10.107.8.36 with SMTP id 36mr16500474ioi.172.1439571092878;
	Fri, 14 Aug 2015 09:51:32 -0700 (PDT)
Received: by 10.107.153.131 with HTTP; Fri, 14 Aug 2015 09:51:32 -0700 (PDT)
In-Reply-To: <CAMKF1sozjnGeP2ESZnK3i0W2NhvhxdU6CsrfLYeYn74j8dAdDQ@mail.gmail.com>
References: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
	<CAMKF1soi6wZ=KsfHTRfvj3V3q6U92KHti-Lv-w7-vD284Q2b+w@mail.gmail.com>
	<CAN-NoH2e4M=aX7Las_osh7ONyz=SmJSp3=qDQ4BG_i5y-9E1Fw@mail.gmail.com>
	<CAMKF1sozjnGeP2ESZnK3i0W2NhvhxdU6CsrfLYeYn74j8dAdDQ@mail.gmail.com>
Date: Fri, 14 Aug 2015 09:51:32 -0700
Message-ID: <CAN-NoH2LqW+CU59ueQVG-8Q_Y7BfyLWJcQdqsFiV3B7WL2WJsQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Aug 2015 16:51:47 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 13, 2015 at 5:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, Aug 13, 2015 at 5:47 PM, Richard Cagley <rcagley@gmail.com> wrote:
>> On Thu, Aug 13, 2015 at 4:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> On Thu, Aug 13, 2015 at 1:56 PM, Richard Cagley <rcagley@gmail.com> wrote:
>>>> When I try to bitbake core-image-minimal-dev I get an error involving
>>>> cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.
>>>>
>>>> I looked in the log file and I see a bunch of "PT_INTERP segment not
>>>> corresponding to .interp section" and "STT_GNU_IFUNC not handled on
>>>> ARM yet" errors and then a final failure about rootfs creation due to
>>>> cpio.
>>>
>>> these are prelink errors. Which release are you on ?
>>>
>>
>> fido with poky and meta-xilinx. 1.26 for bitbake.
>
> ok
>
>>
>>>>
>>>> Is there something special I need to do to include qt4-embedded for an
>>>> arm target?
>>>
>>> No. Although as a workaround you can disable cross prelink by removing
>>> it from USER_CLASSES
>>> in local.conf and see if that works then we know its a prelinking issue.
>>>
>>
>> I removed image-prelink from USER_CLASSES in my local.conf and got the
>> same result.
>
> can you remove tmp/ and rebuild ?

same error.

It appears that on fido I can't have both tools-debug and qt4 stuff
together. Below is my local.conf that causes things to break (bblayers
just modified to included needed meta layers). If I remove tools-debug
things work. Any ideas?

MACHINE ??= "zc702-zynq7"
DISTRO ?= "poky"
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES = "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
tools-debug qt4-pkgs"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS = "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"
PACKAGECONFIG_append_pn-qemu-native = " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
ASSUME_PROVIDED += "libsdl-native"
CONF_VERSION = "1"

