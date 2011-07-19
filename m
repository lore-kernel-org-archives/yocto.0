Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 826734C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 15:48:13 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2011 13:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,230,1309762800"; d="scan'208";a="27755080"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2011 13:48:10 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jul 2011 13:48:10 -0700
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.32]) by
	ORSMSX151.amr.corp.intel.com ([169.254.5.9]) with mapi id
	14.01.0289.001; Tue, 19 Jul 2011 13:48:10 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, July 19, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AcxDEeZL651G2VRHRhykIexxkCPeDwDQmPoQAAAzHJA=
Date: Tue, 19 Jul 2011 20:48:09 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A1372FF3D@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team (Tuesday, July 19, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 19 Jul 2011 20:48:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Really sorry if many of the past meeting agenda and minutes have not been a=
ble to reach you. I had some problems with the Yocto project mailing list. =
Please let me know if you hear anyone still having this problem.

Thanks!
Song

Attendees:
Mark, Dave, Paul, Shane, Saul, Beth, Richard, Josh, Jason (TI), Darren, Sea=
n (Dell), Song
=A0
New action list:
=A0
  * Team: please take a look at the post 1.1 items on the wiki page and let=
 Song know if there is any comment or concerns.
  * Saul: Talk to Jianjun, QA should work with developers to make sure we c=
an cover more distro testing (informal) before major release. Joshua and Da=
rren volunteers for some of these testing.
  * Beth/Darren/ScottR: document the central location in the release, and p=
ut any doc changes in the location after release.
  * Song to setup go/no-go meeting next Monday to decide on the M2 release.
=A0
Agenda:
=A0
- opens - 5 min=A0
- Review Yocto 1.1 M2 Release Criteria - 20 min (Song) See details at: http=
s://wiki.yoctoproject.org/wiki/Yocto_Project_v1.1_Release_Criteria
  * All M2 features are completed.
  * 'Lock kernel version' should be moved to M4 and will be completed betwe=
en 8/8/11 and 8/15/11.
  * All release criteria are green except testing related ones. Please see =
the wiki page.
  * For M2 release, we should let Beth go ahead with the release as if we w=
ould be releasing M2 on time next Monday. On the other hand, we let QA run =
the full test. We will have a go/no-go meeting next Monday to decide if we =
release M2 based on the full test result of RC3.
=A0
- Review M3 status and schedule - 10 min (Song)
  * All M3 committed features are on track. We need someone to handle multi=
-lib 9 and 8 tasks after Mark is done with them.
  * Darren's two features (reduce image size and reduce boot time) should b=
e all marked risky for M3. Darren will work on them separately in independe=
nt layers that won't affect 1.1 release so that his development work can be=
 extended with more time.
=A0
- Discussion of using Weighted Defect density as one of the release criteri=
a: (4th graph at: https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend ) - 10=
 min
=A0
  * The team has concern that this will discourage developers from filing b=
ugs.
  * There is no perfect measure but it's better if we have measure to make =
sure we deliver quality software.
  * This should not discourage QA and developers in the community from fili=
ng bugs.
  * There are a lot of fixes that went in without leaving a track in Bugzil=
la.
  * We will talk about this in 1.2 planning and try this out in 1.2 develop=
ment and see how it goes.
=A0
-  Opens - 10 min
  1. Darren: documentation process for release, making sure we can update t=
he README.hardware after release if needed.
    * We should have a central location for putting doc changes after relea=
se. We don't have to update the release tarball.
=A0
=A0
- Action Item Review - 5 min (Song)
=A0
Action item list:
  * Saul: talk to Jianjun, QA should work with developers to make sure we c=
an cover more distro testing (informal) before major release. Joshua and Da=
rren volunteers for some of these testing.
  * Song: check status with Jianjun on Stabilization tasks he owned. (Done)
  * Darren/Song: define deliverables of 'Fast boot time' for M3 and Yocto 1=
.1. (Done)
  * Saul: circulate the idea of having a Sprint B for M3 via emails. (Done)=
. Will just extend Sprint A to 27th.
  * Saul: check update commits (one release criteria) (Done)
  * Team: please take a look at the post 1.1 items on the wiki page and let=
 Song know if there is any comment or concerns.






