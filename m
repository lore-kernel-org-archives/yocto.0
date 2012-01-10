Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8A99E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 07:24:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jan 2012 07:24:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94819073"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2012 07:24:44 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 Jan 2012 07:24:45 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.8]) with mapi id
	14.01.0355.002; Tue, 10 Jan 2012 07:24:44 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto SWAT team kickoff
Thread-Index: AczPq/o2z35zf2BUSiyq5gaSOYuo8A==
Date: Tue, 10 Jan 2012 15:24:44 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A257C184A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Yocto SWAT team kickoff
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
X-List-Received-Date: Tue, 10 Jan 2012 15:25:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,=20

We would like to kick off the Yocto SWAT team this week. Please see the fol=
lowing for the purpose of the SWAT team and let me know if you have any que=
stions or concerns. We welcome any community participation on the SWAT team=
. At the same time, I will work with the team to make sure thing get starte=
d.

Thanks,=20
Song

YOCTO SWAT TEAM

GOAL

The assembly of the Yocto Project SWAT team is mainly to tackle urgent tech=
nical problems that break build on the master branch or major release branc=
hes in a timely manner, thus to maintain the stability of the master and re=
lease branch. The SWAT team includes volunteers or appointed members of the=
 Yocto Project team. Community members can also volunteer to be part of the=
 SWAT team.

SCOPE OF RESPONSIBILITY

Whenever a build (nightly build, weekly build, release build) fails, the SW=
AT team is responsible for ensuring the necessary debugging occurs and orga=
nizing resources to solve the issue and ensure successful builds. If resolv=
ing the issues requires schedule or resource adjustment, the SWAT team shou=
ld work with program and development management to accommodate the change i=
n the overall planning.=20

MEMBERS:

* Darren Hart (US)
* Elizabeth Flanagan (US)
* Paul Eggleton (UK)
* Jessica Zhang (US)
* Dexuan Cui (CN)
* Saul Wold (US)
* Richard Purdie (UK)

ROTATING CHAIR:

A chairperson role will be rotated among team members each week. The Chairp=
erson should monitor the build status for the entire week. Whenever a build=
 is broken, the Chairperson should do necessary debugging and organize reso=
urces to solve the problems in a timely manner to meet the overall project =
and release schedule. The Chairperson serves as the focal point of the SWAT=
 team to external people such as program managers or development managers.=
=20

ROTATING PROCESS

Each week on a specific day (propose Monday), a SWAT team meeting could be =
called at the chairperson's discretion to discuss current issues and status=
. Either during the meeting or offline, the Chairperson of last week will i=
dentify and pass the role to another person in the team. The program manage=
r should be notified at the same time. Usually, this will take a simple rou=
nd robin order. In case the next person cannot take the role due to tight s=
chedule, vacation or some other reasons, the role will be passed to the nex=
t person.

The current Chairperson's full name and email address will be published on =
the project status wiki page: https://wiki.yoctoproject.org/wiki/Yocto_Proj=
ect_v1.2_Status under "Current SWAT team Chairperson" section.

BKM (RICHARD PURDIE)

When looking at a failure, the first question is what the baseline was and =
what changed. If there were recent known good builds it helps to narrow dow=
n the number of changes that were likely responsible for the failure. It's =
also useful to note if the build was from scratch or from existing sstate f=
iles. You can tell by seeing what "setscene" tasks run in the log.

The primary responsibility is to ensure that any failures are categorized c=
orrectly and that the right people get to know about them.

It's important *someone* is then tasked with fixing it. Image failures are =
particular tricky since its likely some component of the image that failed =
and the question is then whether that component changed recently, whether i=
t was some kind of core functionality at fault and so on.

Ideally we want to get the failure reported to the person who knows somethi=
ng about the area and can come up with a fix without it distracting them to=
o much.
As a secondary responsibility, its often helpful for to triage the failure.=
 This might mean documenting a way to reproduce the failure outside a full =
build and/or documenting how the failure is happening and maybe even propos=
e a fix.

Sometimes failures are difficult to understand and can require direct ssh a=
ccess to the autobuilder so the issue can be debugged passively on the syst=
em to examine contents of files and so forth. If doing this ensure you don'=
t change any of the file system for example adding files that couldn't then=
 be deleted by the autobuilder when it rebuilds.

Rarely, "live" debugging might be needed where you'd su to the pokybuild us=
er and run a build manually to see the failure in real time. If doing this,=
 ensure you only create files as the pokybuild user and you are careful not=
 to generate sstate packages which shouldn't be present or any other bad st=
ate that might get reused. In general its recommended not to do "live" debu=
gging. This can be escalated to RP/Saul/Beth if needed.

To fulfill the primary responsibility, it's suggested that bugs are opened =
on the bugzilla for each type of failure. This way, appropriate people can =
be brought into the discussion and a specific owner of the failure can be a=
ssigned. Replying to the build failure with the bug ID and also bringing th=
e bug to the attention of anyone you suspect was responsible for the proble=
m are also good practices.=20


