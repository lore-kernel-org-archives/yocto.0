Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F54E01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 10:58:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2012 10:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127923906"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2012 10:58:41 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 12 Mar 2012 10:58:41 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.102]) with mapi id
	14.01.0355.002; Mon, 12 Mar 2012 10:58:41 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.2 M3 & 1.1.1 release readiness
Thread-Index: Acz+RijAOl+cQtLBQta1LIWnwNaXngCM25KAAAAHouA=
Date: Mon, 12 Mar 2012 17:58:40 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A3D09F895@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.2 M3 & 1.1.1 release readiness
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
X-List-Received-Date: Mon, 12 Mar 2012 17:58:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave. Nitin, Beth, Jessica, Mark, Darren, Terrance, Richard, Saul, ScottR, =
Denys, Josh, Matthew
=A0
M3 readiness - release criteria review (https://wiki.yoctoproject.org/wiki/=
Yocto_Project_v1.2_Status#Milestone_3 ):
=A0
1. Functional completion: All P1s but 1145 and 1890 are completed. 1145 and=
 1890 have been pushed to M4 due to resource conflict with conferences and =
their preparation. 1145 is about improve bitbake output messaging. 1890 is =
about the web interface for build history analysis. They are both pushed to=
 early M4. There are no features depending on them. The team agrees that th=
ey can be left for M4. a significant part of P2/P3's are completed in M3 or=
 close to complete. We also moved some of the P2/P3's to post 1.2. We are s=
till reviewing the list, there will be more to be moved to post 1.2.
2. No high bugs against M3. All high bugs are analyzed and they are not blo=
ckers for M3 release. 2066 is a high bug without any fix now. But it does n=
ot affect P1 features of M3 release. We have a plan and Saul will follow up=
 to root cause it and have the fix in master.=20
3. The full pass QA report looks good. We have some issues with the core bu=
ild system but most of them have patches in master already.
=A0
2048: patches soon, marked for M4
2050: Bruce/Nitin has a patch already, needs to be in master. Marked for M4
2054: Patch in master
1229: Patch in master
2051: Patch in master
2052: Patch in master
=A0
4. Distro tested with latest version and they all passed.
5. There is no significant performance degradation.=20
=A0
2048: patches soon, marked for M4
2050: Bruce/Nitin has a patch already, needs to be in master. Marked for M4
2054: Patch in master
1229: Patch in master
2051: Patch in master
2052: Patch in master
=A0
Decision: the team unanimously agreed to release M3 RC1 for M3. Beth will p=
ack up the release and release note, it should be released sometime today.
=A0
1.1.1 point release:
=A0
We had a build and QA has given a full pass testing for it. Some issues are=
 found, we have fixed significant ones and pulled the patches into the buil=
d. QA has tested and verified those fixes. We still have some issues left b=
ut the team agrees that they should not block the point release.
=A0
Decision: the team agrees to release the current build for the 1.1.1 point =
release.
=A0
Next step:
1. Beth will pack up the release.
2. Josh will gather the known issues list and send to Beth.
3. Scott Rifenbark will work with Beth to point the 1.1.1 web link to the r=
ight place.
4. Beth will then push and announce the release in the public mailing list.


-----Original Appointment-----
From: Liu, Song=20
Sent: Friday, March 09, 2012 2:44 PM
To: yocto@yoctoproject.org
Cc: Mueller, Robert; 'Ravi Vompolu'; 'Anders Darander'; Barros Pena, Belen;=
 Bodke, Kishore K; 'Bruce Ashfield'; 'Daniel Cauchy'; 'deVries, Alex'; 'Dix=
on, Brad'; Dmytriyenko, Denys; Erway, Tracey M; Flanagan, Elizabeth; Hart, =
Darren; 'Hatle, Mark'; 'Jeremy Puhlman'; Kooi, Koen; Kridner, Jason; Li, Su=
sie; 'Lieu.Ta@windriver.com'; Lock, Joshua; 'McCombe, Kevin'; Moeller, Thor=
sten; 'morvek@mvista.com'; Osier-mixon, Jeffrey; 'paul.anderson@windriver.c=
om'; 'Polk, Jeffrey'; Purdie, Richard; 'Ranslam, Rob'; Rifenbark, Scott M; =
Saxena, Rahul; Stewart, David C; Wang, Shane; Wold, Saul; Yu, Ke; Zanussi, =
Tom; Zhang, Jessica; 'Hudson, Sean'; Arce Moreno, Abraham; morvek@mvista.co=
m; Elizabeth Flanagan; Moses, Fred
Subject: Yocto Project 1.2 M3 & 1.1.1 release readiness
When: Monday, March 12, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US &=
 Canada).
Where: Bridge Info Enclosed


Monday, March 12, 2012, 08:00 AM US Pacific Time=20
916-356-2663, 8-356-2663, Bridge: 4, Passcode: 1137217
Speed dialer: inteldialer://4,1137217 | Learn more



