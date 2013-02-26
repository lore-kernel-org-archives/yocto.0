Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E33C3E002AB
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 10:39:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Feb 2013 10:39:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,742,1355126400"; d="scan'208";a="267985876"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 26 Feb 2013 10:39:37 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Tue, 26 Feb 2013 10:39:31 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	February 26,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4UUITXIwRO/g9kTmSzTr7fluhhcwAAA3hg
Date: Tue, 26 Feb 2013 18:39:31 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70EEEF8F@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 26, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 26 Feb 2013 18:39:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, MichaelH, Corneliu, Nitin, BrianL, Darren, Paul, Belen, Tom, Mark, La=
urentiuP, ScottR, JeffP, Beth, JessicaZ, CristianI, BruceA, SeanH, DaveST, =
Song
=A0
Notes:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - Saul: will run a build 1.3.1 again today, make sure we have all the bit=
.=20
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - lots of M4 features merged. Targeting tomorrow morning (US time) for QA=
 full pass result.
  - 3 medium+ features left for M4: read-only rootfs support (Saul: there a=
re patches pending for a while, has been through a few rounds, probably at =
version 10 now. if people can review it, it would be really helpful) , smar=
t error reporting improvement, x86 generic BSP to support as many hardware.=
 Any concerns, comments?
  - M5 work has been started, some M5 features are already merged. M5 dates=
: Release feature complete: 3/17. This milestone is our last chance to get =
features in. Even though we don't have any high features, but if you think =
we really need to get some feature in and that feature is at risk, please d=
o let me know. We will see what we can do.
  - Bugs are down over the last 2 weeks. WDD/WDD+ chart is up this week, po=
ssibly due to that we have few more critical/major bugs.
  - Bruce: 3.8 kernel update is queued up. There are some problem on some q=
emu/arm platforms, should be fixed today. Hopefully to get it pushed today.
=20
* SWAT team rotation: Paul Eggleton->Jessica Zhang
=A0
* Opens - 10 min=20
  - Corneliu: QA, we can use the real time wiki page for QA update: https:/=
/wiki.yoctoproject.org/wiki/1.4_QA_Status
  - Sean: Yocto BoF notes collection? Seems no one collected notes...
=A0
* Team Sharing - 20 min
  - Darren: Minnow update. We are on x2 board, demoed at ELC. Got all funct=
ionalities. Making some minor revisions, layout, size, lures (daughter boar=
d), moving gpio a little bit. Regarding software, Scott, Koen and I are wor=
king on all aspects. Booted on 3.8 with a few patches. A couple interface i=
ssues between os and firmware. 32-bit efi work, etc.
  - MichaelH: moving backup infrastructure to a different rack at the same =
location. Looking a lot at the autobuilder. Lots of warnnings, timeouts, no=
 negative consequence so far, but watching it. Running 2 masters (?) on the=
 machine.=20
  - Beth: testing on the new autobuilder code. Still working out some bugs.=
 Restarted ab10 this morning. Trying to do this without impacting the main =
AB as much as possible. If there is anything happen, please let me know. Pl=
anning a switch over in a week or so. Don't want to risk release RCs with t=
he new AB. Backup plan is to use the current AB for release RCs.=20
  - Sean: posted my slides for YP at ELC: http://elinux.org/images/9/96/201=
3-ELC-Building-a-distro-with-YP.pdf
  - Paul: work on layer index applications. Finishing up the design. Hopefu=
lly to have something to show people fairly soon.



