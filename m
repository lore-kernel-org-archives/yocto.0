Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAB45E00D88; Fri, 28 Jun 2019 04:14:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E0BBE009EA
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 04:14:39 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id n11so5784342qtl.5
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 04:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nIxGjgLvkLgqpBJj+IOMhLbq+iW/fQj6PyEcp6OhAyE=;
	b=U+Y15WnplAahBzu9q+8IXiS8B2IZ/HfuVGOgM+CXygCAqHpD5C9vFnGtmOxXMvsknO
	BUOaVmlW9tbFiLkMKjZ941mhGdX+fE03WKTk+aY5e4+pmdHQjm5lTqw9TxGTEbgSAoP6
	GhxMK5Siurp775bg/F/CTLSWGfLLz2P/FXspTDDTnh80akZfvcTZSb9h7ySiowNBmod+
	avCYTDq8wLeU4b07OAyEEcPp0hmdYXeBUSZR9TT6EHz1LDU4mVrElPF6mNCs6tnh6/O9
	usPld9xRpwVomLcDcQvUfrSNtlv/qZWIkz7Ga48+ubh+ee2d9iLLSnlOAKTFfwPOjVHM
	wTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nIxGjgLvkLgqpBJj+IOMhLbq+iW/fQj6PyEcp6OhAyE=;
	b=TCrg0xbkYpt7+FC40Ms4y4y/rb2YrpC57Wh4k+pjCG4lMIUF3k03iIAQ9/pNsnaiUV
	eE5A5pU8i0lPJmd8tuE/+Xmc8TnWeLYQqwulFOpUQCM6s0Fg2ZXPQrvMSfjEyYoXCkhz
	02b0TpfYITBU9V7XLpKkUMGY9ixBZ0we72kcK4q0UjhRmYnxQHuI75P2EZVr1gd1QcGW
	qLO0oY2CjOVoUkACc4qCiWBzn+EKEzwl8XT/i95RM4zqMUu4ThnwcYlPzqGC/5QhxX16
	W7UTxoaM5ApC2qNpwMb0jvUlIXqRbdTB7TH6RYtDMgNZ3cjwJnjcAkuT/ldQl5zox4Ej
	u6hA==
X-Gm-Message-State: APjAAAXwi4WHbhyjoS2algUEw+83WHKL/IzXzzNfLO1NYJZU8oOosJ/F
	/QFIhMKGh68M4aft7qpCvTyrbdnwSrv6ZVhIgl/WYslpc/k=
X-Google-Smtp-Source: APXvYqwr4wTajBleD0ki4qR5DjQsgl3fmGZUKg/znLSVWO5WPOsgPxLeLbOQlZoLVgIDsfgDtKJ7skZKk6BLzGWQ8yQ=
X-Received: by 2002:a0c:984a:: with SMTP id e10mr7422232qvd.57.1561720478745; 
	Fri, 28 Jun 2019 04:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <LNXP265MB0346E0B3875EEF62066F257ED1FD0@LNXP265MB0346.GBRP265.PROD.OUTLOOK.COM>
	<784d3708-806e-04f5-55be-0775989d2f16@windriver.com>
	<600923197.440588.1561717520748@email.ionos.co.uk>
In-Reply-To: <600923197.440588.1561717520748@email.ionos.co.uk>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 Jun 2019 13:14:27 +0200
Message-ID: <CAGAf8LynFQwKqHoMjTxMkikKi1xi9Wwqzs6ZzJGkzb0-enBtTA@mail.gmail.com>
To: John McCabe <john@mccabe.org.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Jun 2019 11:14:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> You've replied to my email to the Yocto mailing list, regarding a
> problem I'm having with Yocto, by suggesting I email this list if I
> have a problem with Yocto.

You can't deny that this is a symlink loop. On a higher level! ;-)

Zoran
_______

On Fri, Jun 28, 2019 at 12:39 PM John McCabe <john@mccabe.org.uk> wrote:
>
> Hi Chen,
>
> I'm a little confused by your message.
>
> You've replied to my email to the Yocto mailing list, regarding a problem=
 I'm having with Yocto, by suggesting I email this list if I have a problem=
 with Yocto.
