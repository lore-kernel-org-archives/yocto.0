Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FB97E013E8
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 18:30:43 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id d49so45006eek.9
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 18:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zC6yZQRPnXeAp4rH7zPvkbE/3vrQertpQEmzz/h91sA=;
	b=06NBeSPTaKNrJBjcCaAV5HHFvDgJWYGiMqNV/BATOcW3EYVkoFNd9lKMK10+ZcbiHy
	JKHUlFc9Xiiwo8/CL2OOpC40kGPg5GeswrDSmPeayTaVGuG8ubGEvrwzQIYuyQzgV219
	wPqj9t7zjmqKUCnui+Rj5RmiA9ZYJgbNHvW+XwLmPgyWrXqwtKhN9t+GSAmCf10QVGue
	PXJ91QLE3kb0pSjAv1d2JlOVwKl6KO+BMuTGVBzXctba88f/8y4GFEqFChcgRMEd7lIb
	VHpEoMjQxX3qHzjtVKl0akdR2PUP0D0p31BHZ35Rs8kObaNu+QJ7XUN69VEDDaFH275M
	SMAg==
MIME-Version: 1.0
X-Received: by 10.14.0.131 with SMTP id 3mr60366752eeb.98.1373938242230; Mon,
	15 Jul 2013 18:30:42 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Mon, 15 Jul 2013 18:30:42 -0700 (PDT)
Date: Mon, 15 Jul 2013 19:30:42 -0600
Message-ID: <CANwz6nwcPctDHNQxoO2a0yQ7mgGoWbGS8415p9Dhj_fjk-NfkQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: zedboard & gnuradio
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
X-List-Received-Date: Tue, 16 Jul 2013 01:30:45 -0000
Content-Type: multipart/alternative; boundary=047d7b6042bedf45ae04e196ec7c

--047d7b6042bedf45ae04e196ec7c
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Any and all help will be appreciated.  I am trying to build gnuradio for
the zedboard.

After removing poky to clean out older builds
cd ~/POKY/build071513_zedboard/
cp -R ~/POKY/meta_data_from_remotes/poky/ .
cd poky/
cp -R ~/POKY/meta_data_from_remotes/meta-xilinx/ .
cp -R ~/POKY/meta_data_from_remotes/meta-oe/ .
cp -R ~/POKY/meta_data_from_remotes/meta-java/ .
. oe-init-build-env
cp ~/POKY/build071513_zedboard/local.conf conf/
cp ~/POKY/build071513_zedboard/bblayers.conf conf/
~/POKY/build071513_zedboard/core-image-minimal-ex.bb
DESCRIPTION = "A small image just capable of allowing a device to boot."

IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}
${CORE_IMAGE_EXTRA_INSTALL} gnuradio python-netserver"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image

IMAGE_ROOTFS_SIZE = "8192"

cp ~/POKY/build071513_zedboard/core-image-minimal-ex.bb../meta/recipes-core/images/
******************reverting back to boost-1.53.0*************************
cd ../meta/recipes-support/boost/
mkdir tmp
mv bjam-native_1.54.0.bb tmp/
mv boost_1.54.0.bb tmp/
mv boost-1.54.0.inc tmp/
mv boost.inc tmp/
mv files/ tmp/
/home/vidal/POKY/build071513_zedboard/poky/meta/recipes-support/boost
ls -la
total 36
drwxr-xr-x  4 vidal users 4096 Jul 15 16:02 .
drwxr-xr-x 59 vidal users 4096 Jul 15 15:53 ..
-rw-r--r--  1 vidal users  261 Jul 15 16:02 bjam-native_1.53.0.bb
-rw-r--r--  1 vidal users  109 Jul 15 16:02 boost_1.53.0.bb
-rw-r--r--  1 vidal users  840 Jul 15 16:02 boost-1.53.0.inc
-rw-r--r--  1 vidal users 6413 Jul 15 16:02 boost.inc
drwxr-xr-x  2 vidal users 4096 Jul 15 16:02 files
drwxr-xr-x  3 vidal users 4096 Jul 15 15:58 tmp
ls -la tmp/
total 32
drwxr-xr-x 3 vidal users 4096 Jul 15 15:58 .
drwxr-xr-x 4 vidal users 4096 Jul 15 16:02 ..
-rw-r--r-- 1 vidal users  261 Jul 15 15:53 bjam-native_1.54.0.bb
-rw-r--r-- 1 vidal users   98 Jul 15 15:53 boost_1.54.0.bb
-rw-r--r-- 1 vidal users  839 Jul 15 15:53 boost-1.54.0.inc
-rw-r--r-- 1 vidal users 6413 Jul 15 15:53 boost.inc
drwxr-xr-x 2 vidal users 4096 Jul 15 15:53 files
******************reverting back to boost-1.53.0*************************
cd /home/vidal/POKY
cd test_meta/poky/meta/recipes-support/boost/
cp -R * ~/POKY/build071513_zedboard/poky/meta/recipes-support/boost/

