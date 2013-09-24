Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E0CE015BD
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 16:35:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Sep 2013 16:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,974,1371106800"; 
	d="scan'208,217";a="408627416"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by orsmga002.jf.intel.com with ESMTP; 24 Sep 2013 16:35:45 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 24 Sep 2013 16:35:44 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.175]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.106]) with mapi id
	14.03.0123.003; Tue, 24 Sep 2013 16:35:44 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 24,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac65frRCs6oaPfpRQs2fwzqSgaee2QAAAn9A
Date: Tue, 24 Sep 2013 23:35:44 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF6DDF6@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 24, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 24 Sep 2013 23:35:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF6DDF6ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF6DDF6ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, Beth, JeffP, MichaelH, MarkH, Saul, Jessica, Darren, ScottR, Tom, Be=
len, Paul, Ross, Richard, AlexG, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  https://wiki.yoctoproject.org/charts/combo.html
  - Bug fixing: WDD is going up, but shows signs of stabilizing. Resolved 4=
0+ bugs last week. Let's keep up the good work and bring WDD down.
  - QA: Running the full pass on last RC. Will have the report out tomorrow=
. Some issues on the generic x86 BSP, Ross will do some triage and look int=
o them.
  - Build: the build last week has some instability issue. Most of them are=
 timeout issues. Merged some priority setting code. Seems to work really we=
ll. Master's only issue is for meta-freescale ppc failure. No concern on th=
at. Much better than before. Proposal is to branching today for the release=
. RP will take care of that when we are ready. We will be more strict on wh=
at patches we can merge after we branch. At the same time, we understand th=
at many people are working on bug fixes to bring WDD down. It's a balance.
  - Partitioning patches: Tom has not posted anything yet. Cleaning up func=
tionality. Will send out the patches this week. RP: We might be able to squ=
eeze it in for this release, as long as it's standalone, nothing breaks bec=
ause of it.
* SWAT team rotation: Saul
* Opens - 10 min
* Team Sharing - 20 min
  - Michael: working on the YP dev day server, get it out asap. Working har=
d on it.




--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF6DDF6ORSMSX108amrcor_
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
<div>Nitin, Beth, JeffP, MichaelH, MarkH, Saul, Jessica, Darren, ScottR, To=
m, Belen, Paul, Ross, Richard, AlexG, Song</div>
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
<div>&nbsp; - Bug fixing: WDD is going up, but shows signs of stabilizing. =
Resolved 40&#43; bugs last week. Let&#8217;s keep up the good work and brin=
g WDD down.</div>
<div>&nbsp; - QA: Running the full pass on last RC. Will have the report ou=
t tomorrow. Some issues on the generic x86 BSP, Ross will do some triage an=
d look into them.</div>
<div>&nbsp; - Build: the build last week has some instability issue. Most o=
f them are timeout issues. Merged some priority setting code. Seems to work=
 really well. Master's only issue is for meta-freescale ppc failure. No con=
cern on that. Much better than before.
Proposal is to branching today for the release. RP will take care of that w=
hen we are ready. We will be more strict on what patches we can merge after=
 we branch. At the same time, we understand that many people are working on=
 bug fixes to bring WDD down. It's
a balance.</div>
<div>&nbsp; - Partitioning patches: Tom has not posted anything yet. Cleani=
ng up functionality. Will send out the patches this week. RP: We might be a=
ble to squeeze it in for this release, as long as it's standalone, nothing =
breaks because of it. </div>
<div>* SWAT team rotation: Saul</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Michael: working on the YP dev day server, get it out asap. W=
orking hard on it.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF6DDF6ORSMSX108amrcor_--
