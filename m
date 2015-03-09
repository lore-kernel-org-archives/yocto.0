Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E83CE00750; Mon,  9 Mar 2015 13:00:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C224E003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 13:00:35 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3D07CF811F7; Mon,  9 Mar 2015 14:00:35 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C5DE2F811EC;
	Mon,  9 Mar 2015 14:00:34 -0600 (MDT)
Message-ID: <54FDFBEF.7060604@mlbassoc.com>
Date: Mon, 09 Mar 2015 14:00:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54FDF2EE.6070509@mail.bg>	<BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
	<54FDFAFE.7020707@mail.bg>
In-Reply-To: <54FDFAFE.7020707@mail.bg>
Subject: Re: 2 images with single Bitbake recipe
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
X-List-Received-Date: Mon, 09 Mar 2015 20:00:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-09 13:56, Nikolay Dimitrov wrote:
> Hi Khem,
>
> On 03/09/2015 09:31 PM, Khem Raj wrote:
>>
>>> On Mar 9, 2015, at 12:22 PM, Nikolay Dimitrov <picmaster@mail.bg> wrote:
>>>
>>> Hi guys,
>>>
>>> I need an advice for the following Yocto use case.
>>>
>>> My system has to boot via minimal initramfs and then must use the full
>>> rootfs. I can use 2 separate recipes to generate the 2 images (minimal
>>> initramfs, complete rootfs), but I prefer to create all my build-
>>> products via single bitbake command.
>>>
>>> So, is it possible to build these 2 images with 1 recipe, and if "yes"
>>> then how?
>>>
>>
>>
>> Look at how initramfs http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-tasks-bundle_initramfs
>> and also meta/conf/local.conf.sample.extended
>
> Thanks for answering. INITRAMFS_IMAGE_BUNDLE doesn't achieve what I
> need, instead it merges the kernel image and initramfs in a single
> file. What I need is, instead of invoking:
>
> bitbake myproduct-image
> bitbake myproduct-initrams-image
>
> to invoke:
>
> bitbake myproduct-combined-image
>
> ...which should create 2 separate images.

Just list them both on one command:
   bitbake myproduct-image myproduct-initrams-image

If you really want, you could write a recipe myproduct-combined-image
which includes
   DEPENDS = "myproduct-image myproduct-initrams-image"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

