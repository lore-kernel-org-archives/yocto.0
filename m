Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10133.1580983669746907956
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 02:07:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X5/hQZ9S;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36506E01677; Thu,  6 Feb 2020 02:07:49 -0800 (PST)
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
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39557E015D3;
	Thu,  6 Feb 2020 02:07:47 -0800 (PST)
Received: by mail-il1-f196.google.com with SMTP id o13so4559113ilg.10;
        Thu, 06 Feb 2020 02:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Gd2+JZzFkoKUWklNG5+brRpIOCEiUfz37TbEfjbEb3c=;
        b=X5/hQZ9S91p0CRFvC4ZYNOvYTXhQ1zeExoUMcit+UOhiSGm/4YwC90YxJ/xA1TQzIL
         fOraLzhSvtyLnDaskSxKs7vMiYNAXIXu1tYLV10Go+QwfHBJoP/BRek8/SmowGu/JMWW
         dCsRaS4iG36qg5KW6/h5agMhKdHGJDHHZHunEodWsxZJG8O9crZ0BMibIkFaDYc+5LjQ
         zUE5esSkczCHKQazMzVKFbKqxlhWyuGJJytVAnwIf2HBBo3RzFa436/I+iQU5ytW9+RT
         n9TanYfjHe2dSNnrr1lwqxpxySZ9eIHMqPaGqcMeiDU7mGlKYdImgWL0wdn4c//rhs00
         WMGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Gd2+JZzFkoKUWklNG5+brRpIOCEiUfz37TbEfjbEb3c=;
        b=EEeSI/EzNESLS5CEBahEWWtaelHlh0ygr53+H7MoxL6xnuja35tTbrCJdauAZPnyyq
         UxgiwkGZ/dQqtOxo7EXBT7xXTMWDy8rNWdxCYQdXN1TyMqWDO9G7tuvB9qp1lr2SO0g4
         NFdcRJkZffgaidgnguc/fiT0Nus6ahTI/otCIeddMz/3e6Xfzy9NqBFqa3Qjs0CIELLR
         U1C+Yi02/785L8BaBqaQCp51lJdxmnB83Iy1r1HwPt+ST+T8TUDjPxajBZa78c6vxqae
         nrXWLZgZi0zZB1fgBBbuy4lriWnWLY5vMOknTxrBVFlL76pNJjqe/zpJJQdAy5dmqo84
         dVHQ==
X-Gm-Message-State: APjAAAU0KzMId7FR4WneDuHtZweXFGfMj/VVO7vm0CsLzFPO/cuV1Dzg
	kvwqklRFCu47s3MRIuQjcv88gUKn3nkU1H4qMmI=
X-Google-Smtp-Source: APXvYqx6AVfuHNvGV9iwLVYl53PvfmiWfpvM2kRiZ9JCvzH6xbuEpaognGIAYI6Pl7oXmSPXyKrHKm0ZFO/A8NqYHVc=
X-Received: by 2002:a92:5855:: with SMTP id m82mr2972634ilb.302.1580983666658;
 Thu, 06 Feb 2020 02:07:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Thu, 6 Feb 2020 02:07:46 -0800 (PST)
In-Reply-To: <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 6 Feb 2020 21:07:46 +1100
Message-ID: <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com>
Subject: Re: [yocto] Support UBI u-boot
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"

Thanks Gabriele and Andy,

On 2/6/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Hi JH,
>
> have you tried what we suggested you in your last thread? More specifically
> adding your defconfig and tweaking it through menuconfig. and then specify
> the UBOOT_MACHINE.

Yes, as I posted in another thread, the MTD, UBI are all set in my
Linux kernel defconfig, I have also added UBOOT_CONFIG = "nand" in my
layer machine config.

What I missed is u-boot overlay, as you and Andy alluded. I added
UBOOT_CONFIG[nand] += "mx6ull_14x14_evk_nand_config", but strange
enough, that mx6ull_14x14_evk_nand_config, did not set CONFIG_CMD_UBI
in its config.

I think I need to add an appended recipes-bsp to my layer just like I
added the recipes-kernel to my layer to overwrite kernel defconfig, I
need to overwrite u-boot defconfig.

In kernel, to overwrite defconfig, I run bitbake -c menuconfig
virtual/kernel, how can I generate u-boot defconfig, to run bitbake -c
menuconfig u-boot?

Thank you.

Kind regards,

- jh
