Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 624A04C801BF
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2011 15:47:09 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jun 2011 13:47:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,334,1304319600"; d="scan'208,217";a="13158817"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2011 13:47:08 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 7 Jun 2011 13:47:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.6]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.236]) with mapi id
	14.01.0289.001; Tue, 7 Jun 2011 13:47:07 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Fleischer, Julie N" <julie.n.fleischer@intel.com>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, "Wold, Saul" <saul.wold@intel.com>, "Zhang, 
	Jessica" <jessica.zhang@intel.com>, "'deVries, Alex'"
	<Alex.deVries@windriver.com>, "'Polk, Jeffrey'" <jeff.polk@windriver.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Li, Susie" <susie.li@intel.com>, "Lock,
	Joshua"
	<joshua.lock@intel.com>, 'Bruce Ashfield' <bruce.ashfield@windriver.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>, "'Lieu.Ta@windriver.com'"
	<Lieu.Ta@windriver.com>, "'paul.anderson@windriver.com'"
	<paul.anderson@windriver.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>
Thread-Topic: Minutes: Yocto Technical Team (Tuesday, June 07, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMJVQQHMzZ3uLOXkSj+CcwlggvlA==
Date: Tue, 7 Jun 2011 20:47:06 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A01DBB3@ORSMSX101.amr.corp.intel.com>
References: <22C9E51874B49B4EA3724D0EF9748C638162BFF3@orsmsx504.amr.corp.intel.com>
In-Reply-To: <22C9E51874B49B4EA3724D0EF9748C638162BFF3@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 07 Jun 2011 15:54:35 -0500
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Minutes: Yocto Technical Team (Tuesday, June 07, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 07 Jun 2011 20:47:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A01DBB3ORSMSX101amrcorpi_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A01DBB3ORSMSX101amrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Notes

Attendees:

Shane, Dave, Saul, Darren, Richard, Tom, Julie, Ke, ScottG, JeffO, Paul, Je=
ssica, Bruce, Beth, Dennis (TI)

Agenda:
*       Review Yocto 1.1 M1 Release Criteria - 10 min (Julie)
*       See details at: https://wiki.yoctoproject.org/wiki/Yocto_Project_v1=
.1_Release_Criteria
*       Everything is green. We achieved this in the sense that the team ha=
s reached a conscious decision to move something from M1 to M2. Next time, =
we should have some must-have features defined before we go into next miles=
tone.
*       Yocto and BSPs were build.
*       New bugs: 1037 is for M1, but this is not a show stopper. We are ok=
 with this.
*       No high bugs

*       Discuss M1 1.1 M1 Release Status, go/no-go vote - 10 min (Julie)
*       Beagle board can be built now, is under testing
*       Our goal of these milestones is to have some major features accompl=
ished.
*       We have a conditional go for M1 provided that we get test result fo=
r beagle board test result, and no show stoppers.
*       Proposed plan:
1.      Saul: Check test result with Jiajun and see if there is any show st=
oppers
2.      Beth send email for release
3.      Dave follow up with a blog entry
*       Review progress on M2 P1 items (see below) with incomplete designs =
- 30 min (Song)
*       N+1 testing for distro testing is on for next milestone. N+1 is the=
 current production version plus the next Alpha version
*       LayerTooling design review: AR: Richard to review these items
*       Image creator: Jessica sent the detailed task list. Jessica signed =
off the design for these items. The team feels comfortable with the schedul=
e. AR: Song to update the wiki.
*       Multi-lib: we will have separate meeting to address this.
*       Bug assigning process for bugs assigned to BSP/Tom:
*       Bugs assigned to BSP/Tom are not necessarily BSP related. Tom would=
 like to be involved in the bug triage process.
*       Don't want to put a barrier for people to file bugs by asking peopl=
e to spend more time on where the bug should belong when they file bugs.
*       QA team is very resource limited, probably not appropriate to ask t=
hem to spend more time analyzing bugs.
*       Solution: AR: Darren will check new BSP related bugs more regularly=
 and work with Tom to reassign them if needed.
*       Opens:
*       PPC bugs (414): short term we cannot do much. Mark talked to people=
 in PPC community.   WRS team has some plan and directions to go. Work is s=
till in progress. We need help on resources. Find someone to work on it in =
July-Sep. period maybe. AR: Dave to bring this up to the advisory board for=
 help.
*       Bruce is good with the current feature and schedule including p2/p3=
 items.


             Updates marked in yellow
Feature Name    Description     Priority        Commit  Status  Owner   Des=
ign Signoff  Due     Comments / Bugzilla Links
Error handling in bitbake (Design)      Performance improvement (gather inp=
ut from community on use cases)      1       Yes     Accept  Saul (Scott G)=
   Richard        M2,Sprint B     M2, Sprint A, (Scott to talk with Richard=
 about the design of this item and then come back with update)
Filed bugs (enhancement) in bugzilla, working on priorities and figure out =
what need to be done in the next 2 weeks.
multi-lib complete      multi-lib support for 32-bit & 64-bit and capable o=
f being installed at the same time fully complete    1       Yes     Accept=
  Richard (Qing/Ke)               M2, Sprint D    M2, Sprint D
Image Creator polish    polish and refine Image Creator - See https://wiki.=
yoctoproject.org/wiki/BitBake/GUI/PostOneOh for details      1             =
  Accept  Josh            M2, Sprint D    M2, Sprint D, Jessica/Josh will w=
ork on these items
kernel bloat - development      target =3D boot a minimal image in < 8M - d=
evelopment complete    1               Accept  Darren          M2, Sprint D=
    M2, Sprint D
LayerTooling - Dependency handling      Dependency handling     1          =
     M2, Sprint C    Paul            M2, Sprint C    M2 Sprint C, dependent=
 on Sprint C item (LayerTooling), check next Tuesday
LayerTooling - layer merging tool       Tool to merge (flatten) several lay=
ers into one 1               M2, Sprint C    Paul            M2, Sprint C  =
  M2, Sprint C, under review (Richard)
LayerTooling - remote layer tool        Consider integrating Jeremy Puhlman=
's remote layers patch       1               M2, Sprint C    Ke/Paul       =
  M2, Sprint C    Jeremy is working on this, M2, Sprint C
Package config option enhancement - Plan        Plan our approach to packag=
e config option enhancement  2               M2, Design      Richard       =
          M2, Design
multi-lib infrastructure        multi-lib support for 32-bit & 64-bit and c=
apable of being installed at the same time - infrastructure in place (multi=
lib toolchain changes, configuration changes)     1       Yes     M2, Sprin=
t A    Richard(Qing/Ke)                M2, Sprint B    M2, Sprint A, Sprint=
 B
multi-lib RPM   RPM support for multilib added  1               M2, Sprint =
B    Richard (Qing)          M2, Sprint B    M2, Sprint B, too large, depen=
dent on other features, Mark owns the architecture, leave for discussion wi=
th PRC team
LayerTooling - output info enhancement  1) Show a parse error if a bbappend=
 matches no existing bb. 2) Update banner info to show layers being used an=
