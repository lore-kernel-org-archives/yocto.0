Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8281.1580970898638201195
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 22:34:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUcqclUk;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D3ABE015D3; Wed,  5 Feb 2020 22:34:58 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.52 listed in list.dnswl.org]
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71588E007DA;
	Wed,  5 Feb 2020 22:34:56 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id h8so5099101iob.2;
        Wed, 05 Feb 2020 22:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=1eb2RXCmyTB1S8buyh/wDuPzjOjoOwR3b2p2azWf8rs=;
        b=VUcqclUkf5oApTbSMbGTfUcLIlJLhrucVOgq//WegVNKQ60NL4+huMzvRtefPcVdYV
         QXe2A/4LoID5iOLOX21fH9KIAJEN5+vhaBYGjj6h2DcwcysS1K9p2oKek3Cw9Uf3Lxv2
         oPHtgDhx6Bjyhcg589Cmu5T1ikxg0S3v9S6ERAt+TB+SsxKw9Jkj5Ren/BBgkVWIdPdA
         X7oqsJDZ3fBCriFXPrImlvW5xGxBLTPjSreqN3BIbdP6JxWC8jzgxy6QUlzkJYBlBJtv
         NkGunayn+Mg/9xdXQBrVR5vmtzMG5roaIUDKXNBw4rZ//bXyU6O7g6fYFvChPDV0gzwh
         EVfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=1eb2RXCmyTB1S8buyh/wDuPzjOjoOwR3b2p2azWf8rs=;
        b=kKyZZw+UkB/mI+hzvfiGSK+ly+8DDO0T3W5PcNIzTG3X4yqe8FXgK18N1VqvEd3BwP
         GuyfmmNTSwyKhB1hveFs8DYgdChvqH0ntGhgFgovGW62M+ON/WObmM9F4jOqKMhHA0di
         RX/0j7i6OEm9aiXrbqx0RjPrQy3iY+KnkfFR3rTw1HufAISsr8E2LxMHAPG16PuokQ48
         sigRWvt5VmlznLTU8LBlpSk/uyEl0Bfzqtp4IG1qoylLduwASdhMguxLG2r6n3MSe86X
         obJJYu3HHiqumHbWxZ1ujAG/KVbf6xUb053lkTMZoFeIwLbtTYaA0EIoIjhkkdLVPpyL
         wSkg==
X-Gm-Message-State: APjAAAXpw1qWde5Us1lD7LDJn1TwMfa3Wx2INcaflUIWSy8YO7ctzGDq
	i5pyXRp1bNA5pkLQxi1rtM0yzTb0l9INcY9roFu99hhzukY=
X-Google-Smtp-Source: APXvYqxqyqjFDJAEgGurujDeH26RHpn/CwweVo6OY98Mv6SCwQR6jUskKdB9DDRK9pJmg0T8vjakFrpWgrtWnysZD74=
X-Received: by 2002:a02:6055:: with SMTP id d21mr33814202jaf.21.1580970895556;
 Wed, 05 Feb 2020 22:34:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Wed, 5 Feb 2020 22:34:55 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 6 Feb 2020 17:34:55 +1100
Message-ID: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
Subject: Support UBI u-boot
To: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"

Hi,

Sorry for cross-posting, I have been asking for helping solving the
issue many days ago, but could not get those work.

(1) UBI support

I added NAND and UBIFS support to my Yocto layer machine config file:

UBOOT_CONFIG = "nand"
UBOOT_CONFIG[nand] += "mx6ull_14x14_evk_config"
UBOOT_CONFIG[nand] += "mx6ull_14x14_evk_nand_config"
UBOOT_CONFIG[nand] += "ubi"
UBOOT_CONFIG[nand] += "ubifs"

But my u-boot.imx-nand still could not support ubi:

=> ubi part rootfs
Unknown command 'ubi' - try 'help'

What I could be missing here?


(2) Patch u-boot parameters

I am not clear how you do to change u-boot parameters, it seems to me
I have to create my own u-boot-imx_2017.03.bbappend and patch files to
 mx6ullevk.h, to change u-boot parameters of mtdparts, NAND_ROOT_UBI,
bootcmd, etc based on my configuration.

But Yocto won't allow the patch running unless that the patch is
committed to the git repository in
https://source.codeaurora.org/external/imx/uboot-imx.git.

Ideally, I thought all u-boot parameters can be changed in a bbappend
file, could you advise if it is possible to do that way or not? If so,
how to do it?

If not, what is the policy for making parches and commit to the git
repository https://source.codeaurora.org/external/imx/uboot-imx.git?

Thank you.

Kind regards,

- jh
