Return-Path: <sudhangathan@gmail.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9D3CE005B1
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 23:00:23 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id cy11so4969307qeb.13
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 23:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=gwMfpTwpkN4kXqJmBHHyBzkfHsagMNNLoxmCG6hkoGQ=;
	b=GLpPtcS3r6wlJAs7pON4KNOkvouLD8lz/zeFW/GJ9/nunGP0t3F6nOcYpGEjmWW0bd
	Kkupo5Qc4KnXtDa83HnQy6mlPjCqv8P/mt7jlXVhVeamMwBhpfmonDaPidYrM6OfPOVv
	Gy4p6vAETel0RaJkbIy1LlBrctjflNk4kC2wO8Gxj9jK6gJquzUJISe7D+FuW/KIGZ7I
	2DTwKp/Q0CDUWDA/OiSqPK+SAnjK0IgcSrix6N2MC97NlyPuAhSsBnj3WCWZv7J+lf8s
	aPpJQLv3KIRpBx/aDSmgPDV1tQZtDBP+2zYo+y7DEl/RFNxFO7hQ+JZGUYSa1OwcdNd9
	NEKQ==
X-Received: by 10.224.61.198 with SMTP id u6mr52178533qah.41.1386745222768;
	Tue, 10 Dec 2013 23:00:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.21.4 with HTTP; Tue, 10 Dec 2013 23:00:02 -0800 (PST)
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Wed, 11 Dec 2013 12:30:02 +0530
Message-ID: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
To: "Gumstix users." <gumstix-users@lists.sourceforge.net>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Compiling kernel from external source in Yocto
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
X-List-Received-Date: Wed, 11 Dec 2013 07:00:26 -0000
Content-Type: multipart/alternative; boundary=089e015372ee65bd4204ed3cc8a6

--089e015372ee65bd4204ed3cc8a6
Content-Type: text/plain; charset=ISO-8859-1

Hi, I'm having this issue, I'm not able to compile a kernel source which I
have in my system, locally.

This is my recipe, after following instructions at
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#building-software-from-an-external-source

require linux.inc
#THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
DESCRIPTION = "Linux kernel for OMAP processors"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
KERNEL_IMAGETYPE = "uImage"
COMPATIBLE_MACHINE = "overo"
FILESEXTRAPATHS_prepend := "${THISDIR}/linux-omap-khilmanpm:"
PV = "3.5"
inherit externalsrc
S =
"/home/desen555/suan_work/kernel_work/khilman35-src-mods/linux-omap-khilmanpm"
B = "${WORKDIR}/git"
SRC_URI = "file://defconfig \
           file://omap2plus_defconfig \
           file://usb_off.patch \
           "

As you can see the kernel source directory is in S variable.

When the command "bitbake virtual/kernel" is run, i get this output

ERROR: Function failed: do_configure (see
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
for further information)
ERROR: Logfile of failure stored in:
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| sed: can't read
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/*defconfig:
No such file or directory*
| ERROR: Function failed: do_configure (see
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
for further information)
ERROR: Task 2
(/home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
linux-omap-khilmanpm_3.5.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
linux-omap-khilmanpm_3.5.bb, do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

If at all I put my defconfig file in the place it is looking for, then it
throws other errors, so I guess that is not the right way..

Anybody compiled kernel as an external source in yocto..??
---------------------------------
*Sudhangathan BS*
Ph:(+91) 9731-905-205
---------------------------------

--089e015372ee65bd4204ed3cc8a6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font size=3D"4">Hi, I&#39;m having this issue, I&#39;m no=
t able to compile a kernel source which I have in my system, locally.</font=
><div><br></div><div><font size=3D"4">This is my recipe, after following in=
structions at=A0<a href=3D"http://www.yoctoproject.org/docs/1.4/dev-manual/=
dev-manual.html#building-software-from-an-external-source">http://www.yocto=
project.org/docs/1.4/dev-manual/dev-manual.html#building-software-from-an-e=
xternal-source</a></font></div>

<div><br></div><div><div>require linux.inc</div><div>#THIS TEMPLATE COPIED =
FROM <a href=3D"http://linux-sakoman_3.5.bb">linux-sakoman_3.5.bb</a></div>=
<div>DESCRIPTION =3D &quot;Linux kernel for OMAP processors&quot;</div><div=
>

LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1b=
e7cd7&quot;</div><div>KERNEL_IMAGETYPE =3D &quot;uImage&quot;</div><div>COM=
PATIBLE_MACHINE =3D &quot;overo&quot;</div><div>FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/linux-omap-khilmanpm:&quot;<br>

</div><div>PV =3D &quot;3.5&quot;</div><div>inherit externalsrc</div><div>S=
 =3D &quot;/home/desen555/suan_work/kernel_work/khilman35-src-mods/linux-om=
ap-khilmanpm&quot;</div><div>B =3D &quot;${WORKDIR}/git&quot;</div><div>SRC=
_URI =3D &quot;file://defconfig \</div>

<div>=A0 =A0 =A0 =A0 =A0 =A0file://omap2plus_defconfig \</div><div>=A0 =A0 =
=A0 =A0 =A0 =A0file://usb_off.patch \</div><div>=A0 =A0 =A0 =A0 =A0 =A0&quo=
t;</div><div><br></div><div><font size=3D"4">As you can see the kernel sour=
ce directory is in S variable.</font></div>

<div><font size=3D"4"><br></font></div><div><font size=3D"4">When the comma=
nd &quot;bitbake virtual/kernel&quot; is run, i get this output</font></div=
><div><br></div><div><div>ERROR: Function failed: do_configure (see /home/d=
esen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/=
3.5-r0/temp/log.do_configure.28505 for further information)</div>

<div>ERROR: Logfile of failure stored in: /home/desen555/yocto/build/tmp/wo=
rk/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configu=
re.28505</div><div>Log data follows:</div><div>| DEBUG: Executing python fu=
nction sysroot_cleansstate</div>

<div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBU=
G: Executing shell function do_configure</div><div>| sed: can&#39;t read /h=
ome/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilm=
anpm/3.5-r0/<b>defconfig: No such file or directory</b></div>

<div>| ERROR: Function failed: do_configure (see /home/desen555/yocto/build=
/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_=
configure.28505 for further information)</div><div>ERROR: Task 2 (/home/des=
en555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/<a href=3D"http://linu=
x-omap-khilmanpm_3.5.bb">linux-omap-khilmanpm_3.5.bb</a>, do_configure) fai=
led with exit code &#39;1&#39;</div>

<div>NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn&#39;t need =
to be rerun and 1 failed.</div><div>Waiting for 0 running tasks to finish:<=
/div><div><br></div><div>Summary: 1 task failed:</div><div>=A0 /home/desen5=
55/yocto/poky/meta-dese_iisc/recipes-kernel/linux/<a href=3D"http://linux-o=
map-khilmanpm_3.5.bb">linux-omap-khilmanpm_3.5.bb</a>, do_configure</div>

<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div><div><br></div><div><font size=3D"4">If at all I put my defc=
onfig file in the place it is looking for, then it throws other errors, so =
I guess that is not the right way..</font></div>

<div><font size=3D"4"><br></font></div><div><font size=3D"4">Anybody compil=
ed kernel as an external source in yocto..??</font></div><div>-------------=
--------------------<br><b>Sudhangathan BS</b><br>Ph:(+91) 9731-905-205<br>

---------------------------------</div>
</div></div>

--089e015372ee65bd4204ed3cc8a6--
