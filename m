Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2949E00307
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2011 08:44:15 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2011 08:44:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="84073516"
Received: from unknown (HELO [10.255.12.199]) ([10.255.12.199])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2011 08:44:14 -0800
Message-ID: <4EDE465E.4000800@linux.intel.com>
Date: Tue, 06 Dec 2011 08:44:14 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, December 06, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 06 Dec 2011 16:44:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Attendees:
Beth, Darren, Tom, Matthew, Scott R., Sean, Richard, Paul, Jeff, Denys,
Bruce, Mark, Dave, Song

New Action Item List:
* Action item Review - 5 min
   1. Mark will review unsorted features from Wind River team and try to 
have them scheduled (WIP)

Focus of the current week:
   M1 development and bug fixing, keep features on schedule, get patches 
reviewed or pre-reviewed as soon as possible.

Agenda:

* Opens collection - 5 min (Song)


* Opens - 10 min
  - Tested Distro - Paul requested that people review the Tested Distro 
list and send updates.

* Yocto 1.0.2 and 1.1.1 point release update - 10 min (Josh/Beth)
   . Had an almost complete build for 1.0.2 last week, but still have 
some problems. Joshua is working on it. Targeting this week to have a build.
   . Will have CCB review the overall patch strategy for 1.1.1 tomorrow.
* Yocto 1.2 M1 Status (features development) - 10 min (Song/Beth)
   https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status     . We 
are in the 5th week of M1. Feature complete coming this weekend
     . The build is green, no high bugs.
     . Test plan for all testable features have been completed, will be 
executed when the feature is in the build.
     . Great progress on P1 features last week, One small P1 has 20% 
done. all others are more than 70% complete. Most of them are more than 
80% complete.
     . Last week has a great surprise on bug fixing, fixed about 20 
bugs. Richard contributed most of them
     . Not great update on package update. Only one package update  last 
week, Saul and Song will follow up on that.
     . Darren 1635: this one may have to be rescheduled. Darren will see 
  how to fit this one into the rest of his schedule.
     . Issue: lots of features in the development stage, there could be 
a stampede of patch review and pull request in this last development week.
       - Consensus of the team: most of the people are working 
diligently to keep the features on schedule and also get patches 
pre-reviewed. We should allow more time for this to work.
       - We should publish the current process we are using so that the 
community can understand it better.

* Action item Review - 5 min
   1. Mark will review unsorted features from Wind River team and try to 
have them scheduled (WIP)

* Weekly team sharing (20 min)
  Dave: Manager and
  Mark: Internal WR stuff, Bitbake runtask work - mechanism to call into 
bitbake, prelinker maybe ARM-eabi prevents linkage
  Bruce: Traveling, M2 dev on schedule dev kernel 3.2rc4, Tracking 
Stable 3.0rt, Main RT at 3.2, kernel updating and BSP refreshes 1.2 will 
be at least 3.2
  Denys: Nothing
  Jeff: Nothing
  Paul: Finished BuildHistory - enable on AB?, QT 4.8.0 release, 
bugfixing no blockers
  Richard: Patch pulling, slowed down by HW issue, moving forward to 
address M1 and master updating.
  Sean: Nothing
  Scott R: Cleaning up Doc Bugs 1773, 1500, continuing with bugs and 
working on Website doc pages, no blockers
  Matthew: Nothing
  Tom: Finished off M1 Intel video acceleration, internal bsp and support
  Darren: EFI Support (pounding head on desk), looking into other odd 
behavior, internal BSP work.
  Beth: License M1 task - custom license, license manifest, license 
cleanup, License Audit (team effort in the future), Gearing up for M1
  Saul: Recovering from Sick, Pull wrangling, helping Joshua out with 
1.0.2 debugging, selfhosted image work


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


