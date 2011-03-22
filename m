Return-Path: <julie.n.fleischer@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36B044C800BA
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 11:14:25 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Mar 2011 09:14:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="669997702"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 22 Mar 2011 09:14:24 -0700
Received: from orsmsx506.amr.corp.intel.com ([10.22.226.44]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Tue, 22 Mar 2011 09:14:24 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 22 Mar 2011 09:14:23 -0700
Thread-Topic: Notes from March 22nd Yocto 1.0 Release Tracking Meeting
Thread-Index: Acvn/FwWRzUxhRUCTcWlPNQjug3MOQApXOfw
Message-ID: <4F65016F6CB04E49BFFA15D4F7B798D90160477508@orsmsx506.amr.corp.intel.com>
References: <4F65016F6CB04E49BFFA15D4F7B798D90159623716@orsmsx506.amr.corp.intel.com>
In-Reply-To: <4F65016F6CB04E49BFFA15D4F7B798D90159623716@orsmsx506.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Notes from March 22nd Yocto 1.0 Release Tracking Meeting
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
X-List-Received-Date: Tue, 22 Mar 2011 16:14:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here are the notes from the Release Tracking Meeting.  Let me know if there=
 are any corrections/additions.
- Julie

Attendees:  Dave, Julie, Mark, Jefro, Jeff P, Josh, Richard, Bruce, Tom

>Agenda:
>1.  Review Release Criteria
See https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.0_Release_Criteria =
for details.  Top issues are:
- IPK repo needs to be rebuilt in order for QA to do full testing (they can=
 do most without it).  Beth/Lianhao will work on this Thursday.
- QA has found three new bugs
1.	New! [blacksand] it show poor performance with video player
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D921  --> not a show-stopper=
 b/c video plays (medium priority)
2.	New! [crownbay-noemgd] video player has poor performance when playing vi=
deo file
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D920  --> not a bug, as desi=
gned
3.	New! "rpm -qa" can not run for non-root user: Permission denied
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D922  --> workaround =3D run=
 as root; not a show-stopper
- Need assistance getting video to work on the demo.

Action Item:  Tom:  Try to get video working on SB machine.
Action Item:  Dave:  Ask if anyone in PRC can assist with video.
Action Item:  Julie:  Set up Thursday meeting with Josh, Tom to check our s=
tatus on video.

>2.  Go/No-Go for pushing image to mirrors (Note:  Until QA is finished,
>we can't have 100% confidence that what we start pushing to mirrors is
>final, but we can proceed with a high degree of confidence based on the
>preliminary QA results.)

Team decided it is a GO.

Action Item:  Julie to send note to Beth to push to mirrors later this week=
.

>3.  Yocto 1.0 Release next steps

Action Item:  Julie to set up a Friday meeting with key stakeholders to dis=
cuss Yocto 1.0 release status.

