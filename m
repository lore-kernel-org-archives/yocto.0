Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58799E00994; Fri, 28 Jun 2019 02:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E576E00994
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 02:35:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5S9ZE1i019565
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Jun 2019 02:35:29 -0700
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Fri, 28 Jun 2019 02:35:07 -0700
To: John McCabe <JMcCabe@kirintec.com>
References: <LNXP265MB0346E0B3875EEF62066F257ED1FD0@LNXP265MB0346.GBRP265.PROD.OUTLOOK.COM>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <784d3708-806e-04f5-55be-0775989d2f16@windriver.com>
Date: Fri, 28 Jun 2019 17:47:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <LNXP265MB0346E0B3875EEF62066F257ED1FD0@LNXP265MB0346.GBRP265.PROD.OUTLOOK.COM>
X-Originating-IP: [128.224.162.148]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Jun 2019 09:36:03 -0000
X-Groupsio-MsgNum: 45752
Content-Type: multipart/alternative;
	boundary="------------66F861C62461CFDD6413B7E1"

--------------66F861C62461CFDD6413B7E1
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi John,

When you have problems regarding yocto, please send email to this 
mailing list.

Regards,
Chen Qi

On 06/28/2019 12:53 AM, John McCabe wrote:
> Hi,
>
> (Sorry for the long post, but....)
>
> I'm new to Yocto etc and I'm struggling with configuring a recipe to 
> install some library files that I've built. The libraries in question 
> are part of OpenDDS, which I've cross-compiled for a Zynq-7000 target. 
> At this point I don't want to include the build of the libraries in 
> the Yocto (actually PetaLinux) configuration as it takes hours to 
> build, so I just want to add the shared libraries that are needed into 
> the image. However I haven't managed to get this to work in hours, if 
> not days, of trying. Despite multiple attempts at an opendds.bb file, 
> I continue to get issues with:
>
> ===
> Exception: OSError: [Errno 40] too much recursions while resolving 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; 
> loop in 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'
> ===
>
> Essentially there are a set of binaries and a set of shared libraries 
> that I want to go into the image. If you look at the current version 
> of the opendds.bb file I'm using, below, you should see a list of the 
> files in question.
>
> ===
> #
> # This file is the OpenDDS libraries recipe.
> #
>
> SUMMARY = "OpenDDS Libraries"
> SECTION = "PETALINUX/apps"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = 
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>
> SRC_URI = "file://DCPSInfoRepo \
> file://tao_cosnaming \
> file://tao_imr \
> file://tao_imr_activator \
> file://tao_imr_locator \
> file://tao_nsadd \
> file://tao_nsdel \
> file://tao_nslist \
> file://libACE.so.6.2a_p15 \
> file://libACEXML.so.6.2a_p15 \
> file://libACEXML_Parser.so.6.2a_p15 \
> file://libOpenDDS_Dcps.so.3.13.2 \
> file://libOpenDDS_FACE.so.3.13.2 \
> file://libOpenDDS_Federator.so.3.13.2 \
> file://libOpenDDS_InfoRepoDiscovery.so.3.13.2 \
> file://libOpenDDS_InfoRepoLib.so.3.13.2 \
> file://libOpenDDS_InfoRepoServ.so.3.13.2 \
> file://libOpenDDS_Model.so.3.13.2 \
> file://libOpenDDS_Multicast.so.3.13.2 \
> file://libOpenDDS_Rtps.so.3.13.2 \
> file://libOpenDDS_Rtps_Udp.so.3.13.2 \
> file://libOpenDDS_Shmem.so.3.13.2 \
> file://libOpenDDS_Tcp.so.3.13.2 \
> file://libOpenDDS_Udp.so.3.13.2 \
> file://libOpenDDS_monitor.so.3.13.2 \
> file://libTAO.so.2.2a_p15 \
> file://libTAO_AnyTypeCode.so.2.2a_p15 \
> file://libTAO_Async_IORTable.so.2.2a_p15 \
> file://libTAO_Async_ImR_Client_IDL.so.2.2a_p15 \
> file://libTAO_BiDirGIOP.so.2.2a_p15 \
> file://libTAO_CSD_Framework.so.2.2a_p15 \
> file://libTAO_CSD_ThreadPool.so.2.2a_p15 \
> file://libTAO_CodecFactory.so.2.2a_p15 \
> file://libTAO_Codeset.so.2.2a_p15 \
> file://libTAO_CosNaming.so.2.2a_p15 \
> file://libTAO_CosNaming_Serv.so.2.2a_p15 \
> file://libTAO_CosNaming_Skel.so.2.2a_p15 \
> file://libTAO_DynamicInterface.so.2.2a_p15 \
> file://libTAO_FTORB_Utils.so.2.2a_p15 \
> file://libTAO_FT_ClientORB.so.2.2a_p15 \
> file://libTAO_FT_ServerORB.so.2.2a_p15 \
> file://libTAO_IDL_FE.so.2.2a_p15 \
> file://libTAO_IORManip.so.2.2a_p15 \
> file://libTAO_IORTable.so.2.2a_p15 \
> file://libTAO_ImR_Activator.so.2.2a_p15 \
> file://libTAO_ImR_Activator_IDL.so.2.2a_p15 \
> file://libTAO_ImR_Client.so.2.2a_p15 \
> file://libTAO_ImR_Locator.so.2.2a_p15 \
> file://libTAO_ImR_Locator_IDL.so.2.2a_p15 \
> file://libTAO_Messaging.so.2.2a_p15 \
> file://libTAO_PI.so.2.2a_p15 \
> file://libTAO_PI_Server.so.2.2a_p15 \
> file://libTAO_PortableGroup.so.2.2a_p15 \
> file://libTAO_PortableServer.so.2.2a_p15 \
> file://libTAO_Strategies.so.2.2a_p15 \
> file://libTAO_Svc_Utils.so.2.2a_p15 \
> file://libTAO_Valuetype.so.2.2a_p15 \
> "
>
> S = "${WORKDIR}"
>
> do_install() {
> install -d ${D}${bindir}
> install -d ${D}${libdir}
> install -m 0755 DCPSInfoRepo ${D}${bindir}
> install -m 0755 tao_cosnaming ${D}${bindir}
> install -m 0755 tao_imr ${D}${bindir}
> install -m 0755 tao_imr_activator ${D}${bindir}
> install -m 0755 tao_imr_locator ${D}${bindir}
> install -m 0755 tao_nsadd ${D}${bindir}
> install -m 0755 tao_nsdel ${D}${bindir}
> install -m 0755 tao_nslist ${D}${bindir}
> oe_soinstall libACE.so.6.2a_p15 ${D}${libdir}
> oe_soinstall libACEXML.so.6.2a_p15 ${D}${libdir}
> oe_soinstall libACEXML_Parser.so.6.2a_p15 ${D}${libdir}
> oe_soinstall libOpenDDS_Dcps.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_FACE.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Federator.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_InfoRepoDiscovery.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_InfoRepoLib.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_InfoRepoServ.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Model.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Multicast.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Rtps.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Rtps_Udp.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Shmem.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Tcp.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_Udp.so.3.13.2 ${D}${libdir}
> oe_soinstall libOpenDDS_monitor.so.3.13.2 ${D}${libdir}
> oe_soinstall libTAO.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_AnyTypeCode.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Async_IORTable.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Async_ImR_Client_IDL.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_BiDirGIOP.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_CSD_Framework.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_CSD_ThreadPool.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_CodecFactory.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Codeset.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_CosNaming.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_CosNaming_Serv.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_CosNaming_Skel.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_DynamicInterface.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_FTORB_Utils.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_FT_ClientORB.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_FT_ServerORB.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_IDL_FE.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_IORManip.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_IORTable.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_ImR_Activator.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_ImR_Activator_IDL.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_ImR_Client.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_ImR_Locator.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_ImR_Locator_IDL.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Messaging.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_PI.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_PI_Server.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_PortableGroup.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_PortableServer.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Strategies.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Svc_Utils.so.2.2a_p15 ${D}${libdir}
> oe_soinstall libTAO_Valuetype.so.2.2a_p15 ${D}${libdir}
> }
>
> # Don't bother trying to build the debug package, at least for now!
> INHIBIT_PACKAGE_STRIP = "1"
> INHIBIT_SYSROOT_STRIP = "1"
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
>
> # Inhibit warnings about files being stripped
> INSANE_SKIP_${PN} = "ldflags"
> INSANE_SKIP_${PN} = "already-stripped"
>
> # No .h files to be packaged, so only list .so stuff
> FILES_${PN} = "${bindir}/* ${libdir}/*.so.*"
> FILES_${PN}-dev = "${bindir}/* ${libdir}/*.so"
> ===
>
> The files were all built in another folder but I've copied them into 
> the project-spec/meta-user/recipes-apps/opendds/files folder so that 
> they can be picked up ok. I uses the normal install to do the 
> binaries, and oe_soinstall to work with the versioned shared 
> libraries, as described in various places.
>
> I added a print statement into package.bbclass at line 1233 (see 
> below) to try to get a bit more information into the log file about 
> the point where it's breaking). The log then shows this below (I 
> presume that the stderr output being in the middle of that lot is just 
> some sequencing effect):
>
> ===
> DEBUG: Executing python function package_fixsymlinks
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Svc_Utils.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ClientORB.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_Framework.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps_Udp.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_ImR_Client_IDL.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_DynamicInterface.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_AnyTypeCode.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Tcp.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator_IDL.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoDiscovery.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoLib.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Valuetype.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_BiDirGIOP.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Messaging.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORManip.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Serv.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableServer.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_IORTable.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IDL_FE.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML_Parser.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_monitor.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Multicast.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI_Server.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Strategies.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Federator.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Shmem.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Model.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CodecFactory.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ServerORB.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACE.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Dcps.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORTable.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Skel.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator_IDL.so, 
> pkg: opendds-devERROR: Error executing a python function in 
> exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this 
> exception/failure was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
> 0001:
> *** 0002:package_fixsymlinks(d)
> 0003:
> File: 
> '/opt/pkg/petalinux/components/yocto/source/arm/layers/core/meta/classes/package.bbclass', 
> lineno: 1236, function: package_fixsymlinks
> 1232: for path in pkgfiles[pkg]:
> 1233: print('path: %s, pkg: %s' % (path, pkg))
> 1234: rpath = path[len(inst_root):]
> 1235: pkg_files[pkg].append(rpath)
> *** 1236: rtarget = cpath.realpath(path, inst_root, True, assume_dir = 
> True)
> 1237: if not cpath.lexists(rtarget):
> 1238: 
> dangling_links[pkg].append(os.path.normpath(rtarget[len(inst_root):]))
> 1239:
> 1240: newrdepends = {}
> File: 
> '/opt/pkg/petalinux/components/yocto/source/arm/layers/core/meta/lib/oe/cachedpath.py', 
> lineno: 229, function: realpath
> 0225: # be printed a backtrace with 100s of OSError exceptions
> 0226: # else
> 0227: raise OSError(errno.ELOOP,
> 0228: "too much recursions while resolving '%s'; loop in '%s'" %
> *** 0229: (file, e.strerror))
> 0230:
> 0231: raise
> 0232:
> 0233: return file
> Exception: OSError: [Errno 40] too much recursions while resolving 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; 
> loop in 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'
>
> DEBUG: Python function package_fixsymlinks finished
> DEBUG: Python function do_package finished
> ERROR: Function failed: package_fixsymlinks
>
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoServ.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_ThreadPool.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FTORB_Utils.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableGroup.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Client.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_FACE.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Codeset.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Udp.so, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_locator, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_cosnaming, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsdel, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsadd, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nslist, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_activator, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/DCPSInfoRepo, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr, 
> pkg: opendds-dev
> path: 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15, 
> pkg: opendds
> ===
>
> In addition, I get a batch of the following messages coming out:
>
> ===
> 1: opendds-1.0-r0 do_package - 0s (pid 23258)
> link recursion too deep, not expanding path 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/libTAO_Svc_Utils.so.2.2a_p15'.
> link recursion too deep, not expanding path 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/libTAO_PI_Server.so.2.2a_p15'.
> link recursion too deep, not expanding path 
> '<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/libTAO_PI.so.2.2a_p15'.
> ===
>
> And, when I go into the lib folder and list the contents, I see:
>
> ===
> :
> lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so -> 
> libTAO_PI_Server.so.2.2a_p15
> lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 
> libTAO_PI_Server.so.2.2a_p15 -> libTAO_PI_Server.so.2.2a_p15
> :
> ===
>
> With (on Ubuntu), all the filenames in red with a grey (or black?) 
> background, i.e. broken links.
>
> I have a couple of questions about all this:
>
> 1) The oe_soinstall function (see here - 
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/utils.bbclass) 
> includes a line that installs (using "install") the xxx.so.x.y file, 
> which causes a copy of the file from ${WORKDIR} to go into the 
> <project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi.opendds/1.0-r0/image/usr/lib 
> directory. It then generates sonamelink and solink from the library 
> details and creates symbolic links that point back to the copies of 
> the library files in ${WORKDIR}. In doing that, the copy of the file 
> that was placed there by the install line is overwritten with the 
> symbolic link; is that normal? (I presume it must be otherwise no one 
> would be getting oe_soinstall to work!).
>
> 2) Is there anything in the shared library filenames' version part 
> that could be causing something to get confused? I've seen mention of 
> zzz.so.a.b.c etc where a, b and c are normally numeric, which is 
> different to the version information in the DDS files, but...
>
> 3) I can understand why there could be a recursion issue detected, but 
> it's not met who's putting those weird links into the package/usr/lib 
> folder. Is there something in the .bb file that I need to change to 
> make that work properly?
>
> 4) Can anyone see whether I'm just simply doing something wrong and 
> clarify what I need to do to put it right?
>
> Any help will be very, very gratefully appreciated. As I said, I'm new 
> to Yocto and have spent hours looking for help/example of the use of 
> oe_soinstall. Each time round the loop of updating my .bb file and 
> building it takes quite a long time so...
>
> Many thanks,
> John
> 	
> John McCabe​
> Principal Software Engineer
> Kirintec Ltd
>
> 		
> 	
>
> 	+44 (0) 1989 568350
>
> 	
> 	
>
> 	*JMcCabe@kirintec.com* <mailto:JMcCabe@kirintec.com>
>
> 	
>
> 	*www.kirintec.com* <http://www.kirintec.com/>
>
> Follow us: 	
> <https://en-gb.facebook.com/Kirintec/>
>
> 	
> <https://uk.linkedin.com/company/kirintec>
>
> 	
> <https://twitter.com/KirintecLtd>
>
>
> ​
> ​
>
> <https://www.kirintec.com/>
> Receipt of this e-mail is subject to conditions, view our 
> email disclaimer. Kirintec Limited of Ross-on-Wye HR9 5PB 
> is ​registered in England and Wales with the company number 6699502.
>
>
>


