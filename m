Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A941FE0134D
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2012 15:15:10 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jan 2012 15:15:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="96926056"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 17 Jan 2012 15:15:10 -0800
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Jan 2012 15:15:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.110]) with mapi id
	14.01.0355.002; Tue, 17 Jan 2012 15:15:09 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 17, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHM1W3a4Tx/naefyE6w0NGrHHPN0w==
Date: Tue, 17 Jan 2012 23:15:08 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A2B3FC3D3@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 17, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 17 Jan 2012 23:15:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Scott, Dave, Darren, Tom, Richard, Matthew, Mark, Denys, Paul, Belen,=
 Saul, Josh, Jeff, Michael, Jessica, Bruce, Song
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
  - We have SSB approval
  - working through doc example, running into an issue, working through it =
(new branch). Trying to have the build done for QA when they come back from=
 CNY.
  - Scott is looking for ADT installer to verify the example. Beth will get=
 back to Scott for the ADT installer tarball.=20
* Yocto 1.2 M2 status - 10 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  - RC1 is out, QA has weekly test result. Looks good except the crownbay i=
ssue. Having an issue trying to get FRI II build. Crownbay fix will be pull=
ed into RC2. Crownbay issue is fixed last week. Nitin's patches will fix FR=
I II.
  - Package update has met our target.
  - Bug fixing: no high bugs outstanding now. Have a little more bugs but t=
he total number of medium+ bugs are still under control.
 =20
* Opens - 10 min=A0
  - Song: Status to indicate the feature is in master: Developers should pu=
t the feature bug into 'fixed' state when the patch is in master. Darren ha=
s a place to check logs for feature status.
  - Scott Rifenbark: 1.1.1 ADT installer tarball
  -=20
* Action item Review - 5 min
  - Paul to work with Jeremy and others to move 1598 forward. (Leave it in =
Bugzilla to track it)=20
=A0
* Team Sharing - 20 min
Bruce: generated 3.2 kernel tree, now doing final build and test. There wil=
l be 1.2 candidate tree shortly. RP: ask Bruce to keep an eye on autobuilde=
r. There was a problem with compile perf. Check any non-qemu machine. Bruce=
 will take a look. The candidate tree may need more time to be ready.
Jessica: some 1.3 planning work. Waiting for tom's bsp kernel tool for M3 d=
elivery.
Michael: Bad networking problem, fixed last week. working on setting on hom=
e office, some DNS fix for yocto.org, virtualization for eglibc, setting up=
 servers for LF. This week upgrading Bugzilla, eglibc. Some hardware issue,=
 but not really blockers, can work around it.
Jeff: nothing
Josh: working on stable release.
Saul: working with consolidated pulls, looking at M3 planning.=20
Belen: reviewing the UI implementation for 1.2, managing to get some visual=
 done, not much time for Yocto, should be cleared in the next few days
Paul: working on error handling on bitbake, put in some of the fixes. Tryin=
g to get a lot annoyance and unhelpful messages. Please make Paul and Richa=
rd aware of the issue if you see any problem in this area. Will work on the=
 build history. Encouraging people to file in bugzilla for any unhelpful er=
ror messages. This effort will be ongoing.
Denys:no
Mark: got permission from management for a public SE Linux layer. In a coup=
le of days to get basic support. Tired of doing it ourselves. We put it out=
 there, worst case we are still doing it on our own. This is not official a=
nnouncement.
Matthew: testing 1.1.1, looks pretty good, just one issue. Will talk to Jos=
h. Michael/Saul will add 1.1.1 version target in Bugzilla.
Richard: review patches, error handling, will work on bugs, get help for so=
me other bugs.
Tom: worked on license, BSP and kernel tools, template engine working, next=
 step is to put on the command line interface. By the beginning of M3, we s=
hould have something for Jessica. Will be working on kernel tools.
Darren: is there anyone who is interested in small distribution. Please loo=
k at pokyy-tiny, would like to get more feedback. If anyone interested in E=
FI, please send email to Darren,=20
Scott: verified 1.1.1 examples, except the ADT mannul. Created a paragraph =
for ScottG's virtual machine. In the coming week, finish the ADT manual for=
 1.1.1, get back on to some bugs. Only thing blocking is the installer.
Beth: worked on some license stuff, autobuilder layering, want to test out =
this Friday, may have some autobuilder downtime for testing this Friday.
Nitin: Sent a fix to Darren for FRI II problem, starting to look into gcc m=
ulti-lib, gdk recipe, etc.=20
=A0


