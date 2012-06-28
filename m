Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40BEDE01304
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 02:33:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Jun 2012 02:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="161696598"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 28 Jun 2012 02:33:48 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 28 Jun 2012 10:33:46 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.240]) with mapi id
	14.01.0355.002; Thu, 28 Jun 2012 10:33:46 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, yocto
	<yocto@yoctoproject.org>
Thread-Topic: Web Hob - two additional design ideas
Thread-Index: AQHNVREdnYbyw4QfiUe2jQWPG/0n8g==
Date: Thu, 28 Jun 2012 09:33:45 +0000
Message-ID: <CC11E359.12268%belen.barros.pena@intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C8681AA@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.36.60]
MIME-Version: 1.0
Subject: Re: Web Hob - two additional design ideas
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
X-List-Received-Date: Thu, 28 Jun 2012 09:33:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <61DA6B1A4EBA534BB2C58BB8E090D92E@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks, Dave.=20

Cheers

Belen

On 27/06/2012 20:17, "Stewart, David C" <david.c.stewart@intel.com> wrote:

>Gang =AD there are a couple of ideas for Web Hob that we have talked about.
>I don't remember seeing them in the various movies and documents. So I'm
>going to throw them out there to get your feedback and hopefully get them
>in the design.
>
>* Visualizing the image
>
>One of the things which frustrates me about GUI tools which build Linux
>images is that you usually get a long list of packages to choose from,
>but no real guidance. I think there are a couple of interesting ways to
>visualize what is in the image.
>
>One would be to add more visual information about what makes up the
>image, maybe like a pie chart or linear chart which shows the breakdown
>between kernel, libraries, commands; perhaps with some drill down into
>these categories to show which libraries, for example.  This could be
>extremely useful for tuning a poky-tiny image for its footprint size.
>
>I find I'm also struggling with figuring out how to add a whole
>subsystem, rather than picking out the packages.  This goes beyond the
>scroll list of packages to add higher-level groups of packages. This
>might be already present in how we present Tasks to select, so it might
>already be there.
>
>* Finalizing your device's source offer
>
>One of the things the Project has been praised on is our support for
>building license compliant embedded distributions. This turns out to be
>one of the biggest challenges when people use Linux for their embedded
>devices - often the Linux gets shipped out on the embedded device, but
>the sources are not made available as specified in the GPL.  Through our
>tracking and validating of source licenses in recipes, the logic in the
>build system to restrict licenses used, and the source manifests
>generated in the build, I think we have a world class solution. This
>really needs to be supported well in Web Hob.
>
>So the requirement here is that when a build is completed, you not only
>get access to the image (and kernel) but maybe also a tar file of the
>sources and scripts used to build the image, for purposes of GPL license
>compliance.
>
>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


