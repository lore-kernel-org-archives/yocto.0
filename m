Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF445E008E2; Mon, 24 Nov 2014 19:17:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFA23E008D6
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 19:16:59 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id sAP3Gt9d013566
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 13:46:55 +1030
Message-Id: <cffbbdaa26a9cdb74f9da8d76dc896db17132f84@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Tue, 25 Nov 2014 13:46:55 +1030
MIME-Version: 1.0
Subject: New error in 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Nov 2014 03:17:05 -0000
Content-Type: multipart/alternative;
	boundary="=_7f6cd5898410b6047ab227fbaf3652e5"

--=_7f6cd5898410b6047ab227fbaf3652e5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have just downloaded poky 1.7 and am rebuilding the image. I get an=0A=
error that I did not when doing this in 1.6.1=0A=0Alachlan@lachlan-SVP13=
215PXB:~/poky/build-atmel$ bitbake=0Aatmel-qt5-demo-image -c populate_sd=
k=0A=0ABuild Configuration:=0ABB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "1.24.0"=0ABUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "x86_64-linux"=0ANATIVELSBSTRING=C2=A0=C2=A0 =3D "Ub=
untu-14.04"=0ATARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "=
arm-poky-linux-gnueabi"=0AMACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D "sama5d3xek"=0ADISTRO=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "poky"=0ADISTRO_VERSION=
=C2=A0=C2=A0=C2=A0 =3D "1.7"=0ATUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "arm armv7a vfp thumb callconvention-hard=0Acortexa5"=0ATARGET_FPU=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "vfp"=0Ameta-atmel=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=0A"my_branch:711809b0d91f816b10e70=
508986b3f43098000ba"=0Ameta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D=0A"my_branch:0732e184acef5e0200f46d7f95702774e5de190=
4"=0Ameta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =0Ameta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =0Ameta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D=0A"dizzy:9bfb78bff606700176909a=
baa5cf8a332292738a"=0Ameta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =0Ameta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =0Ameta-networking=C2=A0=C2=A0 =0Ameta-ruby=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D=0A"my_branch:9efaed99125b1c4324663d9a1b2d3319c=
74e7278"=0A=0ANOTE: Preparing runqueue=0ANOTE: Executing SetScene Tasks=
=0ANOTE: Executing RunQueue Tasks=0AERROR: Command Error: exit status: 1=
=C2=A0 Output:=0AApplying patch CVE-2014-3613.patch=0Apatching file lib/=
cookie.c=0Apatching file tests/data/test1105=0Apatching file tests/data/=
test31=0AHunk #1 FAILED at 49 (different line endings).=0A1 out of 2 hun=
ks FAILED -- rejects in file tests/data/test31=0Apatching file tests/dat=
a/test8=0APatch CVE-2014-3613.patch does not apply (enforce with -f)=0AE=
RROR: Function failed: patch_do_patch=0AERROR: Logfile of failure stored=
 in:=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-lin=
ux-gnueabi/curl/7.37.1-r0/temp/log.do_patch.31221=0AERROR: Task 1666=0A(=
/home/lachlan/poky/meta/recipes-support/curl/curl_7.37.1.bb,=0Ado_patch)=
 failed with exit code '1'=0ANOTE: Tasks Summary: Attempted 2914 tasks o=
f which 2912 didn't need=0Ato be rerun and 1 failed.=0AWaiting for 0 run=
ning tasks to finish:=0A=0ASummary: 1 task failed:=0A=C2=A0 /home/lachla=
n/poky/meta/recipes-support/curl/curl_7.37.1.bb,=0Ado_patch=0ASummary: T=
here were 2 ERROR messages shown, returning a non-zero exit=0Acode.=0A=
=0Aany thoughts as to what this probleb could be.=0A____________________=
_______________________________________=0A=0AI also have problems with t=
he ADT cross compiler installer in V1.7=0Acompared with 1.6.1. where it=
 wont install the rootfs as follows:=0A=0A##############################=
