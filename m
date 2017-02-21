Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71069E0097C; Tue, 21 Feb 2017 14:22:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B1DE00939
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:22:54 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id h53so19410179qth.3
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UVJaKaN6q334p/zfhoTL1oln0qFzAAq4ypAkFX4NoSc=;
	b=Eu9cs/m0cRq3WyIz4+qZURVE9uBgts351uC07gY+gDLxqzOV5ozIRyggbSB6+VuSkh
	H8YreP9nZBgjmZUyD5ldhQnjXa4YsKydzeozw6hOcQBwV19+zI5KSEr5v2x50Xgp0IhB
	hc6cGbii9kIanhqY0mb1gf/njDX1AiMZ1AlQGIa83U/ClBl0HSYDUJzA++tDzs9piLhi
	CXc3ciog/d/XiyJxEh3fp+iGoUZj5oDda+TxqUDqoSOVONuLyBoO+/V+KrqMeQuyYVX8
	e3FerA9QufrKkCmOXRHQdV8SX58e86t2Qtl6BT8BHkqnwiw69CPT1Dr+CFr0Wsp6qmf4
	LXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UVJaKaN6q334p/zfhoTL1oln0qFzAAq4ypAkFX4NoSc=;
	b=cZ4qZKIOmjFthcqf6qSQX54GW5dG3LDf0Jp8kAzJ+XQvFPc0f4Sdjyu9j5PIlKvuWa
	S4HmlZy1VI29C+Cjm691LkkTYeViMAL+ffUAgivgzJTNPlteyP7iatwaVKQSfPHDHz52
	xGORY5v3KBNBpEy0IPi0DBYS2EFkJWOQ+y2shTjlslFmxe5dOoqs2+ba01jbJ9Gfw9fu
	3kO9J6DO1OKb4KyOdSz5v7uUjmvlL0mjrdc6uKS3OkDaZ0ZnKUlhVc8Aq+DvrG3BbFYq
	2v86416RwYAF+WqIsuQg+zOzmfPVDBHQ30pwh/j5LjQm0qbmhrY4wUHB9wvL2hhgsSBk
	wBvg==
X-Gm-Message-State: AMke39lk02adSJ1TcERTDYfEg+HI7l7h7VlAWZfyMhfHIjJwfOGoxjRv+NWwkJuDSONNeEujaOT7uimqIXO8WQ==
X-Received: by 10.237.37.47 with SMTP id v44mr7106974qtc.138.1487715774141;
	Tue, 21 Feb 2017 14:22:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Tue, 21 Feb 2017 14:22:53 -0800 (PST)
In-Reply-To: <CAFLEztR-SLP2z3WPaqiBrNTBpBJRGBBpn2TVuXR-ZXCrxQYr6Q@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-4-twoerner@gmail.com>
	<CAJrj+DNLj8HZikLNS7KKVTgqLG_fvmVpDM=XeCH+PVneHZKZaw@mail.gmail.com>
	<CAFLEztR-SLP2z3WPaqiBrNTBpBJRGBBpn2TVuXR-ZXCrxQYr6Q@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 21 Feb 2017 17:22:53 -0500
Message-ID: <CAHUNapSYuoOHy4ncYv-qQ9tToV5EKRJtYCrKHy6x3ndDj9gJ_g@mail.gmail.com>
To: Jacob Chen <jacobchen110@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 21 Feb 2017 22:22:56 -0000
Content-Type: text/plain; charset=UTF-8

Great, thanks for the review!

On Sun, Feb 19, 2017 at 3:17 AM, Jacob Chen <jacobchen110@gmail.com> wrote:
> Hi Trevor,
>
> 2017-02-19 13:03 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:
>> Hi Trevor
>>
>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>> Set the default preferred bootloader for firefly-rk3288 to be u-boot-rockchip
>>> and set the default name of the SPL binary.
>>>
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> ---
>>>  conf/machine/firefly-rk3288.conf | 1 +
>>>  conf/machine/include/rk3288.inc  | 3 +++
>>>  2 files changed, 4 insertions(+)
>> Reviewed-by Eddie Cai <eddie.cai.linux@gmail.com>
>>>
>>> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
>>> index 8fa005d..58d752b 100644
>>> --- a/conf/machine/firefly-rk3288.conf
>>> +++ b/conf/machine/firefly-rk3288.conf
>>> @@ -8,3 +8,4 @@
>>>
>>>  include conf/machine/include/rk3288.inc
>>>  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
>>> +UBOOT_MACHINE = "firefly-rk3288_defconfig"
>>> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
>>> index 769e5c1..4a4201f 100644
>>> --- a/conf/machine/include/rk3288.inc
>>> +++ b/conf/machine/include/rk3288.inc
>>> @@ -10,3 +10,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux"
>>>  SERIAL_CONSOLES = "115200;ttyS2"
>>>  KERNEL_IMAGETYPE = "zImage"
>>>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>>> +
>>> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
>>> +SPL_BINARY ?= "u-boot-spl-dtb.bin"
>>> --
>>> 2.12.0.rc1.48.g076c053
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> It looks good, Reviewed-by: Jacob Chen <jacob-chen@iotwrt.com>

