Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E65D1E0103C; Sat, 23 Jul 2016 09:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E75E00D08
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 09:07:37 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id q8so10761467qke.3
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 09:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5EaaA9XVaDcBLScTxsRPiClyW3EupALf2Ctb1rKRBMw=;
	b=aLLuPCz3rp6GimbNJbed1Rd6qWejAGh7kyEkwVa9RZuvaqnwG2gZEU4gur+4SXCgpc
	wK0Q7MMiRKbMTLxUQ9gH/YmHVprq1gQwknr+j28B+FT7Yo38pqbdhdbKHb8MwSmyAGrs
	c3KmgdBH9mA80gOyLe/1R3UhKzzE2aTOC7x1Ip4tslevKRSqMP61Nxw5Hrg8X7FnAwkF
	7c9ANPapjos4p7B5JErSxMe9DEpTVVntU3ESZuwQo/Iz2LPYBS81AAFdvAShVzn+A2lO
	riGEmc7xvyLsB+fQWckhBjwhSt4OVK1FuLGFzDnVgNcUepzeFnV8I0VxBfYw4NOiZADX
	XPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5EaaA9XVaDcBLScTxsRPiClyW3EupALf2Ctb1rKRBMw=;
	b=DU3oFB9dQrCMpqnuBQR1HKEV287pHGkoHknz6jLxvmiFgS7iqxncPOYY0PTCcfgkR5
	LW4TV3o56TN0yVSOnzU7dR+8rbGk/Jcr/uRDtYix8tYz7ULuUDVU+oCBmMDtKdNC0wl8
	JbFfc7Bj31doYMRjtMvy0VqZQD18GtzA1+yXJswx+EIQoAbqvQE01txWoSil+Ys4tTW3
	vWvj5hWunqaXX2fweC1veesQImEfq+l2RbsSPG90cTGkPR/1QwEBEAjRgSmb5/4J1v9Y
	M+1TgS0LfymB60DZo9MSXVmjds1Xv62FU/3iDMPfC4lDhXZnCV8zH/llFC0zQaO3aMMX
	OX+w==
X-Gm-Message-State: AEkoousVDn4gL/D+7XqnA2mITvWG6cHum9nntfLWRt8Dmsg1ruqROxAFSrW/nWDNd5mfafJO/Z6MmH3kgmxKbg==
X-Received: by 10.55.74.138 with SMTP id x132mr12228808qka.26.1469290057371;
	Sat, 23 Jul 2016 09:07:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sat, 23 Jul 2016 09:07:07 -0700 (PDT)
In-Reply-To: <CAEfap_A4horxvBuf+awOrPRNJajfeX18+qon8edPeY-syeu4VQ@mail.gmail.com>
References: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
	<BFCE6CA4-9E2A-4212-8F5A-4B31439AB944@gmail.com>
	<CAEfap_A4horxvBuf+awOrPRNJajfeX18+qon8edPeY-syeu4VQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Jul 2016 09:07:07 -0700
