Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C241EE0134D
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 11:45:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jan 2012 11:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110797190"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2012 11:45:57 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 Jan 2012 11:45:57 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.219]) with mapi id
	14.01.0355.002; Tue, 10 Jan 2012 11:45:56 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 10, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHMz9B4+neP+NVl1EulPOfqcY+yYQ==
Date: Tue, 10 Jan 2012 19:45:56 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A257C1B8F@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 10, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 10 Jan 2012 19:45:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Michael, Paul, Joshua, Saul, Darren, Matthew, Richard, Scott, Beth, Jessica=
, Jason (TI), Tom, Bruce, Mark, Denys, Jeff (WRS), Sean, Dave, Song
=A0
Focus of the week: top priority is M2 stabilization and bug fixing. Continu=
e with feature development.
=A0
Action item:
- Paul to work with Jeremy and others to move 1598 forward. (WIP)
=A0
Agenda:
* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
  - Late last night the build is out. Have all the fixes. One about HOB is =
not fixed, will be in the release note. CCB meeting in 2 hours. Joshua's br=
anch will merge after CCB meeting. Doc string change are ready , Scott will=
 need to run through the example after Beth gives the go-ahead. Beth can ma=
ke that ready today. Scott does not need to re-verify after Josh's branch m=
erges.
=A0
* Yocto 1.2 M2 status - 10 min (Song/Bruce/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  - release date change from Feb. 3rd to 10th, everything else stays the sa=
me.
  - M2 code freeze already happened. We are in stabilization week. Top prio=
rity is to stabilize M2 build and bug fixing.
  - P1 features: HOB2 is in private branch, all M2 development is done. Ric=
hard has been reviewing patches. Have some comments, PRC team is working on=
 them. ScottG's bitbake error handling feature will be handled by Richard a=
nd Paul. Richard has done some ground work. Will follow up with Scott and P=
aul on what and who for the next step. Package history (Paul) feature has m=
ade progress. Paul had discussions with Richard, we are ok with M2 delivery=
 on this feature. There are some further work for M3 and possibly post 1.2.
  - We had less medium+ bug outstanding this week (91) compared with last w=
eek (108). Bug count is in control. Good progress from the team on bug fixi=
ng.
=A0
* Opens - 10 min=A0
  - Michael, worked at Intel on Yocto, now working for Linux foundation foc=
using on Yocto Project. background web side, small business, now working on=
 upgrading Bugzilla and some virtualization, happy to work full time on Yoc=
to. Will help with Shoeleather, available via IRC, email.
  - Song SWAT kickoff. Song has sent the email about the SWAT team to the y=
octo mailing list. SWAT team will be in position starting from this week. E=
ither Darren or Beth will be the first rotating Chair person.
  - Mark: Cross pre-linker update - long standing bug (9 month), finally fi=
gured about the reason. Missing a check, sent out a patch to OE core alread=
y. Does not seem causing problems, does fix the problem. The fix should int=
egrate by the end of the week.  Now pre-linker works on all arch's except p=
pc64.
 =20
 =20
* Action item Review - 5 min
- Mark will review unsorted features from Wind River team and try to have t=
hem scheduled (WIP, Reviewed, some of them should be scheduled by WRS team.=
 Song will follow up to double check. Drop this one from the list)
- Song and Saul to follow on Scott Garman's M2 schedule conflict. (Richard =
and Paul will help, have a plan now.)
- Paul to work with Jeremy and others to move 1598 forward. (WIP)
-  Paul to split feature 1566 (Song will follow up with Paul on this one, d=
rop from the list)
=A0
* Team Sharing
=A0
Jeff - Nothing
Denys - nothing
Mark - Nothing beyond pre-link.
Bruce - continue kernel update, testing qemu, ppc. Booted sato, having some=
 trouble with cursors, should be completed soon. =20
Tom - Coming back from vacation. Working on kernel usability tool, internal=
 BSP stuff. Will continue these
Jason - None
Jessica - wrapped up for M2, staring to look at M3 items, need to sync with=
 Tom tools.
Beth - Working on M2.
Scott - last week, 1.1.1 doc change. Beth set up some variables that simpli=
fied the doc release process. Scott will follow up with other work. 4-5 bug=
s addressed. Will continue on 1.1.1.
Richard - catching up with backlogs from holidays, helping out on bitbake e=
rror handling. Working on bugs to improve user experience. We managed to ke=
ep the bug count in control.
Matthew: not much, working on 1.1.1, will do Freedcale first release. Will =
help Joshua.
Darren: some travel for internal projects. Functional poky-tiny in master n=
ow. Working on 3.2 kernel, a couple of BSPs, some support issues, swat team=
.
Saul: bug fixing, patch reviewing, build, build fixing, thanks to the SWAT =
team.
Joshua: looking at 1.1.1 now, fixing bugs and working on features.
Paul: working on layers bugs, discussed with Mark. Resolving issues when fl=
attening layers. Working on build history, data analysis. Will help error h=
andling.
Michael: learning and some ground stuff
Sean: sending out proposal to mailing list: trying to have a monthly confer=
ence for developer discussion, architecture. Focusing on getting key releas=
es done. Mentor would like to host it. Expand to OE-core and Yocto. This te=
chnical meeting is all Yocto. 2. advisory board, setting up developer day f=
or ELC, we may be sending out something shortly. Feb 14. Mentor will be hos=
ting BSP Summit, BSP in Fremont, CA, finalizing date. 1-2 day event.


