Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C80CFE0127A
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 20:28:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Oct 2012 20:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,638,1344236400"; d="scan'208";a="231439024"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2012 20:28:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.247]) with mapi id
	14.01.0355.002; Tue, 23 Oct 2012 20:28:16 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	October 23, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNsZebuF9LN+6Kc0Cg8YupFObZAg==
Date: Wed, 24 Oct 2012 03:28:16 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A485C32A8@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 23, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 24 Oct 2012 03:28:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Decision:=20
  - The community has unanimously agreed to release RC4 as the 1.3 release.=
 Congrats to the team! Thank you all.
=A0
Attendees:
MichaelH, Mihai, Jessica, Beth, PaulE, JeffP, Sean, Kevin, Nitin, ScottR, N=
itin, Amit, ChrisL, Bruce, Dave, Saul, Denys, Song
=A0
Minutes:
=A0
* Clarification: What kind of things we can have in opens and team sharing:
  - Opens: Anything you would like to have an open discussion or raise to o=
thers, including technical issues, questions, feature or fix proposals, req=
uest for feedback, blockers, concerns, suggestions, etc.
  - Team sharing: Anything you have done around YP in the past week, plan f=
or the current week, issues, road blockers, need help from others, etc. Suc=
h as development work, conference experience, etc.
=A0
* Opens collection - 5 min (Song)
 =20
* Yocto 1.3 release readiness - 20 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status#Milestone_5_=
.281.3_release.29
  - Release criteria review: All criteria has been met with RC4.=20
  - The QA report on RC4 is the cleanest QA report we have seen for the ent=
ire release. Very few issues.=20
  - Completed 71% of the work we planned for 1.3, compared with 1.2.
  - Fixed close to 570 bugs with medium or higher priority.
  - Dave: release criteria on performance, try common use case build. Set a=
 performance target.
    . RP: have a suite of matrix for performance, including things such as =
disk space, time to run a special command, overhead of starting a bitbake.e=
tc.
    . Beth: will work on the feature request for this performance measure. =
Will work with QA on this.
  - The community has unanimously agreed to release RC4 as the 1.3 release.=
 Congrats to the team! Thank you all.=20
=A0
=A0
* SWAT team rotation: Saul -> Nitin
  - RP: AB is building everything, so far, it's not too bad. There are some=
 failures on BSPs.
=A0
* Opens - 10 min
  - Song: Mentor's plan around 1.4 timeframe.=20
    . Sean: continue to align mentor linux release with YP release. Interes=
ted to see how things move forward with webhob, will provide some feedback.=
 Trying to aligning next mentor release with 1.3 now. The team is busy work=
ing on Mentor Linux now.
=A0
* Team Sharing - 20 min
  - Mihai: working on an approach on package testing. Basic idea is to run =
make test for each package by including a new class. The test is run in the=
 building environment (host machine). Will contact Bjorn (Enea) for this. W=
orking on PPM module layer for poky. Just published yesterday, it's experim=
ental.
  - MichaelH: added secondary DNS server, no interruption of server on rebo=
oting now. https access is there, bottom of every git page. A lots of work =
with Jeff and others on content moving for new web site. Jeff is relieved. =
Package reporting website. Just got moderation on wiki account. Separate pa=
ckage reporting with download site. Getting download site for 1.3 ready.
  - Beth: added something to dev manual. How to release product with YP. Pa=
rticularly with source archiver. LF checked it, generally pleased.=20
  - RP: focused on performance, we enabled sstate n 1.3, there are some iss=
ues if you have multiple machines sharing a common package architecture. Be=
en unwinding the issue and looking at the shared lib code. Dealing with fil=
es, copying files. Debug package. Performance is one of the themes for 1.4.=
 changes to autotool bbclass is happening.=20


