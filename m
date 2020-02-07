Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4322.1581080479885802614
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 05:01:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=biJM5pU/;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85FDCE016DB; Fri,  7 Feb 2020 05:01:19 -0800 (PST)
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
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C470EE016D9;
	Fri,  7 Feb 2020 05:01:18 -0800 (PST)
Received: by mail-il1-f194.google.com with SMTP id p8so1587309iln.12;
        Fri, 07 Feb 2020 05:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=4IDpUr8/lBjGDlP6vwyVyMKxwYxAKScLaCcjW3wnWfA=;
        b=biJM5pU/mOOpdic+lsjJl9Fn0v5FjdQZFF+FXHhrc1UuDAW15prA8UMWmaUluq4DB1
         NSIPM2qFURuFTiRk0KkL0vygXJ+RaIbmXDWnWG5s9uPl0kxlicOydTQI9FHk+poC+h3D
         7xGcO7ncGEoaViaTKi4869MUmr++TyBohmRfc5G1l94F5x+ujcP4wrNKGBbGD1R85Na0
         JC4HV9wNSYlz4irdwnhyHfvkIwgJSIjzmXEGC6oOZEl3qK7LjYzYELLVG3YEnDRSuzNy
         2GH3Gp4STZFJZIt0hwX1beiTVaCyMh9BeQnVsOHRmT60RIFii5sdh5QJS3jHFvHDxLrg
         CsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=4IDpUr8/lBjGDlP6vwyVyMKxwYxAKScLaCcjW3wnWfA=;
        b=uimMOVKRlmEvx2CbVWXFQk+bUaiVwQZ+jVZKpGl1hS/CXofBEtqKXk1e/f1tdCk9Wo
         +WX2wQ1Krn6oUaMYZ7y7slDPG811bQ7LJADyxrbhabIZT4vx9DaFkMjmF+hvrocRqDN2
         HIh69Mnif7Z2ev1Q96FxWOadYLwTqYhonsquCsnyUl7pxDPgeusU5aWTNDw2UcuX63r1
         2aajVOpnL98bggPWHHItW0LGIEl+cbFvoJuc+OwoAzUaVNtXY1tSV4yHeMX8T3hkheot
         W/O9aAwSufK+qAzMxKO1dV5GXc7QlfF8ee4h9YOYaLvDgQhWabMt3D4diLBdjh4Co8Hq
         y47Q==
X-Gm-Message-State: APjAAAUuspztFL721tfXbPMiukMl0hpjRuNJZ6OPm0yDDGV/EpQl7Ewk
	mJ2ieHyb66D49QjCJz+iRx21EJt6d2qGjbX8Bf4aJN0Ykyk=
X-Google-Smtp-Source: APXvYqwNIDHbSYPG5aN+ILU7k3NPOWD84Bm0vb30th4pSY8J48Xu8j7mMYm75hpXiKjGlyQcVs2oVHlK8t3IPQTDHnU=
X-Received: by 2002:a92:5855:: with SMTP id m82mr9072837ilb.302.1581080478082;
 Fri, 07 Feb 2020 05:01:18 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Fri, 7 Feb 2020 05:01:17 -0800 (PST)
In-Reply-To: <20200207115521.i7flzwf6e24obq5r@qschulz>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <em86bbcd60-f004-4acb-b508-4471dac5c7c1@andys-imac.leeshillfarm.local>
 <CAA=hcWQsP1N58iqrxEggZBdSksgHk+gfuG7yz0+C3G7o0=DzOw@mail.gmail.com>
 <c159fe1d7cc14f5c80878fe81a957bb4@tagmaster.com> <CAA=hcWQPrfb3UrYsfyhs4as8wGDf5DsyEtF=cgCo4gJprx=b1Q@mail.gmail.com>
 <20200207115521.i7flzwf6e24obq5r@qschulz>
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 8 Feb 2020 00:01:17 +1100
Message-ID: <CAA=hcWR8F_jP5mascw02RnLRi2NkAb2juFhNmEoaeuY5G74HFw@mail.gmail.com>
Subject: Re: [OE-core] [yocto] Support UBI u-boot
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Pelle Windestam <Pelle.Windestam@tagmaster.com>, 
	Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, linux-mtd <linux-mtd@lists.infradead.org>, 
	Andy Pont <andy.pont@sdcsystems.com>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi Quentin,

Thanks for your response, so glad you help me here again :-).

On 2/7/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
>> /build/Installer/sa_platform_build/Source/Yocto/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2017.03-r0/git/cmd/ubi.c:448:
>> undefined reference to `mtdparts_init'
>
> This function is not defined. So you look it up in the sources, find
> where it's defined.

That is a function call in cmd/ubi.c:

int ubi_detach(void)
{
    if (mtdparts_init() != 0) {
        printf("Error initializing mtdparts!\n");
        return 1;
    }
.....

That function is in cmd/mtdparts.c:
int mtdparts_init(void) {
.......
}

It is in the same source directory, I'll have to look it deep, why it
does not compile cmd/mtdparts.c?


> Is it in a file which is compiled/included somewhere?
> Is it surrounded by #ifdef? And by surrounded, I mean the #ifdef can
> be several thousands of lines above the function definition.

Actually, there is no macros to surround that function.


> In that case, I couldn't find the sources of u-boot-imx (didn't take the
> time) but from upstream:
> https://elixir.bootlin.com/u-boot/v2017.03/source/cmd/nand.c#L35

The meta-freescale downloaded the u-boot source from
https://source.codeaurora.org/external/imx/uboot-imx.git

> It's surrounded by #if defined(CONFIG_CMD_MTDPARTS) so you need
> CMD_MTDPARTS to be enabled. Do the same for all the other calls. There's
> no magic thing, you thus have to look it up yourself most of the time.
> Even though arguably, that's a mistake from upstream (there should be a
> dependency on MTDPARTS in Kconfig, anyway...).

You are right, the CONFIG_CMD_MTDPARTS is defined in many defconfig
except it is not in my mx6ull_14x14_evk_defconfig, there are lots of
definitions are defined in other defconfig, but missing in
mx6ull_14x14_evk_defconfig. When I run make menuconfig, I enabled all
MTD, NAND and UBI parts except UBI Fastmap (Experimental feature) in
menuconfig, but I still could not find CONFIG_CMD_MTDPARTS and other
definitions. Need to look it carefully.

I suspect that to run make menuconfig might not be right command, I
tried bitbake -c menuconfig u-boot:

ERROR: Task do_menuconfig does not exist for target u-boot
(./meta-freescale/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:do_menuconfig).
Close matches:
  do_configure

To run kernel menuconfig, I can add KERNEL_CONFIG_COMMAND =
"oe_runmake_call -C ${S} O=${B} imx_v6_v7_defconfig" to a bbappend
file to run bitbake -c menuconfig kernel. Is there an equivelent
UBOOT_CONFIG_COMMAND to run oe_runmake?

Thank you.

- jh
