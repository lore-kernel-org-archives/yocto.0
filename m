Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828AFE0059C
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 10:32:36 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Nov 2011 10:32:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,554,1315206000"; d="scan'208";a="78063271"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2011 10:32:34 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 Nov 2011 10:32:34 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.87]) with mapi id
	14.01.0355.002; Tue, 22 Nov 2011 10:32:34 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, November 22,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHMqUUZjbn5gPyE/kyDHDt1Dag57w==
Date: Tue, 22 Nov 2011 18:32:32 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F97289@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, November 22, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 22 Nov 2011 18:32:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Tom, Paul, Mark, ScottR, Jessica, Richard, Joshua, Jeff, Nitin, Dave,=
 Saul, Darren. Song
=A0
New Action items:
1. Mark will review unsorted features from Wind River team and try to have =
them scheduled.
2. Paul will ping Jeremy on 1598.
=A0
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.0.2 and 1.1.1 point release update - 10 min (Josh)
   . 1.0.2: last night kicked off a build, having unpacking issues. Going t=
o move it out to another autobuilder and try to build it there. The errors =
are pointing to hardware more and more. Josh will send out the patch list t=
o the mailing list.
   . 1.1.1 has a large number of patches, writing a proposal to CCB. Song w=
ill schedule CCB meeting for early next week.
* Yocto 1.2 M1 Status (features development) - 10 min (Song)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
    - Status:
        . Most of the features are in design review & development, Richard =
and Saul please make sure these features move forward if they are waiting f=
or your review.
        . If you have features in development, please send in pull request =
this week if they can to avoid having everything done in the last dev week.
        . No high bugs, no new bugs last week. good progress on bug fixing,=
 Richard has the most bug fixes in the past weeks since M1 with 11 fixes.
        . Maintenance items trending to make the target (50% update for M1)=
.
        . Schedule reminder: feature complete for M1 happens on Dec. 2nd. P=
ull request due on mid-night, Dec. 4th. Pacific time.=20
=A0
* Opens - 10 min
  None
* Action item Review - 5 min
Richard will review unsorted features and prioritize them. (Done)
=A0
* Weekly team sharing (20 min)
  - Darren: Spent most of last night refactoring the boot image code. Make =
it more generic. Meta-tiny, get proposal out for Richard and Saul, working =
on internal BSPs, nothing blocking me now.
  Saul: Retuning from linux con, Brazil. Had good chat with people in Linux=
 con, conversations on OE and Yocto. Did a presentation on Yocto, nothing b=
locking. Will help Richard on the pull request backlog.
  Nitin: Last week worked on x32, recipes upgrades and bug fixes. Create fe=
atures in Bugzill for jdk stuff and x32. Sent email asking bugzilla issues.=
 (* Saul will respond to Nitin's email.)
  Jeff: nothing
  Josh: Working on point release. Nothing blocking me.
  Richard: working on build, still some issues, generally issue are related=
 to shared state. Made lots of progress, has some setbacks, working on it s=
till. the build will get much better. Helped the situation dramatically. Co=
ntinue doing that.=20
  Jessica: created patches for the remote layer and related changes. Will c=
heck in today. Had sync up meeting with community. Working on areas we are =
interested in. will look into other usability issues and bugs. No blocker.=
=20
   Scott: last week, completed first draft user experience doc for windows =
users , it's being reviewed. Spent some time on yocto docs repos. Working o=
n how to straighten that out. * Scott/Darren are waiting for Richard's resp=
onse.
   Mark: doing various stuff, no blockers. Action item is to review feature=
s on the unsorted list this week
   Paul: working on package history data collection, initial implementation=
 is done. OE core is down, slight blocked on that. Working on bugs, will co=
ntinue work on bugs, follow up with response to patches. * Will involve QA =
on the feature change.=20
   Tom: last week meta-intel clean up, extract out common things for meta-i=
ntel BSPs, made meta-intel layer to contain common stuff. Will check in soo=
n, please let me know if you have any feedback. Worked on Internal bsps. Wi=
ll continue this week.
   Beth: last week mostly working on 1.0.2 and get it up and going, working=
 on autobuilder with Richard, licensing features. Updated bugzilla. Consoli=
dated into 3 feature bugs.


-----Original Appointment-----

Conference details=20
Conference name:=20
Yocto Technical Team
Conference date/start time:=20
Tue Jun 28, 2011 at 10:00 AM Central Daylight Time=20
Participants:=20
30
Duration:=20
60 minutes=20
Participant passcode:=20
49611427=20
Dial-in number:=20
1.972.995.7777=20
US Toll Free number:=20
1.877.561.6828=20
BlackBerry users, click this link to join your conference as a chairperson:
1.972.995.7777x67184230#
BlackBerry users, click this link to join your conference as a participant:
1.972.995.7777x49611427#
=A0
Depending on where you are dialing from, either your BlackBerry will pause =
and enter the passcode automatically or you will be prompted to click again=
 to dial the passcode.

Local and Global Access Numbers=20


Country=20
Dial-in number
Australia:=20
1800 636 843
Czech Republic:=20
242 430 350
China (Beijing):=20
From office dial 8-9957777 or 8784277=20
Beijing Out of Office dial 5878 4277
China (Shanghai):=20
From office dial 8-9957777 or 3073322=20
Shanghai Out of Office dial 2307 3322
China (Shenzen):=20
From office dial 8-9957777 or 6007877=20
Shenzen Out of Office dial 2600 7877
China (Other Cities):=20
From IP phone dial 8-9957777=20
Other cities - Non IP phone dial 021-23073322
Denmark:=20
8060 1400
Finland:=20
09 41333477
France:=20
0497 275888
Germany:=20
08161 803232
Holland:=20
030 2417490
India:=20
BSNL subscribers use 1800 425 9996 (Toll Free)
Airtel subscribers use 0008 009 861 212 (Toll Free)
From TI Campus use 89957777
Others use 2509 9555 (Landline within Bangalore) or
80 2509 9555 (Outside Bangalore)
Israel:=20
09 790 6715
Italy:=20
039 69061234 (039 is local city code not country code)
Japan:=20
From TI Campus use 8 995 7777=20
Outside TI use 03 4331 3777
Malaysia:=20
From IP phone dial 2643799=20
From Kuala Lumpur dial 4264 3799=20
Outside Kuala Lumpur dial (03)4264 3799
Norway:=20
2 295 8744
Philippines:=20
From Baguio City use 4471177=20
From Metro Manila area use 8702477
Singapore:=20
From IP phone dial 3894777=20
Outside TI use 6389 4777
South Korea:=20
From IP phone dial 5606998=20
From Seoul dial 5606998=20
Outside Seoul dial (02)5606998
Sweden:=20
08 58755577
Taiwan:=20
From IP phone dial 1363=20
From Taipei dial 2241 1363=20
Outside Taipei dial (02)2241 1363
Turkey:=20
Landline Only dial 0811 288 0001=20
then enter 877 633 1123=20
UK:=20
01604 663003
US:=20
972 995 7777 or 1877 561 6828

Recurring conferences=20
First scheduled conference:=20
Tue Jun 28, 2011
Recurrence frequency:=20
Weekly - Every 1 week(s) on Tuesday
Recurrence ends:=20
End on Fri Jun 22, 2012, 10:40 AM CDT


