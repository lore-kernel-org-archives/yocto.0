Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D7A9E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:57:25 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Jan 2012 12:57:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94880127"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 11 Jan 2012 12:57:22 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 11 Jan 2012 12:57:24 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.219]) with mapi id
	14.01.0355.002; Wed, 11 Jan 2012 12:57:23 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] Yocto SWAT team kickoff
Thread-Index: AczPq/o2z35zf2BUSiyq5gaSOYuo8ABK/vCAAA0n+uA=
Date: Wed, 11 Jan 2012 20:57:22 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A257C2803@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257C184A@ORSMSX101.amr.corp.intel.com>
	<CAPhnLPBaTmDd=J_HCLq0dE2uQwEn3buqe-VmJnTG25M=fJZgsw@mail.gmail.com>
In-Reply-To: <CAPhnLPBaTmDd=J_HCLq0dE2uQwEn3buqe-VmJnTG25M=fJZgsw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto SWAT team kickoff
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
X-List-Received-Date: Wed, 11 Jan 2012 20:57:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks a lot for putting these together on the wiki, Beth! It really helps.=
=20

Song

-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]=20
Sent: Wednesday, January 11, 2012 11:12 AM
To: Liu, Song
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto SWAT team kickoff

I've done some initial wikification of this:

https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team#Live_Debug=
ging_Process

Michael Halstead, as the SA, should probably be included on this as
access rights to the infrastructure should in most cases, go through
him.

-b


On Tue, Jan 10, 2012 at 7:24 AM, Liu, Song <song.liu@intel.com> wrote:
> Hi all,
>
> We would like to kick off the Yocto SWAT team this week. Please see the f=
ollowing for the purpose of the SWAT team and let me know if you have any q=
uestions or concerns. We welcome any community participation on the SWAT te=
am. At the same time, I will work with the team to make sure thing get star=
ted.
>
> Thanks,
> Song
>
> YOCTO SWAT TEAM
>
> GOAL
>
> The assembly of the Yocto Project SWAT team is mainly to tackle urgent te=
chnical problems that break build on the master branch or major release bra=
nches in a timely manner, thus to maintain the stability of the master and =
release branch. The SWAT team includes volunteers or appointed members of t=
he Yocto Project team. Community members can also volunteer to be part of t=
he SWAT team.
>
> SCOPE OF RESPONSIBILITY
>
> Whenever a build (nightly build, weekly build, release build) fails, the =
SWAT team is responsible for ensuring the necessary debugging occurs and or=
ganizing resources to solve the issue and ensure successful builds. If reso=
lving the issues requires schedule or resource adjustment, the SWAT team sh=
ould work with program and development management to accommodate the change=
 in the overall planning.
>
> MEMBERS:
>
> * Darren Hart (US)
> * Elizabeth Flanagan (US)
> * Paul Eggleton (UK)
> * Jessica Zhang (US)
> * Dexuan Cui (CN)
> * Saul Wold (US)
> * Richard Purdie (UK)
>
> ROTATING CHAIR:
>
> A chairperson role will be rotated among team members each week. The Chai=
rperson should monitor the build status for the entire week. Whenever a bui=
ld is broken, the Chairperson should do necessary debugging and organize re=
sources to solve the problems in a timely manner to meet the overall projec=
t and release schedule. The Chairperson serves as the focal point of the SW=
AT team to external people such as program managers or development managers=
.
>
> ROTATING PROCESS
>
> Each week on a specific day (propose Monday), a SWAT team meeting could b=
e called at the chairperson's discretion to discuss current issues and stat=
us. Either during the meeting or offline, the Chairperson of last week will=
 identify and pass the role to another person in the team. The program mana=
ger should be notified at the same time. Usually, this will take a simple r=
ound robin order. In case the next person cannot take the role due to tight=
 schedule, vacation or some other reasons, the role will be passed to the n=
ext person.
>
> The current Chairperson's full name and email address will be published o=
n the project status wiki page: https://wiki.yoctoproject.org/wiki/Yocto_Pr=
oject_v1.2_Status under "Current SWAT team Chairperson" section.
>
> BKM (RICHARD PURDIE)
>
> When looking at a failure, the first question is what the baseline was an=
d what changed. If there were recent known good builds it helps to narrow d=
own the number of changes that were likely responsible for the failure. It'=
s also useful to note if the build was from scratch or from existing sstate=
 files. You can tell by seeing what "setscene" tasks run in the log.
>
> The primary responsibility is to ensure that any failures are categorized=
 correctly and that the right people get to know about them.
>
> It's important *someone* is then tasked with fixing it. Image failures ar=
e particular tricky since its likely some component of the image that faile=
d and the question is then whether that component changed recently, whether=
 it was some kind of core functionality at fault and so on.
>
> Ideally we want to get the failure reported to the person who knows somet=
hing about the area and can come up with a fix without it distracting them =
too much.
> As a secondary responsibility, its often helpful for to triage the failur=
e. This might mean documenting a way to reproduce the failure outside a ful=
l build and/or documenting how the failure is happening and maybe even prop=
ose a fix.
>
> Sometimes failures are difficult to understand and can require direct ssh=
 access to the autobuilder so the issue can be debugged passively on the sy=
stem to examine contents of files and so forth. If doing this ensure you do=
n't change any of the file system for example adding files that couldn't th=
en be deleted by the autobuilder when it rebuilds.
>
> Rarely, "live" debugging might be needed where you'd su to the pokybuild =
user and run a build manually to see the failure in real time. If doing thi=
s, ensure you only create files as the pokybuild user and you are careful n=
ot to generate sstate packages which shouldn't be present or any other bad =
state that might get reused. In general its recommended not to do "live" de=
bugging. This can be escalated to RP/Saul/Beth if needed.
>
> To fulfill the primary responsibility, it's suggested that bugs are opene=
d on the bugzilla for each type of failure. This way, appropriate people ca=
n be brought into the discussion and a specific owner of the failure can be=
 assigned. Replying to the build failure with the bug ID and also bringing =
the bug to the attention of anyone you suspect was responsible for the prob=
lem are also good practices.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

