Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF50E003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 13:40:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Aug 2013 13:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,841,1367996400"; 
	d="scan'208,217";a="343721204"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by azsmga001.ch.intel.com with ESMTP; 08 Aug 2013 13:39:53 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.194]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.134]) with mapi id
	14.03.0123.003; Thu, 8 Aug 2013 13:39:53 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.5 M3 release readiness meeting
Thread-Index: Ac6Ud1lc1QZ2OzlORwihsxBDP0sRuQAAAvLw
Date: Thu, 8 Aug 2013 20:39:53 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EEB1A15@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.5 M3 release readiness meeting
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
X-List-Received-Date: Thu, 08 Aug 2013 20:40:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB1A15ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB1A15ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Mark, LaurentiuP, AlexG, Jessica, ScottR, SteveL, Dave, Ionut, Michae=
l Harvey, Beth, Song

Agenda:
  * Release criteria review
    - Some adjustment for high features approved by CCB:
      . Universal BSP feature (2308) is postponed to M4.
      . Eclipse remote for Windows/Mac OS is dropped from 1.5 to support we=
bhob.
      . Webhob release target is being reset.
      . Fenrus updater integration is postponed to future releases.
    - Features in M3:
      . Major toolchain upgrade: gcc 4.8, eglibc 2.18
      . Bitbake refactoring to eliminate double execution of Pseudo.
      . Meta-security layer
      . Ptest enabled for more packages, etc.
    - Everything including BSPs is built with no error in RC1. RC1 has pass=
ed QA full pass testing. No major issues found.
    - No high bugs against M3
    - No performance degradation in M3.
    - Package update hits 50%, short of 70%. But no concern here. Upstream =
commits 1450 patches maintained.
* Decision: Release M3



Release criteria review: https://wiki.yoctoproject.org/wiki/Yocto_Project_v=
1.5_Status#Milestone_3<https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status>
QA report: https://wiki.yoctoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pa=
ss_Yocto_1.5_M3.rc1




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB1A15ORSMSX108amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Saul, Mark, LaurentiuP, AlexG, Jessica, ScottR, SteveL, Dave, Ionut, M=
ichael Harvey, Beth, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp; * Release criteria review</div>
<div>&nbsp;&nbsp;&nbsp; - Some adjustment for high features approved by CCB=
:</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Universal BSP feature (2308) is postp=
oned to M4.</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Eclipse remote for Windows/Mac OS is =
dropped from 1.5 to support webhob.</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Webhob release target is being reset.=
</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Fenrus updater integration is postpon=
ed to future releases.</div>
<div>&nbsp;&nbsp;&nbsp; - Features in M3:</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Major toolchain upgrade: gcc 4.8, egl=
ibc 2.18</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Bitbake refactoring to eliminate doub=
le execution of Pseudo.</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Meta-security layer</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . Ptest enabled for more packages, etc.=
</div>
<div>&nbsp;&nbsp;&nbsp; - Everything including BSPs is built with no error =
in RC1. RC1 has passed QA full pass testing. No major issues found.</div>
<div>&nbsp;&nbsp;&nbsp; - No high bugs against M3</div>
<div>&nbsp;&nbsp;&nbsp; - No performance degradation in M3.</div>
<div>&nbsp;&nbsp;&nbsp; - Package update hits 50%, short of 70%. But no con=
cern here. Upstream commits 1450 patches maintained. </div>
<div>* Decision: Release M3</div>
<div>&nbsp;</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div>Release criteria review: <a href=3D"https://wiki.yoctoproject.org/wiki=
/Yocto_Project_v1.5_Status"><font color=3D"blue"><u>https://wiki.yoctoproje=
ct.org/wiki/Yocto_Project_v1.5_Status#Milestone_3</u></font></a></div>
<div>QA report: <a href=3D"https://wiki.yoctoproject.org/wiki/WW31_-_2013-0=
7-31-1_-_Full_Pass_Yocto_1.5_M3.rc1"><font color=3D"blue"><u>https://wiki.y=
octoproject.org/wiki/WW31_-_2013-07-31-1_-_Full_Pass_Yocto_1.5_M3.rc1</u></=
font></a> </div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB1A15ORSMSX108amrcor_--