--------------66F861C62461CFDD6413B7E1
Content-Type: multipart/related;
	boundary="------------DF6CAB5A4EF8859F8B423D63"

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi John,<br>
      <br>
      When you have problems regarding yocto, please send email to this
      mailing list.<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 06/28/2019 12:53 AM, John McCabe wrote:<br>
    </div>
    <blockquote
cite="mid:LNXP265MB0346E0B3875EEF62066F257ED1FD0@LNXP265MB0346.GBRP265.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div>Hi,<br>
        <br>
        (Sorry for the long post, but....)<br>
        <br>
        I'm new to Yocto etc and I'm struggling with configuring a
        recipe to install some library files that I've built. The
        libraries in question are part of OpenDDS, which I've
        cross-compiled for a Zynq-7000 target. At this point I don't
        want to include the build of the libraries in the Yocto
        (actually PetaLinux) configuration as it takes hours to build,
        so I just want to add the shared libraries that are needed into
        the image. However I haven't managed to get this to work in
        hours, if not days, of trying. Despite multiple attempts at an
        opendds.bb file, I continue to get issues with:<br>
        <br>
        ===<br>
        Exception: OSError: [Errno 40] too much recursions while
        resolving
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15';
        loop in
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'<br>
        ===<br>
        <br>
        Essentially there are a set of binaries and a set of shared
        libraries that I want to go into the image. If you look at the
        current version of the opendds.bb file I'm using, below, you
        should see a list of the files in question.<br>
        <br>
        ===<br>
        #<br>
        # This file is the OpenDDS libraries recipe.<br>
        #<br>
        <br>
        SUMMARY = "OpenDDS Libraries"<br>
        SECTION = "PETALINUX/apps"<br>
        LICENSE = "MIT"<br>
        LIC_FILES_CHKSUM =
        <a class="moz-txt-link-rfc2396E" href="file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302">"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"</a><br>
        <br>
        SRC_URI = "<a class="moz-txt-link-freetext" href="file://DCPSInfoRepo">file://DCPSInfoRepo</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_cosnaming">file://tao_cosnaming</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_imr">file://tao_imr</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_imr_activator">file://tao_imr_activator</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_imr_locator">file://tao_imr_locator</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_nsadd">file://tao_nsadd</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_nsdel">file://tao_nsdel</a> \<br>
        <a class="moz-txt-link-freetext" href="file://tao_nslist">file://tao_nslist</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libACE.so.6.2a_p15">file://libACE.so.6.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libACEXML.so.6.2a_p15">file://libACEXML.so.6.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libACEXML_Parser.so.6.2a_p15">file://libACEXML_Parser.so.6.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Dcps.so.3.13.2">file://libOpenDDS_Dcps.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_FACE.so.3.13.2">file://libOpenDDS_FACE.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Federator.so.3.13.2">file://libOpenDDS_Federator.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_InfoRepoDiscovery.so.3.13.2">file://libOpenDDS_InfoRepoDiscovery.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_InfoRepoLib.so.3.13.2">file://libOpenDDS_InfoRepoLib.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_InfoRepoServ.so.3.13.2">file://libOpenDDS_InfoRepoServ.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Model.so.3.13.2">file://libOpenDDS_Model.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Multicast.so.3.13.2">file://libOpenDDS_Multicast.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Rtps.so.3.13.2">file://libOpenDDS_Rtps.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Rtps_Udp.so.3.13.2">file://libOpenDDS_Rtps_Udp.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Shmem.so.3.13.2">file://libOpenDDS_Shmem.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Tcp.so.3.13.2">file://libOpenDDS_Tcp.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_Udp.so.3.13.2">file://libOpenDDS_Udp.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libOpenDDS_monitor.so.3.13.2">file://libOpenDDS_monitor.so.3.13.2</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO.so.2.2a_p15">file://libTAO.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_AnyTypeCode.so.2.2a_p15">file://libTAO_AnyTypeCode.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Async_IORTable.so.2.2a_p15">file://libTAO_Async_IORTable.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Async_ImR_Client_IDL.so.2.2a_p15">file://libTAO_Async_ImR_Client_IDL.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_BiDirGIOP.so.2.2a_p15">file://libTAO_BiDirGIOP.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_CSD_Framework.so.2.2a_p15">file://libTAO_CSD_Framework.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_CSD_ThreadPool.so.2.2a_p15">file://libTAO_CSD_ThreadPool.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_CodecFactory.so.2.2a_p15">file://libTAO_CodecFactory.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Codeset.so.2.2a_p15">file://libTAO_Codeset.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_CosNaming.so.2.2a_p15">file://libTAO_CosNaming.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_CosNaming_Serv.so.2.2a_p15">file://libTAO_CosNaming_Serv.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_CosNaming_Skel.so.2.2a_p15">file://libTAO_CosNaming_Skel.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_DynamicInterface.so.2.2a_p15">file://libTAO_DynamicInterface.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_FTORB_Utils.so.2.2a_p15">file://libTAO_FTORB_Utils.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_FT_ClientORB.so.2.2a_p15">file://libTAO_FT_ClientORB.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_FT_ServerORB.so.2.2a_p15">file://libTAO_FT_ServerORB.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_IDL_FE.so.2.2a_p15">file://libTAO_IDL_FE.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_IORManip.so.2.2a_p15">file://libTAO_IORManip.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_IORTable.so.2.2a_p15">file://libTAO_IORTable.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_ImR_Activator.so.2.2a_p15">file://libTAO_ImR_Activator.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_ImR_Activator_IDL.so.2.2a_p15">file://libTAO_ImR_Activator_IDL.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_ImR_Client.so.2.2a_p15">file://libTAO_ImR_Client.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_ImR_Locator.so.2.2a_p15">file://libTAO_ImR_Locator.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_ImR_Locator_IDL.so.2.2a_p15">file://libTAO_ImR_Locator_IDL.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Messaging.so.2.2a_p15">file://libTAO_Messaging.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_PI.so.2.2a_p15">file://libTAO_PI.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_PI_Server.so.2.2a_p15">file://libTAO_PI_Server.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_PortableGroup.so.2.2a_p15">file://libTAO_PortableGroup.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_PortableServer.so.2.2a_p15">file://libTAO_PortableServer.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Strategies.so.2.2a_p15">file://libTAO_Strategies.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Svc_Utils.so.2.2a_p15">file://libTAO_Svc_Utils.so.2.2a_p15</a> \<br>
        <a class="moz-txt-link-freetext" href="file://libTAO_Valuetype.so.2.2a_p15">file://libTAO_Valuetype.so.2.2a_p15</a> \<br>
        "<br>
        <br>
        S = "${WORKDIR}"<br>
        <br>
        do_install() {<br>
        install -d ${D}${bindir}<br>
        install -d ${D}${libdir}<br>
        install -m 0755 DCPSInfoRepo ${D}${bindir}<br>
        install -m 0755 tao_cosnaming ${D}${bindir}<br>
        install -m 0755 tao_imr ${D}${bindir}<br>
        install -m 0755 tao_imr_activator ${D}${bindir}<br>
        install -m 0755 tao_imr_locator ${D}${bindir}<br>
        install -m 0755 tao_nsadd ${D}${bindir}<br>
        install -m 0755 tao_nsdel ${D}${bindir}<br>
        install -m 0755 tao_nslist ${D}${bindir}<br>
        oe_soinstall libACE.so.6.2a_p15 ${D}${libdir}<br>
        oe_soinstall libACEXML.so.6.2a_p15 ${D}${libdir}<br>
        oe_soinstall libACEXML_Parser.so.6.2a_p15 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Dcps.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_FACE.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Federator.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_InfoRepoDiscovery.so.3.13.2
        ${D}${libdir}<br>
        oe_soinstall libOpenDDS_InfoRepoLib.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_InfoRepoServ.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Model.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Multicast.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Rtps.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Rtps_Udp.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Shmem.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Tcp.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_Udp.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libOpenDDS_monitor.so.3.13.2 ${D}${libdir}<br>
        oe_soinstall libTAO.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_AnyTypeCode.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Async_IORTable.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Async_ImR_Client_IDL.so.2.2a_p15
        ${D}${libdir}<br>
        oe_soinstall libTAO_BiDirGIOP.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_CSD_Framework.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_CSD_ThreadPool.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_CodecFactory.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Codeset.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_CosNaming.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_CosNaming_Serv.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_CosNaming_Skel.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_DynamicInterface.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_FTORB_Utils.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_FT_ClientORB.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_FT_ServerORB.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_IDL_FE.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_IORManip.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_IORTable.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_ImR_Activator.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_ImR_Activator_IDL.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_ImR_Client.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_ImR_Locator.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_ImR_Locator_IDL.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Messaging.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_PI.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_PI_Server.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_PortableGroup.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_PortableServer.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Strategies.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Svc_Utils.so.2.2a_p15 ${D}${libdir}<br>
        oe_soinstall libTAO_Valuetype.so.2.2a_p15 ${D}${libdir}<br>
        }<br>
        <br>
        # Don't bother trying to build the debug package, at least for
        now!<br>
        INHIBIT_PACKAGE_STRIP = "1"<br>
        INHIBIT_SYSROOT_STRIP = "1"<br>
        INHIBIT_PACKAGE_DEBUG_SPLIT = "1"<br>
        <br>
        # Inhibit warnings about files being stripped<br>
        INSANE_SKIP_${PN} = "ldflags"<br>
        INSANE_SKIP_${PN} = "already-stripped"<br>
        <br>
        # No .h files to be packaged, so only list .so stuff<br>
        FILES_${PN} = "${bindir}/* ${libdir}/*.so.*"<br>
        FILES_${PN}-dev = "${bindir}/* ${libdir}/*.so"<br>
        ===<br>
        <br>
        The files were all built in another folder but I've copied them
        into the project-spec/meta-user/recipes-apps/opendds/files
        folder so that they can be picked up ok. I uses the normal
        install to do the binaries, and oe_soinstall to work with the
        versioned shared libraries, as described in various places.<br>
        <br>
        I added a print statement into package.bbclass at line 1233 (see
        below) to try to get a bit more information into the log file
        about the point where it's breaking). The log then shows this
        below (I presume that the stderr output being in the middle of
        that lot is just some sequencing effect):<br>
        <br>
        ===<br>
        DEBUG: Executing python function package_fixsymlinks<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Svc_Utils.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ClientORB.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_Framework.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps_Udp.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Rtps.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_ImR_Client_IDL.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_DynamicInterface.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_AnyTypeCode.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Tcp.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator_IDL.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoDiscovery.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoLib.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Valuetype.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_BiDirGIOP.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Messaging.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORManip.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Serv.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableServer.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Activator.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Async_IORTable.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IDL_FE.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACEXML_Parser.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_monitor.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Multicast.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI_Server.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Strategies.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Federator.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Shmem.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Model.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PI.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CodecFactory.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FT_ServerORB.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libACE.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Dcps.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_IORTable.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CosNaming_Skel.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Locator_IDL.so,
        pkg: opendds-devERROR: Error executing a python function in
        exec_python_func() autogenerated:<br>
        <br>
        The stack trace of python calls that resulted in this
        exception/failure was:<br>
        File: 'exec_python_func() autogenerated', lineno: 2, function:
        &lt;module&gt;<br>
        0001:<br>
        *** 0002:package_fixsymlinks(d)<br>
        0003:<br>
        File:
