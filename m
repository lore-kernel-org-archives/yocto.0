Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43745E013D9
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 01:53:14 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so1902494pbc.35
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 01:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=WkWQFbhafrKjrAhigZZteGr4ytxvH+4K2MV89LlINcE=;
	b=uUI73iTcLRGsuKhIJynyTsg3yZlthcb6tC/6ZO9UouRwtTBov+riksatmvXIWRunui
	h1YKjlwYkta6JPvh9OBl+BsUXJXlp6BoCOC0MbrSoA3hN0rZAzKHSNLM3nHetYYqtJHV
	BV8E7dWdfKH5tMIqX4Uzwdxacjoqv2oI7/EIDV6ZQLMpHQMDzbEC9A8mXXB6OTRiaHr2
	kykH1AU1znxqXAAOhI0ffmLSOhcAj8lWEhlWHLYu3qcXbg0jTVBJnj1/j4r6vdS4Xaj4
	d1lfdOe8FR6xSF8kM0E/S80xJekYQDgcyKfVpgFWHGOTOmvENa7zBvjR0AVKZ5A5m/3O
	SizA==
Received: by 10.68.225.34 with SMTP id rh2mr58038071pbc.78.1351155193970;
	Thu, 25 Oct 2012 01:53:13 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.133.177])
	by mx.google.com with ESMTPS id ok3sm4759466pbb.11.2012.10.25.01.53.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 25 Oct 2012 01:53:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CB0328DE-EE56-4CBA-A27B-43048135AE0F@keylevel.com>
Date: Thu, 25 Oct 2012 12:53:08 +0400
Message-Id: <7BC64A7F-EE69-4C24-83ED-61F1EB836D71@gmail.com>
References: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
	<CB0328DE-EE56-4CBA-A27B-43048135AE0F@keylevel.com>
To: Chris Tapp <opensource@keylevel.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Performance improvements and machine build configuration
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
X-List-Received-Date: Thu, 25 Oct 2012 08:53:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Chris,
                 =20
On Oct 23, 2012, at 11:39 PM, Chris Tapp <opensource@keylevel.com> =
wrote:

> On 23 Oct 2012, at 19:45, Elvis Dowson wrote:
>=20
>> I noticed that between commits=20
>>=20
>> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D0260bb5c697883=
9c068007fcff2f704937805faf
>>=20
>> and=20
>>=20
>> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da3d5e9e6b77293=
19c518dcaf25bbe0643bfb25db
>>=20
>> the build time has improved by around 7 minutes for my machine =
configuration, for building a core-image-minimal rootfs for the Xilinx =
ZC-702 FPGA with dual ARM Cortex A-9 CPUs.
>>=20
>> commit id 0260bb5c6978839c068007fcff2f704937805faf        took 29 =
minutes
>> commit id a3d5e9e6b7729319c518dcaf25bbe0643bfb25db  took 22 minutes
>>=20
>> The machine configuration is an Intel i7 3770K over-clocked to =
4.2GHz, with 16GB RAM at 1600Mhz, two 120GB SSDs configured into a =
striped disk array (Intel 330 series SSDs) with a write performance of =
838MB/s and read performance of around 600MB/s, in RAID0 configuration, =
with a Corsair HT100 liquid CPU cooler keeping the CPU cool at around 52 =
degree centigrade during the build process. The motherboard is a =
gigabyte GA-Z77X-UP5TH
>>=20
>> http://www.gigabyte.com/products/product-page.aspx?pid=3D4279#ov
>>=20
>> This motherboard has a thunderbolt display port, so I can re-use my =
existing Apple Thunderbolt display. I've run Ubuntu 12.04.1 LTS and =
Ubuntu 12.10, and it appears to work after a few tweaks.
>>=20
>> The only curious thing that I've noticed is that I don't see a large =
performance improvement using a standard 3TB Seagate Barracuda 7200 RPM =
HDD, and the two Intel Series 330 SSDs in a striped RAID0 configuration. =
The read (600MB/s) / write (838MB/s) figures are impressive, although I =
expected the read performance to be higher than write performance, as is =
normally with a single SSD. I'm using the motherboard's hardware RAID =
support on a 6GB/s SATA 3 port.
>>=20
>> The 3TB HDD took the approximately 2 or 3 minutes longer than the =
120GB x 2 RAID0 SSD configuration for commit id =
0260bb5c6978839c068007fcff2f704937805faf (31 minutes vs. 29 minutes).
>>=20
>> My local.conf parallelism settings were set to 6 threads for bitbake =
and make, for the quad-core (virtual 8 cpu cores)system.
>>=20
>> Has anyone tried yocto builds with a 6-core, 8-core or 10-core Xeon =
processor system? How do those figures fare? I'm thinking my current =
bottleneck might be the CPU and not the HDD (?!), for the yocto build =
workloads, which I find curious and would like to confirm.=20
>=20
>=20
> I did quite a bit of experimenting with this a while back (similar =
spec, but with nearly 1000MB/s read/write SDD array). CPU was quad core =
with hyper-threading, so 8 virtual cores. I generally run with 16 =
threads, 16 parallel make as I find that the main performance hit is =
running out of stuff to keep all the cores busy.
>=20
> Most of the time all 8 cores are maxed out, but around when the kernel =
gets built (and cross tools needed for it) I see the total CPU use drop =
to about 25%. This isn't because the system is I/O bound; it simply =
doesn't have enough tasks ready to run at that point in time.
>=20
> I estimate that my 55 min build times would come down by 10 to 15 =
minutes if I could keep the CPUs busy (still, much better than the 10 =
hour build times on my previous system!).
>=20

