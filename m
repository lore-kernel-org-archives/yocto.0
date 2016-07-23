Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74791E0103C; Sat, 23 Jul 2016 08:58:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D50C1E00D08
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 08:58:14 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id j124so72329666ith.1
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 08:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RcvBsZNPTIFrqaQugBarYn2G1+kBIngDpBhdaioAgcg=;
	b=caVOYRhSXPRv5j/oFFExbsyT0UKEUCt6owBXpcyArYUv7AVFaIppX7VFuHzj6RnNR2
	NQWu7uBdQaC9CNn/kpSwHxjuQTcYcpyAxem1iVZCb+hbnTACtUGXCh4fjsxmhCsSXndH
	BI+FO6NsDlbd3J87hnnFehOvdo493+LN475g26ZWrAKWrtd82INPz755rph+LWXRFnmX
	28HiiIs+1tRa7IoAhHOqdyx+hurFksaUtlyDHwK1Z2F7buFh8XaNe8CuzJFu8qPwjuuH
	VL0i+gJTYhF22OJxiI7bVFORC44mjLCyyzkSTwLip1nVf/pC/awd4K6B/sC3MJOC7E27
	VqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RcvBsZNPTIFrqaQugBarYn2G1+kBIngDpBhdaioAgcg=;
	b=Q0D9OBXP1K1AH3rBUb4ddaUZwwYv0qyG20JG4MJmk3jGhKsu2E6n/5mo2t8qI0MPmC
	ueEElvs/IcmgL21cWn/w+/1tb69LQCKGuNMzvRNbEMq1kQyXnORjxka0FAxl0bTrudxO
	KUKFSckHIYpkAlDDPTxx87d/vRUwkRvsZo9JGxGkzuEQUubnbhCU+HdYk3mVcVZbVEUD
	pwJwSju144agthoy8wrbNuYclaak417JnVch0etEEvpgC0GzG4lM7IrzkbGKqWr12EFf
	R7RIFwIfCS6GU9sb+94wm6hWzw+x05vUdKHlfel7fjzIWzrtlRZ7yzo1rPe1wGqcdVP1
	Xy2A==
X-Gm-Message-State: AEkoousln2ZFN9KDIapOYIvhMvBYSxtd++8j33wLSvxmtvqLUbf8A7hTXxNFJNJQK60oVDurysy8UekhNbJlFw==
X-Received: by 10.36.103.210 with SMTP id u201mr11570614itc.45.1469289494028; 
	Sat, 23 Jul 2016 08:58:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Sat, 23 Jul 2016 08:57:54 -0700 (PDT)
In-Reply-To: <BFCE6CA4-9E2A-4212-8F5A-4B31439AB944@gmail.com>
References: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
	<BFCE6CA4-9E2A-4212-8F5A-4B31439AB944@gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Sat, 23 Jul 2016 17:57:54 +0200
Message-ID: <CAEfap_A4horxvBuf+awOrPRNJajfeX18+qon8edPeY-syeu4VQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Sat, 23 Jul 2016 15:58:19 -0000
Content-Type: multipart/alternative; boundary=001a114ac8085d257505384f9ee9

--001a114ac8085d257505384f9ee9
Content-Type: text/plain; charset=UTF-8

Hi,

Well it is, as far as what
parted /dev/sda print
 says.

generated grub.cfg matches that with PARTUUID, so it looks fine.

menuentry "Linux" {
    search --no-floppy --fs-uuid e88ec2c7-3438-4fe3-9033-83eb81957875 --set
root
    linux /vmlinuz root=PARTUUID=8316255c-f839-43fa-b2c6-d83bbed80962
rw    quiet

}

However fdisks -l shows only /dev/sda1, which ist strange.

Is there something wrong with install.sh script?
Compared to FIDO, it is GPT, not MSDOS. But i did not touch anything there.
Maybe you can take a look at it?
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/initrdscripts/files/init-install.sh?h=jethro
It always checks the grub version, however in FIDO Grub was also 2.00, so I
do not get the IFs.

thank you!
Simon :-)


