Return-Path: <sudhangathan@gmail.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7524E01440
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 22:02:06 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id e10so4815625qcy.13
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 22:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=FKqoG5paVK8a7ZnlESUUSsfm5M5I8e5/BXvMTYLH+7Q=;
	b=c0veSgACRY3KssZ/l8G/LWmYmOR8IlijJCmr1vjM9/ZS1yhPYorNrNd1D6yuTgF009
	g85vlS8QcnUeqk+NK67s70lRS/hdbfyE6eY+h5M0+Gbt1j6XfCWZkQrtFTCVFPz5eCcl
	OlvZhunGiAVuMTnbv4Hw52WJICgYiEToFqkg19LnBYWY5nRbs3kzHZvvzmBYeZjMU731
	xHmTwSnymnv55JOnw1Bk5NUN/2/OI6BbumWtl9Hga+TFntKk34NE2D74nOdfcKDgMyB8
	h4y/QiPniJP82kyuaIrl1ICtwgMmPCHd+vWCpWytXb3Oh2maKlA39m1neWwCD15Qy5OC
	Jc7Q==
X-Received: by 10.229.153.133 with SMTP id k5mr9778475qcw.41.1374642125340;
	Tue, 23 Jul 2013 22:02:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.95.9 with HTTP; Tue, 23 Jul 2013 22:01:45 -0700 (PDT)
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Wed, 24 Jul 2013 10:31:45 +0530
Message-ID: <CAGX3a9-9qLg2oU5AV6-g4AL9oSkqPO7xXpaSGh8Jto7DG78cyQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Amit Kumar <kumaramit124@gmail.com>
Subject: Arago project image fail to run in QEMU
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
X-List-Received-Date: Wed, 24 Jul 2013 05:02:09 -0000
Content-Type: multipart/alternative; boundary=90e6ba10afb7930ad104e23acfc8

--90e6ba10afb7930ad104e23acfc8
Content-Type: text/plain; charset=ISO-8859-1

for the records.! i missed yocto@yoctoproject.org as 'cc' in the previous
reply.
---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------


On Wed, Jul 24, 2013 at 8:36 AM, Amit Kumar <Amit.Kumar@lntinfotech.com>wrote:

> Hi,
>     I have follow the steps you have suggested.
> I have edit the local.conf file.
> But for that mcsdk build i am not able to directly run the- bitbake
> <keystone-II image>
> It required the toolchan path and the proper Machine name.
> //////////////////
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$ bitbake -k core-image-minimal
> ERROR: No valid toolchain in PATH
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$ TOOLCHAIN_BRAND=linaro bitbake -k
> core-image-minimal
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH
> (armv5).Toolchain tunings invalid:
> Tuning 'cortexa8thf-neon' has no defined features, and cannot be used.
>
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$ vim conf/setenv
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$ MACHINE=keystone-evm
> TOOLCHAIN_BRAND=linaro bitbake -k core-image-minimal
> Parsing recipes: 100%
> |######################################################################################################################|
> Time: 00:02:45
> Parsing of 1523 .bb files complete (0 cached, 1523 parsed). 1887 targets,
> 169 skipped, 7 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.17.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "keystone-evm"
>
the above line should be as MACHINE   ="qemuarm"
your change in the build/conf/local.conf has not taken effect, or did you
change it at all...?? please do read previous messages(e-mails) carefully..!


