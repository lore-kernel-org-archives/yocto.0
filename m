Return-Path: <julie.n.fleischer@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59C0B4C80510
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 11:18:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 09:18:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="395805640"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 09:18:26 -0800
Received: from orsmsx506.amr.corp.intel.com ([10.22.226.44]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Tue, 1 Mar 2011 09:18:26 -0800
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 1 Mar 2011 09:18:25 -0800
Thread-Topic: Notes from March 1st Yocto Release Tracking Meeting
Thread-Index: AcvYNKxf+OlOQiQzTIWlm8HLRtRLnw==
Message-ID: <4F65016F6CB04E49BFFA15D4F7B798D90159306393@orsmsx506.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Notes from March 1st Yocto Release Tracking Meeting
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
X-List-Received-Date: Tue, 01 Mar 2011 17:18:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here are the notes from the March 1st Yocto Release Tracking meeting.
Thanks.
- Julie

Attendees:  Dave, Saul, Julie, Mark, Darren, Beth, Jeff P., Jessica, Joshua=
, Jeff O., Tom, Richard

Agenda:
1) New Introductions (See https://lists.yoctoproject.org/pipermail/yocto/20=
11-February/001058.html for those already introduced)
Jeff Osier-Mixon (Jefro) - Yocto Community Manager

2) Review Yocto 1.0 Release Criteria
See https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.0_Release_Criteria =
for updates

Darren noted that Beagleboard XM will be enhanced with video for the demo (=
bugzilla report exists to add this).  Some people at Wind River may help.

3) Opens/Risks
Mark gave some status on Open Embedded:  As Richard noted, he will split Yo=
cto into meta-yocto and OE Core.  OE Core will be moved under the control o=
f OE steering committee.

Note to developers: If you are updating software, you need to send patch to=
 OE group if code is under OE Core (follow their rules).  If you are updati=
ng software in meta-yocto, send it to the Yocto mailing list.  If in doubt,=
 code goes into Yocto meta-layer.  Richard is assigning what is OE Core vs.=
 meta-yocto right now.

We discussed that it would be useful to document submission requirements fo=
r Yocto.  OE Core has a separate bugzilla, but they are shutting it down.  =
Richard's vision is to use Yocto bugzilla for OE Core and meta-yocto issues=
 to have one central repository.

-----------------------
Julie Fleischer
Open Source Technology Center
Intel Corporation