'/opt/pkg/petalinux/components/yocto/source/arm/layers/core/meta/classes/package.bbclass',
        lineno: 1236, function: package_fixsymlinks<br>
        1232: for path in pkgfiles[pkg]:<br>
        1233: print('path: %s, pkg: %s' % (path, pkg))<br>
        1234: rpath = path[len(inst_root):]<br>
        1235: pkg_files[pkg].append(rpath)<br>
        *** 1236: rtarget = cpath.realpath(path, inst_root, True,
        assume_dir = True)<br>
        1237: if not cpath.lexists(rtarget):<br>
        1238:
        dangling_links[pkg].append(os.path.normpath(rtarget[len(inst_root):]))<br>
        1239:<br>
        1240: newrdepends = {}<br>
        File:
'/opt/pkg/petalinux/components/yocto/source/arm/layers/core/meta/lib/oe/cachedpath.py',
        lineno: 229, function: realpath<br>
        0225: # be printed a backtrace with 100s of OSError exceptions<br>
        0226: # else<br>
        0227: raise OSError(errno.ELOOP,<br>
        0228: "too much recursions while resolving '%s'; loop in '%s'" %<br>
        *** 0229: (file, e.strerror))<br>
        0230:<br>
        0231: raise<br>
        0232:<br>
        0233: return file<br>
        Exception: OSError: [Errno 40] too much recursions while
        resolving
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15';
        loop in
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'<br>
        <br>
        DEBUG: Python function package_fixsymlinks finished<br>
        DEBUG: Python function do_package finished<br>
        ERROR: Function failed: package_fixsymlinks<br>
        <br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_InfoRepoServ.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_CSD_ThreadPool.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_FTORB_Utils.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_PortableGroup.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_ImR_Client.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_FACE.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libTAO_Codeset.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/lib/libOpenDDS_Udp.so,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_locator,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_cosnaming,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsdel,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nsadd,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_nslist,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr_activator,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/DCPSInfoRepo,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds-dev/usr/bin/tao_imr,
        pkg: opendds-dev<br>
        path:
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15,
        pkg: opendds<br>
        ===<br>
        <br>
        In addition, I get a batch of the following messages coming out:<br>
        <br>
        ===<br>
        1: opendds-1.0-r0 do_package - 0s (pid 23258)<br>
        link recursion too deep, not expanding path
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/libTAO_Svc_Utils.so.2.2a_p15'.<br>
        link recursion too deep, not expanding path
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/libTAO_PI_Server.so.2.2a_p15'.<br>
        link recursion too deep, not expanding path
