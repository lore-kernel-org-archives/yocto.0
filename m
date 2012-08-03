Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D64E01447
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 11:52:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2012 11:52:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="192991015"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 03 Aug 2012 11:52:20 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Aug 2012 11:52:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.113]) with mapi id
	14.01.0355.002; Fri, 3 Aug 2012 11:52:20 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Project feature/bug priority definition and related
	planning changes
Thread-Index: Ac1xqRweOVxU3mdnRMOKXjAtCAXfoA==
Date: Fri, 3 Aug 2012 18:52:20 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484F5945@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Yocto Project feature/bug priority definition and related planning changes
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
X-List-Received-Date: Fri, 03 Aug 2012 18:52:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

A while ago, we moved our features into the Bugzilla system and made managi=
ng bugs and features easier. But since then, we have been maintaining two s=
ets of priority definitions for bugs and features. As we are using iterativ=
e process, we always learn, adjust and improve as we move forward. Now we a=
re merging priority definitions for bugs and features. Thanks for the team'=
s great contribution, now we have the new set of priority definitions below=
 and I'll list related planning changes as well. All of these changes are a=
lso reflected on this wiki page: https://wiki.yoctoproject.org/wiki/Yocto_P=
roject_Design_and_Development_Process=20

Thank you all for your support. Please feel free to let me know if you have=
 any questions or concerns.

Song


Definition of Priorities:
-------------------------

- High: crucial items
- Medium+: compared with medium ones, these are more important items that n=
eed more attention due to their bigger impact to system functions, build sy=
stem, etc.=20
- Medium: important items
- Low: nice to have items

How priorities are considered during planning:
---------------------------------------------

- Release planning:=20
  - High:=20
    * Required for the release and should have a specific milestone as the =
target milestone
    * Priority and schedule changes need CCB approval.=20
  - Medium+:=20
    * Required to have a release (major or point release) as the target mil=
estone, but these items are not release blockers.
    * Encourage the team to schedule these items into milestones. But this =
is not required during release planning.
  - Medium:=20
    * Required to have a release (major or point release) as the target mil=
estone, but these items are not release blockers.
  - Low: No plan, leave to individuals
- Milestone planning:
  - Medium+/medium:  The team picks some of these items targeted for the re=
lease and schedule them to the current milestone. Medium+ items take higher=
 priority.=20
  - Low: no plan, leave to individuals

Impact to the Release criteria:
------------------------------

  - All high's for the target milestone must be completed for that mileston=
e. Any priority or schedule changes for high's needs to go through CCB appr=
oval process.=20
  - The majority of the medium+ items targeted for a release should be comp=
leted for the target release.


Existing Bugzilla item mapping:
-------------------------------

We will use the following as the guideline to assign existing features in B=
ugzilla to new priorities. At the same time, as the team looks through thes=
e items there may be some exceptions. We will try to complete this in the n=
ext week or so.

* Features: Severity =3D "Enhancement"
* Mapping:
  - "Old P4" =3D Target Milestone "Future", Priority "Low"=20
  - "Old P3" =3D Priority "Low", Target Milestone can easily slip should ro=
ughly target a release though
  - "Old P2" =3D "Priority "Medium", should be more targeted milestone wise
  - "Old P1" =3D High + Priority Enhancements or bugs.
* Medium+
  - We may not assign any bugs to medium+ during this migration
  - We will mostly leave it to the team to decide which medium bugs need to=
 be medium+ at this time



