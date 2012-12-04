Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DB7CE0045D
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 11:37:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2012 11:36:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,217,1355126400"; d="scan'208";a="251917069"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 04 Dec 2012 11:36:59 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 4 Dec 2012 11:36:59 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.171]) with mapi id
	14.01.0355.002; Tue, 4 Dec 2012 11:36:59 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	December 04,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHN0la51Z4YgByTmEm9BU5AmoC/DQ==
Date: Tue, 4 Dec 2012 19:36:58 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4860D596@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, December 04, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 04 Dec 2012 19:37:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Amit, Ross, Eren, Beth, ChrisL, ScottR, JeffP, TomZ, Nitin, PaulE, ScottG, =
BruceA, CristianI, JessicaZ, Saul, RichardP, SeanH, MarkH, Ioana, Corneliu,=
 MichaelH, AlexD, Bj=F6rnS, Ramana, Song.=20
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.4 status - 20 min (Song/team)
  - 1.4 test plan: would like to ask everyone to review and comment: https:=
//wiki.yoctoproject.org/wiki/Yocto_1.4_Overall_Test_Plan=20
  - M2 planning:=20
    . 2 highs scheduled: zypper, running post install at rootfs gen time.
    . 167 perfect days work scheduled.
  - Bug fixing: 25 bug fixed, 298 open, a little high. We need to pay more =
attention to bug fixing. Two bugs I would like to ask the team for help:
    . Connman issue: 3227. Issue is not in connman 1.9. Will upgrade to 1.9=
.
    . Beagle Board X issue: 3522
  - Master: Build Appliance failed (Beth is changing autobuilder to automat=
e this, Beth has a fix), nightly-x86 (connman issue,3227), Freescale BSP is=
sue, Matthew knows it.  meta-intel BSP failed.
  - QA: RC1 final report ETA,  later Today.
=A0
* SWAT team rotation: LaurentiuP -> Ioana Grigoropol=A0
* Opens - 10 min=20
  - Eren: Hello World documentation. Finished the oe part.=20
http://hambedded.org/blog/2012/11/24/from-bitbake-hello-world-to-an-image/=
=20
      . Would like to feedback. After that integrate with Wiki or others.
      . ScottR: sent email to Eren. Fold part of this into quick start. Bit=
bake information will be good to be in the newly revised bitbake manual.  W=
ill get this in Bill's hands. Suggest Eren to post specific technical quest=
ions on the mailing list. Hopefully Eren can get answers there. Afterwards,=
 will work together to integrate this doc.
      . Eren: good plan. Will get answers to technical questions first, the=
n work with Scott to integrate the doc.
  - ScottR: adding doc alert to comments in Bugzilla when filing a bug that=
 effects documentation
      . If you are filing a bug or working on a bug you think might affect =
doc, it will be help if you add a comment (something like 'this will affect=
 documentation')to alert ScottR and add ScottR in the CC list of the bug. W=
e are trying to be more proactive on doc changes for this release.=20
=A0
* Team Sharing - 20 min
  - AlexD: working on integrating Wayland, started building, making progres=
s... Sent email to people working on Wayland. Paul can help if there is no =
response, these people are sitting right behind Paul.
  - Cristian: handling transition of HOB to be able to run on windows. One =
of 1.4 features. Setting up new dev environment. Investigation making the j=
ump and figure out what would be possible problems.  Bug #: 1972.
  - Andrei: working on package reporting system, finished the work. Submitt=
ed some patches, waiting for Saul's review.=20
  - Ioana: working on eclipse plugin on windows. Submitted patches for issu=
es, should be running fine now. Next step is using hob on windows.
  - Mark: SMART work. At a point that we are ready to submit the code to th=
e community. Some bug fixes, will be the first batch. Integration will be s=
econd batch of patches.=20
  - Bjorn: working on package testing. Would like some response to some iss=
ues already sent to the mailing list. RP suggested to do it in a different =
way, that needs to be discussed. (RP will respond). What we do with package=
s that don't have tests. Would like people to spend some time to think abou=
t it. RP: this is important, we can get these integrated, and then expand..
  - Ramana: posted about configuration tool. Would like to get more comment=
s. Bruce commented, Mark and RP will reply. RP: this is important, encourag=
e people to look at it. The more people the better.
    . https://lists.yoctoproject.org/pipermail/yocto/2012-November/012867.h=
tml=20
    . https://lists.yoctoproject.org/pipermail/yocto/2012-November/012973.h=
tml=20
  - MichaelH: bugzilal management, auto generation, patch review process, e=
tc. patch work basically setup. Schedule a demo with some key people for on=
e of the patch review tools ?. Continue some of these work this week and ot=
her things.=20