Message-ID: <CAMKF1spEA3hWMUv5+Lob2xvGSuQJFPkhmN0PdDTurdftJGwF3w@mail.gmail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [genericx86-jethro] core-image-sato - VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0, 0): error -6
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
X-List-Received-Date: Sat, 23 Jul 2016 16:07:39 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 23, 2016 at 8:57 AM, Simon Bolek <simon.bolek@googlemail.com> wrote:
> Hi,
>
> Well it is, as far as what
> parted /dev/sda print
>  says.
>
> generated grub.cfg matches that with PARTUUID, so it looks fine.
>
> menuentry "Linux" {
>     search --no-floppy --fs-uuid e88ec2c7-3438-4fe3-9033-83eb81957875 --set
> root
>     linux /vmlinuz root=PARTUUID=8316255c-f839-43fa-b2c6-d83bbed80962  rw
> quiet

this seems ok to me.

>
> }
>
> However fdisks -l shows only /dev/sda1, which ist strange.
>
> Is there something wrong with install.sh script?
> Compared to FIDO, it is GPT, not MSDOS. But i did not touch anything there.
> Maybe you can take a look at it?
> http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/initrdscripts/files/init-install.sh?h=jethro
> It always checks the grub version, however in FIDO Grub was also 2.00, so I
> do not get the IFs.
>
> thank you!
> Simon :-)
>
>
> On Sat, Jul 23, 2016 at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> > On Jul 23, 2016, at 5:25 AM, Simon Bolek <simon.bolek@googlemail.com>
>> > wrote:
>> >
>> > Hello!
>> >
>> > I am trying to install genericx86 core-image-sato on a atom-pc device
>> > with 80GB Intel SSD drive.
>> > I have created an image with
>> > bitbake core-image-sato
>> > without changing anything in the kernel via menuconfig, etc.
>> >
>> > ps. after installation I had to set /dev/sda1 to bootable with disk
>>
>> it seems your rootfs is on /dev/sda3 can you check kernel parameters what
>> is it passing for root=
>>
>> >
>> > After installation I have got this ugly error while booting the device.
>> > PLEASE HELP ME!
>> >
>> >
>> > "...
>> > VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0,0):
>> > error -6
>> > Pease append a correct "root=" boot option; here are the available
>> > partitions:
>> > 0100 4096 ram0 (driver?)
>> > ...
>> > 010f 4096 ram15 (driver?)
>> > ..."
>> >
>> >
>> > I noticed that install.sh script is creating GPT
>> > parted ${device} mktable gpt
>> > not MSDOS as in previous yocto versions, e.g. fido.
>> >
>> > Any hint is more than welcome. The device will just not boot :((((
>> >
>> > Here are some details about the device:
>> >
>> >
>> > +++
>> > blkid says:
>> > /dev/sda2: UUID="e88ec2c7-3438-4fe3-9033-83eb81957875" TYPE="ext3"
>> > PARTLABEL="boot" PARTUUID="57f43ab0-6e30-4721-81e2-c565f6c184c8"
>> > /dev/sda3: UUID="cbb77742-c9fe-4f19-85d7-399af99c3aa8" TYPE="ext3"
>> > PARTLABEL="root" PARTUUID="8316255c-f839-43fa-b2c6-d83bbed80962"
>> > /dev/sda4: TYPE="swap" PARTLABEL="swap"
>> > PARTUUID="15ddbd73-15b3-40a8-97e7-6377048a79eb"
>> > /dev/sdb: SEC_TYPE="msdos" LABEL="boot" UUID="3C80-C1D7" TYPE="vfat"
>> > /dev/sda1: PARTLABEL="bios_boot"
>> > PARTUUID="11cf26d2-2333-4c5b-a876-59d65929085f"
>> >
>> > +++
>> > /etc/fstab says
>> > # stock fstab - you probably want to override this with a machine
>> > specific one
>> >
>> > /dev/root            /                    auto       defaults
>> > 1  1
>> > proc                 /proc                proc       defaults
>> > 0  0
>> > devpts               /dev/pts             devpts     mode=0620,gid=5
>> > 0  0
>> > tmpfs                /run                 tmpfs
>> > mode=0755,nodev,nosuid,strictatime 0  0
>> > tmpfs                /var/volatile        tmpfs      defaults
>> > 0  0
>> >
>> > # uncomment this if your device has a SD/MMC/Transflash slot
>> > #/dev/mmcblk0p1       /media/card          auto
>> > defaults,sync,noauto  0  0
>> >
>> > /dev/sda2         /                      ext3         rw
>> > 0  1
>> > /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb
>> > swap             swap       defaults              0  0
>> > UUID=e88ec2c7-3438-4fe3-9033-83eb81957875              /boot
>> > ext3       defaults              1  2
>> >
>> >
>> > +++
>> > fdisk -l says
>> > Disk /dev/sda: 80.0 GB, 80026361856 bytes
>> > 255 heads, 63 sectors/track, 9729 cylinders
>> > Units = cylinders of 16065 * 512 = 8225280 bytes
>> >
>> >    Device Boot      Start         End      Blocks  Id System
>> > /dev/sda1   *           1        9730    78150743+ ee EFI GPT
>> >
>> > +++
>> > parted /dev/sda says
>> > Model: ATA INTEL SSDSA2M080 (scsi)
>> > Disk /dev/sda: 80.0GB
>> > Sector size (logical/physical): 512B/512B
>> > Partition Table: gpt
>> > Disk Flags: pmbr_boot
>> >
>> > Number  Start   End     Size    File system     Name       Flags
>> >  1      1049kB  2097kB  1049kB                  bios_boot  bios_grub
>> >  2      2097kB  19.9MB  17.8MB  ext3            boot
>> >  3      22.0MB  76.0GB  76.0GB  ext3            root
>> >  4      76.0GB  80.0GB  4001MB  linux-swap(v1)  swap
>> >
>> > +++
>> > lspci says
>> > Device:    00:1f.2
>> > Class:    IDE interface
>> > Vendor:    Intel Corporation
>> > Device:    NM10/ICH7 Family SATA Controller [IDE mode]
>> > SVendor:    Intel Corporation
>> > SDevice:    Device 464c
>> > Rev:    01
>> > ProgIf:    8a
>> > Driver:    ata_piix
>> > Module:    ata_piix
>> >
>> >
>> > thank you
>> > Simon :-)
>> >
>> >
>> >
>>
>