>
> Unless I'm missing something, that doesn't make a lot of sense. Can you p=
lease clarify?
>
> Thanks
>
> John
>
> (PS - changed my subscription email address as my company's Outlook force=
s a load of random nonsense in the sig!).
>
> > On 28 June 2019 at 10:47 ChenQi <Qi.Chen@windriver.com> wrote:
> >
> >
> > Hi John,
> >
> >  When you have problems regarding yocto, please send email to this mail=
ing list.
> >
> >  Regards,
> >  Chen Qi
> >
> >  On 06/28/2019 12:53 AM, John McCabe wrote:
> > > Hi,
> > >
> > >  (Sorry for the long post, but....)
> > >
> > >  I'm new to Yocto etc and I'm struggling with configuring a recipe to=
 install some library files that I've built. The libraries in question are =
part of OpenDDS, which I've cross-compiled for a Zynq-7000 target. At this =
point I don't want to include the build of the libraries in the Yocto (actu=
ally PetaLinux) configuration as it takes hours to build, so I just want to=
 add the shared libraries that are needed into the image. However I haven't=
 managed to get this to work in hours, if not days, of trying. Despite mult=
iple attempts at an opendds.bb file, I continue to get issues with:
> > >
> > >  =3D=3D=3D
> > >  Exception: OSError: [Errno 40] too much recursions while resolving '=
<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/=
1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; loop i=
n '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opend=
ds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'
> > >  =3D=3D=3D
> > >
> > >  Essentially there are a set of binaries and a set of shared librarie=
s that I want to go into the image. If you look at the current version of t=
he opendds.bb file I'm using, below, you should see a list of the files in =
question.
> > >
> > >  =3D=3D=3D
> > >  #
> > >  # This file is the OpenDDS libraries recipe.
> > >  #
> > >
> > >  SUMMARY =3D "OpenDDS Libraries"
> > >  SECTION =3D "PETALINUX/apps"
> > >  LICENSE =3D "MIT"
> > >  LIC_FILES_CHKSUM =3D ["file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ad=
e698e0bcf8506ecda2f7b4f302"](file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade=
698e0bcf8506ecda2f7b4f302)
> > >
> > >  SRC_URI =3D " [file://DCPSInfoRepo]() \
> > >  [file://tao_cosnaming]() \
> > >  [file://tao_imr]() \
> > >  [file://tao_imr_activator]() \
> > >  [file://tao_imr_locator]() \
> > >  [file://tao_nsadd]() \
> > >  [file://tao_nsdel]() \
> > >  [file://tao_nslist]() \
> > >  [file://libACE.so.6.2a_p15]() \
> > >  [file://libACEXML.so.6.2a_p15]() \
> > >  [file://libACEXML_Parser.so.6.2a_p15]() \
> > >  [file://libOpenDDS_Dcps.so.3.13.2]() \
> > >  [file://libOpenDDS_FACE.so.3.13.2]() \
> > >  [file://libOpenDDS_Federator.so.3.13.2]() \
> > >  [file://libOpenDDS_InfoRepoDiscovery.so.3.13.2]() \
> > >  [file://libOpenDDS_InfoRepoLib.so.3.13.2]() \
> > >  [file://libOpenDDS_InfoRepoServ.so.3.13.2]() \
> > >  [file://libOpenDDS_Model.so.3.13.2]() \
> > >  [file://libOpenDDS_Multicast.so.3.13.2]() \
> > >  [file://libOpenDDS_Rtps.so.3.13.2]() \
> > >  [file://libOpenDDS_Rtps_Udp.so.3.13.2]() \
> > >  [file://libOpenDDS_Shmem.so.3.13.2]() \
> > >  [file://libOpenDDS_Tcp.so.3.13.2]() \
> > >  [file://libOpenDDS_Udp.so.3.13.2]() \
> > >  [file://libOpenDDS_monitor.so.3.13.2]() \
> > >  [file://libTAO.so.2.2a_p15]() \
> > >  [file://libTAO_AnyTypeCode.so.2.2a_p15]() \
> > >  [file://libTAO_Async_IORTable.so.2.2a_p15]() \
> > >  [file://libTAO_Async_ImR_Client_IDL.so.2.2a_p15]() \
> > >  [file://libTAO_BiDirGIOP.so.2.2a_p15]() \
> > >  [file://libTAO_CSD_Framework.so.2.2a_p15]() \
> > >  [file://libTAO_CSD_ThreadPool.so.2.2a_p15]() \
> > >  [file://libTAO_CodecFactory.so.2.2a_p15]() \
> > >  [file://libTAO_Codeset.so.2.2a_p15]() \
> > >  [file://libTAO_CosNaming.so.2.2a_p15]() \
> > >  [file://libTAO_CosNaming_Serv.so.2.2a_p15]() \
> > >  [file://libTAO_CosNaming_Skel.so.2.2a_p15]() \
> > >  [file://libTAO_DynamicInterface.so.2.2a_p15]() \
> > >  [file://libTAO_FTORB_Utils.so.2.2a_p15]() \
> > >  [file://libTAO_FT_ClientORB.so.2.2a_p15]() \
> > >  [file://libTAO_FT_ServerORB.so.2.2a_p15]() \
> > >  [file://libTAO_IDL_FE.so.2.2a_p15]() \
> > >  [file://libTAO_IORManip.so.2.2a_p15]() \
> > >  [file://libTAO_IORTable.so.2.2a_p15]() \
> > >  [file://libTAO_ImR_Activator.so.2.2a_p15]() \
> > >  [file://libTAO_ImR_Activator_IDL.so.2.2a_p15]() \
> > >  [file://libTAO_ImR_Client.so.2.2a_p15]() \
> > >  [file://libTAO_ImR_Locator.so.2.2a_p15]() \
> > >  [file://libTAO_ImR_Locator_IDL.so.2.2a_p15]() \
> > >  [file://libTAO_Messaging.so.2.2a_p15]() \
> > >  [file://libTAO_PI.so.2.2a_p15]() \
> > >  [file://libTAO_PI_Server.so.2.2a_p15]() \
> > >  [file://libTAO_PortableGroup.so.2.2a_p15]() \
> > >  [file://libTAO_PortableServer.so.2.2a_p15]() \
> > >  [file://libTAO_Strategies.so.2.2a_p15]() \
> > >  [file://libTAO_Svc_Utils.so.2.2a_p15]() \
> > >  [file://libTAO_Valuetype.so.2.2a_p15]() \
> > >  "
> > >
> > >  S =3D "${WORKDIR}"
> > >
> > >  do_install() {
> > >  install -d ${D}${bindir}
> > >  install -d ${D}${libdir}
> > >  install -m 0755 DCPSInfoRepo ${D}${bindir}
> > >  install -m 0755 tao_cosnaming ${D}${bindir}
> > >  install -m 0755 tao_imr ${D}${bindir}
> > >  install -m 0755 tao_imr_activator ${D}${bindir}
> > >  install -m 0755 tao_imr_locator ${D}${bindir}
> > >  install -m 0755 tao_nsadd ${D}${bindir}
> > >  install -m 0755 tao_nsdel ${D}${bindir}
> > >  install -m 0755 tao_nslist ${D}${bindir}
> > >  oe_soinstall libACE.so.6.2a_p15 ${D}${libdir}
> > >  oe_soinstall libACEXML.so.6.2a_p15 ${D}${libdir}
> > >  oe_soinstall libACEXML_Parser.so.6.2a_p15 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Dcps.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_FACE.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Federator.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_InfoRepoDiscovery.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_InfoRepoLib.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_InfoRepoServ.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Model.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Multicast.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Rtps.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Rtps_Udp.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Shmem.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Tcp.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_Udp.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libOpenDDS_monitor.so.3.13.2 ${D}${libdir}
> > >  oe_soinstall libTAO.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_AnyTypeCode.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Async_IORTable.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Async_ImR_Client_IDL.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_BiDirGIOP.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_CSD_Framework.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_CSD_ThreadPool.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_CodecFactory.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Codeset.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_CosNaming.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_CosNaming_Serv.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_CosNaming_Skel.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_DynamicInterface.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_FTORB_Utils.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_FT_ClientORB.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_FT_ServerORB.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_IDL_FE.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_IORManip.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_IORTable.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_ImR_Activator.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_ImR_Activator_IDL.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_ImR_Client.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_ImR_Locator.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_ImR_Locator_IDL.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Messaging.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_PI.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_PI_Server.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_PortableGroup.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_PortableServer.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Strategies.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Svc_Utils.so.2.2a_p15 ${D}${libdir}
> > >  oe_soinstall libTAO_Valuetype.so.2.2a_p15 ${D}${libdir}
> > >  }
> > >
> > >  # Don't bother trying to build the debug package, at least for now!
> > >  INHIBIT_PACKAGE_STRIP =3D "1"
> > >  INHIBIT_SYSROOT_STRIP =3D "1"
> > >  INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
> > >
> > >  # Inhibit warnings about files being stripped
> > >  INSANE_SKIP_${PN} =3D "ldflags"
> > >  INSANE_SKIP_${PN} =3D "already-stripped"
> > >
> > >  # No .h files to be packaged, so only list .so stuff
> > >  FILES_${PN} =3D "${bindir}/* ${libdir}/*.so.*"
> > >  FILES_${PN}-dev =3D "${bindir}/* ${libdir}/*.so"
> > >  =3D=3D=3D
> > >
> > >  The files were all built in another folder but I've copied them into=
 the project-spec/meta-user/recipes-apps/opendds/files folder so that they =
