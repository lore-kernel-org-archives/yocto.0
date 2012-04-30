Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F484E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 11:07:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Apr 2012 11:07:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="138367275"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2012 11:07:34 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 30 Apr 2012 11:07:34 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.61]) with mapi id
	14.01.0355.002; Mon, 30 Apr 2012 11:07:33 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, 'Anders Darander'
	<anders@chargestorm.se>, "Barros Pena,
	Belen" <belen.barros.pena@intel.com>, 
	"Bodke, Kishore K" <kishore.k.bodke@intel.com>, 'Bruce Ashfield'
	<bruce.ashfield@windriver.com>, 'Daniel Cauchy' <dcauchy@mvista.com>,
	"'deVries, Alex'" <Alex.deVries@windriver.com>, "'Dixon, Brad'"
	<Brad_Dixon@mentor.com>, "Dmytriyenko, Denys" <denys@ti.com>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Hart, Darren" <darren.hart@intel.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, 'Jeremy Puhlman'
	<jpuhlman@gmail.com>, "Kooi, Koen" <k-kooi@ti.com>, "Kridner, Jason"
	<jdk@ti.com>, "Li, Susie" <susie.li@intel.com>, "'Lieu.Ta@windriver.com'"
	<'Lieu.Ta@windriver.com'>, "Lock, Joshua" <joshua.lock@intel.com>,
	"'McCombe, Kevin'" <kevin.mccombe@windriver.com>, "Moeller, Thorsten"
	<thorsten.moeller@intel.com>, "'morvek@mvista.com'" <'morvek@mvista.com'>, 
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>, "'Polk, Jeffrey'"
	<jeff.polk@windriver.com>, "Purdie, Richard" <richard.purdie@intel.com>,
	"'Ranslam, Rob'" <Rob.Ranslam@windriver.com>, "Saxena, Rahul"
	<rahul.saxena@intel.com>, "Stewart, David C" <david.c.stewart@intel.com>,
	"Wang, Shane" <shane.wang@intel.com>, "Wold, Saul" <saul.wold@intel.com>,
	"Yu, Ke" <ke.yu@intel.com>, "Zanussi, Tom" <tom.zanussi@intel.com>,
	"Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Mueller, Robert" <robert.mueller@intel.com>, 
	"Arce Moreno, Abraham" <abraham.arce.moreno@intel.com>, 'Ravi Vompolu'
	<Ravi.Vompolu@mathworks.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "'Hudson, Sean'" <Sean_Hudson@mentor.com>,
	"'Mitchell, Jeffrey - 0665 - MITLL'" <jmitchell@ll.mit.edu>
Thread-Topic: Yocto Project 1.2 release readiness meeting - We made it!
Thread-Index: AQHNJvwdfwCnW2ye2kmwemzN5J7x8Q==
Date: Mon, 30 Apr 2012 18:07:32 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483A1995@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4836920D@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A4836920D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 30 Apr 2012 13:51:39 -0700
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"'morvek@mvista.com'" <morvek@mvista.com>
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
X-List-Received-Date: Mon, 30 Apr 2012 18:07:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A483A1995ORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A483A1995ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks you all for your support the team's hard work on the 1.2 release. We=
 made it!


Attendees:
Beth, Nitin, Richard, Jefro, Tom, Darren, Saul, Mark (MontaVista), Jeremy (=
MontaVista), Mark, Jessica, Denys (TI), ScottR, Song

Agenda:

* Release Criteria review,

- Functional Completion: Completed all bug 2 P1 features. The 2 P1's are mo=
stly completed and pushed to 1.3 to finish up, they are not release blocker=
s at this point. We also completed most of the P2's and P3's. Overall the t=
eam has completed more than 75% of what we planned as a 'goal' for our 1.2 =
release.

- Build & release (Yocto Project and core BSPs): all features and core BSPs=
 can be built with no error.

- Open Bugs: all high bugs are fixed, team fixed all 1.2 must fix bugs.

- Functional Test: Full pass test has been run on RC2, all completed, bugs =
are logged.

- Distro Tested: N+1 for Fedora, OpenSuse, Ubuntu, Centos. World image test=
ing has not been completed due to Shanghai QA team's holiday schedule and p=
ower issue. But the QA team feels that we should not have any significant i=
ssue there. And we have tested this in RC4.

- Core BSP: all core BSPs are tested and bugs are logged.

- Documentation: minor changes not in the release tarball, will be pulled i=
nto 1.2 release branch.  5 or 6 changes affect the correctness of the doc. =
Please check out the latest doc from the 1.2 release branch.

- Build Performance: 111 min for RC5, at pretty much the same level as we s=
tarted the release (104 min) considering deviations.

- Package Update/Upstream statues: Target met

* Vote:
- The team including all communities members on the call approved the 1.2 r=
elease and we are going to release today on April 30th, 2012.


-----Original Appointment-----
From: Liu, Song
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


Monday, April 30, 2012, 08:00 AM US Pacific Time
916-356-2663, 8-356-2663, Bridge: 1, Passcode: 4364030
Speed dialer: inteldialer://1,4364030 | Learn more<http://it.intel.com/prod=
ucts/handhelds/speeddial.htm>