cd ~/POKY/build071513_zedboard/poky/
. oe-init-build-env
MACHINE=zedboard bitbake core-image-minimal-ex see contents of file above.
Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130715"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:4285e856aa073979bf046168a75188ccf5a1e7d4"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "master:0a210a7ea2bebd95d928f8c647b551a3f6abeffe"
meta-oe           = "master:9d53e8111db2a1dc2a3df05926d90988c08e7dbe"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "master:4285e856aa073979bf046168a75188ccf5a1e7d4"
The above build consists 4341 tasks
During the compile of gnuradio-3.6.5  The following warning was displayed.
WARNING: QA Issue: Found library in wrong location:
/usr/bin/qt4/examples/tools/plugandpaint/plugins/libpnp_extrafilters.so
Found library in wrong location:
/usr/bin/qt4/examples/tools/plugandpaint/plugins/.debug/libpnp_extrafilters.so
Found library in wrong location:
/usr/bin/qt4/examples/tools/styleplugin/styles/libsimplestyleplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/tools/styleplugin/styles/.debug/libsimplestyleplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/tools/echoplugin/plugin/libechoplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/tools/echoplugin/plugin/.debug/libechoplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/qwidgets/QWidgets/libqmlqwidgetsplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/qwidgets/QWidgets/.debug/libqmlqwidgetsplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/plugins/libqmlqwidgetsplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/plugins/.debug/libqmlqwidgetsplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/plugins/com/nokia/TimeExample/libqmlqtimeexampleplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/plugins/com/nokia/TimeExample/.debug/libqmlqtimeexampleplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/imageprovider/ImageProviderCore/libqmlimageproviderplugin.so
Found library in wrong location:
/usr/bin/qt4/examples/declarative/cppextensions/imageprovider/ImageProviderCore/.debug/libqmlimageproviderplugin.so

The following errors prevented the completion of the tasks 4341
ERROR: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
from qwt was already stripped, this will prevent future debugging!
ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
stripped, this will prevent future debugging!
ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was already
stripped, this will prevent future debugging!
WARNING: QA Issue: Found library in wrong location:
/usr/plugins/designer/libqwt_designer_plugin.so
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/vidal/POKY/build071513_zedboard/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/qwt/6.0.1-r1/temp/log.do_package.934
ERROR: Task 1123
(/home/vidal/POKY/build071513_zedboard/poky/meta-oe/meta-oe/recipes-qt/qwt/
qwt_6.0.1.bb, do_package) failed with exit code '1'

NOTE: Tasks Summary: Attempted 4321 tasks of which 367 didn't need to be
rerun and 1 failed.
Thanks

--047d7b6042bedf45ae04e196ec7c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br>Any and all help will be appreciated.=A0 I =
am trying to build gnuradio for the zedboard.<br><br>After removing poky to=
 clean out older builds<br>cd ~/POKY/build071513_zedboard/<br>cp -R ~/POKY/=
