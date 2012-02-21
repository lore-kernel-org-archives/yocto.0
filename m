Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59894E0059A
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 10:55:48 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Feb 2012 10:55:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109088904"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 21 Feb 2012 10:55:47 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Feb 2012 10:55:47 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.3]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.227]) with mapi id
	14.01.0355.002; Tue, 21 Feb 2012 10:55:47 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	February 21, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHM8MpozWZpjaeupE6y1+YchDB88Q==
Date: Tue, 21 Feb 2012 18:55:40 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A38CEE8D8@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 21, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 21 Feb 2012 18:55:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Beth, Paul, Belen, Darren, Bjorn (from Sweden), Mark, Richard, Jeff, =
Jeremy, Joshua, Jason, Jessica, Sean, Michael,=20
=A0
Message to the team:
 - Please take a look at the task board, move features in development stage=
 ASAP and send Song, Richard email if there's something you cannot make it =
for M3.
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
  - Saul: There are 3 new bugs reported, Josh: only one, useradd/n450,=20
  - meta-intel bugs: 1988, 1990
  - We had build, QA have tested it, the weekly report is out.
  - The bugs should not block the release. Joshua will schedule the release=
 readiness meeting after the full QA report.
=A0
* Yocto 1.2 M3 status - 10 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
=A0
 - Dexuan, Shane, Dongxiao have over worked for at least 2 weekends to make=
 sure we deliver P1 items.
 - HOB2 redesign implementation, 80% done in 2 weeks, still one week left. =
it's looking good but it's still tight.
 - Build appliance has patches out for review and merging. Mostly done.
 - Multilib: 'world' is done, need help on testing.
 - 1598: Jeremy has some cycles this week or next, Paul will follow up on t=
his one with Jeremy
 - 5 high bugs
   - 1915: still high, waiting for upstream, upstream won't have update unt=
il June or so. Jessica will follow up to come up with a workaround.
   - 1859: Darren will take a look at this one.
   - 1950: Darren will follow up on this one this week. We can release with=
out this one though. Darren will lower the priority to medium.
   - 1928: No response from Koen, Mark will follow up.
 - If you have any package update tasks, please sync with Saul.
 - Darren: 1886, 1840 need new owner, Saul will follow up.
=A0
* SWAT team rotation: Jiajun -> Darren
* Opens - 10 min=A0
 - Saul: catching up on pull requests, catching up week this week, Saul and=
 Richard will sync on this.=20
 - Michael: Bugzilla plan has been sent out, Bugzilla will be unavailable 3=
-3:30 PDT time this Friday. Michael will send out reminder before that.
=A0
* Team Sharing - 20 min
 - Richard: Great to meet a lot of people at ELC. Chris Larson, memory cons=
umption. I got some analysis tools to look into this memory issue. 10MB/pro=
cess. If anyone would like to share something on this issue, please send em=
ail to me. It's good to look at this and think about future directions.=20
 - Michael: productive for me to meet all the people. Working on automated =
testing, etc.
 - Is there any video done for YDD day? There will be a lot of videos. It's=
 done by LNF, Daniel. =20



