Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFDCDE00A1E; Tue, 30 Jun 2015 11:30:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E75E009A7
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 11:30:12 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jun 2015 11:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,379,1432623600"; d="scan'208";a="597621294"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga003.jf.intel.com with ESMTP; 30 Jun 2015 11:30:09 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.72]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.201]) with mapi id
	14.03.0224.002; Tue, 30 Jun 2015 19:30:08 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Design and Yocto Project development cycle
Thread-Index: AQHQs2LKu1/aTGx2R0u1+uB0CLaD+w==
Date: Tue, 30 Jun 2015 18:30:08 +0000
Message-ID: <D1B89EBF.5E615%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.1.150515
x-originating-ip: [10.237.224.32]
MIME-Version: 1.0
Subject: Design and Yocto Project development cycle
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Jun 2015 18:30:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <59985668B0A0A5429FCBE6BE9A2FE82E@intel.com>
Content-Transfer-Encoding: quoted-printable

I had to sit down today to write how design activities have been
integrated into the Yocto Project development cycle. Once I finished
writing, I realised that this might be of interest to the community
somehow. So here it is, for posterity ;)

This is the Yocto Project development cycle for the 1.9 release:

https://wiki.yoctoproject.org/wiki/Yocto_1.9_Schedule

The 6-month period is broken down into 4 milestones. Each milestone has
planning, development, stabilisation and release phases.

The following is how design has been integrated into this process:

* M1 is the design milestone: we design new features and produce the
necessary design specifications. A high-fidelity prototype and detailed
design specification documents should exist by the cut-off date of
milestone 1. Design documents are attached to the relevant Bugzilla entry.

* M2 and M3 are implementation milestones. In the Yocto Project, design
remains very involved during the implementation phase. All patches
submitted to the Toaster mailing list that touch the web interface must be
reviewed by design and feedback provided accordingly. In this sense, we
are exactly like developers doing patch review. These reviews are critical
to achieving acceptable interface quality, and use the design documents
produced in milestone 1 as a reference. Design work in this phase also
involves filling any gaps in the design done during milestone 1, and
making any changes needed due to unforeseen issues arising during the
development work. Patches must be reviewed promptly, and any design
changes must be worked out fast so that we don't block development.

* M4: this is a kind of design stabilisation milestone. The goal is to
leave the interface in a good enough state, fit for release. That often
involves making compromises in scope (cut down things we cannot deliver at
an acceptable level of quality), while guaranteeing that new features are
still useful and usable (maybe in the future we'll be able to make them
also beautiful, but for now useful and usable is all we can aim for).

Planning for the next release takes place after the M4 cut-off date. I
also tend to use this time to run informal usability testing on the new
features, so that we have some visibility of what are the main issues and
how they could be fixed during the next release cycle. This is by no means
ideal: the mantra of usability testing is "do it early, do it often". But
given the design resources we have and the amount of work to be done, it
is better than nothing.

There  you have it: this is roughly how design has been done in the Yocto
Project over the past couple of years. If you have any questions or
comments, just ask.

Cheers,

Bel=E9n







