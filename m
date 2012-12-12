Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76225E00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 13:28:26 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so1141997lbo.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 13:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xLfKMIq0UAEBkhHH9t9VaFAloyiQCioItx0yH53C3ek=;
	b=EJvHEnDrr8drJn1zz8tqXppfZ6Co3b//1Cm9MTCw42LWy7a6o2GVXCA1r7H1oCigvH
	476A5wKDAxLMbdTP3DvvhIqbBZhLq1SxyNMhzyOVYRUb80LCWNZiboOlIcHlTXqZhQF4
	ZRGwOsK6s18iDzxH/+YKseXIjr83RWnd/JEP1M94NwOJWIuMGUW1AWvzvG0chMcxIwLu
	4PYXsMUq0+22pDdX6ZAFxtH0E/Eanr574w5hmAVEOWwTuH4kV2sLOJ/Rwe9QqksiLoHY
	czLAQ89cehWiJonFuMEOkIRzb/Vjf8F3Iyp+SIpEf8B7L7iTyFaG8/EW8SYKvkP1XLih
	3Hjg==
MIME-Version: 1.0
Received: by 10.152.104.240 with SMTP id gh16mr2507312lab.56.1355347704818;
	Wed, 12 Dec 2012 13:28:24 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Wed, 12 Dec 2012 13:28:24 -0800 (PST)
In-Reply-To: <50C8E6DE.4020308@linux.intel.com>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<50C8E6DE.4020308@linux.intel.com>
Date: Wed, 12 Dec 2012 16:28:24 -0500
Message-ID: <CAHUNapTOtDGwCbEp2naVTiZyZjCipNH=Vo1u30UczyFQHBFYOQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Wed, 12 Dec 2012 21:28:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Dec 12, 2012 at 3:19 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> What is the reason you would like to do this just for vmdk? Is it to
> avoid increasing the size of all the images when it is only vmdk you
> care about? That would makes sense.

Yes, that's it exactly. I have an existing build system in place
(which is all based on custom scripts) that I would like to upgrade to
Yocto. Our target device uses a 2GB CF card. My build system generates
an "image" which I use in conjunction with a script to create CF cards
based on any given build. There's no reason the "image" needs to be
2GB in size; the script formats and mounts the CF card, mounts the
"image", then copies the files from the image to the CF card. The
script also takes care of running LILO against the CF so it can boot.
The build system also generates a VDI (which is very much like a VMDK)
of the device which can be used for testing or development of
non-hardware-related features (e.g. web interface, snmp, etc). What I
like about the VDI is that it will start at, roughly, 200MB (which
makes it easier to copy around, download, etc) but when run will act
like the real 2GB system.

> Perhaps, for now, you could limit
> the image types you build to just vmdk and increate the size without the
> override?

Yes, that'll do for now. But I'd like to keep investigating so that
the ext3 image can be only as big as it needs to be while the
V{DI,MDK} can be dynamically sized to whatever is specified in
IMAGE_ROOTFS_SIZE_vmdk.

