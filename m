Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06141E009F4; Thu, 10 May 2018 06:47:17 -0700 (PDT)
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
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88F01E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 06:47:15 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id z142-v6so3071443lff.5
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 06:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ju6ex+fBnf/kOZ94aOreaqEy1s0QhVYT7yFuZ1d8sqM=;
	b=hvem5L8znpZin4L5nLvwipMvWgiT+W2RldWW6nmasT4sstMTBJI7JLWfUlryg3FqIc
	5q0qd3fL6GU1421iBXwAAjPD36kWu5hwMQwFasdUxYJy7zY2DXBfFU710hpClGVX9JWZ
	WXNL2CTGmj4Ge7WKDWCgDqbL6yLOuwlFb70awhJ6t+amCWt5rj9HGVpnRmD1tf/OIwKs
	PnpgQmVdgInlevCR1tSgMwh1n6vzqFvDkj8G4a6Rmvg8H++LEhER1enHCb0hwKIhnG6N
	+xojFnKtoaW4LNIu/o0Shv8UOGw71JDBrR55SsETzHMT47FoOL0KSzF/iUk54DAmTMoy
	SosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ju6ex+fBnf/kOZ94aOreaqEy1s0QhVYT7yFuZ1d8sqM=;
	b=e57OByWXkpQ+aunp2jIOJSnRpoAKa/ea56QEJO2uEFJH9iyr71Hk7qbg8yS668aSNe
	1gZQ4T2IoOhpWdSBeTF6wX02GNvHy3dVTWf0PYqiDngSOIV4ChP3CeKP8wxbwfyI82x/
	+oaq5gucUyb6q75SbIj6U+khd924lPsr31F5FW2Wh8WqwVcnec4aZFgsbBtDnGUyapnD
	sErTopMeMn4o2hpCWrV+4b2T8PnD+GIuZPzcfMGgR7cr2mE8oVsLBNAcVSJ1pKSdtY6i
	GTIlZ9hPuQn9AyBWELpVPhZEhq/JJqKLOm+2Wh3bwApt6FHvFIIttjLcegnAOr6e5ff1
	Ob1A==
X-Gm-Message-State: ALKqPwe7T5Akt2XS7Y+H3Gr08gnWCQN9dLpRnQvFItJuAOMlsP0zyidZ
	EJ/wLLW3VidUntPiEX+3zLTKj2EkyHgEyiUlnsjZtw==
X-Google-Smtp-Source: AB8JxZo4Chzri0fOFYzkYRU8wZ1sQ5NTvUAMyhYrOkVq+0LKrm876mhV3fmG/RE1Wz6RV8HNV1zl5bt8/mEA4dvOLVY=
X-Received: by 2002:a19:1303:: with SMTP id
	j3-v6mr1021196lfi.107.1525960034061; 
	Thu, 10 May 2018 06:47:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:4a95:0:0:0:0:0 with HTTP; Thu, 10 May 2018 06:47:13
	-0700 (PDT)
In-Reply-To: <CALmqtKYAaFFgaYencB_wM-+Mm+=Or1ts=0eHt0_PHnCJcecMCA@mail.gmail.com>
References: <CALmqtKYKV1WBH8yO2mOkLVGzPOX4amGt_DthGSF8FwT=HkEBbA@mail.gmail.com>
	<CABatt_xEU55GqY8d9TtT8CdHdTeN_i9JO4H9Dw9D-ZaNZwQUsA@mail.gmail.com>
	<CALmqtKanTeT72ZgoLTnHX44vAFm2=ybLeRET5cv=Myb+03t+4A@mail.gmail.com>
	<CABatt_zpNOS1HsMi9hejaUe4_4iaB=Kay1NBgyOV=wQ3jxCtiw@mail.gmail.com>
	<CALmqtKYAaFFgaYencB_wM-+Mm+=Or1ts=0eHt0_PHnCJcecMCA@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Thu, 10 May 2018 14:47:13 +0100
Message-ID: <CABatt_yfjC6ewfzdLiAo7m=2Qo28Q+Wy3H5cx7RZEuAxePT2rw@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 May 2018 13:47:17 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Enrico,

Then I would use a tar.gz image type and then extract that onto the
formatted partition of the SD card or if the partition is ext then I
think you can generate an image type for this.

There is also wic for generating partitioned images, I've not used it
so can't really comment on it but is described in the Yocto manual.

-Martin

