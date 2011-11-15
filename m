Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17136E0030F
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 09:58:46 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Nov 2011 09:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,516,1315206000"; d="scan'208";a="75209321"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 15 Nov 2011 09:58:45 -0800
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 15 Nov 2011 09:58:44 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.168]) with mapi id
	14.01.0355.002; Tue, 15 Nov 2011 09:58:44 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - Tuesday, November 15,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHMo8A3sjRnhz93GkaWQ+NYCQfTwg==
Date: Tue, 15 Nov 2011 17:58:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F925A2@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, November 15, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 15 Nov 2011 17:58:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Matthew, Saul, Paul, Richard, Dave, Darren, Joshua, Tom, Jeff, Mark, Jessic=
a, Sean, Scott, Bruce, Lianhao, Beth, Song
=A0
* Opens collection - 5 min (Song)
* Yocto 1.0.2 and 1.1.1 point release update - 5 min (Josh)
  - Had some issues last week with autobuilder. Appeared to be resolved. Be=
th had some issues working on them yesterday. Beth is proposing some patche=
s, will check with Josh. Beth is trying to have a build today. Should have =
the build this week.
  - 1.1.1, not much progress, should be more progress next week. Possible m=
ore patches regarding most recent issues. Josh will sync with Richard. =20
* Yocto 1.2 M1 Status (features development) - 10 min (Song)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  Just finished the status and schedule update. Please get the status in bu=
gzilla by Monday morning so that I have time updating things on the wiki. H=
opefully we can automate these soon.
  - Issues:=20
    . Paul 1565/p1, no status, (Paul) Will have this in by the end of the w=
eek.
    . Beth 1546/p1, no status.
    . Some features have been staying in the current for more than 2 weeks.=
 Anything blocking?
  - Build status: sanity test issue, actually more of infrastructure proble=
m, should be resolved by now, we are mostly green.
* Opens - 10 min
  - bootloaders (Darren): syslinux and grub2 for BSPs mostly. Couple of ite=
ms to convert EFI bootloader. Having 2 to maintain is a lot of work, propos=
e to remove grub 2 from oe core. This discussion needs to continue on the m=
ailing list. I can address meta-intel BSPs only, but this can benefit other=
s also. Darren will send email to the mailing list to continue the discussi=
on.=20
    . Concerns (Sean) that grub 2 does not have home, will take it back to =
mentor and provide any feedback. Maybe removing syslinux.
    . Darren will do research on File system and chain loading and continue=
 the discussion on the mailing list.=20
  - how to deal with UEFI bootloading. A few options, efi linux, some have =
interest in dual booting, would like get some understanding on which direct=
ion to go: desktop with more flexibility or simple ones, or multi-bootloade=
r approach.
    . One bootloader for one BSP. It would be nice to support more than one=
. (Mark)
    . Unfortunately we would have to support both. (RP)
    . (Sean) From a design/layer perspective, maybe one bootloader for one =
specific BSP. Large number of HW we want to support is non-intel.
=20
  - meeting for shoeleather (Sean): Sean will organize a meeting for this p=
roject, if anyone is interested please email Sean.
=A0
* Action item Review - 5 min
1. Richard will review unsorted features and prioritize them. (WIP)
=A0
* Weekly team sharing (20 min)
=A0
Beth: get 1.0.2 build. Found some issues, finally hit the source mirror iss=
ue, solving it now. Got more performance for the autobuilder, a clean butto=
n for sstate build. This week will continue on the clean sstate build butto=
n.=20
Lianhao: travelling in US, discussing HOB design issues with Jessica, Josh,=
 getting clear on issues and plan. No blocking issues. Only thing we need t=
o discuss now is the collaboration model with designers in UK.
Bruce: working on planning for 1.2, working on some infrastructure changes =
for tools, getting ready to push to 3.2 kernel. Having issues with laptops,=
 taking 30 secs to run recipes. Pseudo is taking a long time, there might b=
e some issues. Database is growing really large (RP). Will take note of thi=
s and figure it out.=20
Saul: working with Richard, maintainers issues, pull request, process and p=
lanning on 1.2 around package updating. This week, continue on package upda=
te. Out the rest of this week for Linux con in Brazil.=20
Scott: working on issues on manuals. Trying to get hw together for fri ii.
Sean: going to be doing a conference call, if you are interested, please se=
nd me email. If there is trouble getting to me, send the email to John Cher=
ry.
Jessica: working on plugin, tools, figure out, remote tools launch, setting=
 up the meeting and framework, push to come up with a common framework. Wor=
king with lianhao on HOB review. Continue work on remote tools.
Mark: main thing is FS construction issues, prelink stuff, 64bit, continue =
to work on these things.
Jeff: nothing
Tom: spent time on going through some docs with Scott. Similar things last =
week with another Intel guy. Wrapping up to do video accelerating issues. C=
rownbay, emenlow. Will continue with that.
Josh: worked on 1.0.2 release and some 1.2 design work, will work on 1.1.1
Darren: spent time on some internal projects, helping get people start on B=
SPs, things around UEFI bootloading, will focus on some internal projects, =
get the final design for bootloader, as well as some BSP work.
Richard: catch up with various patches, get the build green, continue this =
week.
Paul: working on a number of bugs reported by community, 3 of them, a littl=
e bit work on the p1 issue. Continue on the p1 feature this week,






