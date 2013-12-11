Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE99E00785
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 16:29:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Dec 2013 16:25:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,867,1378882800"; 
	d="scan'208,217";a="450204150"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga002.jf.intel.com with ESMTP; 10 Dec 2013 16:29:06 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 10 Dec 2013 16:29:06 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.59]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Tue, 10 Dec 2013 16:29:06 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	December 10,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac72B+Pq28099m+fQLOhGZYtvgFrmgAABOAA
Date: Wed, 11 Dec 2013 00:29:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EFCCAD7@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, December 10, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 11 Dec 2013 00:29:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCCAD7ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCCAD7ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Matthew, ScottR, Paul, Beth, Belen, Ross, Richard, Jessica, Nitin, Da=
rren, Niklas, Cristian, Corneliu, LaurentiuP, Bj=F6rn, Tom, AlexG, Bruce, J=
effP, Michael, AlexD, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.6 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status
  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features
  - WDD went up a little. Expected due to M1 testing. The team needs to put=
 more focus on bug fixing. If you have bugs, especially medium+, please do =
give more priority on them.
  - Beagle board long standing bug: Bruce: working on new mips bsp and Beag=
le Bone. Month of Jan. we will have the boards.
  - many bugs filed for Toaster. QA started testing Toaster last week.
  - Beth/build: two additional builders added. Opensuse server has some han=
gs. All other Abs are running ok.
  - RP: 1.6: lots of features, patches going in. Lots of regressions, perfo=
rmance degradation. Genuinely worried. We may have to shut down master and =
focus on bug fixing if this continues to happen.
   - Saul: 1.5.1 Robert is the maintainer. Posted a set of patches. Please =
take a look. Sent to Bitbake, oe-core, poky list. In the next couple of day=
s, we will try a build. ScottR: remember the doc changes
   - 1.4.3: 2 outstanding patches, other than that, we are ready. If 1.5.1 =
is not ready this week, will go for a build and QA full pass.
* SWAT team rotation: Cristian Iorga -> Laurentiu P
* Opens - 10 min
  - Beth: Poky contrib branch cleanup
    . Send out an RFC last week. Moving stuff (anything 2012 and before) to=
 poky contrib archive. Make them happen today if you want to keep yours.
* Team Sharing - 20 min



--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCCAD7ORSMSX108amrcor_
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
<div>Saul, Matthew, ScottR, Paul, Beth, Belen, Ross, Richard, Jessica, Niti=
n, Darren, Niklas, Cristian, Corneliu, LaurentiuP, <font size=3D"2"><span s=
tyle=3D"font-size:10pt;">Bj=F6rn, </span></font>Tom, AlexG, Bruce, JeffP, M=
ichael, AlexD, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.6 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
6_Status"><font face=3D"Calibri" color=3D"blue"><u>https://wiki.yoctoprojec=
t.org/wiki/Yocto_Project_v1.6_Status</u></font></a></div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Feature=
s"><font face=3D"Calibri" color=3D"blue"><u>https://wiki.yoctoproject.org/w=
iki/Yocto_1.6_Features</u></font></a></div>
<div>&nbsp; - WDD went up a little. Expected due to M1 testing. The team ne=
eds to put more focus on bug fixing. If you have bugs, especially medium&#4=
3;, please do give more priority on them.</div>
<div>&nbsp; - Beagle board long standing bug: Bruce: working on new mips bs=
p and Beagle Bone. Month of Jan. we will have the boards.</div>
<div>&nbsp; - many bugs filed for Toaster. QA started testing Toaster last =
week.</div>
<div>&nbsp; - Beth/build: two additional builders added. Opensuse server ha=
s some hangs. All other Abs are running ok.</div>
<div>&nbsp; - RP: 1.6: lots of features, patches going in. Lots of regressi=
ons, performance degradation. Genuinely worried. We may have to shut down m=
aster and focus on bug fixing if this continues to happen.</div>
<div>&nbsp;&nbsp; - Saul: 1.5.1 Robert is the maintainer. Posted a set of p=
atches. Please take a look. Sent to Bitbake, oe-core, poky list. In the nex=
t couple of days, we will try a build. ScottR: remember the doc changes </d=
iv>
<div>&nbsp;&nbsp; - 1.4.3: 2 outstanding patches, other than that, we are r=
eady. If 1.5.1 is not ready this week, will go for a build and QA full pass=
.</div>
<div>* SWAT team rotation: Cristian Iorga -&gt; Laurentiu P</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Beth: Poky contrib branch cleanup</div>
<div>&nbsp;&nbsp;&nbsp; . Send out an RFC last week. Moving stuff (anything=
 2012 and before) to poky contrib archive. Make them happen today if you wa=
nt to keep yours.</div>
<div>* Team Sharing - 20 min</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCCAD7ORSMSX108amrcor_--
