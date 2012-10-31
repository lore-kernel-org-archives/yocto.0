Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C72E0027E
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 17:11:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Oct 2012 17:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,683,1344236400"; d="scan'208";a="211503605"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by azsmga001.ch.intel.com with ESMTP; 30 Oct 2012 17:11:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.85]) with mapi id
	14.01.0355.002; Tue, 30 Oct 2012 17:11:02 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	October 30, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNtvw21BcWIqxf6Eu+l7Dv1c0+JA==
Date: Wed, 31 Oct 2012 00:11:02 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A485CD933@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 30, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 31 Oct 2012 00:11:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, Ioana, Constantin, David Wolfe (Magneti Marelli), AlexP, MichaelH, S=
aul, AlexD, Cristian, Jessica, PaulE, BogdanM, MihaiL, Nitin, Tom, ScottG, =
ScottR, Ross, Mark, Kevin, JeffP, BruceA, Saul, BrianR, ChrisL, Saul, Bjorn=
S (Enea),=20
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.4 planning & status - 20 min (Song/team)
  - 1.4 schedule is out on Google calendar: same milestone structure, 4 dev=
elopment weeks followed by 2-3 stabilization weeks. 6 milestones, the last =
milestone is the stabilization week.(https://wiki.yoctoproject.org/wiki/Yoc=
toCalendar) Please review and let me know if there is any questions or conc=
erns.
  - Feature planning: RP/Dave working on it, expected to be done by the end=
 of this week.
  - 1.2.2 status/ScottG:
    it's a good time to focus on a new denzil release now. Targeting the en=
d of this year as the final release day. We have 18 open bugs for 1.2.2. We=
 will take a look at these bugs. Some of these are carried over from 1.2.1.=
 Some of them will get fixed, some of them may not. A branch for this relea=
se is already in git. People can take a look and see what fixes are in.
  - 1.3.1 planning/Ross:
    I'm this stable release maintainer. If anyone have some patches, please=
 do say so. No new features, just security and fixes are expected to be in =
this point release.
  - master status/Saul:
        . Master is good, some failures, they are being looked at, Nitin di=
d a triage. Conman problem could be just a timing issue.
        . Both RP and Saul are traveling, next week is ELCE, pull request h=
andling will slow down a little bit due to this.
=A0
* SWAT team rotation: Nitin -> Paul
=A0
* Opens - 10 min =20
  - Mark: RPM and SMART -- RFC was sent to the list . Sent out RFC to oe ma=
iling list. Previously sent out to some technical people and got some feedb=
ack. I have not received any feedback from mailing list yet. If you are int=
erested, please do respond. =20
    . Have a branch, initial infrastructure working, hopefully to send out =
RPM changes today. Bug fixing and image generation after that. Discussion i=
s going on regarding whether we move it to meta-oe. Some people would like =
to use yum, suggest them to move to meta-oe too.
=A0
=A0
* Team Sharing - 20 min
 - Nitin: gstreamer upstream. Ross to send Nitin email on the status
 - Saul: wiki page for bug reporting template including testing/build envir=
onment. a general plea to the community. capturing log for bugs. There is a=
lready a bug open for similar issue (1562). Will add the link for bug opene=
rs to see this information.
 - Jessica: we are introducing new fields in Bugzilla: type of regression. =
Another way to track and monitoring the quality of this project.
 - MichaelH: worked on the new website. Hoping to launch by ELCE. No networ=
k or timeout issues since last week. Let me know if there is any issues. Bu=
gzilla attachment size is increased to 150MB.


