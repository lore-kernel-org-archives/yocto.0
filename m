Return-Path: <julie.n.fleischer@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DF994C800B0
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 12:24:17 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 May 2011 10:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,238,1304319600"; 
   d="scan'208";a="1068629"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 19 May 2011 10:24:16 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 May 2011 10:24:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.114]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.88]) with mapi id
	14.01.0289.001; Thu, 19 May 2011 10:24:16 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Results from Yocto 1.0.1 Go/No-Go meeting:  No-Go
Thread-Index: AQHMFkmTrPJyB5IGQUiQ3cO1D30ydg==
Date: Thu, 19 May 2011 17:24:14 +0000
Message-ID: <68002A430AC0584FB0A5391B435E93A902AAE3@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Results from Yocto 1.0.1 Go/No-Go meeting: No-Go
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
X-List-Received-Date: Thu, 19 May 2011 17:24:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:  Paul, Tom, Julie, Saul, Darren, Mark, Richard, Dennis, Jessica,=
 Dave, Joshua

The Yocto Technical Team held a Go/No-Go for the current 1.0.1 release.  Th=
e decision was "no-go" due to needing to add and test the fix to bug 1029 a=
nd needing to investigate and address/test bug 1087.  Both bugs were found =
during the 1.0.1 test pass.  Details below.

1)	Review Yocto 1.0.1 Release Criteria
Team reviewed criteria at:  https://wiki.yoctoproject.org/wiki/Yocto_Projec=
t_v1.0.1_Release_Criteria.

Details:
Bug 909 - Team is comfortable with this issue possibly not being fixed for =
1.0.1 (It may be fixed, but we did not run compliance tests to know.)
Bug 1029 - Darren provided a fix yesterday.  Saul put into a consolidated p=
ull request yesterday afternoon.  Not yet in master.  Once it hits master, =
Saul will move it into Bernard.  He will create a build for just a Bernard =
Beagleboard image for QA to test.  QA will run through the full Beagleboard=
 test plan.  No other tests needed for this issue.
Action Item:  Julie:  Check that uboot is part of the test plan.

1087 - Saul will investigate.  The fix ranges from documentation to full bu=
ild.  Tom will help Saul do runtime tests on his Crown Bay.
=20
Team was okay with the fact that only weekly BSP testing was done for this =
release.  We may ask for full BSP testing for the next release if the Crown=
 Bay fix warrants it.

Saul will start working on Release Notes for 1.0.1.  They will discuss reso=
lved bugs and open issues remaining.

2)	Go/No-Go decision - No-Go
After this email, Richard will send the community a reply with location of =
current branch in case they want to use the fixes sooner.

3)	Discuss next steps (either release process or bug fix/rebuild/retest pro=
cess, depending on results of go/no-go) and timeline

Bug 1029:
Richard will pull fix into master.
Saul will pull fix into Bernard.
Beth will build only Beagleboard for 1.0.1.
Jiajun will run through Beagleboard testing.

Bug 1087:
Saul will continue investigating.
Team will discuss results and next steps via email and finalize during the =
Technical Team meeting on Tuesday.

4) Opens
The QA team needs a Beagleboard XM not just Beagleboard C4.  Darren needs a=
 Beagleboard C4.

Dennis noted that both can be purchased from Digikey.  Jason's program appl=
ies to both as well if that becomes an option.