###########################################=0A# Welcome to Yocto Applica=
tion Developement Tools (ADT) Installer=0A#=0A# Host Machine:=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 x86_6=
4=0A# OS info:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 3.13.0-39-generic=0A# Yocto ADT version to be instal=
led:=C2=A0=C2=A0=C2=A0 =0A# supported target architectures:=C2=A0=C2=A0=
=C2=A0 x86 x86_64 arm ppc mips=0A# supported target root_fs images:=C2=
=A0=C2=A0=C2=A0 minimal minimal-dev sato=0Asato-dev sato-sdk lsb lsb-dev=
 lsb-sdk=0A#############################################################=
############=0A=0ASystemwide installation. Installation will occur under=
 /opt/poky/1.7=0A=0A####################################################=
########################=0A# Your system installation configurations fro=
m adt_installer.conf=0A#################################################=
###########################=0A# Cross toolchains:=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 arm=0A# Install Qemu:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 Y=0A# Install NFS utilities:=C2=A0=C2=A0=C2=A0 Y=
=0A=0A##################################################################=
############=0A# Your rootfs image(s) and target sysroot selections from=
=0Aadt_installer.conf=0A################################################=
##############################=0A# Target architecture:=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 arm=0A# Target machine:=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 qemuarm=0A# Root_fs images:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 minimal sato-sdk=0A# Target sysroot image:=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 sato-sdk=0A# Target sysroot loc:=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 /home/lachlan/test-yocto/qemuarm=0A#####################=
#######################################################=0A=0ASuccessfull=
y installed selected native ADT!=0AInstalling target sysroot for arch: a=
rm, rootfs type: sato-sdk,=0Alocation: /home/lachlan/test-yocto/qemuarm=
=0A=0ATarget sysroot location: /home/lachlan/test-yocto/qemuarm, already=
=0Aexists! If you continue installation, this folder will be re-created.=
=0ACreating directory /home/lachlan/test-yocto/qemuarm...=0AExtracting r=
ootfs: core-image-sato-sdk-qemuarm.tar.bz2, using=0Apseudo...=0Atar (chi=
ld): ./download_image/core-image-sato-sdk-qemuarm.tar.bz2:=0ACannot open=
: No such file or directory=0Atar (child): Error is not recoverable: exi=
ting now=0Atar: Child returned status 2=0Atar: Error is not recoverable:=
 exiting now=0A=0AIs there anyway to overcome this or is it best to go b=
ack to 1.6.1=0A=0AThanks=0ALachlab=0A---- Message sent via Adam Internet=
 WebMail - http://www.adam.com.au/

--=_7f6cd5898410b6047ab227fbaf3652e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I have just downloaded poky 1.7 and am rebuilding the image.=
 I get an error that I did not when doing this in 1.6.1<br /><br />lachl=
an@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake atmel-qt5-demo-image=
 -c populate_sdk<br /><br />Build Configuration:<br />BB_VERSION=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.24.0"<br />BUILD_SYS=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux"<br />NATIV=
ELSBSTRING=C2=A0=C2=A0 =3D "Ubuntu-14.04"<br />TARGET_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm-poky-linux-gnueabi"<br />MACHINE=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "sama5d3xe=
k"<br />DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D "poky"<br />DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.7"<br=
 />TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7a vfp thumb callc=
onvention-hard cortexa5"<br />TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "vfp"<br />meta-atmel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D "my_branch:711809b0d91f816b10e70508986b3f43098000ba"<br />=
meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "my_b=
ranch:0732e184acef5e0200f46d7f95702774e5de1904"<br />meta=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br />me=
ta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br />meta-yocto-bsp=
=C2=A0=C2=A0=C2=A0 =3D "dizzy:9bfb78bff606700176909abaa5cf8a332292738a"<=
br />meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 <br />meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br />meta-networ=
king=C2=A0=C2=A0 <br />meta-ruby=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D "my_branch:9efaed99125b1c4324663d9a1b2d3319c74e7278"<br />=
<br />NOTE: Preparing runqueue<br />NOTE: Executing SetScene Tasks<br />=
NOTE: Executing RunQueue Tasks<br />ERROR: Command Error: exit status: 1=
=C2=A0 Output:<br />Applying patch CVE-2014-3613.patch<br />patching fil=
e lib/cookie.c<br />patching file tests/data/test1105<br />patching file=
 tests/data/test31<br />Hunk #1 FAILED at 49 (different line endings).<b=