On Thu, May 10, 2018 at 7:14 AM, Enrico Bonomi
<enrico.bonomi92@gmail.com> wrote:
> Hi Martin,
>
> I know that i can create multiple images types, but i don't want an sdcard
> bootable image. On my first try, the image on sdcard was ubi type because i
> want to obtain i kind of recovery partition directly on the sdcard. Do you
> suggest to put the recovery partition directly on the raw NAND? in that case
> how could i create a compressed image (because i don't have enough space on
> my device to keep 2 images)?
>
> thanks
>
> Enrico
>
> 2018-05-09 12:37 GMT+02:00 Martin Townsend <mtownsend1973@gmail.com>:
>>
>> On Wed, May 9, 2018 at 11:21 AM, Enrico Bonomi
>> <enrico.bonomi92@gmail.com> wrote:
>> > Hi Martin,
>> >
>> > I'm newbie in yocto, but i used IMAGE_FSTYPES ="sdcard" to boot the
>> > system
>> > from SD card. What i want to obtain is to replace the broken file system
>> > that is located on the NAND with another one that works. A kind of
>> > recovery
>> > partition. is it possible from SD or should i create a recovery
>> > partition
>> > over the NAND?
>> >
>> > thanks
>> >
>> > Enrico
>> >
>> > 2018-05-09 11:25 GMT+02:00 Martin Townsend <mtownsend1973@gmail.com>:
>> >>
>> >> Hi Enrico,
>> >>
>> >> UBI is only designed to work on raw NAND using the MTD subsystem.  MMC
>> >> will be a standard block device as the SD card will have Flash
>> >> Translation layer. See the excellent MTD website for more info
>> >> http://www.linux-mtd.infradead.org/doc/ubi.html
>> >>
>> >> In Yocto I believe you can use "sdcard" in the IMAGE_FSTYPES for a
>> >> flashable image for SD cards that can be used with U-Boot.
>> >>
>> >> -Martin.
>> >>
>> >>
>> >> On Wed, May 9, 2018 at 9:31 AM, Enrico Bonomi
>> >> <enrico.bonomi92@gmail.com>
>> >> wrote:
>> >> > Hi,
>> >> >
>> >> > I work with Yocto Poky 1.7.3 on an imx6 dual lite SOM. I recently
>> >> > came
>> >> > across a problem with a preexisting system. Infact in a couple of
>> >> > cases,
>> >> > after about one year of work with no problems, file system results
>> >> > corrupted
>> >> > and the machine can't work. So i decide to implement a recovery
>> >> > system
>> >> > that
>> >> > can intervene in theese cases. An sd card is mounted on my board, so
>> >> > i
>> >> > think
>> >> > that i can use it to act this process. Using gparted i create a
>> >> > partition on
>> >> > sd card that can store my recovery file system.
>> >> > This partition starts at block 1581056 (so 0x00182000), every block
>> >> > has
>> >> > a
>> >> > size of 512 bytes and the file system size is 370262016 bytes (so
>> >> > 0x1611c000) that are 723168 blocks (so 0x000b08e0).
>> >> > In the u-boot i do the following instructions:
>> >> >
>> >> > nand erase.part rootfs
>> >> > ubi part rootfs
>> >> > ubi create rootfs
>> >> > mmc dev 0
>> >> > mmc read 12000000 0x00182000  0x000b08e0
>> >> > ubi write 12000000 rootfs 0x1611c000
>> >> > ubifsmount ubi0:rootfs
>> >> >
>> >> > and this instruction results in the following errors:
>> >> >
>> >> > UBIFS error (pid 0): ubifs_read_node: bad node type (0 but expected
>> >> > 6)
>> >> > UBIFS error (pid 0): ubifs_read_node: bad node at LEB 0:0
>> >> > UBIFS error (pid 0): ubifs_mount: Error reading superblock on volume
>> >> > 'ubi0:rootfs' errno=-22!
>> >> >
>> >> > ubifsmount - mount UBIFS volume
>> >> >
>> >> > Usage:
>> >> > ubifsmount <volume-name>
>> >> >    - mount 'volume-name' volume
>> >> >
>> >> > the strange thing is that when i first program all new devices i use
>> >> > the
>> >> > following instruction:
>> >> >
>> >> > tftpboot prall
>> >> >
>> >> > and prall is the compiled of a txt file which, when programming file
>> >> > system
>> >> > use the same instructions, obviously except for
>> >> >
>> >> > tftp 12000000 rootfs.ubifs
>> >> >
>> >> > instead of my mmc instructions, and
>> >> >
>> >> > ubi write 12000000 rootfs ${filesize}
>> >> >
>> >> > but from what i understand the "filesize" variable is set from the
>> >> > tftp
>> >> > instruction
>> >> >
>> >> > Where do i fail?
>> >> >
>> >> > Thanks
>> >> >
>> >> > Enrico
>> >> >
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >
>> >
>> >
>>
>> You forgot to reply to all so added the Yocto mailing list back in again.
>>
>> You can create multiple images by specifying ubi and sdcard in
>> IMAGE_FSTYPES and then flash ubi to the raw NAND and then the sdcard
>> image to the SD then write the logic to perform the switch.
>>
>> -Martin.
>
>