--_000_7E680CB2A76BB8438D08CF13C09FC53A483A1995ORSMSX101amrcor_
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
<div>Thanks you all for your support the team's hard work on the 1.2 releas=
e. We made it! </div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;">&nbsp;</span></font></div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;">&nbsp;</span></font></div>
<div>Attendees:</div>
<div>Beth, Nitin, Richard, Jefro, Tom, Darren, Saul, Mark (MontaVista), Jer=
emy (MontaVista), Mark, Jessica, Denys (TI), ScottR, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Release Criteria review, </div>
<div>&nbsp;</div>
<div>- Functional Completion: Completed all bug 2 P1 features. The 2 P1's a=
re mostly completed and pushed to 1.3 to finish up, they are not release bl=
ockers at this point. We also completed most of the P2's and P3's. Overall =
the team has completed more than
75% of what we planned as a 'goal' for our 1.2 release.</div>
<div>&nbsp;</div>
<div>- Build &amp; release (Yocto Project and core BSPs): all features and =
core BSPs can be built with no error.</div>
<div>&nbsp;</div>
<div>- Open Bugs: all high bugs are fixed, team fixed all 1.2 must fix bugs=
. </div>
<div>&nbsp;</div>
<div>- Functional Test: Full pass test has been run on RC2, all completed, =
bugs are logged.</div>
<div>&nbsp;</div>
<div>- Distro Tested: N&#43;1 for Fedora, OpenSuse, Ubuntu, Centos. World i=
mage testing has not been completed due to Shanghai QA team's holiday sched=
ule and power issue. But the QA team feels that we should not have any sign=
ificant issue there. And we have tested
this in RC4.</div>
<div>&nbsp;</div>
<div>- Core BSP: all core BSPs are tested and bugs are logged.</div>
<div>&nbsp;</div>
<div>- Documentation: minor changes not in the release tarball, will be pul=
led into 1.2 release branch.&nbsp; 5 or 6 changes affect the correctness of=
 the doc. Please check out the latest doc from the 1.2 release branch.</div=
>
<div>&nbsp;</div>
<div>- Build Performance: 111 min for RC5, at pretty much the same level as=
 we started the release (104 min) considering deviations.</div>
<div>&nbsp;</div>
<div>- Package Update/Upstream statues: Target met</div>
<div>&nbsp;</div>
<div>* Vote:</div>
<div>- The team including all communities members on the call approved the =
1.2 release and we are going to release today on April 30th, 2012.</div>
<div>&nbsp;</div>
<div><font color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Tahoma" size=3D"2"><span style=3D"font-size:10pt;">-----=
Original Appointment-----<br>

<b>From:</b> Liu, Song <br>

<b>Sent:</b> Friday, April 27, 2012 1:53 PM<br>

<b>To:</b> 'Anders Darander'; Barros Pena, Belen; Bodke, Kishore K; 'Bruce =
Ashfield'; 'Daniel Cauchy'; 'deVries, Alex'; 'Dixon, Brad'; Dmytriyenko, De=
nys; Erway, Tracey M; Flanagan, Elizabeth; Hart, Darren; 'Hatle, Mark'; 'Je=
remy Puhlman'; Kooi, Koen; Kridner,
Jason; Li, Susie; 'Lieu.Ta@windriver.com'; Lock, Joshua; 'McCombe, Kevin'; =
Moeller, Thorsten; 'morvek@mvista.com'; Osier-mixon, Jeffrey; 'Polk, Jeffre=
y'; Purdie, Richard; 'Ranslam, Rob'; Saxena, Rahul; Stewart, David C; Wang,=
 Shane; Wold, Saul; Yu, Ke; Zanussi,
Tom; Zhang, Jessica; yocto@yoctoproject.org; Mueller, Robert; Arce Moreno, =
Abraham; 'Ravi Vompolu'; Rifenbark, Scott M; 'Hudson, Sean'; 'Mitchell, Jef=
frey - 0665 - MITLL'<br>

<b>Cc:</b> morvek@mvista.com; Darren Hart<br>

<b>Subject:</b> Yocto Project 1.2 release readiness meeting<br>

<b>When:</b> Monday, April 30, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Tim=
e (US &amp; Canada).<br>

<b>Where:</b> Bridge Info Enclosed</span></font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><font face=3D"Verdana" size=3D"2" color=3D"#444444"><span style=3D"fon=
t-size:8.5pt;"><b>Monday, April 30, 2012, 08:00 AM US Pacific Time
<br>

</b>916-356-2663, 8-356-2663, Bridge: 1, Passcode: 4364030<br>

Speed dialer: inteldialer://1,4364030 | <a href=3D"http://it.intel.com/prod=
ucts/handhelds/speeddial.htm"><font color=3D"blue"><u>Learn more</u></font>=
</a></span></font></div>
<div><font color=3D"#444444">&nbsp;</font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A483A1995ORSMSX101amrcor_--
