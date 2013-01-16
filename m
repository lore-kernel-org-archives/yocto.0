Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8ACFE00527
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 11:09:03 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 589B0F81252; Wed, 16 Jan 2013 12:09:03 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9E5CDF81250;
	Wed, 16 Jan 2013 12:09:02 -0700 (MST)
Message-ID: <50F6FAD7.7060708@mlbassoc.com>
Date: Wed, 16 Jan 2013 12:09:11 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
	<CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
	<50F5ECE7.2090503@bsmucker.eu.org>
	<CADzUK1+AqHq0PfVa6GwyefBSAjP=iaB=NAKLB9LwSkXT9RHhEQ@mail.gmail.com>
	<50F6C5F0.1050605@bsmucker.eu.org> <50F6F933.90107@bsmucker.eu.org>
In-Reply-To: <50F6F933.90107@bsmucker.eu.org>
Subject: Re: How to force newly-compiled busybox into core-image-minimal (restating an earlier post)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 19:09:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-01-16 12:02, Brian Smucker wrote:
> Hello all,
>
> I'm not sure if my prior question was unclear or if the question was something nobody knows the answer to.
>
> I think there's probably a simple answer, but maybe not.
>
> So the background is this: A poky/danny setup where I have previously-compiled core-image-minimal.
>
> I force busybox to be recompiled: bitbake -c -f compile busybox
> I clean core-image-minimal: bitbake -c -f cleansstate core-image-minimal
> I rebuild the core image: bitbake  core-image-minimal
>
> Result:  The busybox that is included in the core-image rootfs is a busybox that was compiled earlier.  It has an earlier timestamp.
>
> Question:  How do I force the newly-compiled busybox to be included in the core-image rootfs, so that the rootfs generation process does not retrieve some stale version of busybox
> from a cache somewhere? (Without deleting the tmp directory. I know that works.)
>
> There's got to be a simple answer.
>
> Thanks,
>
> Brian
>
> ps.  This is merely an interim way to test a particular permutation of the busybox config. I know how to make a recipe using bbappend and a new defconfig for busybox.  But I want
> to do a series of quick-and-dirty tests with various busybox config options.

The problem is that your rebuild of busybox only ran the compile step,
not any of the install or packaging steps.

Thankfully there is a new bitbake option which makes this much easier.
See if this does what you want:
   % bitbake busybox -C compile
   % bitbake core-image-minimal

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