'&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0-r0/package/usr/lib/libTAO_PI.so.2.2a_p15'.<br>
        ===<br>
        <br>
        And, when I go into the lib folder and list the contents, I see:<br>
        <br>
        ===<br>
        :<br>
        lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so
        -&gt; libTAO_PI_Server.so.2.2a_p15<br>
        lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38
        libTAO_PI_Server.so.2.2a_p15 -&gt; libTAO_PI_Server.so.2.2a_p15<br>
        :<br>
        ===<br>
        <br>
        With (on Ubuntu), all the filenames in red with a grey (or
        black?) background, i.e. broken links.<br>
        <br>
        I have a couple of questions about all this:<br>
        <br>
        1) The oe_soinstall function (see here -
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/utils.bbclass">https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/utils.bbclass</a>)
        includes a line that installs (using "install") the xxx.so.x.y
        file, which causes a copy of the file from ${WORKDIR} to go into
        the
&lt;project-base&gt;/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi.opendds/1.0-r0/image/usr/lib
        directory. It then generates sonamelink and solink from the
        library details and creates symbolic links that point back to
        the copies of the library files in ${WORKDIR}. In doing that,
        the copy of the file that was placed there by the install line
        is overwritten with the symbolic link; is that normal? (I
        presume it must be otherwise no one would be getting
        oe_soinstall to work!).<br>
        <br>
        2) Is there anything in the shared library filenames' version
        part that could be causing something to get confused? I've seen
        mention of zzz.so.a.b.c etc where a, b and c are normally
        numeric, which is different to the version information in the
        DDS files, but...<br>
        <br>
        3) I can understand why there could be a recursion issue
        detected, but it's not met who's putting those weird links into
        the package/usr/lib folder. Is there something in the .bb file
        that I need to change to make that work properly?<br>
        <br>
        4) Can anyone see whether I'm just simply doing something wrong
        and clarify what I need to do to put it right?<br>
        <br>
        Any help will be very, very gratefully appreciated. As I said,
        I'm new to Yocto and have spent hours looking for help/example
        of the use of oe_soinstall. Each time round the loop of updating
        my .bb file and building it takes quite a long time so...<br>
        <br>
        Many thanks,<br>
        John<br>
      </div>
      <div
        style="mso-line-height-rule:exactly;-webkit-text-size-adjust:100%;">
        <table style="width:100%;" border="0" cellpadding="0"
          cellspacing="0">
          <tbody>
            <tr style="font-size:0;">
              <td style="vertical-align:top;" align="left">
                <table style="font-size:0;" border="0" cellpadding="0"
                  cellspacing="0">
                  <tbody>
                    <tr style="font-size:0;">
                      <td style="vertical-align:top;" align="left">
                        <table style="font-size:0;" border="0"
                          cellpadding="0" cellspacing="0">
                          <tbody>
                            <tr style="font-size:0;">
                              <td style="vertical-align:top;"
                                align="left">
                                <table style="font-size:0;" border="0"
                                  cellpadding="0" cellspacing="0">
                                  <tbody>
                                    <tr style="font-size:0;">
                                      <td
                                        style="padding:0;vertical-align:middle;line-height:normal;"
                                        align="left"><img
                                          src="cid:part1.D3FD66DD.373F8B24@windriver.com"
                                          alt=""
                                          style="height:90px;min-height:90px;max-height:90px;font-size:0;"
                                          border="0" height="90"></td>
                                      <td style="padding:0
                                        5px;vertical-align:middle;"
                                        align="left">
                                        <table
style="width:100%;font-size:0;color:#000001;font-style:normal;font-weight:400;white-space:nowrap;"
                                          border="0" cellpadding="0"
                                          cellspacing="0">
                                          <tbody>
                                            <tr
                                              style="font-size:16px;font-weight:700;">
                                              <td
                                                style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                align="left">John McCabe<span
style="font-family:remialcxesans;font-size:1px;color:#FFFFFF;line-height:1px;">​</span></td>
                                            </tr>
                                            <tr
                                              style="font-size:14.67px;">
                                              <td
                                                style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                align="left">Principal Software Engineer</td>
                                            </tr>
                                            <tr
                                              style="font-size:14.67px;">
                                              <td
                                                style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                align="left">Kirintec Ltd</td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td style="padding:0;"> </td>
                                      <td style="padding:0 0 0
5px;border-top:none;border-right:none;border-bottom:none;border-left:solid
                                        2px
                                        #000001;vertical-align:middle;"
                                        align="left">
                                        <table style="font-size:0;"
                                          border="0" cellpadding="0"
                                          cellspacing="0">
                                          <tbody>
                                            <tr style="font-size:0;">
                                              <td
                                                style="vertical-align:top;"
                                                align="left">
                                                <table
                                                  style="font-size:0;line-height:normal;"
                                                  border="0"
                                                  cellpadding="0"
                                                  cellspacing="0">
                                                  <tbody>
                                                    <tr
                                                      style="font-size:0;">
                                                      <td
                                                        style="padding:0;vertical-align:top;"
                                                        align="left"><img
src="cid:part2.DA0421C8.DC83AE24@windriver.com" alt=""
                                                          style="width:20px;min-width:20px;max-width:20px;font-size:0;"
                                                          border="0"
                                                          width="20"></td>
                                                      <td
                                                        style="padding:0;vertical-align:top;"
                                                        align="left">
                                                        <table
style="font-size:0;color:#000001;font-style:normal;font-weight:400;white-space:nowrap;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:14.67px;">
                                                          <td
                                                          style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                          align="left">  <br>
                                                          </td>
                                                          <td
                                                          style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                          align="left">+44 (0) 1989 568350<br>
                                                          </td>
                                                          </tr>
                                                          </tbody>
                                                        </table>
                                                      </td>
                                                    </tr>
                                                    <tr
                                                      style="font-size:0;">
                                                      <td
                                                        style="padding:0;"> </td>
                                                      <td
                                                        style="padding:0;"> </td>
                                                    </tr>
                                                    <tr
                                                      style="font-size:0;">
                                                      <td
                                                        style="padding:0;vertical-align:top;"
                                                        align="left"><img
src="cid:part3.301A46BD.9B58020C@windriver.com" alt=""
                                                          style="width:20px;min-width:20px;max-width:20px;font-size:0;"
                                                          border="0"
                                                          width="20"></td>
                                                      <td
                                                        style="padding:0;vertical-align:top;"
                                                        align="left">
                                                        <table
style="font-size:0;color:#000001;font-style:normal;font-weight:400;white-space:nowrap;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:14.67px;">
                                                          <td
                                                          style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                          align="left">  <br>
                                                          </td>
                                                          <td
                                                          style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                          align="left"><a
moz-do-not-send="true" href="mailto:JMcCabe@kirintec.com"
                                                          target="_blank"
id="LPlnk689713" style="text-decoration:none;color:#000001;"><strong
                                                          style="font-weight:400;">JMcCabe@kirintec.com</strong></a></td>
                                                          </tr>
                                                          </tbody>
                                                        </table>
                                                      </td>
                                                    </tr>
                                                    <tr
                                                      style="font-size:0;">
                                                      <td
                                                        style="padding:0;vertical-align:top;"
                                                        align="left"><img
src="cid:part5.18E0DF97.C519D816@windriver.com" alt=""
                                                          style="width:20px;min-width:20px;max-width:20px;font-size:0;"
                                                          border="0"
                                                          width="20"></td>
                                                      <td
                                                        style="padding:0;vertical-align:top;"
                                                        align="left">
                                                        <table
style="font-size:0;color:#000001;font-style:normal;font-weight:400;white-space:nowrap;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:14.67px;">
                                                          <td
                                                          style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                          align="left">  <br>
                                                          </td>
                                                          <td
                                                          style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                                                          align="left"><a
moz-do-not-send="true" href="http://www.kirintec.com/" target="_blank"
                                                          id="LPlnk689713"
style="text-decoration:none;color:#000001;"><strong
                                                          style="font-weight:400;">www.kirintec.com</strong></a></td>
                                                          </tr>
                                                          </tbody>
                                                        </table>
                                                      </td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                              </td>
                                            </tr>
                                            <tr style="font-size:0;">
                                              <td
                                                style="vertical-align:top;"
                                                align="left">
                                                <table
                                                  style="font-size:0;"
                                                  border="0"
                                                  cellpadding="0"
                                                  cellspacing="0">
                                                  <tbody>
                                                    <tr
                                                      style="font-size:0;">
                                                      <td
                                                        style="padding:5px
                                                        0
                                                        0;vertical-align:top;"
                                                        align="left">
                                                        <table
                                                          style="font-size:0;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:0;">
                                                          <td
style="vertical-align:top;font-size:14.67px;color:#000001;font-family:Calibri,Arial,sans-serif;font-style:normal;font-weight:400;white-space:nowrap;"
                                                          align="left">Follow us: </td>
                                                          <td
                                                          style="vertical-align:top;"
                                                          align="left">
                                                          <table
                                                          style="font-size:0;line-height:normal;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:0;">
                                                          <td
                                                          style="padding:0
                                                          3px 3px
                                                          0;vertical-align:top;"
                                                          align="left"><a
moz-do-not-send="true" href="https://en-gb.facebook.com/Kirintec/"
                                                          target="_blank"
