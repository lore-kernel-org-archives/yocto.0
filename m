Return-Path: <munoz0raul@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E82E01346
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 07:13:40 -0700 (PDT)
Received: by lboi15 with SMTP id i15so4967079lbo.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 07:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mssayu0JCyCjyPIMihsqG496d2tD4581DbKACpa2nNg=;
	b=LNv6Yd2YwuEkO4cY7IiHJ4LL+OBgCEAJRqWFKPM0O2kvafSf+tGZTO3Oq11IUByIUK
	8xrNSQDs45MpmFB9NV2tCLdko2ue5ktKSy4yl2NnQ+hgtm6yfKMm67mR16ocGEMmALo8
	rPcQcIB88Sae22RpVHf20OF5A1+3aM+FFo22otYBBxwuFS5OOD9P46/N3z7cZTiHh1A2
	pepLrHkMN09o9fR+aePDN3gn8erYQmiKokbNirFcQ7BBKHaKVGwn/M3SBSlhYRrRdIlf
	FWZKj9bHB2UYgk8RqNY2BTIwiVqRzhpGY87ABEwQ2e7NOvPo5+dMoBx4TU/Nkx6ANM03
	7EyQ==
MIME-Version: 1.0
Received: by 10.152.102.137 with SMTP id fo9mr9946729lab.35.1347891219683;
	Mon, 17 Sep 2012 07:13:39 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Mon, 17 Sep 2012 07:13:39 -0700 (PDT)
In-Reply-To: <CAJTo0LbPddTir6e8msORdZ8mGAy8LAJ1R=g_c4+sFo-7g944Gw@mail.gmail.com>
References: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
	<CADzUK1J_aTDBpAwDiDAXXYom5OnfaK=N6VVevCrOEP-vmfG+Zg@mail.gmail.com>
	<CANmVirg-f6MBzXjFrN+aquFLs+aqm050AcB7URcZH54JrLtx5w@mail.gmail.com>
	<CAJTo0LbPddTir6e8msORdZ8mGAy8LAJ1R=g_c4+sFo-7g944Gw@mail.gmail.com>
Date: Mon, 17 Sep 2012 11:13:39 -0300
Message-ID: <CANmVirgP7_micpq-8=Gf4hzCfKo3HSXZ9hJGKaokho_2A6oDTQ@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Create a .bb for my aplication
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
X-List-Received-Date: Mon, 17 Sep 2012 14:13:41 -0000
Content-Type: multipart/alternative; boundary=f46d0407160b5859d604c9e66141

--f46d0407160b5859d604c9e66141
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I did what did you tell me but dont work.

I saw in the bitbake log some warning:

