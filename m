Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54768E0072F
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 15:50:13 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Jan 2013 15:50:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,562,1355126400"; d="scan'208";a="249973223"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by azsmga001.ch.intel.com with ESMTP; 29 Jan 2013 15:50:11 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 29 Jan 2013 15:50:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.112]) with mapi id
	14.01.0421.002; Tue, 29 Jan 2013 15:50:10 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 29, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac3+ezrI6PTQbTIbQ3CLEIZOG06ctwAABCLQ
Date: Tue, 29 Jan 2013 23:50:09 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A598AAEF1@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 29, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 29 Jan 2013 23:50:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:=20
Illeana, Nitin, Amit, Richard, ScottR, Belen, BruceA, TomZ, LaurentiuP, Cor=
neliu, Mark, Bj=F6rn, Kevin, Saul, Ross, AlexG, JessicaZ, BogdanM, DarrenH,=
 SongL.  =20
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - Ross: nothing new. We should be doing a build (will work with Saul), th=
en send the build to QA.
  - ScottR: doc changes pulled in? Ross: they are merged.
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - M2/M3: All high features are in (LTSI is merged too even though it's be=
en approved by the CCB to be rescheduled to M4. Thanks, Bruce!). Close to g=
et the full pass report on RC1. AlexG: report will be out tomorrow. No high=
 bugs so far, but triage team will do a quick round today, so you may get s=
ome new bugs coming your way. If it's high, please make sure we fix them as=
ap. If you cannot get M3 high done, please do let me know today. Send email=
 to me or the mailing list and CC me. Saul: is it possible to have the repo=
rt before the meeting. AlexG: there was some issue so it's delayed a little=
 today. will try in the future.
 - Bug fixing: a little better than last week. But still high on # of open =
bugs. Fixed 41, Richard (7), Nitin (5). Good work, team!
  - M4: Thanks to the team. planning is pretty much complete. Cristian, Mih=
ai need to move some M3 features, Saul/ScottG have M3 medium+ too.
  - Nitin, what are the M4 dates? feature cutoff: 2/17/2013, RC1: 2/20/2013
  - Milestone planning is our opportunity to look at features on schedule c=
loser, and adjust estimation if necessary. We want the estimation to reflec=
t our current view on features.
=20
* SWAT team rotation: Bogdan Marinescu -> Laurentiu Palcu
=A0
* Opens - 10 min=20
  - Bjorn: kernel configuration. I have been working with a couple of meta =
layers, many of them have their own kernels. With the recent kernel manual =
out, wondering if we can create some unified kernel configuration, make som=
ething that can be migrated to other layers. Anyone has been thinking about=
 this?
  . Bruce: There are some existing things we can use. I have some changes f=
or 1.4 coming up, could be the next step for this unified kernel config. Da=
rren: please send email to the mailing list and CC darren and bruce. There =
are 2 config options we can choose from: traditional linux config and linux=
-yocto tooling.
  . This can be discussed in the mailing list.
  - Corneliu: 2821:Saul: it's related to proxy, we thought it was resolved.=
 We should work with Michael on this. Corneliu: What's the procedure we sho=
uld follow before we resolve it, can we disable the error in the testcase?.=
 Song: It's medium bug, no others seem to be able to chime in. Take offline=
 with Saul please.
=A0
* Team Sharing - 20 min
  - RP: Doing some performance work, looking at package build again. Someti=
me pretty slow. Particular on large packages. large number of packages from=
 some recipes. Kernel packaging in particular: a number of kernel modules a=
nd large number of packages. Profiling tasks. Digging through output, where=
 is the bottleneck and what is low hanging fruit. One case: code is working=
, but calling something inefficiently. We need ideas how to improve the pac=
kaging. There are definitely some optimization we can do. Wondering if we c=
an parallel the packaging. Open to ideas. Will speak on the mailing list on=
 this.
  - Bjorn: this is something I'm interested.