meta_data_from_remotes/poky/ .<br>
cd poky/<br>cp -R ~/POKY/meta_data_from_remotes/meta-xilinx/ .<br>cp -R ~/P=
OKY/meta_data_from_remotes/meta-oe/ .<br>cp -R ~/POKY/meta_data_from_remote=
s/meta-java/ .<br>. oe-init-build-env <br>cp ~/POKY/build071513_zedboard/lo=
cal.conf conf/<br>
cp ~/POKY/build071513_zedboard/bblayers.conf conf/<br>~/POKY/build071513_ze=
dboard/<a href=3D"http://core-image-minimal-ex.bb">core-image-minimal-ex.bb=
</a> <br>DESCRIPTION =3D &quot;A small image just capable of allowing a dev=
ice to boot.&quot;<br>
<br>IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTS=
TRAP} ${CORE_IMAGE_EXTRA_INSTALL} gnuradio python-netserver&quot;<br><br>IM=
AGE_LINGUAS =3D &quot; &quot;<br><br>LICENSE =3D &quot;MIT&quot;<br><br>inh=
erit core-image<br>
<br>IMAGE_ROOTFS_SIZE =3D &quot;8192&quot;<br><br>cp ~/POKY/build071513_zed=
board/<a href=3D"http://core-image-minimal-ex.bb">core-image-minimal-ex.bb<=
/a> ../meta/recipes-core/images/<br>******************reverting back to boo=
st-1.53.0************************* <br>
cd ../meta/recipes-support/boost/<br>mkdir tmp<br>mv <a href=3D"http://bjam=
-native_1.54.0.bb">bjam-native_1.54.0.bb</a> tmp/<br>mv <a href=3D"http://b=
oost_1.54.0.bb">boost_1.54.0.bb</a> tmp/<br>mv boost-1.54.0.inc tmp/<br>mv =
boost.inc tmp/<br>
mv files/ tmp/<br>/home/vidal/POKY/build071513_zedboard/poky/meta/recipes-s=
upport/boost<br>ls -la<br>total 36<br>drwxr-xr-x=A0 4 vidal users 4096 Jul =
15 16:02 .<br>drwxr-xr-x 59 vidal users 4096 Jul 15 15:53 ..<br>-rw-r--r--=
=A0 1 vidal users=A0 261 Jul 15 16:02 <a href=3D"http://bjam-native_1.53.0.=
bb">bjam-native_1.53.0.bb</a><br>
-rw-r--r--=A0 1 vidal users=A0 109 Jul 15 16:02 <a href=3D"http://boost_1.5=
3.0.bb">boost_1.53.0.bb</a><br>-rw-r--r--=A0 1 vidal users=A0 840 Jul 15 16=
:02 boost-1.53.0.inc<br>-rw-r--r--=A0 1 vidal users 6413 Jul 15 16:02 boost=
.inc<br>
drwxr-xr-x=A0 2 vidal users 4096 Jul 15 16:02 files<br>drwxr-xr-x=A0 3 vida=
l users 4096 Jul 15 15:58 tmp<br>ls -la tmp/<br>total 32<br>drwxr-xr-x 3 vi=
dal users 4096 Jul 15 15:58 .<br>drwxr-xr-x 4 vidal users 4096 Jul 15 16:02=
 ..<br>
