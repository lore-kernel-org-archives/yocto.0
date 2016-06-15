Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60901E00CBB; Wed, 15 Jun 2016 07:14:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF3C7E00CAC
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 07:14:52 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 15 Jun 2016 07:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,476,1459839600"; d="scan'208";a="828591167"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.11.173])
	by orsmga003.jf.intel.com with ESMTP; 15 Jun 2016 07:13:52 -0700
Message-ID: <1466000030.2995.10.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	"pidge@toganlabs.com"
	<pidge@toganlabs.com>, "Randle, William C" <william.c.randle@intel.com>
Date: Wed, 15 Jun 2016 15:13:50 +0100
In-Reply-To: <5761613D.9070406@linux.intel.com>
References: <5759DE3F.9040002@linux.intel.com>
	<1465916993.2814.14.camel@intel.com> <57602958.70402@linux.intel.com>
	<576038D0.3090100@linux.intel.com>
	<1465996755.2995.5.camel@linux.intel.com>
	<5761613D.9070406@linux.intel.com>
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
X-List-Received-Date: Wed, 15 Jun 2016 14:14:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-06-15 at 09:07 -0500, Aníbal Limón wrote:
> 
> On 06/15/2016 08:19 AM, Joshua G Lock wrote:
> > On Tue, 2016-06-14 at 12:03 -0500, Aníbal Limón wrote:
> > > 
> > > On 06/14/2016 10:57 AM, Aníbal Limón wrote:
> > > > 
> > > > 
> > > > On 06/14/2016 10:09 AM, Lock, Joshua G wrote:
> > > > > On Thu, 2016-06-09 at 16:23 -0500, Aníbal Limón wrote:
> > > > > > Hi folks,
> > > > > > 
> > > > > > Currently we support to send error reports to
> > > > > > errors.yoctoproject.org
> > > > > > about failing tasks on bitbake using SendErrorReport
> > > > > > buildstep
> > > > > > but we
> > > > > > have a lack of bitbake related errors like exceptions.
> > > > > > 
> > > > > > A bug exist to implement this support into Error report web
> > > > > > [1], i'm
> > > > > > working on it but for generate bitbake error reports
> > > > > > there's a
> > > > > > need
> > > > > > of
> > > > > > some process monitoring the bitbake output in this case the
> > > > > > Yocto
> > > > > > Autobuilder.
> > > > > > 
> > > > > > This email is for review my current implementation for
> > > > > > generate
> > > > > > bitbake
> > > > > > error reports in the Autobuilder [2] next i'll try to
> > > > > > explain
> > > > > > how it
> > > > > > works.
> > > > > > 
> > > > > > I aadded a BitbakeShellCommand [3] class for use in the
> > > > > > buildsteps
> > > > > > that
> > > > > > executes bitbake the main objective of this class is to
> > > > > > have
> > > > > > common
> > > > > > operations to be made in bitbake commands like create error
> > > > > > reports
> > > > > > if
> > > > > > fails.
> > > > > > 
> > > > > > For create error reports this class add an stdio observer
> > > > > > to
> > > > > > look at
> > > > > > bitbake output and if bitbake fails review the bitbake
> > > > > > output
> > > > > > for
> > > > > > identify if the failure is an non-related task error [4].
> > > > > > If
> > > > > > the
> > > > > > observer found bitbake error creates an Error report with
> > > > > > the
> > > > > > information in the master controller.
> > > > > > 
> > > > > > In order to send the bitbake error to Error report web the
> > > > > > controller
> > > > > > transfer the report to the worker using a new
> > > > > > DownloadDirectory
> > > > > > implementation that i made [5], the SendErrorReport
> > > > > > buildstep
> > > > > > works
> > > > > > on
> > > > > > the worker side so it's easy to transfer the reports from
> > > > > > master to
> > > > > > worker instead of send it by master.
> > > > > > 
> > > > > > Finally to complete with the job of have the bitbake errors
> > > > > > reports
> > > > > > the
> > > > > > Error report web changes need  (i'm working on it) to be
> > > > > > integrated
> > > > > > first in order to don't break anything.
> > > > > > 
> > > > > > Please review it and provide me feedback.
> > > > > 
> > > > > This would've been much easier to review as a series of
> > > > > patches.
> > > > > 
> > > > > After a quick read via the gitweb the series as a whole looks
> > > > > good.
> > > > > 
> > > > > A couple of review comments:
> > > > > 
> > > > > In a04b41d37c29191318386455d8d958ff815a3a10
> > > > > "lib/buildsteps.py:
> > > > > Add
> > > > > BitbakeLogLineObserver for BitbakeShellCommands." you have a
> > > > > comment
> > > > > 
> > > > > "discard line that are not errors and line that is recipe
> > > > > task
> > > > > errors"
> > > > > 
> > > > > but the lines are not actually discarded, afaict  from a
> > > > > cursory
> > > > > read
> > > > > through they aren't used in the rest of the series
> > > > > unless errors['bitbake'] == True? 
> > > > > 
> > > > > Could we move the error['log'].append() to after the if
> > > > > statement
> > > > > which
> > > > > checks whether this is a bitbake error?
> > > > 
> > > > Yes and i'll update the commit message to be more consistent.
> > > > 
> > > > > 
> > > > > Minor nit, in caf472bc696053227825c5a102feef3e17574ba2
> > > > > "lib/buildsteps:
> > > > > BitbakeShellCommand add support for create error reports"
> > > > > in get_error_report_bitbake_dir() you use both " and ' for
> > > > > strings.
> > > > > 
> > > > > Same in 40279597615c49bc4f4f067cbab937584b626671
> > > > 
> > > > I'll fix the typos for only use "".
> > > > 
> > > > 	alimon
> > > > 
> > > I updated the branch with the changes suggested now at,
> > > 
> > > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?
> > > h=co
> > > ntrib/alimon/devel
> > 
> > Is that the right location? For example I still see log lines being
> > appended to error['log'] *before* the check to discard lines in:
> > 
> > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/
> > ?h=c
> > ontrib/alimon/devel&id=742e5bf33934c4ec9de9136a854e190aaf8ba0b3
> > 
> > +    def _handleError(self, line):
> > +        if not hasattr(self.step, 'errors'):
> > +            self.step.errors = {}
> > +            self.step.errors['bitbake'] = False
> > +            self.step.errors['log'] = []
> > +
> > +        # save all the log for be able to get report variables
> > like
> > +        # machine, target, distro, etc
> > +        self.step.errors['log'].append(line)
> > +
> > +        # discard line that are not errors and line that
> > +        # is recipe task errors
> > +        if (not self.rexp_error.match(line)) or \
> > +                self.rexp_pnpv_error.match(line) or \
> > +                self.rexp_task_error.match(line) or \
> > +                self.rexp_log_error.match(line):
> > +            return
> > +
> > +        # if not match recipe task type is a bitbake
> > exception/error
> > +        self.step.errors['bitbake'] = True
> > 
> > whereas I think we only need to save log lines when it's a bitbake
> > error, i.e:
> > 
> > +    def _handleError(self, line):
> > +        if not hasattr(self.step, 'errors'):
> > +            self.step.errors = {}
> > +            self.step.errors['bitbake'] = False
> > +            self.step.errors['log'] = []
> > +
> > +        # discard line that are not errors and line that
> > +        # is recipe task errors
> > +        if (not self.rexp_error.match(line)) or \
> > +                self.rexp_pnpv_error.match(line) or \
> > +                self.rexp_task_error.match(line) or \
> > +                self.rexp_log_error.match(line):
> > +            return
> > +
> > +        # save all the log for be able to get report variables
> > like
> > +  
> >       # machine, target, distro, etc
> > +        self.step.errors['log'].ap
> > pend(line)
> > +
> > +        # if not match recipe task type is a bitbake
> > exception/error
> > +        self.step.errors['bitbake'] = True
> > 
> 
> I tried to explain this in the comment above append log, we need the
> full log for get information about machine. distro, etc also if a
> line
> don't match but then is discover that is a bitbake error we  want to
> have the full log not discarding recipe/task errors because some
> times
> the context about bitbake error/exception matters.

Ahah, I hadn't seen that comment. I think I got hung up on the comment
"discard line that are not errors and line that is recipe task errors"
when we don't really discard the line, we just don't mark it as a
bitbake error.

> > Further 
> > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/
> > ?h=c
> > ontrib/alimon/devel&id=2523c869855d8e2393b9dd7142c0992908444584
> > 
> > still has typo's in the commit title and message.
> > 
> > Finally, please don't end the subject line of commit messages with
> > a
> > period.
> > 
> 
> I'll fix the commit msg.

Thanks!

Regards,

Joshua

> 	alimon
> 
> > Regards,
> > 
> > Joshua
> > 
> > > 	alimon
> > > 
> > > > > 
> > > > > Regards,
> > > > > 
> > > > > Joshua
> > > > > 
> > > > > > 
> > > > > > Cheers,
> > > > > > 	alimon
> > > > > > 
> > > > > > [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=7583
> > > > > > [2]
> > > > > > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder
> > > > > > /log
> > > > > > /?h=co
> > > > > > ntrib/alimon/devel
> > > > > > [3]
> > > > > > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder
> > > > > > /tre
> > > > > > e/lib/
> > > > > > python2.7/site-
> > > > > > packages/autobuilder/lib/buildsteps.py?h=contrib/alimon/dev
> > > > > > el#n
> > > > > > 92
> > > > > > [4]
> > > > > > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder
> > > > > > /tre
> > > > > > e/lib/
> > > > > > python2.7/site-
> > > > > > packages/autobuilder/lib/buildsteps.py?h=contrib/alimon/dev
> > > > > > el#n
> > > > > > 53
> > > > > > [5]
> > > > > > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder
> > > > > > /com
> > > > > > mit/?h
> > > > > > =contrib/alimon/devel&id=4022920bb0e56d1eef3dfe7c5e9b4699f8
> > > > > > 01cd
> > > > > > f1
> > > > 
> > > > 
> > > > 
> > > 
> 

