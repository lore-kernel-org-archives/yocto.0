Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F40CE0055C
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2011 22:20:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2011 22:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="50579274"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 20 Sep 2011 22:20:58 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 20 Sep 2011 22:20:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.101]) with mapi id
	14.01.0323.003; Tue, 20 Sep 2011 22:20:58 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday,
	September 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMeBwKnmjsDlNMt0qM/SxlN/BbvpVXwZpQ
Date: Wed, 21 Sep 2011 05:20:57 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F2402C@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Minutes: Yocto Technical Team Meeting - (Tuesday, September 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Wed, 21 Sep 2011 05:20:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry, missed the information from the Shanghai team:

Jiajun/Wenhua:
Last week they were testing M4 RC2, it was still ongoing because BSP blocke=
d testing.
This week plan to finish RC2 testing. It seems the BSP sharing folder issue=
 was resolved.

Dexuan:
Last week fixed 1070 and identified 1443 was prelink issue owned by Mark.
This week continue to work on 1085.

Dongxiao:
Fixed multiple providers issue for multilib. (no bug number) Communicated w=
ith Mark on another multilib issue.
This week continued to work on 1457, and other new bugs.

Ke:
Last week worked on 1442, OpenGL issue, and prepared for v1.2 UI review. An=
d processed some pending patches for upstream.
This week 1442 was transferred to Edwin, and this week will do UI review an=
d ops review.

Edwin:
Fixed 1440.
This week will fix 1442.

Lianhao
Fixed 1486 last week.
This week continue to fix 1489.

All:
Update distro_tracking_fields.inc for those 63 packages missing 2 major dis=
tros.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Liu, Song
Sent: Tuesday, September 20, 2011 10:05 PM
To: yocto@yoctoproject.org
Subject: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday, Septembe=
r 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))

Action Items:
=A0
- Saul: work with Mark, Beth together to decide if we can delay RC3 to acco=
mmodate fixes for RPM dependency issues in RC3 in order to reduce the risk =
of RC4.
- Paul: will send out email to the mailing lists to advertize the wiki page=
 for tested distros and collect the list from the community and the public.=
 =20
=A0
Attendees:
Darren, ScottR, Jessica, Beth, Mark, Paul, Matthew, Saul, Josh, Denys, Tom,=
 Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1 M4 status review and issues - 15 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
  - Bug fixing summary and issues (Song):=20
    . We still have 31 bugs left for 1.1 and 7 of them are high bugs. Our f=
ocus is still bug fixing. Even though most of the medium bugs won't be incl=
uded in Yocto 1.1 release, we should still try our best to get them in the =
master
    1492-Saul: 2 parts, 1 part we already have a fix. The other part should=
 be done by tonight.
    1466-Mark: no need to be fixed by this release.=20
    1489: this problem was found on ARM also, and it's fixed for ARM. It sh=
ould be re-verified and see if it's already been fixed.
    1444: this one should be fixed. Need to be marked as resolved for QA to=
 verify.
    1457: Mark is working on this one, change owner to Mark.
  - Build status and QA (Beth/Song)
    Minor issues with autobuilders. Should be resolved before RC3. BSPs for=
 RC2 have been build. ADT tool chain is complete for RC2 also.
  - Release schedule:
    . Mirror on kernel.org is still down. Mark has some fixes (related to 1=
457) that need to be included in 1.1 release. It's better if these fixes ca=
n be included in RC3 so we can reduce the risk of RC4. Saul will work with =
Mark, Beth together to decide if we can delay RC3 to accommodate these fixe=
s in RC3.
    . We still have remaining autobuilder issues and high bugs that we cann=
ot get in RC3, so we have to have a RC4. This will delay our Yocto 1.1 rele=
ase to Oct 17th, 2011.
* Opens
  - videos for ADT and HOB (ScottR): Jessica is setting up the environment =
in order to produce the ADT screen cast. HOB will be handled by Joshua. Sco=
ttR is wafting for these videos.
  - Beagle board testing firmware package (Darren):
    Darren would like to have testing done one newer Beagle Board revisions=
. If anyone has these boards can help. Paul has rev B (BB XM) board.=20
    Darren would like to have guideline for recipes to package firmware. (J=
osh) We already have a recipe for that to package firmware. Darren will loo=
k into it.
  - RPM dependency generation (Mark):
    Part of the problem will be fixed by 1457. Mark will file an enhancemen=
t bug to track the other part that we cannot do anything at this point.=20
  - tested distros (Paul): We will need to collect the list from the team a=
nd the community. Paul takes the action item to send out emails.
=A0
* Weekly team sharing
  Tom: install changes from oe-core, bug tracing and fixing last week. Work=
ing on Emenlow moving 3.0, basically works, some issues remain, hopefully w=
ill be fixed soon. More bug fixing this week, BSP review and related work.=
=20
  Denys: was working on toolchain, Yocto, OE core, meta-oe (Sorry, Denys, I=
 did not catch much, please feel free to add here)
  Josh: Bug fixes last week, bug fix on medium and high, and video scrip th=
is week.
  Saul: working on reviewing patches, bug fixes, IP scan, blocker: Richard'=
s remoteness and travel. Darren will be Richard this week :)
  Matthew: working on getting build working on boards, basic testing.
  Paul: fixing bugs as they come up until we have a release, getting the te=
sted distro list complete.
  Mark: working on the RPM dependency and multi-lib
  Beth: RC2 is pushed out, fixes for RC3, ADT repo.
  Jessica: setting up environment for screen cast of ADT. Running into all =
kinds of issues, have to debug issues. Working on various things for the re=
lease, working with ScottR on the ADT manual.=20
  ScottR: finished the ADT menu, moved on to the development manual. Waitin=
g on the ADT screen cast. Would like to make a pass to every book before re=
lease.
  Darren: Doing internal BSP work, continuing to look at reduced kernel ima=
ge size, boot time. Trying to throw together some tools to help identify th=
e places in the kernel to focus on. Sending out review request on this and =
will do another round of changes


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

