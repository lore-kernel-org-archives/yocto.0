Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E3AAE006C3
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 13:15:19 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2013 13:15:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,666,1355126400"; d="scan'208";a="291306040"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2013 13:15:18 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.227]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Thu, 14 Feb 2013 13:15:18 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	February 12,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4K+ERui9FHbVeIQKuK/q97CsNqcAAABBDQ
Date: Thu, 14 Feb 2013 21:15:18 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A6A71BA0D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 12, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Thu, 14 Feb 2013 21:15:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the late.

Attendees:
Belen, ScottR, LaurentiuP, KevinS, Richard, TomZ, Amit, CristanI, BruceA, N=
itin, JessicaZ, MichaelH, Ross, Denys, Saul, ChrisL, Corneliu, Fahad, Bj=F6=
rn, DaveST, AlexG, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - Ross: Tried a build last night, hopefully we can get a proper build on =
everything. tonight.=20
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - Feature development: no issues. More features are getting validated in =
the past week. Thanks to QA team.
  - Bug fixing: Not much change on total # of bugs. Fixed 35, LaurentiuP (7=
), BogdanM (5), thank you! WDD is about the same as the week before. WDD+ i=
s coming down because we have less number of high's.
  - Schedule reminder: M4 feature cutoff is coming this Sunday. RC1 could b=
e at risk due to the travel of some key team members. If that happens we wi=
ll target RC2 timeframe for M4 and use next week for 1.3.1 testing. Otherwi=
se, follow the existing schedule.
  - Master status (Richard): did a build last night, a few small failures. =
Features pulled in. Last week, trying hard to get green build. We dealt wit=
h long standing ones. Frustrated on freescale arm build issues.=20
=A0
* SWAT team rotation: Nitin Kamble -> Elizabeth Flanagan
* Opens - 10 min=20
* Team Sharing - 20 min
  - Corneliu: we have the final version of our QA report on testing. https:=
//wiki.ctest.yoctodev.org/wiki/Sample_Summary_Report, https://wiki.ctest.yo=
ctodev.org/wiki/Sample_Extended_Report. Would like feedback. RP/Song: Still=
 need email for the summary of the report.=20
  - Ross: systemd has more patches in, it should just work now in master. C=
ore-image-sato.=20
  - RP: recent changes: spend a lot of time on do_package. Email discussion=
 on mailing list. There is some changes going in. Be aware of that. Python =
issue, work around at bitbake level now. PR server changes. Beware of those=
 issues. Please let us know if you see problems. Interested to see the over=
all build time figure.
  - Michael: got M3 out, helped with that, upgraded autobuilder 5 and 6. On=
ce they fully tested will get 4 upgraded. Still tracking some bugs on 5 now=
. Applied changes for new security policies.=20
  - LaurentiuP: continued work on postinstall. Put the patches on the maili=
ng list. With this patch, I'm pretty much done. Will work on SDK bugs.



