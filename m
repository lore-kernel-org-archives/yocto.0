Return-Path: <julie.n.fleischer@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F61B4C80093
	for <yocto@yoctoproject.org>; Wed, 23 Feb 2011 09:36:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Feb 2011 07:36:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,212,1297065600"; d="scan'208";a="605737836"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 23 Feb 2011 07:36:34 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 23 Feb 2011 07:36:33 -0800
Received: from orsmsx506.amr.corp.intel.com ([10.22.226.44]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Wed, 23 Feb 2011 07:36:33 -0800
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 23 Feb 2011 07:36:32 -0800
Thread-Topic: Notes from Tues, Feb 22nd Yocto Release Tracking Meeting
Thread-Index: AcvTb3J2L0B7Xgv1Q1ibOmJnmiEJIQ==
Message-ID: <4F65016F6CB04E49BFFA15D4F7B798D9015921B99F@orsmsx506.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Notes from Tues, Feb 22nd Yocto Release Tracking Meeting
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
X-List-Received-Date: Wed, 23 Feb 2011 15:36:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pursuant to the notice sent on Friday, February 18th, the Yocto Release Tra=
cking Meeting was held on Tuesday  February 22nd 8-9:15am Pacific time.  No=
tes are below for all interested.

Attendees:  Dave, Julie, Josh, Paul, Mark, Richard, Jessica, Kevin, Jeff Po=
lk, Darren, Beth, Tom, Saul, Bruce, Alex

1) Introductions
Dave - Engineering Manager at Intel
Julie - Yocto Program Manager
Josh - Build System Minion
Paul - Build System Engineer
Mark - One of the User Space Leads, also responsible for cross-prelinker an=
d the build to software integration
Richard - Yocto Project Architect
Jessica - ADT and XS Plugin Lead/Maintainer
Kevin - Wind River VP, Yocto Engineering Sponsor
Jeff Polk - Wind River Engineer that works on modifying Wind River Linux to=
 deal better with Poky integration
Darren - Linux Kernel Engineer working on patches to the Linux Kernel for Y=
octo Project
Beth - Yocto Project Build and Release Engineer Extraordinaire (last part a=
dded by team)
Tom - Software Engineer, lately doing lots of work on Board Support Package=
s for Intel boards
Saul - Yocto Project Component Wrangler/User Space Architect
Bruce - Linux Kernel Engineer working on patches to the Linux Kernel for Yo=
cto Project, Maintainer of Kernel portions of Yocto Project
Alex - Chief Linux Architect at Wind River; part-time Swabber Monkey

2) Review Yocto 1.0 Release Criteria:  https://wiki.yoctoproject.org/wiki/Y=
octo_Project_v1.0_Release_Criteria  =20
- See website for changes=20
Action Item:  Richard will send an email to ask about the four features not=
 fully in Master to ask about the disposition.
Action Item:  Saul:  Work with Scott G on the docutils failures.

Team decided that M3 will be RC1, which is scheduled to come out Friday.
** We do need to be cautious of what we are putting into Master for the nex=
t 3 days. **

Action Item:  Julie:  Send emails to people with open bugs (after today's s=
crub) to let them know our goals for Friday.

Action Item:  Julie:  Check with Scott on the Documentation progress.

Action Item:  Julie:  Send email off-line to get full demo status since we =
ran out of time for details.  As a result of that email, Julie may order ha=
rdware for Joshua.

3) Release Readiness decision for Yocto=20
Team agreed that the key stakeholders should meet informally Friday or Mond=
ay in order to determine if we are ready to release RC1.  Julie to work wit=
h Beth off-line to see if assistance is needed.

4) Opens/Risks
No new items noted.

-----------------------
Julie Fleischer
Open Source Technology Center
Intel Corporation