d revisions/branches for each one if available    1       Yes     M2, Sprin=
t B    Dexuan          M2, Sprint B    M2, Sprint B, Richard will look at t=
he design again for these(LayerTooling), need discussion with PRC team
Layer Tooling - Architecture    Implement Layer Tooling changes 1       Yes=
     Accept  Richard (Paul/Daoxien will help)        n/a     M2, Sprint A  =
  M2 Sprint A, still dependent on Jeremy
Optimize support for Intel hardware features    We need to understand and t=
rack each important Intel hardware feature and how it should be optimally s=
upported in the Intel BSPS. Items that immediately come to mind are power, =
video, and performance counter settings, etc.  1               on-going    =
    Tom/Darren              M2, Sprint A    M2, Sprint A, Tom/Darren will w=
ork together on the design (possibly break up this item), target: ww24.1

We had a kernel meeting, we have a list of items (a handful of) and will en=
ter them in bugzilla. Will plan these bugs at milestone level instead of at=
 Sprint level

Remove this from feature list, track them in bugzilla
kernel bloat - analysis (Design)        target =3D boot a minimal image in =
< 8M - analysis complete       1       Yes     Accept  Darren          M2, =
Sprint B    M2, Sprint B, need to have specifics and design

Beagle board kernel fix is taking longer than expected, this one needs to b=
e moved to Sprint B.
LayerTooling - combo layer tool Tool to manage combination repos (e.g. the =
poky repo)   1       Yes     70%     Ke              M2, Sprint A    M2, Sp=
rint A
Changes for Image Creator - phase 3     Phase 3: package format job done + =
image output type job done   1               Accept  Joshua                =
  M2, Sprint B, needs to work Joshua and rearrange
Changes for Image Creator - phase 4     Phase 4: complete plug-in       1  =
             Accept  Jessica                 M2, Sprint D, need reschedule



