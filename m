Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA6E74C800A3
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 14:09:55 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jul 2011 12:09:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="27077715"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2011 12:09:54 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 12 Jul 2011 12:09:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.143]) with mapi id
	14.01.0289.001; Tue, 12 Jul 2011 12:09:53 -0700
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
	<jeffrey.osier-mixon@intel.com>, "Dmytriyenko, Denys" <denys@ti.com>,
	"Kooi, 
	Koen" <k-kooi@ti.com>, "Wang, Shane" <shane.wang@intel.com>, "Kridner,
	Jason" <jdk@ti.com>, "Hohndel, Dirk" <dirk.hohndel@intel.com>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, July 12, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMQMdHB9qZDVwOoUGXgxh1AZgoiQ==
Date: Tue, 12 Jul 2011 19:09:53 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A05DBCC@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 15 Jul 2011 10:41:58 -0500
Cc: 'Daniel Cauchy' <dcauchy@mvista.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>
Subject: Minutes: Yocto Technical Team (Tuesday, July 12, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 12 Jul 2011 19:09:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
=A0
Dave, Paul, Darren, Jeff, Dirk, Richard, Josh, Tom, Koen, Saul, Mark, Denys=
, Jason, Beth, Song
=A0
Action item list:
  * Team: please take a look at the proposed post 1.1 items (yellow in the =
M3 table, this is a draft, may change) on the wiki page and let Song know i=
f there is any comment or concerns.
  * Saul: talk to Jianjun, QA should work with developers to make sure we c=
an cover more distro testing (informal) before major release. Joshua and Da=
rren volunteers for some of these testing.
  * Song: check status with Jianjun on Stabilization tasks he owned.
  * Darren/Song: define specific deliverables of 'Fast boot time' for M3 an=
d Yocto 1.1.
  * Saul: circulate the idea of having a Sprint B for M3 via emails.
  * Saul: check update commits (one release criteria)
=A0
Minutes:
=A0
* opens - 5 min=A0
  - Darren: documentation process for release, making sure we can update th=
e README.hardware after release if needed. (no time for this one this time,=
 will put this on next week's agenda)
=A0
* Review Yocto 1.1 M2 schedule (Sprint and Stabilize tasks) and Release Cri=
teria - 15 min (Song) See details at: https://wiki.yoctoproject.org/wiki/Yo=
cto_Project_v1.1_Release_Criteria
  - All M2 items are already done.
  - One M2 stabilization item is done, 3 in progress
  - QA does not have resource for N+1 distro testing for every milestone re=
lease. But will do that for 1.1 release.
  - Kernel version lock: Linux 3.0 should be released by next week. Yocto 1=
.1 target is 3.0+, lock in Linux 3.0 now (minimum). Will decide on 3.1 on A=
ug 15, the beginning of M4.
  - All M2 high bugs now are committed to make M2.
  - There are new bugs from the most recent QA test. Saul will follow up wi=
th the team.
=A0
* Review M3 feature list, M3 Sprint B? -20 min (Song)
  - Sync qemugl with MeeGo - Implementation: was on the drop list, Edwin fe=
els that he may be able to work on this if BSP work progresses well. We sho=
uld be clear that BSP development work takes higher priority, if this one d=
oes not make 1.1, it is fine. Will keep this one on drop list.
  - 'BSP update/intro': it should be fine without this for Yocto 1.1. Will =
work on this post 1.1.
  - Fast boot time: it goes hand in hand with image side reduction. Darren =
will define the specifics for M3/1.1 deliverables.

* Discussion of using Weighted Defect density as one of the release criteri=
a
  - No time at this meeting for this one, will put it on next week's agenda=
.

* Action Item Review - 5 min (Song)
  1. Song: update Google calendar with the new bridge info (done)
  2. Darren: open a new bug to track a BBXM related issue (done)
  3. Bruce: Split bug 414 into multiple ones to work and track separately (=
done, bug 1204, also added feature "replace qemuppc' for post 1.1)
  4. Song: send Dexuan note about bug 1099.(done, 1099 is fixed)


