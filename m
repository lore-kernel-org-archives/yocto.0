Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B8F6E011DA
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 09:31:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Aug 2011 09:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,344,1309762800"; d="scan'208";a="36730583"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 09 Aug 2011 09:31:59 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 9 Aug 2011 09:31:59 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.180]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.12]) with mapi id
	14.01.0323.003; Tue, 9 Aug 2011 09:31:59 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, August 09, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMVrHcMJAou5+oi0KgtialC+c/vA==
Date: Tue, 9 Aug 2011 16:31:59 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A1376925B@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A02E3CE@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team (Tuesday, August 09, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 09 Aug 2011 16:31:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

New Action Item List:
  * Song to update wiki page and the Google calendar for w4 schedules.=20
  * Song to schedule the go/no-go meeting for M3.
  * Richard to follow up with Mark on bug 1325 to decide if we need this fo=
r M3 once we have the resolutions.=20
  * Song to follow up with ScottR offline on doc issues: auto-generation, r=
evisions, central location for docs changes, etc.
=A0=A0
Attendees:
Beth, Tom, ScottR, Richard, Josh, Jessica, Dave, Mark, Darren, Jeff, Bruce,=
 Song

Notes:
=A0
1. Opens collection - 5 min (Song)
2. M3 release criteria review - 15 min (team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.1_Release_Criteria
   * two high bugs remaining: 1313 already has patches, will be in for M3. =
1325: Richard will follow up with Mark once we have the resolution to decid=
e if we need this for M3.
3. M4 plan & schedule - 15 min (Beth/Song)
   * M4 focus is bug fixing. Med bugs have until the first RC build to go i=
nto Yocto 1.1. Only high/critical bugs go into 1.1 after M4 RC1.
   * First RC build is 9/6/2011.
   * Doc freeze day is 9/29/2011.
   * Final release is 10/5/2011.
4. Opens - 10 min
   * real time updates (Darren):=20
     - there are real time updates coming. Hoping to have real time patches=
 out today. We have most of them, ran into some build issues.=20
     - Moving meta-rt into OE-core. There won't be meta-rt any more.=20
     - For BSPs: easy for rt only. A little tricky for BSPs with both rt an=
d no-rt.
5. Action item Review - 5 min
=A0
* The team to review ALL bugs they own and do some estimation. Please put t=
he estimation on the white board by next Thursday (8/4/11): please send est=
imate to Song if you have not done so.
* ScottR will follow up with Paul on doc auto-generation and revision inclu=
sion in the doc. The goal is to have docs refer to the release?: Song will =
talk with Scott offline.
* Song will follow up with Tracey to make sure marketing planning happens b=
etween milestones so that there is no disruption to the development schedul=
e.: Tracey is finding an inter for the demo. No impact to the engineering t=
eam so far.


