Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C9F84C800A3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2011 15:24:36 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2011 13:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,221,1301900400"; d="scan'208";a="679686266"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2011 13:24:35 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Apr 2011 13:24:35 -0700
Received: from orsmsx508.amr.corp.intel.com ([10.22.226.46]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Fri, 15 Apr 2011 13:24:34 -0700
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 15 Apr 2011 13:24:33 -0700
Thread-Topic: Yocto Project Janitors Wiki
Thread-Index: Acv7qfYAWDMKN6s6Q8ap1AHGOr+GrwAAApcA
Message-ID: <8F72E7245587B740B3CF41CCF57DAF3757B753B5BA@orsmsx508.amr.corp.intel.com>
References: <4DA88C6B.7000602@linux.intel.com>
	<8F72E7245587B740B3CF41CCF57DAF3757B753B50B@orsmsx508.amr.corp.intel.com>
	<4DA8A762.8080106@linux.intel.com>
In-Reply-To: <4DA8A762.8080106@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto Project Janitors Wiki
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
X-List-Received-Date: Fri, 15 Apr 2011 20:24:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Maybe I'm the one who is confused. Looking at the contents of the Janitors =
page - I expected to see a list of existing things that need to be cleaned =
up. The most visible thing on the page is the description of how to enter t=
asks, and I think I assumed that was all that was there. It might be best t=
o put the tasks format above the list of actual tasks so it doesn't look li=
ke the main focus of the list. Might also be good to add an auto-generated =
TOC right under the Tasks header - I'll look up how to make the wiki do tha=
t.

Re submission guidelines - I'm working on a set of pages that show new part=
icipants how to submit code or documentation to the project. Part of these =
guidelines is details just like the "how to enter new tasks" description, s=
o I may borrow that.

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Friday, April 15, 2011 1:16 PM
To: Osier-mixon, Jeffrey
Cc: Yocto Project; Rifenbark, Scott M
Subject: Re: Yocto Project Janitors Wiki

On 04/15/2011 11:26 AM, Osier-mixon, Jeffrey wrote:
> WOW fantastic, thanks for doing this.
>=20
> It occurs to me that the items you put there are really specific
> submission guidelines,

I'm not following you here. "Submission Guidelines" ?

 although that could be considered a janitorial
> task in cleaning things up. I have it on my to-do list (soon rather
> than someday) to create detailed participation guidelines, and these
> should be a part of them. When I do that, maybe I'll move these over
> and then create a link back, with "clean up existing submissions" as
> part of the Janitor list. Does that make sense, or am I
> misunderstanding your intent?

.. ditto ..

--
Darren

>=20
> -----Original Message----- From: Darren Hart
> [mailto:dvhart@linux.intel.com] Sent: Friday, April 15, 2011 11:20
> AM To: Yocto Project Cc: Rifenbark, Scott M; Osier-mixon, Jeffrey=20
> Subject: RFC: Yocto Project Janitors Wiki
>=20
> I had a few too many tasks getting added to my Someday list and I=20
> thought this was a good opportunity to create the Janitors Task
> list. This is what I came up with:
>=20
> https://wiki.yoctoproject.org/wiki/Janitors
>=20
> Please have a look and provide your thoughts on the general concept,
> the task format, etc.
>=20
> I've CC'd Scott as the Documentation tasks are really his, I was
> just involved with writing the bbvars. We definitely need people to
> do the research on those variables, but if they send patches, or just
> text descriptions is really up to Scott - so that task may need
> editing.
>=20
> Finally, if you like the idea and have some of your own Someday
> tasks, please feel free to add them.
>=20

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

