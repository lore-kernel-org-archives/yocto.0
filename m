Return-Path: <david.weisgerber@ms-gmbh.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB30CE00BF4; Thu, 17 Mar 2016 03:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.17.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4840AE00BEA
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 03:00:29 -0700 (PDT)
Received: from fourconnected.homeip.net ([91.63.241.179]) by
	mrelayeu.kundenserver.de (mreue101) with ESMTPSA (Nemesis) id
	0Lba15-1ZvvpH1pzX-00lDvl for <yocto@yoctoproject.org>; Thu, 17 Mar 2016
	11:00:28 +0100
Received: from port-212-202-162-14.static.qsc.de ([212.202.162.14]
	helo=valkyrie.localnet) by fourconnected.homeip.net with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <david.weisgerber@ms-gmbh.de>) id 1agUjC-0002tq-0e
	for yocto@yoctoproject.org; Thu, 17 Mar 2016 11:00:26 +0100
From: David Weisgerber <david.weisgerber@ms-gmbh.de>
To: yocto@yoctoproject.org
Date: Thu, 17 Mar 2016 11:00:16 +0100
Message-ID: <7854161.DWAuXE34O6@valkyrie>
Organization: M&S GmbH
User-Agent: KMail/5.0.2 (Linux/4.2.0-27-generic; KDE/5.15.0; x86_64; ; )
In-Reply-To: <16216620.hxMGgcOmQf@valkyrie>
References: <7024625.68jMvv6Lbg@valkyrie>
	<CAOorjZT6u3kXG8nt2ADrc9FD3EPSsWn_HwQuV+12A+O=E7OKAw@mail.gmail.com>
	<16216620.hxMGgcOmQf@valkyrie>
MIME-Version: 1.0
X-Provags-ID: V03:K0:rO9jSh+LnZis8rE75kVB7BQFQmqrP4ff+NxS2d7iYecCd03GTBQ
	RO1CgZwaXqaq507pu05vrGZp7GtKW6RhtcFm2eYCO9H+B7jvi2v9zGfKMBm8w6H6p/pLUm/
	uPoqktV1qj8vEqN93a7mWFvVZ9drj3Skt7UEMsnq4ZGDf1F06Llr2JrMyfNIeXvUziN8cRp
	l2u+unPx08QxhF7jzxeCg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:rBjcwb6Jz+g=:17kInkxTQIQIqxxeL0sefm
	BXzL1D72nhG8FPqnywyGjhYFA4OPdpe2pfngHM6ODdtp35JsF6KQGRg6DHj5+nvjlQg5nJEG+
	rEq55QAStVULYq0WWhX1bjAuaEFcTFP/GGGUnO5xNzmnHePcRuEmTgJSFtVLL+xSj97Aj/eFo
	tFAyj6nmIgNdeunOi3GGSXF02YGaRW/o97oc0j0bfHW1PnFXHo93Xkf2Ieg6wCStxT8CRbriJ
	xJ1V1AfsZezjzzHxdfTAGcai2ZHo+qbqJo/GGtbLaq0IVEExDLFwAEiJy2TMhXJv8hFSIA3/d
	3gPQhSMeoj0DchBp7xvtUeURDJLuFIajZ1vEcL1QeE5GbhzhT7MukI8+1BbkMImMJMjVxc9rh
	Yg7qtjGVBJ8j+5RISYKrxF1Mp8n2p9690x20npHCUl9iT3HCqLi3R/uSlHwaT/liHwq16AxF+
	ph7lb1C7iAPVlz0LUJNWchwnJyKzwrVIx1uOZ2N9ySKUKHOUdcrXXn+dLwb0jDdb/p+v5Z3Sn
	+T3sFxxTbTGFCXGjZVOwB5B6HbzF8pXnGmMiY1fZTiSfB5/VH3BNCx8qPNt0HaOSt/K9KzM9F
	oFAimfZSDLtZYxLxj6C40niDa8FYtlqRmLPN/BF54dPGqhZGoiBk8trt61B/oMthfpLi0/Vo+
	00IuYcYYm0joRjH5L7d/D9NI9CCRCtcX+wJrXa10k+yo39C06DNsYE+WMSpbPex3xGvKUsTlt
	ACJnBV8aPAyqgsHp
Subject: Re: Compiling raspberry2 with eglinfo-x11
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
X-List-Received-Date: Thu, 17 Mar 2016 10:00:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all,
I just wanted to add that I got the qt5everywheredemo running. However it 
seems as changing the GPU_MEM variable is not picked up correctly when 
changing it. I had to change my boot type to uImage (which did work because 
the raspberry pi did not boot up with it) and back, then I had the desired 
amount of video ram and the demo was working.

Regarding picking up variables: My override to the yocto splash image does not 
work always as well. Sometimes my image is taken and some times the yocto 
splash image. Just seems random to me. Are there any logs where you can see 
why what bbappend was applied?

Thank you very much,
David Weisgerber

