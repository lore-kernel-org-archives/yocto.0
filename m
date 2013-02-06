Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B124E0034C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 23:03:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Feb 2013 23:03:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,614,1355126400"; 
	d="scan'208,217";a="258394130"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 05 Feb 2013 23:03:44 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 5 Feb 2013 23:03:44 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.112]) with mapi id
	14.01.0421.002; Tue, 5 Feb 2013 23:03:44 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	February 05,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4EN/OebLQcIvQ8Tk+PQ02cEcFTmQAABbxA
Date: Wed, 6 Feb 2013 07:03:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A598B00DC@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 05, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Feb 2013 07:03:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A598B00DCORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A598B00DCORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
ScottR, BruceA, Jessica, TomZ, PaulE, Bj=F6rnS, JeffP, DarrenH, Richard, Be=
len, KevinS, ChrisL, LaurentiuP, DaveST, CristianI, NitinK, Corneliu, RossB=
, AlexG, ChrisK, SaulW, AlexD, SeanH, SongL

Agenda:

* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
  - Ross: planning to kicking off the build today.
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  . M4 date: 17th, cutoff for features, we still have M5 as a development m=
ilestone before stabilization in M6.
  . AlexG: a little bit of delay due to late M3 RC2, RC2 was out last Frida=
y, test report will be out this Thursday.
  . Master: Saul, looking pretty green now. Next build for RP. We will run =
1.3.1 build next. Then we will be back to weekly test cycle.
  .RP: we put a lot of effort into getting autobuilder green. We are good n=
ow. We still have two issues. Freescale arm build. There are also the Cedar=
 Trail problems. Matthew is looking at the fix, should be sometime today (3=
717).

* SWAT team rotation: Laurentiu Palcu -> Nitin Kamble
  - Saul: thanks for everyone doing SWAT. We are getting traction. You don'=
t need to file bugs on master-next build. It sends email. But will talk to =
Beth. We may not need to send emails for master-next build errors. When you=
 find problems, it would be better to look into it, describe the issue more=
 a little more clearly rather than copy and paste while opening bugs.

* Opens - 10 min
  - Corneliu: what the test result will look on wiki. Working with Michael,=
 showing an example: https://wiki.yoctoproject.org/wiki/Sample_-_1.4_M3.rc2=
_status
Would like to have feedback. Michael: thanks for Corneliu, he fixed some bu=
gs in media wiki extension in the process of setting this up.
  - Chris/Tobia: user test result. A couple of weeks we completed first rou=
nd on phase I. we got some outstanding feedback. Very helpful. We come up w=
ith another round of design. Creating and running build, working with proje=
cts, etc. Review the new design next week. If anyone who could do a remote =
session about 30 minutes, provide feedback, it will be super helpful. Get i=
n touch with me if you are interested: chris.kaminski@tobias.tv<mailto:chri=
s.kaminski@tobias.tv>. The result we got is on the HOB wiki: https://wiki.y=
octoproject.org/wiki/Web_UI, https://lists.yoctoproject.org/listinfo/webhob
 Stage 3: refine metrics. Doing this at the same as stage 2.
* Team Sharing - 20 min
  - Daren: last night, send a post about updating proxy, a number of change=
s there. Some pluming, there is a new script handling proxy over socks, htt=
ps. Anyone who can review and testing, would be great. Welcome feedback
  - CristianI: working on package update on multi-media. New release for co=
nnman, 1.11. bluez 5. would like to have suggestion how we would like to ha=
ve this kind of upgrades, mainly on how to test these packages. Not sure ho=
w to test some package. Suggestion will be good. Bjorn: there is a test sui=
te in one of the package, could be a candidate for ptest.
  - Sean: my presentation is accepted for ELC. "Building a distribution wit=
h Yocto". 13 YP related presentation including Dave's keynote.
  - LaurentiuP: chasing down postinstall issues. Last batch of patches subm=
itted to the mailing list, would like people to test it. Issue with testmod=
e? Some issues with using sstate from a building machine, build on your own=
 machine should be fine. Saul: building now, will test it out. RP: apprecia=
te getting these postinstall fixes. This is critical.
  - Michael: last week created RC2, had a 4 hour donwtime, updated some sta=
ble kernel versions. First time AB down and brought up again automatically.=
 AB 1, 2, 4, 5, 6, 10. Darren: had some issue with qemu, causing some segfa=
ult and sanity test issue. Saul is running some test. Upgrading kernel may =
help. Prospect of getting newer kernel? Michael: possible to do that. We ar=
e trying to run stable kernels. Saul: thanks to Michael for doing all these=
 work. LF recommend all projects to require one time pin to elevate authori=
ty. It affects people using 'su' to root. Hopefully releasing M3 RC2 this F=
riday. Song: will schedule release review meeting once we have the test res=
ult.



