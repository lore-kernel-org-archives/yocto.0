Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26A0E0174E
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 15:44:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Nov 2013 15:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; 
	d="scan'208,217";a="430381090"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga002.jf.intel.com with ESMTP; 05 Nov 2013 15:44:42 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 5 Nov 2013 15:44:42 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.149]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.126]) with mapi id
	14.03.0123.003; Tue, 5 Nov 2013 15:44:41 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	November 05,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac7agHe3q1Mi5hLtRpGE7CEMHDY8lwAAHqiA
Date: Tue, 5 Nov 2013 23:44:41 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF9B507@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 05, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 05 Nov 2013 23:44:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9B507ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9B507ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Matthew, Bj=F6rn, Beth, Nitin, MichaelH, ScottR, Denys, Richard, JeffP, Tom=
Z, Cristiana, PaulE, AlexD, Bruce, Darren, RandyM, Saul, AlexG, Jessica, Ro=
ss, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.6 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features
  - Most of the features are in. Still a couple more being worked on. We ha=
ve the end of this week to complete 1.6 planning.
  - Randy: build system infrastructure to identify problems. We have a heft=
y build system, running build on oe-core. Several hundred different distros=
. Many bugs open. Various debugging, configuration, various BSPs, build tes=
ts, etc. We use a different build system. Scope of machines >10 < 100.
    . RP: We have autobuilder running builds, we have auto testing framewor=
k in place for 1.5 (virtual testing), trying to add real hardware testing. =
Working on self testing too for 1.6. Welcome the community to work with our=
 team together.
* SWAT team rotation: Laurentiu Palcu -> Nitin.
* Opens - 10 min
  Beth: AB downtime.
    - Making some AB changes on configuration files, new things on git clon=
e. Have some testing to do tonight, Anyone seeing any failures in the next =
12 hours, let me know. Downtime will happen in the next 8 hours (8 hours te=
sting time).
    - Michael: we have a huge storage upgrade, copying file to new ones. Do=
wntime in the future for this for about 4 hours. Friday will be a good time=
. 16 disk arrays to 24 disk arrays.
* Team Sharing - 20 min
  - Randy: Any plan to add Clang? open source compiler. Developed by Apple.=
 Qualcomm is working on it.  RP: there are lots of other things. Not hearin=
g from tens of users on this. Welcome others to contribute.



--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9B507ORSMSX108amrcor_
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
<div>Matthew, Bj=F6rn, Beth, Nitin, MichaelH, ScottR, Denys, Richard, JeffP=
, TomZ, Cristiana, PaulE, AlexD, Bruce, Darren, RandyM, Saul, AlexG, Jessic=
a, Ross, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.6 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Feature=
s"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_1.6_Fea=
tures</u></font></a></div>
<div>&nbsp; - Most of the features are in. Still a couple more being worked=
 on. We have the end of this week to complete 1.6 planning.</div>
<div>&nbsp; - Randy: build system infrastructure to identify problems. We h=
ave a hefty build system, running build on oe-core. Several hundred differe=
nt distros. Many bugs open. Various debugging, configuration, various BSPs,=
 build tests, etc. We use a different
build system. Scope of machines &gt;10 &lt; 100. </div>
<div>&nbsp;&nbsp;&nbsp; . RP: We have autobuilder running builds, we have a=
uto testing framework in place for 1.5 (virtual testing), trying to add rea=
l hardware testing. Working on self testing too for 1.6. Welcome the commun=
ity to work with our team together. </div>
<div>* SWAT team rotation: Laurentiu Palcu -&gt; Nitin.</div>
<div>* Opens - 10 min </div>
<div>&nbsp; Beth: AB downtime.</div>
<div>&nbsp;&nbsp;&nbsp; - Making some AB changes on configuration files, ne=
w things on git clone. Have some testing to do tonight, Anyone seeing any f=
ailures in the next 12 hours, let me know. Downtime will happen in the next=
 8 hours (8 hours testing time). </div>
<div>&nbsp;&nbsp;&nbsp; - Michael: we have a huge storage upgrade, copying =
file to new ones. Downtime in the future for this for about 4 hours. Friday=
 will be a good time. 16 disk arrays to 24 disk arrays. </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Randy: Any plan to add Clang? open source compiler. Developed=
 by Apple. Qualcomm is working on it.&nbsp; RP: there are lots of other thi=
ngs. Not hearing from tens of users on this. Welcome others to contribute. =
</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9B507ORSMSX108amrcor_--
