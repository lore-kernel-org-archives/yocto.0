Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6943BE00740
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 12:04:45 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2013 12:04:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,475,1355126400"; d="scan'208";a="277267118"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2013 12:04:44 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 15 Jan 2013 12:04:44 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.01.0355.002; Tue, 15 Jan 2013 12:04:44 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 15, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHN81uPo8kLJNArDkeWvs/S9o9F3g==
Date: Tue, 15 Jan 2013 20:04:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A5989BC8A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 15, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 15 Jan 2013 20:04:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Ciby (Mentor), Jessica, Sean, MarkH, ChrisL, ChrisK, ScottG, TomZ, KevinS, =
ScottR, BruceA, Corneliu, Saul, Nitin, JeffP, DaveST, Bj=F6rnS, Song
=A0
Agenda:
=A0
-- Thanks to Saul for covering me while I was on vacation.
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.2.2 status - 10 min (Scott/AlexG)
  - ScottG:has gone through full pass QA testing. All the issues can be rel=
ease noted. No blockers.
  - Song: listed all the know issues in the IRC channel. No Special concern=
s from the audience.
  - Saul: More patches from Koen (4), what can we do? Sean/Saul: Suggest to=
 make them available, get them to the tip of the denzil branches. But Movin=
g forward with the plan. Wrapping up 1.2.2.=20
  - Song: QA complete, no concerns or blockers. Move ahead with 1.2.2 relea=
se. Song will send CCB email asking for approval.
=A0
* Yocto Project 1.3.1 status - 10 min :
  - Saul: patches are integrated. Ready for QA test.=20
  - Song: QA will be done after 1.4 M2/M3 release. If anyone would like to =
suggest more patches, please let Ross (ross.burton@intel.com) know.
  -=20
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status#Overview=20
=A0
  - Bug fixing: resolved 51 last week. Thanks to Otavio Salvador (4) from t=
he community (Ossystems.com.br), ScottG (11). Good work and thank you all.
  - Feature development (M2/3 cutoff is this coming Sunday):=20
    . SMART updater/Mark: code is there and working, a couple of bugs, a co=
uple of performance issues related to incremental install and complimentary=
 install. Opening bugs to track them in Bugzilla. Other than those. Everyth=
ing is working.
    .systemd/Saul: patches pending, reworked a little bit. There are still =
some issues. Trying to get this done by the end of this week.
    .wayland/Saul: 3 patches pending, dependency issues. Saul will touch ba=
se with Ross to get the status, hope to resolve this feature by the end of =
this week.
    . LTSI (Bruce): still underway, pending. Cannot be done for M3.
    . Song: QA is working on the test plan for the above features. Please e=
xpect working with QA.=20
    . Mater status/Saul: RP pulled in last set of consolidated patches. Hop=
ing to have a weekly build, and then full QA. Build will be available somet=
ime tomorrow (RO/PRC time).
=A0
* SWAT team rotation: Radu Moisan -> Constantin Musca=20
=A0
* Opens - 10 min=20
 - ChrisK: Design firm Tobias & Tobias are helping with the design of a web=
 UI for analysing builds and images. They are looking for people willing to=
 test & give feedback on an early-stage design prototype. Interviews will b=
e conducted via phone or Skype and take about 30 minutes.=20
    . If you can participate, please email: chris.kaminski@tobias.tv
  - Bjorn: x-test and x-ptest. have been working on the ptest framework. A =
week ago, it was merged. But a different approache has been merged. It's be=
tter if we could have only one way. =20
    . Saul: this is an oversight. ptest should be the way. Will contact Kai=
 Kang to sort this out.
    . Bjorn has a wiki page for this framework: https://wiki.yoctoproject.o=
rg/wiki/Ptest
=A0
* Team Sharing - 20 min
 - ScottR: url: http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.=
html. People can go here to see the kernel development manual. Also sent an=
 email to the yp mailing list.=20
 - Corneliu: tesopia is in its final version. Is a new testcase management =
platform we are going to use from now on. Feel free to ask me if there is a=
ny questions:=20
https://wiki.yoctoproject.org/wiki/Testopia. Will be adding SMART testcases=
 today. Remove zypper testcases. All existing testcases are there.
- Michael: reinstall OS on AB 3/7/9. new OSes and better support. HW error =
happening and been corrected. Added webhob mailing list. Working on testopi=
a integration. Had some slight changes and extra testing. Corneliu working =
with me. This week will continue. YP dev day assistant. More information an=
d organization on the web site BSP page.=20
  - Sean/ScottG/Saul: Yocto Dev day: small budget issue, plan still in the =
work. Will go ahead with the dev day, but likely no hands-on lab, will have=
 small focus group discussions. Build system will be setup on individual la=
ptop, etc.






