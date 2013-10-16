Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF10EE016A0
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 09:20:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Oct 2013 09:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,508,1378882800"; 
	d="scan'208,217";a="308627347"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Oct 2013 09:14:07 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.175]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.21]) with mapi id
	14.03.0123.003; Wed, 16 Oct 2013 09:14:07 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.5 release readiness review - 10/16/2013
Thread-Index: Ac7KiqRA08T4hRmHRWKclZtPnMQPIwAABDzg
Date: Wed, 16 Oct 2013 16:14:06 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF7A2A7@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.5 release readiness review - 10/16/2013
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
X-List-Received-Date: Wed, 16 Oct 2013 16:20:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF7A2A7ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF7A2A7ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Richard, Dave, AlexG, Corneliu, AlexD, Denys, Jessica, Rich Schmitt, =
Tom, IonutC, Mark, Paul, Matthew, ScottR, Nitin, Song

Release Criteria review:
1.      Functional completion: all high features should complete.
a.      3847: can create images, but cannot boot. A patch is available to h=
elp the boot. Working on using Pseudo to help with the booting too. We have=
 fixes lined up, we know the issues. Release note this.
b.      4079: works for RPM but not for IPK. Remaining issue is targeted fo=
r a point release. Release note this.
c.      4072: mis-communication. Resolved. Feature is in. OK with this not =
being formally verified. WRS verified their own usage.
2.      Open Bugs: No high bugs opened against the release
a.      ADT had some issues. Failing to compile on 64-bit machine. For the =
release we worked around it.We need to document this.  Not a problem for Wi=
nd River. Freescale is fine with this too. Release note this.
b.      Issues with BeagleBoardXM. Need to release note it.
3.      Build and release: pass
4.      Performance: there is some up and downs during the release. Overall=
, there is no significant degradation.
5.      Functional tests, documentation, package update, upstream commits, =
BSP testing, etc. are fine, met target.

Decision: No technical issues blocking the release. Release note all key is=
sues, send the release note to CCB for approval.

Action Items
1.      Richard will send Song the workaround for ADT.
2.      Tom will send the summary for 3847 issues to Song.
3.      Song will put together the release note and send to CCB for approva=
l and follow up with the release.





--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF7A2A7ORSMSX108amrcor_
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
<font face=3D"SimSun" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Saul, Richard, Dave, AlexG, Corneliu, AlexD, Denys, Jessica, Rich Schm=
itt, Tom, IonutC, Mark, Paul, Matthew, ScottR, Nitin, Song</div>
<div>&nbsp;</div>
<div>Release Criteria review:</div>
<ol style=3D"margin:0;padding-left:27pt;">
<li>Functional completion: all high features should complete.</li></ol>
<ol type=3D"a" style=3D"margin:0;padding-left:54pt;">
<li>3847: can create images, but cannot boot. A patch is available to help =
the boot. Working on using Pseudo to help with the booting too. We have fix=
es lined up, we know the issues. Release note this.</li><li>4079: works for=
 RPM but not for IPK. Remaining issue is targeted for a point release. Rele=
ase note this.</li><li>4072: mis-communication. Resolved. Feature is in. OK=
 with this not being formally verified. WRS verified their own usage.</li><=
/ol>
<ol style=3D"margin:0;padding-left:27pt;">
<li>Open Bugs: No high bugs opened against the release</li></ol>
<ol type=3D"a" style=3D"margin:0;padding-left:54pt;">
<li>ADT had some issues. Failing to compile on 64-bit machine. For the rele=
ase we worked around it.We need to document this.&nbsp; Not a problem for W=
ind River. Freescale is fine with this too. Release note this.</li><li>Issu=
es with BeagleBoardXM. Need to release note it.</li></ol>
<ol style=3D"margin:0;padding-left:27pt;">
<li>Build and release: pass</li><li>Performance: there is some up and downs=
 during the release. Overall, there is no significant degradation.</li><li>=
Functional tests, documentation, package update, upstream commits, BSP test=
ing, etc. are fine, met target.</li></ol>
<div style=3D"padding-left:27pt;">&nbsp;</div>
<div>Decision: No technical issues blocking the release. Release note all k=
ey issues, send the release note to CCB for approval.</div>
<div>&nbsp;</div>
<div>Action Items</div>
<ol style=3D"margin:0;padding-left:36pt;">
<li>Richard will send Song the workaround for ADT. </li><li>Tom will send t=
he summary for 3847 issues to Song.</li><li>Song will put together the rele=
ase note and send to CCB for approval and follow up with the release.</li><=
/ol>
<div>&nbsp;</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF7A2A7ORSMSX108amrcor_--
