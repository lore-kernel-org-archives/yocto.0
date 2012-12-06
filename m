Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4086BE00348
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 11:55:14 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 11:55:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,232,1355126400"; d="scan'208";a="177149368"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Dec 2012 11:55:13 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 6 Dec 2012 11:55:12 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.151]) with mapi id
	14.01.0355.002; Thu, 6 Dec 2012 11:55:12 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Notes: Yocto Project 1.4 M1 release readiness meeting -
	Thursday, December 06,
	2012 8:30 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHN0+uaMKvwMGgt7EO+IC1E0AYN0g==
Date: Thu, 6 Dec 2012 19:55:12 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4860F3E7@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4860E51D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Notes: Yocto Project 1.4 M1 release readiness meeting - Thursday, December 06, 2012 8:30 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Thu, 06 Dec 2012 19:55:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave, AlexG, LaurentiuS, AlexP, Jessica, TomZ, Richard, Saul, Ross, Nitin, =
Song
=A0
Notes:
=A0
Release criteria review: (please see https://wiki.yoctoproject.org/wiki/Yoc=
to_Project_v1.4_Status#Milestone_1 for details)
  - M1 does not have high features scheduled, but we have quite some new fe=
atures integrated (https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_St=
atus#Feature.2FTask_Board ). One important improvement we have is for perfo=
rmance of some specific use cases. When we building from scratch, we use th=
e sstate cache. The improvement we integrated in M1 makes the sstate cache =
use more efficient and we are able to cut the build time in this case in ha=
lf. =20
  - Full pass testing report for RC1 is out in the public mailing list. RC1=
 has some issues, we have assigned those issues to right owners and they ar=
e working on it. The X issue for Beagle Board (3522) will be fixed in M2. T=
here is no show stopper or high issues. And there does not seem to be much =
value if we can RC2 at this time.=20
  - Package update: update/upstreaming is ongoing, package report system is=
 mostly fixed. In M2 we should have a target set and check against the targ=
et by the end of M2.
=A0
Decision: Release RC1 as the M1 release.



