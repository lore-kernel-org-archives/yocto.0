Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EBEBE01514
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 20:20:25 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2013 20:20:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,791,1355126400"; d="scan'208";a="294457105"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2013 20:20:24 -0800
Received: from orsmsx109.amr.corp.intel.com (10.22.225.14) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 5 Mar 2013 20:20:24 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX109.amr.corp.intel.com ([10.22.225.14]) with mapi id
	14.01.0355.002; Tue, 5 Mar 2013 20:20:24 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	05, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4aIbJXHUNNtDlPQH+GqaXoox/SxAAACocQ
Date: Wed, 6 Mar 2013 04:20:23 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70F06BE8@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 05, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 06 Mar 2013 04:20:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
MarkH, JeffP, RP, DaveST, Belen, TomZ, MichaelH, LaurentiuP, KevinS, Darren=
H, Beth, PaulE, Corneliu, Jessica, Ross, Cristian, Eren, AlexD, Song=20
=A0
Notes:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - One issues. Resolving it.
  - QA report on the pre-release last week is clean. Will have the release =
build in a couple of days for QA to test.
* Yocto Project 1.4 M4 release review (Song/CCB/all)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status#Milestone_4=
=20
  - We reviewed all release criteria last Friday. M4 RC1 met all criteria. =
This issue is that we don't have all CCB members present.
  - Mark: has reviewed all release criteria. OK with the release. Talked wi=
th Kevin, he's aware of this and OK with the release.
  - Song will follow up with Saul and Beth for the M4 release. (Done. Decis=
ion reached. M4 is releasing)
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
=20
  - Bug fixing: total stands at 297, close to where we started on 1.4. Fixe=
d 43 last week. More people are fixing bugs, many have fixed 2-3 bugs. Li W=
ang from Wind River fixed 5. Laurentiu will update the WDD chart. =20
  - Feature development (medium+):=20
    . 3352/BogdanM: Start error reporting improvement: Already marked as re=
solved.=20
    . 2308/Ross: Small common BSP for as many hw. Ross: still discussing th=
is. Will think of a proposal in the next couple of weeks. Will talk with ot=
hers in an upcoming conference. Would like review and feedback.
    . Wayland/Alex: working on enabling wayland. There are some issues. Cou=
ld be running soft renderer at the end. Any questions let Alex know.
   . Feature freeze/Richard: March 17. If there is anything coming close to=
 that deadline, would like to know sooner.
   . Kernel/Bruce: It's in (3.8 kernel). There are a couple of issues being=
 worked on Tom is on Perf issue. Working to upgrade BSPs.=20
=A0
* SWAT team rotation: Jessica Zhang -> Ross Burton
* Opens - 10 min=20
    - Beth: autobuilder downtime
      .  Using production system testing new AB. No other suitable testing =
infrastructure. Some bugs identified. Some of them are fixed. This weekend =
will do some test. Hopefully on Monday we can make a decision whether we ca=
n switch to the new AB. Most of Saturday and Sunday PST the autobuilder wil=
l be down.
    - RP: performance: start tracking new performance metrics. Collecting m=
ore data about performance. Anyone has other ideas on the performance metri=
cs, please let me know.
      .Darren: IO performance?. Specifics how the system is configured, fil=
esystem use, mount options?  Darren will send QA an email proposing this.
    - Nitin: 1.4 schedule. (already covered above)
=A0
* Team Sharing - 20 min
  - Michael: IRC monitoring is published on the web.=20
  - Paul: working on the layer index. Realize it needs to support multiple =
branches. Needs to reengineer a few things. Hope to complete that by the en=
d of the week.



