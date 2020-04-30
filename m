Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.872.1588289806650144574
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 16:36:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=ei8r24oK;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43F5CE01AB5; Thu, 30 Apr 2020 16:36:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41B62E01AB3
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2020 16:36:44 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id n24so2969140plp.13
        for <yocto@yoctoproject.org>; Thu, 30 Apr 2020 16:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version;
        bh=nPXIzvFt/DFdoOBxnn+8BUMKstNArIueFsEdwp8Yg0Y=;
        b=ei8r24oKnJEv6EMoKTH48sYylgwvnMZywaVo5le476NWSNyrysaxpHcRXzFXxRRlpm
         Zccygc/lvnIx9cxbItWiUZmtDX2vtdb+1E3WUWcgdPCXn9Sjl8uS9odqCfhMx//QcFTv
         hpahg1RRPG0oUW0ZyPLDh3rOZuJ7RYEjBoWXeIi+f0z6RzdQVVsBpCKWjYpLBTo0wvRO
         SM9WNRZz+veA0MjM705ubcRAVaeNpNozKctOpHoyHNzmXHKukNE6ON03/E8vnfvsfdTp
         iPfBls/vlo3B4bdEHH6qwzieiOboBEyYxGfMVgyj+nWyKRnQipeYJNN9Rx1ObgSB2CVP
         fJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version;
        bh=nPXIzvFt/DFdoOBxnn+8BUMKstNArIueFsEdwp8Yg0Y=;
        b=EhyA4mPtZ2b4xU0yy67uK8mnQ9wLaNQSsd/uNOZrM9JO8V5f0M2qJvRrCu7u7NrNdK
         +qOUunFP/xsxgAo14k6n+lty7Nwbduem8wut/QJdy8wwJfA4qeQj++cXhjzDV23n15Yi
         HuSqWM0Vi3CfO5FWnAa0r38E2dOnIC2e3uNq7KraRYutWTIGVjeogSq423g7FSSXJ6kg
         GA6780Ui2WpOUV9mc2Br154h4xSBRxbvqQgudJ7SpzLFRshg04a40gQ+Yev43WLcdFiL
         YKZq78FBwFM36msacrA2EwG0PpIYsGSOXnu8VQFlf0/28Pv08mpu3pC0USwkazZsjYmg
         zxzA==
X-Gm-Message-State: AGi0PubHxd4wAS10h5q+BwNuZkXAbhYSjbYorncdNefF9ZepyQz6jTSs
	JLCzKsowLw/+wSq1sFeBjMSRfiH5qP23DQ==
X-Google-Smtp-Source: APiQypJzlBuiTEiuM+1gKW2aIDtP00iwCJkNvZkcJjbRtGAySMSM2ocCXeE1bt5cswz7W6f79zi2Pw==
X-Received: by 2002:a17:902:d216:: with SMTP id t22mr1522449ply.186.1588289803081;
        Thu, 30 Apr 2020 16:36:43 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id c124sm721814pfb.187.2020.04.30.16.36.41
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 16:36:42 -0700 (PDT)
To: Yocto list discussion <yocto@yoctoproject.org>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Subject: [WIC] Wic creates spurious partition
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <eafa7325-fd3f-9fce-8cf5-d22a6bad9452@ibeeto.com>
Date: Thu, 30 Apr 2020 16:36:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
X-Groupsio-MsgNum: 49293
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Lmhd37o8Zzy8tt5ornP21Mi1MPmqAdXA2"

--Lmhd37o8Zzy8tt5ornP21Mi1MPmqAdXA2
Content-Type: multipart/mixed; boundary="berb8LjfqH6elGZ5X3jVXH2cNJL6Wep19"

--berb8LjfqH6elGZ5X3jVXH2cNJL6Wep19
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I seem to be running into wic problems today...

I have the following wks file:

>>>>>
part SPL --source rawcopy --sourceparams=3D"file=3DSPL" --ondisk mmcblk
--no-table --align 1
part u-boot --source rawcopy --sourceparams=3D"file=3D${UBOOT_BINARY}"
--ondisk mmcblk --no-table --align 69
part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=3Dvfat
--label boot --active --align 4096 --fixed-size 16

part /mnt/persistent --ondisk mmcblk1 --fstype=3Dext4 --label persistent
--fixed-size 10
part / --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label rootfs1
--size 500
part /mnt/rootfs2 --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --labe=
l
rootfs2 --size 500
part /mnt/internal_storage --ondisk mmcblk1 --fstype=3Dext4 --label data
--size 1000

bootloader --ptable msdos
>>>>>

That should create 7 partitions of which 5 have a file system. However,
when I flash the emmc with it and boot the device:

# fdisk /dev/mmcblk1

Disk /dev/mmcblk1: 3.62 GiB, 3867148288 bytes, 7553024 sectors
Units: sectors of 1 * 512 =3D 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x0813790a

Device=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Boot=C2=A0=C2=A0 S=
tart=C2=A0=C2=A0=C2=A0=C2=A0 End Sectors=C2=A0 Size Id Type
/dev/mmcblk1p1 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8192=C2=A0=C2=A0 409=
59=C2=A0=C2=A0 32768=C2=A0=C2=A0 16M=C2=A0 c W95 FAT32 (LBA)
/dev/mmcblk1p2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 40960=C2=A0=C2=A0=
 61439=C2=A0=C2=A0 20480=C2=A0=C2=A0 10M 83 Linux
/dev/mmcblk1p3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 61440 1392639 13=
31200=C2=A0 650M 83 Linux
/dev/mmcblk1p4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1392640 4771841 3379202=C2=A0=
 1.6G=C2=A0 f W95 Ext'd (LBA)
/dev/mmcblk1p5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1392641 2723840 1331200=C2=A0=
 650M 83 Linux
/dev/mmcblk1p6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2723842 4771841 2048000 1000=
M 83 Linux

There is another partition that essentially overlaps the last two. That
makes no sense.

Thanks,
Rudi



--berb8LjfqH6elGZ5X3jVXH2cNJL6Wep19--

--Lmhd37o8Zzy8tt5ornP21Mi1MPmqAdXA2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6rYQgACgkQjYyoKScz
m3UYnwf+MbCrd8yKDx5MkCXrJFidVwlSObcZpADbUCsHMhYggPr7Zy1MApeALtV5
aw6QxMlQHHEPlqLIoJ5KykXXYorYwcZabbox3AdZE/VeM+pP8IPn5NSFm2kpnRrC
R/st0BF/xTlFkdy4NVFmGG0tbJr5tLN+tmOZeWP1KJiSw6CdNkd0dF8BIkB1Nix+
VddB+p7G4e2KEODX2K93Yy4L41G5KqMnbCAh50ZJbQfeSP5kBgv7sy3M3nYskhV1
MBdUJngdj+q6hd4KKZl1nrUDPIGttmimYH4jOQggjS2bzGPMAJ/mN9EYj6JMsCak
m5edPl20ktvorSV59tjJMKQCpG7ZlA==
=32ob
-----END PGP SIGNATURE-----

--Lmhd37o8Zzy8tt5ornP21Mi1MPmqAdXA2--