-rw-r--r-- 1 vidal users=A0 261 Jul 15 15:53 <a href=3D"http://bjam-native_=
1.54.0.bb">bjam-native_1.54.0.bb</a><br>-rw-r--r-- 1 vidal users=A0=A0 98 J=
ul 15 15:53 <a href=3D"http://boost_1.54.0.bb">boost_1.54.0.bb</a><br>-rw-r=
--r-- 1 vidal users=A0 839 Jul 15 15:53 boost-1.54.0.inc<br>
-rw-r--r-- 1 vidal users 6413 Jul 15 15:53 boost.inc<br>drwxr-xr-x 2 vidal =
users 4096 Jul 15 15:53 files<br>******************reverting back to boost-=
1.53.0*************************<br>cd /home/vidal/POKY<br>cd test_meta/poky=
/meta/recipes-support/boost/<br>
cp -R * ~/POKY/build071513_zedboard/poky/meta/recipes-support/boost/<br><br=
>cd ~/POKY/build071513_zedboard/poky/<br>. oe-init-build-env<br>MACHINE=3Dz=
edboard bitbake core-image-minimal-ex see contents of file above.<br>Build =
Configuration:<br>
BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.19.1&quot;<br>BUILD_SYS=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =
=3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-=
poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;zedboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.4+snapshot-20130715&quot;<br>TUNE_FEATURES=A0=A0=
=A0=A0 =3D &quot; armv7a vfp neon zynq&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:4285e856aa073979bf=
046168a75188ccf5a1e7d4&quot;<br>
meta-xilinx=A0=A0=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-=
zc702=A0=A0=A0=A0=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;master:0=
a210a7ea2bebd95d928f8c647b551a3f6abeffe&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;master:9d53e8111db2a1dc2a3df05926d90988c08e7dbe&quot=
;<br>
meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:59696d89fd33df6953dcb2dd=
54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;master:4285e856=
aa073979bf046168a75188ccf5a1e7d4&quot;<br>The above build consists 4341 tas=
ks<br>During the compile of gnuradio-3.6.5=A0 The following warning was dis=
played.<br>
WARNING: QA Issue: Found library in wrong location: /usr/bin/qt4/examples/t=
ools/plugandpaint/plugins/libpnp_extrafilters.so<br>Found library in wrong =
location: /usr/bin/qt4/examples/tools/plugandpaint/plugins/.debug/libpnp_ex=
trafilters.so<br>
Found library in wrong location: /usr/bin/qt4/examples/tools/styleplugin/st=
yles/libsimplestyleplugin.so<br>Found library in wrong location: /usr/bin/q=
t4/examples/tools/styleplugin/styles/.debug/libsimplestyleplugin.so<br>
Found library in wrong location: /usr/bin/qt4/examples/tools/echoplugin/plu=
gin/libechoplugin.so<br>Found library in wrong location: /usr/bin/qt4/examp=
les/tools/echoplugin/plugin/.debug/libechoplugin.so<br>Found library in wro=
ng location: /usr/bin/qt4/examples/declarative/cppextensions/qwidgets/QWidg=
ets/libqmlqwidgetsplugin.so<br>
Found library in wrong location: /usr/bin/qt4/examples/declarative/cppexten=
sions/qwidgets/QWidgets/.debug/libqmlqwidgetsplugin.so<br>Found library in =
wrong location: /usr/bin/qt4/examples/declarative/cppextensions/plugins/lib=
qmlqwidgetsplugin.so<br>
Found library in wrong location: /usr/bin/qt4/examples/declarative/cppexten=
sions/plugins/.debug/libqmlqwidgetsplugin.so<br>Found library in wrong loca=
tion: /usr/bin/qt4/examples/declarative/cppextensions/plugins/com/nokia/Tim=
eExample/libqmlqtimeexampleplugin.so<br>
Found library in wrong location: /usr/bin/qt4/examples/declarative/cppexten=
sions/plugins/com/nokia/TimeExample/.debug/libqmlqtimeexampleplugin.so<br>F=
ound library in wrong location: /usr/bin/qt4/examples/declarative/cppextens=
ions/imageprovider/ImageProviderCore/libqmlimageproviderplugin.so<br>
Found library in wrong location: /usr/bin/qt4/examples/declarative/cppexten=
sions/imageprovider/ImageProviderCore/.debug/libqmlimageproviderplugin.so<b=
r><br>The following errors prevented the completion of the tasks 4341 <br>
ERROR: QA Issue: File &#39;/usr/plugins/designer/libqwt_designer_plugin.so&=
#39; from qwt was already stripped, this will prevent future debugging!<br>=
ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from qwt was alrea=
dy stripped, this will prevent future debugging!<br>
ERROR: QA Issue: File &#39;/usr/lib/libqwtmathml.so.6.0.1&#39; from qwt was=
 already stripped, this will prevent future debugging!<br>WARNING: QA Issue=
: Found library in wrong location: /usr/plugins/designer/libqwt_designer_pl=
ugin.so<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>ERROR: Fu=
nction failed: do_package_qa<br>ERROR: Logfile of failure stored in: /home/=
vidal/POKY/build071513_zedboard/poky/build/tmp/work/armv7a-vfp-neon-poky-li=
nux-gnueabi/qwt/6.0.1-r1/temp/log.do_package.934<br>
ERROR: Task 1123 (/home/vidal/POKY/build071513_zedboard/poky/meta-oe/meta-o=
e/recipes-qt/qwt/<a href=3D"http://qwt_6.0.1.bb">qwt_6.0.1.bb</a>, do_packa=
ge) failed with exit code &#39;1&#39;<br><br>NOTE: Tasks Summary: Attempted=
 4321 tasks of which 367 didn&#39;t need to be rerun and 1 failed.<br>
</div>Thanks <br></div>

--047d7b6042bedf45ae04e196ec7c--