> DISTRO            = "arago"
> DISTRO_VERSION    = "2013.04"
> TUNE_FEATURES     = "${TUNE_FEATURES_tune-cortexa8thf-neon}"
> TARGET_FPU        = "soft"
> meta-arago-distro
> meta-arago-extras = "(nobranch):bbd86e9ef42185f62b52a1932f6aba7ea44ca0a6"
> toolchain-layer
> meta-oe           = "(nobranch):f00028caf257e386c0f3ae46bd4b3ba53dd0729d"
> meta-ti           = "(nobranch):e060e4729a9f3f433eac6af717ccc22b37686129"
> meta-linaro       = "(nobranch):d0558fa4304592622423582f8b464e1c22cfe6f1"
> meta              = "(nobranch):0785489d558c34cacf5cb349949a15e27084efbf"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 1550 tasks of which 1546 didn't need to be
> rerun and all succeeded.
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$
> /////////////////
>
>
> But result still the same i can't be execute that image in qemu. I don't
> know what wrong i am doing....
> If you get any idea  from the log or u need more detailed log plz let me
> know
>
> Thanks
> Amit K
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] On
> Behalf Of Sudhangathan B S [sudhangathan@gmail.com]
> Sent: Monday, July 22, 2013 9:09 AM
> To: amit kumar
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Arago project image fail to run in QEMU
>
> These simple steps should do..
>
> change your local.conf file to appear like this:
>
> #
> # Machine Selection
> #
> # You need to select a specific machine to target the build with. There
> are a selection
> # of emulated machines available which can boot and run in the QEMU
> emulator:
> #
> MACHINE ?= "qemuarm"                                         <---- note
> this
> #MACHINE ?= "qemumips"
> #MACHINE ?= "qemuppc"
> #MACHINE ?= "qemux86"
> #MACHINE ?= "qemux86-64"
> #
> # There are also the following hardware board target machines included for
> # demonstration purposes:
> #
> #MACHINE ?= "atom-pc"
> #MACHINE ?= "beagleboard"
> #MACHINE ?= "mpc8315e-rdb"
> #MACHINE ?= "routerstationpro"
> #
> # This sets the default machine to be qemux86 if no other machine is
> selected:
> #MACHINE ??= "qemux86"
>
> now run (internet/downloading is necessary):
> "bitbake <keystone-II image>"
> you can find the built images in deploy/images folder, which you don't
> need to
> access, then to start the virtual machine, just type (from the same path
> as bitbake):
> "runqemu qemuarm"
> Type *your user password when asked for. Done.
>
> Best,
> ---------------------------------
> Sudhangathan BS
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>
> On Mon, Jul 22, 2013 at 8:02 AM, amit kumar <kumaramit124@gmail.com
> <mailto:kumaramit124@gmail.com>> wrote:
> Hi Sudhangathan
>         Thanks for replay.
> So i have to build a separate image to run under the QEMU, for that do i
> need to build it with my yocto project build environment with adding the
> layers.
> Or do i need to use the same build environment and just change the
> local.conf file?
> Keystone-II is a arm processor.
>
>
> Thanks & Regards
> Amit K
>
>
>
>
>
> On Sat, Jul 20, 2013 at 8:41 AM, Sudhangathan BS <sudhangathan@gmail.com
> <mailto:sudhangathan@gmail.com>> wrote:
>
> Hi Amit,
>
> You have to build separate images to be run on qemu.. You have to set it
> in your local.conf file.. i.e. u have to change your build-target..
>
> Images built to run on hardware cannot be run on qemu right now..
>
> Virtualization is only available upto processor level, and not the
> complete hardware...!
>
> Which processor is keystone-II using..?
>
> Best,
> Sudhangathan B S
>
>
> amit kumar <kumaramit124@gmail.com<mailto:kumaramit124@gmail.com>> wrote:
>
> Hi,
>
>
> I have built the Arago project for keystone-II successfully. The images
> are available under the deploy/Images dir.
>
> I have already added my module into the kernel and recompiled the kernel
> image.
>
>
>
> Now my doubt is before putting the image on actual hardware I want to run
> it on QEMU. Is it possible to run the built images on QEMU?
>
> I tried to run using the following command but getting an error-
>
>
> /**************************************************************/
>
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu
> arago-tmp-external-linaro-toolchain/deploy/images/uImage-keystone-evm.bin
> arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi
> Error: unknown file arg
> [arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]
>
> Usage: you can run this script with any valid combination
> of the following options (in any order):
>   QEMUARCH - the qemu machine architecture to use
>   KERNEL - the kernel image file to use
>   ROOTFS - the rootfs image file or nfsroot directory to use
>   MACHINE - the machine name (optional, autodetected from KERNEL filename
> if unspecified)
>   RAMFS - boot a ramfs-based image
>   Simplified QEMU command-line options can be passed with:
>     nographic - disables video console
>     serial - enables a serial console on /dev/ttyS0
>     kvm - enables KVM when running qemux86/qemux86-64 (VT-capable CPU
> required)
>   qemuparams="xyz" - specify custom parameters to QEMU
>   bootparams="xyz" - specify custom kernel parameters during boot
>
> Examples:
>   runqemu qemuarm
>   runqemu qemux86-64 core-image-sato ext3
>   runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
>   runqemu qemux86 ramfs
>   runqemu qemux86 qemuparams="-m 256"
>   runqemu qemux86 bootparams="psplash=false"
> amit@amit-HP:~/OE/MCSDK/mcsdk/build$
>
> /**********************************************************/
>
> The build step I followed from the arago project build link-
>
> "http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment"
>
>
>
> Please let me know if I have to do something else to run the image under
> QEMU.
>
> --
> Thanks & Regards
> Amit Kumar
>
> ________________________________
>
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>
> --
> Sent from Kaiten Mail. Please excuse my brevity.
>
>
>
> --
> Thanks & Regards
> Amit Kumar
>
>
> The contents of this e-mail and any attachment(s) may contain confidential
> or privileged information for the intended recipient(s). Unintended
> recipients are prohibited from taking action on the basis of information in
> this e-mail and  using or disseminating the information,  and must notify
> the sender and delete it from their system. L&T Infotech will not accept
> responsibility or liability for the accuracy or completeness of, or the
> presence of any virus or disabling code in this e-mail"
>

