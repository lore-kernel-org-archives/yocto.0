Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C684EE013DB
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 21:20:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Aug 2012 21:20:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="182972253"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 07 Aug 2012 21:20:20 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 7 Aug 2012 21:20:19 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.180]) with mapi id
	14.01.0355.002; Tue, 7 Aug 2012 21:20:19 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 07, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNdR0ekAGBv1igeki+0H1LMxcg/A==
Date: Wed, 8 Aug 2012 04:20:19 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484FB303@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 07, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 08 Aug 2012 04:20:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
LaurentiuP, Bogdan, Jessica, Jason, LaurentiuS, Paul, Jeff, Kevin, Richard,=
 Bjorn, Nitin, Tom, Mark, Michael, Beth, JasonK, Cristian, Bruce, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Announcement about the priority merge:
  - categories: high, medium+, medium, low
  - The team will be changing P1-P4 to new priorities in Bugzilla in the ne=
xt 2 weeks. Before that's done, please still refer to the priority column a=
nd the white board in Bugzilla.
=A0
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
=A0
    - Reminder: 1.3 feature complete coming 9/2/2012
    - Thanks to Richard, Ross, Paul Eggleton, Paul Gortmaker, Darren/Bruce,=
 Shane/Liming, and everyone else who completed their high items for M3.
    - The following high's will have to be rescheduled. LTSI one may have t=
o be off the 1.3 release. Getting CCB approval for this
=A0
61=A0=A0=A0=A0=A0=A0=A0=A0nor=A0=A0=A0=A0=A0=A0=A0=A0[Performance] Generate=
 fontconfig cache when building image=A0=A0=A0=A0=A0=A0=A0=A03.0=A0=A0=A0=
=A0=A0=A0=A0=A0laurentiu.palcu@intel.com=A0=A0=A0=A0=A0=A0=A0=A0Medium=A0=
=A0=A0=A0=A0=A0=A0=A0ACCE=A0=A0=A0=A0=A0=A0=A0=A0(P1)(Scheduled)
1369=A0=A0=A0=A0=A0=A0=A0=A0nor=A0=A0=A0=A0=A0=A0=A0=A0[Multilib] On-target=
 gcc enhancement=A0=A0=A0=A0=A0=A0=A0=A05.0=A0=A0=A0=A0=A0=A0=A0=A0bogdan.a=
