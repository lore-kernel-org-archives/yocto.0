Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D5AE014E0
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 08:36:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Apr 2013 08:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,542,1363158000"; d="scan'208";a="300620925"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 24 Apr 2013 08:36:06 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 24 Apr 2013 08:36:06 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.111]) with mapi id
	14.01.0355.002; Wed, 24 Apr 2013 08:36:06 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] how the &^$%^%@%^#$ does "file://defconfig" work?
Thread-Index: AQHOQOIC2+TW5OoLMUGcg0J9Q9PeDpjlgORg
Date: Wed, 24 Apr 2013 15:36:05 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCF7CFA@ORSMSX104.amr.corp.intel.com>
References: <alpine.DEB.2.02.1304240744050.31988@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304240744050.31988@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: how the &^$%^%@%^#$ does "file://defconfig" work?
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
X-List-Received-Date: Wed, 24 Apr 2013 15:36:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, April 24, 2013 4:51 AM
>To: Yocto discussion list
>Subject: [yocto] how the &^$%^%@%^#$ does "file://defconfig" work?
>
>
>  been fighting with this for a couple of hours, so i'll start with
>the short version -- here's the current explanation for "Changing the
>Configuration" of your kernel:
>
>http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-
>dev.html#changing-the-configuration
>
>  the salient bit:
>
>"If you have a complete Linux kernel .config file you want to use,
>copy it to a directory named files, which must be in your layer's
>recipes-kernel/linux directory, and name the file "defconfig"."
>
>  first, that clearly suggests that file://defconfig is to be used
>*only* when you have a complete .config file you want to use, which
>also implies that if you use that, you should not be picking up any
>other snippets. that's how i read that -- the use of
>"file://defconfig" means that that is *exactly* the final form of my
>eventual .config file. if that's not true, then that wording needs to
>change.
>
>  also, i've been trying to do just that for a couple hours now, and i
>am definitely *not* getting that as my final .config file used for the
>kernel configuration. so what should be happening here? thanks.
>
>rday
>
>p.s. as i have some spare time between contracts at the moment, i am
>going to be going over some of the yocto docs in excruciating detail.
>somewhere, scott rifenbark is now thinking, "oh, crap, ..."

Your feedback always improves things Robert... no problems.


>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

