Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 965D3E00575; Tue,  2 Aug 2016 08:23:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DAF4E0049A
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 08:23:50 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2016 08:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,461,1464678000"; d="scan'208";a="743166906"
Received: from swold-mobl2.amr.corp.intel.com ([10.255.76.148])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Aug 2016 08:23:50 -0700
Message-ID: <1470151429.3175.189.camel@linux.intel.com>
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 02 Aug 2016 08:23:49 -0700
X-Mailer: Evolution 3.20.4 (3.20.4-1.fc24) 
Mime-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 7, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 02 Aug 2016 15:23:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Attendees: Saul, David Wolfe, Joshua, Belen, Ross, Mark, Bill
 
Agenda:
* Opens collection - 5 min (Stephen)
* Yocto Project status - 5 min (Stephen/team)
.	YP 2.2 M1 took longer to release 
        - Stabilize it
        - Performance issues
	   - GCC, GTK, Python3
        - Number of high bugs
        - Released
        YP 2.2 M2
        - selftest patch
        - Completed QA
          Higher number of bugs across multiple areas
        - Fixed Performance issues
          Kernel enabled DEBUG which increased size and time
          Parsing linux-yocto-dev increased time.
        YP 2.2 M3 is the final milestone for enhancements
        - M3 Closes on Aug 29th
	YP 2.1.1
        - rc1 is getting QA'ed now
        - Possible release next week pending QA completion
        YP 2.0.3 Planning
        - Has about 20 patches since 2.0.2 release
        - Possible post 2.2 timeframe (November)

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features
* Opens - 10 min
	Package Manager for 2.2 and beyond
        - probably smart for 2.2
        - looking into dnf for future
        Kernel Version will be either 4.7 or 4.8
        - Waiting for 4.8 rc2/3 and check with GregKH
        Poky - LTS/LTM Branch
        - Community Driven
        - 2 Years
        - Companies continue to push on older branches that they are
interested in.
        - Most patches would be in Oe-Core meta-data

* Team Sharing - 10 min
 RP has branch with multi-config in parallel
  - fixes various other tools
  - Distributed builds in 2.2 is unlikely due to resource constraits

Thanks,
 
Sau!

