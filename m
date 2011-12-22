Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1974FE0123C
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 10:21:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2011 10:21:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89477952"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2011 10:21:01 -0800
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 22 Dec 2011 10:21:01 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.40]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.47]) with mapi id
	14.01.0355.002; Thu, 22 Dec 2011 10:21:01 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.2 M1 release readiness meeting
Thread-Index: Acy/6KOVOF6faxm8TJeBFrJkt+QnAQA7Ze/A
Date: Thu, 22 Dec 2011 18:21:01 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A25793DDA@ORSMSX102.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A25792FDA@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A25792FDA@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.2 M1 release readiness meeting
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
X-List-Received-Date: Thu, 22 Dec 2011 18:21:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Happy Holidays! We voted to release M1 release.

Attendees:
Beth, Nitin, Saul, Joshua, Richard, Tom, Paul, Abraham, Jessica, Robert Mil=
ler, Sean,=20
=A0
Abraham:  Intel, high performance computing, has background in embedded sys=
tem, used to work on Poky, Android, worked for TI in the past.
=A0
Release criteria review:
=A0
Functional Completion:  Green
All P1 features except 1546 are in M1. 1546 is about fixing some licensing =
issues, it missed M1, but in master now. The team feels ok to release M1 wi=
thout 1546. Most of P2/P3 features also made into M1. For P2/P3's that are =
not in M1, most of them are close to completion, none of them poses risks t=
o our schedule and 1.2 release if we move them to the following milestones.=
=20
=A0
Build and Release (Yocto/BSP):  Green
RC2 build has been generated and passed full pass testing. All BSPs are tes=
ted good but the FRI II BSP. FRI II is a new platform, not available to the=
 public.
=A0
Open Bugs: Green
All high bugs are fixed. Some of them are fixed in master, not in M1, but i=
t's not worth to run RC3 and we are going to document all know issues and p=
oint people to Bugzilla for latest status. There are new bugs, but no show =
stoppers. As we have been working on feature development, we are also fixin=
g a lot of bugs. The WWD (https://wiki.yoctoproject.org/wiki/Yocto_Bug_Tren=
d ) is trending down a little bit. We are basically broken even as we opene=
d a lot of bugs and also fixed lots of them. Overall, the bugs are very muc=
h in control in the middle of the 1.2 release.
=A0
Functional Test: Green
QA Full pass test has been executed, all bugs are logged.
=A0
Distros Tested: Green
Fedora 15, Opensuse 11.4 and Ubuntu 11.04. These are not the latest version=
 now. Latest version were released in Nov. or even in Dec. after M1 started=
. We will test the latest distros for M2 release.
=A0
BSP testing: Green
All are tested and bugs are logged.
=A0
Documentation: Green
Doc for windows users to deploy Yocto Image has been completed.
=A0
Build Performance: Green
QA has added performance test for milestone testing. Build performance has =
been improved in M1. (one qemux86 sato build on a Core i7 machine takes 104=
 minutes, which has 18% improvement compared with 1.1 M4 RC4 build(127 minu=
tes))
=A0
Package Update: Green
Target was set to update 50% of the packages. We exceeded our target by upd=
ating  about 90% of the packages.
=A0
Upstream Commits: Green
Target is to update 100% of the status. We are a little bit less than that,=
 will do better for the next milestone. Should not block M1 release.
=A0
Marketing Deliverables: None.
=A0
Voting: Release M1, no objections
=A0
Next Step:
Beth already put together the release package. She will get the release not=
e together with feature set and known issues, then announce the release in =
the public mailing list.


