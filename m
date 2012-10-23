Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD9DDE0027E
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 11:45:53 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so658717pbc.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 11:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version:x-mailer;
	bh=19g2saBi4J5R0wghab5dyrFxgejiCq2Xh3gO5ygmQr8=;
	b=Xoi8mGHabFUPlnMtIKdjCTnfxuRO4O9kCdfr0xmP1b6LJiOmCrqYBW9sF2umIP/kBF
	81HtrtDbl2W7uwTE+cpoy63FxKopqxFSwnjeyMSx7hPcTBZpB509pDNx0b3NSnt/AGlw
	SOa9JJvh+Q+rOC3MVzcwJtjZbqnlEP5GiEaeC2LSeKy+6iwE4ghcjHiWLZ3tEDevDdOp
	M2g9nviez2zMEwsY/+tY6UXy9p4Ak7M+UEgu9xBiajJ2akkaUbVR2qGsYBJG+XB+XxOd
	jqb11ErKJeHobjH65oChWNYS4xJfW4+qZoUNJtCEgOvGcACQIKBaD+CrcGAedB4U5vI6
	0MAg==
Received: by 10.68.220.2 with SMTP id ps2mr42721490pbc.61.1351017953541;
	Tue, 23 Oct 2012 11:45:53 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id sa2sm8092284pbc.4.2012.10.23.11.45.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 11:45:52 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
Date: Tue, 23 Oct 2012 22:45:47 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: Performance improvements and machine build configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Oct 2012 18:45:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I noticed that between commits=20

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D0260bb5c697883=
9c068007fcff2f704937805faf

and=20

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da3d5e9e6b77293=
19c518dcaf25bbe0643bfb25db

the build time has improved by around 7 minutes for my machine =
configuration, for building a core-image-minimal rootfs for the Xilinx =
ZC-702 FPGA with dual ARM Cortex A-9 CPUs.

commit id 0260bb5c6978839c068007fcff2f704937805faf        took 29 =
minutes
commit id a3d5e9e6b7729319c518dcaf25bbe0643bfb25db  took 22 minutes

The machine configuration is an Intel i7 3770K over-clocked to 4.2GHz, =
with 16GB RAM at 1600Mhz, two 120GB SSDs configured into a striped disk =
array (Intel 330 series SSDs) with a write performance of 838MB/s and =
read performance of around 600MB/s, in RAID0 configuration, with a =
Corsair HT100 liquid CPU cooler keeping the CPU cool at around 52 degree =
centigrade during the build process. The motherboard is a gigabyte =
GA-Z77X-UP5TH

http://www.gigabyte.com/products/product-page.aspx?pid=3D4279#ov

This motherboard has a thunderbolt display port, so I can re-use my =
existing Apple Thunderbolt display. I've run Ubuntu 12.04.1 LTS and =
Ubuntu 12.10, and it appears to work after a few tweaks.

The only curious thing that I've noticed is that I don't see a large =
performance improvement using a standard 3TB Seagate Barracuda 7200 RPM =
HDD, and the two Intel Series 330 SSDs in a striped RAID0 configuration. =
The read (600MB/s) / write (838MB/s) figures are impressive, although I =
expected the read performance to be higher than write performance, as is =
normally with a single SSD. I'm using the motherboard's hardware RAID =
support on a 6GB/s SATA 3 port.

The 3TB HDD took the approximately 2 or 3 minutes longer than the 120GB =
x 2 RAID0 SSD configuration for commit id =
0260bb5c6978839c068007fcff2f704937805faf (31 minutes vs. 29 minutes).

My local.conf parallelism settings were set to 6 threads for bitbake and =
make, for the quad-core (virtual 8 cpu cores)system.

Has anyone tried yocto builds with a 6-core, 8-core or 10-core Xeon =
processor system? How do those figures fare? I'm thinking my current =
bottleneck might be the CPU and not the HDD (?!), for the yocto build =
workloads, which I find curious and would like to confirm.=20

Best regards,

Elvis Dowson=

