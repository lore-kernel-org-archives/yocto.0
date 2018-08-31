Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E842E0074B; Fri, 31 Aug 2018 09:42:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7343DE005B1
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 09:42:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 41D3D5410;
	Fri, 31 Aug 2018 09:42:37 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Qa8XactvVoH; Fri, 31 Aug 2018 09:42:30 -0700 (PDT)
Received: from android-a8ad607dc99b25c1 (h-244-80.A137.corp.bahnhof.se
	[176.10.244.80])
	by smtp1.genivi.org (Postfix) with ESMTPSA id B7E625490;
	Fri, 31 Aug 2018 09:42:29 -0700 (PDT)
Message-ID: <1535733503.21014.160.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Alan Martinovic <alan.martinovic@senic.com>, Yocto-mailing-list
	<yocto@yoctoproject.org>
In-Reply-To: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
Organization: GENIVI Alliance
Date: Fri, 31 Aug 2018 18:38:23 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: Re: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Fri, 31 Aug 2018 16:42:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Alan,

You asked for advice, so here I go.  Might not be what you need/want but we
will see.

On Fri, 2018-08-31 at 12:49 +0200, Alan Martinovic wrote:
> Hi,
> am just in the process of forming a base for automated nightly builds.
> The goal is to have the build process run every night and report what
>  the status was.
> 
> I've opted for python for all the conditionals and checks 

OK, so you might already be planning to do what we're doing (conditionals
and checks in script, but then calling that script from a full CI system)? 

Just to be sure that you're not also planning to do the scheduling of builds
and bookkeeping of results in your script  -- of course it's totally your
choice, but my advise would be to take the time and set up a "real" CI
server locally (choose any of them).  Many can be found packaged in docker
containers so there's little fuss in the setup.

You said "nightly" but I'm just going to call it CI (continuous integration)
from now on.

I think you will be happy to have a nice front end, keeping a history of
builds to go back to, get desktop/mobile notifications, dashboards, and so
on.  And once you start you'll probably want to add on more automation :-)

Maybe this was your plan already!

> and then have external bash scripts that actually sets the environment and
> invokes bitbake.
> 
> Did it like that because I didn't find a clean way so far to deal with 
> 
>     source oe/oe-init-build-env
> 
> from python.

Already answered, but I agree - you must execute a bash script (which then
in turn is free to "source" the oe-init script)

> 
> Would like to hear how did you script bitbake and how does your setup look
> like?

Most of this might be way overkill for your needs but:

init.sh [1], which wraps oe-init-build-env.  The main purpose is to update
all layers that we keep as submodules.  Minor thing - it downloads only the
required BSP layers for the selected MACHINE.  That's also why it is tied
into our call chain for bitbake, when the value of the MACHINE variable is
known.

init.sh handles also some details so users can avoid having to edit conf
files.  Such as, if required, the user is asked interactively to accept a
EULA and if they do, the appropriate line is added to conf.  It's just
convenient to not have to know the exact conf-file syntax.

Now, I know you asked for nightly-build setup, but encoding such manual
editing steps is also needed for automation.

Now we come to ci-build.sh [2] - another layer above init.sh, containing
lots of examples of handling special cases.  Again tweaking the conf files
with lots of conditionals.  That script is very complex, but on the other
hand much of that complexity is now avoided in the CI instructions.  We
found it very useful to hide all the special cases in there.  (You might
prefer python for such a complex script).

Another reason is that configuration that normally requires you to write
things into the Yocto/OE .conf files is there transformed to variability
through environment variables.  This is significant, because it is normally
very convenient to set environment variables in the CI system.  Our ci-build 
script exposes some pretty advanced things to environment variables, like:
"build the given version of the project, but for this particular layer I
want to try this tag/commit/branch of the layer instead".  And of course
lots of Yocto/OE variation like generate licenses, source code packages,
location of downloads/sstate cache, any project-unique steps you need to
take before calling bitbake.

Another general preference (but this might be personal thing for me) is:
whenever you think "The user (or myself) just needs to add some flag to this
file (local.conf)", then instead think: How can I have such a variant of the
file already prepared?.   Granted, we let our scripts modify the conf-files
as I noted, but we also try to keep fully static and prepared files as much
as possible under version control.  And then select the file somehow.  It
removes the modification steps, so it is less brittle, and it's another
method to avoid the user having to know lots of detailed syntax.  Using
hierarchical "include" statements can help organize such variability - see
[3]

Probably way more than you asked for, but hope some of it helps.

Sincerely,
- Gunnar

[1] https://github.com/GENIVI/genivi-dev-platform/blob/master/init.sh
[2] https://github.com/GENIVI/genivi-dev-platform/blob/master/scripts/ci-build.sh
[3] https://github.com/GENIVI/genivi-dev-platform/tree/master/gdp-src-build/conf/templates

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance




