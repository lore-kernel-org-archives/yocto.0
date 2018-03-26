Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0A11E00C61; Mon, 26 Mar 2018 10:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA60DE00851
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 10:06:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Mar 2018 10:06:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,365,1517904000"; d="scan'208";a="211434636"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 26 Mar 2018 10:06:30 -0700
Received: from mingeeon-mobl7.amr.corp.intel.com (unknown [10.254.35.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 6FB5858046C
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 10:06:30 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <10facbf4-85fe-4601-f1f0-a0fa01c7b7b1@linux.intel.com>
Date: Mon, 26 Mar 2018 10:06:29 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Subject: =?UTF-8?B?WW9jdG8gUHJvamVjdCBTdGF0dXMgV1cxM+KAmTE4?=
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
X-List-Received-Date: Mon, 26 Mar 2018 17:06:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



Current Dev Position: YP 2.5 M3 final close out.
Next Deadline: YP 2.5 M4 stabilization is 4/2/18

SWAT lead is currently Ross.
SWAT team rotation: Ross -> Juro on March 30, 2018
SWAT team rotation: Juro -> Paul on April 6, 2018
https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

Key Status/Updates:
· YP 2.5 M3 rc1 was built and went into QA. This release was built on
with the ‘new’ autobuilder codebase. Some issues were found with
artefact publication but nothing to block the rc1 as yet.
· We are still blocked with morty on the glibc 2.27 and the sdk locale
issues
· Code has been added to uninative to ensure the glibc corruption that
occurred with the newer glibc cannot happen again.
· We have found a new issue where fedora 27’s version of coreutils is
using syscall() to call a syscall directly and hence corrupting
permissions of some files from pseudo’s perspective. We’re currently
discussing this with upstream as its looking problematic to fix and we’d
much prefer they use the glibc wrappers.
· We have a fix for the qemuarm64 hangs during early boot, thanks to
everyone who’s helped fix that, its much appreciated and will help our
automated tests.
· A significant win in opkg compression speed was found (thanks Ross!)

Planned upcoming dot releases:
YP 2.3.4 (Pyro) will be built after 2.5 M3
YP 2.2.4 (Morty) will be built after 2.5 M3 once the glibc 2.27 issue is
fixed
YP 2.4.3 (Rocko) is planned for post YP 2.5.

Key YP 2.5 Dates are:
YP 2.5 M3 is in QA.  See status above.
YP 2.5 M3 was scheduled for release 3/2/18
YP 2.5 M4 cut off of 4/2/18
YP 2.5 M4 release of 4/27/18

Tracking Metrics:
      WDD 2673 (last week 2673)
(https://wiki.yoctoproject.org/charts/combo.html)

Key Status Links for YP:
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.5_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.5_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.5_Features

The Status reports are now stored on the wiki at:
https://wiki.yoctoproject.org/wiki/Weekly_Status

[If anyone has suggestions for other information you’d like to see on
this weekly status update, let us know!]


