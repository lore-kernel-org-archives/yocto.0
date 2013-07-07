Return-Path: <sean.liming@annabooks.com>
Received: from mail28c40.carrierzone.com (mail92c40.carrierzone.com
	[209.235.156.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CAD7E01437
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2013 19:36:06 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail28c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r672a2qF005689
	for <yocto@yoctoproject.org>; Sun, 7 Jul 2013 02:36:04 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: <yocto@yoctoproject.org>
References: <000601ce7846$3167e7a0$9437b6e0$@annabooks.com>
	<000901ce78e3$df25f880$9d71e980$@annabooks.com>
In-Reply-To: <000901ce78e3$df25f880$9d71e980$@annabooks.com>
Date: Sat, 6 Jul 2013 19:35:51 -0700
Message-ID: <000001ce7aba$b3e15d80$1ba41880$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHoUwMOOHadh+wd7ktRhug7GfOnhQHs88fNmRVms8A=
X-CSC: 0
X-CHA: v=2.0 cv=G5ir5aY5 c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=txLOX-etOBgA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=eaLoddcW_fMA:10 a=iGHA9ds3AAAA:8 a=VwQbUJbxAAAA:8
	a=yuZCy7tsakmoUk5dKkIA:9 a=CjuIK1q_8ugA:10 a=XDKM753qmDAA:10
	a=aV87CDa5FLAYw_bt:21 a=Rw7nuqYR96WXxJVv:21
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020204.51D8D415.000B, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: How to add WiFi support
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
X-List-Received-Date: Sun, 07 Jul 2013 02:36:12 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us




> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Sean Liming
> Sent: Thursday, July 04, 2013 11:26 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] How to add WiFi support
> 
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Sean Liming
> > Sent: Wednesday, July 03, 2013 4:37 PM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] How to add WiFi support
> >
> > I have searched and spotted different discussion on adding wireless
> support
> > but have not found a solution. I have a Intel Centrino Wireless-N 1000
> card
> > plugged into a Intel Atom N2800 (Cedar Trail) platform. I am using
> > Yocto Project 1.3.1, Cedar Trail BSP, core-image-x11
> >
> > BB_VERSION        = "1.16.0"
> > TARGET_ARCH       = "i586"
> > TARGET_OS         = "linux"
> > MACHINE           = "cedartrail-nopvr"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.3.1"
> > TUNE_FEATURES     = "m32 core2"
> > Core-image-x11
> >
> > Following the instructions to use menuconfig and create configuration
> > fragment, I have enabled the various kernel options to include the
> > iwlagn driver. The configuration fragment called mydiff.cfg (attached)
> > was placed
> in
> > the meta-intel/meta-cedartrail/recipes-kernel/Linux/files folder. The
> Linux-
> > yocto_3.0.bbappend was modified with the following:
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> > SRC_URI += "file://mydiff.cfg"
> >
> > After building the image, ifconfig didn't show wireless and neither
> > does iwconfig. The adapter is found when I do a lspci. The kernel
> > wireless
> website
> > - http://wireless.kernel.org/en/users/Drivers/iwlwifi  lists a
> > firmware package needed for installation. I tried to create a recipe
> > to place the firmware file in the /lib/firmware folder, but it doesn't
> > get put in. The
> lack of
> > what to do for the LICENSE might be a problem. Here is the
> > recipe:
> >
> > DESCRIPTION = "Intel WiFi 1000 Adapter"
> > LICENSE = "GPL"-?????
> > LIC_FILES_CHKSUM =
> > "file://${WORKDIR}/LICENSE.iwlwifi-1000-
> > ucode;md5=aa2bfb02c7e0712680334b9f47
> > f8dc61"
> >
> > SRC_URI = "file://LICENSE.iwlwifi-1000-ucode \
> > 	   file://iwlwifi-1000-3.ucode \
> > 	   "
> > FWPATH = "lib/firmware"
> > do_install_apped() {
> > 	install -m 0644 LICENSE.iwlwifi-1000-ucode ${D}${FWPATH}
> > 	install -m 0644 iwlwifi-1000-3.ucode ${D}${FWPATH} }
> >
> > I manually created the /lib/firmware folder and copied the firmware
> > file
> > (iwlwifi-1000-3.ucode) to the folder. Nothing changed after a reboot.
> > I
> also
> > tried a Intel Centrino Ultimate-N 6300 same result.
> >
> > 1. Was a kernel modification the right direction to enable support for
> this
> > driver?
> > 2. Did I miss anything with regards to the configuration fragment setup?
> > 3. Is the firmware really needed? If so why is there no /lib/firmware
> folder
> > and what should be used for the LICENSE ?
> >
> >
> > Regards,
> >
> > Sean Liming
> 
> Update: After checking the /proc/config.gz, I noticed that the custom
kernel
> settings are not being set. Is there specific location for the
configuration
> fragment to be placed? I put it in the BSP's recipes-kernel/Linux/files
folder.
> 
> After installing Ubuntu on the target, iwlwifi is being used rather than
iwlagn.
> I have a updated my custom config.
> 
> Regards,
> 
> Sean Liming
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

SOLVED: Deviated from the documentation to get the configuration fragment
working, and found a Linux-firmware package that pulls in the firmware.

Regards,

Sean Liming


