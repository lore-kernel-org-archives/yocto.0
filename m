Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7485E004E9
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 10:04:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2011 10:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,486,1312182000"; d="scan'208";a="74470224"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2011 10:04:49 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 4 Oct 2011 10:04:28 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.90]) with mapi id
	14.01.0323.003; Tue, 4 Oct 2011 10:04:28 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (Tuesday, October 04,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMgresWYdrbiX80kG841u3JOD+uA==
Date: Tue, 4 Oct 2011 17:04:27 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F2EAC6@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (Tuesday, October 04, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 04 Oct 2011 17:05:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
=A0Saul, Darren, Tom, Matthew, Jessica, Scott, Richard, Josh, Jeff, Beth, M=
ark, Dave, Song
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1 M4 status review and issues - 15 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
    - All release criteria are ready or on track for the release except wai=
ting for QA to start testing on RC4.=20
    - Tom found one BSP problem over the weekend, already have patch. Tom a=
nd Richard will investigate. If it's not happening on autobuilder, then it =
may not be a problem. Tom will follow up.
   - 24 patches upstreamed last quarter
   - Document on track, URL questions.
    - Build status (Beth):=20
      . Everything seems green so far, we are in a good position for RC4. N=
othing is blocking our RC4 build at this point.
      . Richard has taken all patches to the Edison branch.
      . Multi-lib is a weak area, need more stress testing, need help from =
the team since Richard may not have enough time for this.
    - Release schedule and contingency plan:
      . We will start RC4 this Wednesday, should have RC4 this Thursday. QA=
 team will be back this Saturday (Beijing time) to start testing on RC4. (I=
f RC4 goes bad, we will have RC5 in the following week)
* Opens - 10 min
   . Grub (Saul/Darren): install have grub 2 installed, but it has a .list =
file in grub 1 format. This happens only on n450. It's good to see Atom-PC =
since they are similar. Saul will redo the build for these 2. worst case us=
e grub 1. Darren will try to debug, we at least need to understand the root=
 cause of this. Saul will help Darren on this.
   . State Cache on autobuilder, (Matthew): where I can look at the informa=
tion about state cache? Would like to compare with what Matthew is doing at=
 Freescale. Changing directories/machines, wondering if Yocto team has the =
same thing. Is there other machines using cache published by the master mac=
hines? (RP)Different machines share the same state cache. We are not going =
back to check duplication. Follow up email reusing email. Matthew is really=
 interested in what we are doing for protecting cache. The cache is really =
important for Matthew's work at Freescale. (RP) We have 1.2 features relate=
d to shared state.
   . URL (Scott): Looking for a response to his email. RP is good with the =
change.
   =20
* Weekly team sharing (30 min)
  Mark: last week attended the ELC conference on the east coast. Had a pres=
entation on Yocto introduction. 120 people showed up, very well received. 4=
00-500 people in the conference.
  Jeff: Nothing today
  Josh: working on the same thing as last week, video, HOB.
  Richard: doing patch review, 1.2 feature list, migrating them into bugzil=
la, sort through wiki page for 1.2.
  Scott: last week mostly manuals. First path multi-lib section, implemente=
d RP's changes on that. BSP manual, ADT manual. As many examples as I can. =
This Wednesday send pull request for docs
  Jessica: working on internal Intel tools, finalize some loose items. Star=
ting some research for 1.2 release features for ADT and Eclipse plug-in.
  Matthew: shared state, already covered in the open.
  Tom: Same thing as last week, Meta-intel BSPs. have the patch for ISO pro=
blem. Doc, BSP review will continue.
  Darren: mostly working on minimal image size and boot time. Putting toget=
her the tiny image layer. But build untested. This week first fix the Grub =
issue, continue on the tiny image layer.
  Saul: Working on the release 1.1. Will help Tom and Darren with Grub thin=
gs. Complete the release this week.




