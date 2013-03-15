Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E823E01472
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 02:26:55 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id ds1so344199wgb.0
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 02:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=QTQIGQkPk2dq1Ta0KfLK8XHoVqyw/iw/6GZtRek0CR8=;
	b=tSzQcAZuyO0997sW6i2v7Ywc6yWAEgHUtZiY6L4I3Mm8YrYb/5kkcZGE7mLTgkWX1h
	tE3022nNTbc64BoYcPhuRFOCYoz7CiqjEnRfrP6oIxETVefZMftECC6K9DZmkjxRkQ69
	zYqJ85Vk1cwfrhCQkibsNyZW54t7g1MprHp4EKp8yc+3/9u4u2G12qOwC7fzG+bW19Z4
	QJJsRxxLh/cyR4p6Beuac0ucYQ8imi+qX2rht+L/koT1XnkXjN3SjKfcFIDnIYIqTY9z
	zQYV4Ukq5B1HVUJA8anesvFIqHMQp+aD9vVN7L0atfSxGe1T6Agr0zQKJ+LwBopI2ZfS
	s7AA==
X-Received: by 10.180.75.177 with SMTP id d17mr1775855wiw.16.1363339613924;
	Fri, 15 Mar 2013 02:26:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 02:26:33 -0700 (PDT)
In-Reply-To: <51422FD2.6070605@linux.intel.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
	<5140B150.7050606@linux.intel.com>
	<CACzyEJ9apjW=+w7=9aLUD6UQtwmO6eyoac+XPBA_83MxEKdQdw@mail.gmail.com>
	<51422FD2.6070605@linux.intel.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 02:26:33 -0700
Message-ID: <CACzyEJ9TQd-ORK-ndiNi9ZrshPrbmSiwt6JiQF4AGyTwD0q9Rw@mail.gmail.com>
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
X-List-Received-Date: Fri, 15 Mar 2013 09:26:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 1:15 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 03/14/2013 12:56 PM, Insop Song wrote:
>> Hi Darren,
>>
>> mkefidisk.sh works, thank you.
>>
>> What I found was, USB still doesn't work even with mkefidisk.sh.
>> So I used micro sd card instead.
>
> Aha, yes. You will need to add "rootwait" to your kernel command line
> for reliable booting over usb. There is no way I see to determine if USB
> is being used (/dev/sda could just as easily be SATA). Perhaps mkefidisk
> should just use rootwait by default. Patches accepted.
>


"rootwait" was there.

1. when I run "sudo ~/bin/mkefidisk.sh /dev/sda
core-image-sato-sdk-fri2-20130309091839.hddimg /dev/mmcblk0"
but "root=" was set to mmcblk0.
So I changed "root=" manually to sda2, usb is booted as well.

yes, I should have put the last parameter to be "/dev/sda" instead..

2. so when I run "sudo ~/bin/mkefidisk.sh /dev/sda
core-image-sato-sdk-fri2-20130309091839.hddimg /dev/sda"
USB is also working fine.



Thank you very much for the help, now I can use fri2 to test "meta-realtime"

Insop

