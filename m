Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4E34E013B0
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 16:38:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2013 16:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,983,1363158000"; 
	d="scan'208,217";a="364412765"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2013 16:38:28 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 2 Jul 2013 16:38:28 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.229]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.23]) with mapi id
	14.03.0123.003; Tue, 2 Jul 2013 16:38:28 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	02, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac53fSpfyM6C7IsoSEiTbfKTsIjUIwAAAhGA
Date: Tue, 2 Jul 2013 23:38:26 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EE6662D@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 02, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 02 Jul 2013 23:38:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EE6662DORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE6662DORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Nitin, Matthew Weigel,  Dave, Eren, Mark, Saul, ScottR, Denys, Corneliu, Ro=
ss, Belen, Paul, TomZ, MichaelH, AlexG, LaurentiuP, MihaiL, Beth, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Feature development:
    . 1584/3867, security feature. They are in a layer. Mostly done, will b=
e released separately.
    . 4267: Fenrus updater, Ionut Radu. Stability issues, reconsidering pri=
ority or target milestone. Any technical questions, please let Saul know.
    . 3169: Shuku implementation, Ross. It's in progress, not yet ready. Ho=
pe to close in a couple of weeks.
    . 4753: Need to document buildtools-tarball. Just about to complete. Wa=
iting for url from Beth. Beth has it ready, sending
  - Bug fix: Bug number is down, we fixed more bugs last week. Thanks to Ri=
chard/Saul and the team, please keep the good work up.

* Yocto Project 1.5 QA plan review - 20 min (AlexG/MihaiL)
  https://wiki.yoctoproject.org/wiki/1.5_Overall_Test_Plan
  - Please take a look at the test cases in testopia, especially those in y=
our area or areas you have concerns. Make sure we have enough coverage.
* SWAT team rotation: Radu M -> Ioana
* Opens - 10 min
* Team Sharing - 15 min
  - Saul: M2 freeze happened on last Sunday. Master pull will happen this m=
orning. Will start RC1 build after that.
  - Beth: Build failure emails gone out. Format changed, making it easier. =
Trimming unnecessary info. Changed the milestone release process. We do not=
 create branches, we create tags. Will be out until 13th, Michael will cove=
r for Beth.
  - Eren: working on a project, hamradio, for 3 month until Sep. Just creat=
e the layer, if you are interested, please send emails to me. I may also co=
ntribute to security things too.




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE6662DORSMSX108amrcor_
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
<div>Nitin, Matthew Weigel,&nbsp; Dave, Eren, Mark, Saul, ScottR, Denys, Co=
rneliu, Ross, Belen, Paul, TomZ, MichaelH, AlexG, LaurentiuP, MihaiL, Beth,=
 Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Feature development: </div>
<div>&nbsp;&nbsp;&nbsp; . 1584/3867, security feature. They are in a layer.=
 Mostly done, will be released separately. </div>
<div>&nbsp;&nbsp;&nbsp; . 4267: Fenrus updater, Ionut Radu. Stability issue=
s, reconsidering priority or target milestone. Any technical questions, ple=
ase let Saul know.</div>
<div>&nbsp;&nbsp;&nbsp; . 3169: Shuku implementation, Ross. It's in progres=
s, not yet ready. Hope to close in a couple of weeks. </div>
<div>&nbsp;&nbsp;&nbsp; . 4753: Need to document buildtools-tarball. Just a=
bout to complete. Waiting for url from Beth. Beth has it ready, sending</di=
v>
<div>&nbsp; - Bug fix: Bug number is down, we fixed more bugs last week. Th=
anks to Richard/Saul and the team, please keep the good work up.</div>
<div>&nbsp;</div>
<div>* Yocto Project 1.5 QA plan review - 20 min (AlexG/MihaiL)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/1.5_Overall_Test_=
Plan"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/1.5_Overal=
l_Test_Plan</u></font></a></div>
<div>&nbsp; - Please take a look at the test cases in testopia, especially =
those in your area or areas you have concerns. Make sure we have enough cov=
erage. </div>
<div>* SWAT team rotation: Radu M -&gt; Ioana</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 15 min</div>
<div>&nbsp; - Saul: M2 freeze happened on last Sunday. Master pull will hap=
pen this morning. Will start RC1 build after that.</div>
<div>&nbsp; - Beth: Build failure emails gone out. Format changed, making i=
t easier. Trimming unnecessary info. Changed the milestone release process.=
 We do not create branches, we create tags. Will be out until 13th, Michael=
 will cover for Beth.</div>
<div>&nbsp; - Eren: working on a project, hamradio, for 3 month until Sep. =
Just create the layer, if you are interested, please send emails to me. I m=
ay also contribute to security things too.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE6662DORSMSX108amrcor_--
