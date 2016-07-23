Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 945EDE01054; Sat, 23 Jul 2016 10:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 376A8E01050
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 10:34:27 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id w38so77888110qtb.0
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 10:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kSLHpRy5jPdi5G4R3UHwk8G38t5mKO+2B199bctkzrk=;
	b=tZXoPmx2eSZ/Wm7lLQ3sriwmj6u1VabHIoXfEnLsCYItuTykO/c55XHUnI13aus08H
	ahZBxoSDIqolA3ptsPVLOi3YW/PAQNfI1bmmxSD9ZqnU7LYdXyyw9ollVBzQJt8/nrdv
	GL+QaS4jcl/BBjgp0ahVPbBCIOMKFcDEz3OLiRX+2Dim4o0W6IdDGQOdj0dIBu7vBkBh
	SbYrl5OeAtj+ie5VDdWv16rmzBvgfOEkTtpa4BEs061rvFrMSJNvhMfOssD1VorbLpBz
	RXNCtcS9xzEmrtHW6n09MlFSrRYZV6w6CnneDtlJI6TrRsl2WwOBjJQrtuq053+JaMfJ
	Jurg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kSLHpRy5jPdi5G4R3UHwk8G38t5mKO+2B199bctkzrk=;
	b=VfbrOtnY+vrOjnTpXprTR5tVsUheAVeNqJz2jHEaskma/oXegyZ2+ur/7zIDdHTUwG
	PatSWgElBffO3ieo4Aa1vCHvKbd80tzLx1QIB0Sp4gzIPmjMCArxmgUhS/ps6ZlKO5Qp
	rg7QyY6ykvqKDx7my6N1OB+ApcozbSKqwR1HF/JspUJVV/GhxNFITQ7NMGz1fpy223PL
	M9rQyQ6K9EQyRrCL1OKKHXsvR9c9Ymc+rDVYfU/857fqb2QS1Af12vovf9Yx6m+w1j8e
	Yz2+wRGCeBNh7YAEITSfqcCj8xcg/CthPe4V1ie5WgN547pzksm1z2Way6QYPJphNfeI
	KQ/w==
X-Gm-Message-State: AEkoouuhcR+HIK7XEX/nCtLP/UV+alaZt7M+dmJHEwW7deBcESiP5U7zfZgUejbGsE5t2Mp7rPAWEntmQ8AvoA==
X-Received: by 10.237.50.35 with SMTP id y32mr16531500qtd.98.1469295266834;
	Sat, 23 Jul 2016 10:34:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sat, 23 Jul 2016 10:33:57 -0700 (PDT)
In-Reply-To: <CAEfap_DiAeLSfnH9RKCiWhKJNLizFJa5TLboukzZG2FvYQ5A2A@mail.gmail.com>
References: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
	<BFCE6CA4-9E2A-4212-8F5A-4B31439AB944@gmail.com>
	<CAEfap_A4horxvBuf+awOrPRNJajfeX18+qon8edPeY-syeu4VQ@mail.gmail.com>
	<CAMKF1spEA3hWMUv5+Lob2xvGSuQJFPkhmN0PdDTurdftJGwF3w@mail.gmail.com>
	<CAEfap_DiAeLSfnH9RKCiWhKJNLizFJa5TLboukzZG2FvYQ5A2A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Jul 2016 10:33:57 -0700
