Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6842E01036; Sat, 23 Jul 2016 07:52:55 -0700 (PDT)
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
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78038E00D04
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 07:52:50 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id q2so8589594pap.0
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 07:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=svxPFyZz4DjyztjskMuH/Fvv62sahr9qfZBprzD/PH8=;
	b=YVMH7/CNO63wWiycowE2hWW1+rMR5UhHbp+D5eDa7IYZwxDW43oaujwSY8Rhl4WXKn
	sMfWeMGeCC77aSRh1HQ6d53s3r2I+VKqrG2NDrazw5Dk9sU+mxyI6bg1sKZn/0Cezffc
	7xkwyUP8mpg2Sk3i1rCdHNEKIB0LP5ao2z3eAhZyKv9PfB4R9WeNyBrD71uGtElIqGlq
	lEz9JVMDSFe6eGmcDgBToRkbkwnmYgxAZ524kuZhbk+I29N2gA+7eWfXihiXj7YKRdhz
	TzdH8GT3r86weIV1OmhgtFTrFGrW00Dx1voZjqANA+KxWljdsXhUBM11YHPAvJSyyiHt
	uXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=svxPFyZz4DjyztjskMuH/Fvv62sahr9qfZBprzD/PH8=;
	b=W599PYzY7MRIORbILMEbiUrKEnnbGPu8nromlPTrgGCNpD5I8t144za1QQYLPcXjeL
	XJH9pCudfGMEM2ppvVHwawmlvsE9ULxFZvFyz6bs1cVL9rUCHFkTKJs4PCLtgRpiI75W
	BrJAHvLs4XYgJWZYfqPY5jqqlmEges00NyrQuKXxgd+h5pGNj9WoqyWEtKxMR7xAO+Wr
	Nwiuu5XhXFEVaabuU8z64zjeCmMf9Qv8h/64zSJXHE27ooekOq0PccNoWVrLz+35ek0R
	H7MQD793NxGNp7cREhexIdr9xW5XvmPYekteGzu45+uUvpDJ/FXs1ynNBQdi2J+Osj6H
	r66w==
X-Gm-Message-State: AEkoouvC64dx9krlfgp8o2O5scfUa0Y3Wt0ZBMaQam050/WQTJBCS/Cb1DrtsmrbHucIxg==
X-Received: by 10.66.43.234 with SMTP id z10mr15449419pal.137.1469285570486;
	Sat, 23 Jul 2016 07:52:50 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	zq7sm27859553pac.6.2016.07.23.07.52.49
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 23 Jul 2016 07:52:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
Date: Sat, 23 Jul 2016 07:52:45 -0700
Message-Id: <BFCE6CA4-9E2A-4212-8F5A-4B31439AB944@gmail.com>
References: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
X-Mailer: Apple Mail (2.3124)
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
X-List-Received-Date: Sat, 23 Jul 2016 14:52:55 -0000
X-Groupsio-MsgNum: 31189
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B384ADFD-B343-414E-9E1E-D4FBB13BAB09";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B384ADFD-B343-414E-9E1E-D4FBB13BAB09
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 23, 2016, at 5:25 AM, Simon Bolek <simon.bolek@googlemail.com> =
wrote:
>=20
> Hello!
>=20
> I am trying to install genericx86 core-image-sato on a atom-pc device =
with 80GB Intel SSD drive.
> I have created an image with
> bitbake core-image-sato
> without changing anything in the kernel via menuconfig, etc.
>=20
> ps. after installation I had to set /dev/sda1 to bootable with disk

it seems your rootfs is on /dev/sda3 can you check kernel parameters =
what is it passing for root=3D

