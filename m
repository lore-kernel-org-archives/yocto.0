Return-Path: <john@mccabe.org.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E0DBE00D85; Fri, 28 Jun 2019 03:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [217.72.192.73 listed in list.dnswl.org]
X-Greylist: delayed 454 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Jun 2019 03:37:59 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D5A0E00994
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 03:37:59 -0700 (PDT)
Received: from oxbsltgw10.schlund.de ([172.19.249.27]) by
	mrelayeu.kundenserver.de (mreue109 [213.165.67.115]) with ESMTPSA
	(Nemesis) id 1MbRXj-1iHma810Ir-00bobV for <yocto@yoctoproject.org>;
	Fri, 28 Jun 2019 12:25:21 +0200
Date: Fri, 28 Jun 2019 11:25:20 +0100 (BST)
From: John McCabe <john@mccabe.org.uk>
To: yocto@yoctoproject.org
Message-ID: <600923197.440588.1561717520748@email.ionos.co.uk>
In-Reply-To: <784d3708-806e-04f5-55be-0775989d2f16@windriver.com>
References: <LNXP265MB0346E0B3875EEF62066F257ED1FD0@LNXP265MB0346.GBRP265.PROD.OUTLOOK.COM>
	<784d3708-806e-04f5-55be-0775989d2f16@windriver.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev58
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:6puXEo81QAwCo+TSDxt+Z91tTMibgwg5GVS9ZJBH3t6kLoMFdfz
	IfNjRlRkP7lfQk3CrU6jwbAJimabgaiMLjlyGtXIlHkoJ6rIaCa1TYpSMgRbkU1Z4ufPSBi
	P5Xuk1Qak51KU+PDQPOudBLJsG4zTWEMI2pG6otm6UVMgZDdNai5la65rK8ysGwLfNM2Kld
	0sI/YNew3uF8mv2nPFamw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7xhJv4wY6Do=:emn5sC761J/Inu5vcZJuZZ
	x+oj5NUGSA/4bcwerW4PDjHNs2knUO99Ve1BGr37ToRwlODj53sy6GuLoQlhR0NLXSMXTMeaH
	GcirxEcrfdLB55TpWVUNn60M3dYpg0c+e8uzemstBzUFu01ha8j1g8Okfya/mrQYvNJA+z7dK
	lO9FxyfKQjFXmD47EfmRQnzu2Q9G0GNL+ZDcrazsN2I2yG8KS/UR4o2wi0SIpnpGHOzFHdQKl
	+RhRLJrRpPHFP1zCk8Fh8okUBBgoP0wZfCet+B1yDBGxofZANES94B1PkscRzkWzEyWTCV/OK
	KUQQ7gZn9PBrR/uXjLxWWEoLfFhL8jnOTpCq4/W+9xaKvMlH+/8BENrsumpu+IgmB2mJG5xIJ
	CcAl76VoFJDiYTz6M2wmYdAI8kEwtDH/e8PyR/F8JoUyYPSaenJX6z7f6OAk6RK7LJ0kr6JZV
	5NM0Q2ALTtHWq9A1jPFBRNf/LI7IuBUYKEnVhozrBzn11MQ+O74Ynqk/rrwwXtWTO2bLaGX1J
	booQhFTwRJPXk4ejpCGKxbE092V1kFECvDUZYrjhMjPns8+Pf+vE6zig45O2uTnY/vwaDcTgp
	F0b4MyzBTq3n6BENJqUGD9k403dJmk71G+FVOqOT1xpOj57RSuWYuWQSwku9BISBfGolS6q1V
	HXKlSavLHbuycTLDaTkEGY0OthYVuhvf42L+c7//xEMP1Er0ueQ5LWeTYt6SmtWywExtuoTjE
	wAWZwYtWsehwRWORdTRKXdNv/7E4wAratq+19A7IdrDF9tKRcrEqXKpG4Pc=
Subject: Re: Recursions problem with pre-built versioned libraries and oe_soinstall
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
X-List-Received-Date: Fri, 28 Jun 2019 10:38:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Chen,

I'm a little confused by your message.

You've replied to my email to the Yocto mailing list, regarding a problem I=
'm having with Yocto, by suggesting I email this list if I have a problem w=
ith Yocto.

Unless I'm missing something, that doesn't make a lot of sense. Can you ple=
ase clarify?