With the poky/master branch commit =
33440ee70623394d06a4b214c2be10788cba6d08, which is the tip master =
branch, I tried two builds=20

01. parallelism set to 16, which took 23 minutes 21 seconds.

02. parallelism set to 6, which took less time at 22 minutes 13 seconds.

Therefore, for a quad core machine (Intel i7-3770K @ 4.2GHz =
over-clocked, 16GB 1600MHz RAM), setting the parallelism parameters to 6 =
appears to be better than setting it to 16.=20


Run # 01
=3D=3D=3D=3D=3D=3D=3D=3D

BB_NUMBER_THREADS =3D "16"
PARALLEL_MAKE =3D "-j 16"

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "zynq-zc702"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121025"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:33440ee70623394d06a4b214c2be10788cba6d08"
toolchain-layer   =3D "master:55855cd569fbff7182974ca08b1de8435bf0f597"
meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel configuration
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
** NOTE: There were 0 required options requested that do not
         have a corresponding value present in the final ".config" file.
         This is a violation of the policy defined by the higher level =
config
The full list can be found in your kernel src dir at:
meta/cfg/standard/zynq-zc702/missing_required.cfg
NOTE: Tasks Summary: Attempted 1396 tasks of which 227 didn't need to be =
rerun and all succeeded.

real	23m21.545s
user	99m42.990s
sys	11m20.835s



Run # 02
=3D=3D=3D=3D=3D=3D=3D=3D

BB_NUMBER_THREADS =3D "6"
PARALLEL_MAKE =3D "-j 6"

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "zynq-zc702"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121025"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:33440ee70623394d06a4b214c2be10788cba6d08"
toolchain-layer   =3D "master:55855cd569fbff7182974ca08b1de8435bf0f597"
meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel configuration
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
** NOTE: There were 0 required options requested that do not
         have a corresponding value present in the final ".config" file.
         This is a violation of the policy defined by the higher level =
config
The full list can be found in your kernel src dir at:
meta/cfg/standard/zynq-zc702/missing_required.cfg
NOTE: Tasks Summary: Attempted 1396 tasks of which 227 didn't need to be =
rerun and all succeeded.

real	22m13.749s
user	96m16.053s
sys	11m40.320s


Best regards,

Elvis Dowson



