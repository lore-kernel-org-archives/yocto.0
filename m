Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D071CE01469
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 12:56:52 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id 8so701018wgl.30
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 12:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=/2c0xByPAi30nCkDQA0S9bTB78/HVnGComU8TCnOq/M=;
	b=ON2h1M0GkPUF5xuTyHWFH022/iYb2h6hCoQhWCL6gJqdTzQ+ulhYPm4gLUBq0lWNWu
	uu8tkfO2lZ0+ZI/TWQfo+1TgbV+zK9w4L3PKKJQSzqTHgIftxIz4u5vIHYs5PdCbhvNG
	wb79ywVN+RRF/LsY9Lf9etXFYMGWC+4fEesxifRxDWbWDgPwdzcIvpyMfSZ7kYFI3Hah
	UrLofgH+TNrJE0CkRgcJOXKl5fa4MMifY2jSRqOkv1pxvPyYLhqRcBa7iU62U2JHN1Nj
	xL7/2+949kDnrKgNGVWzqGkJWPKQZZBxTc4KMG18TkwnGntj3mIv/FWWZo4VzrpXbGQK
	u9ZQ==
X-Received: by 10.180.75.110 with SMTP id b14mr36727622wiw.21.1363291011298;
	Thu, 14 Mar 2013 12:56:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 14 Mar 2013 12:56:31 -0700 (PDT)
In-Reply-To: <5140B150.7050606@linux.intel.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
	<5140B150.7050606@linux.intel.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 14 Mar 2013 12:56:31 -0700
Message-ID: <CACzyEJ9apjW=+w7=9aLUD6UQtwmO6eyoac+XPBA_83MxEKdQdw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Thu, 14 Mar 2013 19:56:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Darren,

mkefidisk.sh works, thank you.

What I found was, USB still doesn't work even with mkefidisk.sh.
So I used micro sd card instead.

I will use sd card for now, so it should be fine for now.

Regards,

Insop

On Wed, Mar 13, 2013 at 10:03 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 03/10/2013 04:16 AM, Insop Song wrote:
>> Hi,
>>
>> I have a question on loading a new yocto image to Intel Fri2 board.
>>
>> 1. Board: Intel Fri2
>> --------------------------
>>
>> 2. Image: self built sato image with meta-fri2
>> --------------------------
>> I've followed an instruction from
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-fri2/README
>> so do dd image of my sato image to usb as described
>> - "dd if=core-image-sato-fri2-20101207053738.hddimg of=/dev/sdf"
>
>
> Assuming you have the Intel provided UEFI fastboot firmware, I would
> suggest using scripts/contrib/mkefidisk.sh rather than dd'ing the
> hddimg. The hddimg is not in a format that is well supported by EFI.
>
> mkefidisk.sh partitions the target device and creates a proper EFI
> partition and a root partition.
>
>
>>
>> 3. Sympton: stuck during boot and no ttyusb access
>> --------------------------
>> And connect it to the host USB port.
>> Then I can see the new grub menu that has "boot" and "install", so
>> selected "boot"
>>
>> However, booting was stuck at around this line,
>> - "0000:03:0a.2: ttyPCH1 at I/O 0x2050 (irq = 41) is a pch_uart"
>>
>> And I am not able to get the ttyUSB console working either.
>
>
> You don't see GRUB over the serial port? Do you see the UEFI shell on
> the serial port. Does the ttyUSB* device appear on your host machine?
> Are you configured at 115200 8n1?
>
>
>> 4. Others: official sato image for Fri2 is not working either
>> --------------------------
>> Also just to make sure I "dd" the image from the official hdd img, but
>> the result is the same as my own image.
>>
>> Anyone has tried the same? please let me know.
>
>
> Try mkefidisk.sh and let us know the result.
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel

