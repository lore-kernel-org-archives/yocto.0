Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFC3E00B0A
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 14:59:48 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w15so2943356vbb.37
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 14:59:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=tZwAfCKAIovjBb2lGBpEMdQ7nRKM273F2tzNeje2jt0=;
	b=ibm86npsmyVALYLmzgAKtvPMEOID8JIJZ1n4CjX9qCQ/Dn/jSkojAIIaoBkWZaYa+Z
	yhsbut4W9FNvUVHyj1LMgw7nZfTc4JWZlSnux4u6FennMwNs088nyRU6pk+EkDNn/jaQ
	xi1Q8QBkxUj/WBllCCYPR2DsByBWXI9x8F8X+pGDLOX5p2V0NxuM1oEuIWFdR7vvgrQR
	3Yven4eJBEAuSE14KyynXxBQ4ETLVfYjf91q97BzWnIG3P/VHtJbasit/iWAhWbxiFYB
	lawlX8EXnTTpcYDRMspCxaNwri/7NZdIbmoWz/rm6stomc2x7HkHI+9T8EvG09WOpbeM
	v10Q==
MIME-Version: 1.0
X-Received: by 10.58.213.37 with SMTP id np5mr1940441vec.54.1365890387290;
	Sat, 13 Apr 2013 14:59:47 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Sat, 13 Apr 2013 14:59:47 -0700 (PDT)
Date: Sat, 13 Apr 2013 14:59:47 -0700
Message-ID: <CAPhnLPBKA7RmB5_KZ-m12O_ehR4BobYgB2qJYL1DPj071ouVYA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlNsPQaMRM3syjQkQHpSUhoDpC2i/C81dyNjUdTvOi42IJ7SguuTGGzMTCeOseyNyjPfz2J
Subject: Yocto 1.4_M5 released
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
X-List-Received-Date: Sat, 13 Apr 2013 21:59:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The fifth milestone for the upcoming Yocto Project 1.4 release is now
available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m5/poky-yocto-1.4-m5.tar.gz

Thanks to everyone for all their hard work.

- --
Elizabeth Flanagan
Yocto Project
Build and Release

- --------------------
yocto-1.4-m5 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.4-m5
Branch:  1.4_M5
Tag:  1.4_M5.final
Hash:  5e20d3c32072ddd91dceb8b2b793ef13f25b915e
md5:  357ecba236421857744b55960068319f  eclipse-poky-yocto-1.4-m5.tar.gz
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m5/eclipse-poky-yocto-1.4-m5.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m5/eclipse-poky-yocto-1.4-m5.tar.gz

Release Name: meta-intel-yocto-1.4-m5
Branch:  1.4_M5
Tag:  1.4_M5.final
Hash:  3de2325133eb581c5c8d66133821ea5a801cf8ae
md5:  d1f2b1e4139931d0a97c8898db13d8fd  meta-intel-yocto-1.4-m5.tar.gz
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m5/meta-intel-yocto-1.4-m5.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m5/meta-intel-yocto-1.4-m5.tar.gz

Release Name: meta-qt3-yocto-1.4-m5
Branch:  1.4_M5
Tag:  1.4_M5.final
Hash:  4c27cce6688aa39852f3cba5e7b80ec279019605
md5:  c5760f889a56e537b8741a8ddec69adc  meta-qt3-yocto-1.4-m5.tar.gz
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m5/meta-qt3-yocto-1.4-m5.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m5/meta-qt3-yocto-1.4-m5.tar.gz

Release Name: poky-yocto-1.4-m5
Branch:  1.4_M5
Tag:  1.4_M5.final
Hash:  fe336b149552b1f4f24d979c40302653298b98cc
md5:  bac423b8a5e4089cff90a5766ebedf6b  poky-yocto-1.4-m5.tar.gz
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m5/poky-yocto-1.4-m5.tar.gz
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m5/poky-yocto-1.4-m5.tar.gz

- --------------------
Features
- --------------------
- - About 10% improvement on kernel build time and reduced the tmp
directory size by over 30%.
- - New bitbake-whatchanged command to print out changed
configurations between builds.
- - Separate build data directory from source data directory in those
autotooled projects which supprt this feature.
- - HOB improvements including new search function, UI features and
various bug fixes.
- - Improvements to shared state cache, systemd support, yocto-kernel,
yocto-bsp, buildhistory, etc.
- - Various bug fixes and package update including connman, qemu,
systemtap, wayland, u-boot, curl, etc.

- --------------------
Known Issues
- --------------------
Bug #3515           The size of the routerstationpro kernel image is too big.
Bug #3960           X fails to start on atom-pc image.
Bug #4200           Hob under Build Appliance reports that tmp/work
directory is not created in build dir.
Bug #4203           build appliance fails to launch Hob automatically.
Bug #4220           [Routerstation] The system can not boot via NFS
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJRaIqGAAoJEEyK+E/MEkQPLrkH/iORourAdz69mNPrV2wX5r1c
NnXMqO/4nyWXOJtH5A46SVtXtVDllhL4A7WJjX9LdplPuH8WjsqSaLzQWnhaDxSo
5o0EdqvIiRbZiEimkBPANB1w3OWDaJpA3wVcr5SifEt5vYYh0SnCojl7p2usgR42
gH14VDRveG9HXDdRWZKGEdOybP4+kpq3xuvHqhmp+dkl5Q2e6Az1WE9rJWt8YXvl
ZI6U1KEOMzzuT66+hgQKI96p6LCN8ppB9zY1fY1Qr78fzHUTWwnL2hZWUJThGVzf
WaVVp7eftpfCR9EN08HlU0t/UITld922C9gzGwlhL1E4v/OzMYJSL3sFNQfsVYM=
=02Hd
-----END PGP SIGNATURE-----

