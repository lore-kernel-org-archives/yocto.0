Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B454E01245
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 13:13:32 -0700 (PDT)
Received: by eabd1 with SMTP id d1so3698eab.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 13:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XsiHw8fhJZ0Vq77MERxbd9ag8W4EphzLwGZr4rAgr8k=;
	b=qh35fjBHP4S9KYdew1WWqMfCk9vUHG6TVjSC4c4GCbgR0XMoRjblRAgNL/Zn8RmQQc
	7I5laKIzeKqobo86DbvIvxarXweR0ZkdNjBBmYzp1EmjMtIcqtZkGGgRvT0p1OmMT97q
	XvaA9VqzsPe4LwA38QcbSxYgQPLofsVxV4lumBpuBKR68p+PzE038k00NgvWiRBH/yrp
	Kel37u6fQbG4w8WGv8mtxejTjZOs5hG3WRDYrlkRpUTD4dLsuDvzxddCBRR0kVJM8/Im
	8WjwoJ39VIDjqsVqe8CL18opoUePYO3XXrWgjjHZ0GWcsAL8vGKPISH++acha9D+P9FB
	HU/Q==
Received: by 10.14.203.69 with SMTP id e45mr9574712eeo.23.1344370410916; Tue,
	07 Aug 2012 13:13:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Tue, 7 Aug 2012 13:13:00 -0700 (PDT)
In-Reply-To: <931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Aug 2012 13:13:00 -0700
Message-ID: <CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 07 Aug 2012 20:13:32 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 7, 2012 at 1:10 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>         I decided to modify the bash and busybox recipes to build
> statically, and try to create a core-image-minimal root filesystem, so that
> I can get a sensible prompt with paths set, etc, to debug the dynamic
> linking issue.
>
> Just copying a static bash binary to the root of the ramdisk image and
> specifying init=/bash didn't work for a static bash+core-image-minimal root
> filesystem, it aborts with a panic. If I have only the bash executable in
> the ramdisk and nothing else, it displays the bash prompt.
>
> Now, I've noticed something weird during core-image-minimal image
> generation.
>
> When I build the static versions of bash, the size of the binary is 8MB, but
> when I explore the binary in the tar.gz image or extract it to my ramdisk,
> it shows as being only 1.6MB.
>
> How can there be a difference between the statically built bash file
>
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/bash-4.2-r4/image/bin/bash
> (8MB)
>
> and in the file contained in the core-image-minimal-virtex-5.tar.gz
>
> /bin/bash (1.6MB)
>
> I'm seeing the same discrepancy for busybox
>
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/busybox-1.19.4-r18/image/bin/busybox
> (8.2 MB)
>
> and in the generate rootfs image
>
> /bin/busybox (1.4MB)
>
> This shouldn't happen, right?

I assume they are stripped in case where they are smaller.

>
> Best regards,
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

