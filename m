Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB0F9E00B30; Tue, 14 Jun 2016 08:16:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99909E00B04
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 08:16:08 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jun 2016 08:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,470,1459839600"; d="scan'208";a="975458626"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.26.106])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2016 08:16:02 -0700
Message-ID: <1465917361.2814.15.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	pidge@toganlabs.com, "Randle, William C" <william.c.randle@intel.com>
Date: Tue, 14 Jun 2016 16:16:01 +0100
In-Reply-To: <5759DE3F.9040002@linux.intel.com>
References: <5759DE3F.9040002@linux.intel.com>
X-Mailer: Evolution 3.20.2 (3.20.2-1.fc24) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] [RFC] Add support for generate bitbake error reports
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
X-List-Received-Date: Tue, 14 Jun 2016 15:16:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

(Resent including the list, apologies for those receiving it again)

On Thu, 2016-06-09 at 16:23 -0500, Aníbal Limón wrote:
> Hi folks,
> 
> Currently we support to send error reports to errors.yoctoproject.org
> about failing tasks on bitbake using SendErrorReport buildstep but we
> have a lack of bitbake related errors like exceptions.
> 
> A bug exist to implement this support into Error report web [1], i'm
> working on it but for generate bitbake error reports there's a need
> of
> some process monitoring the bitbake output in this case the Yocto
> Autobuilder.
> 
> This email is for review my current implementation for generate
> bitbake
> error reports in the Autobuilder [2] next i'll try to explain how it
> works.
> 
> I aadded a BitbakeShellCommand [3] class for use in the buildsteps
> that
> executes bitbake the main objective of this class is to have common
> operations to be made in bitbake commands like create error reports
> if
> fails.
> 
> For create error reports this class add an stdio observer to look at
> bitbake output and if bitbake fails review the bitbake output for
> identify if the failure is an non-related task error [4]. If the
> observer found bitbake error creates an Error report with the
> information in the master controller.
> 
> In order to send the bitbake error to Error report web the controller
> transfer the report to the worker using a new DownloadDirectory
> implementation that i made [5], the SendErrorReport buildstep works
> on
> the worker side so it's easy to transfer the reports from master to
> worker instead of send it by master.
> 
> Finally to complete with the job of have the bitbake errors reports
> the
> Error report web changes need  (i'm working on it) to be integrated
> first in order to don't break anything.
> 
> Please review it and provide me feedback.

This would've been much easier to review as a series of patches.

After a quick read via the gitweb the series as a whole looks good.

A couple of review comments:

In a04b41d37c29191318386455d8d958ff815a3a10 "lib/buildsteps.py: Add
BitbakeLogLineObserver for BitbakeShellCommands." you have a comment

"discard line that are not errors and line that is recipe task errors"

but the lines are not actually discarded, afaict  from a cursory read
through they aren't used in the rest of the series
unless errors['bitbake'] == True? 

Could we move the error['log'].append() to after the if statement which
checks whether this is a bitbake error?

Minor nit, in caf472bc696053227825c5a102feef3e17574ba2 "lib/buildsteps:
BitbakeShellCommand add support for create error reports"
in get_error_report_bitbake_dir() you use both " and ' for strings.

Same in 40279597615c49bc4f4f067cbab937584b626671

Regards,

Joshua

> 
> Cheers,
> 	alimon
> 
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=7583
> [2]
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=co
> ntrib/alimon/devel
> [3]
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/lib/
> python2.7/site-
> packages/autobuilder/lib/buildsteps.py?h=contrib/alimon/devel#n92
> [4]
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/lib/
> python2.7/site-
> packages/autobuilder/lib/buildsteps.py?h=contrib/alimon/devel#n53
> [5]
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?h
> =contrib/alimon/devel&id=4022920bb0e56d1eef3dfe7c5e9b4699f801cdf1
> 