raul@phi04:/home/prjs/newcom0001/philinux/philinux-imx28-newcom$ bitbake
core-image-minimal
Loading cache: 100%
|##########################################################################=
#######################################|
ETA:  00:00:00
Loaded 1519 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
#####################################|
Time: 00:00:00
Parsing of 1185 .bb files complete (1184 cached, 1 parsed). 1518 targets,
52 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "imx28evk"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2.1"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto        =3D
"local/origin/denzil:73cdebf60df225ee10f2eb215935be3b61e1b831"
meta-fsl-arm      =3D
"local/origin/denzil:a207ac2953cdc046acef3190f58816df79119f1b"
meta-oe           =3D
"local/origin/denzil:04c61c8ed73cb2c537002f22d1b9656f6cec61af"

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
NOTE: multiple providers are available for jpeg-native (jpeg-native,
libjpeg-turbo-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 2110 of 2650 (ID: 238,
/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_install/
newcom_0.0.0.bb, do_install)
NOTE: package newcom-0.0.0-r0: task do_install: Started
NOTE: package newcom-0.0.0-r0: task do_install: Succeeded
NOTE: Running task 2646 of 2650 (ID: 243,
/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_install/
newcom_0.0.0.bb, do_package)
NOTE: package newcom-0.0.0-r0: task do_package: Started
WARNING: For recipe newcom, the following files/directories were installed
but not shipped in any package:
WARNING:   /home
WARNING:   /home/prjs
NOTE: package newcom-0.0.0-r0: task do_package: Succeeded
NOTE: Running task 2647 of 2650 (ID: 245,
/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_install/
newcom_0.0.0.bb, do_package_write_rpm)
NOTE: package newcom-0.0.0-r0: task do_package_write_rpm: Started
NOTE: package newcom-0.0.0-r0: task do_package_write_rpm: Succeeded
NOTE: Running noexec task 2648 of 2650 (ID: 242,
/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_install/
newcom_0.0.0.bb, do_package_write)
NOTE: Running task 2649 of 2650 (ID: 8,
/home/prjs/poky/meta/recipes-core/images/core-image-minimal.bb, do_rootfs)
NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Succeeded
NOTE: Running noexec task 2650 of 2650 (ID: 5,
/home/prjs/poky/meta/recipes-core/images/core-image-minimal.bb, do_build)
NOTE: Tasks Summary: Attempted 2650 tasks of which 2644 didn't need to be
rerun and all succeeded.

Summary: There were 3 WARNING messages shown.


And in /tmp/work/armv5te-poky-linux-gnueabi/ folder I did the command:

raul@phi04:/home/prjs/newcom0001/philinux/philinux-imx28-newcom/tmp/work/ar=
mv5te-poky-linux-gnueabi$
find . -name "prjs"
./python-2.7.2-r2.17/Python-2.7.2/build/temp.linux-i686-2.7/home/prjs
./module-init-tools-cross-3.16-r0/image/home/prjs
./module-init-tools-cross-3.16-r0/sysroot-destdir/home/prjs
./gcc-cross-initial-4.6.3+svnr184847-r25/image/home/prjs
./gcc-cross-initial-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs
./newcom-0.0.0-r0/prjs
./newcom-0.0.0-r0/image/home/prjs
./newcom-0.0.0-r0/package/home/prjs
./gcc-cross-intermediate-4.6.3+svnr184847-r25/image/home/prjs
./gcc-cross-intermediate-4.6.3+svnr184847-r25/image/home/prjs/newcom0001/ph=
ilinux/philinux-imx28-newcom/tmp/sysroots/i686-linux/usr/lib/armv5te-poky-l=
inux-gnueabi.gcc-cross-intermediate/gcc/arm-poky-linux-gnueabi/4.6.4/includ=
e-fixed/root/home/prjs
./gcc-cross-intermediate-4.6.3+svnr184847-r25/gcc-4_6-branch/build.i686-lin=
ux.arm-poky-linux-gnueabi/gcc/include-fixed/root/home/prjs
./gcc-cross-intermediate-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs
./gcc-cross-intermediate-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs/new=
com0001/philinux/philinux-imx28-newcom/tmp/sysroots/i686-linux/usr/lib/armv=
5te-poky-linux-gnueabi.gcc-cross-intermediate/gcc/arm-poky-linux-gnueabi/4.=
6.4/include-fixed/root/home/prjs
./gcc-cross-4.6.3+svnr184847-r25/image/home/prjs
./gcc-cross-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs
./binutils-cross-2.22-r6/image/home/prjs
./binutils-cross-2.22-r6/sysroot-destdir/home/prjs

now I don't know why this the prjs folder dont go to my root image in the
SD card!

Some suggest?

Thanks




2012/9/17 Burton, Ross <ross.burton@intel.com>

> On 17 September 2012 14:48, Raul Rosetto Munoz <munoz0raul@gmail.com>
> wrote:
> > I'm just want to mkdir in the /home/ path.
> >
> > Im try some thing like this but don't work!
> > do_install() {
> >     mkdir -p /home/prjs/
> > }
>
> You're creating a directory in the home directory on your build
> machine.  *Not* in the working area for the package.  You'll want to
> mkdir ${D}/home/prjs
>
> Ross
>



--=20
*Raul Rosetto Mu=F1oz*

--f46d0407160b5859d604c9e66141
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I did what did you tell me but dont work.<div><br></div><div>I saw in the b=
itbake log some warning:</div><div><br></div><div><div><font face=3D"&#39;c=
ourier new&#39;, monospace">raul@phi04:/home/prjs/newcom0001/philinux/phili=
nux-imx28-newcom$ bitbake core-image-minimal</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Loading cache: 100% |#=
###########################################################################=
#####################################| ETA: =A000:00:00</font></div><div><f=
ont face=3D"&#39;courier new&#39;, monospace">Loaded 1519 entries from depe=
ndency cache.</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Parsing recipes: 100% =
|##########################################################################=
#####################################| Time: 00:00:00</font></div><div><fon=
t face=3D"&#39;courier new&#39;, monospace">Parsing of 1185 .bb files compl=
ete (1184 cached, 1 parsed). 1518 targets, 52 skipped, 0 masked, 0 errors.<=
/font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">OE Build Configuration:</fo=
nt></div><div><font face=3D"&#39;courier new&#39;, monospace">BB_VERSION =
=A0 =A0 =A0 =A0=3D &quot;1.15.2&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">TARGET_ARCH =A0 =A0 =
=A0 =3D &quot;arm&quot;</font></div><div><font face=3D"&#39;courier new&#39=
;, monospace">TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;</font=
></div><div><font face=3D"&#39;courier new&#39;, monospace">MACHINE =A0 =A0=
 =A0 =A0 =A0 =3D &quot;imx28evk&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">DISTRO =A0 =A0 =A0 =A0=
 =A0 =A0=3D &quot;poky&quot;</font></div><div><font face=3D"&#39;courier ne=
w&#39;, monospace">DISTRO_VERSION =A0 =A0=3D &quot;1.2.1&quot;</font></div>=
<div><font face=3D"&#39;courier new&#39;, monospace">TUNE_FEATURES =A0 =A0 =
=3D &quot;armv5 dsp thumb arm926ejs&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">TARGET_FPU =A0 =A0 =A0=
 =A0=3D &quot;soft&quot;</font></div><div><font face=3D"&#39;courier new&#3=
9;, monospace">meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</font></div><div><font face=
=3D"&#39;courier new&#39;, monospace">meta-yocto =A0 =A0 =A0 =A0=3D &quot;l=
ocal/origin/denzil:73cdebf60df225ee10f2eb215935be3b61e1b831&quot;</font></d=
iv>
<div><font face=3D"&#39;courier new&#39;, monospace">meta-fsl-arm =A0 =A0 =
=A0=3D &quot;local/origin/denzil:a207ac2953cdc046acef3190f58816df79119f1b&q=
uot;</font></div><div><font face=3D"&#39;courier new&#39;, monospace">meta-=
oe =A0 =A0 =A0 =A0 =A0 =3D &quot;local/origin/denzil:04c61c8ed73cb2c537002f=
22d1b9656f6cec61af&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">NOTE: Resolving any missing=
 task queue dependencies</font></div><div><font face=3D"&#39;courier new&#3=
9;, monospace">NOTE: multiple providers are available for jpeg (jpeg, libjp=
eg-turbo)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: consider definin=
g a PREFERRED_PROVIDER entry to match jpeg</font></div><div><font face=3D"&=
#39;courier new&#39;, monospace">NOTE: multiple providers are available for=
 jpeg-native (jpeg-native, libjpeg-turbo-native)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: consider definin=