can be picked up ok. I uses the normal install to do the binaries, and oe_s=
oinstall to work with the versioned shared libraries, as described in vario=
us places.
> > >
> > >  I added a print statement into package.bbclass at line 1233 (see bel=
ow) to try to get a bit more information into the log file about the point =
where it's breaking). The log then shows this below (I presume that the std=
err output being in the middle of that lot is just some sequencing effect):
> > >
> > >  =3D=3D=3D
> > >  DEBUG: Executing python function package_fixsymlinks
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Svc_Utils.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ClientORB.=
so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_Framework=
.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps_Udp.=
so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps.so, =
pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_ImR_Cli=
ent_IDL.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_DynamicInterf=
ace.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_AnyTypeCode.s=
o, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Tcp.so, p=
kg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator=
_IDL.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoD=
iscovery.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoL=
ib.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML.so, pkg: o=
pendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO.so, pkg: open=
dds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Valuetype.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_BiDirGIOP.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Messaging.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORManip.so, =
pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Ser=
v.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableServe=
r.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator=
.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_IORTabl=
e.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IDL_FE.so, pk=
g: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML_Parser.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_monitor.s=
o, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Multicast=
.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI_Server.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Strategies.so=
, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Federator=
.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Shmem.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Model.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI.so, pkg: o=
pendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CodecFactory.=
so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ServerORB.=
so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator.s=
o, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACE.so, pkg: open=
dds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming.so,=
 pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Dcps.so, =
pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORTable.so, =
pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Ske=
l.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator_I=
DL.so, pkg: opendds-devERROR: Error executing a python function in exec_pyt=
hon_func() autogenerated:
> > >
> > >  The stack trace of python calls that resulted in this exception/fail=
ure was:
> > >  File: 'exec_python_func() autogenerated', lineno: 2, function:
> > >  0001:
> > >  *** 0002:package_fixsymlinks(d)
> > >  0003:
> > >  File: '/opt/pkg/petalinux/components/yocto/source/arm/layers/core/me=
ta/classes/package.bbclass', lineno: 1236, function: package_fixsymlinks
> > >  1232: for path in pkgfiles[pkg]:
> > >  1233: print('path: %s, pkg: %s' % (path, pkg))
> > >  1234: rpath =3D path[len(inst_root):]
> > >  1235: pkg_files[pkg].append(rpath)
> > >  *** 1236: rtarget =3D cpath.realpath(path, inst_root, True, assume_d=
ir =3D True)
> > >  1237: if not cpath.lexists(rtarget):
> > >  1238: dangling_links[pkg].append(os.path.normpath(rtarget[len(inst_r=
oot):]))
> > >  1239:
> > >  1240: newrdepends =3D {}
> > >  File: '/opt/pkg/petalinux/components/yocto/source/arm/layers/core/me=
ta/lib/oe/cachedpath.py', lineno: 229, function: realpath
> > >  0225: # be printed a backtrace with 100s of OSError exceptions
> > >  0226: # else
> > >  0227: raise OSError(errno.ELOOP,
> > >  0228: "too much recursions while resolving '%s'; loop in '%s'" %
> > >  *** 0229: (file, e.strerror))
> > >  0230:
> > >  0231: raise
> > >  0232:
> > >  0233: return file
> > >  Exception: OSError: [Errno 40] too much recursions while resolving '=
<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/=
1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; loop i=
n '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opend=
ds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'
> > >
> > >  DEBUG: Python function package_fixsymlinks finished
> > >  DEBUG: Python function do_package finished
> > >  ERROR: Function failed: package_fixsymlinks
> > >
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoS=
erv.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_ThreadPoo=
l.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FTORB_Utils.s=
o, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableGroup=
.so, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Client.so=
, pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_FACE.so, =
pkg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Codeset.so, p=
kg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Udp.so, p=
kg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_locator, pkg=
: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_cosnaming, pkg: =
opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsdel, pkg: open=
dds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsadd, pkg: open=
dds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nslist, pkg: ope=
ndds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_activator, p=
kg: opendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/DCPSInfoRepo, pkg: o=
pendds-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr, pkg: opendd=
s-dev
> > >  path: <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnu=
eabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a=
_p15, pkg: opendds
> > >  =3D=3D=3D
> > >
> > >  In addition, I get a batch of the following messages coming out:
> > >
> > >  =3D=3D=3D
> > >  1: opendds-1.0-r0 do_package - 0s (pid 23258)
> > >  link recursion too deep, not expanding path '<project-base>/build/tm=
p/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/=
libTAO_Svc_Utils.so.2.2a_p15'.
> > >  link recursion too deep, not expanding path '<project-base>/build/tm=
p/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/=
libTAO_PI_Server.so.2.2a_p15'.
> > >  link recursion too deep, not expanding path '<project-base>/build/tm=
p/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/=
libTAO_PI.so.2.2a_p15'.
> > >  =3D=3D=3D
> > >
> > >  And, when I go into the lib folder and list the contents, I see:
> > >
> > >  =3D=3D=3D
> > >  :
> > >  lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so -> =
libTAO_PI_Server.so.2.2a_p15
> > >  lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so.2.2=
a_p15 -> libTAO_PI_Server.so.2.2a_p15
> > >  :
> > >  =3D=3D=3D
> > >
> > >  With (on Ubuntu), all the filenames in red with a grey (or black?) b=
ackground, i.e. broken links.
> > >
> > >  I have a couple of questions about all this:
> > >
> > >  1) The oe_soinstall function (see here - https://git.yoctoproject.or=
g/cgit.cgi/poky/plain/meta/classes/utils.bbclass) includes a line that inst=
alls (using "install") the xxx.so.x.y file, which causes a copy of the file=
 from ${WORKDIR} to go into the <project-base>/build/tmp/work/cortexa9hf-ne=