--_000_7E680CB2A76BB8438D08CF13C09FC53A01DBB3ORSMSX101amrcorpi_
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
<div><b>Notes</b></div>
<div>&nbsp;</div>
<div>Attendees:</div>
<div>&nbsp;</div>
<div>Shane, Dave, Saul, Darren, Richard, Tom, Julie, Ke, ScottG, JeffO, Pau=
l, Jessica, Bruce, Beth, Dennis (TI)</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<ul style=3D"margin:0;padding-left:54pt;">
<li>Review Yocto 1.1 M1 Release Criteria &#8211; 10 min (Julie)</li></ul>
<ul style=3D"margin:0;padding-left:81pt;">
<li>See details at: <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Pro=
ject_v1.1_Release_Criteria"><font color=3D"blue"><u>https://wiki.yoctoproje=
ct.org/wiki/Yocto_Project_v1.1_Release_Criteria</u></font></a> </li><li>Eve=
rything is green. We achieved this in the sense that the team has reached a=
 conscious decision to move something from M1 to M2. Next time, we should h=
ave some must-have features defined before we go into next milestone. </li>=
<li>Yocto and BSPs were build.</li><li>New bugs: 1037 is for M1, but this i=
s not a show stopper. We are ok with this.</li><li>No high bugs</li></ul>
<div style=3D"padding-left:81pt;">&nbsp;</div>
<ul style=3D"margin:0;padding-left:54pt;">
<li>Discuss M1 1.1 M1 Release Status, go/no-go vote &#8211; 10 min (Julie)<=
/li></ul>
<ul style=3D"margin:0;padding-left:81pt;">
<li>Beagle board can be built now, is under testing</li><li>Our goal of the=
se milestones is to have some major features accomplished.</li><li>We have =
a conditional go for M1 provided that we get test result for beagle board t=
est result, and no show stoppers.</li><li><span style=3D"background-color:y=
ellow;">Proposed plan: </span></li></ul>
<ol style=3D"margin:0;padding-left:108pt;">
<li><span style=3D"background-color:yellow;"><b>Saul</b></span><span style=
=3D"background-color:yellow;">: Check test result with Jiajun and see if th=
ere is any show stoppers</span></li><li><span style=3D"background-color:yel=
low;"><b>Beth</b></span><span style=3D"background-color:yellow;"> send emai=
l for release</span></li><li><span style=3D"background-color:yellow;"><b>Da=
ve</b></span><span style=3D"background-color:yellow;"> follow up with a blo=
g entry</span></li></ol>
<ul style=3D"margin:0;padding-left:54pt;">
<li>Review progress on M2 P1 items (see below) with incomplete designs &#82=
11; 30 min (Song)</li></ul>
<ul style=3D"margin:0;padding-left:81pt;">
<li>N&#43;1 testing for distro testing is on for next milestone. N&#43;1 is=
 the current production version plus the next Alpha version</li><li>LayerTo=
oling design review: <b>AR: Richard to review these items</b><b>&nbsp;</b><=
/li></ul>
<ul style=3D"margin:0;padding-left:81pt;">
<li>Image creator: Jessica sent the detailed task list. Jessica signed off =
the design for these items. The team feels comfortable with the schedule. <=
b>AR: Song to update the wiki.</b></li><li>Multi-lib: we will have separate=
 meeting to address this.</li></ul>
