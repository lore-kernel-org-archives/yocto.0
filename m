Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2062E004E1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 09:09:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Sep 2011 09:09:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="51200972"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 21 Sep 2011 09:09:00 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 21 Sep 2011 09:09:00 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.120]) with mapi id
	14.01.0323.003; Wed, 21 Sep 2011 09:08:58 -0700
From: "Liu, Song" <song.liu@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>, "'Hatle, Mark'"
	<mark.hatle@windriver.com>
Thread-Topic: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday,
	September 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMeBwKnmjsDlNMt0qM/SxlN/BbvpVXwZpQgAAC3QCAADvNQA==
Date: Wed, 21 Sep 2011 16:08:59 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F24543@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F2402C@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNe=sDsEHP20YbbXpzC2uFOwES20-uFJ+mWBQnea5Lby=g@mail.gmail.com>
In-Reply-To: <CAEsOVNe=sDsEHP20YbbXpzC2uFOwES20-uFJ+mWBQnea5Lby=g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Technical Team Meeting - (Tuesday, September 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Wed, 21 Sep 2011 16:09:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Matthew, I believe Mark fixed this problem.

Mark, would you please confirm that?

Thanks,
Song

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Tuesday, September 20, 2011 10:31 PM
To: Liu, Song
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday, Sept=
ember 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))

All,

I was dropped from the call a lot this morning from my connection.
What was the status on prelink on 64-bit? Did we elect to disable it
for 64-bit?

Thanks,
Matthew

On Wed, Sep 21, 2011 at 12:20 AM, Liu, Song <song.liu@intel.com> wrote:
> Sorry, missed the information from the Shanghai team:
>
> Jiajun/Wenhua:
> Last week they were testing M4 RC2, it was still ongoing because BSP bloc=
ked testing.
> This week plan to finish RC2 testing. It seems the BSP sharing folder iss=
ue was resolved.
>
> Dexuan:
> Last week fixed 1070 and identified 1443 was prelink issue owned by Mark.
> This week continue to work on 1085.
>
> Dongxiao:
> Fixed multiple providers issue for multilib. (no bug number) Communicated=
 with Mark on another multilib issue.
> This week continued to work on 1457, and other new bugs.
>
> Ke:
> Last week worked on 1442, OpenGL issue, and prepared for v1.2 UI review. =
And processed some pending patches for upstream.
> This week 1442 was transferred to Edwin, and this week will do UI review =
and ops review.
>
> Edwin:
> Fixed 1440.
> This week will fix 1442.
>
> Lianhao
> Fixed 1486 last week.
> This week continue to fix 1489.
>
> All:
> Update distro_tracking_fields.inc for those 63 packages missing 2 major d=
istros.
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Liu, Song
> Sent: Tuesday, September 20, 2011 10:05 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday, Septem=
ber 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
>
> Action Items:
>
> - Saul: work with Mark, Beth together to decide if we can delay RC3 to ac=
commodate fixes for RPM dependency issues in RC3 in order to reduce the ris=
k of RC4.
> - Paul: will send out email to the mailing lists to advertize the wiki pa=
ge for tested distros and collect the list from the community and the publi=
c.
>
> Attendees:
> Darren, ScottR, Jessica, Beth, Mark, Paul, Matthew, Saul, Josh, Denys, To=
m, Song
>
> Agenda:
>
> * Opens collection - 5 min (Song)
> * Yocto 1.1 M4 status review and issues - 15 min (team) https://wiki.yoct=
oproject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_
> =A0- Bug fixing summary and issues (Song):
> =A0 =A0. We still have 31 bugs left for 1.1 and 7 of them are high bugs. =
Our focus is still bug fixing. Even though most of the medium bugs won't be=
 included in Yocto 1.1 release, we should still try our best to get them in=
 the master
> =A0 =A01492-Saul: 2 parts, 1 part we already have a fix. The other part s=
hould be done by tonight.
> =A0 =A01466-Mark: no need to be fixed by this release.
> =A0 =A01489: this problem was found on ARM also, and it's fixed for ARM. =
It should be re-verified and see if it's already been fixed.
> =A0 =A01444: this one should be fixed. Need to be marked as resolved for =
QA to verify.
> =A0 =A01457: Mark is working on this one, change owner to Mark.
> =A0- Build status and QA (Beth/Song)
> =A0 =A0Minor issues with autobuilders. Should be resolved before RC3. BSP=
s for RC2 have been build. ADT tool chain is complete for RC2 also.
> =A0- Release schedule:
> =A0 =A0. Mirror on kernel.org is still down. Mark has some fixes (related=
 to 1457) that need to be included in 1.1 release. It's better if these fix=
es can be included in RC3 so we can reduce the risk of RC4. Saul will work =
with Mark, Beth together to decide if we can delay RC3 to accommodate these=
 fixes in RC3.
> =A0 =A0. We still have remaining autobuilder issues and high bugs that we=
 cannot get in RC3, so we have to have a RC4. This will delay our Yocto 1.1=
 release to Oct 17th, 2011.
> * Opens
> =A0- videos for ADT and HOB (ScottR): Jessica is setting up the environme=
nt in order to produce the ADT screen cast. HOB will be handled by Joshua. =
ScottR is wafting for these videos.
> =A0- Beagle board testing firmware package (Darren):
> =A0 =A0Darren would like to have testing done one newer Beagle Board revi=
sions. If anyone has these boards can help. Paul has rev B (BB XM) board.
> =A0 =A0Darren would like to have guideline for recipes to package firmwar=
e. (Josh) We already have a recipe for that to package firmware. Darren wil=
l look into it.
> =A0- RPM dependency generation (Mark):
> =A0 =A0Part of the problem will be fixed by 1457. Mark will file an enhan=
cement bug to track the other part that we cannot do anything at this point=
.
> =A0- tested distros (Paul): We will need to collect the list from the tea=
m and the community. Paul takes the action item to send out emails.
>
> * Weekly team sharing
> =A0Tom: install changes from oe-core, bug tracing and fixing last week. W=
orking on Emenlow moving 3.0, basically works, some issues remain, hopefull=
y will be fixed soon. More bug fixing this week, BSP review and related wor=
k.
> =A0Denys: was working on toolchain, Yocto, OE core, meta-oe (Sorry, Denys=
, I did not catch much, please feel free to add here)
> =A0Josh: Bug fixes last week, bug fix on medium and high, and video scrip=
 this week.
> =A0Saul: working on reviewing patches, bug fixes, IP scan, blocker: Richa=
rd's remoteness and travel. Darren will be Richard this week :)
> =A0Matthew: working on getting build working on boards, basic testing.
> =A0Paul: fixing bugs as they come up until we have a release, getting the=
 tested distro list complete.
> =A0Mark: working on the RPM dependency and multi-lib
> =A0Beth: RC2 is pushed out, fixes for RC3, ADT repo.
> =A0Jessica: setting up environment for screen cast of ADT. Running into a=
ll kinds of issues, have to debug issues. Working on various things for the=
 release, working with ScottR on the ADT manual.
> =A0ScottR: finished the ADT menu, moved on to the development manual. Wai=
ting on the ADT screen cast. Would like to make a pass to every book before=
 release.
> =A0Darren: Doing internal BSP work, continuing to look at reduced kernel =
image size, boot time. Trying to throw together some tools to help identify=
 the places in the kernel to focus on. Sending out review request on this a=
nd will do another round of changes
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

