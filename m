Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC6C0E012F1
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 08:41:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Mar 2013 08:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,831,1355126400"; d="scan'208";a="277420732"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 12 Mar 2013 08:41:11 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.124]) with mapi id
	14.01.0355.002; Tue, 12 Mar 2013 08:41:11 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	12, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4fN+xiWWaQ92WhSASGDFXF6SdPJwAAA2HA
Date: Tue, 12 Mar 2013 15:41:10 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70F0C855@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 12, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 12 Mar 2013 15:41:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:=20
AlexD, Cristian, Michael, Jessica, LaurentiuP, JeffP, ScottR, PaulE, RossB,=
 Nitin, Corneliu, SeanH, Song
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - RC1 QA report is good. RC2 QA report is out, will look at it. coule be =
releasing this week.=20
  - Song: will have a release readiness meeting this week if most of the fo=
lks can make it.
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - Feature development: Everything is moving along. No issues. Feature fre=
eze is coming this Sunday. Please get the code in if you would like to feat=
ure to make 1.4. Last reminder.=20
  - Bug fixing: record week last week. Fixed 49, Darren (6), Richard (5). N=
ow we have 269, about the same as when we started 1.4.
=A0
* SWAT team rotation: Ross -> Andrei Dinu
* Opens - 10 min=20
  - 1.5 planning is starting. If you have any features or ideas, please put=
 them in Bugzilla as enhancement bugs.
* Team Sharing - 20 min
  - AlexD: debugging qemu program with vmware emulation, Any input, feedbac=
k please let me know.
  - Cristian: worked on build appliance. Noticed a problem, if the user run=
s in vmware and using a proxy, the NAT will not connect the internet. Fix i=
s to modify the configuration. Sent experimental patches for bluz5. the int=
egration of bluz5 could be good for 1.5.
  - MichaelH: looked at mailing list issue. Some people receiving emails 7 =
hours after. Done some changes how plc(?) handshake is done, DNS changes, e=
tc. having better response now. Thinking moving the mail server to a dedica=
ted machine. If you are still seeing slowdown for emails, let me know. Work=
ing on charts generation this week. Will be working with Laurentiu. Could b=
e replacing the bug trend charts. AB upgrade is happening. The code is gett=
ing close to be functional. Will do some test this weekend. Will be some ou=
tage this Friday to Sunday. Will be separating Intel build AB from YP AB. T=
hey will be decoupled. That means if other companies want AB to be there th=
ey won't need to be tightly coupled. Added a new server for OE to run the l=
ayer index web app done by PaulE.
=A0


