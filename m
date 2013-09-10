Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1892AE005A3
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 14:37:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Sep 2013 14:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,880,1371106800"; 
	d="scan'208,217";a="399549205"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2013 14:37:31 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 10 Sep 2013 14:37:30 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.62]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.92]) with mapi id
	14.03.0123.003; Tue, 10 Sep 2013 14:37:31 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 10,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6ubdU2ewFumagGSMCXo0w/zsFy7wAAA/yw
Date: Tue, 10 Sep 2013 21:37:30 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF47C32@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 10, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 10 Sep 2013 21:37:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF47C32ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF47C32ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Denys, Belen, Saul, MatthewW, Beth, Bj=F6rn, LaurentiuP, Richard, Nitin, Mi=
chaelH, TomZ, Jessica, Ross, ScottR, JeffP, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  https://wiki.yoctoproject.org/charts/combo.html

 - QA: testing RC3, not many new bugs found, seems stabilized. QA report in=
 a couple of days.
    - Resolved 30 bugs in the past week. We opened 56 bugs since last Sunda=
y. 80% opened by Intel and Wind River QA. Wind River opened alone opened  5=
0%. Wind River is doing Wind River Linux 6 testing and opening bugs in YP B=
ugzilla.
    - medium+ and high bugs: 43. Call for team leads to take care of the bu=
gs in their area.
  - Build/Beth: M4, everything looks fairly good. We should have build toda=
y. But it won't be the 1.5 RC1. RC1 will be out after bug fixes and kernel =
changes. Waiting for generic x86 BSP () too. There will also be meta tool c=
hanges, WebHob bitbake change etc.

* SWAT team rotation: Beth -> Paul

* Opens - 10 min

    - Beth: branching for dora and 1.5_M4: question to RP.
      . RP: Branching is not ready. Need to wait.
    - Ross/mesa-gl: patches sent out for mesa-gl. Please test it to make su=
re it works. Nitin will test it out. Mesa-gl is just gl library. RP: does s=
olve partial problems, but does not resolve the whole issue. We may need a =
package structure and a  bbclass. Ross will follow up with Ross offline.

* Team Sharing - 20 min
  - Beth: working on some AB bugs and documentation. Big one is bug #4485, =
it should be in today.
  - MichaelH: ordered additional bandwidth, will scheduling upgrade, make o=
ur service faster, AB more independent. From 30MB-60MB to 100MB-1000MB. Sin=
gle link to 6. Adding ipv6 service on non AB servers.
  - Paul: doing bug fixes. Managed to upgrade the oe layer index with help =
from Michael, sent out email.
  - RP: _remove operator found an issue. There is a bug fix going in. seein=
g some occasional timeout issues on AB. If anyone has insight on that or wo=
uld like to help, please let RP know.




--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF47C32ORSMSX108amrcor_
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
<div>Denys, Belen, Saul, MatthewW, Beth, Bj=F6rn, LaurentiuP, Richard, Niti=
n, MichaelH, TomZ, Jessica, Ross, ScottR, JeffP, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/charts/combo.html"><fo=
nt color=3D"blue"><u>https://wiki.yoctoproject.org/charts/combo.html</u></f=
ont></a></div>
<div>&nbsp;</div>
<div> - QA: testing RC3, not many new bugs found, seems stabilized. QA repo=
rt in a couple of days.</div>
<div>&nbsp;&nbsp;&nbsp; - Resolved 30 bugs in the past week. We opened 56 b=
ugs since last Sunday. 80% opened by Intel and Wind River QA. Wind River op=
ened alone opened&nbsp; 50%. Wind River is doing Wind River Linux 6 testing=
 and opening bugs in YP Bugzilla.</div>
<div>&nbsp;&nbsp;&nbsp; - medium&#43; and high bugs: 43. Call for team lead=
s to take care of the bugs in their area.</div>
<div>&nbsp; - Build/Beth: M4, everything looks fairly good. We should have =
build today. But it won't be the 1.5 RC1. RC1 will be out after bug fixes a=
nd kernel changes. Waiting for generic x86 BSP () too. There will also be m=
eta tool changes, WebHob bitbake change
etc. </div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Beth -&gt; Paul </div>
<div>&nbsp;</div>
<div>* Opens - 10 min </div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp; - Beth: branching for dora and 1.5_M4: question to =
RP.</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . RP: Branching is not ready. Need to w=
ait.</div>
<div>&nbsp;&nbsp;&nbsp; - Ross/mesa-gl: patches sent out for mesa-gl. Pleas=
e test it to make sure it works. Nitin will test it out. Mesa-gl is just gl=
 library. RP: does solve partial problems, but does not resolve the whole i=
ssue. We may need a package structure and a&nbsp; bbclass.
Ross will follow up with Ross offline.</div>
<div>&nbsp;</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Beth: working on some AB bugs and documentation. Big one is b=
ug #4485, it should be in today.</div>
<div>&nbsp; - MichaelH: ordered additional bandwidth, will scheduling upgra=
de, make our service faster, AB more independent. From 30MB-60MB to 100MB-1=
000MB. Single link to 6. Adding ipv6 service on non AB servers. </div>
<div>&nbsp; - Paul: doing bug fixes. Managed to upgrade the oe layer index =
with help from Michael, sent out email. </div>
<div>&nbsp; - RP: _remove operator found an issue. There is a bug fix going=
 in. seeing some occasional timeout issues on AB. If anyone has insight on =
that or would like to help, please let RP know.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF47C32ORSMSX108amrcor_--