Message-ID: <CAMKF1sp3nvxZdrGVFJDp7Ks2_DjON-44=PtJT8c585Wd4PFrVA@mail.gmail.com>
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
X-List-Received-Date: Sat, 23 Jul 2016 17:34:31 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 23, 2016 at 9:49 AM, Simon Bolek <simon.bolek@googlemail.com> wrote:
> Thanks, sorry that I bother you all the time, but I do not seem to make any
> progress :(
> Is there anything else I can check?
> It seems, on boot time this device is not mounted, only ram0...15.

It so seems that driver may be missing in initramfs could be one
reason. other reason could
be that udev is not settling down for this device. So may be changing
the udevadm to wait
a bit for devices to mount might help

>
> thank you
> Simon :-)
>
>
>
> On Sat, Jul 23, 2016 at 6:07 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Sat, Jul 23, 2016 at 8:57 AM, Simon Bolek <simon.bolek@googlemail.com>
>> wrote:
>> > Hi,
>> >
>> > Well it is, as far as what
>> > parted /dev/sda print
>> >  says.
>> >
>> > generated grub.cfg matches that with PARTUUID, so it looks fine.
>> >
>> > menuentry "Linux" {
>> >     search --no-floppy --fs-uuid e88ec2c7-3438-4fe3-9033-83eb81957875
>> > --set
>> > root
>> >     linux /vmlinuz root=PARTUUID=8316255c-f839-43fa-b2c6-d83bbed80962
>> > rw
>> > quiet
>>
>> this seems ok to me.
>>
>> >
>> > }
>> >
>> > However fdisks -l shows only /dev/sda1, which ist strange.
>> >
>> > Is there something wrong with install.sh script?
>> > Compared to FIDO, it is GPT, not MSDOS. But i did not touch anything
>> > there.
>> > Maybe you can take a look at it?
>> >
>> > http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/initrdscripts/files/init-install.sh?h=jethro
>> > It always checks the grub version, however in FIDO Grub was also 2.00,
>> > so I
>> > do not get the IFs.
>> >
>> > thank you!
>> > Simon :-)
>> >
>> >
>> > On Sat, Jul 23, 2016 at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >>
>> >> > On Jul 23, 2016, at 5:25 AM, Simon Bolek <simon.bolek@googlemail.com>
>> >> > wrote:
>> >> >
>> >> > Hello!
>> >> >
>> >> > I am trying to install genericx86 core-image-sato on a atom-pc device
>> >> > with 80GB Intel SSD drive.
>> >> > I have created an image with
>> >> > bitbake core-image-sato
>> >> > without changing anything in the kernel via menuconfig, etc.
>> >> >
>> >> > ps. after installation I had to set /dev/sda1 to bootable with disk
>> >>
>> >> it seems your rootfs is on /dev/sda3 can you check kernel parameters
>> >> what
>> >> is it passing for root=
>> >>
>> >> >
>> >> > After installation I have got this ugly error while booting the
>> >> > device.
>> >> > PLEASE HELP ME!
>> >> >
>> >> >
>> >> > "...
>> >> > VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0,0):
>> >> > error -6
>> >> > Pease append a correct "root=" boot option; here are the available
>> >> > partitions:
>> >> > 0100 4096 ram0 (driver?)
>> >> > ...
>> >> > 010f 4096 ram15 (driver?)
>> >> > ..."
>> >> >
>> >> >
>> >> > I noticed that install.sh script is creating GPT
>> >> > parted ${device} mktable gpt
>> >> > not MSDOS as in previous yocto versions, e.g. fido.
>> >> >
>> >> > Any hint is more than welcome. The device will just not boot :((((
>> >> >
>> >> > Here are some details about the device:
>> >> >
>> >> >
>> >> > +++
>> >> > blkid says:
>> >> > /dev/sda2: UUID="e88ec2c7-3438-4fe3-9033-83eb81957875" TYPE="ext3"
>> >> > PARTLABEL="boot" PARTUUID="57f43ab0-6e30-4721-81e2-c565f6c184c8"
>> >> > /dev/sda3: UUID="cbb77742-c9fe-4f19-85d7-399af99c3aa8" TYPE="ext3"
>> >> > PARTLABEL="root" PARTUUID="8316255c-f839-43fa-b2c6-d83bbed80962"
>> >> > /dev/sda4: TYPE="swap" PARTLABEL="swap"
>> >> > PARTUUID="15ddbd73-15b3-40a8-97e7-6377048a79eb"
>> >> > /dev/sdb: SEC_TYPE="msdos" LABEL="boot" UUID="3C80-C1D7" TYPE="vfat"
>> >> > /dev/sda1: PARTLABEL="bios_boot"
>> >> > PARTUUID="11cf26d2-2333-4c5b-a876-59d65929085f"
>> >> >
>> >> > +++
>> >> > /etc/fstab says
>> >> > # stock fstab - you probably want to override this with a machine
>> >> > specific one
>> >> >
>> >> > /dev/root            /                    auto       defaults
>> >> > 1  1
>> >> > proc                 /proc                proc       defaults
>> >> > 0  0
>> >> > devpts               /dev/pts             devpts     mode=0620,gid=5
>> >> > 0  0
>> >> > tmpfs                /run                 tmpfs
>> >> > mode=0755,nodev,nosuid,strictatime 0  0
>> >> > tmpfs                /var/volatile        tmpfs      defaults
>> >> > 0  0
>> >> >
>> >> > # uncomment this if your device has a SD/MMC/Transflash slot
>> >> > #/dev/mmcblk0p1       /media/card          auto
>> >> > defaults,sync,noauto  0  0
>> >> >
>> >> > /dev/sda2         /                      ext3         rw
>> >> > 0  1
>> >> > /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb
>> >> > swap             swap       defaults              0  0
>> >> > UUID=e88ec2c7-3438-4fe3-9033-83eb81957875              /boot
>> >> > ext3       defaults              1  2
>> >> >
>> >> >
>> >> > +++
>> >> > fdisk -l says
>> >> > Disk /dev/sda: 80.0 GB, 80026361856 bytes
>> >> > 255 heads, 63 sectors/track, 9729 cylinders
>> >> > Units = cylinders of 16065 * 512 = 8225280 bytes
>> >> >
>> >> >    Device Boot      Start         End      Blocks  Id System
>> >> > /dev/sda1   *           1        9730    78150743+ ee EFI GPT
>> >> >
>> >> > +++
>> >> > parted /dev/sda says
>> >> > Model: ATA INTEL SSDSA2M080 (scsi)
>> >> > Disk /dev/sda: 80.0GB
>> >> > Sector size (logical/physical): 512B/512B
>> >> > Partition Table: gpt
>> >> > Disk Flags: pmbr_boot
>> >> >
>> >> > Number  Start   End     Size    File system     Name       Flags
>> >> >  1      1049kB  2097kB  1049kB                  bios_boot  bios_grub
>> >> >  2      2097kB  19.9MB  17.8MB  ext3            boot
>> >> >  3      22.0MB  76.0GB  76.0GB  ext3            root
>> >> >  4      76.0GB  80.0GB  4001MB  linux-swap(v1)  swap
>> >> >
>> >> > +++
>> >> > lspci says
>> >> > Device:    00:1f.2
>> >> > Class:    IDE interface
>> >> > Vendor:    Intel Corporation
>> >> > Device:    NM10/ICH7 Family SATA Controller [IDE mode]
>> >> > SVendor:    Intel Corporation
>> >> > SDevice:    Device 464c
>> >> > Rev:    01
>> >> > ProgIf:    8a
>> >> > Driver:    ata_piix
>> >> > Module:    ata_piix
>> >> >
>> >> >
>> >> > thank you
>> >> > Simon :-)
>> >> >
>> >> >
>> >> >
>> >>
>> >
>
>

