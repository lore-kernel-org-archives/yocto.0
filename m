Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D1834C800AB
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 13:36:47 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jun 2011 11:36:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,438,1304319600"; d="scan'208";a="19359967"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 28 Jun 2011 11:36:47 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 28 Jun 2011 11:36:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX151.amr.corp.intel.com ([169.254.5.9]) with mapi id
	14.01.0289.001; Tue, 28 Jun 2011 11:36:46 -0700
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
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, June 28, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMNcJTPW88n/JEN0KhsiLbsk0Lxg==
Date: Tue, 28 Jun 2011 18:36:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A056D60@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Jun 2011 18:24:50 -0500
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>,
	'Daniel Cauchy' <dcauchy@mvista.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Minutes: Yocto Technical Team (Tuesday, June 28, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 28 Jun 2011 18:36:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Status Summary:
 - Thanks to the team for sending in status via email, now we have up to da=
te status on the wiki before this meeting.
 - 72 M2 features, 16 Done, 17 Patch Review, 34 Dev/Accept (10 in A/B/C), 1=
 on-going, 3 Design, 1 Design Review.
 - Half still in development but close to be done. Needs attention to catch=
 up.
=A0
Issues
  1. Layer tooling design review: this is done (Richard)
  2. Build Yocto behind firewall - complete, patch review (Joshua/Darren): =
There will be some improvement in for this in M2, we need additional follow=
-on item for this one in M3
  3. Item not on schedule: "Time limited kernel' (Bruce) : this is bug 1007=
, design is done, working on development, making this in M2 is still a bubb=
le.
  4. Liping:=20
     Image Creator: HOB performance enhancement=20
     Blocked,Liping's code need to wait for Joshua's code to merge first. R=
isk to slip=20
  5. running post installs at rootfs gen time, Sprint D: Dexuan has a desig=
n but the PRC team has no time for this one: Drop this from the 1.1 schedul=
e but keep it on feature list for post 1.1 action.
  6. Beth: need to discuss a 1.0 release of yocto-autobuilder: No need for =
this now
=A0
Build status: A build out yesterday and there is a QA report this morning. =
Team will look at the QA report and address bugs uncovered.

Bug Status:=20
  1. 7 M2 new bugs: Richard (2), Saul (2), Nitin (3)
  2. 3 M2 high bugs:
      * 1134: Saul will give more info to Ke to recreate this.
      * 1099: Song will send Dexuan email on the status of this one
      * 1007: Bruce started development on this one.=20
=A0
Documentation: there is a draft of the Yocto development guide being review=
ed. So this is done.
=A0
Sprint D (current week) items:
  1. BSP config cleanup : need a follow on item for this in M3
  2. Kernel Tools : move to M3
  3. kernel bloat - development: move to M3
  4. BBMX: done, Darren will open a new bug to track a related issue.
  5. 3G - complete: working on some revision and fixes, needs attention, ri=
sk to slip
  6. Enhance the deploy part in remote debug: developer assigned to somethi=
ng else, move to M3
=A0
Action Item:
=A0
  1. Song: update Google calendar with the new bridge info
  2. Darren: open a new bug to track a BBXM related issue
  3. Bruce: Split bug 414 into multiple ones to work and track separately
  4. Song: send Dexuan note about bug 1099.

No meeting next week due to US holiday on Tuesday


