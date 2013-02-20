Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF0D2E01248
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 23:57:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Feb 2013 23:57:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,699,1355126400"; d="scan'208";a="264942664"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 19 Feb 2013 23:57:26 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.177]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Tue, 19 Feb 2013 23:57:26 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	February 19,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4PP8nA2yblbhS8QA2p5aSD2JjXlgAAAwrQ
Date: Wed, 20 Feb 2013 07:57:25 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70EDC517@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 19, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 20 Feb 2013 07:57:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
AlexD, Cidy, Nitin, PaulE, KevinS, Belen, Bj=F6rnS, Amit, Corneliu, Song
=A0
Notes:

Song: many of our team members are at ELC this week. They may not be able t=
o attend this meeting.
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - The build is ready, waiting for QA
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - QA started weekly last week, will see result soon.=20
  - Thanks to RP and others in ELC, we can still kick off M4 RC1 this week =
and QA will start testing.
* SWAT team rotation: Beth -> Paul.
* Opens - 10 min=20
* Team Sharing - 20 min
  - AlexD: headsup on implementation of wayland on qemu and real hardware. =
There are some problems and we are working on them, If you run into any pro=
blems, likely we already know them. Multiple bugs opened for this.=20
  - Amit: tried something on HOB. It is good work. Interested in the Web ba=
sed interface. Like the idea. Song/Belen: We have a design firm working on =
web hob UI. Belen could use some help in the design process. Please let her=
 know if you would like to be involved.
  - Nitin: Some of us are at ELC, if you are here, we would like to meet.
  - Corneliu: Real time status of the QA wiki: https://wiki.yoctoproject.or=
g/wiki/1.4_QA_Status Would like to have feedback. In the future we may have=
 many more testcases. This work automates reporting and can scale to hundre=
ds or thousands of testcases.

