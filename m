Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 793C8E01423
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 17:27:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 May 2013 17:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,761,1363158000"; 
	d="scan'208,217";a="309249212"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 28 May 2013 17:27:49 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 28 May 2013 17:27:49 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.51]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.48]) with mapi id
	14.03.0123.003; Tue, 28 May 2013 17:27:21 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	28, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5cAz75uaMnrU4tSZC4XKoZ12zyQAAAA+eA
Date: Wed, 29 May 2013 00:27:48 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A71916B51@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 28, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 29 May 2013 00:27:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A71916B51ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A71916B51ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Sean, AlexG, MichaelH, Corneliu, Cristian, Darren, Beth, Richard, Tom, Paul=
, Belen, Nitin, Bruce, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.4.1 status - 5 min (Paul)
  - Patches in my queue built ok, sent to mailing list. Will be merged. One=
 bug fix patch has been sent, about x32 key creation. Sent email to bug own=
ers for 1.4.1 bugs. 10 bugs in the list: 2 doc bugs. A couple cannot be rep=
roduced. 4347/4358/4518 don't have patches. Action item: RP will talk with =
Paul and scrub 1.4.1 bugs.
  - RC2 conflict with QA vacation. Two options: 1. pull in schedule if poss=
ible. 2. let RC2 slip a few days.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Bugs: 290, higher than normal. The QA report has a lot of red. Darren w=
ill follow up with the bug scrub team to make sure we scrub the bugs this w=
eek. Find out if there is any problem. Darren will.is there any problem.
  - Feature development: M1 high feature 1584, to deliver a plan integratin=
g security tools with QA automated process. RO QA team will follow up and m=
ake sure we deliver in M1.
  - Song will follow up with AlexD on webhob development.

* SWAT team rotation: Ross -> Ioana Grigoropol (Song will send email to Ioa=
na)

* Opens - 10 min

* Team Sharing - 20 min
  - RP: spend time mostly on bitbake. Web hob, memory residing bitbake requ=
ire bitbake change. Especially the cooker. Less time doing other things suc=
h as patch merging. A number of bitbake hang, do-package hanging, do not kn=
ow how widespread those issues are, if people see them, please let me know.=
 Would like to have more date points.
  - Beth: An intern starting on YP. She's going to doing some work on secur=
ity.
  - Bruce: working through some non-x32 work. If someone is working on it, =
please let me know. Network issues, 3.4 kernel, will be working on 3.10 ker=
nel. 3.4 - ltsi kernel, 3.8 current kernel, 3.10 dev kernel. making them wo=
rk for gcc 4.8. RP: qemu arm is not booting in the QA tests. AlexG will fol=
low up with more information.
  - MichaelH: publishing build blog will continue. Drupal conference.  Putt=
ing Linux foundation collaborative sign on our site. Getting oe list workin=
g properly. Meeting with OSL, after power upgrade, UPS is not adequate. We =
will move to another row. Will be some downtime for this.
  - Darren: released RC2 for Minnow BSP and firmware last week. Find a way =
to populate the MAC. Koen released the RC2 version of the Angstrom image go=
ing through final stage of testing. The final board is being manufactured.



--_000_7E680CB2A76BB8438D08CF13C09FC53A71916B51ORSMSX108amrcor_
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
<div>Sean, AlexG, MichaelH, Corneliu, Cristian, Darren, Beth, Richard, Tom,=
 Paul, Belen, Nitin, Bruce, Song</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.4.1 status - 5 min (Paul)</div>
<div>&nbsp; - Patches in my queue built ok, sent to mailing list. Will be m=
erged. One bug fix patch has been sent, about x32 key creation. Sent email =
to bug owners for 1.4.1 bugs. 10 bugs in the list: 2 doc bugs. A couple can=
not be reproduced. 4347/4358/4518 don't
have patches. Action item: RP will talk with Paul and scrub 1.4.1 bugs. </d=
iv>
<div>&nbsp; - RC2 conflict with QA vacation. Two options: 1. pull in schedu=
le if possible. 2. let RC2 slip a few days. </div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Bugs: 290, higher than normal. The QA report has a lot of red=
. Darren will follow up with the bug scrub team to make sure we scrub the b=
ugs this week. Find out if there is any problem. Darren will.is there any p=
roblem.</div>
<div>&nbsp; - Feature development: M1 high feature 1584, to deliver a plan =
integrating security tools with QA automated process. RO QA team will follo=
w up and make sure we deliver in M1. </div>
<div>&nbsp; - Song will follow up with AlexD on webhob development.</div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Ross -&gt; Ioana Grigoropol (Song will send emai=
l to Ioana)</div>
<div>&nbsp;</div>
<div>* Opens - 10 min </div>
<div>&nbsp;</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - RP: spend time mostly on bitbake. Web hob, memory residing bi=
tbake require bitbake change. Especially the cooker. Less time doing other =
things such as patch merging. A number of bitbake hang, do-package hanging,=
 do not know how widespread those issues
are, if people see them, please let me know. Would like to have more date p=
oints.</div>
<div>&nbsp; - Beth: An intern starting on YP. She's going to doing some wor=
k on security.</div>
<div>&nbsp; - Bruce: working through some non-x32 work. If someone is worki=
ng on it, please let me know. Network issues, 3.4 kernel, will be working o=
n 3.10 kernel. 3.4 - ltsi kernel, 3.8 current kernel, 3.10 dev kernel. maki=
ng them work for gcc 4.8. RP: qemu arm
is not booting in the QA tests. AlexG will follow up with more information.=
</div>
<div>&nbsp; - MichaelH: publishing build blog will continue. Drupal confere=
nce.&nbsp; Putting Linux foundation collaborative sign on our site. Getting=
 oe list working properly. Meeting with OSL, after power upgrade, UPS is no=
t adequate. We will move to another row. Will
be some downtime for this.&nbsp; </div>
<div>&nbsp; - Darren: released RC2 for Minnow BSP and firmware last week. F=
ind a way to populate the MAC. Koen released the RC2 version of the Angstro=
m image going through final stage of testing. The final board is being manu=
factured. </div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A71916B51ORSMSX108amrcor_--