Thanks

John

(PS - changed my subscription email address as my company's Outlook forces =
a load of random nonsense in the sig!).

> On 28 June 2019 at 10:47 ChenQi <Qi.Chen@windriver.com> wrote:=20
> =20
>=20
> Hi John,=20
> =20
>  When you have problems regarding yocto, please send email to this mailin=
g list.=20
> =20
>  Regards,=20
>  Chen Qi=20
> =20
>  On 06/28/2019 12:53 AM, John McCabe wrote:=20
> > Hi,=20
> > =20
> >  (Sorry for the long post, but....)=20
> > =20
> >  I'm new to Yocto etc and I'm struggling with configuring a recipe to i=
nstall some library files that I've built. The libraries in question are pa=
rt of OpenDDS, which I've cross-compiled for a Zynq-7000 target. At this po=
int I don't want to include the build of the libraries in the Yocto (actual=
ly PetaLinux) configuration as it takes hours to build, so I just want to a=
dd the shared libraries that are needed into the image. However I haven't m=
anaged to get this to work in hours, if not days, of trying. Despite multip=
le attempts at an opendds.bb file, I continue to get issues with:=20
> > =20
> >  =3D=3D=3D=20
> >  Exception: OSError: [Errno 40] too much recursions while resolving '<p=
roject-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.=
0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; loop in =
'<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds=
/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'=20
> >  =3D=3D=3D=20
> > =20
> >  Essentially there are a set of binaries and a set of shared libraries =
that I want to go into the image. If you look at the current version of the=
 opendds.bb file I'm using, below, you should see a list of the files in qu=
