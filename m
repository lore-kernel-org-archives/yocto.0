Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF89BE00D1C; Wed,  9 May 2018 02:25:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31FEAE00CBC
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 02:25:08 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id g12-v6so49945891lfb.10
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 02:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WiVvV7/x2wUt9G4YNPFBtyARAoN+YeLxQExsDhHkJyk=;
	b=ZxA6WXp3NgS1RsqXfV5kZHPbxNUjSo3P2ba7VLKORbdf9YHwkGkheT2/GpN31J7ZLP
	YY1XsFi1HR3plrKx3b2BICIRyDbvvUjkuXCcwC0SfCQ3sDMVJ2h1UauikpfFqODpDbYG
	KJRgS2kp2BmCXirDDfHaRY6h31n+uYzPY/oMAOEaL1P/k49yAUEGlfHnowy81fSxeUe0
	rR15tXoLPxgN7EU7VhYT7s6vv5dIpc+LydfLzbusDe4lmy2Yh0Ge4rRqWKDTtGyEHeH3
	nxx4e25uqH6OtdTqxtdSvhW7wHzgVVNDxmESuXU8j5ISFtmKpqiyu0XYc5nOTW90Fewz
	+DLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WiVvV7/x2wUt9G4YNPFBtyARAoN+YeLxQExsDhHkJyk=;
	b=HqECL/e6jAM4YvyAaGjxlctLa8Cil85hGWRqAQKDEb7n5cSc6pyMZs3Vjt9FquZUJP
	5m2UBtVmyXKV122n7iWxrlsWwQbsUlbXcfJjtuDbZk/ehVOTWQqI5nZKcRKvy0J4ipy0
	EQy7kZK9t0yjjQCYMrTc0h2FSUGOfLxvLdpPxeD6+awHGqgU2XvG29pV78EqNEmDMpG9
	hYep1VXFexWojl6X2kBfl9K7IKXpelBHES6Knp9YceKV8qh/4KBlhWupKCZWTT7FR686
	yqPKR6MlmxkEbirCJ9CRNVHaDd5gTNq/tGFshBg6ttpw1OkqwMqEd3ARzalEDM/4kWDh
	nZBQ==
X-Gm-Message-State: ALQs6tBBVRt20crQYADq1ax8HWoqzcnVZB7NIpAFoiJFYhjeBoQJAK93
	kVejmNKiKcssUmw9KlZ7MnloDlnjIHw+H/5MNEI=
X-Google-Smtp-Source: AB8JxZq2wlOqFY/m8l8juUmck4bOM+b8q0QhyHCHHos6v4TAJJucv4Q2i1ryCyO55HfJMfIJXlyZELg3FnvsO6FLo/Y=
X-Received: by 2002:a2e:9c90:: with SMTP id
	x16-v6mr26941413lji.13.1525857907626; 
	Wed, 09 May 2018 02:25:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:4a95:0:0:0:0:0 with HTTP;
	Wed, 9 May 2018 02:25:06 -0700 (PDT)
In-Reply-To: <CALmqtKYKV1WBH8yO2mOkLVGzPOX4amGt_DthGSF8FwT=HkEBbA@mail.gmail.com>
References: <CALmqtKYKV1WBH8yO2mOkLVGzPOX4amGt_DthGSF8FwT=HkEBbA@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Wed, 9 May 2018 10:25:06 +0100
Message-ID: <CABatt_xEU55GqY8d9TtT8CdHdTeN_i9JO4H9Dw9D-ZaNZwQUsA@mail.gmail.com>
To: Enrico Bonomi <enrico.bonomi92@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: System recovery
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
X-List-Received-Date: Wed, 09 May 2018 09:25:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Enrico,

UBI is only designed to work on raw NAND using the MTD subsystem.  MMC
will be a standard block device as the SD card will have Flash
Translation layer. See the excellent MTD website for more info
http://www.linux-mtd.infradead.org/doc/ubi.html

In Yocto I believe you can use "sdcard" in the IMAGE_FSTYPES for a
flashable image for SD cards that can be used with U-Boot.

-Martin.


On Wed, May 9, 2018 at 9:31 AM, Enrico Bonomi <enrico.bonomi92@gmail.com> wrote:
> Hi,
>
> I work with Yocto Poky 1.7.3 on an imx6 dual lite SOM. I recently came
> across a problem with a preexisting system. Infact in a couple of cases,
> after about one year of work with no problems, file system results corrupted
> and the machine can't work. So i decide to implement a recovery system that
> can intervene in theese cases. An sd card is mounted on my board, so i think
> that i can use it to act this process. Using gparted i create a partition on
> sd card that can store my recovery file system.
> This partition starts at block 1581056 (so 0x00182000), every block has a
> size of 512 bytes and the file system size is 370262016 bytes (so
> 0x1611c000) that are 723168 blocks (so 0x000b08e0).
> In the u-boot i do the following instructions:
>
> nand erase.part rootfs
> ubi part rootfs
> ubi create rootfs
> mmc dev 0
> mmc read 12000000 0x00182000  0x000b08e0
> ubi write 12000000 rootfs 0x1611c000
> ubifsmount ubi0:rootfs
>
> and this instruction results in the following errors:
>
> UBIFS error (pid 0): ubifs_read_node: bad node type (0 but expected 6)
> UBIFS error (pid 0): ubifs_read_node: bad node at LEB 0:0
> UBIFS error (pid 0): ubifs_mount: Error reading superblock on volume
> 'ubi0:rootfs' errno=-22!
>
> ubifsmount - mount UBIFS volume
>
> Usage:
> ubifsmount <volume-name>
>    - mount 'volume-name' volume
>
> the strange thing is that when i first program all new devices i use the
> following instruction:
>
> tftpboot prall
>
> and prall is the compiled of a txt file which, when programming file system
> use the same instructions, obviously except for
>
> tftp 12000000 rootfs.ubifs
>
> instead of my mmc instructions, and
>
> ubi write 12000000 rootfs ${filesize}
>
> but from what i understand the "filesize" variable is set from the tftp
> instruction
>
> Where do i fail?
>
> Thanks
>
> Enrico
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

