Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F413E004E9
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 08:55:10 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2011 08:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,480,1312182000"; d="scan'208";a="22823127"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Oct 2011 08:55:07 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 3 Oct 2011 08:55:05 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.52]) with mapi id
	14.01.0323.003; Mon, 3 Oct 2011 08:55:05 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.1 release go/no-go meeting
Thread-Index: Acxz9PVq5XlRxMNfRPe54lpsXNiQzAN72HsgAAAW9NA=
Date: Mon, 3 Oct 2011 15:55:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F2DFB9@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16F0AEBB@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.1 release go/no-go meeting
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
X-List-Received-Date: Mon, 03 Oct 2011 15:55:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Josh, Scott Rifenbark, Richard, Mark, Dirk, Saul, John Cherry, Dave, =
Darren, Song
=A0
* Background:=20
Linux Foundation security breach knocked out our access to build and repos =
servers for a few days. We were also upgrading autobuilder at the time and =
we had some issues with the upgrade also. So we have to delay our release. =
We have brought the release date change recommendation to the Yocto CCB (Ch=
ange Control Board), and the board has approved the change. The new release=
 date is Oct 17th. (Our QA team in Shanghai has a national holiday from Oct=
. 1st to Oct. 7th). So the purpose of this meeting is to go over things we =
are going to put in RC4, and come up with a contingency plan if RC4 fails o=
ur release standard.
=A0
* RC3 status: Mostly green, Some HOB and mutilib issues, fixes for HOB and =
multilib,=20
=A0
* What fixes are being recommended to include in RC4:
  - HOB fixes
  - Small kernel update, fix some configuration issues,=20
  - Multi-lib issues: most of them are low risk, one invasive change, but w=
e will test it this week
  - QA team (Shanghai) is on a 7-day holiday. We have time to test these fi=
xes before QA next week
  - We already have the patches in edison contrib branch, other than the x =
qt3 issues, our build is green
  - X32 recipe kernel.org URL issue, blocking X32 test, recommend include
  - Fixes for 1523/1533, already in master, recommend to include
=A0
* Action item: Triage team will review all open bugs and work out a list of=
 items we will document in 1.1 release note.
=A0
* Contingency plan:=20
  - IF RC4 has some serious issues, we have 2 options, one is to go back to=
 RC3, the other is to have another RC5. We will have one week before ELCE a=
fter Oct. 17th and our mirror sites are still down.=20
  - The team agrees that we should go with RC5 for contingency.


