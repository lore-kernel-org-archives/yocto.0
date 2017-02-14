Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD60BE008D0; Mon, 13 Feb 2017 21:46:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA633E0086E
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:46:20 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id w20so16047298qtb.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=l4jYtQl9JbYiZG+HIWcSTwTqKFHzsvjgdOrORjpLqsQ=;
	b=GDMz6dEczgVKoyqKUpSo6ppZh1p8i1muiF4Ys05zutp4HCLsWpHHD1g/kRWqBB0+Q7
	Zlgoce2LAJg5DKPsUh8AFhgjnxVwpg0l7BeELHvGZjttHotm5dXKjYcHW3N8gcf9pQlm
	0UJYzwGw8HeWBhdgln0zGI6ON/q+bDTDxH/wZjPeOiV1+R9a2oArNHTo8QvFR2yXE27z
	leqrLWmZBKNiW3z3Ibj8AfzrQQbdK2jmEtf81Lh+zw9rP3maOVfvzNRaWoy8GT7Eyo6c
	1d1wEoB+XheeruzMEb2TcVReutiUQupi4mqdFlW8CN03Htn5THUh8Vf85ZH7izqzQPkr
	KLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=l4jYtQl9JbYiZG+HIWcSTwTqKFHzsvjgdOrORjpLqsQ=;
	b=tIcFLZ/f/SDB/dYrNJkr3yKKDbKFN1Qi+P4uMHkaDe2415CNN8m+iJHViQtmZHTn0Y
	8eGNnxF58BlLq4qpzxhVgshvP7dRCnYTa3N77M/hXFTbH6BovnDhBk1vJ+j4c5GPUkMo
	bTDnng1UiWggYQRb5Db28G4JOLGKwY62WOCmRoVVqQqnuMIJT66v4EZY7KeV7IqritMp
	J6ZtQoK5jyqpxpshAP2950bI9GAvfyzJW0El+oljt6aQ1RMiV2FPa964SzYAWfCY4eBM
	QliHf+ntDGAw5sqVm46wA0thnd2d1hJVmVt5hfI9L85O8JbiH5FHOoVHrtNuu5exAqBo
	zlfA==
X-Gm-Message-State: AMke39lHYKfWr3U8257uAmvrB0IC1KqAXRtinNOrfeIj99Z26Qpi2X6nD30G6TCW8PB1BP6ALwGJ7Bh+3WBR9g==
X-Received: by 10.237.60.27 with SMTP id t27mr27821846qte.86.1487051179373;
	Mon, 13 Feb 2017 21:46:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.71 with HTTP; Mon, 13 Feb 2017 21:46:18 -0800 (PST)
In-Reply-To: <CABgxDoLjrQqFs_bW2LH7UOqoxEOZJNCwksjTW-zDa+_W4VMTRA@mail.gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
	<1486564699-6001-4-git-send-email-eddie.cai.linux@gmail.com>
	<CABgxDoLjrQqFs_bW2LH7UOqoxEOZJNCwksjTW-zDa+_W4VMTRA@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Tue, 14 Feb 2017 13:46:18 +0800
Message-ID: <CAJrj+DOtfFKtiQ5MDkrEEOnnLhjDUj7CGB4G+oPc+Ao-j3BWEA@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][morty][PATH 3/3] recipes-kernel: linux: Add mainline kernel
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
X-List-Received-Date: Tue, 14 Feb 2017 05:46:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi Romain

2017-02-14 1:05 GMT+08:00 Romain Perier <romain.perier@gmail.com>:
> Hello,
>
> 1. Autorev is bad, when linus will merge patch for the next merge window, it
> will break things. Use a fix git revision instead (or a branch from the
> stable tree)
I will use a fixed git revision in next version
> 2. rc8 is out :)
I guess what you mean is rc7 is out. I will update to rc8 in next version.
>
> rk3288 is not a machine for me , can you really ensure that it will board
> for all rk3288-based board ? suppose that there is no DT support on
> upstream... that's wrong :)
>
> Thanks!
> Romain
>
> 2017-02-08 15:38 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com>:
>>
>> Add mainline kervel support. Now the version is 4.10.-rc7.
>>
>> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
>> ---
>>  recipes-kernel/linux/linux_4.10.bb | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>  create mode 100644 recipes-kernel/linux/linux_4.10.bb
>>
>> diff --git a/recipes-kernel/linux/linux_4.10.bb
>> b/recipes-kernel/linux/linux_4.10.bb
>> new file mode 100644
>> index 0000000..7abdc56
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux_4.10.bb
>> @@ -0,0 +1,18 @@
>> +# Copyright (C) 2017 Eddie Cai
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +require recipes-kernel/linux/linux-yocto.inc
>> +
>> +SRC_URI =
>> "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
>> +
>> +SRCREV = "${AUTOREV}"
>> +LINUX_VERSION = "4.10"
>> +# Override local version in order to use the one generated by linux build
>> system
>> +# And not "yocto-standard"
>> +LINUX_VERSION_EXTENSION = ""
>> +PR = "r1"
>> +PV = "${LINUX_VERSION}-rc7"
>> +
>> +# Include only supported boards for now
>> +COMPATIBLE_MACHINE = "(radxarock|marsboard-rk3066|rk3288)"
>> +deltask kernel_configme
>> --
>> 2.7.4
>>
>