On Sat, Jul 23, 2016 at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Jul 23, 2016, at 5:25 AM, Simon Bolek <simon.bolek@googlemail.com>
> wrote:
> >
> > Hello!
> >
> > I am trying to install genericx86 core-image-sato on a atom-pc device
> with 80GB Intel SSD drive.
> > I have created an image with
> > bitbake core-image-sato
> > without changing anything in the kernel via menuconfig, etc.
> >
> > ps. after installation I had to set /dev/sda1 to bootable with disk
>
> it seems your rootfs is on /dev/sda3 can you check kernel parameters what
> is it passing for root=
>
> >
> > After installation I have got this ugly error while booting the device.
> PLEASE HELP ME!
> >
> >
> > "...
> > VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0,0):
> error -6
> > Pease append a correct "root=" boot option; here are the available
> partitions:
> > 0100 4096 ram0 (driver?)
> > ...
> > 010f 4096 ram15 (driver?)
> > ..."
> >
> >
> > I noticed that install.sh script is creating GPT
> > parted ${device} mktable gpt
> > not MSDOS as in previous yocto versions, e.g. fido.
> >
> > Any hint is more than welcome. The device will just not boot :((((
> >
> > Here are some details about the device:
> >
> >
> > +++
> > blkid says:
> > /dev/sda2: UUID="e88ec2c7-3438-4fe3-9033-83eb81957875" TYPE="ext3"
> PARTLABEL="boot" PARTUUID="57f43ab0-6e30-4721-81e2-c565f6c184c8"
> > /dev/sda3: UUID="cbb77742-c9fe-4f19-85d7-399af99c3aa8" TYPE="ext3"
> PARTLABEL="root" PARTUUID="8316255c-f839-43fa-b2c6-d83bbed80962"
> > /dev/sda4: TYPE="swap" PARTLABEL="swap"
> PARTUUID="15ddbd73-15b3-40a8-97e7-6377048a79eb"
> > /dev/sdb: SEC_TYPE="msdos" LABEL="boot" UUID="3C80-C1D7" TYPE="vfat"
> > /dev/sda1: PARTLABEL="bios_boot"
> PARTUUID="11cf26d2-2333-4c5b-a876-59d65929085f"
> >
> > +++
> > /etc/fstab says
> > # stock fstab - you probably want to override this with a machine
> specific one
> >
> > /dev/root            /                    auto       defaults
>   1  1
> > proc                 /proc                proc       defaults
>   0  0
> > devpts               /dev/pts             devpts     mode=0620,gid=5
>    0  0
> > tmpfs                /run                 tmpfs
> mode=0755,nodev,nosuid,strictatime 0  0
> > tmpfs                /var/volatile        tmpfs      defaults
>   0  0
> >
> > # uncomment this if your device has a SD/MMC/Transflash slot
> > #/dev/mmcblk0p1       /media/card          auto
>  defaults,sync,noauto  0  0
> >
> > /dev/sda2         /                      ext3         rw
>     0  1
> > /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb
>   swap             swap       defaults              0  0
> > UUID=e88ec2c7-3438-4fe3-9033-83eb81957875              /boot
> ext3       defaults              1  2
> >
> >
> > +++
> > fdisk -l says
> > Disk /dev/sda: 80.0 GB, 80026361856 bytes
> > 255 heads, 63 sectors/track, 9729 cylinders
> > Units = cylinders of 16065 * 512 = 8225280 bytes
> >
> >    Device Boot      Start         End      Blocks  Id System
> > /dev/sda1   *           1        9730    78150743+ ee EFI GPT
> >
> > +++
> > parted /dev/sda says
> > Model: ATA INTEL SSDSA2M080 (scsi)
> > Disk /dev/sda: 80.0GB
> > Sector size (logical/physical): 512B/512B
> > Partition Table: gpt
> > Disk Flags: pmbr_boot
> >
> > Number  Start   End     Size    File system     Name       Flags
> >  1      1049kB  2097kB  1049kB                  bios_boot  bios_grub
> >  2      2097kB  19.9MB  17.8MB  ext3            boot
> >  3      22.0MB  76.0GB  76.0GB  ext3            root
> >  4      76.0GB  80.0GB  4001MB  linux-swap(v1)  swap
> >
> > +++
> > lspci says
> > Device:    00:1f.2
> > Class:    IDE interface
> > Vendor:    Intel Corporation
> > Device:    NM10/ICH7 Family SATA Controller [IDE mode]
> > SVendor:    Intel Corporation
> > SDevice:    Device 464c
> > Rev:    01
> > ProgIf:    8a
> > Driver:    ata_piix
> > Module:    ata_piix
> >
> >
> > thank you
> > Simon :-)
> >
> >
> >
>
>

--001a114ac8085d257505384f9ee9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi, <br><br></div>Well it is, as far as what <br=
>parted /dev/sda print<br>=C2=A0says. <br><br></div>generated grub.cfg matc=
hes that with PARTUUID, so it looks fine.<br><div><br>menuentry &quot;Linux=
&quot; {<br>=C2=A0=C2=A0=C2=A0 search --no-floppy --fs-uuid e88ec2c7-3438-4=
fe3-9033-83eb81957875 --set root<br>=C2=A0=C2=A0=C2=A0 linux /vmlinuz root=
=3DPARTUUID=3D8316255c-f839-43fa-b2c6-d83bbed80962=C2=A0 rw=C2=A0=C2=A0=C2=
=A0 quiet<br><br>}<br><br>However fdisks -l shows only /dev/sda1, which ist=
 strange. <br><br></div><div>Is there something wrong with install.sh scrip=
t?<br></div><div>Compared to FIDO, it is GPT, not MSDOS. But i did not touc=
h anything there. Maybe you can take a look at it?<br><a href=3D"http://git=
.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/initrdscripts/files=
/init-install.sh?h=3Djethro">http://git.yoctoproject.org/cgit.cgi/poky/plai=
n/meta/recipes-core/initrdscripts/files/init-install.sh?h=3Djethro</a> <br>=
</div><div>It always checks the grub version, however in FIDO Grub was also=
 2.00, so I do not get the IFs.<br></div><div><br></div><div>thank you!<br>=
</div><div>Simon :-)<br></div><div><br><br><div><div class=3D"gmail_extra">=
<div class=3D"gmail_quote">On Sat, Jul 23, 2016 at 4:52 PM, Khem Raj <span =
dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><span class=3D""><br>
&gt; On Jul 23, 2016, at 5:25 AM, Simon Bolek &lt;<a href=3D"mailto:simon.b=
olek@googlemail.com">simon.bolek@googlemail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello!<br>
&gt;<br>
&gt; I am trying to install genericx86 core-image-sato on a atom-pc device =
with 80GB Intel SSD drive.<br>
&gt; I have created an image with<br>
&gt; bitbake core-image-sato<br>
&gt; without changing anything in the kernel via menuconfig, etc.<br>
&gt;<br>
</span>&gt; ps. after installation I had to set /dev/sda1 to bootable with =
disk<br>
<br>
it seems your rootfs is on /dev/sda3 can you check kernel parameters what i=
s it passing for root=3D<br>
<div class=3D""><div class=3D"h5"><br>
&gt;<br>
&gt; After installation I have got this ugly error while booting the device=
. PLEASE HELP ME!<br>
&gt;<br>
&gt;<br>
&gt; &quot;...<br>
&gt; VFS: Cannot open root device &quot;PARTUUID=3D8316..&quot; or unknown-=
block(0,0): error -6<br>
&gt; Pease append a correct &quot;root=3D&quot; boot option; here are the a=
vailable partitions:<br>
&gt; 0100 4096 ram0 (driver?)<br>
&gt; ...<br>
&gt; 010f 4096 ram15 (driver?)<br>
&gt; ...&quot;<br>
&gt;<br>
&gt;<br>
&gt; I noticed that install.sh script is creating GPT<br>
&gt; parted ${device} mktable gpt<br>
&gt; not MSDOS as in previous yocto versions, e.g. fido.<br>
&gt;<br>
&gt; Any hint is more than welcome. The device will just not boot :((((<br>
&gt;<br>
&gt; Here are some details about the device:<br>
&gt;<br>
&gt;<br>
&gt; +++<br>
&gt; blkid says:<br>
&gt; /dev/sda2: UUID=3D&quot;e88ec2c7-3438-4fe3-9033-83eb81957875&quot; TYP=
E=3D&quot;ext3&quot; PARTLABEL=3D&quot;boot&quot; PARTUUID=3D&quot;57f43ab0=
-6e30-4721-81e2-c565f6c184c8&quot;<br>
&gt; /dev/sda3: UUID=3D&quot;cbb77742-c9fe-4f19-85d7-399af99c3aa8&quot; TYP=
E=3D&quot;ext3&quot; PARTLABEL=3D&quot;root&quot; PARTUUID=3D&quot;8316255c=
-f839-43fa-b2c6-d83bbed80962&quot;<br>
&gt; /dev/sda4: TYPE=3D&quot;swap&quot; PARTLABEL=3D&quot;swap&quot; PARTUU=
ID=3D&quot;15ddbd73-15b3-40a8-97e7-6377048a79eb&quot;<br>
&gt; /dev/sdb: SEC_TYPE=3D&quot;msdos&quot; LABEL=3D&quot;boot&quot; UUID=
=3D&quot;3C80-C1D7&quot; TYPE=3D&quot;vfat&quot;<br>
&gt; /dev/sda1: PARTLABEL=3D&quot;bios_boot&quot; PARTUUID=3D&quot;11cf26d2=
-2333-4c5b-a876-59d65929085f&quot;<br>
&gt;<br>
&gt; +++<br>
&gt; /etc/fstab says<br>
&gt; # stock fstab - you probably want to override this with a machine spec=
ific one<br>
&gt;<br>
&gt; /dev/root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 auto=C2=A0 =C2=A0 =C2=
=A0 =C2=A0defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 =
1<br>
&gt; proc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/pro=
c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 proc=C2=A0 =C2=A0 =
=C2=A0 =C2=A0defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=
=A0 0<br>
&gt; devpts=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/dev/pts=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0devpts=C2=A0 =C2=A0 =C2=A0m=
ode=3D0620,gid=3D5=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 0<br>
&gt; tmpfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /run=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmpfs=C2=A0 =C2=
=A0 =C2=A0 mode=3D0755,nodev,nosuid,strictatime 0=C2=A0 0<br>
&gt; tmpfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /var/vola=
tile=C2=A0 =C2=A0 =C2=A0 =C2=A0 tmpfs=C2=A0 =C2=A0 =C2=A0 defaults=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 0<br>
&gt;<br>
&gt; # uncomment this if your device has a SD/MMC/Transflash slot<br>
&gt; #/dev/mmcblk0p1=C2=A0 =C2=A0 =C2=A0 =C2=A0/media/card=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 auto=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults,sync,noauto=C2=A0=
 0=C2=A0 0<br>
&gt;<br>
&gt; /dev/sda2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ext3=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rw=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0=C2=A0 1<br>
&gt; /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 swap=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0swap=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 0<br>
&gt; UUID=3De88ec2c7-3438-4fe3-9033-83eb81957875=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 /boot=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ext3=
=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1=C2=A0 2<br>
&gt;<br>
&gt;<br>
&gt; +++<br>
&gt; fdisk -l says<br>
&gt; Disk /dev/sda: 80.0 GB, 80026361856 bytes<br>
&gt; 255 heads, 63 sectors/track, 9729 cylinders<br>
&gt; Units =3D cylinders of 16065 * 512 =3D 8225280 bytes<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 Device Boot=C2=A0 =C2=A0 =C2=A0 Start=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0End=C2=A0 =C2=A0 =C2=A0 Blocks=C2=A0 Id System<br>
&gt; /dev/sda1=C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 9730=C2=A0 =C2=A0 78150743+ ee EFI GPT<br>
&gt;<br>
&gt; +++<br>
&gt; parted /dev/sda says<br>
&gt; Model: ATA INTEL SSDSA2M080 (scsi)<br>
&gt; Disk /dev/sda: 80.0GB<br>
&gt; Sector size (logical/physical): 512B/512B<br>
&gt; Partition Table: gpt<br>
&gt; Disk Flags: pmbr_boot<br>
&gt;<br>
&gt; Number=C2=A0 Start=C2=A0 =C2=A0End=C2=A0 =C2=A0 =C2=A0Size=C2=A0 =C2=
=A0 File system=C2=A0 =C2=A0 =C2=A0Name=C2=A0 =C2=A0 =C2=A0 =C2=A0Flags<br>
&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 1049kB=C2=A0 2097kB=C2=A0 1049kB=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bios_boot=C2=A0 bios_g=
rub<br>
&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 2097kB=C2=A0 19.9MB=C2=A0 17.8MB=C2=A0 ext=
3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot<br>
&gt;=C2=A0 3=C2=A0 =C2=A0 =C2=A0 22.0MB=C2=A0 76.0GB=C2=A0 76.0GB=C2=A0 ext=
3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 root<br>
&gt;=C2=A0 4=C2=A0 =C2=A0 =C2=A0 76.0GB=C2=A0 80.0GB=C2=A0 4001MB=C2=A0 lin=
ux-swap(v1)=C2=A0 swap<br>
&gt;<br>
&gt; +++<br>
&gt; lspci says<br>
&gt; Device:=C2=A0 =C2=A0 00:1f.2<br>
&gt; Class:=C2=A0 =C2=A0 IDE interface<br>
&gt; Vendor:=C2=A0 =C2=A0 Intel Corporation<br>
&gt; Device:=C2=A0 =C2=A0 NM10/ICH7 Family SATA Controller [IDE mode]<br>
&gt; SVendor:=C2=A0 =C2=A0 Intel Corporation<br>
&gt; SDevice:=C2=A0 =C2=A0 Device 464c<br>
&gt; Rev:=C2=A0 =C2=A0 01<br>
&gt; ProgIf:=C2=A0 =C2=A0 8a<br>
&gt; Driver:=C2=A0 =C2=A0 ata_piix<br>
&gt; Module:=C2=A0 =C2=A0 ata_piix<br>
&gt;<br>
&gt;<br>
&gt; thank you<br>
&gt; Simon :-)<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div></div></div></div>

--001a114ac8085d257505384f9ee9--
