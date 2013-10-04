Return-Path: <wparkermackenzie@live.com>
Received: from blu0-omc3-s12.blu0.hotmail.com (blu0-omc3-s12.blu0.hotmail.com
	[65.55.116.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3200E01654
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 17:21:13 -0700 (PDT)
Received: from BLU169-W86 ([65.55.116.73]) by blu0-omc3-s12.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 3 Oct 2013 17:21:12 -0700
X-TMN: [SNEt4iamgwBHsIlbByuuGEY9usTVdlRH]
X-Originating-Email: [wparkermackenzie@live.com]
Message-ID: <BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>
From: Parker Mackenzie <wparkermackenzie@live.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 3 Oct 2013 20:21:12 -0400
Importance: Normal
In-Reply-To: <524DD3BC.7080505@windriver.com>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>,
	<524DD3BC.7080505@windriver.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Oct 2013 00:21:12.0381 (UTC)
	FILETIME=[A194EED0:01CEC097]
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Fri, 04 Oct 2013 00:21:14 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Bruce=2C=0A=
=0A=
That got me further. I added a comment to the video on YouTube which might =
help others which stumble across the presentation.=0A=
=0A=
Now I get the following error=0A=
ERROR: Function failed: do_rootfs=0A=
=0A=
Which points me to a log file which indicates the following failed:=0A=
=0A=
=0A=
Note: adding Smart RPM DB channel=0A=
=0A=
Note: to be installed: packagegroup-core-tools-debug@beagleboard kernel-dev=
@beagleboard rpm-postinsts@all packagegroup-core-boot@beagleboard libstdc++=
6@armv7a_vfp_neon=0A=
Loading cache...=0A=
Updating cache... ######################################## [100%]=0A=
=0A=
Computing transaction...error: Can't install kernel-dev-3.4.43+git0+1bab5bd=
090948b4cc4c4ed57c834603a3cf9f235_c994390cfa28339cbc1ec3b56eeec83a5fa75bb7-=
r4.4@beagleboard: no package provides /usr/bin/python=0A=
=0A=
Saving cache...=0A=
=0A=
ERROR: Function failed: do_rootfs (see /home/parker/Projects/beagleboard/yo=
cto/poky-dylan-9.0.2/build/tmp/work/beagleboard-poky-linux-gnueabi/core-ima=
ge-minimal/1.0-r0/temp/log.do_rootfs.61003 for further information)=0A=
=0A=
=0A=
However :=0A=
[parker@jasper build]$ which python=0A=
/usr/bin/python=0A=
=0A=
=0A=
I have gone through the documentation=3B however=2C feel free to point me a=
t a resource if this is a silly new-guy question. An internet search did br=
ing up the following nugget=3B patch 2/3 sounds related=2C however=2C I am =
not sure how to proceed.=0A=
http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/34245=0A=
=0A=
Thanks in advance=2C=0A=
Parker 		 	   		  =