id="LPlnk689713" style="text-decoration:none;"><img
                                                          src="cid:part7.CF03890E.D31849A2@windriver.com"
                                                          alt=""
                                                          style="width:20px;min-width:20px;max-width:20px;font-size:0;"
                                                          border="0"
                                                          width="20"></a></td>
                                                          </tr>
                                                          </tbody>
                                                          </table>
                                                          </td>
                                                          <td
                                                          style="vertical-align:top;"
                                                          align="left">
                                                          <table
                                                          style="font-size:0;line-height:normal;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:0;">
                                                          <td
                                                          style="padding:0
                                                          3px 3px
                                                          0;vertical-align:top;"
                                                          align="left"><a
moz-do-not-send="true" href="https://uk.linkedin.com/company/kirintec"
                                                          target="_blank"
id="LPlnk689713" style="text-decoration:none;"><img
                                                          src="cid:part9.1FF07F0D.3F1850B1@windriver.com"
                                                          alt=""
                                                          style="width:20px;min-width:20px;max-width:20px;font-size:0;"
                                                          border="0"
                                                          width="20"></a></td>
                                                          </tr>
                                                          </tbody>
                                                          </table>
                                                          </td>
                                                          <td
                                                          style="vertical-align:top;"
                                                          align="left">
                                                          <table
                                                          style="font-size:0;line-height:normal;"
                                                          border="0"
                                                          cellpadding="0"
cellspacing="0">
                                                          <tbody>
                                                          <tr
                                                          style="font-size:0;">
                                                          <td
                                                          style="padding:0
                                                          3px 3px
                                                          0;vertical-align:top;"
                                                          align="left"><a
moz-do-not-send="true" href="https://twitter.com/KirintecLtd"
                                                          target="_blank"
id="LPlnk689713" style="text-decoration:none;"><img
                                                          src="cid:part11.786296B5.36771DCA@windriver.com"
                                                          alt=""
                                                          style="width:20px;min-width:20px;max-width:20px;font-size:0;"
                                                          border="0"
                                                          width="20"></a></td>
                                                          </tr>
                                                          </tbody>
                                                          </table>
                                                          </td>
                                                          </tr>
                                                          </tbody>
                                                        </table>
                                                      </td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
            <tr
style="color:#000001;font-size:14.67px;font-style:normal;font-weight:400;white-space:nowrap;">
              <td
                style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                align="left"><br>
                ​<br>
                ​<br>
              </td>
            </tr>
            <tr
style="color:#000001;font-size:14.67px;font-style:normal;font-weight:400;white-space:nowrap;">
              <td
                style="vertical-align:top;font-family:Calibri,Arial,sans-serif;"
                align="left"><br>
              </td>
            </tr>
            <tr style="font-size:0;line-height:normal;">
              <td style="vertical-align:top;" align="left"><a
                  moz-do-not-send="true"
                  href="https://www.kirintec.com/" target="_blank"
                  id="LPlnk689713" style="text-decoration:none;"><img
                    src="cid:part13.7780B475.C307B7DD@windriver.com"
                    alt="" style="font-size:0;" border="0"></a></td>
            </tr>
            <tr style="font-size:0;">
              <td style="vertical-align:top;" align="left">
                <table
style="white-space:normal;color:#A39E9E;font-size:14.67px;font-family:Calibri,Arial,sans-serif;font-weight:400;font-style:normal;text-align:justify;width:100%;"
                  border="0" cellpadding="0" cellspacing="0">
                  <tbody>
                    <tr style="font-size:14.67px;">
                      <td style="font-family:Calibri,Arial,sans-serif;">Receipt of
                        this e-mail is subject to conditions, view our
                        email disclaimer. Kirintec Limited of
                        Ross-on-Wye HR9 5PB is ​registered in England
                        and Wales with the company number 6699502. <br>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part1.D3FD66DD.373F8B24@windriver.com>

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
YII=

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part2.DA0421C8.DC83AE24@windriver.com>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADqSURBVDhP1dOh0kFBGMbxM0YQBOELgiAILkFw
AV8QBJooCILoHgQXILgIUaQJgiAIzAiiIAr8H2ffmZ2Tlh3BM/ObXcJzzq5X8u0U0cbo9SkyeSzx
cPqISgdWJhfojT/ODH6hTPBWcm5Vam7103BrcPzCk1sta3TT7WdpwY56QwHROcBK9SNFZwArvKKK
qOiYG1jpCprPqJShGbTSBUrwU0cv3YZF43KHlZ7RhKLxsgfqBMGj9Q/do5XqAXMcve/MFEHR0fbI
FmTtEBz9n/Vm/hVkjfF2dHc6mu7TirYYInoSKvhLt7+VJHkCw5tJ40GOkRMAAAAASUVORK5CYII=

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part3.301A46BD.9B58020C@windriver.com>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAEHSURBVDhP7ZM/TgJBGEdXYqEJhYmxs+AAFhYU
HsADQGdBYaJHMCF0lN7AwnAAay5AZ2NCQUGLobCwsLCAwkTeG/5kVDbOhhJe8rJ8s8xvdma/zXZs
zN7iKud4g+VQpTPFJ+xZxIEDfMHXUKVzjFd4EqqIb2zMfxbiAp37Bwef8SBUaexjF3MD39A/pJyj
YY/4iavA0uK6pI4+YR/PHMjhFN1NFZ2zFlepoCu38QPXneklvuMDurhzcrfszSU1dDuGu4jc4QRv
QzUnOVDszSHaUh7DGH3CmEKB4rbss2s8cuAXhQP/40dg/KXYMi0chSod37jtc2gRB7qlJhZpbPnC
Dt6HatvIshmo9DEY0eX7GAAAAABJRU5ErkJggg==

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part5.18E0DF97.C519D816@windriver.com>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAF/SURBVDhPvZStL0dRGMevlyAIJtkIgiAKgiAI
giAKJgmCP0AQbYIgiKIgCIJIEGyCSGcTvBQ2G0Fg4/P5/c6xc+89l9nMd/vcc+855z73Oc/LLf5a
HWFs0gCMwQh0wxVcwC38SuOwD2/wkeEQpqGmrjCmWgKN9cMx3MMOPMMw6KkeL4Dvn0CjNKYHe9Dr
RNAknMET3EDq7Tpk5TFfYbf1VNYqaEyjergcnqPRWajJY7qYjQ3qA08Q5b5o8NyJVGYzJuAa9KJJ
rm1ANBYxLEWnF2RpRCOP8N6+zUovV9q3JU14iQbNWpSxzMYEjcI25E4w6CUarG4wMa0vItf0ykRs
OdGgkg09qsbEWOrtVDL3kNxXsRK+ZMHmNp3CEGyCmczticxASbZTbqP1dgBz4fkljCmXUJN11dS7
YodYqz1gEk1OXFuErNYgNVIl7SJjpgP2+beyN3PGZB5MYAyPxnIlVJMv5ZJgrzsas+wxf/rB2k7W
o0WrJ3fgD/YI/kNF8Qlh4IuMeZbJHgAAAABJRU5ErkJggg==

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part7.CF03890E.D31849A2@windriver.com>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAIWSURBVDhP1ZNNSBRhGMf/74hr+MGKH9mHkdhK
unUJ6mDtzchbRIJQkKcOerCDBwk6JAR18GjFnjpZRHTqIF4KIRZCiCIwKotYM3e3ZndnZ3Z2dlx3
pud9fXcSScbaUz944HmeefjzfLzDQPQP3zvV3dl2vaO98WJtbQ1P7ZpSqQw1a859+Z6ejj0cW2Bc
7Fzk6GJPV6ss+TdWEjnMv/xwng2Nzz4d6A8NyXxVxF7Hv7GRySdu35G9MuVPb3c7Th4/iKaGOhEb
po3ZZ2+F/ymuQtkoO8jli7uycKgDF86G0bkviGDTHmEN9QHvu21vQDGtEvS87WuFYgmDkZDopIJO
IhnN8mosqmGRy1G3JVjvjbATh/YHcWdiUEbArfsv8PGrKiOgYK3TtQtQXBdIawWsrGlIqgayOQs5
g0bYZoyJFyZQqX7x3SqyuoVUOk8X1vAjY8IhMUXWiKBIO+C70AwpKnej0+JN6qACf3uVGj6m41BX
EnbmUvR39AemxgfQSitppJX0HN58q+skuLScEn6CprodXRA+x+twJ47RZU+ED3hinAD9TTzHrZku
vRVfQT9Wk7r0NvEdmXcYCNSIDq9dOS1yGTrKzbvPhZ/8aSBBVsG3w6XPKbx5v4bleFpmAJt2yHPc
topxqh55O/+DoIs56VeNCzellIEZGVcN/Z03lFePR+eZw4ZJPi7zfw3vDMy9Gns09uAX9UAvEBJv
mt4AAAAASUVORK5CYII=

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part9.1FF07F0D.3F1850B1@windriver.com>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAIXSURBVDhPY2QAgeJNpppS/BVyApxB7CxMYCFi
wc8//xieffq+7fKLb90MnZ4HGEGGRRjLnjKU4oMqIQ/cfP2FYeGZp36M8h1714TrSQVDxSkCm2+8
fsyo23/ov5msAFSIgUGQk5VBjIcNaONXqAjx4PyzTwyMGj0H/2uIcYMFhLnYGOYE64LZs089Yth2
8zWYTSy48eorA9Onn38Y3n77DcbcrMxQKQYGXnYWuDix+MuvPwyMjBVb/0vwsDMIAL0KivIMCzkG
WX5OhknHHjC8/PwTYjoRAOSwZ59+As0o3/ofJMDEyMggwMHCIC/ICWaDFHz88ZtBipeDgZmJkeHn
338Mr778BIYvO4OKMDfDDWCsvvn6i+HH778M34FJ5+8/sDEIA0HAQUmYYX+aOZjdtPc2EN9huFPq
wKAAtOTow/cMTz5+ZwCmCLA8CDTuuc3QAMTIAGcq/g+0BmYrCFjLC6IYBgL1LqpA13JBeRBAUrbI
3XSVQbFzP8OS80+hIgwMNgpCUBYEEG3gH6BrZ5x4xPDg/XeGlZeeQ0UZwMGBDIg28MnHH2BDQeDL
z79gGhsgrSQgAgx+A5kZbKIboGww+PjjD8PBe+8YDgAxKAIYgYn85KMPDAfvv2M4AaRhAF0dDDAy
lG3dCiS9oHzKwH+Gl0wM//5PhnKpABirmRh6fHYwMDKFAXkPIYJkAKDLGP4zpjB0ec0DACa67EDp
i76QAAAAAElFTkSuQmCC

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part11.786296B5.36771DCA@windriver.com>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAI4SURBVDhPrZTLaxNRFId/czOTSaeiiaZWLWIr
Bp+opRSlq4L7gNVWcOWi3XThpiBC/wQ3giC4EcSNQty4qEIRu9UWQQQJCL5K4iM2xryTmbnXcycz
acbYWI0fHHLPybnnNWdGATF1LzO6J6JdjRqBCY1Jy+YxOZAt2wupvLh2fzKypMhgY0M9zwfDAdfl
30gXOJbe1+LK7KNcYmwgeM61d8XKJ3NVmVv8IQ5EVNfUHe9yFphNMyjUuSN0RImG4umtUrEEhndp
OH84hIlDIcS2BxCkKe3dxpo+dRtgZVOgWG/ICF2IHwzBosiezZPxfUGcGtAQNRh29jKcGdJx6YQB
WZDnX6WkLFfl+FzkyNeEkzFG7c8MG9iqK5RVOFKxgOP9WqOvFhjtiBBApszxtcSRpViMdHynQ7po
YzlddxxlFXOnt+DyaC/GB3Wc7FcRcBbMz1qF40GySk/Yds4yeHPrpKLTLZnNQ65SPKbj4rEe1+JH
BpJtclmVi2+NQ6qCPqpus3zMryf38N1++KaGxbc12C0ZO/E6Y7qndXwBTYq0nDadVv5E8pvl+P5K
W3/JNctZhU7IDm69KLuan7aAcshXnuRx91Xlt63L/2+ulJDaoAtlMpFtXjvap2I/7eGRqIqR3e17
t5q3cf1ZyfndCF+FKfpiGJqCcIjRK9jIIyuS87rzsoz5p4WOwSS+Cv8HDEJZcM9dI4T4wgTnN1y9
e1Q2zxIXdjwWgk1R+A+u+a+RlYmAMp04G779ExnyIHFo+j6EAAAAAElFTkSuQmCC

