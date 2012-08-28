Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA91E0049B
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 15:31:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Aug 2012 15:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,330,1344236400"; d="scan'208";a="192526793"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 28 Aug 2012 15:31:20 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 28 Aug 2012 15:31:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.89]) with mapi id
	14.01.0355.002; Tue, 28 Aug 2012 15:31:20 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 28, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNhWzYrw6VbsaO0EemPyfQ3YxPMA==
Date: Tue, 28 Aug 2012 22:31:19 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4852395B@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 28, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 28 Aug 2012 22:31:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Cristian, LaurentiuS, Andrew, Cristina, ScottR, TomZ, Bjorn, Richard, Saul,=
 Kevin, PaulE, DaveSt, Nitin, Belen, Mihai, Alex, Beth, Sean, Ross, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 M3 release readiness (All)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status#Milestone_3=
=20
  https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report  (M3 r=
eport is at the bottom of the page)
    - Function complete: most are completed, some are moved to M4, CCB appr=
oved that change.
    - Build & Release: all features and core BSPs can be build with no erro=
r.
    - Open bugs: All M3 high's are fixed, except 2 reopened recently.
      . 2775 is reopened: RP - there is a kernel patch, we will need to ide=
ntify and pull it in.=20
      . 2675 is a 1.2.1 bug. QA verified that that is fixed.
    - Build Performance: we have about 13 minutes improvement over M2.=20
    - Consensus: release M3. song will send email to CCB and Beth/Michael w=
ill release this week.
=A0
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
    - Wiki status page updated with feature development and bug fixing prog=
ress.
    - Record week for bug fixing: 39 resolved (medium above bugs). Please k=
eep the good work going!
    - Most of the high features will be changed to medium or medium+. Pleas=
e send questions/comments to Song. Song will send email out later on.
    - 2675 is targeted for M3, high.
    - 1729-1730: multi-lib enabling, completed? Radu/Richard. Alex will fol=
low up
    - Beth: Fixed some long standing AB bugs last weekend. There will be mo=
re AB downtime coming (one on 9/7) to fix some long standing AB bug. Any qu=
estions/feedback  please let me know.
    -Beth: Master is mostly green except eclipse plug-in is failing. There =
is some kernel fetch issues. Will open a bug against this. Build appliance =
is in. make the water fall harder to read.  Using grid view should help.  I=
ona looked at the Eclipse issue, cannot recreate. Could be related to that =
some local libs are upgraded.=20
=A0
* SWAT team rotation: Ross -> Ross
  - LaurentiuP is on vacation, Ross volunteered to stay on. Thank you, Ross=
!
=A0
* Opens - 10 min
  - LaurentiuS: bug 2995. Saul/RP: already fixed.
  - Richard - should mention nativesdk:
    already mentioned this in mailing list. Got some issues, pulled some pa=
tches from the mailing list for this, would like to let people know this. P=
lease let me know if you have any feedback.
=A0
* Team sharing - 20 min
  - ScottR: new manual on the latest doc area on the website. All 6 docs co=
ncatenated together for the purpose of searching. Please take a look and co=
mment if you can.
  - Paul: working on some bitabke tools last week, enabled new feature to a=
llow specify a recipe then search data files for you. Will follow cache dir=
ectory recursively. Find out why a task was re-run. The patches are on the =
mailing list for this. Again, Tasks-rework, RFC sent out, please reply.
  - Christian: working on adding a new machine qemu86 machine with kvm enab=
led, with gto to improve networking and other io performance.  Add virtio d=
river next. It's not clearly how I will go with this one. There are some op=
tions. Looking for input. 2550. Saul: virtio is enabled by kernel by defaul=
t right now. Will follow up with Christian
  - RP: bitbake for tracing, and message improvement. If people are not cle=
ar where the error is after seeing the error message, please file bugs. It =
will improve the user experience. Show the error message in the bug.
  -Bjorn: posted patches on package testing (Ptest), it would be nice to ha=
ve everyone interested to take a look and point out errors. It's getting bi=
gger, would like to make sure the direction is correct. So please send feed=
back. RP: this probably something we should talk more on the oe-core list. =
Saul: on the right track.




