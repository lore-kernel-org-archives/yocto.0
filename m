Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D7F3E013B0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 07:47:04 -0700 (PDT)
Received: by mail-ea0-f176.google.com with SMTP id z15so431623ead.35
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 07:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SOFnxg48rxFSc8rsFQbiHKufQOJ74gEUJ5EyzJ6os4w=;
	b=QpoLPdu+uCkxSRHjWbEThAjpMCrFc6pamPzrJfdgcaIjRRdrl09taQLLegj4kdZ3jg
	9IkZzbX3JIp+koazIh6Xb7jXdmlZaRRVQn5MHR6M98TdqiRPfaLN1Wg5U4QU/XhzRRia
	sKunvD2lmOkICksPrLXJrgMe8Zt2Dvj24gZndO5cB4cnSFQg5u6lbJv6Cp7PA62RJwtS
	HZWTvg4caHqcKRml+Q5GdUm88+KYd6nT9oI5h+aIoUoMFaRdPa5UZB42Ckc2S+JQS+oJ
	uSPtGjkzKxTmzGFcSOslgG8Nd94FpIJNV1FdptZEQgJJ3lMV7c+qHzBBD9rkwkdMoeWT
	GCFQ==
MIME-Version: 1.0
X-Received: by 10.14.0.131 with SMTP id 3mr1882723eeb.98.1373986023352; Tue,
	16 Jul 2013 07:47:03 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Tue, 16 Jul 2013 07:47:03 -0700 (PDT)
Date: Tue, 16 Jul 2013 08:47:03 -0600
Message-ID: <CANwz6nzHiBrXscuZS2Y1xXUThiwyo4AT7bD90VfVsh=Lt_cfLQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 16 Jul 2013 14:47:05 -0000
Content-Type: multipart/alternative; boundary=047d7b6042bed94b1404e1a20cf1

--047d7b6042bed94b1404e1a20cf1
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Any and all help will be appreciated.
testing not having to revert back to boost-1.53.0 The new pull of poky,
meta-oe, boost-1.54.0 compiled okay.
pull on 07/16/13 of all meta_data_from_remotes
cd POKY/build071613_zedboard/
cp -R ~/POKY/meta_data_from_remotes/poky/ .
cd poky/
cp -R ~/POKY/meta_data_from_remotes/meta-oe/ .
cp -R ~/POKY/meta_data_from_remotes/meta-xilinx/ .
p -R ~/POKY/meta_data_from_remotes/meta-java .
. oe-init-build-env
cp ~/POKY/build071613_zedboard/local.conf conf/
cp ~/POKY/build071613_zedboard/bblayers.conf conf/
cp ../../core-image-minimal-ex.bb ../meta/recipes-core/images/
/home/vidal/POKY/poky/patch_sato_gnuplot
MACHINE=zedboard bitbake core-image-minimal-ex 4333 tasks
Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130716"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:3dee534f1e25109e0bdb681de0746c336f4b8840"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
meta-oe           = "master:c383d6230942bb1558cee02764bced09031cb70f"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "master:3dee534f1e25109e0bdb681de0746c336f4b8840"
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
/home/vidal/POKY/build071613_zedboard/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/qwt/6.0.1-r1/temp/log.do_package.27159
ERROR: Task 1126
(/home/vidal/POKY/build071613_zedboard/poky/meta-oe/meta-oe/recipes-qt/qwt/
qwt_6.0.1.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4315 tasks of which 368 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/vidal/POKY/build071613_zedboard/poky/meta-oe/meta-oe/recipes-qt/qwt/
qwt_6.0.1.bb, do_package
Summary: There were 5 WARNING messages shown.
Summary: There were 5 ERROR messages shown, returning a non-zero exit code.
I will be looking where the qt libs need to be installed.

Thanks

--047d7b6042bed94b1404e1a20cf1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br>Any and all help will be appreciated.<br>te=
sting not having to revert back to boost-1.53.0 The new pull of poky, meta-=
oe, boost-1.54.0 compiled okay. <br>pull on 07/16/13 of all meta_data_from_=
remotes<br>
cd POKY/build071613_zedboard/<br>cp -R ~/POKY/meta_data_from_remotes/poky/ =
.<br>cd poky/<br>cp -R ~/POKY/meta_data_from_remotes/meta-oe/ .<br>cp -R ~/=
POKY/meta_data_from_remotes/meta-xilinx/ .<br>p -R ~/POKY/meta_data_from_re=
motes/meta-java .<br>
. oe-init-build-env <br>cp ~/POKY/build071613_zedboard/local.conf conf/<br>=
cp ~/POKY/build071613_zedboard/bblayers.conf conf/<br>cp ../../<a href=3D"h=
ttp://core-image-minimal-ex.bb">core-image-minimal-ex.bb</a> ../meta/recipe=
s-core/images/<br>
/home/vidal/POKY/poky/patch_sato_gnuplot<br>MACHINE=3Dzedboard bitbake core=
-image-minimal-ex 4333 tasks<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;1.19.1&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&q=
uot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.4+snapshot-20130716&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D =
&quot; armv7a vfp neon zynq&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;master:3dee534f1e25109e0bdb681de0746c336f4b8840&quot;<br>meta-xilinx=A0=
=A0=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-zc702=A0=A0=A0=
=A0=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;master:46f4c79d6d55b55=
6a90bb0fd89c2c09acf2aebff&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:c383d6230942bb1558ce=
e02764bced09031cb70f&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;m=
aster:59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=
=A0=A0 =3D &quot;master:3dee534f1e25109e0bdb681de0746c336f4b8840&quot;<br>
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
r><br><br>ERROR: QA Issue: File &#39;/usr/plugins/designer/libqwt_designer_=
plugin.so&#39; from qwt was already stripped, this will prevent future debu=
gging!<br>
ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from qwt was alrea=
dy stripped, this will prevent future debugging!<br>ERROR: QA Issue: File &=
#39;/usr/lib/libqwtmathml.so.6.0.1&#39; from qwt was already stripped, this=
 will prevent future debugging!<br>
WARNING: QA Issue: Found library in wrong location: /usr/plugins/designer/l=
ibqwt_designer_plugin.so<br>ERROR: QA run found fatal errors. Please consid=
er fixing them.<br>ERROR: Function failed: do_package_qa<br>ERROR: Logfile =
of failure stored in: /home/vidal/POKY/build071613_zedboard/poky/build/tmp/=
work/armv7a-vfp-neon-poky-linux-gnueabi/qwt/6.0.1-r1/temp/log.do_package.27=
159<br>
ERROR: Task 1126 (/home/vidal/POKY/build071613_zedboard/poky/meta-oe/meta-o=
e/recipes-qt/qwt/<a href=3D"http://qwt_6.0.1.bb">qwt_6.0.1.bb</a>, do_packa=
ge) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 431=
5 tasks of which 368 didn&#39;t need to be rerun and 1 failed.<br>
Waiting for 0 running tasks to finish:<br><br>Summary: 1 task failed:<br>=
=A0 /home/vidal/POKY/build071613_zedboard/poky/meta-oe/meta-oe/recipes-qt/q=
wt/<a href=3D"http://qwt_6.0.1.bb">qwt_6.0.1.bb</a>, do_package<br>Summary:=
 There were 5 WARNING messages shown.<br>
Summary: There were 5 ERROR messages shown, returning a non-zero exit code.=
<br></div><div>I will be looking where the qt libs need to be installed.<br=
><br></div>Thanks<br></div>

--047d7b6042bed94b1404e1a20cf1--
