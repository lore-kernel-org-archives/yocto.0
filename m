Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2825E00599
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 14:52:51 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Jan 2012 14:52:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="58179606"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Jan 2012 14:52:50 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 Jan 2012 14:52:47 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.31]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.170]) with mapi id
	14.01.0355.002; Thu, 19 Jan 2012 14:52:46 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: Minutes: Kernel Team 1.2  M3/4 Planning (Jan 18)
Thread-Index: AQHM1ic8Vdzr1dBUskadmKA+IRtiTpYS3DDg
Date: Thu, 19 Jan 2012 22:52:45 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A2DD80D28@ORSMSX106.amr.corp.intel.com>
References: <4F1737E6.1020209@linux.intel.com>
In-Reply-To: <4F1737E6.1020209@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Minutes: Kernel Team 1.2 M3/4 Planning (Jan 18)
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
X-List-Received-Date: Thu, 19 Jan 2012 22:52:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Great planning session, kernel team! Thanks for prioritizing and cleaning u=
p the schedule. At the same time, if anyone gets time to work on any items =
moved to post 1.2, it's always a great thing to put it back on 1.2.

Song

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, January 18, 2012 1:22 PM
To: Yocto Project
Cc: Liu, Song; Zanussi, Tom; Ashfield, Bruce; Darren Hart; Wold, Saul
Subject: Minutes: Kernel Team 1.2 M3/4 Planning (Jan 18)

Attendees:
Darren Hart
Tom Zanussi
Bruce Ashfield

Bug Query:
http://bugzilla.yoctoproject.org/buglist.cgi?query_format=3Dadvanced&emailt=
ype2=3Dregexp&bug_status=3DNEW&bug_status=3DACCEPTED&bug_status=3DREOPENED&=
bug_status=3DNEEDINFO&bug_status=3DWaitForUpstream&email2=3D.*%28zanussi|dv=
hart|ashfield%29.*&emailassigned_to2=3D1&target_milestone=3D1.2&target_mile=
stone=3D1.2%20M1&target_milestone=3D1.2%20M2&target_milestone=3D1.2%20M3&ta=
rget_milestone=3D1.2%20M4

As a group, Tom, Bruce, and I reviewed all the bugs assigned to us for 1.2.=
 With
all the non-bug work we are committed to over the next three months compris=
ing
M3 and M4, we have moved a number of bugs to post 1.2. The post 1.2 kernel =
bugs
include:

ID 	Sev 	Pri 	Status 	Summary 	Whiteboard
1883 	maj 	Med 	ACCE 	No space left on device =09
1634 	enh 	Low 	ACCE 	BSP: research and update/refresh reference platforms
1614 	enh 	Med 	ACCE 	Target module build
927 	nor 	Low 	ACCE 	[POSIX] case pthread_cond_broadcast does not kill itse=
lf after finished
1094 	nor 	Low 	ACCE 	module.bbclass is well out of sync with the version i=
n openembedded =09
1138 	nor 	Low 	ACCE 	[LTP] Some growfiles cases failed with Yocto 1.1 M1 b=
uild16)
1635 	enh 	Low 	ACCE 	Drop Grub for Syslinux
1648 	enh 	Low 	ACCE 	Real-time process-executed timers
1795 	enh 	Low 	NEW 	Simplify core-image-minimal-initramfs and reduce depen=
dencies =09
1830 	enh 	Low 	NEW 	Add bluetooth config fragment and add to yocto/standar=
d or appropriate BSPs
418 	nor 	Med 	ACCE 	uvesafb is required to be a module on qemux86/qemux86-=
64 target
1552 	enh 	Low 	ACCE 	Tracing: create separate recipe for perf
1553 	enh 	Low 	ACCE 	Tracing: perf trace scripting support

We would like some assistance finding owners for the following bugs:

1635 	enh 	Low 	ACCE 	Drop Grub for Syslinux
1728 	nor 	Med 	ACCE 	Uses native lzma when lzma is selected for bzImage co=
mpression
1919 	nor 	Med 	NEW 	Accommodate EFI via the live image "install" label
1843 	nor 	Med 	NEED 	Error screen when I input "clear" in the terminal=20
1886 	nor 	Med 	NEW 	Glxgears failed in qemux86.
1669 	nor 	Med 	ACCE 	emenlow: glxgears running slowly on 3.0 kernel
1840 	nor 	Med 	NEW 	glxgears fail to run on Blacksand

Possibly 1826 [HuronRiver] only 3/4 screen is used when psplash loading
Tom, what did we decide on this one?

If you have concerns about items dropped from the 1.2 plan, or (better stil=
l)
would like to volunteer to help with some of the bugs listed, please respon=
d in
the bugzilla record directly.

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