--------------DF6CAB5A4EF8859F8B423D63
Content-Type: image/jpeg
Content-Transfer-Encoding: base64
Content-ID: <part13.7780B475.C307B7DD@windriver.com>

/9j/4AAQSkZJRgABAQEBLAEsAAD/7RLwUGhvdG9zaG9wIDMuMAA4QklNBCUAAAAAABAAAAAAAAAA
AAAAAAAAAAAAOEJJTQQ6AAAAAAEBAAAAEAAAAAEAAAAAAAtwcmludE91dHB1dAAAAAUAAAAAUHN0
U2Jvb2wBAAAAAEludGVlbnVtAAAAAEludGUAAAAAQ2xybQAAAA9wcmludFNpeHRlZW5CaXRib29s
AAAAAAtwcmludGVyTmFtZVRFWFQAAAAPAFMAaABhAHIAcAAgAE0AWAAtADIANgAxADAATgAAAAAA
D3ByaW50UHJvb2ZTZXR1cE9iamMAAAAMAFAAcgBvAG8AZgAgAFMAZQB0AHUAcAAAAAAACnByb29m
U2V0dXAAAAABAAAAAEJsdG5lbnVtAAAADGJ1aWx0aW5Qcm9vZgAAAAlwcm9vZkNNWUsAOEJJTQQ7
AAAAAAItAAAAEAAAAAEAAAAAABJwcmludE91dHB1dE9wdGlvbnMAAAAXAAAAAENwdG5ib29sAAAA
AABDbGJyYm9vbAAAAAAAUmdzTWJvb2wAAAAAAENybkNib29sAAAAAABDbnRDYm9vbAAAAAAATGJs
c2Jvb2wAAAAAAE5ndHZib29sAAAAAABFbWxEYm9vbAAAAAAASW50cmJvb2wAAAAAAEJja2dPYmpj
AAAAAQAAAAAAAFJHQkMAAAADAAAAAFJkICBkb3ViQG/gAAAAAAAAAAAAR3JuIGRvdWJAb+AAAAAA
AAAAAABCbCAgZG91YkBv4AAAAAAAAAAAAEJyZFRVbnRGI1JsdAAAAAAAAAAAAAAAAEJsZCBVbnRG
I1JsdAAAAAAAAAAAAAAAAFJzbHRVbnRGI1B4bEBywAAAAAAAAAAACnZlY3RvckRhdGFib29sAQAA
AABQZ1BzZW51bQAAAABQZ1BzAAAAAFBnUEMAAAAATGVmdFVudEYjUmx0AAAAAAAAAAAAAAAAVG9w
IFVudEYjUmx0AAAAAAAAAAAAAAAAU2NsIFVudEYjUHJjQFkAAAAAAAAAAAAQY3JvcFdoZW5Qcmlu
dGluZ2Jvb2wAAAAADmNyb3BSZWN0Qm90dG9tbG9uZwAAAAAAAAAMY3JvcFJlY3RMZWZ0bG9uZwAA
AAAAAAANY3JvcFJlY3RSaWdodGxvbmcAAAAAAAAAC2Nyb3BSZWN0VG9wbG9uZwAAAAAAOEJJTQPt
AAAAAAAQASwAAAABAAIBLAAAAAEAAjhCSU0EJgAAAAAADgAAAAAAAAAAAAA/gAAAOEJJTQQNAAAA
AAAEAAAAWjhCSU0EGQAAAAAABAAAAB44QklNA/MAAAAAAAkAAAAAAAAAAAEAOEJJTScQAAAAAAAK
AAEAAAAAAAAAAjhCSU0D9QAAAAAASAAvZmYAAQBsZmYABgAAAAAAAQAvZmYAAQChmZoABgAAAAAA
AQAyAAAAAQBaAAAABgAAAAAAAQA1AAAAAQAtAAAABgAAAAAAAThCSU0D+AAAAAAAcAAA////////
/////////////////////wPoAAAAAP////////////////////////////8D6AAAAAD/////////
////////////////////A+gAAAAA/////////////////////////////wPoAAA4QklNBAAAAAAA
AAIAAjhCSU0EAgAAAAAADgAAAAAAAAAAAAAAAAAAOEJJTQQwAAAAAAAHAQEBAQEBAQA4QklNBC0A
AAAAAAYAAQAAAAM4QklNBAgAAAAAABAAAAABAAACQAAAAkAAAAAAOEJJTQQeAAAAAAAEAAAAADhC
SU0EGgAAAAADcQAAAAYAAAAAAAAAAAAAAJYAAAKKAAAAHgBBAHUAdABvACAAcwBpAGcAbgBpAHQA
dQByAGUAIABiAGEAbgBuAGUAcgAgAGcAcgBhAGQAaQBlAG4AdAAAAAEAAAAAAAAAAAAAAAAAAAAA
AAAAAQAAAAAAAAAAAAACigAAAJYAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAQ
AAAAAQAAAAAAAG51bGwAAAACAAAABmJvdW5kc09iamMAAAABAAAAAAAAUmN0MQAAAAQAAAAAVG9w
IGxvbmcAAAAAAAAAAExlZnRsb25nAAAAAAAAAABCdG9tbG9uZwAAAJYAAAAAUmdodGxvbmcAAAKK
AAAABnNsaWNlc1ZsTHMAAAABT2JqYwAAAAEAAAAAAAVzbGljZQAAABIAAAAHc2xpY2VJRGxvbmcA
AAAAAAAAB2dyb3VwSURsb25nAAAAAAAAAAZvcmlnaW5lbnVtAAAADEVTbGljZU9yaWdpbgAAAA1h
dXRvR2VuZXJhdGVkAAAAAFR5cGVlbnVtAAAACkVTbGljZVR5cGUAAAAASW1nIAAAAAZib3VuZHNP
YmpjAAAAAQAAAAAAAFJjdDEAAAAEAAAAAFRvcCBsb25nAAAAAAAAAABMZWZ0bG9uZwAAAAAAAAAA
QnRvbWxvbmcAAACWAAAAAFJnaHRsb25nAAACigAAAAN1cmxURVhUAAAAAQAAAAAAAG51bGxURVhU
AAAAAQAAAAAAAE1zZ2VURVhUAAAAAQAAAAAABmFsdFRhZ1RFWFQAAAABAAAAAAAOY2VsbFRleHRJ
c0hUTUxib29sAQAAAAhjZWxsVGV4dFRFWFQAAAABAAAAAAAJaG9yekFsaWduZW51bQAAAA9FU2xp
Y2VIb3J6QWxpZ24AAAAHZGVmYXVsdAAAAAl2ZXJ0QWxpZ25lbnVtAAAAD0VTbGljZVZlcnRBbGln
bgAAAAdkZWZhdWx0AAAAC2JnQ29sb3JUeXBlZW51bQAAABFFU2xpY2VCR0NvbG9yVHlwZQAAAABO
b25lAAAACXRvcE91dHNldGxvbmcAAAAAAAAACmxlZnRPdXRzZXRsb25nAAAAAAAAAAxib3R0b21P
dXRzZXRsb25nAAAAAAAAAAtyaWdodE91dHNldGxvbmcAAAAAADhCSU0EKAAAAAAADAAAAAI/8AAA
AAAAADhCSU0EFAAAAAAABAAAAAo4QklNBAwAAAAACX8AAAABAAAAnAAAACQAAAHUAABB0AAACWMA
GAAB/9j/7QAMQWRvYmVfQ00AAf/uAA5BZG9iZQBkgAAAAAH/2wCEAAwICAgJCAwJCQwRCwoLERUP
DAwPFRgTExUTExgRDAwMDAwMEQwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwBDQsLDQ4NEA4O
EBQODg4UFA4ODg4UEQwMDAwMEREMDAwMDAwRDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/A
ABEIACQAnAMBIgACEQEDEQH/3QAEAAr/xAE/AAABBQEBAQEBAQAAAAAAAAADAAECBAUGBwgJCgsB
AAEFAQEBAQEBAAAAAAAAAAEAAgMEBQYHCAkKCxAAAQQBAwIEAgUHBggFAwwzAQACEQMEIRIxBUFR
YRMicYEyBhSRobFCIyQVUsFiMzRygtFDByWSU/Dh8WNzNRaisoMmRJNUZEXCo3Q2F9JV4mXys4TD
03Xj80YnlKSFtJXE1OT0pbXF1eX1VmZ2hpamtsbW5vY3R1dnd4eXp7fH1+f3EQACAgECBAQDBAUG
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
QffWSrDN/mvnpJQSbUH6MZv80dm6e8r5sSUMm1B+mRu7z80Zu6O8L5gSUMmzB+kfrHs/YOb6s7fT
9sfvbm+l/wCCbEP6mfaP2FV630d9noePp7vzv+u+r/YXzkkpf/Ah/wBr/wBx+ixj/d0f9idv9p+l
/VfqpJfKqSqN5+qkl8qpJKfql27adsbo0niVwP6p/wCN93+2faP7f2v1f+q9D/wJeKJJNnH/ALkz
f7TDt/dzfN/Vf//ZADhCSU0EIQAAAAAAXQAAAAEBAAAADwBBAGQAbwBiAGUAIABQAGgAbwB0AG8A
cwBoAG8AcAAAABcAQQBkAG8AYgBlACAAUABoAG8AdABvAHMAaABvAHAAIABDAEMAIAAyADAAMQA3
AAAAAQA4QklNBAYAAAAAAAcACAAAAAEBAP/hCqFFeGlmAABNTQAqAAAACAAHARIAAwAAAAEAAQAA
ARoABQAAAAEAAABiARsABQAAAAEAAABqASgAAwAAAAEAAgAAATEAAgAAACQAAAByATIAAgAAABQA
AACWh2kABAAAAAEAAACsAAAA2AAAASwAAAABAAABLAAAAAFBZG9iZSBQaG90b3Nob3AgQ0MgMjAx
NyAoTWFjaW50b3NoKQAyMDE3OjEyOjAxIDE0OjQxOjAzAAAAAAOgAQADAAAAAQABAACgAgAEAAAA
AQAAAoqgAwAEAAAAAQAAAJYAAAAAAAAABgEDAAMAAAABAAYAAAEaAAUAAAABAAABJgEbAAUAAAAB
AAABLgEoAAMAAAABAAIAAAIBAAQAAAABAAABNgICAAQAAAABAAAJYwAAAAAAAABIAAAAAQAAAEgA
AAAB/9j/7QAMQWRvYmVfQ00AAf/uAA5BZG9iZQBkgAAAAAH/2wCEAAwICAgJCAwJCQwRCwoLERUP
DAwPFRgTExUTExgRDAwMDAwMEQwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwBDQsLDQ4NEA4O
EBQODg4UFA4ODg4UEQwMDAwMEREMDAwMDAwRDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/A
ABEIACQAnAMBIgACEQEDEQH/3QAEAAr/xAE/AAABBQEBAQEBAQAAAAAAAAADAAECBAUGBwgJCgsB
AAEFAQEBAQEBAAAAAAAAAAEAAgMEBQYHCAkKCxAAAQQBAwIEAgUHBggFAwwzAQACEQMEIRIxBUFR
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
ZXNjAAAAAAAAABZJRUMgaHR0cDovL3d3dy5pZWMuY2gAAAAAAAAAAAAAABZJRUMgaHR0cDovL3d3
dy5pZWMuY2gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZGVz
YwAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAA
AAAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAGRlc2MAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlv
biBpbiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAACxSZWZlcmVuY2UgVmlld2luZyBDb25kaXRpb24g
aW4gSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB2aWV3AAAAAAATpP4AFF8u
ABDPFAAD7cwABBMLAANcngAAAAFYWVogAAAAAABMCVYAUAAAAFcf521lYXMAAAAAAAAAAQAAAAAA
AAAAAAAAAAAAAAAAAAKPAAAAAnNpZyAAAAAAQ1JUIGN1cnYAAAAAAAAEAAAAAAUACgAPABQAGQAe
ACMAKAAtADIANwA7AEAARQBKAE8AVABZAF4AYwBoAG0AcgB3AHwAgQCGAIsAkACVAJoAnwCkAKkA
rgCyALcAvADBAMYAywDQANUA2wDgAOUA6wDwAPYA+wEBAQcBDQETARkBHwElASsBMgE4AT4BRQFM
AVIBWQFgAWcBbgF1AXwBgwGLAZIBmgGhAakBsQG5AcEByQHRAdkB4QHpAfIB+gIDAgwCFAIdAiYC
LwI4AkECSwJUAl0CZwJxAnoChAKOApgCogKsArYCwQLLAtUC4ALrAvUDAAMLAxYDIQMtAzgDQwNP
A1oDZgNyA34DigOWA6IDrgO6A8cD0wPgA+wD+QQGBBMEIAQtBDsESARVBGMEcQR+BIwEmgSoBLYE
xATTBOEE8AT+BQ0FHAUrBToFSQVYBWcFdwWGBZYFpgW1BcUF1QXlBfYGBgYWBicGNwZIBlkGagZ7
BowGnQavBsAG0QbjBvUHBwcZBysHPQdPB2EHdAeGB5kHrAe/B9IH5Qf4CAsIHwgyCEYIWghuCIII
lgiqCL4I0gjnCPsJEAklCToJTwlkCXkJjwmkCboJzwnlCfsKEQonCj0KVApqCoEKmAquCsUK3Arz
CwsLIgs5C1ELaQuAC5gLsAvIC+EL+QwSDCoMQwxcDHUMjgynDMAM2QzzDQ0NJg1ADVoNdA2ODakN
ww3eDfgOEw4uDkkOZA5/DpsOtg7SDu4PCQ8lD0EPXg96D5YPsw/PD+wQCRAmEEMQYRB+EJsQuRDX
EPURExExEU8RbRGMEaoRyRHoEgcSJhJFEmQShBKjEsMS4xMDEyMTQxNjE4MTpBPFE+UUBhQnFEkU
ahSLFK0UzhTwFRIVNBVWFXgVmxW9FeAWAxYmFkkWbBaPFrIW1hb6Fx0XQRdlF4kXrhfSF/cYGxhA
GGUYihivGNUY+hkgGUUZaxmRGbcZ3RoEGioaURp3Gp4axRrsGxQbOxtjG4obshvaHAIcKhxSHHsc
oxzMHPUdHh1HHXAdmR3DHeweFh5AHmoelB6+HukfEx8+H2kflB+/H+ogFSBBIGwgmCDEIPAhHCFI
IXUhoSHOIfsiJyJVIoIiryLdIwojOCNmI5QjwiPwJB8kTSR8JKsk2iUJJTglaCWXJccl9yYnJlcm
hya3JugnGCdJJ3onqyfcKA0oPyhxKKIo1CkGKTgpaymdKdAqAio1KmgqmyrPKwIrNitpK50r0SwF
LDksbiyiLNctDC1BLXYtqy3hLhYuTC6CLrcu7i8kL1ovkS/HL/4wNTBsMKQw2zESMUoxgjG6MfIy
KjJjMpsy1DMNM0YzfzO4M/E0KzRlNJ402DUTNU01hzXCNf02NzZyNq426TckN2A3nDfXOBQ4UDiM
OMg5BTlCOX85vDn5OjY6dDqyOu87LTtrO6o76DwnPGU8pDzjPSI9YT2hPeA+ID5gPqA+4D8hP2E/
oj/iQCNAZECmQOdBKUFqQaxB7kIwQnJCtUL3QzpDfUPARANER0SKRM5FEkVVRZpF3kYiRmdGq0bw
RzVHe0fASAVIS0iRSNdJHUljSalJ8Eo3Sn1KxEsMS1NLmkviTCpMcky6TQJNSk2TTdxOJU5uTrdP
AE9JT5NP3VAnUHFQu1EGUVBRm1HmUjFSfFLHUxNTX1OqU/ZUQlSPVNtVKFV1VcJWD1ZcVqlW91dE
V5JX4FgvWH1Yy1kaWWlZuFoHWlZaplr1W0VblVvlXDVchlzWXSddeF3JXhpebF69Xw9fYV+zYAVg
V2CqYPxhT2GiYfViSWKcYvBjQ2OXY+tkQGSUZOllPWWSZedmPWaSZuhnPWeTZ+loP2iWaOxpQ2ma
afFqSGqfavdrT2una/9sV2yvbQhtYG25bhJua27Ebx5veG/RcCtwhnDgcTpxlXHwcktypnMBc11z
uHQUdHB0zHUodYV14XY+dpt2+HdWd7N4EXhueMx5KnmJeed6RnqlewR7Y3vCfCF8gXzhfUF9oX4B
fmJ+wn8jf4R/5YBHgKiBCoFrgc2CMIKSgvSDV4O6hB2EgITjhUeFq4YOhnKG14c7h5+IBIhpiM6J
M4mZif6KZIrKizCLlov8jGOMyo0xjZiN/45mjs6PNo+ekAaQbpDWkT+RqJIRknqS45NNk7aUIJSK
lPSVX5XJljSWn5cKl3WX4JhMmLiZJJmQmfyaaJrVm0Kbr5wcnImc951kndKeQJ6unx2fi5/6oGmg
2KFHobaiJqKWowajdqPmpFakx6U4pammGqaLpv2nbqfgqFKoxKk3qamqHKqPqwKrdavprFys0K1E
rbiuLa6hrxavi7AAsHWw6rFgsdayS7LCszizrrQltJy1E7WKtgG2ebbwt2i34LhZuNG5SrnCuju6
tbsuu6e8IbybvRW9j74KvoS+/796v/XAcMDswWfB48JfwtvDWMPUxFHEzsVLxcjGRsbDx0HHv8g9
yLzJOsm5yjjKt8s2y7bMNcy1zTXNtc42zrbPN8+40DnQutE80b7SP9LB00TTxtRJ1MvVTtXR1lXW
2Ndc1+DYZNjo2WzZ8dp22vvbgNwF3IrdEN2W3hzeot8p36/gNuC94UThzOJT4tvjY+Pr5HPk/OWE
5g3mlucf56noMui86Ubp0Opb6uXrcOv77IbtEe2c7ijutO9A78zwWPDl8XLx//KM8xnzp/Q09ML1
UPXe9m32+/eK+Bn4qPk4+cf6V/rn+3f8B/yY/Sn9uv5L/tz/bf///+ET3Wh0dHA6Ly9ucy5hZG9i
ZS5jb20veGFwLzEuMC8APD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6
TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0i
QWRvYmUgWE1QIENvcmUgNS42LWMxMzggNzkuMTU5ODI0LCAyMDE2LzA5LzE0LTAxOjA5OjAxICAg
ICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjIt
cmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9
Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25z
LmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9l
bGVtZW50cy8xLjEvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21t
LyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJj
ZUV2ZW50IyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9S
ZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1h
Y2ludG9zaCkiIHhtcDpDcmVhdGVEYXRlPSIyMDE3LTEyLTAxVDEwOjQzOjIxWiIgeG1wOk1ldGFk
YXRhRGF0ZT0iMjAxNy0xMi0wMVQxNDo0MTowM1oiIHhtcDpNb2RpZnlEYXRlPSIyMDE3LTEyLTAx
VDE0OjQxOjAzWiIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9
InNSR0IgSUVDNjE5NjYtMi4xIiBkYzpmb3JtYXQ9ImltYWdlL2pwZWciIHhtcE1NOkluc3RhbmNl
SUQ9InhtcC5paWQ6Yzk1MWEyNWEtZjFmYy00NDBkLWI2NzAtMzgwZmM4Nzk1YTZkIiB4bXBNTTpE
b2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6NjFmNTUxNWMtMTczMC0xMTdiLTkyNTQt
ZTMyYzY4YTBlMWJkIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6MWQ4OWEwYWEt
NzU1Ni00YTg0LWJkYjAtZDEwYzQxYTk5MDNlIj4gPHBob3Rvc2hvcDpUZXh0TGF5ZXJzPiA8cmRm
OkJhZz4gPHJkZjpsaSBwaG90b3Nob3A6TGF5ZXJOYW1lPSJVbmRlcnN0YW5kaW5nIHRoZSB0aHJl
YXQsIEFEVkFOQ0lORyB0aGUgcmVzcG9uc2UuIiBwaG90b3Nob3A6TGF5ZXJUZXh0PSJVbmRlcnN0
YW5kaW5nIHRoZSB0aHJlYXQsIEFEVkFOQ0lORyB0aGUgcmVzcG9uc2UuIi8+IDxyZGY6bGkgcGhv
dG9zaG9wOkxheWVyTmFtZT0iS2lyaW50ZWMgIOKAoiAgV2FsdGVyIFNjb3R0IEhvdXNlICDigKIg
IDEwIE9sZCBHbG91Y2VzdGVyIFJvYWQgIOKAoiAgIiBwaG90b3Nob3A6TGF5ZXJUZXh0PSJLaXJp
bnRlYyAg4oCiICBXYWx0ZXIgU2NvdHQgSG91c2UgIOKAoiAgMTAgT2xkIEdsb3VjZXN0ZXIgUm9h
ZCAg4oCiICBSb3NzLW9uLVd5ZSAg4oCiICBIUjkgNVBCICDigKIgIFVuaXRlZCBLaW5nZG9tIi8+
IDwvcmRmOkJhZz4gPC9waG90b3Nob3A6VGV4dExheWVycz4gPHBob3Rvc2hvcDpEb2N1bWVudEFu
Y2VzdG9ycz4gPHJkZjpCYWc+IDxyZGY6bGk+eG1wLmRpZDo5N2YwYzkxMi1mNzQyLTQ5M2YtYjNm
ZC0wZTBkZjY4ZjdhYzA8L3JkZjpsaT4gPC9yZGY6QmFnPiA8L3Bob3Rvc2hvcDpEb2N1bWVudEFu
Y2VzdG9ycz4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0i
Y3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoxZDg5YTBhYS03NTU2LTRhODQtYmRi
MC1kMTBjNDFhOTkwM2UiIHN0RXZ0OndoZW49IjIwMTctMTItMDFUMTA6NDM6MjFaIiBzdEV2dDpz
b2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxNyAoTWFjaW50b3NoKSIvPiA8cmRm
OmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NmMzNTIy
MTctODY3MS00MjI0LWIwOTUtODhkOGI4MmJhMjZjIiBzdEV2dDp3aGVuPSIyMDE3LTEyLTAxVDEw
OjU1OjQ5WiIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1h
Y2ludG9zaCkiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVk
IiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOmNkNDdhOGEwLTFhODYtNGQwYy1iOTZmLTRmYmU4
OTEwYzBkOSIgc3RFdnQ6d2hlbj0iMjAxNy0xMi0wMVQxNDo0MTowM1oiIHN0RXZ0OnNvZnR3YXJl
QWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE3IChNYWNpbnRvc2gpIiBzdEV2dDpjaGFuZ2Vk
PSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjb252ZXJ0ZWQiIHN0RXZ0OnBhcmFtZXRlcnM9
ImZyb20gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcCB0byBpbWFnZS9qcGVnIi8+IDxy
ZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJjb252ZXJ0ZWQg
ZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL2pwZWciLz4gPHJk
ZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOmM5NTFh
MjVhLWYxZmMtNDQwZC1iNjcwLTM4MGZjODc5NWE2ZCIgc3RFdnQ6d2hlbj0iMjAxNy0xMi0wMVQx
NDo0MTowM1oiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE3IChN
YWNpbnRvc2gpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDwvcmRmOlNlcT4gPC94bXBNTTpIaXN0b3J5
PiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpjZDQ3YThhMC0x
YTg2LTRkMGMtYjk2Zi00ZmJlODkxMGMwZDkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MWQ4
OWEwYWEtNzU1Ni00YTg0LWJkYjAtZDEwYzQxYTk5MDNlIiBzdFJlZjpvcmlnaW5hbERvY3VtZW50
SUQ9InhtcC5kaWQ6MWQ4OWEwYWEtNzU1Ni00YTg0LWJkYjAtZDEwYzQxYTk5MDNlIi8+IDwvcmRm
OkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw/eHBhY2tldCBlbmQ9InciPz7/2wBD
AAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQICAQECAQEBAgICAgICAgICAQIC
AgICAgICAgL/2wBDAQEBAQEBAQEBAQECAQEBAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC
AgICAgICAgICAgICAgICAgICAgL/wAARCACWAooDAREAAhEBAxEB/8QAHwAAAgEFAQEBAQAAAAAA
AAAABAUABgcICQoDAgsB/8QAVxAAAAYBAgMEBwYEBAIHBAUNAQIDBAUGBwARCCExEkFRgQkTFGFx
scEVIjKRofAWQtHxUnKC4SNiFxgkM5Kywhk2Q6IKJrfS8ig0NTg5REZIU3N5tuL/xAAeAQACAgID
AQEAAAAAAAAAAAAABAMFBgcCCAkBCv/EAGARAAEDAgMGAwQGBgMKCAwFBQIBAwQABQYREgcTIjEy
cRQhQQhCUcEVI1JhgdEkQ2JysfAWgpEJFzNzdJKhorKzNFNjdXaDk9I2NzhEVGS0tcLh4vEYJTV3
o4SUpLby/9oADAMBAAIRAxEAPwCoQDn12/Y690K/I/RRR/m6h7hHbf39+2o/1n8/CmA938KJT7+m
23dtvv3eWuJ9S0xRiXL/AE9rf9f66gPmnamB9POjE+e+weH11A56Uy3zHt8qOR/m3/xB/i93ntqA
+Sd6ZDqSjUuY+fiPIOfL3dP11xLkHb8qcDpSjUx69PDb37eO3TnqBz0pkeSdqPT2EA6c9/IAHly8
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
yROlOKuauPy3ifdJVXNfMzVU+HL0Squ1xqor/9k=

--------------DF6CAB5A4EF8859F8B423D63--

--------------66F861C62461CFDD6413B7E1--
