Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A74DBE0044D
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 11:08:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Apr 2012 11:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147744076"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2012 11:08:16 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 30 Apr 2012 11:08:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.216]) with mapi id
	14.01.0355.002; Mon, 30 Apr 2012 11:08:15 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Project 1.2 release readiness meeting - We made it!
Thread-Index: AQHNJvw2S53xpuUN2ECl7Kat3g/L/A==
Date: Mon, 30 Apr 2012 18:08:15 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483A19D3@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4836920D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Yocto Project 1.2 release readiness meeting - We made it!
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
X-List-Received-Date: Mon, 30 Apr 2012 18:08:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks you all for your support the team's hard work on the 1.2 release. We=
 made it!=20


Attendees:
Beth, Nitin, Richard, Jefro, Tom, Darren, Saul, Mark (MontaVista), Jeremy (=
MontaVista), Mark, Jessica, Denys (TI), ScottR, Song
=A0
Agenda:
=A0
* Release Criteria review,=20
=A0
- Functional Completion: Completed all bug 2 P1 features. The 2 P1's are mo=
stly completed and pushed to 1.3 to finish up, they are not release blocker=
s at this point. We also completed most of the P2's and P3's. Overall the t=
eam has completed more than 75% of what we planned as a 'goal' for our 1.2 =
release.
=A0
- Build & release (Yocto Project and core BSPs): all features and core BSPs=
 can be built with no error.
=A0
- Open Bugs: all high bugs are fixed, team fixed all 1.2 must fix bugs.=20
=A0
- Functional Test: Full pass test has been run on RC2, all completed, bugs =
are logged.
=A0
- Distro Tested: N+1 for Fedora, OpenSuse, Ubuntu, Centos. World image test=
ing has not been completed due to Shanghai QA team's holiday schedule and p=
ower issue. But the QA team feels that we should not have any significant i=
ssue there. And we have tested this in RC4.
=A0
- Core BSP: all core BSPs are tested and bugs are logged.
=A0
- Documentation: minor changes not in the release tarball, will be pulled i=
nto 1.2 release branch.  5 or 6 changes affect the correctness of the doc. =
Please check out the latest doc from the 1.2 release branch.
=A0
- Build Performance: 111 min for RC5, at pretty much the same level as we s=
tarted the release (104 min) considering deviations.
=A0
- Package Update/Upstream statues: Target met
=A0
* Vote:
- The team including all communities members on the call approved the 1.2 r=
elease and we are going to release today on April 30th, 2012.
=A0

-----Original Appointment-----
From: Liu, Song=20
Sent: Friday, April 27, 2012 1:53 PM
To: 'Anders Darander'; Barros Pena, Belen; Bodke, Kishore K; 'Bruce Ashfiel=
d'; 'Daniel Cauchy'; 'deVries, Alex'; 'Dixon, Brad'; Dmytriyenko, Denys; Er=
way, Tracey M; Flanagan, Elizabeth; Hart, Darren; 'Hatle, Mark'; 'Jeremy Pu=
hlman'; Kooi, Koen; Kridner, Jason; Li, Susie; 'Lieu.Ta@windriver.com'; Loc=
k, Joshua; 'McCombe, Kevin'; Moeller, Thorsten; 'morvek@mvista.com'; Osier-=
mixon, Jeffrey; 'Polk, Jeffrey'; Purdie, Richard; 'Ranslam, Rob'; Saxena, R=
ahul; Stewart, David C; Wang, Shane; Wold, Saul; Yu, Ke; Zanussi, Tom; Zhan=
g, Jessica; yocto@yoctoproject.org; Mueller, Robert; Arce Moreno, Abraham; =
'Ravi Vompolu'; Rifenbark, Scott M; 'Hudson, Sean'; 'Mitchell, Jeffrey - 06=
65 - MITLL'
Cc: morvek@mvista.com; Darren Hart
Subject: Yocto Project 1.2 release readiness meeting
When: Monday, April 30, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US &=
 Canada).
Where: Bridge Info Enclosed


Monday, April 30, 2012, 08:00 AM US Pacific Time=20
916-356-2663, 8-356-2663, Bridge: 1, Passcode: 4364030
Speed dialer: inteldialer://1,4364030 | Learn more



