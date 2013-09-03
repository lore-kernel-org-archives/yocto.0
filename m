Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DBDE01358
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 13:31:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Sep 2013 13:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1016,1367996400"; 
	d="scan'208,217";a="372944694"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 03 Sep 2013 13:31:07 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.144]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.216]) with mapi id
	14.03.0123.003; Tue, 3 Sep 2013 13:31:07 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 03,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6o5GrrDMy5R1b5RPeTuHEbedHpigAAA83w
Date: Tue, 3 Sep 2013 20:31:07 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF32A0A@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 03, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 03 Sep 2013 20:31:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF32A0AORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF32A0AORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, JeffP, Belen, Cristiana, AlexD, AlexG, Paul, Saul, Richard, TomZ, Be=
len, DaveST, Corneliu, LaurentiuP, Jefro, ScottR, Bj=F6rn, PeterB, Jessica,=
  MatthewW, Bruce,  Eren, MihaiL, MichaelH, Simar(?), Song

Agenda:

* Opens collection - 5 min (Song)
* Congratulations to the team on 1.4.2 release. Thanks to Paul and others t=
o make this happen.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Bug fixing: Had RC2 for M4. QA is running full pass. More bugs opened l=
ast week than we fixed. WDD number is up.
  - Had CCB meeting last week. Approved:
    . 1950 downgrade to Medium from High. Not possible.
    . 3847 move to M5, Let Tom focus on it.
    . Meta-security layer. A layer to improve binary security, tools to sca=
n ports, etc. to improve system security. Bastille Linux is not usable, usi=
ng other set of tools. Saul will follow up and document a solution. Dave wi=
ll write a new feature for 1.6. There will also be patches coming in the ne=
xt week or so for this layer.
    . 1.4.2 release
  - A handful of patches on the mailing list. RP is looking into it. Deploy=
ment changes may need to be reworked. Package BB class change, those are wo=
rth looking at, moving forward, will merge.
* SWAT team rotation: Nitin -> Beth ( Song will follow up with Beth).
* Opens - 10 min
  - AlexG- hardware for generic BSP, can we run the BSP on qemu?
    . Already started testing on existing hardware for the generic BSP.
    . For weekly testing: test it on two or three hardware. 64bit and 32 bi=
t. Which hardware shall we choose?
    . Alex will start an email thread with Ross, Darren, and Tom.
    . Generic BSP should run on qemu. Run it outside the AB first, then ask=
 Beth to include in AB.
  - Michael - downtime this week for power upgrade.
    . Moving to a new rack. Would like to have it done before school season=
 starts.
    . Today is the best day for this. Michael will try to do it this aftern=
oon. All YP services will be down for 1 hour. AB will be down longer (4-5 h=
ours). Will have everything backup be the end of the working day.
  - Dave: YP 1.6
    . (RP) Features for 1.6. Feature submission is ongoing. Would like to r=
emind people, if you have specific things, please put in bugzilla. If it's =
more generic, please talk to Richard.
  - RP: PR server
    . Bitbake was timing out. PR server had issues. Response time was 60 se=
conds. Using 4GB of memory. Addressed most of them, query time down to mili=
seconds! Encourage people to use the latest master.
    . Doing select call on the open pipes for bitbake idle handlers. Things=
 are more responsive now.
    . _remove operator to avoid adding too much code for each variable. Add=
ressed Chris' concern, _remove becomes a keyword. Any function name or vari=
able that has '_remove' in it will have problems. This should be in the rel=
ease note.
    . Change to bitbake: Fixed a problem. Now bit bake can be run in any di=
rectory containing a build directory. Or, anywhere in the file system as fa=
r as the build directory is set in BBPath.
* Team Sharing - 20 min