r />1 out of 2 hunks FAILED -- rejects in file tests/data/test31<br />pa=
tching file tests/data/test8<br />Patch CVE-2014-3613.patch does not app=
ly (enforce with -f)<br />ERROR: Function failed: patch_do_patch<br />ER=
ROR: Logfile of failure stored in: /home/lachlan/poky/build-atmel/tmp/wo=
rk/cortexa5t2hf-vfp-poky-linux-gnueabi/curl/7.37.1-r0/temp/log.do_patch.=
31221<br />ERROR: Task 1666 (/home/lachlan/poky/meta/recipes-support/cur=
l/curl_7.37.1.bb, do_patch) failed with exit code '1'<br />NOTE: Tasks S=
ummary: Attempted 2914 tasks of which 2912 didn't need to be rerun and 1=
 failed.<br />Waiting for 0 running tasks to finish:<br /><br />Summary:=
 1 task failed:<br />=C2=A0 /home/lachlan/poky/meta/recipes-support/curl=
/curl_7.37.1.bb, do_patch<br />Summary: There were 2 ERROR messages show=
n, returning a non-zero exit code.<br /><br />any thoughts as to what th=
is probleb could be.<br />______________________________________________=
_____________<br /><br />I also have problems with the ADT cross compile=
r installer in V1.7 compared with 1.6.1. where it wont install the rootf=
s as follows:<br /><br />###############################################=
##########################<br /># Welcome to Yocto Application Developem=
ent Tools (ADT) Installer<br />#<br /># Host Machine:=C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 x86_64<br />#=
 OS info:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 3.13.0-39-generic<br /># Yocto ADT version to be installed:=
=C2=A0=C2=A0=C2=A0 <br /># supported target architectures:=C2=A0=C2=A0=
=C2=A0 x86 x86_64 arm ppc mips<br /># supported target root_fs images:=
=C2=A0=C2=A0=C2=A0 minimal minimal-dev sato sato-dev sato-sdk lsb lsb-de=
v lsb-sdk<br />#########################################################=
################<br /><br />Systemwide installation. Installation will o=
ccur under /opt/poky/1.7<br /><br />####################################=
########################################<br /># Your system installation=
 configurations from adt_installer.conf<br />###########################=
#################################################<br /># Cross toolchain=
s:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 arm<br /># Install Qemu:=C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Y<br /># Install NFS=
 utilities:=C2=A0=C2=A0=C2=A0 Y<br /><br />#############################=
#################################################<br /># Your rootfs ima=
ge(s) and target sysroot selections from adt_installer.conf<br />#######=
#######################################################################<=
br /># Target architecture:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 arm<br=
 /># Target machine:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 qemuarm<br />#=
 Root_fs images:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 minimal sato-sdk<b=
r /># Target sysroot image:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 sato-sd=
k<br /># Target sysroot loc:=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /home/=
lachlan/test-yocto/qemuarm<br />########################################=
####################################<br /><br />Successfully installed s=
elected native ADT!<br />Installing target sysroot for arch: arm, rootfs=
 type: sato-sdk, location: /home/lachlan/test-yocto/qemuarm<br /><br />T=
arget sysroot location: /home/lachlan/test-yocto/qemuarm, already exists=
! If you continue installation, this folder will be re-created.<br />Cre=
ating directory /home/lachlan/test-yocto/qemuarm...<br />Extracting root=
fs: core-image-sato-sdk-qemuarm.tar.bz2, using pseudo...<br />tar (child=
): ./download_image/core-image-sato-sdk-qemuarm.tar.bz2: Cannot open: No=
 such file or directory<br />tar (child): Error is not recoverable: exit=
ing now<br />tar: Child returned status 2<br />tar: Error is not recover=
able: exiting now<br /><br />Is there anyway to overcome this or is it b=
est to go back to 1.6.1<br /><br />Thanks<br />Lachlab<br />---- Message=
 sent via Adam Internet WebMail  - http://www.adam.com.au/</body></html>

--=_7f6cd5898410b6047ab227fbaf3652e5--
