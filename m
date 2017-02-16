Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5666E009B9; Thu, 16 Feb 2017 06:52:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38486E00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:52:54 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id n125so1508141vke.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WN9HnbC2UhLFNMB8tCueEWlCw4pqsLElsDBJGMpoGEo=;
	b=Ba+ukDtQhwxsoeBfw03tGUSAV8Meb7QRZ/gRbtSIxQKG48aB4aQ3YxwB5xWBEy18JL
	ljLwmyvS4YWDpl6Tottc2Cq+mPpQIeZD1X7DoDEBEy9gaKx5SgK2OOXpbf+niP8Ym1Wx
	iEQKdCw+2QMHyIc5FON41CtnqGvTSgDFU2IaCY/dBtMkhMNHA40mpWpHAQb6EEQywgTA
	h89ZAt+3WzffovxEnK/ROKQ5frw3ms8IYNct9fRfJy8t8PUBXoDvOpIP+BfkHWqy+I3U
	+LST8+iiobyyWzYDQzQYV6zdhdCWmyJ1XzYcgqXbZhjUFylLMTIbHwH/87inEiePyevj
	mvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WN9HnbC2UhLFNMB8tCueEWlCw4pqsLElsDBJGMpoGEo=;
	b=bv4E6F9LHDsWFH5PfloQYx4p/X++a8XBYEEEETUCG01L6Z0CH6gqp5YqMz8cpQ+Htq
	KFK+xJuYD7N9hub1T7DQUrjZA4MydCR9ZOnmjyniw0mlZNr424oWVMXz0/sL/I7Rsgne
	MzroWz/mNONPaYcT3X2eiaPnSj/udEFLncIXjHkHXqZdb8cigUhVH+0PXGTH4urKfUMZ
	1fsAZI+nbwPtC/QMxhw3QCoq9rKZrTiSM9FUZdkHdiMn62jq0kFfik2Kg/XQ80ob4iYP
	u/mvcVBH00fTqPe43sVmH4cShkTVGs+9E61SWdcmmbecenqCfI9aUAdCV5bwi182wJlb
	+zvA==
X-Gm-Message-State: AMke39nDjoOqenlG9PoqW6yIWoT7hkKQBEqyYTeZYn1UwhJVLeBcwvrVCoZ+F4AsPt00bP6nredBcXeqjAxt8w==
X-Received: by 10.31.6.73 with SMTP id 70mr1204646vkg.173.1487256774180; Thu,
	16 Feb 2017 06:52:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 16 Feb 2017 06:52:23 -0800 (PST)
In-Reply-To: <20170216060129.GA25376@carbonA>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
	<20170216020918.GE31588@carbonA>
	<CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
	<CAMKF1so5J-hMdxUPp15c+xgpnZRpcAikiuRMhzQ12MGFOsWWSg@mail.gmail.com>
	<20170216060129.GA25376@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Feb 2017 06:52:23 -0800
Message-ID: <CAMKF1sr=Du497sPqQBHK+wSKKdzsLmbqE+TneMuf0LeYRDN1BA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 14:52:56 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 15, 2017 at 10:01 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Wed, Feb 15, 2017 at 06:47:17PM -0800, Khem Raj wrote:
>> On Wed, Feb 15, 2017 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> > On Wed, Feb 15, 2017 at 6:09 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> >> On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
>> >>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> >>> ---
>> >>>  conf/machine/raspberrypi3-64.conf | 2 ++
>> >>>  1 file changed, 2 insertions(+)
>> >>>
>> >>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
>> >>> index 5598e50..cdcd726 100644
>> >>> --- a/conf/machine/raspberrypi3-64.conf
>> >>> +++ b/conf/machine/raspberrypi3-64.conf
>> >>> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
>> >>>  VC4_CMA_SIZE ?= "cma-256"
>> >>>
>> >>>  UBOOT_MACHINE = "rpi_3_config"
>> >>> +
>> >>> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
>> >>
>> >> This doesn't really work as rpi-default-versions.inc already sets the
>> >> version and this will not overwrite. Maybe have this before including
>> >> rpi-base.inc?
>> >
>> > actually I realized that I set the PREFERRED_VERSION_linux-raspberrypi
>> > in my local.conf and that overrides all. I will send a followup for
>> > this.
>> >
>>
>> just sent a series of 3 patches which should take care of this problem
>> please apply it on top of this series.
>
> As well omxplayer compilation fails on this machine:
>
> | ERROR: oe_runmake failed
> | aarch64-poky-linux-gcc is unable to create an executable file.
> | C compiler test failed.
>
> Can you take a look on this?

sure, as I said so far I have booted rpi-hwup-image and
core-image-weston builds and boots into console, no graphics yet. so
not all packages may yet build but we have a start.

