Return-Path: <richaw@gmail.com>
Received: from mail-yh0-f51.google.com (mail-yh0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A68ACE00C21
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 08:01:27 -0700 (PDT)
Received: by mail-yh0-f51.google.com with SMTP id f73so314559yha.10
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lItFkLwIsVU5sjCCCr0rxwR2auHeBkD2VfX3NQqamzY=;
	b=fO2qvrUWlYrY3jGpcgQKDfyge2Ez8bIzMXDhmDS54aCu8ulD5r/wb8jRVGdxhbkjYD
	/O5gdy6j87FxiXvaGGUANh86B5UB3DEqt7ZV/kYvaVuNTMly+shArFJA+MCGY1RLrnl4
	sX/s2lwVynHi1eW2OICKGERJFHE6Ty4cEHmXNcQVjwTFVQHs7MPwkM2pc0cCzw/CiEH9
	IxLJYy3vzNpcrUy6KrwuueUCXWDONwSrlE0dJ3NARgJMwIfYsYyEV7mNYfzxalB9UGMQ
	sAKDYovfuIRVRt2cXRjJNr8lK66J0ubWAxLeoe1yZa7KCsxE62z8pCJjJHVNXp5wFlgt
	INlg==
MIME-Version: 1.0
X-Received: by 10.236.87.139 with SMTP id y11mr47711558yhe.27.1398783687288;
	Tue, 29 Apr 2014 08:01:27 -0700 (PDT)
Received: by 10.170.131.197 with HTTP; Tue, 29 Apr 2014 08:01:27 -0700 (PDT)
Date: Tue, 29 Apr 2014 08:01:27 -0700
Message-ID: <CAPTvksAGZxgRtN0V=GPUVe3thxfQsm5Sox5ghZce5yDYf5dciw@mail.gmail.com>
From: Rich Wilson <richaw@gmail.com>
To: yocto@yoctoproject.org
Subject: mount.nfs missing
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
X-List-Received-Date: Tue, 29 Apr 2014 15:01:28 -0000
Content-Type: multipart/alternative; boundary=20cf301b63e9cc6d8a04f82fb41f

--20cf301b63e9cc6d8a04f82fb41f
Content-Type: text/plain; charset=UTF-8

I have a working target hardware, except that /sbin/mount.nfs
is missing from my root fs. I was able to get nfs to work by
manually copying mount.nfs (and brethren) from my development
system to the SD card, but it would be nice to hot have to do this!

In local.conf, I have added the following:

MACHINE ?= "zedboard-zynq7"
DISTRO_FEATURES_append = " nfs"
CORE_IMAGE_EXTRA_INSTALL += " nfs-utils"

and built using

rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build> bitbake core-image-basic
Loading cache: 100%
|#########################################################################################|
ETA:  00:00:00
Loaded 1194 entries from dependency cache.
Parsing recipes: 100%
|#######################################################################################|
Time: 00:00:00
Parsing of 862 .bb files complete (861 cached, 1 parsed). 1194 targets, 54
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "openSUSE-project-12.3"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard-zynq7"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5.1"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "<unknown>:<unknown>"
meta-xilinx       = "dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d"

NOTE: Preparing runqueue
<snip>

mount.nfs is missing from the output:

rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build/tmp/deploy/images/zedboard-zynq7>
tar -tzf core-image-minimal-zedboard-zynq7.tar.gz | grep nfs
./etc/init.d/nfsserver
./etc/init.d/umountnfs.sh
./etc/init.d/mountnfs.sh
./etc/rc0.d/K20nfsserver
./etc/rc0.d/S31umountnfs.sh
./etc/nfs-utils.conf
./etc/rc5.d/S20nfsserver
./etc/rc2.d/S20nfsserver
./etc/rc4.d/S20nfsserver
./etc/rc6.d/K20nfsserver
./etc/rc6.d/S31umountnfs.sh
./etc/network/if-pre-up.d/nfsroot
./etc/rcS.d/S45mountnfs.sh
./etc/rc1.d/K20nfsserver
./etc/rc3.d/S20nfsserver
./usr/sbin/rpc.nfsd
./usr/sbin/nfsstat
./usr/lib/libnfsidmap.so.0.3.0
./usr/lib/libnfsidmap.so.0
./usr/lib/libnfsidmap/
./usr/lib/libnfsidmap/static.so
./usr/lib/libnfsidmap/nsswitch.so
./var/lib/nfs/
./var/lib/nfs/rmtab
./var/lib/nfs/sm/
./var/lib/nfs/xtab
./var/lib/nfs/etab
./var/lib/nfs/state
./var/lib/nfs/v4recovery/
./var/lib/nfs/statd/
./var/lib/nfs/sm.bak/
rw@linux-cyy8
:~/Downloads/poky-dora-10.0.1/build/tmp/deploy/images/zedboard-zynq7>

I get the same result if I try core-image-basic.

-- 
Rich Wilson

--20cf301b63e9cc6d8a04f82fb41f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a working target hardware, except that /sbin/mount.=
nfs<div>is missing from my root fs. I was able to get nfs to work by</div><=
div>manually copying mount.nfs (and brethren) from my development</div><div=
>
system to the SD card, but it would be nice to hot have to do this!</div><d=
iv><br></div><div>In local.conf, I have added the following:</div><div><br>=
</div><div><div>MACHINE ?=3D &quot;zedboard-zynq7&quot;</div><div><div>DIST=
RO_FEATURES_append =3D &quot; nfs&quot;<br>
</div><div>CORE_IMAGE_EXTRA_INSTALL +=3D &quot; nfs-utils&quot;</div><div><=
br></div></div><div>and built using</div><div><br></div><div><div>rw@linux-=
cyy8:~/Downloads/poky-dora-10.0.1/build&gt; bitbake core-image-basic</div>
<div>Loading cache: 100% |#################################################=
########################################| ETA: =C2=A000:00:00</div><div>Loa=
ded 1194 entries from dependency cache.</div><div>Parsing recipes: 100% |##=
###########################################################################=
##########| Time: 00:00:00</div>
<div>Parsing of 862 .bb files complete (861 cached, 1 parsed). 1194 targets=
, 54 skipped, 0 masked, 0 errors.</div><div>NOTE: Resolving any missing tas=
k queue dependencies</div><div><br></div><div>Build Configuration:</div>
<div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.20.0&quot;</div><div=
>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><d=
iv>NATIVELSBSTRING =C2=A0 =3D &quot;openSUSE-project-12.3&quot;</div><div>T=
ARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;=
</div>
<div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zedboard-zynq7&qu=
ot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;pok=
y&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5.1&quot;</div><d=
iv>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot; armv7a vfp neon zynq&quot;</div><=
div>
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;</div><div>me=
ta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot=
;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div><div>meta-xilinx =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d&quot;</div>
<div><br></div><div>NOTE: Preparing runqueue</div><div>&lt;snip&gt;</div></=
div><div><br></div><div>mount.nfs is missing from the output:</div><div><br=
></div><div><div>rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build/tmp/deplo=
y/images/zedboard-zynq7&gt; tar -tzf core-image-minimal-zedboard-zynq7.tar.=
gz | grep nfs</div>
<div>./etc/init.d/nfsserver</div><div>./etc/init.d/umountnfs.sh</div><div>.=
/etc/init.d/mountnfs.sh</div><div>./etc/rc0.d/K20nfsserver</div><div>./etc/=
rc0.d/S31umountnfs.sh</div><div>./etc/nfs-utils.conf</div><div>./etc/rc5.d/=
S20nfsserver</div>
<div>./etc/rc2.d/S20nfsserver</div><div>./etc/rc4.d/S20nfsserver</div><div>=
./etc/rc6.d/K20nfsserver</div><div>./etc/rc6.d/S31umountnfs.sh</div><div>./=
etc/network/if-pre-up.d/nfsroot</div><div>./etc/rcS.d/S45mountnfs.sh</div>
<div>./etc/rc1.d/K20nfsserver</div><div>./etc/rc3.d/S20nfsserver</div><div>=
./usr/sbin/rpc.nfsd</div><div>./usr/sbin/nfsstat</div><div>./usr/lib/libnfs=
idmap.so.0.3.0</div><div>./usr/lib/libnfsidmap.so.0</div><div>./usr/lib/lib=
nfsidmap/</div>
<div>./usr/lib/libnfsidmap/static.so</div><div>./usr/lib/libnfsidmap/nsswit=
ch.so</div><div>./var/lib/nfs/</div><div>./var/lib/nfs/rmtab</div><div>./va=
r/lib/nfs/sm/</div><div>./var/lib/nfs/xtab</div><div>./var/lib/nfs/etab</di=
v>
<div>./var/lib/nfs/state</div><div>./var/lib/nfs/v4recovery/</div><div>./va=
r/lib/nfs/statd/</div><div>./var/lib/nfs/sm.bak/</div><div>rw@linux-cyy8:~/=
Downloads/poky-dora-10.0.1/build/tmp/deploy/images/zedboard-zynq7&gt;</div>
</div><div><br></div><div>I get the same result if I try core-image-basic.<=
/div><div><br></div>-- <br>Rich Wilson<div><br></div>
</div></div>

--20cf301b63e9cc6d8a04f82fb41f--