--_000_7E680CB2A76BB8438D08CF13C09FC53A598B00DCORSMSX101amrcor_
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
<div>ScottR, BruceA, Jessica, TomZ, PaulE, Bj=F6rnS, JeffP, DarrenH, Richar=
d, Belen, KevinS, ChrisL, LaurentiuP, DaveST, CristianI, NitinK, Corneliu, =
RossB, AlexG, ChrisK, SaulW, AlexD, SeanH, SongL</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto Project 1.3.1 status - 10 min (Ross)</div>
<div>&nbsp; - Ross: planning to kicking off the build today.</div>
<div>* Yocto 1.4 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
4_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.4_Status</u></font></a></div>
<div>&nbsp; . M4 date: 17th, cutoff for features, we still have M5 as a dev=
elopment milestone before stabilization in M6.</div>
<div>&nbsp; . AlexG: a little bit of delay due to late M3 RC2, RC2 was out =
last Friday, test report will be out this Thursday.</div>
<div>&nbsp; . Master: Saul, looking pretty green now. Next build for RP. We=
 will run 1.3.1 build next. Then we will be back to weekly test cycle.</div=
>
<div>&nbsp; .RP: we put a lot of effort into getting autobuilder green. We =
are good now. We still have two issues. Freescale arm build. There are also=
 the Cedar Trail problems. Matthew is looking at the fix, should be sometim=
e today (3717).</div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Laurentiu Palcu -&gt; Nitin Kamble</div>
<div>&nbsp; - Saul: thanks for everyone doing SWAT. We are getting traction=
. You don't need to file bugs on master-next build. It sends email. But wil=
l talk to Beth. We may not need to send emails for master-next build errors=
. When you find problems, it would be
better to look into it, describe the issue more a little more clearly rathe=
r than copy and paste while opening bugs. </div>
<div>&nbsp;</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Corneliu: what the test result will look on wiki. Working wit=
h Michael, showing an example: <a href=3D"https://wiki.yoctoproject.org/wik=
i/Sample_-_1.4_M3.rc2_status"><font color=3D"blue"><u>https://wiki.yoctopro=
ject.org/wiki/Sample_-_1.4_M3.rc2_status</u></font></a></div>
<div>Would like to have feedback. Michael: thanks for Corneliu, he fixed so=
me bugs in media wiki extension in the process of setting this up.</div>
<div>&nbsp; - Chris/Tobia: user test result. A couple of weeks we completed=
 first round on phase I. we got some outstanding feedback. Very helpful. We=
 come up with another round of design. Creating and running build, working =
with projects, etc. Review the new design
next week. If anyone who could do a remote session about 30 minutes, provid=
e feedback, it will be super helpful. Get in touch with me if you are inter=
ested: <a href=3D"mailto:chris.kaminski@tobias.tv"><font color=3D"blue"><u>=
chris.kaminski@tobias.tv</u></font></a>.
The result we got is on the HOB wiki: <a href=3D"https://wiki.yoctoproject.=
org/wiki/Web_UI"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki=
/Web_UI</u></font></a>, <a href=3D"https://lists.yoctoproject.org/listinfo/=
webhob"><font color=3D"blue"><u>https://lists.yoctoproject.org/listinfo/web=
hob</u></font></a></div>
<div> Stage 3: refine metrics. Doing this at the same as stage 2.</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Daren: last night, send a post about updating proxy, a number=
 of changes there. Some pluming, there is a new script handling proxy over =
socks, https. Anyone who can review and testing, would be great. Welcome fe=
edback</div>
<div>&nbsp; - CristianI: working on package update on multi-media. New rele=
ase for connman, 1.11. bluez 5. would like to have suggestion how we would =
like to have this kind of upgrades, mainly on how to test these packages. N=
ot sure how to test some package. Suggestion
will be good. Bjorn: there is a test suite in one of the package, could be =
a candidate for ptest. </div>
<div>&nbsp; - Sean: my presentation is accepted for ELC. &quot;Building a d=
istribution with Yocto&quot;. 13 YP related presentation including Dave's k=
eynote. </div>
<div>&nbsp; - LaurentiuP: chasing down postinstall issues. Last batch of pa=
tches submitted to the mailing list, would like people to test it. Issue wi=
th testmode? Some issues with using sstate from a building machine, build o=
n your own machine should be fine. Saul:
building now, will test it out. RP: appreciate getting these postinstall fi=
xes. This is critical.</div>
<div>&nbsp; - Michael: last week created RC2, had a 4 hour donwtime, update=
d some stable kernel versions. First time AB down and brought up again auto=
matically. AB 1, 2, 4, 5, 6, 10. Darren: had some issue with qemu, causing =
some segfault and sanity test issue.
Saul is running some test. Upgrading kernel may help. Prospect of getting n=
ewer kernel? Michael: possible to do that. We are trying to run stable kern=
els. Saul: thanks to Michael for doing all these work. LF recommend all pro=
jects to require one time pin to
elevate authority. It affects people using 'su' to root. Hopefully releasin=
g M3 RC2 this Friday. Song: will schedule release review meeting once we ha=
ve the test result.</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A598B00DCORSMSX101amrcor_--