on-xilinx-linux-gnueabi.opendds/1.0-r0/image/usr/lib directory. It then gen=
erates sonamelink and solink from the library details and creates symbolic =
links that point back to the copies of the library files in ${WORKDIR}. In =
doing that, the copy of the file that was placed there by the install line =
is overwritten with the symbolic link; is that normal? (I presume it must b=
e otherwise no one would be getting oe_soinstall to work!).
> > >
> > >  2) Is there anything in the shared library filenames' version part t=
hat could be causing something to get confused? I've seen mention of zzz.so=
.a.b.c etc where a, b and c are normally numeric, which is different to the=
 version information in the DDS files, but...
> > >
> > >  3) I can understand why there could be a recursion issue detected, b=
ut it's not met who's putting those weird links into the package/usr/lib fo=
lder. Is there something in the .bb file that I need to change to make that=
 work properly?
> > >
> > >  4) Can anyone see whether I'm just simply doing something wrong and =
clarify what I need to do to put it right?
> > >
> > >  Any help will be very, very gratefully appreciated. As I said, I'm n=
ew to Yocto and have spent hours looking for help/example of the use of oe_=
soinstall. Each time round the loop of updating my .bb file and building it=
 takes quite a long time so...
> > >
> > >  Many thanks,
> > >  John
> > >
> > > John McCabe
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

