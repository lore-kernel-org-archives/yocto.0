Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C238D4C800BB
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2011 16:47:21 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jun 2011 14:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,316,1304319600"; d="scan'208,217";a="13304377"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2011 14:47:21 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Jun 2011 14:47:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.114]) by
	ORSMSX152.amr.corp.intel.com ([10.22.226.39]) with mapi id
	14.01.0289.001; Fri, 3 Jun 2011 14:47:20 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Agenda: Yocto Technical Team (Tuesday, June 07, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time )
Thread-Index: AcwT91vIQXzimQQu4EyrqKld1VviuwOO/OjgAAEKkJA=
Date: Fri, 3 Jun 2011 21:47:19 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A01145A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: FW: Agenda: Yocto Technical Team (Tuesday, June 07, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time )
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
X-List-Received-Date: Fri, 03 Jun 2011 21:47:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A01145AORSMSX101amrcorpi_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A01145AORSMSX101amrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tuesday, June 07, 2011, 08:00 AM US Pacific Time
916-356-2663, 8-356-2663, Bridge: 94, Passcode: 9320476
Speed dial for iPhone: inteldialer://94,9320476 | Learn more<http://it.inte=
l.com/products/handhelds/speeddial.htm>

Agenda:
*       Review Yocto 1.1 M1 Release Criteria - 10 min (Julie)
o       See details at:  https://wiki.yoctoproject.org/wiki/Yocto_Project_v=
1.1_Release_Criteria
*       Discuss M1 1.1 M1 Release Status, go/no-go vote - 10 min (Julie)
*       Review progress on M2 P1 items (see below) with incomplete designs =
- 30 min (Song)
*       Opens - 10 min

Feature Name    Description     Priority        Commit  Status  Owner   Des=
ign Signoff  Due     Comments / Bugzilla Links
Error handling in bitbake (Design)      Performance improvement (gather inp=
ut from community on use cases)      1       Yes     Accept  Saul (Scott G)=
          M2,Sprint A     M2, Sprint A, (Scott to talk with Richard about t=
he design of this item and then come back with update)
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
kernel bloat - analysis (Design)        target =3D boot a minimal image in =
< 8M - analysis complete       1       Yes     Accept  Darren          M2, =
Sprint A    M2, Sprint A, need to have specifics and design
LayerTooling - combo layer tool Tool to manage combination repos (e.g. the =
poky repo)   1       Yes     70%     Ke              M2, Sprint A    M2, Sp=
rint A
Changes for Image Creator - phase 3     Phase 3:  package format job done +=
 image output type job done  1               Accept  Joshua                =
  M2, Sprint B, needs to work Joshua and rearrange
Changes for Image Creator - phase 4     Phase 4: complete plug-in       1  =
             Accept  Jessica                 M2, Sprint D, need reschedule



--_000_7E680CB2A76BB8438D08CF13C09FC53A01145AORSMSX101amrcorpi_
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
<font face=3D"Verdana" size=3D"2"><span style=3D"font-size:8.5pt;">
<div><font color=3D"#444444"><b>Tuesday, June 07, 2011, 08:00 AM US Pacific=
 Time <br>

</b>916-356-2663, 8-356-2663, Bridge: 94, Passcode: 9320476<br>

Speed dial for iPhone: inteldialer://94,9320476 | <a href=3D"http://it.inte=
l.com/products/handhelds/speeddial.htm"><font color=3D"blue"><u>Learn more<=
/u></font></a></font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#1F497D"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">Agen=
da:</span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<li>Review Yocto 1.1 M1 Release Criteria &#8211; 10 min (Julie)</li></span>=
</font>
</ul>
<ul style=3D"margin:0;padding-left:72pt;">
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<li>See details at:&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yoc=
to_Project_v1.1_Release_Criteria"><font color=3D"blue"><u>https://wiki.yoct=
oproject.org/wiki/Yocto_Project_v1.1_Release_Criteria</u></font></a> </li><=
/span></font>
</ul>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<li>Discuss M1 1.1 M1 Release Status, go/no-go vote &#8211; 10 min (Julie)<=
/li><li>Review progress on M2 P1 items (see below) with incomplete designs =
&#8211; 30 min (Song)</li><li>Opens &#8211; 10 min</li></span></font>
</ul>
<div><font face=3D"Calibri" size=3D"2" color=3D"#1F497D"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<table width=3D"1568" style=3D"width:941pt;margin-left:0.75pt;">
<col width=3D"163" style=3D"width:98.2pt;">
<col width=3D"462" style=3D"width:277.2pt;">
<col width=3D"100" style=3D"width:60.5pt;">
<col width=3D"101" style=3D"width:61.1pt;">
<col width=3D"88" style=3D"width:52.9pt;">
<col width=3D"146" style=3D"width:87.65pt;">
<col width=3D"104" style=3D"width:62.85pt;">
<col width=3D"105" style=3D"width:63.15pt;">
<col width=3D"296" style=3D"width:177.9pt;">
<tr height=3D"26" style=3D"height:15.75pt;">
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Feature Name</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Description</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Priority</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Commit</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Status</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Owner</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Design Signoff</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Due</b></span></font></td>
<td><font face=3D"Calibri" size=3D"4" color=3D"#1F497D"><span style=3D"font=
-size:15pt;"><b>Comments / Bugzilla Links</b></span></font></td>
</tr>
<tr height=3D"75" style=3D"height:45pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Error handling in bit=
bake (Design)</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Performance improveme=
nt (gather input from community on use cases)</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Saul (Scott G)</span>=
</font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2,Sprint A</span></f=
ont></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A, (Scott =
to talk with Richard about the design of this item and then come back with =
update)</span></font></td>
</tr>
<tr height=3D"75" style=3D"height:45pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">multi-lib complete</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">multi-lib support for=
 32-bit &amp; 64-bit and capable of being installed at the same time fully =
