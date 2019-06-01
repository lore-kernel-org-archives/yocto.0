Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC85CE00B65; Sat,  1 Jun 2019 03:39:25 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D79E00A0C
	for <yocto@yoctoproject.org>; Sat,  1 Jun 2019 03:39:25 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id j204so14127438ite.4
	for <yocto@yoctoproject.org>; Sat, 01 Jun 2019 03:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8sdMeAJ5P+jAgaTPf+8YO/f44gNj1nXWOhf8QrOvo0k=;
	b=u6IW7rgIA43wMUU9n+SGq/bAoc0axXABtmhLNO7bqCtT7qo0Ljyz4VLld156i/JgrC
	XjOxrnnh3InjxqTUJkIr5s1tEeAHZB/rWMW/cwUzbldCThM97gPR5sTZ5CfWD/hOlUy0
	FubqfS3xuF8XISlJCXu7IBnWVlxFxgstvZNvj5pAfQNRUsWK/u0vu1DGsOkyVv4W8hPZ
	njjrMe0HSi74AjkJa+L65tGcbCh5OXzIcdy+F4zl8Ekm+ZZvXaEhyTqSBZsCJ4SYjDjz
	4oNN33uuyWN8ljOoRjKoQ9Jq0++i/KX6T/d1Nui+VWgCCfpoTxryY5kCfdbIoRMlU0F5
	Djiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8sdMeAJ5P+jAgaTPf+8YO/f44gNj1nXWOhf8QrOvo0k=;
	b=A/0KZMjcSLdmpH7y2x3HhxN9F3/nr/8LxnDflRr8oZ8DZy8JleedwMyL92uLJs2Zp/
	7c+jhky2K0flt/VaL0qy3cJSgj2lwN1+I8s5JGCXItVKBZfrchMJ2F8jJgHdvgoN3UXx
	U28S4YMWHKQsVCV3HnK/JlRxoc8wuA908h0vXrcMbaUoblZprOGGBi6KKe/8jJfXKgbg
	QcBNGIsLGMp6f/6JDoPQuq7+AW5QzW3fvsA7c/diT4MZWGid+xdk1bHVH73PstN8plrh
	/ZuJI0xRpeh+XUIqk694N9bsWWxe4RibwTOSTs2+ZVWBeqxzVquTirbAfRlz0vrRsTFi
	iw9A==
X-Gm-Message-State: APjAAAUr5Z250Bhi7Xw3q6r7arPdnkGrTGZotEnpIkja1iSsa0UCL0HD
	pRtJvIm3SyFL7aVtiOkmk9KUmdE3arolkdkvJ78GPyTF
X-Google-Smtp-Source: APXvYqy9BvNaR2CjOupkgAd2aaz77O1N0hthJVH+rr14HR9tw/xExs+14T3lzGBbWRdE0zWgRLSl5gJs0mkXvZujb28=
X-Received: by 2002:a24:5255:: with SMTP id d82mr10473764itb.104.1559385564696;
	Sat, 01 Jun 2019 03:39:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP;
	Sat, 1 Jun 2019 03:39:24 -0700 (PDT)
In-Reply-To: <20190531132253.GC20781@bill-the-cat>
References: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
	<20190531132253.GC20781@bill-the-cat>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 1 Jun 2019 20:39:24 +1000
Message-ID: <CAA=hcWQwSD4MLVJLbNz2nzv0SQAgMdkcnRPFfPCQN5NW+7XYhw@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to extract files from wic.gz image?
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
X-List-Received-Date: Sat, 01 Jun 2019 10:39:25 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Zoran and Tom, I can use dd to install the image to SD card on
IMX EVK, now I need to install the image to NAND flash of a customized
IMX device via USB HID, it cannot use the dd, IMX provided UUU utility
which I am new to it and I have to decompose the image to
zImage-initramfs and  losetup -P does work, dd does not work either.

$ losetup -P dev-image-20190528085324.rootfs.wic
losetup: solar-dev-image-solarevk-20190518084330.rootfs.wic: failed to
use device: No such device

Thanks for your helps anyway.

Kind regards,

- jupiter

On 5/31/19, Tom Rini <trini@konsulko.com> wrote:
> On Fri, May 31, 2019 at 10:21:40PM +1000, JH wrote:
>> Hi,
>>
>> What command and tools to extract files from Yocto / bitbake image
>> such as dev-image-20190528085324.rootfs.wic.gz?
>>
>> I am using IMX UUU to install dev-image-20190528085324.rootfs.wic.gz
>> to IMX, I was advised to extract the archive and use "uuu <script
>> name>" or "uuu u-boot-dtb.imx" to get bootloader work first.
>
> A wic image is just another way of saying it's a raw disk image.
> Decompress it, losetup -P (generally useful, but not needed this time)
> and dd out the contents you want.
>
> --
> Tom
>

