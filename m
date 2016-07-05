Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1301AE00DE4; Tue,  5 Jul 2016 08:25:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85C8E00DDE
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 08:25:23 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 05 Jul 2016 08:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,580,1459839600"; d="scan'208";a="134188816"
Received: from swold-mobl2.jf.intel.com ([10.252.143.243])
	by fmsmga004.fm.intel.com with ESMTP; 05 Jul 2016 08:25:23 -0700
Message-ID: <1467732325.6912.229.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: Yocto Discussion <yocto@yoctoproject.org>
Date: Tue, 05 Jul 2016 08:25:25 -0700
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 5, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 05 Jul 2016 15:25:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Attendees: Saul, Richard, Randy, Armin, Joshua

Agenda:

Yocto Project:
 - YP 2.2 M1 Build has gone through QA
   - Issues with Toaster and Eclipse
   - WIC Issues but not blockers
   - Planning to release it regardless
   - Very front loaded
     - Number of enhancements for M1 uncompleted
     - Number of bugs is still high
   - Python3 issues still surfacing
     - Locale issues
   - M2 will close on July 18 5:00pm GMT

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features

 pseudo
  - lost Peter Seabach (seebs), maintainer of pseudo
  - Issues still exist in pseudo and master did not resolve

 - 2.1.1 Stable Release Status - Armin
  - Looking Green, patches merged
  - Are we ready to QA and Release?
  - A few more patches pending
     would be good to have before 11th for QA window

 - 2.0.2 Stable Release - Robert
  - Patches pending
  - pydevshell patch is pending


Opens

Tips and Tricks
- Richard is requesting interesting idea for short blog entries and the
wiki page above is the tracking location, please take a look and add
any thoughts/ideas you might have.
https://wiki.yoctoproject.org/wiki/TipsAndTricks

Randy asked about dropping UClibc, RP replied in affirmative, proposed
dropping main recipe, but not the associated patches in recipes for a
short term and then dropping patches in a future release/recipe updates




