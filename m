Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F19CCE0027E
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 15:52:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2012 15:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="163996482"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2012 15:52:06 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 Jul 2012 15:52:06 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.138]) with mapi id
	14.01.0355.002; Tue, 10 Jul 2012 15:52:06 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	10, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNXu6hvL8lTuBPF0ODHKERhiMtcg==
Date: Tue, 10 Jul 2012 22:52:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48479F34@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 10, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 10 Jul 2012 22:52:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave, MichaelH, RP, Paul, Jim, Beth, Ross, Tom, Saul, Jefro, ScottG, Lauren=
tiu, Nitin, Jessica, Michael (from Dell), Cristian, Jeff, Sean, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.2.1 update - 5 min (ScottG)
  - We have the full pass QA report on RC1 now. Scott will work with Richar=
d and Saul to look through.
  - There is some issues with meta-intel BSPs. But we are not releasing any=
 BSPs. The QA on BSPs are to make sure BSP compatibility.=20
  - the other issue is related to the new eglibc release.
  - Will send out an email later today on the status after reviewing the bu=
gs.=20
* 1.1.2 update - 5 min (Josh/Beth)
  - Bugs opened are things we fixed in 1.2.
  - Laurentiu: will have the test report tomorrow.
  - FRI II: Saul will build the BSP image.=20
  - ADT: Beth will generate the repository.
* Yocto 1.3 status  - 10 min (Song/team)
  - P1 items review:=20
    - Risky P1 features that may have to be moved to next milestone: 1991, =
1649, 2396, 2606
    - Risky P1 bugs: 2675, 1919, 2679, 2706, 2531, 2595, 2707
  - M3 release criteria review: will be pretty much the same as M2. As we a=
re merging the priority for bugs and features. Our release criteria will be=
 completing all high bugs and features targeted for the milestone.
  - master status: There has been a lot changes. We got fixes in a few area=
 such as RPM, multi-lib. Trying to take more patches.=20
  - RP: we are looking for more people to help on the SWAT team meeting.=20
=A0
* SWAT team rotation: Jessica - > Paul
=A0
* Opens - 10 min
=A0
* Team sharing - 20 min
  - Michael H: moved eglibc to the target server, working on autobuilders g=
etting to these and rotate them in. Updating on documentation, statics on b=
ugzilla and downloads.


