Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2638BE0059A
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 16:33:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Mar 2012 16:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="142187024"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga002.fm.intel.com with ESMTP; 20 Mar 2012 16:33:49 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 20 Mar 2012 16:33:49 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.199]) with mapi id
	14.01.0355.002; Tue, 20 Mar 2012 16:33:49 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	20, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHNBvHmRgY+Fi8ICESeKRQmK6aDBA==
Date: Tue, 20 Mar 2012 23:33:48 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A46AE335D@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 20, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 20 Mar 2012 23:33:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A46AE335DORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A46AE335DORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Current (M4) Priorities: HOB2, build appliance, bug fixing, warning message=
s

Attendee:
Saul, Joshua, Paul, Richard, Tom, Bruce, Jessica, Bjorn, Darren, Jeremy, De=
nys, Dave, Song

Agenda
* Opens collection - 5 min (Song)
* 1.1.1 status: published schedule.
  - Hold off on 1.1.1 while verify BSP compatibility. QA has mostly complet=
ed, no new issues found.
  - QA has done, follow up with Beth. Song will publish point release sched=
ule.
* Yocto 1.2 M4 status and release criteria review - 20 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status
  - Plan for the consolidated branch: don't want to put things in master ri=
ght away. Building a consolidated branch with all submitted patches and the=
n merge them to master by this Wednesday.
  - RP: We are now into stabilization: will be strict about merging bug fix=
ing, make sure we do what we can to fix bugs.
  - number of open bugs are high.
  - Priorities: HOB2, build appliance, bug fixing, warning messages
  - WDD, ideally we should bring it down to 700.
  - N+1 distro testing, starting from RC1.
  - Documentation: update to the release.
  - We will try to keep build performance at the same level
  - Package update: Done. Updated over 70 packages. No more package update.
  - Warning messages in release criteria. Moving forward, change some warni=
ng to error. For 1.3. For 1.2.


  - M4: Song will update the wiki page.
    - Complete most of the P1 features, achieve the release goal of improvi=
ng usability and user experience. Most of the P2/P3 features.
    -
    -
* SWAT team rotation: Paul->Jessica
* Opens - 10 min
  - stabilization

* Team Sharing - 20 min
 Denys: Getting ready for the BSP summit. Busy with Meta-ti and other layer=
s.
 Darren: A couple of updates on bugs, mostly on internal things.
 Jessica: Resume Eclipse plugin for BSP tool.
 Bruce: Finishing up 1.2 items, waiting for 3.4 merge window. 3.2.11 is 1.2=
 kernel version.
 Tom: spent time on BSP tools, addressing all inputs from M3. updated wiki =
for how to use it. Updating all meta-intel BSPs, working on internal BSPs.
 Richard: been doing patch review and merging. Warning fixes. More of the s=
ame this week,
 Paul: Been doing bug fixes and warning fixes, helping ScottR with doc chan=
ges. Build history data analysis. Will continue this week.
 Joshua: Help on HOB2, code view, integration issues.
 Saul: Patch review, validation, fixing warnings, build appliance patches. =
Will be out next week.




--_000_7E680CB2A76BB8438D08CF13C09FC53A46AE335DORSMSX101amrcor_
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
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">
<div>Current (M4) Priorities: <font face=3D"Calibri" size=3D"2"><span style=
=3D"font-size:11pt;">HOB2, build appliance, bug fixing, warning messages</s=
pan></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">Atte=
ndee:</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">Saul=
, Joshua, Paul, Richard, Tom, Bruce, Jessica, Bjorn, Darren, Jeremy, Denys,=
 Dave, Song</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div>Agenda</div>
<div>* Opens collection &#8211; 5 min (Song)</div>
<div>* 1.1.1 status: published schedule.</div>
<div>&nbsp; - Hold off on 1.1.1 while verify BSP compatibility. QA has most=
ly completed, no new issues found. </div>
<div>&nbsp; - QA has done, follow up with Beth. Song will publish point rel=
ease schedule.</div>
<div>* Yocto 1.2 M4 status and release criteria review &#8211; 20 min (Song=
/Team)</div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=
"><font face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-siz=
e:10.5pt;"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status<=
/u></span></font></a><font face=3D"Consolas" size=3D"2"><span style=3D"font=
-size:10.5pt;">
</span></font></span></font></div>
<div>&nbsp; - Plan for the consolidated branch: don't want to put things in=
 master right away. Building a consolidated branch with all submitted patch=
es and then merge them to master by this Wednesday.</div>
<div>&nbsp; - RP: We are now into stabilization: will be strict about mergi=
ng bug fixing, make sure we do what we can to fix bugs. </div>
<div>&nbsp; - number of open bugs are high.</div>
<div>&nbsp; - Priorities: <font face=3D"Calibri" size=3D"2"><span style=3D"=
font-size:11pt;">HOB2, build appliance, bug fixing, warning messages</span>=
</font></div>
<div>&nbsp; - WDD, ideally we should bring it down to 700.</div>
<div>&nbsp; - N&#43;1 distro testing, starting from RC1.</div>
<div>&nbsp; - Documentation: update to the release.</div>
<div>&nbsp; - We will try to keep build performance at the same level </div=
>
<div>&nbsp; - Package update: Done. Updated over 70 packages. No more packa=
ge update.</div>
<div>&nbsp; - Warning messages in release criteria. Moving forward, change =
some warning to error. For 1.3. For 1.2.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; - M4: Song will update the wiki page.</div>
<div>&nbsp;&nbsp;&nbsp; - Complete most of the P1 features, achieve the rel=
ease goal of improving usability and user experience. Most of the P2/P3 fea=
tures.</div>
<div>&nbsp;&nbsp;&nbsp; - </div>
<div>&nbsp;&nbsp;&nbsp; - </div>
<div>* SWAT team rotation: Paul-&gt;Jessica</div>
<div>* Opens - 10 min</div>
<div>&nbsp; - stabilization</div>
<div>&nbsp;</div>
<div>* Team Sharing - 20 min</div>
<div> Denys: Getting ready for the BSP summit. Busy with Meta-ti and other =
layers.</div>
<div> Darren: A couple of updates on bugs, mostly on internal things.</div>
<div> Jessica: Resume Eclipse plugin for BSP tool.</div>
<div> Bruce: Finishing up 1.2 items, waiting for 3.4 merge window. 3.2.11 i=
s 1.2 kernel version.</div>
<div> Tom: spent time on BSP tools, addressing all inputs from M3. updated =
wiki for how to use it. Updating all meta-intel BSPs, working on internal B=
SPs.</div>
<div> Richard: been doing patch review and merging. Warning fixes. More of =
the same this week,</div>
<div> Paul: Been doing bug fixes and warning fixes, helping ScottR with doc=
 changes. Build history data analysis. Will continue this week.</div>
<div> Joshua: Help on HOB2, code view, integration issues.</div>
<div> Saul: Patch review, validation, fixing warnings, build appliance patc=
hes. Will be out next week.</div>
<div>&nbsp;</div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A46AE335DORSMSX101amrcor_--
