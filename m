Return-Path: <julie.n.fleischer@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1AAE14C80A70
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2011 10:44:47 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Apr 2011 08:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,305,1299484800"; d="scan'208";a="675468783"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2011 08:44:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 5 Apr 2011 08:44:32 -0700
Received: from orsmsx506.amr.corp.intel.com ([10.22.226.44]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Tue, 5 Apr 2011 08:44:32 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 5 Apr 2011 08:44:31 -0700
Thread-Topic: Notes from Yocto 2011.10 Technical Sync meeting
Thread-Index: AcvzJId5mZW8OVWsSKyM/OWC7Brk1AAfgHQg
Message-ID: <4F65016F6CB04E49BFFA15D4F7B798D901609CEB63@orsmsx506.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Notes from Yocto 2011.10 Technical Sync meeting
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
X-List-Received-Date: Tue, 05 Apr 2011 15:44:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks to all who attended the Yocto 2011.10 Technical Sync meeting.  Note =
from the meeting are below.

Attendees:  Dave, Jefro, Jessica, Rahul, Beth, Darren, Joshua, Paul, Tom, M=
ichael, Abraham, Jeff Polk, Jeremy Horn, Julie

Notes:
1) Introductions
Julie - Project Manager at Intel Open Source Technology Center, working on =
Yocto Project
Dave - Engineering Manager at Intel Open Source Technology Center, manages =
some development work
Jefro - Community Manager at Intel in Open Source Technology Center
Jessica - Maintainer of ADT and Eclipse plugin, Intel/Open Source Technolog=
y Center
Rahul - software engineer at Intel/Embedded Communications group, intereste=
d in developing BSPs
Beth - software developer at Intel/Open Source Technology Center/build and =
release manager for Yocto
Darren - kernel developer at Intel/Open Source Technology Center
Joshua - build system engineer at Intel/Open Source Technology Center
Paul - general build system engineer at Intel/Open Source Technology Center
Tom - kernel, BSP engineer at Intel/Open Source Technology Center
Michael Nilsap - Intel/Embedded Communication Group platform architect
Abraham - recently joined Intel in Visual and Parallel Computing group, ker=
nel engineer
Jeff Polk - Wind River employee, build system engineer for WR and Yocto
Jeremy Horn - software lead at Monta Vista focused on integration
Saul - user space architect/maintainer at Intel/Open Source Technology Cent=
er
2) Review Yocto 2011.10 Features - https://wiki.yoctoproject.org/wiki/Yocto=
_1.1_Features=20
  - In general, call for features has ended; however, those interested in a=
dding new items probably have a little time to get them in.  Send Julie a n=
ote to inform her what changed.
  - Next steps are maintainers and owners of features will put this into mi=
lestones by EO this week (or EO next for those that are traveling).  Julie =
will send an email on this to maintainers/owners.
3) Review Yocto 2011.10 Schedule - https://wiki.yoctoproject.org/wiki/Yocto=
_OCT2011_Schedule=20
  - Schedule is milestone-based, dates at the top of the milestone.
  - Each milestone will be broken into Sprints by the stakeholders.  Sprint=
s show when code will be committed, but not necessarily all the work that n=
eeds to be done to get the code ready.
4) 1.0 Release Criteria review - https://wiki.yoctoproject.org/wiki/Yocto_P=
roject_v1.0_Release_Criteria=20
- We decided not to do Crown Bay for demo.  Working on getting Sandy Bridge=
 running as a UPnP video renderer.
- Have a critical change to README.hardware that needs to go into the Relea=
se Notes.  Paul will email ScottR to get this into Release Notes.  [This is=
 a general issue for next release, which ScottR has also mentioned, that we=
 need a way to update documentation up until the last minute before release=
.]


