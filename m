Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81EEBE009BC; Sat, 25 Feb 2017 22:24:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38FE7E0095F
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:24:31 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id r136so4019403vke.1
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EgM+2k7AcKyg04D1zb+Gzn9l+EnJdB3Dm0La7JNIR2g=;
	b=et5bfRlLbXWTZQNz1ODmRu24pYOG4GV1D4+85Bk72dKZfcb/wmadlyDaK//n7PxO8l
	bSA9uE5PVfKyLSv0cyZ/ilO9R001JwDqvJNjWcd4o5kWdHCDEqM34oatI5MWpbCDTq8T
	PCdyklmet8BdC/eznfPtxd8Jd47HhEBA/coPOEKDpwc0+9s9C652KGsylaLHCvhSOioM
	hTfYYKYzkes2ERt8LK+pNYAbkzcD+BwOMnVn4Z0xER+Z+TZY1UthrBDWaII+bRGefnoA
	4FR1UMYNwJ9IKOs/5EOi5fZNaTc4TD7vCaLVvIwXWaB858A5Fj5MdPcGSQuJr7Val9GU
	vtfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EgM+2k7AcKyg04D1zb+Gzn9l+EnJdB3Dm0La7JNIR2g=;
	b=aLiW5a0dobuk6qLk9A67lxbKFg7zgXgBghNLZpUJ8Ju5Fa2SlGCSkCMYCc+QMceuv6
	Aw4jrYW9Dv0TcSoSWfxX76suBgraSBzeiTxEANYZNOa/CyoErIoKHYY2f/ZIOCL9V1Yb
	s3CVr/NGWm6e854fg9gg7eyOAV+poRJ0fKW+MZnLip6rq2idrNfb1IkMq+7/bBIiMybf
	duD9ZuF0boYXsArPM+YPzmPf7MeCujYWVirh/dF7CLSFyJloA8unDAOLW4DtQ4LpZ2rO
	htojqkkySWPzrCEN7swIHJRkT7IgQm4lczBPeJfhOoCm4UH8BtxDX0tpQi+ApfUFeDp8
	UGIg==
X-Gm-Message-State: AMke39mHVnAQ8uEKzdkVW8ixYZbG57q/0VaspyGw0XDPYxPIEUf8RV7Vi0cZfu4+Jt5WXfpeuizUukpn0VqJew==
X-Received: by 10.31.235.6 with SMTP id j6mr3810111vkh.75.1488090271219; Sat,
	25 Feb 2017 22:24:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Sat, 25 Feb 2017 22:24:30 -0800 (PST)
In-Reply-To: <CAHUNapSYuoOHy4ncYv-qQ9tToV5EKRJtYCrKHy6x3ndDj9gJ_g@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-4-twoerner@gmail.com>
	<CAJrj+DNLj8HZikLNS7KKVTgqLG_fvmVpDM=XeCH+PVneHZKZaw@mail.gmail.com>
	<CAFLEztR-SLP2z3WPaqiBrNTBpBJRGBBpn2TVuXR-ZXCrxQYr6Q@mail.gmail.com>
	<CAHUNapSYuoOHy4ncYv-qQ9tToV5EKRJtYCrKHy6x3ndDj9gJ_g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 26 Feb 2017 01:24:30 -0500
Message-ID: <CAHUNapSZ2oXfdP8rq=w5vSPmBE2S2yaZUp81QrwQMetDo4en7g@mail.gmail.com>
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
X-List-Received-Date: Sun, 26 Feb 2017 06:24:33 -0000
Content-Type: text/plain; charset=UTF-8

applied, thanks!

On Tue, Feb 21, 2017 at 5:22 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Great, thanks for the review!
>
> On Sun, Feb 19, 2017 at 3:17 AM, Jacob Chen <jacobchen110@gmail.com> wrote:
>> Hi Trevor,
>>
>> 2017-02-19 13:03 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:
>>> Hi Trevor
>>>
>>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>>> Set the default preferred bootloader for firefly-rk3288 to be u-boot-rockchip
>>>> and set the default name of the SPL binary.
>>>>
>>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>>> ---
>>>>  conf/machine/firefly-rk3288.conf | 1 +
>>>>  conf/machine/include/rk3288.inc  | 3 +++
>>>>  2 files changed, 4 insertions(+)
>>> Reviewed-by Eddie Cai <eddie.cai.linux@gmail.com>
>>>>
>>>> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
>>>> index 8fa005d..58d752b 100644
>>>> --- a/conf/machine/firefly-rk3288.conf
>>>> +++ b/conf/machine/firefly-rk3288.conf
>>>> @@ -8,3 +8,4 @@
>>>>
>>>>  include conf/machine/include/rk3288.inc
>>>>  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
>>>> +UBOOT_MACHINE = "firefly-rk3288_defconfig"
>>>> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
>>>> index 769e5c1..4a4201f 100644
>>>> --- a/conf/machine/include/rk3288.inc
>>>> +++ b/conf/machine/include/rk3288.inc
>>>> @@ -10,3 +10,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux"
>>>>  SERIAL_CONSOLES = "115200;ttyS2"
>>>>  KERNEL_IMAGETYPE = "zImage"
>>>>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>>>> +
>>>> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
>>>> +SPL_BINARY ?= "u-boot-spl-dtb.bin"
>>>> --
>>>> 2.12.0.rc1.48.g076c053
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> It looks good, Reviewed-by: Jacob Chen <jacob-chen@iotwrt.com>