--90e6ba10afb7930ad104e23acfc8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">for the records.! i missed <a href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a> as &#39;cc&#39; in the previous reply=
.<br><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_extra"=
><div class=3D"im">

<div>---------------------------------<br>Sudhangathan BS<br>Ph:<a href=3D"=
tel:%28%2B91%29%209731-905-205" value=3D"+919731905205" target=3D"_blank">(=
+91) 9731-905-205</a><br>---------------------------------</div>
<br><br></div><div class=3D"gmail_quote"><div><div class=3D"h5">On Wed, Jul=
 24, 2013 at 8:36 AM, Amit Kumar <span dir=3D"ltr">&lt;<a href=3D"mailto:Am=
it.Kumar@lntinfotech.com" target=3D"_blank">Amit.Kumar@lntinfotech.com</a>&=
gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Hi,<br>
=A0 =A0 I have follow the steps you have suggested.<br>
I have edit the local.conf file.<br>
But for that mcsdk build i am not able to directly run the- bitbake &lt;key=
stone-II image&gt;<br>
It required the toolchan path and the proper Machine name.<br>
//////////////////<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$ bitbake -k core-image-minimal<br>
ERROR: No valid toolchain in PATH<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$ TOOLCHAIN_BRAND=3Dlinaro bitbake -k co=
re-image-minimal<br>
ERROR: =A0OE-core&#39;s config sanity checker detected a potential misconfi=
guration.<br>
=A0 =A0 Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).<br>
=A0 =A0 Following is the list of potential problems / advisories:<br>
<br>
=A0 =A0 Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH (ar=
mv5).Toolchain tunings invalid:<br>
Tuning &#39;cortexa8thf-neon&#39; has no defined features, and cannot be us=
ed.<br>
<br>
ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; faile=
d<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$ vim conf/setenv<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$ MACHINE=3Dkeystone-evm TOOLCHAIN_BRAND=
=3Dlinaro bitbake -k core-image-minimal<br>
Parsing recipes: 100% |####################################################=
##################################################################| Time: 0=
0:02:45<br>
Parsing of 1523 .bb files complete (0 cached, 1523 parsed). 1887 targets, 1=
69 skipped, 7 masked, 0 errors.<br>
<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.17.0&quot;<br>
TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;keystone-evm&quot;<br></blockquote></=
div></div><div>the above line should be as MACHINE =A0 =3D&quot;qemuarm&quo=
t;</div><div>your change in the build/conf/local.conf has not taken effect,=
 or did you change it at all...?? please do read previous messages(e-mails)=
 carefully..!</div>

