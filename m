Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABBF8E01452
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 16:30:16 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jun 2012 16:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160173976"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 24 Jun 2012 16:30:16 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 24 Jun 2012 16:30:15 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.115]) with mapi id
	14.01.0355.002; Sun, 24 Jun 2012 16:30:14 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: James Abernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] use of build appliance
Thread-Index: AQHNUf1vI2hzbgq6REyaJuRi2UbSvZcKHBqQ
Date: Sun, 24 Jun 2012 23:30:14 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8638BE@ORSMSX105.amr.corp.intel.com>
References: <CANFv2Em3fCOEfUPoL1F5OnnRx_wXF32qTOVESme=7-Zdqvzu=A@mail.gmail.com>
In-Reply-To: <CANFv2Em3fCOEfUPoL1F5OnnRx_wXF32qTOVESme=7-Zdqvzu=A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: use of build appliance
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
X-List-Received-Date: Sun, 24 Jun 2012 23:30:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of James Abernathy
>Sent: Sunday, June 24, 2012 4:35 AM
>
>with the recent discussion on this mailing list on Build Appliance, I thou=
ght I'd
>see what the heck Build Appliance was all about.=A0 I quickly realized tha=
t I
>couldn't use it because I have a Macbook Pro as my portable PC and not a
>Windows PC. A Core i7 Ubuntu desktop is my main development tool.
>
>What I do is run VirtualBox on my Mac with a virtual machine for Ubuntu 10=
.4
>LTS.=A0 I can run Hob, or any other part of poky-bitbake, etc.
>
>What am I missing by doing my solution vs. the Build appliance??
>
>Jim A

You are not missing a thing, because I don't think you are the target user =
for the Build Appliance. :-)

What I did find is that there are a number of *very* smart people who were =
failing at doing a build with the Yocto Project. This was because they eith=
er had:

* an outdated distro (like Fedora 6 in one case).

* lacked certain packages

* were behind a firewall and didn't have sufficient proxies set up.

As a result, they had a very bad first experience with YP because they coul=
dn't get things going right away and it might not have been obvious why.  T=
he Build Appliance is an attempt to solve most of these by assuming that a =
power user could get VMWare installed and then install and boot one guest a=
nd be up and running their first build without problems.

So far, I don't have a lot of feedback as to whether this assumption is tru=
e or not. By the way, I would have preferred using Virtual Box, because I l=
ove the fact that it's open source and really easy to use. But my first att=
empt to do a multi-threaded build in Virtual Box 2 years ago resulted in di=
saster, so I have shied away from it ever since.

Dave

