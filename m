Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73B394C808D8
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 15:07:54 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jun 2011 13:07:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,402,1304319600"; d="scan'208";a="18974020"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2011 13:07:53 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Jun 2011 13:07:53 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.75]) with mapi id
	14.01.0289.001; Tue, 21 Jun 2011 13:07:53 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, "Wold, Saul" <saul.wold@intel.com>, "Zhang, 
	Jessica" <jessica.zhang@intel.com>, "'deVries, Alex'"
	<Alex.deVries@windriver.com>, "'Polk, Jeffrey'" <jeff.polk@windriver.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Li, Susie" <susie.li@intel.com>, "Lock,
	Joshua"
	<joshua.lock@intel.com>, 'Bruce Ashfield' <bruce.ashfield@windriver.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>, "'Lieu.Ta@windriver.com'"
	<Lieu.Ta@windriver.com>, "'paul.anderson@windriver.com'"
	<paul.anderson@windriver.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, June 21, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMME7mdVcZdSQcdEK1SnToGKW5UQ==
Date: Tue, 21 Jun 2011 20:07:52 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A04EF93@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 25 Jun 2011 23:38:59 -0500
Cc: "Mitchell, Mark" <mark_mitchell@mentor.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>,
	'Daniel Cauchy' <dcauchy@mvista.com>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: Minutes: Yocto Technical Team (Tuesday, June 21, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 21 Jun 2011 20:07:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Adding Attendees:

Richard, Shane, Paul, Mark, Jason (TI), Koen (TI), Dave, Darren, Tom, Josh,=
 Beth, Jessica, Sean (Dell), Daniel (TI).

-----Original Message-----
From: Liu, Song=20
Sent: Tuesday, June 21, 2011 12:11 PM
To: Liu, Song; 'McCombe, Kevin'; Wold, Saul; Zhang, Jessica; 'deVries, Alex=
'; 'Polk, Jeffrey'; 'Hatle, Mark'; Purdie, Richard; Li, Susie; Lock, Joshua=
; 'Bruce Ashfield'; Zanussi, Tom; Hart, Darren; Flanagan, Elizabeth; Stewar=
t, David C; 'Lieu.Ta@windriver.com'; 'paul.anderson@windriver.com'; Osier-m=
ixon, Jeffrey
Cc: 'Sean_Hudson@Dell.com'; Erway, Tracey M; 'Elizabeth Flanagan'; 'Darren =
Hart'; 'Daniel Cauchy'; 'Mitchell, Mark'; yocto@yoctoproject.org
Subject: Minutes: Yocto Technical Team (Tuesday, June 21, 2011 8:00 AM-9:00=
 AM (UTC-08:00) Pacific Time (US & Canada))

Other than that the team needs to wade through all scheduled features and t=
asks to deliver M2, just a few more notes and action items:

The team starts to use the following state for status check on each feature=
/task:
  - Design
  - Design Review
  - Development/Dev
  - Patch Review
  - Done

  The definition of 'done' (we will refine more on this): patch checked int=
o master or target repos.=20

Kernel version: current plan is to have 3.0 for Yocto 1.1 release. At the s=
ame time we do have a backup plan to fall back.

Action Items:
  1. Song to update with a new simpler conference call setup.
  2. Song to update Wiki as usual for new progress.
  3. Bruce to split bug 414, have a plan to complete.
  4. Bug 1007 design is done. Mark to get initial implementation in by the =
first week of July.
  5. Beth to work on autobuilder and get some builds for QA to test today.



