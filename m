Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0BFCE01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 11:31:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Sep 2012 11:31:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,375,1344236400"; d="scan'208";a="189292045"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 05 Sep 2012 11:31:34 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 5 Sep 2012 11:31:34 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.178]) with mapi id
	14.01.0355.002; Wed, 5 Sep 2012 11:31:34 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 04,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNi5SsKjhmcq/k1028iH0QlPG66Q==
Date: Wed, 5 Sep 2012 18:31:33 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48528A4A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 04, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 05 Sep 2012 18:31:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the late. Forgot to hit the sent button yesterday.

Attendees:
Alex, MichaelH, Cristian, Darren, Tom, LaurentiuP, Nitin, Bjorn, BogdanM, B=
ruce, Sean, Dave, Paul, Saul, Richard, LaurentiuS, Cristiana, Ross, ScottR
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
=A0
 - Congratulations to the team on 3 things:
   1.  1.3 feature complete is reached. We completed all high features exce=
pt those we have moved from high to medium+, a significant portion of all f=
eatures (218.1/432.6 =3D  50%) have been completed so far. We will review a=
ll medium+ features left on the schedule. Now we should focus on bug fixing=
.
   2. Consistent performance improvement: M1:115, M2:93, M3:83, about 28% r=
eduction on build time.=20
   3. Bug fixing trend is going to the right direction for the past 3 weeks=
.=20
=A0
 - Master status: Saul, doing MUT, Richard pulled pretty much everything in=
to master. There was an issues with eglibc not building correctly. With Pau=
l's change there is a tool chain issue. Might do a quick pull into master f=
or the fix. Might deferring some patches, we will look into patches more ca=
refully. =20
=A0
* SWAT team rotation: Ross -> Laurentiu Palcu. Thanks, Laurentiu!
* Opens - 10 min
  ScottR: bug talking about a better example for BSP development manual for=
 the appendix. Darren: maybe we can use the giveaway board. RP: makes sense=
. Song: good idea
* Team sharing - 20 min
=A0
Paul: sent out package group changes, renaming, task recipes, fixing some n=
asty issues at the same time. Should be reasonably smooth changes. If you k=
now any issues, please let me know and I'll get them fixed quickly. RP: rig=
ht direction, these issues have been talked about for some time. Now we got=
 them in. Really appreciate the work.=20
=A0
RP: LinuxCon last week, announced a compliance program: 2 levels: one is pa=
rticipant, the other is YP compatible. Encourage anyone to look at the crit=
eria on the first level. YP compatible has more strict criteria.  Some othe=
r changes, nativesdk work went in. experimentation for ssate work. Tricky t=
o get the code right. If anyone wants to be involved, please talk to me.
=A0
Michael: Had some connectivity issues this week. LinuxCon was very good. Th=
is week, eclipse plugin to build on AB. Working on the bugzilla stats. Patc=
h work, code review a set of python scripts to allow monitoring and track p=
atches on a web page. RP: we are experimenting now, doing evaluation, no de=
cisions to use it yet.=20