--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF32A0AORSMSX108amrcor_
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
<div>Nitin, JeffP, Belen, Cristiana, AlexD, AlexG, Paul, Saul, Richard, Tom=
Z, Belen, DaveST, Corneliu, LaurentiuP, Jefro, ScottR, Bj=F6rn, PeterB, Jes=
sica,&nbsp; MatthewW, Bruce,&nbsp; Eren, MihaiL, MichaelH, Simar(?), Song</=
div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Congratulations to the team on 1.4.2 release. Thanks to Paul and oth=
ers to make this happen.</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Bug fixing: Had RC2 for M4. QA is running full pass. More bug=
s opened last week than we fixed. WDD number is up. </div>
<div>&nbsp; - Had CCB meeting last week. Approved:</div>
<div>&nbsp;&nbsp;&nbsp; . 1950 downgrade to Medium from High. Not possible.=
</div>
<div>&nbsp;&nbsp;&nbsp; . 3847 move to M5, Let Tom focus on it.</div>
<div>&nbsp;&nbsp;&nbsp; . Meta-security layer. A layer to improve binary se=
curity, tools to scan ports, etc. to improve system security. Bastille Linu=
x is not usable, using other set of tools. Saul will follow up and document=
 a solution. Dave will write a new feature for
1.6. There will also be patches coming in the next week or so for this laye=
r.</div>
<div>&nbsp;&nbsp;&nbsp; . 1.4.2 release</div>
<div>&nbsp; - A handful of patches on the mailing list. RP is looking into =
it. Deployment changes may need to be reworked. Package BB class change, th=
ose are worth looking at, moving forward, will merge.</div>
<div>* SWAT team rotation: Nitin -&gt; Beth ( Song will follow up with Beth=
).</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - AlexG- hardware for generic BSP, can we run the BSP on qemu?<=
/div>
<div>&nbsp;&nbsp;&nbsp; . Already started testing on existing hardware for =
the generic BSP.</div>
<div>&nbsp;&nbsp;&nbsp; . For weekly testing: test it on two or three hardw=
are. 64bit and 32 bit. Which hardware shall we choose?</div>
<div>&nbsp;&nbsp;&nbsp; . Alex will start an email thread with Ross, Darren=
, and Tom.</div>
<div>&nbsp;&nbsp;&nbsp; . Generic BSP should run on qemu. Run it outside th=
e AB first, then ask Beth to include in AB.</div>
<div>&nbsp; - Michael - downtime this week for power upgrade.</div>
<div>&nbsp;&nbsp;&nbsp; . Moving to a new rack. Would like to have it done =
before school season starts.</div>
<div>&nbsp;&nbsp;&nbsp; . Today is the best day for this. Michael will try =
to do it this afternoon. All YP services will be down for 1 hour. AB will b=
e down longer (4-5 hours). Will have everything backup be the end of the wo=
rking day.</div>
<div>&nbsp; - Dave: YP 1.6</div>
<div>&nbsp;&nbsp;&nbsp; . (RP) Features for 1.6. Feature submission is ongo=
ing. Would like to remind people, if you have specific things, please put i=
n bugzilla. If it's more generic, please talk to Richard.</div>
<div>&nbsp; - RP: PR server</div>
<div>&nbsp;&nbsp;&nbsp; . Bitbake was timing out. PR server had issues. Res=
ponse time was 60 seconds. Using 4GB of memory. Addressed most of them, que=
ry time down to miliseconds! Encourage people to use the latest master.</di=
v>
<div>&nbsp;&nbsp;&nbsp; . Doing select call on the open pipes for bitbake i=
dle handlers. Things are more responsive now. </div>
<div>&nbsp;&nbsp;&nbsp; . _remove operator to avoid adding too much code fo=
r each variable. Addressed Chris' concern, _remove becomes a keyword. Any f=
unction name or variable that has '_remove' in it will have problems. This =
should be in the release note.</div>
<div>&nbsp;&nbsp;&nbsp; . Change to bitbake: Fixed a problem. Now bit bake =
can be run in any directory containing a build directory. Or, anywhere in t=
he file system as far as the build directory is set in BBPath.</div>
<div>* Team Sharing - 20 min</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF32A0AORSMSX108amrcor_--
