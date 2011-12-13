Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A63BE00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 09:56:31 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Dec 2011 09:56:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="85278049"
Received: from unknown (HELO [10.255.12.219]) ([10.255.12.219])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2011 09:56:30 -0800
Message-ID: <4EE791CE.1020309@linux.intel.com>
Date: Tue, 13 Dec 2011 09:56:30 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Subject: Minutes: Yocto Technical Team Meeting - Tuesday, December 13, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 13 Dec 2011 17:56:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Attendees:
Sean, Beth, Tom, Richard, Darren, Bruce, Dave, Joshua, Mark, ScottR, Saul

New Action Item List:
* Action item Review - 5 min
   1. Mark will review unsorted features from Wind River team and try to 
have them scheduled (WIP)

Focus of the current week:
   M1 Stabilization, M2 Planning

Agenda:

* Opens collection - 5 min (Saul)
   RP: Autobuild & Bugs

* Opens - 10 min
  - Folded into 1.2 Status

* Yocto 1.0.2 and 1.1.1 point release update - 10 min (Josh/Beth)
   - Build issue on OpenSuse 11.04 with Host Intrusion
   - QA ran and found 7 problems, 1 will need to be fixed.
     - DISTRO_VERSION needs to be updated
   *  AR Josh: Email to CCB to review QA Result
   - 1.1.1 Status
     - CCB will review size of patch set in New Year
     - 1.1.1rc1 will be built before Christmas
     - QA will do a run between Christmas and New Years

* Yocto 1.2 M1 Status (features development) - 10 min (Song/Beth)
   https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status
   - We are coming up on M1 RC2 with a couple of issues related
     QT, the Auto builder and sanity testing, Saul will pull and
     get a test spin rolling

   - Richard has been clearing the Patch Queue and fixing issues with
     the build, we need to do a better job of testing patches
   - M1 Review:
     - All P1 Features made it into M1
       - Hob2 work occured in Hob2 branch
       - Self-Hosted Build Appliance can build almost all of world
         under 6 recipes failures, with pending fixes
     - Many P2 Features were also completed
       - Autoconf/Automake
       - Video Acceleration
       - Meta-Intel Config Update
       - Package History
       - Autobuilder sstate option
       - BuildStats Memory Measurements
     - Other M1 P2 Items that are close and will be delivered soon
       - GTK/Directfb (in Master now)
       - Sanity Check for Userspace (Pending fixing errors discovered by
         said sanity checks)
       - Host Intrusion (M2 Planning)
       - EFI (in Master now, bug fixes pending)
       - Grub for Syslinux Change (pending)

    - M2 Planning, please send Song Update as well as update Bug/Enhancment
    - Reveiwed Bug WDD and Bug Count

* Action item Review - 5 min
   1. Mark will review unsorted features from Wind River team and try to 
have them scheduled (WIP)
   2. Saul to look at RC1 image for issues with dbus
   3. Saul to pull Qt, Qemu and useradd patches into M1 Rc2 and get spin

* Weekly team sharing (20 min)

Scott R:
  Shared State documentation, Virtual Machine Appliance (Fedora Hosted), 
Webcast, Waiting for feedback from RP on Sstate
Mark: Windriver stuff
Joshua: Stable release, Planning M2 Tasks
Dave: Managing
Bruce: Working on M1 Late M2 Planning, Discussing with Tom/Darren Config 
Options, Standalone Linux-Yocto tree build
Darren: Meta-Tiny Update, Intel BSP Support Work, Bug Fixing
Richard: Chasing Autobuilder failures, sstate, patch merge Queue, Bug 
counte reduction
Tom: Intel BSP  work, Updated EMGD, Kernel Usability
Beth: License Stuff in Master, Milestone release, Stable 1.0.2 Release, 
Autobuilder fixes
Sean: Mentor
Saul: Non-Gplv3 Self Hosted, Bug investigation, Patch queue



_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


