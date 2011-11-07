Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F93E00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 11:51:52 -0800 (PST)
Received: from mail-qy0-f180.google.com ([209.85.216.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 07 Nov 2011 11:50:27 -0800
Received: by qyl38 with SMTP id 38so6182953qyl.4
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2011 11:50:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.104.137 with SMTP id ge9mr46404058igb.38.1320695426637;
	Mon, 07 Nov 2011 11:50:26 -0800 (PST)
Received: by 10.50.190.229 with HTTP; Mon, 7 Nov 2011 11:50:26 -0800 (PST)
Date: Mon, 7 Nov 2011 11:50:26 -0800
Message-ID: <CAPhnLPDNie6oGyNszyOC-H23U=jJrjf9zM2XsPF4Ciubvr2AbA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [RFC] Milestone Pull Request Deadlines.
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
X-List-Received-Date: Mon, 07 Nov 2011 19:51:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

Here is my tentative plan for the upcoming cut off times for 1.2
milestone releases. Working backwards from when the buildout needs to
be delivered to QA:

Milestone Build Finished and Delivered to QA
=====================================
Portland, OR: Wed 6:00 PM
Shanghai: Thu 10:00 AM
New York: Wed 9:00 PM
London: Thu 2:00 AM

Milestone Build Started.
All Pull Requests Merged to Milestone Branch
=====================================
Portland, OR: Wed 7:00 AM
Shanghai: Wed 11:00 PM
New York: Wed 10:00 AM
London: Wed 3:00 PM

Pull Requests Posted to the list
=====================================
Portland, OR: Sun Midnight
Shanghai: Mon 4:00 PM
New York: Mon 3:00 AM
London: Mon 8:00 AM

You'll notice that there is a slight change to the pull request cut
off time. This is so we give RP time to do code review prior to merge
into the release branch. It also allows sgw and I a few shots at MUT
builds before the merge so we can be assured of a good build. The
prior pain points tended to be around the amount of time needed for
code review/test builds. This gives us an extra day and a half to
ensure that we'll have a successful buildout for QA.

A full calendar update is in the works to incorporate these dates. Let
me know if you have any issues/concerns/comments.

--
Elizabeth Flanagan
Yocto Project
Build and Release

