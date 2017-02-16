Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C5B2E00A6B; Wed, 15 Feb 2017 18:47:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861B3E00A97
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:47:48 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id 23so366847vkc.2
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ma+mPiwwqWduxRya5hL6VM1jY0/DD+/gNaSbGb6tOys=;
	b=ZFiiHjF2sSwfCMlaJfEKD03a8R3HJFJVa0x40BRT55UzLF2Eu2ukTsBRIePdZUqItM
	HlSZdDGdB7ZnpGyndJHvvCSOh2YakYwkfkr0AAyYIMHL2kTkmWMY2qJWbRh+JxKdpgBM
	MKHG9F7BHBrlO/JTiEV8mc+BXIHUAgqV2vsfHEq+4ozRJo7luMSjWZKY7l/SMI1qSA85
	LuLX4zFyktD12HPB0k40SzJyycYetp/JYxHqAaA2kod3d0u0XJ72froS7DvzwHSEVAQ+
	mfnNSYuNNH5bLuUF8HTP7HFG8tk9ZLv42kFRzN4djvQ670Tgmtifj+4Y0riLgwGdD4bD
	rkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ma+mPiwwqWduxRya5hL6VM1jY0/DD+/gNaSbGb6tOys=;
	b=uAcGxC//zT2ohGoeHPBu1Cq11swL49fDoSUh66NZk3Dm3/uLcMlNNYywon4UFWayxt
	eEVTU7+67T9sN81vXRlxhARXhyBBOWmsKbDcj4QpB3H2XMMyOir3qsiw2AIOpNiLdhUJ
	RqZb3/GCvftr29kv5pwOQaP+x1/txZSXvpQUyX0TP6AKkJGVpjRdXaXuv5AvTbzVYmZp
	Tgl4DTXLE5XqnoJhb0AyN9WdP9wJrqIT2F5XVaeuvqo6+iQ8SDDQw2JgKKnakCwqk5cg
	ssaqpouUHoEX+9mivVRv99Y/LJu+jhevBWpg37BnHzJEXX0c4J751YrxJqJdh16aIzHO
	uv0A==
X-Gm-Message-State: AMke39kDvMUnlMm97XclPqrUe+XxMdz3/ETZQ9ydvBh8wgVT5D+AYPeWh2NqS/nEDFarpesLNNhRavEPrNvJfg==
X-Received: by 10.31.6.73 with SMTP id 70mr4460782vkg.173.1487213267580; Wed,
	15 Feb 2017 18:47:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Wed, 15 Feb 2017 18:47:17 -0800 (PST)
In-Reply-To: <CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
	<20170216020918.GE31588@carbonA>
	<CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Feb 2017 18:47:17 -0800
Message-ID: <CAMKF1so5J-hMdxUPp15c+xgpnZRpcAikiuRMhzQ12MGFOsWWSg@mail.gmail.com>
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
X-List-Received-Date: Thu, 16 Feb 2017 02:47:55 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 15, 2017 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Wed, Feb 15, 2017 at 6:09 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>> ---
>>>  conf/machine/raspberrypi3-64.conf | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
>>> index 5598e50..cdcd726 100644
>>> --- a/conf/machine/raspberrypi3-64.conf
>>> +++ b/conf/machine/raspberrypi3-64.conf
>>> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
>>>  VC4_CMA_SIZE ?= "cma-256"
>>>
>>>  UBOOT_MACHINE = "rpi_3_config"
>>> +
>>> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
>>
>> This doesn't really work as rpi-default-versions.inc already sets the
>> version and this will not overwrite. Maybe have this before including
>> rpi-base.inc?
>
> actually I realized that I set the PREFERRED_VERSION_linux-raspberrypi
> in my local.conf and that overrides all. I will send a followup for
> this.
>

just sent a series of 3 patches which should take care of this problem
please apply it on top of this series.