estion.=20
> > =20
> >  =3D=3D=3D=20
> >  #=20
> >  # This file is the OpenDDS libraries recipe.=20
> >  #=20
> > =20
> >  SUMMARY =3D "OpenDDS Libraries"=20
> >  SECTION =3D "PETALINUX/apps"=20
> >  LICENSE =3D "MIT"=20
> >  LIC_FILES_CHKSUM =3D ["file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade6=
98e0bcf8506ecda2f7b4f302"](file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade69=
8e0bcf8506ecda2f7b4f302)=20
> > =20
> >  SRC_URI =3D " [file://DCPSInfoRepo]() \=20
> >  [file://tao_cosnaming]() \=20
> >  [file://tao_imr]() \=20
> >  [file://tao_imr_activator]() \=20
> >  [file://tao_imr_locator]() \=20
> >  [file://tao_nsadd]() \=20
> >  [file://tao_nsdel]() \=20
> >  [file://tao_nslist]() \=20
> >  [file://libACE.so.6.2a_p15]() \=20
> >  [file://libACEXML.so.6.2a_p15]() \=20
> >  [file://libACEXML_Parser.so.6.2a_p15]() \=20
> >  [file://libOpenDDS_Dcps.so.3.13.2]() \=20
> >  [file://libOpenDDS_FACE.so.3.13.2]() \=20
> >  [file://libOpenDDS_Federator.so.3.13.2]() \=20
> >  [file://libOpenDDS_InfoRepoDiscovery.so.3.13.2]() \=20
> >  [file://libOpenDDS_InfoRepoLib.so.3.13.2]() \=20
> >  [file://libOpenDDS_InfoRepoServ.so.3.13.2]() \=20
> >  [file://libOpenDDS_Model.so.3.13.2]() \=20
> >  [file://libOpenDDS_Multicast.so.3.13.2]() \=20
> >  [file://libOpenDDS_Rtps.so.3.13.2]() \=20
> >  [file://libOpenDDS_Rtps_Udp.so.3.13.2]() \=20
> >  [file://libOpenDDS_Shmem.so.3.13.2]() \=20
> >  [file://libOpenDDS_Tcp.so.3.13.2]() \=20
> >  [file://libOpenDDS_Udp.so.3.13.2]() \=20
> >  [file://libOpenDDS_monitor.so.3.13.2]() \=20
> >  [file://libTAO.so.2.2a_p15]() \=20
> >  [file://libTAO_AnyTypeCode.so.2.2a_p15]() \=20
> >  [file://libTAO_Async_IORTable.so.2.2a_p15]() \=20
> >  [file://libTAO_Async_ImR_Client_IDL.so.2.2a_p15]() \=20
> >  [file://libTAO_BiDirGIOP.so.2.2a_p15]() \=20
> >  [file://libTAO_CSD_Framework.so.2.2a_p15]() \=20
> >  [file://libTAO_CSD_ThreadPool.so.2.2a_p15]() \=20
> >  [file://libTAO_CodecFactory.so.2.2a_p15]() \=20
> >  [file://libTAO_Codeset.so.2.2a_p15]() \=20
> >  [file://libTAO_CosNaming.so.2.2a_p15]() \=20
> >  [file://libTAO_CosNaming_Serv.so.2.2a_p15]() \=20
> >  [file://libTAO_CosNaming_Skel.so.2.2a_p15]() \=20
> >  [file://libTAO_DynamicInterface.so.2.2a_p15]() \=20
> >  [file://libTAO_FTORB_Utils.so.2.2a_p15]() \=20
> >  [file://libTAO_FT_ClientORB.so.2.2a_p15]() \=20
> >  [file://libTAO_FT_ServerORB.so.2.2a_p15]() \=20
> >  [file://libTAO_IDL_FE.so.2.2a_p15]() \=20
> >  [file://libTAO_IORManip.so.2.2a_p15]() \=20
> >  [file://libTAO_IORTable.so.2.2a_p15]() \=20
> >  [file://libTAO_ImR_Activator.so.2.2a_p15]() \=20
> >  [file://libTAO_ImR_Activator_IDL.so.2.2a_p15]() \=20
> >  [file://libTAO_ImR_Client.so.2.2a_p15]() \=20
> >  [file://libTAO_ImR_Locator.so.2.2a_p15]() \=20
> >  [file://libTAO_ImR_Locator_IDL.so.2.2a_p15]() \=20
> >  [file://libTAO_Messaging.so.2.2a_p15]() \=20
> >  [file://libTAO_PI.so.2.2a_p15]() \=20
> >  [file://libTAO_PI_Server.so.2.2a_p15]() \=20
> >  [file://libTAO_PortableGroup.so.2.2a_p15]() \=20
> >  [file://libTAO_PortableServer.so.2.2a_p15]() \=20
> >  [file://libTAO_Strategies.so.2.2a_p15]() \=20
> >  [file://libTAO_Svc_Utils.so.2.2a_p15]() \=20
> >  [file://libTAO_Valuetype.so.2.2a_p15]() \=20
> >  "=20
> > =20
> >  S =3D "${WORKDIR}"=20
> > =20
> >  do_install() {=20
> >  install -d ${D}${bindir}=20
> >  install -d ${D}${libdir}=20
> >  install -m 0755 DCPSInfoRepo ${D}${bindir}=20
> >  install -m 0755 tao_cosnaming ${D}${bindir}=20
> >  install -m 0755 tao_imr ${D}${bindir}=20
> >  install -m 0755 tao_imr_activator ${D}${bindir}=20
> >  install -m 0755 tao_imr_locator ${D}${bindir}=20
> >  install -m 0755 tao_nsadd ${D}${bindir}=20
> >  install -m 0755 tao_nsdel ${D}${bindir}=20
> >  install -m 0755 tao_nslist ${D}${bindir}=20
> >  oe_soinstall libACE.so.6.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libACEXML.so.6.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libACEXML_Parser.so.6.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Dcps.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_FACE.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Federator.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_InfoRepoDiscovery.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_InfoRepoLib.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_InfoRepoServ.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Model.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Multicast.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Rtps.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Rtps_Udp.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Shmem.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Tcp.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_Udp.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libOpenDDS_monitor.so.3.13.2 ${D}${libdir}=20
> >  oe_soinstall libTAO.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_AnyTypeCode.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Async_IORTable.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Async_ImR_Client_IDL.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_BiDirGIOP.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_CSD_Framework.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_CSD_ThreadPool.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_CodecFactory.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Codeset.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_CosNaming.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_CosNaming_Serv.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_CosNaming_Skel.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_DynamicInterface.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_FTORB_Utils.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_FT_ClientORB.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_FT_ServerORB.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_IDL_FE.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_IORManip.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_IORTable.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_ImR_Activator.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_ImR_Activator_IDL.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_ImR_Client.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_ImR_Locator.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_ImR_Locator_IDL.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Messaging.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_PI.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_PI_Server.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_PortableGroup.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_PortableServer.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Strategies.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Svc_Utils.so.2.2a_p15 ${D}${libdir}=20
> >  oe_soinstall libTAO_Valuetype.so.2.2a_p15 ${D}${libdir}=20
> >  }=20
> > =20
> >  # Don't bother trying to build the debug package, at least for now!=20
> >  INHIBIT_PACKAGE_STRIP =3D "1"=20
> >  INHIBIT_SYSROOT_STRIP =3D "1"=20
> >  INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"=20
> > =20
> >  # Inhibit warnings about files being stripped=20
> >  INSANE_SKIP_${PN} =3D "ldflags"=20
> >  INSANE_SKIP_${PN} =3D "already-stripped"=20
> > =20
> >  # No .h files to be packaged, so only list .so stuff=20
> >  FILES_${PN} =3D "${bindir}/* ${libdir}/*.so.*"=20
> >  FILES_${PN}-dev =3D "${bindir}/* ${libdir}/*.so"=20
> >  =3D=3D=3D=20
> > =20
> >  The files were all built in another folder but I've copied them into t=
he project-spec/meta-user/recipes-apps/opendds/files folder so that they ca=
n be picked up ok. I uses the normal install to do the binaries, and oe_soi=
nstall to work with the versioned shared libraries, as described in various=
 places.=20
> > =20
> >  I added a print statement into package.bbclass at line 1233 (see below=
) to try to get a bit more information into the log file about the point wh=
ere it's breaking). The log then shows this below (I presume that the stder=
r output being in the middle of that lot is just some sequencing effect):=
=20
> > =20
> >  =3D=3D=3D=20
> >  DEBUG: Executing python function package_fixsymlinks=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Svc_Utils.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ClientORB.so=
, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_Framework.s=
o, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps_Udp.so=
, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps.so, pk=
g: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_ImR_Clien=
t_IDL.so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_DynamicInterfac=
e.so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_AnyTypeCode.so,=
 pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Tcp.so, pkg=
: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator_I=
DL.so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoDis=
covery.so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoLib=
.so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML.so, pkg: ope=
ndds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO.so, pkg: opendd=
s-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Valuetype.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_BiDirGIOP.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Messaging.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORManip.so, pk=
g: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Serv.=
so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableServer.=
so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator.s=
o, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_IORTable.=
so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IDL_FE.so, pkg:=
 opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML_Parser.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_monitor.so,=
 pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Multicast.s=
o, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI_Server.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Strategies.so, =
pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Federator.s=
o, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Shmem.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Model.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI.so, pkg: ope=
ndds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CodecFactory.so=
, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ServerORB.so=
, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator.so,=
 pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACE.so, pkg: opendd=
s-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming.so, p=
kg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Dcps.so, pk=
g: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORTable.so, pk=
g: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Skel.=
so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator_IDL=
.so, pkg: opendds-devERROR: Error executing a python function in exec_pytho=
n_func() autogenerated:=20
> > =20
> >  The stack trace of python calls that resulted in this exception/failur=
e was:=20
> >  File: 'exec_python_func() autogenerated', lineno: 2, function: =20
> >  0001:=20
> >  *** 0002:package_fixsymlinks(d)=20
> >  0003:=20
> >  File: '/opt/pkg/petalinux/components/yocto/source/arm/layers/core/meta=
/classes/package.bbclass', lineno: 1236, function: package_fixsymlinks=20
> >  1232: for path in pkgfiles[pkg]:=20
> >  1233: print('path: %s, pkg: %s' % (path, pkg))=20
> >  1234: rpath =3D path[len(inst_root):]=20
> >  1235: pkg_files[pkg].append(rpath)=20
> >  *** 1236: rtarget =3D cpath.realpath(path, inst_root, True, assume_dir=
 =3D True)=20
> >  1237: if not cpath.lexists(rtarget):=20
> >  1238: dangling_links[pkg].append(os.path.normpath(rtarget[len(inst_roo=
t):]))=20
> >  1239:=20
> >  1240: newrdepends =3D {}=20
> >  File: '/opt/pkg/petalinux/components/yocto/source/arm/layers/core/meta=
/lib/oe/cachedpath.py', lineno: 229, function: realpath=20
> >  0225: # be printed a backtrace with 100s of OSError exceptions=20
> >  0226: # else=20
> >  0227: raise OSError(errno.ELOOP,=20
> >  0228: "too much recursions while resolving '%s'; loop in '%s'" %=20
> >  *** 0229: (file, e.strerror))=20
> >  0230:=20
> >  0231: raise=20
> >  0232:=20
> >  0233: return file=20
> >  Exception: OSError: [Errno 40] too much recursions while resolving '<p=
roject-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.=
0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; loop in =
'<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds=
/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'=20
> > =20
> >  DEBUG: Python function package_fixsymlinks finished=20
> >  DEBUG: Python function do_package finished=20
> >  ERROR: Function failed: package_fixsymlinks=20
> > =20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoSer=
v.so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_ThreadPool.=
so, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FTORB_Utils.so,=
 pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableGroup.s=
o, pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Client.so, =
pkg: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_FACE.so, pk=
g: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Codeset.so, pkg=
: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Udp.so, pkg=
: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_locator, pkg: =
opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_cosnaming, pkg: op=
endds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsdel, pkg: opendd=
s-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsadd, pkg: opendd=
s-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nslist, pkg: opend=
ds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_activator, pkg=
: opendds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/DCPSInfoRepo, pkg: ope=
ndds-dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr, pkg: opendds-=
dev=20
> >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnuea=
bi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p=
15, pkg: opendds=20
> >  =3D=3D=3D=20
> > =20
> >  In addition, I get a batch of the following messages coming out:=20
> > =20
> >  =3D=3D=3D=20
> >  1: opendds-1.0-r0 do_package - 0s (pid 23258)=20
> >  link recursion too deep, not expanding path '<project-base>/build/tmp/=
work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/li=
bTAO_Svc_Utils.so.2.2a_p15'.=20
> >  link recursion too deep, not expanding path '<project-base>/build/tmp/=
work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/li=
bTAO_PI_Server.so.2.2a_p15'.=20
> >  link recursion too deep, not expanding path '<project-base>/build/tmp/=
work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/li=
bTAO_PI.so.2.2a_p15'.=20
> >  =3D=3D=3D=20
> > =20
> >  And, when I go into the lib folder and list the contents, I see:=20
> > =20
> >  =3D=3D=3D=20
> >  :=20
> >  lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so -> li=
bTAO_PI_Server.so.2.2a_p15=20
> >  lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so.2.2a_=
p15 -> libTAO_PI_Server.so.2.2a_p15=20
> >  :=20
> >  =3D=3D=3D=20
> > =20
> >  With (on Ubuntu), all the filenames in red with a grey (or black?) bac=
kground, i.e. broken links.=20
> > =20
> >  I have a couple of questions about all this:=20
> > =20
> >  1) The oe_soinstall function (see here - https://git.yoctoproject.org/=
cgit.cgi/poky/plain/meta/classes/utils.bbclass) includes a line that instal=
ls (using "install") the xxx.so.x.y file, which causes a copy of the file f=
rom ${WORKDIR} to go into the <project-base>/build/tmp/work/cortexa9hf-neon=
-xilinx-linux-gnueabi.opendds/1.0-r0/image/usr/lib directory. It then gener=
ates sonamelink and solink from the library details and creates symbolic li=
nks that point back to the copies of the library files in ${WORKDIR}. In do=
ing that, the copy of the file that was placed there by the install line is=
 overwritten with the symbolic link; is that normal? (I presume it must be =
otherwise no one would be getting oe_soinstall to work!).=20
> > =20
> >  2) Is there anything in the shared library filenames' version part tha=
t could be causing something to get confused? I've seen mention of zzz.so.a=
.b.c etc where a, b and c are normally numeric, which is different to the v=
ersion information in the DDS files, but...=20
> > =20
> >  3) I can understand why there could be a recursion issue detected, but=
 it's not met who's putting those weird links into the package/usr/lib fold=
er. Is there something in the .bb file that I need to change to make that w=
ork properly?=20
> > =20
> >  4) Can anyone see whether I'm just simply doing something wrong and cl=
arify what I need to do to put it right?=20
> > =20
> >  Any help will be very, very gratefully appreciated. As I said, I'm new=
 to Yocto and have spent hours looking for help/example of the use of oe_so=
install. Each time round the loop of updating my .bb file and building it t=
akes quite a long time so...=20
> > =20
> >  Many thanks,=20
> >  John=20
> >=20
> > John=C2=A0McCabe=E2=80=8B