.marinescu@intel.com=A0=A0=A0=A0=A0=A0=A0=A0Medium=A0=A0=A0=A0=A0=A0=A0=A0A=
CCE=A0=A0=A0=A0=A0=A0=A0=A0(P1)(Scheduled)
2010=A0=A0=A0=A0=A0=A0=A0=A0nor=A0=A0=A0=A0=A0=A0=A0=A0Some unnecessary pac=
kages installed cause AutoBuilder built failed=A0=A0=A0=A0=A0=A0=A0=A00.5=
=A0=A0=A0=A0=A0=A0=A0=A0michael@yoctoproject.org=A0=A0=A0=A0=A0=A0=A0=A0Med=
ium=A0=A0=A0=A0=A0=A0=A0=A0ACCE=A0=A0=A0=A0=A0=A0=A0=A0(P1) (Development) S=
tatus: Tested. Estimate: 4 hours
2038=A0=A0=A0=A0=A0=A0=A0=A0enh=A0=A0=A0=A0=A0=A0=A0=A0[multilib] Add scrip=
ts to sanity check for multilib libraries in the build directory=A0=A0=A0=
=A0=A0=A0=A0=A04.0=A0=A0=A0=A0=A0=A0=A0=A0bogdan.a.marinescu@intel.com=A0=
=A0=A0=A0=A0=A0=A0=A0Medium=A0=A0=A0=A0=A0=A0=A0=A0ACCE=A0=A0=A0=A0=A0=A0=
=A0=A0(P1)(patch review)
2162=A0=A0=A0=A0=A0=A0=A0=A0maj=A0=A0=A0=A0=A0=A0=A0=A0[Hob2] Implement 'Se=
ttings' dialogue as designed=A0=A0=A0=A0=A0=A0=A0=A05.0=A0=A0=A0=A0=A0=A0=
=A0=A0valentin.popa@intel.com=A0=A0=A0=A0=A0=A0=A0=A0Medium=A0=A0=A0=A0=A0=
=A0=A0=A0ACCE=A0=A0=A0=A0=A0=A0=A0=A0(P1)(scheduled)
2165=A0=A0=A0=A0=A0=A0=A0=A0enh=A0=A0=A0=A0=A0=A0=A0=A0[Hob2] Change action=
s in the 'Recipes' screen to: 'Build image' (primary action) and 'Build pac=
kages' (secondary action).=A0=A0=A0=A0=A0=A0=A0=A015.0=A0=A0=A0=A0=A0=A0=A0=
=A0cristian.iorga@intel.com=A0=A0=A0=A0=A0=A0=A0=A0Medium=A0=A0=A0=A0=A0=A0=
=A0=A0ACCE=A0=A0=A0=A0=A0=A0=A0=A0(P1) (Scheduled)
1621=A0=A0=A0=A0=A0=A0=A0=A0enh=A0=A0=A0=A0=A0=A0=A0=A0[Performance] Runnin=
g post installs at rootfs gen time=A0=A0=A0=A0=A0=A0=A0=A07.0=A0=A0=A0=A0=
=A0=A0=A0=A0laurentiu.palcu@intel.com=A0=A0=A0=A0=A0=A0=A0=A0Low=A0=A0=A0=
=A0=A0=A0=A0=A0ACCE=A0=A0=A0=A0=A0=A0=A0=A0(P1)(No QA Needed) (Design Revie=
w)(post 1.2) Feb 20, 2012
2396=A0=A0=A0=A0=A0=A0=A0=A0enh=A0=A0=A0=A0=A0=A0=A0=A0Integrate LTSI into =
linux-yocto-dev=A0=A0=A0=A0=A0=A0=A0=A010.0=A0=A0=A0=A0=A0=A0=A0=A0bruce.as=
hfield@windriver.com=A0=A0=A0=A0=A0=A0=A0=A0Medium=A0=A0=A0=A0=A0=A0=A0=A0A=
CCE=A0=A0=A0=A0=A0=A0=A0=A0(P1)(blocked)
=A0
    - Bugs trend is going up. See the status wiki page: https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.3_Status=20
=A0
    - M3 status:=20
      . Laurentiu/QA: doing full pass testing on last week's weekly build, =
we still have issues: x32, multi-lib, x86-64, HOB (related to dead package)=
 , and we have bugs open.
      . Richard: master status, things are bumpy at the moment, ongoing bui=
ld issues for kernel build, there are quite some patches in yesterday, intr=
oduced 9 failures, we got solutions for most of them, there is still troubl=
e going on. RP will be on vacation, M3 is at a little bit of risk. Saul wil=
l help after Richard is gone on vacation.
    - Review of the M4 release criteria:  https://wiki.yoctoproject.org/wik=
i/Yocto_Project_v1.3_Status#Milestone_4=20
=A0
* SWAT team rotation: Beth -> Paul
* Opens - 10 min
=A0
  - Mark: I have one minor issue around LSB/FHS:
Involved in IVI work, someone forwarded an email discussing requirement for=
 their internal work. There are concerns that YP does not conform to basic =
Linux requirement (LSB/FHS). We are doing the LSB testing, there are bugs a=
nd we are fixing bugs. No compliance is not intentional. We are getting bet=
ter on this.=20
=A0
  - Michael: Open, Public IP address space change.=20
Firming up some details on ISP, change will happen this Thursday morning at=
 4am. There could be some connectivity problems for 10 minutes. Will send e=
mail to the list before that to warn everyone. There will be 300 seconds fo=
r old DNS entries. Once we are done, we will be separated from other LF ser=
vers. Attack on those servers will not affect YP anymore after that.=20
=A0
  - Beth: Minor AB downtime: there are some recent issues identified for AB=
, would like to get this fixed this week. Do need schedule some downtime, v=
ery short (half an hour).
=A0
* Team sharing - 20 min
=A0
  - Michael: got the new AB's online,  issueshave been fixed. Web hob desig=
n docs. Laurentiu and I have been working on bugzilla statistic data.
  - Bruce: outside of M3, perf mess, updating other BSPs. Do have some test=
 trees. Delaying merging them now to avoid destabilize master.
  - Mark: Sent the RFC out about the Image generation and deployment to OE-=
core mailing list.. no feedback..=20




