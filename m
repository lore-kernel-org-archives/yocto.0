Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11CAEE00D35; Mon,  6 May 2019 00:36:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9458DE00D11
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 00:36:21 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id q14so18803823itk.0
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 00:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S89fbq4d0VNVGc3KKK/jSy/iO7trfL9ba4gd2oEiUZ8=;
	b=jqZxZ4n29Z9PaaR35ye86gPyv3Hn762DyKsoIGtL8xB7gyjYrgDN3orO8TrjfCjMju
	JbmCri1YAxicR+Q3HIZMwCGIfp1QZM/EGXajFeKwVraD4adt29lRegcwWM1CxxWPtKpz
	y/0sMoV3BubWKATGUDOvA9Lmq0jiIsxyx2g81xAD0CJASdgMqgK1VQ55z79QVnG4eKYZ
	tLza663K1r8+sQiblHi6n5eejU/8YjM1px+31ZtSUiz7SA1ZoS7iUzelngyMe+L3avZs
	R+l5S0CaHlsdEti0hNsu+rhXfpHDZLBBzP7MnBTdESTCFMZrif+gFCcMgYWaKRWVBS+L
	M90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S89fbq4d0VNVGc3KKK/jSy/iO7trfL9ba4gd2oEiUZ8=;
	b=X9jlhpGtHBZXoDg/YgSK5SBvB5F6O1EgDnuZmtenGSC4Tfg7+I3nF2cNTVILGzFs9e
	QtmxnqGxsvR4GGvQn+LWgbDPduwxFeRlkUi7jkZZJoZ8foT6MSMC9ULMlKvduLSeHmXN
	FvE4hFBeopUaEocWHIS1pi1V1Td1V8fLrZ4gXnm3VYISkteF3gRX5ObKwN7CTtgf0qnQ
	ErEyyraGv4DI9Tzn+VQq7iB/ZnmCxLjUm8r0/j6eaw+GuTzs9j5Mqtz8V+Z1VJVTTUa9
	YIwMoFjIG2NPQKvVtPJ72jQ0jiT4mCnaUCu5GYCHXFz9p4JbsgcfJcgo+ga34yfisa2v
	JsyA==
X-Gm-Message-State: APjAAAWihA9xLX0RSfUJE1ELP8t8ixYnt/zCSV9UFnsJAa8+JRGya8pN
	KQOx/fn8+i7GVAxnP5I/RfaZR/6Vwt6YbTSMg+o=
X-Google-Smtp-Source: APXvYqx+7+YKNJO9P/cbkLpUYxMtawaVdVPVzqj5VTOVCgsPY2+9DNRZycgyqDB6oknBNb85e+UczI7Cz5+EobdqxNE=
X-Received: by 2002:a02:43cf:: with SMTP id
	s198mr17538901jab.138.1557128180901; 
	Mon, 06 May 2019 00:36:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Mon, 6 May 2019 00:36:20 -0700 (PDT)
In-Reply-To: <CAAx3WaBz81Zza1UeK4QhpkDFkXq6zYTRbi_-xKNWaY0mHoHPRw@mail.gmail.com>
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
	<CAAx3WaBz81Zza1UeK4QhpkDFkXq6zYTRbi_-xKNWaY0mHoHPRw@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Mon, 6 May 2019 17:36:20 +1000
Message-ID: <CAA=hcWS_V5xujb-Emgzd+ok1dfpiC+RjMFHvxOvOYcwa5tz5=g@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to define and build device tree in Yocto?
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
X-List-Received-Date: Mon, 06 May 2019 07:36:22 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Gabriele,

Yes, I have already added KERNEL_DEVICETREE =  "imx6ull-14x14-evk.dtb"
to generate an image running on imx6 EVK. What I don't understand is
how that imx6ull-14x14-evk.dtb was compiled? I thought all dtb are
compiled from dts files, but there is no imx6ull-14x14-evk.dts, the
imx6ullevk.conf defined the EVK but there is no detail in that file.

My second question is my new hardware based on imx6ull MCU now has a
dts file, since I could not see any samples how is the dtb compiled
from a dts file, I have no idea where to put the dts file, how to link
that dts file to generate a dtb file in recipe. Appreciate more
clarification.

Thank you.

- jh

On 5/6/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Hi,
>
> The easiest way is to add them via patches. You can write a recipe that
> patch the Linux tree and put it in your meta layer (usually in
> meta-xxx/recipes-kernel/linux). Then you need to tell Yocto to export the
> dtb via KERNEL_DEVICETREE variable (
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-KERNEL_DEVICETREE).
> I usually put this variable in my machine configuration.
>
> Gabriele
>
> Il giorno dom 5 mag 2019 alle ore 14:04 JH <jupiter.hce@gmail.com> ha
> scritto:
>
>> Hi,
>>
>> I think the device tree blob is build from device tree source, but I
>> could not find any dts files in recipe source directory, there are
>> many dts files in build directory and there are dtb in build
>> directory.
>>
>> If I have a device tree source, where I should put it and how to
>> define the recipe to built it?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jupiter
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

