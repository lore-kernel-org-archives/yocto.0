Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19FF7E0043B; Wed, 21 Sep 2016 08:38:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C66A5E002AC
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 08:38:38 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id g62so45340198lfe.3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 08:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hg0dERVD18r7rJngF96Ze+WmaCDHsi1YJ6VYNBQJD3I=;
	b=z5fUl5F1SPcIz4TqcpMsq79pQLycRVREk1vuRbL46DVwBhWXlZ2z4TgslvCUQ9wt41
	yGSdkxPcClozxPHw6fhHTXoz0jN15ijkeMRq2ozJLIsqhcz32HkNNoMJpGlaM6o9eSEr
	ulU/xoayna9s4s+124Jn8Ws6l09ISCXwqsLydAdjR8HwNPJaFGzFGZV4/2fYk/Hvz28t
	NXHXMZdSrmNnQgRzjrl40zAwzY/vCakjyel6o2J6abpgB6rVjRtilI5DWAluYVjB0pA8
	+FGcU3mipvjoMNnQYK8e3McrpGmuDoaIet1yysYH3i7I8FSIkR3gBGm3u3P/77DcVbA2
	8LMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hg0dERVD18r7rJngF96Ze+WmaCDHsi1YJ6VYNBQJD3I=;
	b=iUoAwngDD2FF7BCAb1TwUb6LU6bkYkQfgO01mNbDbu37BbPhsvwl6A57xFy6Zb2xdn
	7zC0PJrpYvg0trQeOW+4jVc4WMZOhsE7NScKZ0AlBfRCpMbBW0WvV6/g6noE0+3K+6zY
	/fDBZrxPrwWy0+2GGnPJyb+B862YYGq6t+Uyv3pnVXcMel5CV9kY2ly2ILfcjncD6xya
	DcQVWlMrepW80qDGU+WJflQdHKUcvIiAwcI9nhUvRbmWI727O0aJ+FHuDk4KSNu0Bpcw
	xQfMWUuk15BnUq8Bawh+sHrf/Xs3j1yJxYbhyH/2JG5PchCcw997R8Q55fhElRQkdBoz
	zr4w==
X-Gm-Message-State: AE9vXwNMvTB/78Utyx1YREB8JBjgWDMC3wTCdVhaoPPet8cpvYWTi/H/mRfLerCsoNwj7AplSzVid5vxoNEXmw==
X-Received: by 10.25.20.228 with SMTP id 97mr8888944lfu.102.1474472317186;
	Wed, 21 Sep 2016 08:38:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.3.207 with HTTP; Wed, 21 Sep 2016 08:38:36 -0700 (PDT)
In-Reply-To: <8cfd94f9-00a0-7c26-a7d9-8e84c53cf8b3@basalte.be>
References: <8cfd94f9-00a0-7c26-a7d9-8e84c53cf8b3@basalte.be>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Wed, 21 Sep 2016 16:38:36 +0100
Message-ID: <CABatt_x8SLb_ycnwqhQHboCbfgP6S0n0wHrfEvvEvKf4UjLf-Q@mail.gmail.com>
To: Jonathan Vervaeke <jonathan.vervaeke@basalte.be>
Cc: yocto@yoctoproject.org
Subject: Re: FrameBuffer support
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
X-List-Received-Date: Wed, 21 Sep 2016 15:38:42 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jonathan,

On Mon, Sep 19, 2016 at 11:01 AM, Jonathan Vervaeke
<jonathan.vervaeke@basalte.be> wrote:
> Hi,
>
>
>
> I'm trying to make framebuffers work on imx6(ul) using yocto.
>
>
>
> I suppose I need to make changes in the following:
>
> 1) Kernel modules
>
> 2) Device tree
>
> 3) U-Boot bootargs
>
>
>
> I've build my kernel with the following modules
>
>
> ********************************************
>
> FB_TFT=y
>
> CONFIG_FB_TFT_ILI9325=m
>
> ********************************************
>
>
> I added the following to the device tree
>
>
>
> ********************************************
>
> / {
>      itdb28 {
>         compatible = "ilitek,ili9325";
>         status = "okay";
>
>         rotate = <0>;
>         bgr;
>         buswidth = <8>;
>         reset-gpios = <&gpio3 23 0>;
>         dc-gpios = <&gpio3  5 0>;
>         cs-gpios = <&gpio3  1 0>;
>         wr-gpios = <&gpio3  0 0>;
>         db-gpios = <&gpio3  7 0>,
>                <&gpio3  8 0>,
>                <&gpio3  9 0>,
>                <&gpio3 10 0>,
>                <&gpio3 11 0>,
>                <&gpio3 15 0>,
>                <&gpio3 16 0>,
>                <&gpio3 17 0>;
>         /* LED pin drives backlight directly. Use transistor (50mA) */
>         /* led-gpios = <&gpio 4 1>; */
>         debug = <7>;
>     };
>
>
>     framebuffer {
>         compatible = "simple-framebuffer";
>         reg = <0x1d385000 (240 * 320 * 2)>;
>         width = <240>;
>         height = <320>;
>         stride = <(240 * 2)>;
>         format = "r5g6b5";
>     };
> };
>
> ********************************************
>
>
> When I boot, I get the following error:
>
>
>
> ********************************************
>
> Error opening /dev/fb0: No such file or directory
>
> ********************************************
>
>
> Did I forget something or is there a decent manual available?
>
> Thanks!
>
> Jonathan.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Looks to me like the driver hasn't loaded due to error or maybe
compatible string mismatch.  Have you included the simple framebuffer
in the kernel configuration?  Is there anything in dmesg?

Cheers, Martin.

