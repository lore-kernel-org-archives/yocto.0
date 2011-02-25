Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CC6C4C800AE
	for <yocto@yoctoproject.org>; Fri, 25 Feb 2011 09:21:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Feb 2011 07:21:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,225,1297065600"; d="scan'208";a="713262647"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by orsmga001.jf.intel.com with ESMTP; 25 Feb 2011 07:21:53 -0800
Message-ID: <4D67C90F.5030007@intel.com>
Date: Fri, 25 Feb 2011 07:21:51 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	"'McCombe, Kevin'" <kevin.mccombe@windriver.com>, 
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>,
	"Fleischer, Julie N" <julie.n.fleischer@intel.com>, 
	"'paul.anderson@windriver.com'" <paul.anderson@windriver.com>,
	"Lock, Joshua" <joshua.lock@intel.com>, 
	Bruce Ashfield <bruce.ashfield@gmail.com>,
	"'Polk, Jeffrey'" <jeff.polk@windriver.com>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>,
	Saul Wold <saul.wold@intel.com>, 
	"Erway, Tracey M" <tracey.m.erway@intel.com>,
	"Hohndel, Dirk" <dirk.hohndel@intel.com>, 
	"deVries, Alex" <Alex.deVries@windriver.com>,
	Mark Hatle <mark.hatle@windriver.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 25 Feb 2011 11:47:24 -0600
Subject: [ANNOUNCEMENT] Yocto Bernard 1.0 Release Candidate Readiness Review Meeting
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
X-List-Received-Date: Fri, 25 Feb 2011 15:21:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

First, thank you everyone for all the hard work stabilizing master. As we close out the week, we enter into the next
phase of our release cycle, release candidate verification and validation. This coming weekend we will branching master
and spin the first of our release candidates for Yocto 1.0.

For the next few weeks, until we have a fully vetted gold build, we will be holding regular release readiness review
meetings. The purpose of these meetings is to go through the current release candidate and ultimately decide if it meets
release standards as set by the steering committee.

Agenda:

- Feature Status
  - Planned features yet to be pulled into master.
- Status of the Release Candidate Build
  - known build issues including sanity tests
  - status of BSP builds
- QA Status
  - number of open defects by level of importance
- Performance Status
  - build performance statistics of release candidate

Decisions:
- If feature incomplete, do we drop those features not implemented entirely attempt to fix them into existence.
- Is current performance acceptable?
- What are the current acceptable defects allowed and do we meet that.

Monday, February 28, 2011, 10:00 AM US Pacific Time
916-356-2663, Bridge: 3, Passcode: 9653542

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

