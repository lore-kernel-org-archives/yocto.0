Return-Path: <enrico.bonomi92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0F8DE00DFE; Wed,  9 May 2018 23:15:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (enrico.bonomi92[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 760CAE00D1C
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 23:14:58 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id q4-v6so1839025ite.3
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 23:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=V2MC23vakY+gTbDYxpbQWXmNwJJ4/AznFaKu0MUl9D4=;
	b=vAowpUgD7NKKhyAp3vP8qMlqNylJHXxQC1PvOLiX+7NfcDLha7xOHUXOct1JuZVxfT
	QKoG4sdUOXH0SCB3/gltedW5GnmHhbmRHAEFgymuh15M/W/5ecnFMDEpfYHiuTFv4Jiu
	UmqSFI+Am8T1FYGNbj0hM8+mx/iGVevrGjEgpxaQbS3ZVs0w5qJAU157/HFzAG+4in8P
	b3T5M5uCXP1kwn9TzJUBc0dtmT17lexKbZWkz0XiMAP50IEoCm82sb1GkWzc+dZhEoPf
	xtymPVTBsExKP3+zmOj6z/9N7pQy87goe8qbEpzaHrOukIa7UG0l5VrZzBvZDRnWDMeT
	QyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=V2MC23vakY+gTbDYxpbQWXmNwJJ4/AznFaKu0MUl9D4=;
	b=VGrj4JcP8Eg83O/jzk9OZwOC6k+fmeodU3n5muJtCHxLJj11xD+Lq4On23yhfyq5Ui
	N7WbaoG5m+/C2h7Cn5QT2mNn6jnV0j7EXUgriwK6BLEr7blDAl0qeMyXjmUONdO10WY0
	zygxY4XqvO/qWvDDd16NpvOwKAujC01LiZPqRTx4qcugrApARVfSOXMxJVRuyBF1MrTp
	Jju1GQVMgMHQL1nzbVSbKlh1ePS6psm05pFzPA0IyK8DvCKegVLHlP2/72uC5NhF5JIf
	4DApS2TsIatxryh2EpROrI56cb8Uy4KOzNJ9DG5wGpAd59Arj1FyesyHNR+y5n0uodls
	fP/w==
X-Gm-Message-State: ALKqPwc3niTxw7lm0wb3HZdIkYJ3ZOs8YeL5SgfZR9+dtRyHpZcltSAO
	bLjp0qniZBw1s/jykGnOkfvpIXLuvQiRYVsPawc=
X-Google-Smtp-Source: AB8JxZpcfu5lnuC47JLgINBznDbID8BYKwNlRiRmcuVIF4raczedESjIQ87c7FXVxvNmyBjTG+CP/ewON3nbBALMBc4=
X-Received: by 2002:a24:b08:: with SMTP id 8-v6mr479353itd.30.1525932898258;
	Wed, 09 May 2018 23:14:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.4.206 with HTTP; Wed, 9 May 2018 23:14:57 -0700 (PDT)
In-Reply-To: <CABatt_zpNOS1HsMi9hejaUe4_4iaB=Kay1NBgyOV=wQ3jxCtiw@mail.gmail.com>
References: <CALmqtKYKV1WBH8yO2mOkLVGzPOX4amGt_DthGSF8FwT=HkEBbA@mail.gmail.com>
	<CABatt_xEU55GqY8d9TtT8CdHdTeN_i9JO4H9Dw9D-ZaNZwQUsA@mail.gmail.com>
	<CALmqtKanTeT72ZgoLTnHX44vAFm2=ybLeRET5cv=Myb+03t+4A@mail.gmail.com>
	<CABatt_zpNOS1HsMi9hejaUe4_4iaB=Kay1NBgyOV=wQ3jxCtiw@mail.gmail.com>
From: Enrico Bonomi <enrico.bonomi92@gmail.com>
Date: Thu, 10 May 2018 08:14:57 +0200
Message-ID: <CALmqtKYAaFFgaYencB_wM-+Mm+=Or1ts=0eHt0_PHnCJcecMCA@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
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
X-List-Received-Date: Thu, 10 May 2018 06:15:00 -0000
Content-Type: multipart/alternative; boundary="0000000000005a1332056bd3f0e4"

--0000000000005a1332056bd3f0e4
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

I know that i can create multiple images types, but i don't want an sdcard
bootable image. On my first try, the image on sdcard was ubi type because i
want to obtain i kind of recovery partition directly on the sdcard. Do you
suggest to put the recovery partition directly on the raw NAND? in that
case how could i create a compressed image (because i don't have enough
space on my device to keep 2 images)?

thanks

Enrico

2018-05-09 12:37 GMT+02:00 Martin Townsend <mtownsend1973@gmail.com>:

> On Wed, May 9, 2018 at 11:21 AM, Enrico Bonomi
> <enrico.bonomi92@gmail.com> wrote:
> > Hi Martin,
> >
> > I'm newbie in yocto, but i used IMAGE_FSTYPES ="sdcard" to boot the
> system
> > from SD card. What i want to obtain is to replace the broken file system
> > that is located on the NAND with another one that works. A kind of
> recovery
> > partition. is it possible from SD or should i create a recovery partition
> > over the NAND?
> >
> > thanks
> >
> > Enrico
> >
> > 2018-05-09 11:25 GMT+02:00 Martin Townsend <mtownsend1973@gmail.com>:
> >>
> >> Hi Enrico,
> >>
> >> UBI is only designed to work on raw NAND using the MTD subsystem.  MMC
> >> will be a standard block device as the SD card will have Flash
> >> Translation layer. See the excellent MTD website for more info
> >> http://www.linux-mtd.infradead.org/doc/ubi.html
> >>
> >> In Yocto I believe you can use "sdcard" in the IMAGE_FSTYPES for a
> >> flashable image for SD cards that can be used with U-Boot.
> >>
> >> -Martin.
> >>
> >>
> >> On Wed, May 9, 2018 at 9:31 AM, Enrico Bonomi <
> enrico.bonomi92@gmail.com>
> >> wrote:
> >> > Hi,
> >> >
> >> > I work with Yocto Poky 1.7.3 on an imx6 dual lite SOM. I recently came
> >> > across a problem with a preexisting system. Infact in a couple of
> cases,
> >> > after about one year of work with no problems, file system results
> >> > corrupted
> >> > and the machine can't work. So i decide to implement a recovery system
> >> > that
> >> > can intervene in theese cases. An sd card is mounted on my board, so i
> >> > think
> >> > that i can use it to act this process. Using gparted i create a
> >> > partition on
> >> > sd card that can store my recovery file system.
> >> > This partition starts at block 1581056 (so 0x00182000), every block
> has
> >> > a
> >> > size of 512 bytes and the file system size is 370262016 bytes (so
> >> > 0x1611c000) that are 723168 blocks (so 0x000b08e0).
> >> > In the u-boot i do the following instructions:
> >> >
> >> > nand erase.part rootfs
> >> > ubi part rootfs
> >> > ubi create rootfs
> >> > mmc dev 0
> >> > mmc read 12000000 0x00182000  0x000b08e0
> >> > ubi write 12000000 rootfs 0x1611c000
> >> > ubifsmount ubi0:rootfs
> >> >
> >> > and this instruction results in the following errors:
> >> >
> >> > UBIFS error (pid 0): ubifs_read_node: bad node type (0 but expected 6)
> >> > UBIFS error (pid 0): ubifs_read_node: bad node at LEB 0:0
> >> > UBIFS error (pid 0): ubifs_mount: Error reading superblock on volume
> >> > 'ubi0:rootfs' errno=-22!
> >> >
> >> > ubifsmount - mount UBIFS volume
> >> >
> >> > Usage:
> >> > ubifsmount <volume-name>
> >> >    - mount 'volume-name' volume
> >> >
> >> > the strange thing is that when i first program all new devices i use
> the
> >> > following instruction:
> >> >
> >> > tftpboot prall
> >> >
> >> > and prall is the compiled of a txt file which, when programming file
> >> > system
> >> > use the same instructions, obviously except for
> >> >
> >> > tftp 12000000 rootfs.ubifs
> >> >
> >> > instead of my mmc instructions, and
> >> >
> >> > ubi write 12000000 rootfs ${filesize}
> >> >
> >> > but from what i understand the "filesize" variable is set from the
> tftp
> >> > instruction
> >> >
> >> > Where do i fail?
> >> >
> >> > Thanks
> >> >
> >> > Enrico
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
>
> You forgot to reply to all so added the Yocto mailing list back in again.
>
> You can create multiple images by specifying ubi and sdcard in
> IMAGE_FSTYPES and then flash ubi to the raw NAND and then the sdcard
> image to the SD then write the logic to perform the switch.
>
> -Martin.
>

--0000000000005a1332056bd3f0e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>I know that i can create mul=
tiple images types, but i don&#39;t want an sdcard bootable image. On my fi=
rst try, the image on sdcard was ubi type because i want to obtain i kind o=
f recovery partition directly on the sdcard. Do you suggest to put the reco=
very partition directly on the raw NAND? in that case how could i create a =
compressed image (because i don&#39;t have enough space on my device to kee=
p 2 images)?</div><div><br></div><div>thanks</div><div><br></div><div>Enric=
o</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018=
-05-09 12:37 GMT+02:00 Martin Townsend <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:mtownsend1973@gmail.com" target=3D"_blank">mtownsend1973@gmail.com</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On Wed, May 9, 2018 at 11:21 =
AM, Enrico Bonomi<br>
<div><div class=3D"h5">&lt;<a href=3D"mailto:enrico.bonomi92@gmail.com">enr=
ico.bonomi92@gmail.com</a>&gt; wrote:<br>
&gt; Hi Martin,<br>
&gt;<br>
&gt; I&#39;m newbie in yocto, but i used IMAGE_FSTYPES =3D&quot;sdcard&quot=
; to boot the system<br>
&gt; from SD card. What i want to obtain is to replace the broken file syst=
em<br>
&gt; that is located on the NAND with another one that works. A kind of rec=
overy<br>
&gt; partition. is it possible from SD or should i create a recovery partit=
ion<br>
&gt; over the NAND?<br>
&gt;<br>
&gt; thanks<br>
&gt;<br>
&gt; Enrico<br>
&gt;<br>
&gt; 2018-05-09 11:25 GMT+02:00 Martin Townsend &lt;<a href=3D"mailto:mtown=
send1973@gmail.com">mtownsend1973@gmail.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; Hi Enrico,<br>
&gt;&gt;<br>
&gt;&gt; UBI is only designed to work on raw NAND using the MTD subsystem.=
=C2=A0 MMC<br>
&gt;&gt; will be a standard block device as the SD card will have Flash<br>
&gt;&gt; Translation layer. See the excellent MTD website for more info<br>
&gt;&gt; <a href=3D"http://www.linux-mtd.infradead.org/doc/ubi.html" rel=3D=
"noreferrer" target=3D"_blank">http://www.linux-mtd.<wbr>infradead.org/doc/=
ubi.html</a><br>
&gt;&gt;<br>
&gt;&gt; In Yocto I believe you can use &quot;sdcard&quot; in the IMAGE_FST=
YPES for a<br>
&gt;&gt; flashable image for SD cards that can be used with U-Boot.<br>
&gt;&gt;<br>
&gt;&gt; -Martin.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, May 9, 2018 at 9:31 AM, Enrico Bonomi &lt;<a href=3D"mailt=
o:enrico.bonomi92@gmail.com">enrico.bonomi92@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I work with Yocto Poky 1.7.3 on an imx6 dual lite SOM. I rece=
ntly came<br>
&gt;&gt; &gt; across a problem with a preexisting system. Infact in a coupl=
e of cases,<br>
&gt;&gt; &gt; after about one year of work with no problems, file system re=
sults<br>
&gt;&gt; &gt; corrupted<br>
&gt;&gt; &gt; and the machine can&#39;t work. So i decide to implement a re=
covery system<br>
&gt;&gt; &gt; that<br>
&gt;&gt; &gt; can intervene in theese cases. An sd card is mounted on my bo=
ard, so i<br>
&gt;&gt; &gt; think<br>
&gt;&gt; &gt; that i can use it to act this process. Using gparted i create=
 a<br>
&gt;&gt; &gt; partition on<br>
&gt;&gt; &gt; sd card that can store my recovery file system.<br>
&gt;&gt; &gt; This partition starts at block 1581056 (so 0x00182000), every=
 block has<br>
&gt;&gt; &gt; a<br>
&gt;&gt; &gt; size of 512 bytes and the file system size is 370262016 bytes=
 (so<br>
&gt;&gt; &gt; 0x1611c000) that are 723168 blocks (so 0x000b08e0).<br>
&gt;&gt; &gt; In the u-boot i do the following instructions:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; nand erase.part rootfs<br>
&gt;&gt; &gt; ubi part rootfs<br>
&gt;&gt; &gt; ubi create rootfs<br>
&gt;&gt; &gt; mmc dev 0<br>
&gt;&gt; &gt; mmc read 12000000 0x00182000=C2=A0 0x000b08e0<br>
&gt;&gt; &gt; ubi write 12000000 rootfs 0x1611c000<br>
&gt;&gt; &gt; ubifsmount ubi0:rootfs<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; and this instruction results in the following errors:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; UBIFS error (pid 0): ubifs_read_node: bad node type (0 but ex=
pected 6)<br>
&gt;&gt; &gt; UBIFS error (pid 0): ubifs_read_node: bad node at LEB 0:0<br>
&gt;&gt; &gt; UBIFS error (pid 0): ubifs_mount: Error reading superblock on=
 volume<br>
&gt;&gt; &gt; &#39;ubi0:rootfs&#39; errno=3D-22!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ubifsmount - mount UBIFS volume<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Usage:<br>
&gt;&gt; &gt; ubifsmount &lt;volume-name&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 - mount &#39;volume-name&#39; volume<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; the strange thing is that when i first program all new device=
s i use the<br>
&gt;&gt; &gt; following instruction:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; tftpboot prall<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; and prall is the compiled of a txt file which, when programmi=
ng file<br>
&gt;&gt; &gt; system<br>
&gt;&gt; &gt; use the same instructions, obviously except for<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; tftp 12000000 rootfs.ubifs<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; instead of my mmc instructions, and<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ubi write 12000000 rootfs ${filesize}<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; but from what i understand the &quot;filesize&quot; variable =
is set from the tftp<br>
&gt;&gt; &gt; instruction<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Where do i fail?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Enrico<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div>You forgot to reply to all so added the Yocto mailing list back=
 in again.<br>
<br>
You can create multiple images by specifying ubi and sdcard in<br>
IMAGE_FSTYPES and then flash ubi to the raw NAND and then the sdcard<br>
image to the SD then write the logic to perform the switch.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-Martin.<br>
</font></span></blockquote></div><br></div>

--0000000000005a1332056bd3f0e4--