<ul style=3D"margin:0;padding-left:54pt;">
<li>Bug assigning process for bugs assigned to BSP/Tom:</li></ul>
<ul style=3D"margin:0;padding-left:81pt;">
<li>Bugs assigned to BSP/Tom are not necessarily BSP related. Tom would lik=
e to be involved in the bug triage process.</li><li>Don't want to put a bar=
rier for people to file bugs by asking people to spend more time on where t=
he bug should belong when they file bugs.</li><li>QA team is very resource =
limited, probably not appropriate to ask them to spend more time analyzing =
bugs. </li><li>Solution: <b>AR: </b><b>Darren will check new BSP related bu=
gs more regularly and work with Tom to reassign them if needed</b>.</li></u=
l>
<ul style=3D"margin:0;padding-left:54pt;">
<li>Opens:</li></ul>
<ul style=3D"margin:0;padding-left:81pt;">
<li>PPC bugs (414): short term we cannot do much. Mark talked to people in =
PPC community.&nbsp;&nbsp; WRS team has some plan and directions to go. Wor=
k is still in progress. We need help on resources. Find someone to work on =
it in July-Sep. period maybe.<b> AR: Dave
to bring this up to the advisory board</b><b> for help</b><b>.</b></li><li>=
Bruce is good with the current feature and schedule including p2/p3 items.<=
/li></ul>
<div style=3D"padding-left:81pt;"><font face=3D"Times New Roman" size=3D"3"=
><span style=3D"font-size:12pt;">&nbsp;</span></font></div>
<div style=3D"padding-left:81pt;"><font face=3D"Times New Roman" size=3D"3"=
><span style=3D"font-size:12pt;">&nbsp;</span></font></div>
<div style=3D"padding-left:81pt;"><span style=3D"background-color:yellow;">=
Updates marked in yellow</span><font color=3D"#1F497D">&nbsp;</font></div>
<table width=3D"793" style=3D"width:476pt;margin-left:1.4pt;">
<col width=3D"72" style=3D"width:43.4pt;">
<col width=3D"262" style=3D"width:157.45pt;">
<col width=3D"56" style=3D"width:34.5pt;">
<col width=3D"59" style=3D"width:35.65pt;">
<col width=3D"49" style=3D"width:29.85pt;">
<col width=3D"85" style=3D"width:51.1pt;">
<col width=3D"54" style=3D"width:32.4pt;">
<col width=3D"54" style=3D"width:32.9pt;">
<col width=3D"98" style=3D"width:59.2pt;">
<tr>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>F=
eature Name</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>D=
escription</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>P=
riority</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>C=
ommit</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>S=
tatus</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>O=
wner</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>D=
esign Signoff</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>D=
ue</b></span></font></td>
<td><font size=3D"4" color=3D"#1F497D"><span style=3D"font-size:15pt;"><b>C=
omments / Bugzilla Links</b></span></font></td>
</tr>
<tr>
<td>Error handling in bitbake (Design)</td>
<td>Performance improvement (gather input from community on use cases)</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td>Accept</td>
<td>Saul (Scott G)</td>
<td><span style=3D"background-color:yellow;">&nbsp;Richard</span></td>
<td>M2,<span style=3D"background-color:yellow;">Sprint B</span></td>
<td>M2, Sprint A, (Scott to talk with Richard about the design of this item=
 and then come back with update)
<div><span style=3D"background-color:yellow;">Filed bugs (enhancement) in b=
ugzilla, working on priorities and figure out what need to be done in the n=
ext 2 weeks.</span></div>
</td>
</tr>
<tr>
<td>multi-lib complete</td>
<td>multi-lib support for 32-bit &amp; 64-bit and capable of being installe=
d at the same time fully complete</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td>Accept</td>
<td>Richard (Qing/Ke)</td>
<td>&nbsp;</td>
<td>M2, Sprint D</td>
<td>M2, Sprint D</td>
</tr>
<tr>
<td>Image Creator polish</td>
<td>polish and refine Image Creator - See <a href=3D"https://wiki.yoctoproj=
ect.org/wiki/BitBake/GUI/PostOneOh"><font color=3D"blue"><u>https://wiki.yo=
ctoproject.org/wiki/BitBake/GUI/PostOneOh</u></font></a> for details </td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>Accept</td>
<td>Josh</td>
<td>&nbsp;</td>
<td>M2, Sprint D</td>
<td>M2, Sprint D, Jessica/Josh will work on these items</td>
</tr>
<tr>
<td>kernel bloat - development</td>
<td>target =3D boot a minimal image in &lt; 8M - development complete</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>Accept</td>
<td>Darren</td>
<td>&nbsp;</td>
<td>M2, Sprint D</td>
<td>M2, Sprint D</td>
</tr>
<tr>
<td><b>LayerTooling - Dependency handling</b></td>
<td>Dependency handling</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>M2, Sprint C</td>
<td>Paul</td>
<td>&nbsp;</td>
<td>M2, Sprint C</td>
<td>M2 Sprint C, dependent on Sprint C item (LayerTooling), check next Tues=
day</td>
</tr>
<tr>
<td><b>LayerTooling &#8211; layer merging tool</b></td>
<td>Tool to merge (flatten) several layers into one</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>M2, Sprint C</td>
<td>Paul</td>
<td>&nbsp;</td>
<td>M2, Sprint C</td>
<td>M2, Sprint C, under review (Richard)</td>
</tr>
<tr>
<td><b>LayerTooling &#8211; remote layer tool</b></td>
<td>Consider integrating Jeremy Puhlman's remote layers patch</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>M2, Sprint C</td>
<td>Ke/Paul</td>
<td>&nbsp;</td>
<td>M2, Sprint C</td>
<td>Jeremy is working on this, M2, Sprint C</td>
</tr>
<tr>
<td>Package config option enhancement - Plan</td>
<td>Plan our approach to package config option enhancement</td>
<td style=3D"text-align:right;">2</td>
<td>&nbsp;</td>
<td>M2, Design</td>
<td>Richard</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>M2, Design</td>
</tr>
<tr>
<td>multi-lib infrastructure </td>
<td>multi-lib support for 32-bit &amp; 64-bit and capable of being installe=
d at the same time - infrastructure in place (multilib toolchain changes, c=
onfiguration changes)</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td>M2, Sprint A</td>
<td>Richard(Qing/Ke)</td>
<td>&nbsp;</td>
<td>M2, Sprint B </td>
<td>M2, Sprint A, Sprint B</td>
</tr>
<tr>
<td>multi-lib RPM</td>
<td>RPM support for multilib added</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>M2, Sprint B</td>
<td>Richard (Qing)</td>
<td>&nbsp;</td>
<td>M2, Sprint B</td>
<td>M2, Sprint B, too large, dependent on other features, Mark owns the arc=
hitecture, leave for discussion with PRC team</td>
</tr>
<tr>
<td><b>LayerTooling &#8211; output info enhancement</b></td>
<td>1) Show a parse error if a bbappend matches no existing bb. 2) Update b=
anner info to show layers being used and revisions/branches for each one if=
 available</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td>M2, Sprint B</td>
