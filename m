Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55D9FE0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 12:17:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jun 2012 12:17:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="161438492"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 27 Jun 2012 12:17:41 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Jun 2012 12:17:41 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.167]) with mapi id
	14.01.0355.002; Wed, 27 Jun 2012 12:17:41 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Web Hob - two additional design ideas
Thread-Index: Ac1UmYVDulg/pOv2RD+l0gUO2DP0gA==
Date: Wed, 27 Jun 2012 19:17:41 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8681AA@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Web Hob - two additional design ideas
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
X-List-Received-Date: Wed, 27 Jun 2012 19:17:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gang - there are a couple of ideas for Web Hob that we have talked about. I=
 don't remember seeing them in the various movies and documents. So I'm goi=
ng to throw them out there to get your feedback and hopefully get them in t=
he design.

* Visualizing the image

One of the things which frustrates me about GUI tools which build Linux ima=
ges is that you usually get a long list of packages to choose from, but no =
real guidance. I think there are a couple of interesting ways to visualize =
what is in the image.

One would be to add more visual information about what makes up the image, =
maybe like a pie chart or linear chart which shows the breakdown between ke=
rnel, libraries, commands; perhaps with some drill down into these categori=
es to show which libraries, for example.  This could be extremely useful fo=
r tuning a poky-tiny image for its footprint size.

I find I'm also struggling with figuring out how to add a whole subsystem, =
rather than picking out the packages.  This goes beyond the scroll list of =
packages to add higher-level groups of packages. This might be already pres=
ent in how we present Tasks to select, so it might already be there.

* Finalizing your device's source offer

One of the things the Project has been praised on is our support for buildi=
ng license compliant embedded distributions. This turns out to be one of th=
e biggest challenges when people use Linux for their embedded devices - oft=
en the Linux gets shipped out on the embedded device, but the sources are n=
ot made available as specified in the GPL.  Through our tracking and valida=
ting of source licenses in recipes, the logic in the build system to restri=
ct licenses used, and the source manifests generated in the build, I think =
we have a world class solution. This really needs to be supported well in W=
eb Hob.

So the requirement here is that when a build is completed, you not only get=
 access to the image (and kernel) but maybe also a tar file of the sources =
and scripts used to build the image, for purposes of GPL license compliance=
.



