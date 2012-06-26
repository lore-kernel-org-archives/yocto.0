Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7130DE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 11:59:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jun 2012 11:59:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="163012188"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 26 Jun 2012 11:59:36 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 11:59:36 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.115]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 11:59:35 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, June
	26, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNU83Uc9b1dMWeW0aFCZSWqTb3Fw==
Date: Tue, 26 Jun 2012 18:59:35 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48452A23@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 26, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 26 Jun 2012 18:59:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
LaurentiuP, Jefro, Richard, Bruce, Michael, Ross, Mark, Sean, Jeff, Tom, Da=
rren, Gilbert, Denys, Jessica, ScottR, Saul, Paul, Jim, Ciby, Alex, Song
=A0
Gilbert is from mentor Graphics, working with Sean.
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.3 M1 release readiness - 10 min (community)
  - The community agreed on releasing M1 RC1. For details, please see: http=
s://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status#Milestone_1=20
* 1.2.1 update - 5 min (ScottG)
  - Ross did a fix for 1.2.1, Saul is going to pull and merge. We will have=
 a build this week.
* 1.1.2 update - 5 min (Josh/Beth)
  - Beth did a rebuild, the build is ready for QA to test.
  - QA is busy with 1.2 meta-intel BSP testing now. Will complete in a coup=
le more days.
* Yocto 1.3 status  - 10 min (Song/team)
  - Reviewed all P1 items left on 'scheduled' stage.=20
  - Actions:
    1) Darren/Bruce will get back to Song on 1649 and 1919. They may have t=
o be rescheduled.=20
    2) 2390/2401: development completed, waiting for Juno release.
    3) Song to follow up on all other P1's still in 'scheduled' stage for M=
2.
* SWAT team rotation: Nitin -> Beth
* Opens - 5 min
  - None
=A0
* Team sharing - 20 min
  Mark: working on ability to generate SDK/tool chain based on an image. Wi=
ll have preliminary patches out to oe-core mailing list sometime this week.
  LaurentiuP: Working on 1.3 items. Has discussion on Bjorn last week, will=
 follow up with him offline.=20
  Michael: last week worked on testopia, release training with Beth, packag=
e reporting system, more autobuilder setup. Had some downtime on yoctoproje=
ct.org, worked to restore, will monitor it more closely. This coming week w=
ill be on bugzilla stats.=20
  Jim: we have design update for web hob. Screen cast, PDF, etc. more feedb=
ack is appreciated. The URL is in the mailing list (last Friday).
  Darren: working on building kernel modules on target. Running into some i=
ssue (Post install scripts?), any idea or thoughts, let me know. The issue =
is bug 1614 in Bugzilla.


