Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61AD3E006E9
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 14:14:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jun 2013 14:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,899,1363158000"; 
	d="scan'208,217";a="356303525"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2013 14:14:54 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 19 Jun 2013 14:14:54 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.219]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.224]) with mapi id
	14.03.0123.003; Wed, 19 Jun 2013 14:14:54 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, June
	18, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5tMdcbZgoPnpjBRX63+6FW16X0EQAACwug
Date: Wed, 19 Jun 2013 21:14:53 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EE44EC4@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 18, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 19 Jun 2013 21:14:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EE44EC4ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE44EC4ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
David Wolf, Cristiana, Nitin, Richard, Paul, TomZ, Bj=F6rnS, Kevin, Ross, M=
ichaelH, MarkH, AlexG, Beth, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.4.1 status (Paul)
  - It's still in QA. Eclipse plug in issue, error message in Bluetooth. Wi=
ll know more.
  - RP: it's looking good so far.
  - Paul: Will send the feature/know issue list after QA report.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Open bug: 299. Same as last week. Bug fixing last week: 12. WDD chart l=
ittle changed from last week. Ask the team to put more effort into bug fixi=
ng. We still have a lot of bugs to fix. Let's bring the WDD number down.
  - 1.4.1 and weekly build: If 1.4.1 QA report is good. Let's start weekly =
build and testing
  - kernel is breaking on gcc 4.8. Bug #4549. Bruce on it.
  - Beth: M1, releasing this morning.

* SWAT team rotation: Andrei Dinu -> Cristiana Voicu
* Opens - 10 min
  - RP: being away. Mentioned in the email a little bit. Beginning of July =
for 6 weeks. Will be spending some time handling pull request. Saul will me=
rge and propose. RP will then pull. Won't be in meetings.
  - Bitbake changes: minimum version increment. Improve support for externa=
l build tools and tarball. Any issues, please do let me know.
  - QA plan headsup. Will be reviewing 1.5 QA plan in the next week or so.
* Team Sharing - 20 min
  - MarkH: Had a meeting. Coming up with a mechanism to introduce SPDX lice=
nse validation. It's prototype only now. Making progress. If you need infor=
mation, let me/Beth know.
  - Bjorn: coming weeks will be focusing on upstreaming ptest change. Patch=
es will be coming from several people. Ptest in autobuilder, post some comm=
ents in the bug testing, how to do this in a more standard way? We have don=
e a lot ourselves. Would like to collaborate. Paul/RP: it's in bug# 4114. Y=
P team is working on QA automation in steps, when we get to this point, we =
will schedule a meeting with Bjorn. Bjorn: There is no rush, whenever you a=
re ready.
  - RP: looking at QA auto test infrastructure. Shell script is limiting. G=
etting architecture in place, We will be definitely getting the ptest in QA=
.
  - Ramana: working on offline configuration format. Fixed some bugs. In bu=
gzilla, would like feedback. Have something working now. Will be sending th=
e patches soon.
  - DavidW: user experience is good for Yocto. Made a build yesterday. Went=
 really smoothly. Lots of the rough edges have been fixed.
  - MichaelH: Bitbacke requiring 2.7.3. It's setup in AB. Saul and I have w=
orked that out. Layer index server is using bitbake too, will upgrade Pytho=
n on that server. The SDK python does not seem to be a complete python. May=
 need pull in some modules. May just need to fix the SDK tarball. Paul will=
 fire a bug and working on it.




--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE44EC4ORSMSX108amrcor_
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
<div>David Wolf, Cristiana, Nitin, Richard, Paul, TomZ, <font size=3D"2"><s=
pan style=3D"font-size:10pt;">Bj=F6rnS, </span></font>Kevin, Ross, MichaelH=
, MarkH, AlexG, Beth, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.4.1 status (Paul)</div>
<div>&nbsp; - It's still in QA. Eclipse plug in issue, error message in Blu=
etooth. Will know more.</div>
<div>&nbsp; - RP: it's looking good so far.</div>
<div>&nbsp; - Paul: Will send the feature/know issue list after QA report.<=
/div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Open bug: 299. Same as last week. Bug fixing last week: 12. W=
DD chart little changed from last week. Ask the team to put more effort int=
o bug fixing. We still have a lot of bugs to fix. Let's bring the WDD numbe=
r down.</div>
<div>&nbsp; - 1.4.1 and weekly build: If 1.4.1 QA report is good. Let's sta=
rt weekly build and testing</div>
<div>&nbsp; - kernel is breaking on gcc 4.8. Bug #4549. Bruce on it.</div>
<div>&nbsp; - Beth: M1, releasing this morning. </div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Andrei Dinu -&gt; Cristiana Voicu</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - RP: being away. Mentioned in the email a little bit. Beginnin=
g of July for 6 weeks. Will be spending some time handling pull request. Sa=
ul will merge and propose. RP will then pull. Won&#8217;t be in meetings.</=
div>
<div>&nbsp; - Bitbake changes: minimum version increment. Improve support f=
or external build tools and tarball. Any issues, please do let me know.</di=
v>
<div>&nbsp; - QA plan headsup. Will be reviewing 1.5 QA plan in the next we=
ek or so.</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - MarkH: Had a meeting. Coming up with a mechanism to introduce=
 SPDX license validation. It's prototype only now. Making progress. If you =
need information, let me/Beth know. </div>
<div>&nbsp; - Bjorn: coming weeks will be focusing on upstreaming ptest cha=
nge. Patches will be coming from several people. Ptest in autobuilder, post=
 some comments in the bug testing, how to do this in a more standard way? W=
e have done a lot ourselves. Would like
to collaborate. Paul/RP: it's in bug# 4114. YP team is working on QA automa=
tion in steps, when we get to this point, we will schedule a meeting with B=
jorn. Bjorn: There is no rush, whenever you are ready.</div>
<div>&nbsp; - RP: looking at QA auto test infrastructure. Shell script is l=
imiting. Getting architecture in place, We will be definitely getting the p=
test in QA. </div>
<div>&nbsp; - Ramana: working on offline configuration format. Fixed some b=
ugs. In bugzilla, would like feedback. Have something working now. Will be =
sending the patches soon.</div>
<div>&nbsp; - DavidW: user experience is good for Yocto. Made a build yeste=
rday. Went really smoothly. Lots of the rough edges have been fixed.</div>
<div>&nbsp; - MichaelH: Bitbacke requiring 2.7.3. It's setup in AB. Saul an=
d I have worked that out. Layer index server is using bitbake too, will upg=
rade Python on that server. The SDK python does not seem to be a complete p=
ython. May need pull in some modules.
May just need to fix the SDK tarball. Paul will fire a bug and working on i=
t.</div>
<div><font face=3D"Calibri" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE44EC4ORSMSX108amrcor_--
