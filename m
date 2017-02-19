Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB547E00A21; Sun, 19 Feb 2017 00:17:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jacobchen110[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F3A1E009F8
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 00:17:37 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id x71so1724144qkb.0
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 00:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+G7xuDtKOzy5vbAET81iRbwA5yn2lypGExe1nc7LG7A=;
	b=R0u7I6WTZBqstCOlLmnlpZLVOSfR80M5G3d8N7vu8RNbn9C1Is4XZtR6WD4Ps1+sjG
	XwOkuOejSQaPIUEmQm7gbPPZPk5cwqcSguDJ5b0TBcRv6EVhUs8MsTgZZ1XJn5gGtD9z
	uz0GCTWOWy8tj60BA1VoIxuoJOeScpihs7DW51dbCPixo5M6ju0Aoex8dwzimEHdAPn2
	ThaResNZN34/IuxB3M4rg4mizJ4xkmCa5dB9iIju9SFochC16q8PiHiTwq86mh3ZoUe8
	/ypE1BCxjP1JmrqMpa1zMn008Ndxt6HJZBAMAApof5wPwi8KWSwmYQSOmC5dtX0uIEei
	TwHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+G7xuDtKOzy5vbAET81iRbwA5yn2lypGExe1nc7LG7A=;
	b=kKFQ7yjTrSyzPeuqL4LbbJFOPK0EJAyglrQj8c+BhWxfSfE7l2iA/1CY6uWF1OJiM9
	ixhfGH5wUdXQ7FcGU24bdGjaAY3aAMRHl82PZuYjOYCi4YQhpwQsE5jDiRXFNfiA4oDl
	mzDT7j8yUakENwTQa3cz3TB+pm1VnnSAEt6ktevN7cMxy5iexO6Mq4hKwNhPDAa+xcJG
	uaDVicY5PaDJD69vPd9LqHe+7UQy9iMKrhKaDH0kOauMIg6yghIG+7uGi+vhmiVQxseT
	nJLzL9RT/ops/3l71u8ha9gwMKAB3iqkY7m3tovgQBDHi2CagAs6NcvtEQ57FN4KONh+
	31BQ==
X-Gm-Message-State: AMke39lDvg2c+1QzyYdfV3KqRHpJSaRz9ER7X9TBk99VYhRc1sk9ysMu9hQyzti0uHCYNDPM74UafI1mNxn/8A==
X-Received: by 10.55.3.18 with SMTP id 18mr14220147qkd.244.1487492257246; Sun,
	19 Feb 2017 00:17:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.104.145 with HTTP; Sun, 19 Feb 2017 00:17:36 -0800 (PST)
In-Reply-To: <CAJrj+DNLj8HZikLNS7KKVTgqLG_fvmVpDM=XeCH+PVneHZKZaw@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-4-twoerner@gmail.com>
	<CAJrj+DNLj8HZikLNS7KKVTgqLG_fvmVpDM=XeCH+PVneHZKZaw@mail.gmail.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Sun, 19 Feb 2017 16:17:36 +0800
Message-ID: <CAFLEztR-SLP2z3WPaqiBrNTBpBJRGBBpn2TVuXR-ZXCrxQYr6Q@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 3/5] machine: firefly-rk3288: specify bootloader
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
X-List-Received-Date: Sun, 19 Feb 2017 08:17:41 -0000
Content-Type: text/plain; charset=UTF-8

Hi Trevor,

2017-02-19 13:03 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:
> Hi Trevor
>
> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>> Set the default preferred bootloader for firefly-rk3288 to be u-boot-rockchip
>> and set the default name of the SPL binary.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> ---
>>  conf/machine/firefly-rk3288.conf | 1 +
>>  conf/machine/include/rk3288.inc  | 3 +++
>>  2 files changed, 4 insertions(+)
> Reviewed-by Eddie Cai <eddie.cai.linux@gmail.com>
>>
>> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
>> index 8fa005d..58d752b 100644
>> --- a/conf/machine/firefly-rk3288.conf
>> +++ b/conf/machine/firefly-rk3288.conf
>> @@ -8,3 +8,4 @@
>>
>>  include conf/machine/include/rk3288.inc
>>  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
>> +UBOOT_MACHINE = "firefly-rk3288_defconfig"
>> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
>> index 769e5c1..4a4201f 100644
>> --- a/conf/machine/include/rk3288.inc
>> +++ b/conf/machine/include/rk3288.inc
>> @@ -10,3 +10,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux"
>>  SERIAL_CONSOLES = "115200;ttyS2"
>>  KERNEL_IMAGETYPE = "zImage"
>>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>> +
>> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
>> +SPL_BINARY ?= "u-boot-spl-dtb.bin"
>> --
>> 2.12.0.rc1.48.g076c053
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


It looks good, Reviewed-by: Jacob Chen <jacob-chen@iotwrt.com>