<td>Dexuan</td>
<td>&nbsp;</td>
<td>M2, Sprint B</td>
<td>M2, Sprint B, Richard will look at the design again for these(LayerTool=
ing), need discussion with PRC team</td>
</tr>
<tr>
<td><b>Layer Tooling - Architecture</b></td>
<td>Implement Layer Tooling changes</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td>Accept</td>
<td>Richard (Paul/Daoxien will help)</td>
<td>n/a</td>
<td>M2, Sprint A</td>
<td>M2 Sprint A, still dependent on Jeremy</td>
</tr>
<tr>
<td>Optimize support for Intel hardware features</td>
<td>We need to understand and track each important Intel hardware feature a=
nd how it should be optimally supported in the Intel BSPS. Items that immed=
iately come to mind are power, video, and performance counter settings, etc=
.</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>on-going</td>
<td>Tom/Darren</td>
<td>&nbsp;</td>
<td>M2, Sprint A</td>
<td>M2, Sprint A, Tom/Darren will work together on the design (possibly bre=
ak up this item), target: ww24.1
<div>&nbsp;</div>
<div><span style=3D"background-color:yellow;">We had a kernel meeting, we h=
ave a list of items (a handful of) and will enter them in bugzilla. Will pl=
an these bugs at milestone level instead of at Sprint level</span></div>
<div>&nbsp;</div>
<div><span style=3D"background-color:yellow;">Remove this from feature list=
, track them in bugzilla</span></div>
</td>
</tr>
<tr>
<td>kernel bloat - analysis (Design)</td>
<td>target =3D boot a minimal image in &lt; 8M - analysis complete</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td>Accept</td>
<td>Darren</td>
<td>&nbsp;</td>
<td>M2, <span style=3D"background-color:yellow;">Sprint B</span></td>
<td>M2, <span style=3D"background-color:yellow;">Sprint B</span>, need to h=
ave specifics and design
<div>&nbsp;</div>
<div><span style=3D"background-color:yellow;">Beagle board kernel fix is ta=
king longer than expected, this one needs to be moved to Sprint B.</span></=
div>
</td>
</tr>
<tr>
<td><b>LayerTooling &#8211; combo layer tool</b></td>
<td>Tool to manage combination repos (e.g. the poky repo)</td>
<td style=3D"text-align:right;">1</td>
<td>Yes</td>
<td style=3D"text-align:right;">70%</td>
<td>Ke</td>
<td>&nbsp;</td>
<td>M2, Sprint A</td>
<td>M2, Sprint A</td>
</tr>
<tr>
<td>Changes for Image Creator - phase 3</td>
<td>Phase 3: package format job done &#43; image output type job done</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>Accept</td>
<td>Joshua</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>M2, Sprint B, needs to work Joshua and rearrange</td>
</tr>
<tr>
<td>Changes for Image Creator - phase 4</td>
<td>Phase 4: complete plug-in</td>
<td style=3D"text-align:right;">1</td>
<td>&nbsp;</td>
<td>Accept</td>
<td>Jessica</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>M2, Sprint D, need reschedule</td>
</tr>
</table>
<div>&nbsp;</div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;">&nbsp;</span></font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A01DBB3ORSMSX101amrcorpi_--
