Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 483E1E0123C
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 08:44:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2012 08:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="112689616"
Received: from unknown (HELO [10.255.15.37]) ([10.255.15.37])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2012 08:42:59 -0800
Message-ID: <4F4D0413.8050709@linux.intel.com>
Date: Tue, 28 Feb 2012 08:42:59 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Liu, Song" <song.liu@intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A38CEE8D8@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A38CEE8D8@ORSMSX101.amr.corp.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 28, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 28 Feb 2012 16:44:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Attendees:
Scott R, Jeremy, Michael H, Matthew, Tom, Jeff, Darren, Sean, Beth, 
Richard, Jessica,
Paul, Belen, Dave, Josh, Bruce.

Message to the team:
   - Please take a look at the task board, move features in development 
stage ASAP and send Song, Richard email if there's something you cannot 
make it for M3.

Agenda

* Opens collection - 5 min (Song)
* Yocto 1.1.1 point release update - 10 min (Josh/Beth)
    - ADT Bug has been addressed, will require a full rebuild
    - Beth will do rebuild after M3 is out, after Thursday

* Yocto 1.2 M3 status - 10 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status
    - M3 is moving forward, patches are being merged by Richard
    - There are some missing bits with gcc multi-lib and Build-App


* SWAT team rotation: Darren -> Beth
    - Darren suggested per-emptived "Known Issue" email for AB Failures

* Opens - 10 min
    - Michael: Bugzilla

* Team Sharing - 20 min
Bruce - Working on kernel updates and usability work-flow items,
         jumping dev kernel to to 3.3
Josh - 1.1.1 Fixing, Reviewing new Hob2
Belen - Hob2 build, working with another team member
Paul - Fixing various bugs, bitbake issues, continue bug fixing
Richard - M3 pull request, Image types compression refactor, Quoting
           issue, shared state issues, looking forward to completing M3
Beth - License Stuff, M3 and 1.1.1
Tom - 3.2 Kernel and BSP related items.
Matthew - Getting builder going, tunefile clean for PPC, testing
           multilib and internal BSPs
Michael - meta-mono, gitolite, review of reviewboard - no email
           gateway, bugzilla upgrade, VPN for Shoeleather
Scott - Working on BSP manual and Quickstart updates, External Source 
tree notes
Saul - Pulls and Image Creation for VMDK
Sean - Shoeleather, BSP Summit setup, please let Sean know about other
        potential invitees, agenda review Feb 29.



