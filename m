Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EC5E002FB
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 22:26:39 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Aug 2013 22:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,974,1367996400"; 
	d="scan'208,217";a="287684409"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Aug 2013 22:26:38 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 27 Aug 2013 22:26:38 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.144]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.234]) with mapi id
	14.03.0123.003; Tue, 27 Aug 2013 22:26:38 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 27, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6jrxj+NsrojmqDRfOAxY2m59rFRQAAAgpw
Date: Wed, 28 Aug 2013 05:26:38 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF2D7E8@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 27, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 28 Aug 2013 05:26:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF2D7E8ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF2D7E8ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
AlexG, Bj=F6rn, MichaelH, MatthewW, Saul, BruceA, Denys, Nitin, DaveST, Pau=
lE, JeffP, Belen, Richard, Beth, Darren, Jessica, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.4.2 release - 10 min (Paul/AlexG)
  - QA report is just out. Things looking pretty good. Only issue we found =
is in 1.5 too.
  - Beth: need release note. Paul will get Beth this release note today.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Schedule: M4 cut-off day is gone (past Sunday). This was effectively th=
e release cut-off day since we do not allow any new features in M5. Release=
 feature complete is Sep. 8th. We have 2 weeks to get M4 out and get import=
ant fixes in. Then we will continue to stabilize the release until we can s=
hip it.
  - Feature development: all high features are complete. No concerns so far=
.
    - Bug fixing: Resolved 29 bugs in the past week. Going to the right dir=
ection, WDD number is down. Keep the good work up
  - Merging: Richard has been working hard in the past days and weekends to=
 review, pull and merge a large number of patches. Thank you, Richard!
    . Kernel.  Kernel merge caused quite some issues. Another build is goin=
g on, will see what happens. Bruce will work with Richard and others closel=
y to monitor the status.
    . last set of QA test changes is getting in, it affects autobuilder, ne=
ed to treat this with higher priority. (Stefan)
    . web browser, getting it in core for testing and build appliance. Miha=
i got patches, will be sent out shortly. (Mihai)
  - webhob: Due to resources changes, we cannot keep the original plan. For=
tunately we are getting some help from Wind River. So we are working on a n=
ew plan, targeting 1.5.1 to deliver first webhob. Backend changes will be i=
n 1.5.

* SWAT team rotation: Cristian -> Nitin
* Opens - 10 min
  - Alex: testcase removal. all of these testcases are covered by AB. OK to=
 remove them.
https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D290 https://bu=
gzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D291https://bugzilla.yoct=
oproject.org/tr_show_case.cgi?case_id=3D292, and https://bugzilla.yoctoproj=
ect.org/tr_show_case.cgi?case_id=3D169
  - Paul: automated testing on real hardware
     a couple weeks ago posted a RFC to get people's opinion about potentia=
l work we can do in 1.6 for automated testing on real hardware. If you are =
interested, please respond. Will be interesting to hear how others did thin=
gs. Need to come up with testcases for the majority of people.
    - Beth:  autobuilder during M5.  If you have a change to be in and it's=
 going to require AB change. Example: removing atom-pc. Local conf change b=
b layer change, etc. Really appreciate it if people can give me more prep t=
ime.

* Team Sharing - 20 min
  - Beth: working requiring some release engineering docs. Putting them on =
wiki. We should be seeing those by this week. Working on AB, there was a ch=
ange that will break AB instance. If you are running AB, you are going to n=
eed update you config. Will send out email to inform all.
  - We have a name for this release: Dora.
  - Michael: continuing working on security last week. Automating performan=
ce graph. There will be a link from QA result wiki page pointing to the gra=
ph. Richard: Thank you, Michael for the help resolving AB issues.



--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF2D7E8ORSMSX108amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>AlexG, Bj=F6rn, MichaelH, MatthewW, Saul, BruceA, Denys, Nitin, DaveST=
, PaulE, JeffP, Belen, Richard, Beth, Darren, Jessica, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.4.2 release - 10 min (Paul/AlexG)</div>
<div>&nbsp; - QA report is just out. Things looking pretty good. Only issue=
 we found is in 1.5 too.</div>
