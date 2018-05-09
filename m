Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29F17E00CEE; Wed,  9 May 2018 03:37:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A74DEE0084D
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 03:37:23 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id m18-v6so50247585lfb.0
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 03:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=I+GppoS4Np1a1XzevHpiEsbJyYS1yEL0gGPoUUb5yYE=;
	b=Z0je1GJKv/Bwn2u6ey46xd3P/il68WbhzPPFtho+2YKeKOFHp2vABWVKfcIo6rptrG
	ulAwEnU1eZ866WGwLwQzwyATfYzxghppK2iM/Gwhsc/cCdAY1kcGEA2rEfU9cwJ2tVg6
	NaHFTl6HV0WoeF7G0y3J0SFATtB5yNKqWhUApLPquWDkOacvRLUAahwOdNJDhjD7+p4/
	7Lct6pqGqZe9/xF2icsVHtX06sUR8WiDzsQrW/WjB2Hy8HVhNbI7UYrGyrDqDMuW7FbR
	W2fEwP4tclWso3zeb9VrcJZT8dNSvEMUwaTUsHprhE+PB/+3NfpWanSbh7KqThazL7Uz
	T7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=I+GppoS4Np1a1XzevHpiEsbJyYS1yEL0gGPoUUb5yYE=;
	b=fbvTDzUx9g3HtAlmln0e0BSUiqIWUvfqXi10m8fpuxBget7MeNaPMhf+5kpj8lvJur
	zKrRntKXvP9P5UAz6typqTNs0LapU+y25R97P18YcO+lNoMhtS5oc7qQ3HDjPD1K2f7R
	XD4x25wYpKk7FF769DlGy7/swsi5lgZEn9Ft4ADSSWK530x9EptdtRe1SiFlx/6YcziR
	NYMhGrvyMvUMX9XXmYWvumNJvkPM8t2uzb/iyVk6HTnLmGSORxQ9BK/4tvzKWfRCFJK3
	sYCHQwF4kIz3J17FIfBZUVgPidvlYrdR5i9wNnr0w+GG/A/4y3MiIDjKxbH9qw4PypoS
	xGjQ==
X-Gm-Message-State: ALQs6tBWMBDNBJr3SnAwz1HS+J60Slg29AJaRpU39deB6nh4oQgAfZXS
	GN2GBtl+s+RVragoEY9Uu36fiae63YSq6mgh5X2AVw==
X-Google-Smtp-Source: AB8JxZodCR25vVe/SsR/VzgW/WNWEsUOdXX84RkWTWeWEpOU7RiRpO5dHeGt+e9aT8ZbgSD5Z7SVRZN0WP21eyoL4Nc=
X-Received: by 2002:a2e:594e:: with SMTP id
	n75-v6mr29317572ljb.139.1525862242490; 
	Wed, 09 May 2018 03:37:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:4a95:0:0:0:0:0 with HTTP;
	Wed, 9 May 2018 03:37:21 -0700 (PDT)
In-Reply-To: <CALmqtKanTeT72ZgoLTnHX44vAFm2=ybLeRET5cv=Myb+03t+4A@mail.gmail.com>
References: <CALmqtKYKV1WBH8yO2mOkLVGzPOX4amGt_DthGSF8FwT=HkEBbA@mail.gmail.com>
	<CABatt_xEU55GqY8d9TtT8CdHdTeN_i9JO4H9Dw9D-ZaNZwQUsA@mail.gmail.com>
	<CALmqtKanTeT72ZgoLTnHX44vAFm2=ybLeRET5cv=Myb+03t+4A@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Wed, 9 May 2018 11:37:21 +0100
Message-ID: <CABatt_zpNOS1HsMi9hejaUe4_4iaB=Kay1NBgyOV=wQ3jxCtiw@mail.gmail.com>
To: Enrico Bonomi <enrico.bonomi92@gmail.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 09 May 2018 10:37:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 9, 2018 at 11:21 AM, Enrico Bonomi
<enrico.bonomi92@gmail.com> wrote:
> Hi Martin,
>
> I'm newbie in yocto, but i used IMAGE_FSTYPES ="sdcard" to boot the system
> from SD card. What i want to obtain is to replace the broken file system
> that is located on the NAND with another one that works. A kind of recovery
> partition. is it possible from SD or should i create a recovery partition
> over the NAND?
>
> thanks
>
> Enrico
>
> 2018-05-09 11:25 GMT+02:00 Martin Townsend <mtownsend1973@gmail.com>:
>>
>> Hi Enrico,
>>
>> UBI is only designed to work on raw NAND using the MTD subsystem.  MMC
>> will be a standard block device as the SD card will have Flash
>> Translation layer. See the excellent MTD website for more info
>> http://www.linux-mtd.infradead.org/doc/ubi.html
>>
>> In Yocto I believe you can use "sdcard" in the IMAGE_FSTYPES for a
>> flashable image for SD cards that can be used with U-Boot.
>>
>> -Martin.
>>
>>
>> On Wed, May 9, 2018 at 9:31 AM, Enrico Bonomi <enrico.bonomi92@gmail.com>
>> wrote:
>> > Hi,
>> >
>> > I work with Yocto Poky 1.7.3 on an imx6 dual lite SOM. I recently came
>> > across a problem with a preexisting system. Infact in a couple of cases,
>> > after about one year of work with no problems, file system results
>> > corrupted
>> > and the machine can't work. So i decide to implement a recovery system
>> > that
>> > can intervene in theese cases. An sd card is mounted on my board, so i
>> > think
>> > that i can use it to act this process. Using gparted i create a
>> > partition on
>> > sd card that can store my recovery file system.
>> > This partition starts at block 1581056 (so 0x00182000), every block has
>> > a
>> > size of 512 bytes and the file system size is 370262016 bytes (so
>> > 0x1611c000) that are 723168 blocks (so 0x000b08e0).
>> > In the u-boot i do the following instructions:
>> >
>> > nand erase.part rootfs
>> > ubi part rootfs
>> > ubi create rootfs
>> > mmc dev 0
>> > mmc read 12000000 0x00182000  0x000b08e0
>> > ubi write 12000000 rootfs 0x1611c000
>> > ubifsmount ubi0:rootfs
>> >
>> > and this instruction results in the following errors:
>> >
>> > UBIFS error (pid 0): ubifs_read_node: bad node type (0 but expected 6)
>> > UBIFS error (pid 0): ubifs_read_node: bad node at LEB 0:0
>> > UBIFS error (pid 0): ubifs_mount: Error reading superblock on volume
>> > 'ubi0:rootfs' errno=-22!
>> >
>> > ubifsmount - mount UBIFS volume
>> >
>> > Usage:
>> > ubifsmount <volume-name>
>> >    - mount 'volume-name' volume
>> >
>> > the strange thing is that when i first program all new devices i use the
>> > following instruction:
>> >
>> > tftpboot prall
>> >
>> > and prall is the compiled of a txt file which, when programming file
>> > system
>> > use the same instructions, obviously except for
>> >
>> > tftp 12000000 rootfs.ubifs
>> >
>> > instead of my mmc instructions, and
>> >
>> > ubi write 12000000 rootfs ${filesize}
>> >
>> > but from what i understand the "filesize" variable is set from the tftp
>> > instruction
>> >
>> > Where do i fail?
>> >
>> > Thanks
>> >
>> > Enrico
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

You forgot to reply to all so added the Yocto mailing list back in again.

You can create multiple images by specifying ubi and sdcard in
IMAGE_FSTYPES and then flash ubi to the raw NAND and then the sdcard
image to the SD then write the logic to perform the switch.

-Martin.

