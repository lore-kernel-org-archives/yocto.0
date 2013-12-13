Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D68E00796
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 09:21:29 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2013 09:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,480,1384329600"; d="scan'208";a="449689790"
Received: from junemccl-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.17])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2013 09:21:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex M <0xf777@gmail.com>
Date: Fri, 13 Dec 2013 17:21:13 +0000
Message-ID: <1386957928.P8ieWOzyec@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAHyyKNnM+ZEsVZuQnb+duYyU6BosJ2XBN7QPtvxEW6dZoCt4UA@mail.gmail.com>
References: <CAHyyKNnM+ZEsVZuQnb+duYyU6BosJ2XBN7QPtvxEW6dZoCt4UA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Start custom Qt-program instead of xterm
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
X-List-Received-Date: Fri, 13 Dec 2013 17:21:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Thursday 12 December 2013 17:38:18 Alex M wrote:
> I spent several days of searching over the internet, learned many
> graphical images recipes, but still don't understand how to specify
> for X11 server to launch my custom Qt program at startup (actually
> it's bash script which runs Qt app, I'm able to start it in xterm
> manually).
> 
> Which attempts I did:
> 1) modify /etc/X11/xinit/xinitrc: comment all last lines where twm and
> xterm and wrote my app launch script name here (it's accessible from
> any place because lives in /usr/bin) - no luck. When I type startx -
> it works! But how about startup? This not works.
> 2) tried to modify startx itself in "defaultclient=" line - also out of
> luck. 3) then I tried to add "openbox" to my image, this action added all
> OpenBox's files to image, also I specified my script name in
> /etc/xdg/openbox/autostart and... no result. Moreover when I type
> openbox in nasty xterm I see error: "Openbox-Message: A windows
> manager is already running on screen 0". Actually, I don't see any
> signs that OpenBox is running... My application won't start
> automatically =(
> 
> Question: How to start up custom app in X11-based images?
> 
> P.S.
> 
> DESCRIPTION = "My custom image"
> IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}
> ${CORE_IMAGE_EXTRA_INSTALL}"
> IMAGE_FEATURES += "splash package-management x11-base"
> IMAGE_LINGUAS = " "
> LICENSE = "MIT"
> inherit core-image distro_features_check
> REQUIRED_DISTRO_FEATURES = "x11"
> IMAGE_ROOTFS_SIZE = "65536"
> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
> IMAGE_FSTYPES += " cpio.gz "
> IMAGE_INSTALL += " openbox mysoft ldd mesa-demos quicky mc dropbear
> htop pciutils usbutils bash "
> IMAGE_INSTALL += " qt4-plugin-phonon-backend-gstreamer libav "
> IMAGE_INSTALL += " gst-plugins-good-avi gst-fluendo-mp3
> gst-fluendo-mpegdemux gst-plugins-gl gst-meta-base gstreamer
> gst-ffmpeg gst-plugins-base gst-plugins-good gst-plugins-bad
> gst-plugins-ugly "
> 
> where "mysoft" is my app, which is running fine when manually typing
> it's name in xterm.

One example we have of doing this is in the "build appliance". We have a 
"builder" recipe that among other things starts the Hob UI on startup - have a 
look at meta/recipes-graphics/builder/builder_0.1.bb to see how it works.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