complete</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Richard (Qing/Ke)</sp=
an></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D</span></=
font></td>
</tr>
<tr height=3D"75" style=3D"height:45pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Image Creator polish<=
/span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">polish and refine Ima=
ge Creator - See
<a href=3D"https://wiki.yoctoproject.org/wiki/BitBake/GUI/PostOneOh">https:=
//wiki.yoctoproject.org/wiki/BitBake/GUI/PostOneOh</a> for details </span><=
/font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Josh</span></font></t=
d>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D, Jessica=
/Josh will work on these items</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">kernel bloat - develo=
pment</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">target =3D boot a min=
imal image in &lt; 8M - development complete</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Darren</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D</span></=
font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">LayerTooling - Depend=
ency handling</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Dependency handling</=
span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;"> </span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Paul</span></font></t=
d>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2 Sprint C, dependen=
t on Sprint C item (LayerTooling), check next Tuesday</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">LayerTooling &#8211; =
layer merging tool</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Tool to merge (flatte=
n) several layers into one</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Paul</span></font></t=
d>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C, under r=
eview (Richard)</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">LayerTooling &#8211; =
remote layer tool</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Consider integrating =
Jeremy Puhlman's remote layers patch</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Ke/Paul</span></font>=
</td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint C</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Jeremy is working on =
this, M2, Sprint C</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Package config option=
 enhancement - Plan</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Plan our approach to =
package config option enhancement</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">2</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Design</span></fo=
nt></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Richard</span></font>=
</td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Design</span></fo=
nt></td>
</tr>
<tr height=3D"125" style=3D"height:75pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">multi-lib infrastruct=
ure </span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">multi-lib support for=
 32-bit &amp; 64-bit and capable of being installed at the same time - infr=
astructure in place (multilib toolchain changes,
configuration changes)</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Richard(Qing/Ke)</spa=
n></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;"> </span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B </span><=
/font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A, Sprint =
B</span></font></td>
</tr>
<tr height=3D"75" style=3D"height:45pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">multi-lib RPM</span><=
/font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">RPM support for multi=
lib added</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Richard (Qing)</span>=
</font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B, too lar=
ge, dependent on other features, Mark owns the architecture, leave for disc=
ussion with PRC team</span></font></td>
</tr>
<tr height=3D"125" style=3D"height:75pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">LayerTooling &#8211; =
output info enhancement</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">1) Show a parse error=
 if a bbappend matches no existing bb. 2) Update banner info to show layers=
 being used and revisions/branches for each
one if available</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Dexuan</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;"> </span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B, Richard=
 will look at the design again for these(LayerTooling), need discussion wit=
h PRC team</span></font></td>
</tr>
<tr height=3D"75" style=3D"height:45pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Layer Tooling - Archi=
tecture</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Implement Layer Tooli=
ng changes</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Richard (Paul/Daoxien=
 will help)</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">n/a</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2 Sprint A, still de=
pendent on Jeremy</span></font></td>
</tr>
<tr height=3D"150" style=3D"height:90pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Optimize support for =
Intel hardware features</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">We need to understand=
 and track each important Intel hardware feature and how it should be optim=
ally supported in the Intel BSPS. Items
that immediately come to mind are power, video, and performance counter set=
tings, etc.</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">on-going</span></font=
></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Tom/Darren</span></fo=
nt></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A, Tom/Dar=
ren will work together on the design (possibly break up this item), target:=
 ww24.1</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">kernel bloat - analys=
is (Design)</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">target =3D boot a min=
imal image in &lt; 8M - analysis complete</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Darren</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A, need to=
 have specifics and design</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">LayerTooling &#8211; =
combo layer tool</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Tool to manage combin=
ation repos (e.g. the poky repo)</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Yes</span></font></td=
>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">70%<=
/span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Ke</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;"> </span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A</span></=
font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint A</span></=
font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Changes for Image Cre=
ator - phase 3</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Phase 3:&nbsp; packag=
e format job done &#43; image output type job done</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Joshua</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;"> </span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint B, needs t=
o work Joshua and rearrange</span></font></td>
</tr>
<tr height=3D"50" style=3D"height:30pt;">
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Changes for Image Cre=
ator - phase 4</span></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Phase 4: complete plu=
g-in</span></font></td>
<td style=3D"text-align:right;background-color:yellow;"><font face=3D"Calib=
ri" size=3D"2"><span style=3D"font-size:11pt;background-color:yellow;">1</s=
pan></font></td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Accept</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">Jessica</span></font>=
</td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">&nbsp;</span></font><=
/td>
<td style=3D"background-color:yellow;"><font face=3D"Calibri" size=3D"2"><s=
pan style=3D"font-size:11pt;background-color:yellow;">M2, Sprint D, need re=
schedule</span></font></td>
</tr>
</table>
<div><font face=3D"Calibri" size=3D"2" color=3D"#1F497D"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A01145AORSMSX101amrcorpi_--
