Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6215CE013E8
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 14:28:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Jul 2013 14:25:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,730,1367996400"; 
	d="scan'208,217";a="350392268"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 23 Jul 2013 14:28:18 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 23 Jul 2013 14:28:17 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.189]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.180]) with mapi id
	14.03.0123.003; Tue, 23 Jul 2013 14:28:18 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	23, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6H63uuBAL1UZW3S0iQGfn79ySGmAAAAdyA
Date: Tue, 23 Jul 2013 21:28:16 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EE94EF4@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 23, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 23 Jul 2013 21:28:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EE94EF4ORSMSX107amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE94EF4ORSMSX107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Ramana, Corneliu, ScottR, PaulE, Belen, Polk, TomZ, LaurentiuP, Nitin, Ross=
, Jessica, Saul, ChrisL, MatthewW, Bruce, Mulhern, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  . Schedule: last dev week of M3. cut-off is coming up this Sunday. If you=
 have fixes or patches for M3, this is your last chance.
  . Bug fixing: WDD number is going up. We did not fix as many bugs as we o=
pened. 15 for last week.
    - M3 high bugs: 4857/4859 have patches already. 4894 webhob is separate=
 from master at this point. 4816 beagle board is high risk since Bruce will=
 be travelling. Bruce will find someone to work on it. .
  . Beth: With the coming pull, if you are a layer maintainer, please updat=
e your bbappend files, otherwise your image will fail. Saul started MUT and=
 master build, things look fine.
  . Build failure emails did not go out, will have this fixed today. AB wil=
l have a quick downtime today before 5pm.
* SWAT team rotation: Beth -> PaulE
* Opens - 10 min
  - Ramana: binary configuration tool. Design is out. Would like to have co=
mments and feedback. Will continue with the work. Some patches are ready.
    . Saul: RP is back in the second week of Aug. There are some other work=
 started in the same area.
* Team Sharing - 20 min
  - MichaelH: Bugzilla doc change process is still under consideration. Rep=
lied the email with estimation. We might be able to track other things with=
 the same mechanism. Comment if you are interested. Will be in OSCON for th=
e rest of the week, visiting data centers, look for some opportunity to hos=
t YP machines cost efficiently. We automated the doc archive and the link g=
eneration on the website.




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE94EF4ORSMSX107amrcor_
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
<div>Ramana, Corneliu, ScottR, PaulE, Belen, Polk, TomZ, LaurentiuP, Nitin,=
 Ross, Jessica, Saul, ChrisL, MatthewW, Bruce, Mulhern, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; . Schedule: last dev week of M3. cut-off is coming up this Sund=
ay. If you have fixes or patches for M3, this is your last chance.</div>
<div>&nbsp; . Bug fixing: WDD number is going up. We did not fix as many bu=
gs as we opened. 15 for last week.</div>
<div>&nbsp;&nbsp;&nbsp; - M3 high bugs: 4857/4859 have patches already. 489=
4 webhob is separate from master at this point. 4816 beagle board is high r=
isk since Bruce will be travelling. Bruce will find someone to work on it. =
.</div>
<div>&nbsp; . Beth: With the coming pull, if you are a layer maintainer, pl=
ease update your bbappend files, otherwise your image will fail. Saul start=
ed MUT and master build, things look fine.</div>
<div>&nbsp; . Build failure emails did not go out, will have this fixed tod=
ay. AB will have a quick downtime today before 5pm.</div>
<div>* SWAT team rotation: Beth -&gt; PaulE</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Ramana: binary configuration tool. Design is out. Would like =
to have comments and feedback. Will continue with the work. Some patches ar=
e ready.</div>
<div>&nbsp;&nbsp;&nbsp; . Saul: RP is back in the second week of Aug. There=
 are some other work started in the same area. </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - MichaelH: Bugzilla doc change process is still under consider=
ation. Replied the email with estimation. We might be able to track other t=
hings with the same mechanism. Comment if you are interested. Will be in OS=
CON for the rest of the week, visiting
data centers, look for some opportunity to host YP machines cost efficientl=
y. We automated the doc archive and the link generation on the website.</di=
v>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE94EF4ORSMSX107amrcor_--
