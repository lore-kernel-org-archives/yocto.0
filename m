Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09960E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 09:12:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jan 2012 09:12:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110674018"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2012 09:12:26 -0800
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 25 Jan 2012 09:12:15 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.54]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.175]) with mapi id
	14.01.0355.002; Wed, 25 Jan 2012 09:12:15 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.2 M2 release readiness meeting
Thread-Index: AczavAgCU+sHxav0T3Kii4rthfirZQAx6yzwAAAr0LA=
Date: Wed, 25 Jan 2012 17:12:14 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A2E1790DD@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A2E175719@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.2 M2 release readiness meeting
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
X-List-Received-Date: Wed, 25 Jan 2012 17:12:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Dave, Kevin, Joshua, Darren, Tom, Richard, Mark Hatle, Mark Orvek, Je=
ssica, Denys, ScottR, Song
=A0
Release criteria review:
=A0
1. Completed all P1 features for M2, some P2/P3 features did not make M2 an=
d are pushed to M3, but most of them are either completed now or close to b=
e completed at this point.
2. M2 RC1 passed full path test, all known issues are logged in Bugzilla. B=
eagleboard BSP has xServer issue, but not show stopper, users of this BSP c=
an still use the M1 build. The reported HOB2 issue is already fixed. Core b=
uild system has 3 problems, 1 already fixed, the other 2 are being worked o=
n. All none show stoppers.=20
3. The latest version of Fedora, Opensuse, Ubuntu has been tested, no new i=
ssues found.
4. Quality has been under control, the WDD number has been relatively stabl=
e. Since the beginning of the 1.2 release, we opened more than 100 medium+ =
bugs and we fixed more than that, so the overall trending for total outstan=
ding medium+ bugs is down. Thanks to Richard and the whole team to make thi=
s happen.
5. Performance has a degradation, but stable compared with 1.1. Could be ca=
used by enlarged BSP images (the problem is already fixed). Richard is goin=
g to take a look. QA will check this after coming back from their holidays =
for M3.=20
6. We exceeded our target for package update, and at 99% for patch upstream=
 status update. Uclibc patches are still being worked on.
7. Remove marketing deliverable from milestone release.
=A0
Voting:
=A0
Intel/Dave: Go
Wind River/Mark Hatle: Go
TI/Denys: Go
MontaVista/Mark Orvek: Go
Linux Foundation/Richard: Go
=A0
Next step:=20
1. Beth will have the release note reviewed
2. Beth will push out the release tarball and announce the release in the p=
ublic mailing list.
3. Dave will write a blog entry.


-----Original Appointment-----
From: Liu, Song=20
Sent: Tuesday, January 24, 2012 9:17 AM
Subject: Yocto Project 1.2 M2 release readiness meeting
When: Wednesday, January 25, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time =
(US & Canada).
Where: 916-356-2663, 8-356-2663, Bridge: 94, Passcode: 5917456


https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status#Milestone_2


