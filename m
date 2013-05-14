Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE98E01404
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 15:31:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 May 2013 15:31:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,672,1363158000"; 
	d="scan'208,217";a="337630926"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 14 May 2013 15:31:56 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 14 May 2013 15:31:56 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.227]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.128]) with mapi id
	14.01.0355.002; Tue, 14 May 2013 15:31:56 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	14, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5Q8tbFB0XYQBpnTOeg64P0AP+5dQ==
Date: Tue, 14 May 2013 22:31:56 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A71904832@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 14, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 14 May 2013 22:31:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A71904832ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A71904832ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Sean, ScottR, Beth, MichaelH, Bjorn, Christian, Tom, Kevin, Darren, Paul, D=
enys, LaurentiuP, AlexG, AlexD, Richard, Saul, JeffP, MarkH, Nitin, Jaap, R=
oss, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.3.2 Status - 5 min (Ross)
  - In QA testing. One bug open for it, but not that critical.
  - ScottR: have some commits for 1.3.2. Ross will get back to ScottR on th=
is.
  - Beth: will rebuild the meta-intel BSPs for this release today.
* Yocto 1.4.1 Status - 5 min (Paul)
  - still going to pull in Dylan next branch, running some AB build. Had a =
number of issues. Working on them. Some got solutions, some still investiga=
ting. Hope to have an answer for these problems in the next couple of days.

* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Will have weekly build later this week.
  - total open bug count stands at 268 as of last Sunday. Relatively stable=
.

* SWAT team rotation: Beth -> Paul
* Opens - 10 min
  - Paul: UK number for the tech number is wrong. Denys will check (Song al=
ready updated the meeting invite for this)
  - AlexG: QA mailing list. Would like to have QA discussion list. Would li=
ke to use a tag on the subject line '[QA]'.  We can create a dedicated mail=
ing list later if needed. (No objections, QA team will move ahead with this=
)
  - Beth:
    . We need to get things ready before a build. Mainly poky.conf. Beth wi=
ll update online wiki/doc for this and send out email. Will remind point re=
lease maintainers for this too.
    . RC number gets confusing. We should not be needing to do 3 re-spins o=
ne week. We will number RCs with numbers only and drop the 'respin' part.
    . Meta-intel is coming out today. If you have any third party BSP you w=
ould like to put out. Please let me know ahead of the time.
  -
* Team Sharing - 20 min
 - Paul: other than patches for 1.4.1, fixing some bugs. Implementing 1.5 f=
eatures. Update some recipes for meta-webserver. LAMP stack. Mysql recipe. =
Using 5.1. Shall we move to other db? Who's using it? Jaap: getting Postgre=
sql working on Angstrome. But it's supported poorly. Would like to have 9.4=
. Darren and Ross also needs a Postgresql recipe. Jaap is working on the re=
cipe. Will send email to oe-develop mailing list if needed.
  - MichaelH: tomorrow will be gone at the data center. Adding new hardware=
 to increase bandwidth. Some downtime coming (tomorrow, at most 10 minutes,=
 half hour for build server) on AB. Will announce on the yocto mailing list=
 and IRC channel.
  - Sean: Saul will be presenting in LinuxCon Japan, Anyone else? Jessica a=
nd ScottG will be there for Yocto and Minnow too.
  - Ramana: Binary package feed (https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D3252). Marked as future now. Would like to continue with the disc=
ussion and implementation. Will have resources to work on this sometime in =
the future.
    . HOB component is not right for this one, Paul will re-categorize.
    . Would like to have more details on this. Suggest to split the bug int=
o a few deliverables. (Ramana will follow up).



--_000_7E680CB2A76BB8438D08CF13C09FC53A71904832ORSMSX108amrcor_
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
<div>Sean, ScottR, Beth, MichaelH, Bjorn, Christian, Tom, Kevin, Darren, Pa=
ul, Denys, LaurentiuP, AlexG, AlexD, Richard, Saul, JeffP, MarkH, Nitin, Ja=
ap, Ross, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.3.2 Status - 5 min (Ross)</div>
<div>&nbsp; - In QA testing. One bug open for it, but not that critical.</d=
iv>
<div>&nbsp; - ScottR: have some commits for 1.3.2. Ross will get back to Sc=
ottR on this. </div>
<div>&nbsp; - Beth: will rebuild the meta-intel BSPs for this release today=
.&nbsp; </div>
<div>* Yocto 1.4.1 Status - 5 min (Paul)</div>
<div>&nbsp; - still going to pull in Dylan next branch, running some AB bui=
ld. Had a number of issues. Working on them. Some got solutions, some still=
 investigating. Hope to have an answer for these problems in the next coupl=
e of days.</div>
<div>&nbsp;</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Will have weekly build later this week.</div>
<div>&nbsp; - total open bug count stands at 268 as of last Sunday. Relativ=
ely stable.</div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Beth -&gt; Paul</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Paul: UK number for the tech number is wrong. Denys will chec=
k (Song already updated the meeting invite for this)</div>
<div>&nbsp; - AlexG: QA mailing list. Would like to have QA discussion list=
. Would like to use a tag on the subject line '[QA]'.&nbsp; We can create a=
 dedicated mailing list later if needed. (No objections, QA team will move =
ahead with this)</div>
<div>&nbsp; - Beth: </div>
<div>&nbsp;&nbsp;&nbsp; . We need to get things ready before a build. Mainl=
y poky.conf. Beth will update online wiki/doc for this and send out email. =
Will remind point release maintainers for this too. </div>
<div>&nbsp;&nbsp;&nbsp; . RC number gets confusing. We should not be needin=
g to do 3 re-spins one week. We will number RCs with numbers only and drop =
the 'respin' part. </div>
<div>&nbsp;&nbsp;&nbsp; . Meta-intel is coming out today. If you have any t=
hird party BSP you would like to put out. Please let me know ahead of the t=
ime. </div>
<div>&nbsp; -&nbsp; </div>
<div>* Team Sharing - 20 min</div>
<div> - Paul: other than patches for 1.4.1, fixing some bugs. Implementing =
1.5 features. Update some recipes for meta-webserver. LAMP stack. Mysql rec=
ipe. Using 5.1. Shall we move to other db? Who's using it? Jaap: getting Po=
stgresql working on Angstrome. But
it's supported poorly. Would like to have 9.4. Darren and Ross also needs a=
 Postgresql recipe. Jaap is working on the recipe. Will send email to oe-de=
velop mailing list if needed.</div>
<div>&nbsp; - MichaelH: tomorrow will be gone at the data center. Adding ne=
w hardware to increase bandwidth. Some downtime coming (tomorrow, at most 1=
0 minutes, half hour for build server) on AB. Will announce on the yocto ma=
iling list and IRC channel.</div>
<div>&nbsp; - Sean: Saul will be presenting in LinuxCon Japan, Anyone else?=
 Jessica and ScottG will be there for Yocto and Minnow too. </div>
<div>&nbsp; - Ramana: Binary package feed (<a href=3D"https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D3252"><font face=3D"Calibri" color=3D"blue">=
<u>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3252</u></font></a>)=
. Marked as future now. Would like to continue
with the discussion and implementation. Will have resources to work on this=
 sometime in the future.</div>
<div>&nbsp;&nbsp;&nbsp; . HOB component is not right for this one, Paul wil=
l re-categorize. </div>
<div>&nbsp;&nbsp;&nbsp; . Would like to have more details on this. Suggest =
to split the bug into a few deliverables. (Ramana will follow up).</div>
<div><font face=3D"Calibri" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A71904832ORSMSX108amrcor_--
