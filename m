Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5395DE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:30:00 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkvi18 with SMTP id i18so2075860bkv.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zVILimE0j3ocGoDXvDdoebPvOngg31KdTE2i5aB69sU=;
	b=TYBs6js3PFks2P2tng2qHO+OJJtT7SABY6bGZYECDpGYaYcF3BIYeSkO05mHnumS8i
	98gyTvFG5FMTbrs+psam/45QJpR+aNqrZ3KpQP4VhYYMpG0TS9zQLyZW+uuu4cgivx1f
	nMEKNGf07BVFYsqChxcEh58Z14xRbBcIFo6Hg=
MIME-Version: 1.0
Received: by 10.205.120.147 with SMTP id fy19mr1417791bkc.49.1326385799324;
	Thu, 12 Jan 2012 08:29:59 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 12 Jan 2012 08:29:59 -0800 (PST)
In-Reply-To: <4F0F02BA.4000008@communistcode.co.uk>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
	<4F0F02BA.4000008@communistcode.co.uk>
Date: Thu, 12 Jan 2012 11:29:59 -0500
Message-ID: <CAFZh4h-1mzBZpNdiS=vykndddqWFSzsgBKNtO=wRw8ZuDHEDmg@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Thu, 12 Jan 2012 16:30:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 12, 2012 at 10:56 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> Brian,
>
> What image are you building, as I cannot get core-image-minimal to boot at
> all on my xM. I am currently trying to fix a hosed sd card (who knows what
> happened to it!) and then I will see if it has made any difference.

Probably the same images as you.  I switched my branch to master and
the default kernel built was 3.0.12.

You might have to smoke your SD card (re-partition it for boot & root)
and copy MLO first, then u-boot.bin and uImage.  Copying MLO first is
key.  I know this can be a pain.  Google for beagleboard SD Card
script to find one of the scripts that automates setting up the SD
Card.  They just create the partitions etc., you still have to copy
the contents to the card in the right order.  MLO is the first you
copy on the boot partition, the order the rest are copied don't matter
AFAIK.

I also have a boot.scr with:

setenv bootcmd 'mmc init; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000'
setenv setenv bootargs 'console=ttyO2,115200n8 root=/dev/mmcblk0p2
rootwait rootfstype=ext3 rw'
boot

Hope that helps!

Regards,

Brian

