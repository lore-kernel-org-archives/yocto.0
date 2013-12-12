Return-Path: <0xf777@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 741B3E00796
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 05:38:21 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id n7so308730lam.7
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 05:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fa/4LvQpeoTo+6DYUb0R1Z4FzUJ/2wBykkGMcCscX+Y=;
	b=q7LQ/2nNglySs6aIufPBEDugpzAJ1hQ5pRXN9Dp7hdM/E5sx9QSgrHXdnyaKXoXbFS
	a6xSn9+YrO6+4fe+UJK5TseeI9lUqF9Rf3Xor3Tb+p6F+oXzK9NfuftijLb1W3IJOF2Q
	JrRRtrOK+qVkahHGQyTiEercKNnov3hIDezdgob3TVDUWChv2MmsD4v40Yi7uMOE9QkG
	LBs6EHQtvJl3nS07zymX5MrpbMMELiOzaQD+K0Vwt9QA7egkxEyYYsyp2zW2hKHe1OxN
	xT3LfWMYsHxE8PGkDL8Vcgw7kFGF+6fHjKkbqmdcOiPsLyt5TN3NFIWGO4vM2dYn+MJ3
	SsiA==
MIME-Version: 1.0
X-Received: by 10.152.143.101 with SMTP id sd5mr3808675lab.26.1386855499016;
	Thu, 12 Dec 2013 05:38:19 -0800 (PST)
Received: by 10.152.121.72 with HTTP; Thu, 12 Dec 2013 05:38:18 -0800 (PST)
Date: Thu, 12 Dec 2013 17:38:18 +0400
Message-ID: <CAHyyKNnM+ZEsVZuQnb+duYyU6BosJ2XBN7QPtvxEW6dZoCt4UA@mail.gmail.com>
From: Alex M <0xf777@gmail.com>
To: yocto@yoctoproject.org
Subject: Start custom Qt-program instead of xterm
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
X-List-Received-Date: Thu, 12 Dec 2013 13:38:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello!
I spent several days of searching over the internet, learned many
graphical images recipes, but still don't understand how to specify
for X11 server to launch my custom Qt program at startup (actually
it's bash script which runs Qt app, I'm able to start it in xterm
manually).

Which attempts I did:
1) modify /etc/X11/xinit/xinitrc: comment all last lines where twm and
xterm and wrote my app launch script name here (it's accessible from
any place because lives in /usr/bin) - no luck. When I type startx -
it works! But how about startup? This not works.
2) tried to modify startx itself in "defaultclient=" line - also out of luck.
3) then I tried to add "openbox" to my image, this action added all
OpenBox's files to image, also I specified my script name in
/etc/xdg/openbox/autostart and... no result. Moreover when I type
openbox in nasty xterm I see error: "Openbox-Message: A windows
manager is already running on screen 0". Actually, I don't see any
signs that OpenBox is running... My application won't start
automatically =(

Question: How to start up custom app in X11-based images?

P.S.

DESCRIPTION = "My custom image"
IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}
${CORE_IMAGE_EXTRA_INSTALL}"
IMAGE_FEATURES += "splash package-management x11-base"
IMAGE_LINGUAS = " "
LICENSE = "MIT"
inherit core-image distro_features_check
REQUIRED_DISTRO_FEATURES = "x11"
IMAGE_ROOTFS_SIZE = "65536"
ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
IMAGE_FSTYPES += " cpio.gz "
IMAGE_INSTALL += " openbox mysoft ldd mesa-demos quicky mc dropbear
htop pciutils usbutils bash "
IMAGE_INSTALL += " qt4-plugin-phonon-backend-gstreamer libav "
IMAGE_INSTALL += " gst-plugins-good-avi gst-fluendo-mp3
gst-fluendo-mpegdemux gst-plugins-gl gst-meta-base gstreamer
gst-ffmpeg gst-plugins-base gst-plugins-good gst-plugins-bad
gst-plugins-ugly "

where "mysoft" is my app, which is running fine when manually typing
it's name in xterm.