On Thursday, March 17, 2016 10:17:56 AM David Weisgerber wrote:
> Hi,
> I got Qt to compile by solving the following "problem" in the userland EGL /
> GLESv2 code:
> # Khronos
> #
> # Note: in Android the linker is unable or unwilling to resolve
> # dynamically using already loaded symbols. The libraries here
> # have quite a few circular dependencies, and so the only way
> # to make it work seems to be to have everything static.
> 
> There is a circular dependency between libEGL and libGLESv2. You can fix the
> Qt compile by adding the following qtbase_%.bbappend:
> do_configure_prepend_rpi() {
>     cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
> EGLFS_DEVICE_INTEGRATION = eglfs_brcm
> QMAKE_INCDIR_EGL = $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
> QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}
> QMAKE_LIBS_EGL = -lEGL -lGLESv2
> EOF
> }
> 
> which just changes the order of linking to the libraries.
> 
> However, I am still not able to get the Qt eglfs programs running due to the
> following problem:
> * failed to add service - already in use?
> which must be coming from the userland code
> 
> My problem could be caused by the fact, that changing GPU_MEM does not seem
> to have any effect atm and the vc4 driver isn't loaded at startup...
> 
> Thanks for help,
> David
> 
> On Thursday, March 17, 2016 12:41:17 PM SIVA SUBRAMANIAN. P wrote:
> > What is your preferred GLES provider set to, userland or mesa?
> > 
> > On Wed, Mar 16, 2016 at 8:51 PM, David Weisgerber
> > 
> > <david.weisgerber@ms-gmbh.de> wrote:
> > > Hi,
> > > 
> > > I have problems compiling eglinfo-x11 (as well as Qt 5 from meta-qt5)
> > > with
> > > egl.
> > > 
> > > I have setup poky, meta-raspberrypi (and meta-qt5) from git and I am on
> > > branch master.
> > > 
> > > My target is to get a distribution with working (hw acceleratetd) Qt5
> > > with
> > > QML GUI. I have already spent some days on getting qteverywheredemo
> > > running
> > > but I did not succeed yet.
> > > 
> > > As a first test I wanted to get eglinfo-x11 running but it gives the
> > > following error when compiling:
> > > 
> > > [11/11] cxxprogram: build/release/src/json_writer.cpp.1.o
> > > build/release/src/log.cpp.1.o build/release/src/main.cpp.1.o
> > > build/release/src/process_egl.cpp.1.o build/release/src/scopes.cpp.1.o
> > > build/release/src/text_writer.cpp.1.o
> > > build/release/src/json-sax/json.c.1.o
> > > b
> > > uild/release/src/platform_x11_generic.cpp.1.o
> > > build/release/src/openvg_stats.cpp.1.o
> > > build/release/src/process_openvg.cpp.1.o -> build/release/eglinfo
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glDiscardFramebufferEXT'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glPointSizePointerOES'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_set_error_api'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_BindFramebuffer'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glintAttribPointer'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_state_free'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_FramebufferRenderbuffer'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_buffer_info_set'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_set_error'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_DeleteFramebuffers'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `gl11_client_state_init'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_GetFramebufferAttachmentParameteriv'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_IsRenderbuffer'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_GetRenderbufferParameteriv'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_DeleteRenderbuffers'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glBufferSubData'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_FramebufferTexture2D'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_BindRenderbuffer'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_GenerateMipmap'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_RenderbufferStorage'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_GenFramebuffers'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_GenRenderbuffers'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_CheckFramebufferStatus'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `gl20_client_state_init'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_buffer_info_get'
> > > /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so
> > > :
> > > undefined reference to `glxx_client_IsFramebuffer'
> > > 
> > > 
> > > 
> > > It links to libEGL and libGLESv2. nm says that this symbols should be in
> > > libGLESv2 but it just does not catch them up somehow?
> > > 
> > > 
> > > 
> > > My image is configured as follows:
> > > 
> > > include recipes-core/images/rpi-hwup-image.bb
> > > 
> > > 
> > > 
> > > GPU_MEM = "64"
> > > 
> > > 
> > > 
> > > LICENSE_FLAGS_WHITELIST = "commercial"
> > > 
> > > 
> > > 
> > > 
> > > 
> > > 
> > > 
> > > PACKAGECONFIG_append_pn-qtbase = "gles2"
> > > 
> > > 
> > > 
> > > SPLASH = "psplash-custopi"
> > > 
> > > 
> > > 
> > > ENABLE_SPI_BUS = "1"
> > > 
> > > 
> > > 
> > > IMAGE_FEATURES += "ssh-server-openssh splash x11-sato"
> > > 
> > > IMAGE_INSTALL_append = "qtbase qtbase-fonts custorouter custopi-gui
> > > packagegroup-core-full-cmdline bluez5 wireless-tools wpa-supplicant
> > > qt5everywheredemo fontconfig freetype packagegroup-core-x11-base
> > > packagegroup-core-x11-sato eglinfo-x11"
> > > 
> > > 
> > > 
> > > IMAGE_LINGUAS ?= "de-de es-es fr-fr en-gb"
> > > 
> > > 
> > > 
> > > Thanks for help!
> > > 
> > > 
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto


