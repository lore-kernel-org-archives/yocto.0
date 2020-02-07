Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.308.1581049981832419361
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 20:33:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lnL57Jz/;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C552E015E0; Thu,  6 Feb 2020 20:33:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3377E0049C;
	Thu,  6 Feb 2020 20:33:00 -0800 (PST)
Received: by mail-il1-f170.google.com with SMTP id s18so629067iln.0;
        Thu, 06 Feb 2020 20:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CVFNM2T8EOrhg8m1g3h9jAd0Z4JF6n38tH/XAbj1Tm4=;
        b=lnL57Jz/TPx9kviAsgWrLjuo2xWYPCOy9UZJDjpyxsEGzGBTFXhE1P4z0jBOJZRmnF
         tlBCZK4AX5KzJAdFVmnmnYFtd4WSSI8HDp62Tid5ACm8aGGpYZ7G3tP5mH/ZPZrjRSAR
         5UCo0NDtleJ3PVHLAlfMSdGwaLVCcPHsyoY9HR3qTUNT1IrtKSPTBIsYj8jejHu+Ywoe
         8yKXEpgoMj84jZOjkaYX43l1TU5YymEetwhZkkLVbIUteH2Ifm9Rweth+szIMiwxtYs6
         lnbPS5VWghDBovKDBVaJsizuiJJiDxZ9VDS1DG/VZr3AHFtLygzylnnUs+ZraOnwOF5N
         eU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CVFNM2T8EOrhg8m1g3h9jAd0Z4JF6n38tH/XAbj1Tm4=;
        b=AwkNO/BRnYjiYViqd6RlGYYamugvxPOX3GBEfRwIfwEjEStVQowv1vDsTDElRttfff
         Ns4Y8CyCFppM2KCOcx7l67x+ykA2EmYLkGFfsh2rAFXGsrZSDShTlY+bwNljW0jV/HGP
         96cnnBbTl2lyylcdXyRjEppu7UoU+3l1fzgQSm77hayDPfCK/5ug9cqoH7F+9KUMWLDL
         39cIyICoF0LWv+p5BiNOYqoxXc1zCFZg7m1vsQOT50Z//dlM6yVH6DHnTIHYL5SBx462
         ib48m1jWD1M4PvvbDt1aLkuq61FS1ur6Cy6CH6y0ewFIENBB1Enab6aO6l/mnv/6BUc4
         CAXg==
X-Gm-Message-State: APjAAAU1IH4zgJdSod/nT1LKQLRsNJgcQgPN9noMemYDTLW+vNUL+ehm
	lHqFdObLkbblCbKUND5474gIuFtWmqScgIys510=
X-Google-Smtp-Source: APXvYqyUVE5gawB7gYhjEz7LbX24FAQm4xZ+1nTSGwHPGIOLYUprsbJXK/Q6O3PuQD3yQPB4li1E/KEdxsdiXLnbFuE=
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr7903281ilq.192.1581049979827;
 Thu, 06 Feb 2020 20:32:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Thu, 6 Feb 2020 20:32:59 -0800 (PST)
In-Reply-To: <em86bbcd60-f004-4acb-b508-4471dac5c7c1@andys-imac.leeshillfarm.local>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <em86bbcd60-f004-4acb-b508-4471dac5c7c1@andys-imac.leeshillfarm.local>
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 7 Feb 2020 15:32:59 +1100
Message-ID: <CAA=hcWQsP1N58iqrxEggZBdSksgHk+gfuG7yz0+C3G7o0=DzOw@mail.gmail.com>
Subject: Re: Support UBI u-boot
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy,

On 2/6/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
> JH wrote...
>
>
>>I added NAND and UBIFS support to my Yocto layer machine config file:
>>
>>UBOOT_CONFIG =3D "nand"
>>UBOOT_CONFIG[nand] +=3D "mx6ull_14x14_evk_config"
>>UBOOT_CONFIG[nand] +=3D "mx6ull_14x14_evk_nand_config"
>>UBOOT_CONFIG[nand] +=3D "ubi"
>>UBOOT_CONFIG[nand] +=3D "ubifs"
>>
>>But my u-boot.imx-nand still could not support ubi:
>>
>>=3D> ubi part rootfs
>>Unknown command 'ubi' - try =E2=80=98help=E2=80=99
> You need to start to read through the various sources to figure out for
> yourself what is going on!
>
> Starting from the bottom, in U-Boot 2017.03 all of the command sources
> are in the =E2=80=9Ccmd=E2=80=9D directory. The =E2=80=9Cubi =E2=80=A6=E2=
=80=9D command are all in ubi.c.
> Reading cmd/Makefile shows that file gets added into the build if
> CONFIG_CMD_UBI is enabled.

You are right, that CONFIG_CMD_UBI is not enabled, but I could not
find any conf or bb files I could change or enable CONFIG_CMD_UBI in
meta-freescale layer.

Desperately, I hacked to run "make menuconfig" at U-Boot 2017.03 build
directory, selected and enabled CONFIG_CMD_UBI and saved to .config
file in that build directory, but then to run bitbake to build u-boot
again, the .config was removed and replaced by an old one disabled
CONFIG_CMD_UBI again.

Other people recommended to build u-boot in a standalone environment
out of OE / Yocto build system. Since I have set up everything in OE /
Yocto environment, I thought it could be easier if I could modify one
line of u-boot config file in a recipe.

Any idea where is the recipe in meta-freescale to allow me to change /
enable CONFIG_CMD_UBI?

Am I the only one unable to change u-boot config file in OE / Yoctu
build? That makes me very sad :-(.


> The next place to look is whether or not that is set in your defconfig
> for U-Boot or overwritten somewhere in a recipe in your Yocto build
> environment.

Yeah, I'll been searched all day, could not find a recipe Yocto build
environment, I was told OE / Yocto does not have that stack and
mechanism to set and change u-boot config, is it true?

Thank you very much.

Kind regards,

- jh
