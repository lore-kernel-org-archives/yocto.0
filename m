Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C54374C80FA8
	for <yocto@yoctoproject.org>; Fri, 17 Dec 2010 04:55:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Dec 2010 02:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,360,1288594800"; d="scan'208";a="363071921"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 17 Dec 2010 02:55:32 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 18:55:31 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Dec 2010 18:55:30 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Tim Bird <tim.bird@am.sony.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 17 Dec 2010 18:55:16 +0800
Thread-Topic: [yocto] Build success (mostly), disk space a little huge
Thread-Index: AcudYQY3HWoIPIQUT1ukcpWZeRZLCAAdwdmQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409B68@shsmsx502.ccr.corp.intel.com>
References: <4D0A7856.6010508@am.sony.com>
In-Reply-To: <4D0A7856.6010508@am.sony.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: ASkH BWx1 GfaK HIj8 J2Vr J6ze Mg4b Nf0b OJLm Oz1k P2BK
	QfbZ QrsH Qrxe RFsh VkIM; 2;
	dABpAG0ALgBiAGkAcgBkAEAAYQBtAC4AcwBvAG4AeQAuAGMAbwBtADsAeQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {D99338A6-5ACC-48AD-B033-630065188BB2};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Fri,
	17 Dec 2010 10:55:16 GMT;
	UgBFADoAIABbAHkAbwBjAHQAbwBdACAAQgB1AGkAbABkACAAcwB1AGMAYwBlAHMAcwAgACgAbQBvAHMAdABsAHkAKQAsACAAZABpAHMAawAgAHMAcABhAGMAZQAgAGEAIABsAGkAdAB0AGwAZQAgAGgAdQBnAGUA
x-cr-puzzleid: {D99338A6-5ACC-48AD-B033-630065188BB2}
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Build success (mostly), disk space a little huge
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Dec 2010 10:55:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tim Bird
>Sent: Friday, December 17, 2010 4:37 AM
>
>For those interested in my build saga,
>I performed a mostly successful build of poky-minimal-image
>on my old Fedora 8 distro (oustide my Sony firewall).
>
>This was after I installed an poky 586 sdk, and set
>path to include /opt/poky/.../usr/bin (to pick up python 2.6.5)
>
>and after adding a fedora package to add chrpath to my
>system (not listed on the yocto distro help page).
>
>The build took 6 hours, and the emulator didn't quite finish.
>Here was the error:
>ERROR: Logfile of failure stored in:
>/a/home/tbird/work/yocto/poky-4.0-build/tmp/work/i686-linux/qemu-native-0.=
12.4-r22/t
>emp/log.do_configure.12332
>Log data follows:
>| You need libGL.so and libGLU.so to exist in your library path and the
>development headers for SDL installed to build qemu-native.
>|        Ubuntu package names are: libgl1-mesa-dev, libglu1-mesa-dev and
>libsdl1.2-dev
>| ERROR: Task failed: ('function do_configure failed',
>'/a/home/tbird/work/yocto/poky-4.0-build/tmp/work/i686-linux/qemu-native-0=
.12.4-r22/
>temp/log.do_configure.12332')
>NOTE: package qemu-native-0.12.4-r22: task do_configure: Failed
>
>I checked, and indeed my system is missing SDL-devel.  Due to
>some broken dependencies in my yum database, it turned out to be
>difficult to install this package, and I'm going to give up
>(again) on this machine.
>
>I noticed after the build that my yocto directory was consuming
>30G of disk space.  The big parts were in
>yocto/poky-4.0-build/tmp/work
>$ du -sh *
>2.2M	all-poky-linux
>18G	i586-poky-linux
>3.5G	i686-linux
>4.6G	qemux86-poky-linux
>
>This seems a bit high?  Is this normal?
> -- Tim

It's normal. There're several reasons for that. One is the debug symbols. T=
he other
is that Yocto implements build tasks in staged way to avoid interference am=
ong tasks,
which results in multiple copies of installed files. For example, do_instal=
l() installs
compilation output to ${WORKDIR}/image, and then do_package() copies image/=
 to
a 'package' directory for stripping and some path tweaks, and then further =
copies
into a packages-split directory which prepare for final packaging of base, =
-dev, -doc,
locale, etc. packages. This way the input and output of each task is clear =
and less
error-prone, but in some sacrifice of increased disk usage. :-)

Thanks
Kevin