>=20
> After installation I have got this ugly error while booting the =
device. PLEASE HELP ME!
>=20
>=20
> "...
> VFS: Cannot open root device "PARTUUID=3D8316.." or =
unknown-block(0,0): error -6
> Pease append a correct "root=3D" boot option; here are the available =
partitions:
> 0100 4096 ram0 (driver?)
> ...
> 010f 4096 ram15 (driver?)
> ..."
>=20
>=20
> I noticed that install.sh script is creating GPT
> parted ${device} mktable gpt
> not MSDOS as in previous yocto versions, e.g. fido.
>=20
> Any hint is more than welcome. The device will just not boot :((((
>=20
> Here are some details about the device:
>=20
>=20
> +++
> blkid says:
> /dev/sda2: UUID=3D"e88ec2c7-3438-4fe3-9033-83eb81957875" TYPE=3D"ext3" =
PARTLABEL=3D"boot" PARTUUID=3D"57f43ab0-6e30-4721-81e2-c565f6c184c8"
> /dev/sda3: UUID=3D"cbb77742-c9fe-4f19-85d7-399af99c3aa8" TYPE=3D"ext3" =
PARTLABEL=3D"root" PARTUUID=3D"8316255c-f839-43fa-b2c6-d83bbed80962"
> /dev/sda4: TYPE=3D"swap" PARTLABEL=3D"swap" =
PARTUUID=3D"15ddbd73-15b3-40a8-97e7-6377048a79eb"
> /dev/sdb: SEC_TYPE=3D"msdos" LABEL=3D"boot" UUID=3D"3C80-C1D7" =
TYPE=3D"vfat"
> /dev/sda1: PARTLABEL=3D"bios_boot" =
PARTUUID=3D"11cf26d2-2333-4c5b-a876-59d65929085f"
>=20
> +++
> /etc/fstab says
> # stock fstab - you probably want to override this with a machine =
specific one
>=20
> /dev/root            /                    auto       defaults          =
    1  1
> proc                 /proc                proc       defaults          =
    0  0
> devpts               /dev/pts             devpts     mode=3D0620,gid=3D5=
       0  0
> tmpfs                /run                 tmpfs      =
mode=3D0755,nodev,nosuid,strictatime 0  0
> tmpfs                /var/volatile        tmpfs      defaults          =
    0  0
>=20
> # uncomment this if your device has a SD/MMC/Transflash slot
> #/dev/mmcblk0p1       /media/card          auto       =
defaults,sync,noauto  0  0
>=20
> /dev/sda2         /                      ext3         rw               =
     0  1
> /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb             =
   swap             swap       defaults              0  0
> UUID=3De88ec2c7-3438-4fe3-9033-83eb81957875              /boot         =
   ext3       defaults              1  2
>=20
>=20
> +++
> fdisk -l says
> Disk /dev/sda: 80.0 GB, 80026361856 bytes
> 255 heads, 63 sectors/track, 9729 cylinders
> Units =3D cylinders of 16065 * 512 =3D 8225280 bytes
>=20
>    Device Boot      Start         End      Blocks  Id System
> /dev/sda1   *           1        9730    78150743+ ee EFI GPT
>=20
> +++
> parted /dev/sda says
> Model: ATA INTEL SSDSA2M080 (scsi)
> Disk /dev/sda: 80.0GB
> Sector size (logical/physical): 512B/512B
> Partition Table: gpt
> Disk Flags: pmbr_boot
>=20
> Number  Start   End     Size    File system     Name       Flags
>  1      1049kB  2097kB  1049kB                  bios_boot  bios_grub
>  2      2097kB  19.9MB  17.8MB  ext3            boot
>  3      22.0MB  76.0GB  76.0GB  ext3            root
>  4      76.0GB  80.0GB  4001MB  linux-swap(v1)  swap
>=20
> +++
> lspci says
> Device:    00:1f.2
> Class:    IDE interface
> Vendor:    Intel Corporation
> Device:    NM10/ICH7 Family SATA Controller [IDE mode]
> SVendor:    Intel Corporation
> SDevice:    Device 464c
> Rev:    01
> ProgIf:    8a
> Driver:    ata_piix
> Module:    ata_piix
>=20
>=20
> thank you
> Simon :-)
>=20
>=20
>=20


--Apple-Mail=_B384ADFD-B343-414E-9E1E-D4FBB13BAB09
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleThMEACgkQuwUzVZGdMxQMBwCgizKv6TPB+GsbmHrnNqGIjXgX
tQEAn1g9b3v6m7FdWxXFN+cKMjX1C749
=9r4x
-----END PGP SIGNATURE-----

--Apple-Mail=_B384ADFD-B343-414E-9E1E-D4FBB13BAB09--