<div>&nbsp; - Beth: need release note. Paul will get Beth this release note=
 today. </div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Schedule: M4 cut-off day is gone (past Sunday). This was effe=
ctively the release cut-off day since we do not allow any new features in M=
5. Release feature complete is Sep. 8th. We have 2 weeks to get M4 out and =
get important fixes in. Then we will
continue to stabilize the release until we can ship it.</div>
<div>&nbsp; - Feature development: all high features are complete. No conce=
rns so far.</div>
<div>&nbsp;&nbsp;&nbsp; - Bug fixing: Resolved 29 bugs in the past week. Go=
ing to the right direction, WDD number is down. Keep the good work up</div>
<div>&nbsp; - Merging: Richard has been working hard in the past days and w=
eekends to review, pull and merge a large number of patches. Thank you, Ric=
hard!</div>
<div>&nbsp;&nbsp;&nbsp; . Kernel.&nbsp; Kernel merge caused quite some issu=
es. Another build is going on, will see what happens. Bruce will work with =
Richard and others closely to monitor the status. </div>
<div>&nbsp;&nbsp;&nbsp; . last set of QA test changes is getting in, it aff=
ects autobuilder, need to treat this with higher priority. (Stefan)</div>
<div>&nbsp;&nbsp;&nbsp; . web browser, getting it in core for testing and b=
uild appliance. Mihai got patches, will be sent out shortly. (Mihai)</div>
<div>&nbsp; - webhob: Due to resources changes, we cannot keep the original=
 plan. Fortunately we are getting some help from Wind River. So we are work=
ing on a new plan, targeting 1.5.1 to deliver first webhob. Backend changes=
 will be in 1.5.</div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Cristian -&gt; Nitin</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Alex: testcase removal. all of these testcases are covered by=
 AB. OK to remove them.</div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=
=3D290"><font face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"fo=
nt-size:11pt;"><u>https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_i=
d=3D290</u></span></font></a><font face=3D"Consolas" size=3D"2"><span style=
=3D"font-size:11pt;">&nbsp;</span></font><a href=3D"https://bugzilla.yoctop=
roject.org/tr_show_case.cgi?case_id=3D291"><font face=3D"Consolas" size=3D"=
2" color=3D"blue"><span style=3D"font-size:11pt;"><u>https://bugzilla.yocto=
project.org/tr_show_case.cgi?case_id=3D291</u></span></font></a><a href=3D"=
https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D292"><font fac=
e=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt;"><u=
>https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D292</u></span=
></font></a><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11p=
t;">,
and&nbsp;</span></font><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_case.cgi?case_id=3D169"><font face=3D"Consolas" size=3D"2" color=3D"blue">=
<span style=3D"font-size:11pt;"><u>https://bugzilla.yoctoproject.org/tr_sho=
w_case.cgi?case_id=3D169</u></span></font></a></span></font></div>
<div>&nbsp; - Paul: automated testing on real hardware</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; a couple weeks ago posted a RFC to get people=
's opinion about potential work we can do in 1.6 for automated testing on r=
eal hardware. If you are interested, please respond. Will be interesting to=
 hear how others did things. Need to come up with testcases
for the majority of people.</div>
<div>&nbsp;&nbsp;&nbsp; - Beth: &nbsp;autobuilder during M5.&nbsp; If you h=
ave a change to be in and it's going to require AB change. Example: removin=
g atom-pc. Local conf change bb layer change, etc. Really appreciate it if =
people can give me more prep time. </div>
<div>&nbsp;</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Beth: working requiring some release engineering docs. Puttin=
g them on wiki. We should be seeing those by this week. Working on AB, ther=
e was a change that will break AB instance. If you are running AB, you are =
going to need update you config. Will
send out email to inform all.</div>
<div>&nbsp; - We have a name for this release: Dora.</div>
<div>&nbsp; - Michael: continuing working on security last week. Automating=
 performance graph. There will be a link from QA result wiki page pointing =
to the graph. Richard: Thank you, Michael for the help resolving AB issues.=
 </div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF2D7E8ORSMSX108amrcor_--