<div><div class=3D"h5">
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;arago&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;2013.04&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;${TUNE_FEATURES_tune-cortexa8thf-neon}&quot=
;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;soft&quot;<br>
meta-arago-distro<br>
meta-arago-extras =3D &quot;(nobranch):bbd86e9ef42185f62b52a1932f6aba7ea44c=
a0a6&quot;<br>
toolchain-layer<br>
meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;(nobranch):f00028caf257e386c0f3ae46bd=
4b3ba53dd0729d&quot;<br>
meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;(nobranch):e060e4729a9f3f433eac6af717=
ccc22b37686129&quot;<br>
meta-linaro =A0 =A0 =A0 =3D &quot;(nobranch):d0558fa4304592622423582f8b464e=
1c22cfe6f1&quot;<br>
meta =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;(nobranch):0785489d558c34cacf5cb3=
49949a15e27084efbf&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: Tasks Summary: Attempted 1550 tasks of which 1546 didn&#39;t need to =
be rerun and all succeeded.<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$<br>
/////////////////<br>
<br>
<br>
But result still the same i can&#39;t be execute that image in qemu. I don&=
#39;t know what wrong i am doing....<br>
If you get any idea =A0from the log or u need more detailed log plz let me =
know<br>
<br>
Thanks<br>
Amit K<br>
<br>
________________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopro=
ject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] On Behalf O=
f Sudhangathan B S [<a href=3D"mailto:sudhangathan@gmail.com" target=3D"_bl=
ank">sudhangathan@gmail.com</a>]<br>



Sent: Monday, July 22, 2013 9:09 AM<br>
To: amit kumar<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
<div>Subject: Re: [yocto] Arago project image fail to run in QEMU<br>
<br>
</div><div><div>These simple steps should do..<br>
<br>
change your local.conf file to appear like this:<br>
<br>
#<br>
# Machine Selection<br>
#<br>
# You need to select a specific machine to target the build with. There are=
 a selection<br>
# of emulated machines available which can boot and run in the QEMU emulato=
r:<br>
#<br>
MACHINE ?=3D &quot;qemuarm&quot; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;---- note this<br>
#MACHINE ?=3D &quot;qemumips&quot;<br>
#MACHINE ?=3D &quot;qemuppc&quot;<br>
#MACHINE ?=3D &quot;qemux86&quot;<br>
#MACHINE ?=3D &quot;qemux86-64&quot;<br>
#<br>
# There are also the following hardware board target machines included for<=
br>
# demonstration purposes:<br>
#<br>
#MACHINE ?=3D &quot;atom-pc&quot;<br>
#MACHINE ?=3D &quot;beagleboard&quot;<br>
#MACHINE ?=3D &quot;mpc8315e-rdb&quot;<br>
#MACHINE ?=3D &quot;routerstationpro&quot;<br>
#<br>
# This sets the default machine to be qemux86 if no other machine is select=
ed:<br>
#MACHINE ??=3D &quot;qemux86&quot;<br>
<br>
now run (internet/downloading is necessary):<br>
&quot;bitbake &lt;keystone-II image&gt;&quot;<br>
you can find the built images in deploy/images folder, which you don&#39;t =
need to<br>
access, then to start the virtual machine, just type (from the same path as=
 bitbake):<br>
&quot;runqemu qemuarm&quot;<br>
Type *your user password when asked for. Done.<br>
<br>
Best,<br>
---------------------------------<br>
Sudhangathan BS<br>
Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+919731905205" targe=
t=3D"_blank">(+91) 9731-905-205</a><br>
---------------------------------<br>
<br>
<br>
</div></div><div>On Mon, Jul 22, 2013 at 8:02 AM, amit kumar &lt;<a href=3D=
"mailto:kumaramit124@gmail.com" target=3D"_blank">kumaramit124@gmail.com</a=
>&lt;mailto:<a href=3D"mailto:kumaramit124@gmail.com" target=3D"_blank">kum=
aramit124@gmail.com</a>&gt;&gt; wrote:<br>



Hi Sudhangathan<br>
=A0 =A0 =A0 =A0 Thanks for replay.<br>
So i have to build a separate image to run under the QEMU, for that do i ne=
ed to build it with my yocto project build environment with adding the laye=
rs.<br>
Or do i need to use the same build environment and just change the local.co=
nf file?<br>
Keystone-II is a arm processor.<br>
<br>
<br>
Thanks &amp; Regards<br>
Amit K<br>
<br>
<br>
<br>
<br>
<br>
</div><div>On Sat, Jul 20, 2013 at 8:41 AM, Sudhangathan BS &lt;<a href=3D"=
mailto:sudhangathan@gmail.com" target=3D"_blank">sudhangathan@gmail.com</a>=
&lt;mailto:<a href=3D"mailto:sudhangathan@gmail.com" target=3D"_blank">sudh=
angathan@gmail.com</a>&gt;&gt; wrote:<br>



<br>
Hi Amit,<br>
<br>
You have to build separate images to be run on qemu.. You have to set it in=
 your local.conf file.. i.e. u have to change your build-target..<br>
<br>
Images built to run on hardware cannot be run on qemu right now..<br>
<br>
Virtualization is only available upto processor level, and not the complete=
 hardware...!<br>
<br>
Which processor is keystone-II using..?<br>
<br>
Best,<br>
Sudhangathan B S<br>
<br>
<br>
</div><div><div>amit kumar &lt;<a href=3D"mailto:kumaramit124@gmail.com" ta=
rget=3D"_blank">kumaramit124@gmail.com</a>&lt;mailto:<a href=3D"mailto:kuma=
ramit124@gmail.com" target=3D"_blank">kumaramit124@gmail.com</a>&gt;&gt; wr=
ote:<br>


<br>
Hi,<br>
<br>
<br>
I have built the Arago project for keystone-II successfully. The images are=
 available under the deploy/Images dir.<br>
<br>
I have already added my module into the kernel and recompiled the kernel im=
age.<br>
<br>
<br>
<br>
Now my doubt is before putting the image on actual hardware I want to run i=
t on QEMU. Is it possible to run the built images on QEMU?<br>
<br>
I tried to run using the following command but getting an error-<br>
<br>
<br>
/**************************************************************/<br>
<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu arago-tmp-external-linaro-tool=
chain/deploy/images/uImage-keystone-evm.bin arago-tmp-external-linaro-toolc=
hain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ub=
i<br>



Error: unknown file arg [arago-tmp-external-linaro-toolchain/deploy/images/=
core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]<br>
<br>
Usage: you can run this script with any valid combination<br>
of the following options (in any order):<br>
=A0 QEMUARCH - the qemu machine architecture to use<br>
=A0 KERNEL - the kernel image file to use<br>
=A0 ROOTFS - the rootfs image file or nfsroot directory to use<br>
=A0 MACHINE - the machine name (optional, autodetected from KERNEL filename=
 if unspecified)<br>
=A0 RAMFS - boot a ramfs-based image<br>
=A0 Simplified QEMU command-line options can be passed with:<br>
=A0 =A0 nographic - disables video console<br>
=A0 =A0 serial - enables a serial console on /dev/ttyS0<br>
=A0 =A0 kvm - enables KVM when running qemux86/qemux86-64 (VT-capable CPU r=
equired)<br>
=A0 qemuparams=3D&quot;xyz&quot; - specify custom parameters to QEMU<br>
=A0 bootparams=3D&quot;xyz&quot; - specify custom kernel parameters during =
boot<br>
<br>
Examples:<br>
=A0 runqemu qemuarm<br>
=A0 runqemu qemux86-64 core-image-sato ext3<br>
=A0 runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial<br>
=A0 runqemu qemux86 ramfs<br>
=A0 runqemu qemux86 qemuparams=3D&quot;-m 256&quot;<br>
=A0 runqemu qemux86 bootparams=3D&quot;psplash=3Dfalse&quot;<br>
amit@amit-HP:~/OE/MCSDK/mcsdk/build$<br>
<br>
/**********************************************************/<br>
<br>
The build step I followed from the arago project build link-<br>
<br>
&quot;<a href=3D"http://arago-project.org/wiki/index.php/Setting_Up_Build_E=
nvironment" target=3D"_blank">http://arago-project.org/wiki/index.php/Setti=
ng_Up_Build_Environment</a>&quot;<br>
<br>
<br>
<br>
Please let me know if I have to do something else to run the image under QE=
MU.<br>
<br>
--<br>
Thanks &amp; Regards<br>
Amit Kumar<br>
<br>
________________________________<br>
<br>
yocto mailing list<br>
</div></div><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a>&lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org"=
 target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<div><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
<br>
<br>
<br>
--<br>
Sent from Kaiten Mail. Please excuse my brevity.<br>
<br>
<br>
<br>
--<br>
Thanks &amp; Regards<br>
Amit Kumar<br>
<br>
<br>
</div>The contents of this e-mail and any attachment(s) may contain confide=
ntial or privileged information for the intended recipient(s). Unintended r=
ecipients are prohibited from taking action on the basis of information in =
this e-mail and =A0using or disseminating the information, =A0and must noti=
fy the sender and delete it from their system. L&amp;T Infotech will not ac=
cept responsibility or liability for the accuracy or completeness of, or th=
e presence of any virus or disabling code in this e-mail&quot;<br>



</blockquote></div></div></div><br></div></div>
</div><br></div>

--90e6ba10afb7930ad104e23acfc8--
