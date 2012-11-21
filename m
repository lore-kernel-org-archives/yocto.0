Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F020E01423
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 19:23:36 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Nov 2012 19:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,290,1352102400"; d="scan'208";a="250323652"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 20 Nov 2012 19:23:31 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.56]) with mapi id
	14.01.0355.002; Tue, 20 Nov 2012 19:23:29 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	November 20,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNx5eTQYNlxzzDfEOm0TOvlco83g==
Date: Wed, 21 Nov 2012 03:23:28 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A486025A1@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 20, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 21 Nov 2012 03:23:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, Ramana, ErenT, Saul, Beth, Daren, JeffP, TomZ, PaulE, DavidW, DaveST=
, ChrisL, BjornS, ScottR, Nitin, MihaiL, MarkH, BruceA, Amit, Denys, Jessic=
aZ, RP, Song=20
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.4 status - 20 min (Song/team)
  . Status update in Bugzilla: please update status by Monday morning. Use =
the status field please.
  . Always schedule the features with higher priority first.
  . Things in master:
    opkg: added alternative ln patch. Use 'ln -n' to avoid dereferencing li=
nks to host files.
    Python: resolve intermediate staging issues, simplifying python recipe =
and the compile process.=20
    Fixed a bug in make-3.82 for archive expression expansion.
    Initial integration of python-smartpm recipe for SMART updater.
    Various bitbake improvement including ensuring last tasks are displayed=
 correctly in the footer, remove obsolete console log code, add error to re=
turn of runCommand, etc.
    Various HOB improvement such as saving proxy settings, adding a button =
for network testing, UI improvement around progress bar, etc.
    Share state improvement, allow only partial installation, speed up thin=
gs in some cases.
    colorize the bitbake console output
    Reduce the amount directories when searching. patches on the mailing li=
st. =09
  . 1.4 M1 feature complete: Nov. 25th. Running full pass testing this week=
.
  . Master status: Building, there was an issue for QT, looking at it now. =
Will have the build ready for QA this week.
=20
=A0
* SWAT team rotation: Jessica -> Ross
=A0
* Opens - 10 min =20
  - Eren docs: finished hello-world doc (http://erenturkay.com/doc/from-bit=
bake-to-image/), would like to feedback. It's ok to be independent or integ=
rated into existing YP docs. ScottR to follow up With Eren.
  - RP: various notes about profiling (bitbake). There is wiki page (https:=
//wiki.yoctoproject.org/wiki/Profiling), working in progress. Hopefully to =
integrate something to bitbake manual. Tom is working on profiling for the =
target system.
  - Dave: offline configuration tool. Ramana: would like to take it to the =
next step. RP: encourage people to talk to each other. Mark and Darren post=
ed something that could be overlapping with this. Suggest Ramana, Mark and =
Darren to talk.
  - Bjorn: patches for package testing coming, first glib dbus testing.=20
=A0
* Team Sharing - 20 min
  - DavidW: share experience building with a toolchain on a shared file sys=
tem (Samba). 3min vs. 8min. Will try to reconfig shared storage. Michael: N=
FS worked well for us.
  - MichaelH: Added new status values in Bugzilla and regression types for =
bugs. Will add hover text for the definition of regression types. meta-inte=
l BSPs released, helped in that process. Working on some code review tools.=
 Went over who has access to the security bugs, added some people. Let me k=
now if anyone else needs access that.=20
  - ScottR: had a meeting with Huawei, engaging with them, they would like =
to start contributing to YP documentation. Will be working with them.
  - Eren: getting the security bug in advance, it would be very helpful. se=
curity question. RP: we are in cc? list, can we go one step further, join s=
ome other list so that we can get warnings earlier. We started from base le=
vel, no plans, but if anyone can get us in that circle it would be great. S=
ong will pass this on to ScottG and CC Mark.



