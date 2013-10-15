Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D2A4E01709
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:56:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Oct 2013 14:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,502,1378882800"; 
	d="scan'208,217";a="393441006"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 15 Oct 2013 14:56:02 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.175]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.143]) with mapi id
	14.03.0123.003; Tue, 15 Oct 2013 14:56:02 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	October 15, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac7J8UITPnEJ6ZV9RwebSudDKu+8xQAAAmNA
Date: Tue, 15 Oct 2013 21:56:02 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF797CB@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 15, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 15 Oct 2013 21:56:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF797CBORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF797CBORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, Cristian, AlexG, Matthew, Paul, ScottR, Saul, TomZ, JeffP, Richard, =
Jessica, Ross, Mark, MichaelH, Beth, Denys, Darren, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/charts/combo.html
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status

  . We had a 1.5 RC build last week. Likely to be our last 1.5 RC. QA is ru=
nning full pass on it. Had some problems with ADT, ADT got rebuilt, issues =
are not release blockers.
  . WDD stabilized, performance seem fine so far.
  . Will schedule 1.5 release readiness meeting for Wednesday morning U.S. =
pacific time.
  . There are patches for the tar issue in master.,
* SWAT team rotation: Saul -> Cristian Iorga
* Opens - 10 min
  - Jessica: Toaster
    . Code name for webhob. Due to issues of webhob, it did not manage to g=
o in for 1.5. We will release to the community to give people early access.=
 It's a standalone release targeting first week of November.
    . ScottR: have a clean name change throughout the code and docs. Code, =
directory, wiki have been changed. Mailing list needs to be changed. (Micha=
el will do that). Needs to announce it for others to change the filters bef=
ore changing the name. A couple of days to change this. Thanks, Michael!

* Team Sharing - 20 min
  - Mark: preparing for the ELCE, presentation is on SPDX Yocto project. U =
of Omaha, created a project using fossology. Doing testing for this present=
ation. Working well, approaching the point of being usable. Fossology serve=
r is quite slow. Progress has been made. If you are interested, please let =
me or Beth know. Prototype of SPDX generation is in 1.5.
  - RP: strange issue with for bug #5133, gcc garage collector had some iss=
ues. Got this issue nailed down.
  - Corneliu: There was an intern who finished his work a few months ago. A=
 light weight web interface for HOB, he's working on his project and he lik=
es what he is doing. New user oriented mainly. Hope we can give him some he=
lp. He's not on the mailing list. Encouraging him to get on the mailing lis=
t.
  - Michael: prep work on infrastructure switching is taking backseat due t=
o dev day prep. Working on build time chart.





--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF797CBORSMSX108amrcor_
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
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Nitin, Cristian, AlexG, Matthew, Paul, ScottR, Saul, TomZ, JeffP, Rich=
ard, Jessica, Ross, Mark, MichaelH, Beth, Denys, Darren, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/charts/combo.html"><fo=
nt color=3D"blue"><u>https://wiki.yoctoproject.org/charts/combo.html</u></f=
ont></a></div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp;</div>
<div>&nbsp; . We had a 1.5 RC build last week. Likely to be our last 1.5 RC=
. QA is running full pass on it. Had some problems with ADT, ADT got rebuil=
t, issues are not release blockers.</div>
<div>&nbsp; . WDD stabilized, performance seem fine so far. </div>
<div>&nbsp; . Will schedule 1.5 release readiness meeting for Wednesday mor=
ning U.S. pacific time. </div>
<div>&nbsp; . There are patches for the tar issue in master., </div>
<div>* SWAT team rotation: Saul -&gt; Cristian Iorga</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Jessica: Toaster</div>
<div>&nbsp;&nbsp;&nbsp; . Code name for webhob. Due to issues of webhob, it=
 did not manage to go in for 1.5. We will release to the community to give =
people early access. It's a standalone release targeting first week of Nove=
mber. </div>
<div>&nbsp;&nbsp;&nbsp; . ScottR: have a clean name change throughout the c=
ode and docs. Code, directory, wiki have been changed. Mailing list needs t=
o be changed. (Michael will do that). Needs to announce it for others to ch=
ange the filters before changing the name. A couple
of days to change this. Thanks, Michael!</div>
<div>&nbsp;</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Mark: preparing for the ELCE, presentation is on SPDX Yocto p=
roject. U of Omaha, created a project using fossology. Doing testing for th=
is presentation. Working well, approaching the point of being usable. Fosso=
logy server is quite slow. Progress has
been made. If you are interested, please let me or Beth know. Prototype of =
SPDX generation is in 1.5. </div>
<div>&nbsp; - RP: strange issue with for bug #5133, gcc garage collector ha=
d some issues. Got this issue nailed down.</div>
<div>&nbsp; - Corneliu: There was an intern who finished his work a few mon=
ths ago. A light weight web interface for HOB, he's working on his project =
and he likes what he is doing. New user oriented mainly. Hope we can give h=
im some help. He's not on the mailing
list. Encouraging him to get on the mailing list. </div>
<div>&nbsp; - Michael: prep work on infrastructure switching is taking back=
seat due to dev day prep. Working on build time chart.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF797CBORSMSX108amrcor_--
