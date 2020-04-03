Subject: Inappropriate error handling
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?VGhvbWFzIEvDtmxsZXI=?= <thomas@koeller.dyndns.org>
X-Originating-Location: Hamburg, DE (31.18.196.178)
X-Originating-Platform: Linux Firefox 74
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Apr 2020 02:50:56 -0700
Message-ID: <Dj2j.1585907456892659579.aMsW@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

here is an excerpt from a log of a failed build:

WARNING: icu-60.2-r0 do_populate_sysroot_setscene: Failed to fetch URL fil=
e://bd/sstate:icu:aarch64-poky-linux:60.2:r0:aarch64:3:bd6b12b7f20a46d35ce4=
d9382c306075_populate_sysroot.tgz;downloadfilename=3Dbd/sstate:icu:aarch64-=
poky-linux:60.2:r0:aarch64:3:bd6b12b7f20a46d35ce4d9382c306075_populate_sysr=
oot.tgz, attempting MIRRORS if available
ERROR: icu-60.2-r0 do_populate_sysroot_setscene: Fetcher failure: Unable t=
o find file file://bd/sstate:icu:aarch64-poky-linux:60.2:r0:aarch64:3:bd6b1=
2b7f20a46d35ce4d9382c306075_populate_sysroot.tgz;downloadfilename=3Dbd/ssta=
te:icu:aarch64-poky-linux:60.2:r0:aarch64:3:bd6b12b7f20a46d35ce4d9382c30607=
5_populate_sysroot.tgz anywhere. The paths that were searched were:
    /mnt/data/jenkins/workspace/imx-manifest_warrior/sstate
    /mnt/data/jenkins/workspace/imx-manifest_warrior/sstate
ERROR: icu-60.2-r0 do_populate_sysroot_setscene: No suitable staging packa=
ge found
WARNING: Logfile for failed setscene task is /mnt/data/jenkins/workspace/i=
mx-manifest_warrior/buildroot/imx8mqevk-basler/imx-4.14.98-2.0.0_ga_basler/=
basler-dart-bcon-mipi-dev/build/tmp/work/aarch64-poky-linux/icu/60.2-r0/tem=
p/log.do_populate_sysroot_setscene.44028
WARNING: Setscene task (/mnt/data/jenkins/workspace/imx-manifest_warrior/b=
uildroot/imx8mqevk-basler/imx-4.14.98-2.0.0_ga_basler/basler-dart-bcon-mipi=
-dev/sources/poky/meta/recipes-support/icu/icu_60.2.bb:do_populate_sysroot_=
setscene) failed with exit code '1' - real task will be run instead

As can be seen, a setscene task failed. I do not (yet) know why this happe=
ned, but that is not what this message is about. What matters is that the r=
eal task will be executed later, which works just fine, and the entire buil=
d runs to completion without any further errors. However, at the very end I=
 get the following output:

Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.

And then the non-zero exit code that is returned causes my script to take =
the error exit, even though the build products are all fine and perfectly u=
sable. This really should not happen.
