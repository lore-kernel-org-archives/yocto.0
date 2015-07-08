Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99E6FE00978; Wed,  8 Jul 2015 08:21:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56833E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 08:21:15 -0700 (PDT)
Received: by igoe12 with SMTP id e12so3223413igo.1
	for <yocto@yoctoproject.org>; Wed, 08 Jul 2015 08:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ErhZ+wMk+zglF2kE8MxSLFesmcBZg+gVeNBspqxzkDs=;
	b=IxKffCatFEs3CNmxwOiYFgyPn4A7YRxBI9nw9f1x2UF8RXnIZ/BlqoM9e+e3tCalbX
	mERbcyfwn14ETRD/AHffoUHgHYkGeh+aF3iWzxadS2ruDJbkFnvR5IexJQwUOSrC2b8K
	74rxhEy+VPRJEDDo5VQy2GWZcD6h7ic6diSHLVh9FKSnAJQQD4QhxGXmSe3IRyG8RFnn
	8Peyrmm/El0BG9pE2cC1inoGIERmLLhf2ph9QmUETm02U3hDtetZG00p9lNPBENW8etW
	XuhsWT2DQWCrL7aKiU3nr74E63O5Z7MDXLn+dCfffU5LiFXKCF/XNW0aK41KPMjOV8/m
	LAkw==
MIME-Version: 1.0
X-Received: by 10.107.33.146 with SMTP id h140mr18506288ioh.1.1436368874968;
	Wed, 08 Jul 2015 08:21:14 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Wed, 8 Jul 2015 08:21:14 -0700 (PDT)
In-Reply-To: <CAK5mteymh-5B0aHZ58f_pPqgYAmYZ_FHa+yrKTP0jkAD6jdv=g@mail.gmail.com>
References: <CAK5mtexAAs35+7SPauu3ftDVbpr1A_6fcVjn14ULOb43cXAboA@mail.gmail.com>
	<55881861.5090100@linux.intel.com>
	<CAK5mteymh-5B0aHZ58f_pPqgYAmYZ_FHa+yrKTP0jkAD6jdv=g@mail.gmail.com>
Date: Wed, 8 Jul 2015 10:21:14 -0500
Message-ID: <CAK5mtewsrv2wNpFwaBXSTDMtEp70X3hv=AFLKq0ddYammi0REw@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: OpenCV yocto
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
X-List-Received-Date: Wed, 08 Jul 2015 15:21:19 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 5, 2015 at 10:44 PM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
> On Mon, Jun 22, 2015 at 9:14 AM, Leonardo Sandoval
> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>
>>
>> On 06/20/2015 09:22 PM, Victor Rodriguez wrote:
>>>
>>> HI team
>>>
>>> I am having this same problem:
>>>
>>>
>>> http://stackoverflow.com/questions/25332969/opencv-pkg-config-cannot-find-lopencv-ts-when-compiling-using-g
>>>
>>> I try to build opencv simple source code :
>>>
>>> g++ hello.cpp -o video `pkg-config --cflags --libs opencv`
>>>
>> Victor, you may take at look at this recipe (opencv_samples)
>>
>> http://cgit.openembedded.org/cgit.cgi/meta-openembedded/tree/meta-oe/recipes-support/opencv/opencv-samples_2.4.bb?h=master
>>
>> What I can see, seems that the `pkg-config --libs openvc` is missing on your
>> bb.
>
>
> Thanks for the help Leo , aparently the missing part was :
>
> opencv-staticdev
>
> My local.conf ended like :
>
> # CONF_VERSION is increased each time build/conf/ changes incompatibly
> and is used to
> # track the version of this file when it was generated. This can
> safely be ignored if
> # this doesn't mean anything to you.
> CONF_VERSION = "1"
> IMAGE_INSTALL_append = " gcc gcc-dev openssh php mariadb opencv opencv-samples"
> #IMAGE_INSTALL_append = " mpich mpich-dev"
> IMAGE_INSTALL_append = " libopencv-core-dev libopencv-highgui-dev
> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
> opencv-staticdev"
> LICENSE_FLAGS_WHITELIST = "commercial"
>
>
> IMAGE_FEATURES += "package-management"
> MACHINE = "intel-corei7-64"
>
> I learned in the hard way that CORE_IMAGE_EXTRA_INSTALL and
> IMAGE_INSTALL_append are nto the same when I build for xfce the
> CORE_IMAGE_EXTRA_INSTALL is not taking into consideration
>
> After that opencv is working like a charm
>
> Now I am having problems to come up the web cam , do you know any part
> that might be missing ?
>
> If I do lsusb  the webcam is detected( I check and the driver is
> enable as module in make menuconfig )  , but when I try to run this
> code , It return as if the camera were not found
>
> https://github.com/VictorRodriguez/opencv_tutorial
>
> I might be missing gstream or something :(
>
> Thanks a lot for the help


Leo , this is the last config I have for the system , so you can
reproduce the bug :)

https://github.com/VictorRodriguez/opencv_tutorial/tree/master/yocto-conf


>>
>>> But got this error :
>>>
>>> /usr/lib/gcc/i586-poky-linux/4.9.2/../../../../i586-poky-linux/bin/ld:
>>> cannot find -lopencv_ts
>>> collect2: error: ld returned 1 exit status
>>>
>>> My local.conf is like this :
>>>
>>> EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk"
>>> IMAGE_INSTALL_append = " mpich mpich-dev gcc gcc-dev openssh php mariadb
>>> opencv"
>>> LICENSE_FLAGS_WHITELIST = "commercial"
>>> CORE_IMAGE_EXTRA_INSTALL += "libopencv-core-dev libopencv-highgui-dev
>>> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"
>>>
>>>
>>> All the help is more than welcome
>>>
>>> Best regards
>>>
>>> Victor Rodriguez
>>>
>>

