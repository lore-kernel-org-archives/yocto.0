Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF83AE002E9
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 14:31:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2013 14:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,781,1367996400"; 
	d="scan'208,217";a="373661786"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2013 14:31:03 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 30 Jul 2013 14:31:03 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.194]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.169]) with mapi id
	14.03.0123.003; Tue, 30 Jul 2013 14:31:02 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	30, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6Na+pK8UNH9HGNQGK75cST79tMuQAAA7HQ
Date: Tue, 30 Jul 2013 21:31:02 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EEAA5F9@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 30, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Jul 2013 21:31:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EEAA5F9ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEAA5F9ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, ScottR, TomZ, PaulE, MarkH, SeanH, Darren, Saul, LaurentiuP, RossB, =
MichaelH, Cristian, BruceA, Eren, MatthewW, Beth, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Bug fixing:
    . fixes for 4750, 4918, 4940 is included in the M3 RC1 consolidated pul=
l. Pending Richard's pull.
    . WDD number is going up. More bugs opened by the community last week. =
Bug Triage team will look into these bugs and mark them properly. Some bugs=
 are already being worked on.
  - Feature development: 2308 (universal BSP) is included in the M3 RC1 con=
solidated pull.
  - M4 planning: this week is the M4 planning week. Please take a look at a=
ll features you own, move them to proper milestone. If you cannot complete =
some of the features, please let Song know asap.
  - M3 plan: RC1 build this week followed by full pass QA test.
* SWAT team rotation: Paul -> Jessica
* Opens - 10 min
  - Darren: Minnow update. A few posts on public media for minnow update. A=
 video is available. It's fun and a good video. A big pile of minnow boards=
 shipping out. I have all patches for Ethernet, gpio, serial console device=
s are now in the maintainers trees and queued up for kernel 3.12. Acpi non-=
discoverable device configurations, etc. are still being worked on.
* Team Sharing - 20 min
  . MichaelH: Working with the backup person at Linux Foundation. Taking a =
week off next week. Working on bugzilla change for doc change. Looking at f=
uture infrastructure plan. Graphing performance charts.
  . Paul: 1.4.2 point release is in the plan. Collected a number of patches=
 so far. There is another merge next Monday. We are thinking mid-August for=
 this release. If you have any patches in mind for this release, please let=
 me know.
  . Eren: worked on hamradio applications (github.com/eren/meta-hamradio). =
Already enabled some configuration, made progress. If anyone interested, pl=
ease feel free to check it out. Will be testing on real hardware.




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEAA5F9ORSMSX108amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Nitin, ScottR, TomZ, PaulE, MarkH, SeanH, Darren, Saul, LaurentiuP, Ro=
ssB, MichaelH, Cristian, BruceA, Eren, MatthewW, Beth, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Bug fixing: </div>
<div>&nbsp;&nbsp;&nbsp; . fixes for 4750, 4918, 4940 is included in the M3 =
RC1 consolidated pull. Pending Richard's pull.</div>
<div>&nbsp;&nbsp;&nbsp; . WDD number is going up. More bugs opened by the c=
ommunity last week. Bug Triage team will look into these bugs and mark them=
 properly. Some bugs are already being worked on.</div>
<div>&nbsp; - Feature development: 2308 (universal BSP) is included in the =
M3 RC1 consolidated pull. </div>
<div>&nbsp; - M4 planning: this week is the M4 planning week. Please take a=
 look at all features you own, move them to proper milestone. If you cannot=
 complete some of the features, please let Song know asap.</div>
<div>&nbsp; - M3 plan: RC1 build this week followed by full pass QA test.</=
div>
<div>* SWAT team rotation: Paul -&gt; Jessica</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Darren: Minnow update. A few posts on public media for minnow=
 update. A video is available. It's fun and a good video. A big pile of min=
now boards shipping out. I have all pa<font color=3D"#1F497D">t</font>ches =
for Ethernet, gpio, serial console devices
are now in the maintainers trees and queued up for kernel 3.12. Acpi non-di=
scoverable device configurations, etc. are still being worked on.</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; . MichaelH: Working with the backup person at Linux Foundation.=
 Taking a week off next week. Working on bugzilla change for doc change. Lo=
oking at future infrastructure plan. Graphing performance charts. </div>
<div>&nbsp; . Paul: 1.4.2 point release is in the plan. Collected a number =
of patches so far. There is another merge next Monday. We are thinking mid-=
August for this release. If you have any patches in mind for this release, =
please let me know.</div>
<div>&nbsp; . Eren: worked on hamradio applications (github.com/eren/meta-h=
amradio). Already enabled some configuration, made progress. If anyone inte=
rested, please feel free to check it out. Will be testing on real hardware.=
 </div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEAA5F9ORSMSX108amrcor_--
