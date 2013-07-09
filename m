Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBAAE013CB
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 16:46:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2013 16:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1031,1363158000"; 
	d="scan'208,217";a="367459280"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2013 16:46:28 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.229]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.217]) with mapi id
	14.03.0123.003; Tue, 9 Jul 2013 16:46:28 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	09, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac58/m1hG9ZJ6WLhQL2aWaLO2JWplgAAArBw
Date: Tue, 9 Jul 2013 23:46:28 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EE69FE5@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 09, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 09 Jul 2013 23:46:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EE69FE5ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE69FE5ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
AlexG, MichaelH, ScottR, PaulE, AnnM, Saul, JeffP, Denys, Darren, TomZ, Ale=
xG, LaurentiuP, NitinK, Cristian, Belen, Ross, Mark, SeanH, MatthewW, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  . RC1 QA is almost done. QA report is available here:https://wiki.yoctopr=
oject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1
  . Saul and the triage team will look at the bugs we have and decide if we=
 need RC2.
  . Bug fixing is slow last week, mostly due to the US holidays. Call the t=
eam to focus more on bug fixing and bring the wdd number down.
  . Please update Bugzilla with your feature/bug status. Move items to futu=
re milestones if they did not get done in the target milestone. (Do not mov=
e high features/bugs by yourself)
* SWAT team rotation: Ioana -> Laurentiu Palcu
* Opens - 10 min
  - AlexG: Doc changes for feature verification. Michael started working on=
 that. ETA the end of this week. RFC sent out weeks ago. No comments or obj=
ection so far. but Saul/Darren has concerns now. Song: please reply to the =
email asap. We need to resolve this really soon.
* Team Sharing - 20 min
  - Paul: automated runtime testing framework from Stephan is merged in mas=
ter. If you are interested, please take a look. More patches are coming. A =
new series of patches for 1.4 backporting. In preparation for 1.4.2.
  - Saul: pulling patches and doing review now. Trying to determine whether=
 we should have M2 RC2. Will be doing that later today.
  - AlexD: Finally we reached a point where we can demonstrate the basic wo=
rkflow of WebHOB.
  - Michael: heading down open source lab. Will be working with Saul on RC2=
 if there is. Package reporting system is working.
  - Sean: encourage people to comment on Richard's comment on TSC. OE board=
 is considering recommendations we would like to make regarding that topic.




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE69FE5ORSMSX108amrcor_
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
<div>AlexG, MichaelH, ScottR, PaulE, AnnM, Saul, JeffP, Denys, Darren, TomZ=
, AlexG, LaurentiuP, NitinK, Cristian, Belen, Ross, Mark, SeanH, MatthewW, =
Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; . RC1 QA is almost done. QA report is available here:<a href=3D=
"https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.=
5_M2.RC1"><font size=3D"2" color=3D"blue"><span style=3D"font-size:10pt;"><=
u>https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1=
.5_M2.RC1</u></span></font></a></div>
<div>&nbsp; . Saul and the triage team will look at the bugs we have and de=
cide if we need RC2.&nbsp; </div>
<div>&nbsp; . Bug fixing is slow last week, mostly due to the US holidays. =
Call the team to focus more on bug fixing and bring the wdd number down.</d=
iv>
<div>&nbsp; . Please update Bugzilla with your feature/bug status. Move ite=
ms to future milestones if they did not get done in the target milestone. (=
Do not move high features/bugs by yourself)</div>
<div>* SWAT team rotation: Ioana -&gt; Laurentiu Palcu</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - AlexG: Doc changes for feature verification. Michael started =
working on that. ETA the end of this week. RFC sent out weeks ago. No comme=
nts or objection so far. but Saul/Darren has concerns now. Song: please rep=
ly to the email asap. We need to resolve
this really soon.</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Paul: automated runtime testing framework from Stephan is mer=
ged in master. If you are interested, please take a look. More patches are =
coming. A new series of patches for 1.4 backporting. In preparation for 1.4=
.2.</div>
<div>&nbsp; - Saul: pulling patches and doing review now. Trying to determi=
ne whether we should have M2 RC2. Will be doing that later today.</div>
<div>&nbsp; - AlexD: Finally we reached a point where we can demonstrate th=
e basic workflow of WebHOB. </div>
<div>&nbsp; - Michael: heading down open source lab. Will be working with S=
aul on RC2 if there is. Package reporting system is working. </div>
<div>&nbsp; - Sean: encourage people to comment on Richard's comment on TSC=
. OE board is considering recommendations we would like to make regarding t=
hat topic.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE69FE5ORSMSX108amrcor_--