g a PREFERRED_PROVIDER entry to match jpeg-native</font></div><div><font fa=
ce=3D"&#39;courier new&#39;, monospace">NOTE: Preparing runqueue</font></di=
v>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Executing SetSce=
ne Tasks</font></div><div><font face=3D"&#39;courier new&#39;, monospace">N=
OTE: Executing RunQueue Tasks</font></div><div><font face=3D"&#39;courier n=
ew&#39;, monospace">NOTE: Running task 2110 of 2650 (ID: 238, /home/prjs/ne=
wcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_install/<a href=3D"http:/=
/newcom_0.0.0.bb">newcom_0.0.0.bb</a>, do_install)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: package newcom-0=
.0.0-r0: task do_install: Started</font></div><div><font face=3D"&#39;couri=
er new&#39;, monospace">NOTE: package newcom-0.0.0-r0: task do_install: Suc=
ceeded</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Running task 264=
6 of 2650 (ID: 243, /home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi=
/newcom_install/<a href=3D"http://newcom_0.0.0.bb">newcom_0.0.0.bb</a>, do_=
package)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: package newcom-0=
.0.0-r0: task do_package: Started</font></div><div><font face=3D"&#39;couri=
er new&#39;, monospace">WARNING: For recipe newcom, the following files/dir=
ectories were installed but not shipped in any package:</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">WARNING: =A0 /home</fo=
nt></div><div><font face=3D"&#39;courier new&#39;, monospace">WARNING: =A0 =
/home/prjs</font></div><div><font face=3D"&#39;courier new&#39;, monospace"=
>NOTE: package newcom-0.0.0-r0: task do_package: Succeeded</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Running task 264=
7 of 2650 (ID: 245, /home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi=
/newcom_install/<a href=3D"http://newcom_0.0.0.bb">newcom_0.0.0.bb</a>, do_=
package_write_rpm)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: package newcom-0=
.0.0-r0: task do_package_write_rpm: Started</font></div><div><font face=3D"=
&#39;courier new&#39;, monospace">NOTE: package newcom-0.0.0-r0: task do_pa=
ckage_write_rpm: Succeeded</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Running noexec t=
ask 2648 of 2650 (ID: 242, /home/prjs/newcom0001/philinux/meta-fsl-arm/reci=
pes-phi/newcom_install/<a href=3D"http://newcom_0.0.0.bb">newcom_0.0.0.bb</=
a>, do_package_write)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Running task 264=
9 of 2650 (ID: 8, /home/prjs/poky/meta/recipes-core/images/<a href=3D"http:=
//core-image-minimal.bb">core-image-minimal.bb</a>, do_rootfs)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: package core-ima=
ge-minimal-1.0-r0: task do_rootfs: Started</font></div><div><font face=3D"&=
#39;courier new&#39;, monospace">NOTE: package core-image-minimal-1.0-r0: t=
ask do_rootfs: Succeeded</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Running noexec t=
ask 2650 of 2650 (ID: 5, /home/prjs/poky/meta/recipes-core/images/<a href=
=3D"http://core-image-minimal.bb">core-image-minimal.bb</a>, do_build)</fon=
t></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Tasks Summary: A=
ttempted 2650 tasks of which 2644 didn&#39;t need to be rerun and all succe=
eded.</font></div><div><font face=3D"&#39;courier new&#39;, monospace"><br>
</font></div><div><font face=3D"&#39;courier new&#39;, monospace">Summary: =
There were 3 WARNING messages shown.</font></div><div><br></div><div><br></=
div><div>And in=A0/tmp/work/armv5te-poky-linux-gnueabi/ folder I did the co=
mmand:</div>
<div><br></div><div><div><font face=3D"&#39;courier new&#39;, monospace">ra=
ul@phi04:/home/prjs/newcom0001/philinux/philinux-imx28-newcom/tmp/work/armv=
5te-poky-linux-gnueabi$ find . -name &quot;prjs&quot;</font></div><div><fon=
t face=3D"&#39;courier new&#39;, monospace">./python-2.7.2-r2.17/Python-2.7=
.2/build/temp.linux-i686-2.7/home/prjs</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./module-init-tools-cr=
oss-3.16-r0/image/home/prjs</font></div><div><font face=3D"&#39;courier new=
&#39;, monospace">./module-init-tools-cross-3.16-r0/sysroot-destdir/home/pr=
js</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./gcc-cross-initial-4.=
6.3+svnr184847-r25/image/home/prjs</font></div><div><font face=3D"&#39;cour=
ier new&#39;, monospace">./gcc-cross-initial-4.6.3+svnr184847-r25/sysroot-d=
estdir/home/prjs</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./newcom-0.0.0-r0/prjs=
</font></div><div><font face=3D"&#39;courier new&#39;, monospace">./newcom-=
0.0.0-r0/image/home/prjs</font></div><div><font face=3D"&#39;courier new&#3=
9;, monospace">./newcom-0.0.0-r0/package/home/prjs</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./gcc-cross-intermedia=
te-4.6.3+svnr184847-r25/image/home/prjs</font></div><div><font face=3D"&#39=
;courier new&#39;, monospace">./gcc-cross-intermediate-4.6.3+svnr184847-r25=
/image/home/prjs/newcom0001/philinux/philinux-imx28-newcom/tmp/sysroots/i68=
6-linux/usr/lib/armv5te-poky-linux-gnueabi.gcc-cross-intermediate/gcc/arm-p=
oky-linux-gnueabi/4.6.4/include-fixed/root/home/prjs</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./gcc-cross-intermedia=
te-4.6.3+svnr184847-r25/gcc-4_6-branch/build.i686-linux.arm-poky-linux-gnue=
abi/gcc/include-fixed/root/home/prjs</font></div><div><font face=3D"&#39;co=
urier new&#39;, monospace">./gcc-cross-intermediate-4.6.3+svnr184847-r25/sy=
sroot-destdir/home/prjs</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./gcc-cross-intermedia=
te-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs/newcom0001/philinux/phili=
nux-imx28-newcom/tmp/sysroots/i686-linux/usr/lib/armv5te-poky-linux-gnueabi=
.gcc-cross-intermediate/gcc/arm-poky-linux-gnueabi/4.6.4/include-fixed/root=
/home/prjs</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./gcc-cross-4.6.3+svnr=
184847-r25/image/home/prjs</font></div><div><font face=3D"&#39;courier new&=
#39;, monospace">./gcc-cross-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs=
</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">./binutils-cross-2.22-=
r6/image/home/prjs</font></div><div><font face=3D"&#39;courier new&#39;, mo=
nospace">./binutils-cross-2.22-r6/sysroot-destdir/home/prjs</font></div></d=
iv>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"arial, helvetica, sans-serif">now I don&#39;t know why this t=
he prjs folder dont go to my root image in the SD card!</font></div><div><f=
ont face=3D"arial, helvetica, sans-serif"><br>
</font></div><div><font face=3D"arial, helvetica, sans-serif">Some suggest?=
</font></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></=
div><div><font face=3D"arial, helvetica, sans-serif">Thanks</font></div><di=
v>
<br></div><div><br></div><div><br></div><div><br><div class=3D"gmail_quote"=
>2012/9/17 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton=
@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span><br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
<div class=3D"im">On 17 September 2012 14:48, Raul Rosetto Munoz &lt;<a hre=
f=3D"mailto:munoz0raul@gmail.com">munoz0raul@gmail.com</a>&gt; wrote:<br>
&gt; I&#39;m just want to mkdir in the /home/ path.<br>
&gt;<br>
&gt; Im try some thing like this but don&#39;t work!<br>
</div>&gt; do_install() {<br>
&gt; =A0 =A0 mkdir -p /home/prjs/<br>
&gt; }<br>
<br>
You&#39;re creating a directory in the home directory on your build<br>
machine. =A0*Not* in the working area for the package. =A0You&#39;ll want t=
o<br>
mkdir ${D}/home/prjs<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><b>Raul Rosetto Mu=F1oz</b><br>
</div></div>

--f46d0407160b5859d604c9e66141--
