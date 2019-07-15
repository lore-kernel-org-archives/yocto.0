Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1B6E00B9C; Mon, 15 Jul 2019 05:45:48 -0700 (PDT)
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
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C06E00798
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 05:45:48 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id i10so33738975iol.13
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=efc6Rjn5P3aIm+sYQyxdFAqlIerhTKH5vu+SeUB9+8k=;
	b=keEWygvWh1Lwf4tAIbhK3x6Grnc+6eJZteYVbYvcLSaO8264YqNcbRry5ASXK+uMsl
	Cv50WfhQ91r0T1FaMw7f4qPPD9PXgJEF7FQ0i3Nv2CM9Gc0jfITGQQnhJ0P6+1/n1pB/
	cTfmvQU/RIWOQEYqJpchJ70YSeMbuBCbZXyq4FQ2gdkwXG8if1OdQ4ATjeNyQUxT2laY
	wDnl2pMNGB6KjTmnDT5a9eDhWxCwHPgF1xS8w8ybEhuHQs3nIpwGi0sV97DojZSjijZN
	bo3V/qjmvJ+ZYD7bA5/3xPyqHWg171Hs5uGZlSCOGULQpTIjBWq0wN2qfrN3rWTjkG3X
	MydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=efc6Rjn5P3aIm+sYQyxdFAqlIerhTKH5vu+SeUB9+8k=;
	b=FmzKFXL3InrVMaslxCddIUSrYcakPfmqVz0Cv4NAkh2332lKyRjMxlwri3ktlzOWgi
	+l+95SwsXdDp6vfcxO8KxJ/575S0KbPPex2v4gOijIYAEXreCxYr4qri/bkmNxkpuN6G
	V0DsaQg70ZVOuxezGhSjotDSRCzx6eYjHJ1Bnx/hTZpgs1D5D17q0Ft7ZKlnhh/cdfdT
	2pRfWoCzt3y2BIWUZSmKw0qAj5+YSLv5b2xMvwrebwhPcyxKSOa2LxJqUVu0O8WR4aca
	FHveiznSQKt3exv8bvdziw/M8QHqt2Hyu5QjyCwv9WsUAlisHa753/ZmMv1C3DQ3/ENl
	B6bA==
X-Gm-Message-State: APjAAAW/r8InnWJx0BAkc+Oz+5Rf9PfgBSuF2jGybY4XcvbYzaFlEglI
	rJNgcRBBpvSDCZ0guXLY9HEBWrhgWl6lsX4PWLg=
X-Google-Smtp-Source: APXvYqyb3a6rtAkDq1fOTmbnX9k7fow/T+low7BHwAbzhAtcU2UknxJ23n2eIraFjtljkPkX32PgYv+HH81+nj9FuOg=
X-Received: by 2002:a05:6602:22cc:: with SMTP id
	e12mr25562763ioe.192.1563194747741; 
	Mon, 15 Jul 2019 05:45:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Mon, 15 Jul 2019 05:45:47
	-0700 (PDT)
In-Reply-To: <CAAx3WaAY2REFJpV3ibOwMmmTHjZbiNsOXVX_eCkFVA5WgO_YzA@mail.gmail.com>
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
	<CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
	<0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
	<CAAx3WaAY2REFJpV3ibOwMmmTHjZbiNsOXVX_eCkFVA5WgO_YzA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Mon, 15 Jul 2019 22:45:47 +1000
Message-ID: <CAA=hcWQqBrzU=SYRDLELG=vu_0=82CNLwz6u3F6=kXhRoUmhqw@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Where to add U-Boot argements bootargs and bootcmd?
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
X-List-Received-Date: Mon, 15 Jul 2019 12:45:48 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Gabriele and Maciej, I use meta-freescale for imx6. The u-boot
argements seem defined in wks files such as imx-uboot-mxs.wks,
imx-uboot-bootpart.wks, not quite sure how to extend or overwrite it.
Sorry still learning the Yocto.

Thank you.

Kind regards,

- jh

On 7/15/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Yes, thanks Maciej for pointing that out! It may be a good starting point
> for JH.
>
> Gabriele
>
> Il giorno lun 15 lug 2019 alle ore 10:29 Maciej Pijanowski <
> maciej.pijanowski@3mdeb.com> ha scritto:
>
>>
>> On 15.07.2019 08:45, Gabriele Zampieri wrote:
>>
>> Hi,
>>
>> as far as I know, there is no mechanism to add custom bootargs and/or
>> bootcmd to uboot via Yocto (correct me if I'm wrong). I usually patch the
>> upstream uboot to achieve this task.
>>
>> I also haven't heard of any standardized way. It may depend on the target
>> hardware
>> and the BSP layer you are using. Apart from patching the U-Boot, there
>> also might
>> be boot.cmd script to modify or the config.txt in case of the RPI, for
>> example.
>>
>>
>> Best regards,
>> Gabriele
>>
>> Il giorno lun 8 lug 2019 alle ore 22:43 JH <jupiter.hce@gmail.com> ha
>> scritto:
>>
>>> Hi,
>>>
>>> Which Yocto files and which statement can I add my own U-Boot bootargs
>>> and bootcmd?
>>>
>>> Thank you.
>>>
>>> - jupiter
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> --
>> Maciej Pijanowski
>> Embedded Systems Engineerhttps://3mdeb.com | @3mdeb_com
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

