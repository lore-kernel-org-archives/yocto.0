Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A5B4E00810; Wed, 11 Mar 2015 03:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA78CE0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 03:33:00 -0700 (PDT)
Received: from [99.240.204.5] (port=37571 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YVdwk-0002RI-59
	for yocto@yoctoproject.org; Wed, 11 Mar 2015 06:33:02 -0400
Date: Wed, 11 Mar 2015 06:32:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503101623180.842@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: observations on bitbake user manual, first part of chapter 3
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
X-List-Received-Date: Wed, 11 Mar 2015 10:33:04 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  ... soldiering on, man this is a long chapter ...

3.1.8 Appending and Prepending ...

  while this section is correct, it really doesn't explain why one
would *want* to use _append and _prepend as opposed to the earlier
operators. newer users might not appreciate the importance of the
distinction, and will wonder when to use each variation.

3.1.11 Inline Python Variable Expansion

  never noticed this before ... won't the result of the examples used
in this section depend on whether one uses "=" or ":="?

  eg., in this case:

    DATE = "${@time.strftime('%Y%m%d',time.gmtime())}"

  that will be a delayed evaluation, correct? so that DATE will be
assigned the date and time when it's referenced, as opposed to using

    DATE := ...

  that distinction isn't really made clear and i think it should be.
similarly, the next couple lines of example:

   PN = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or 'defaultpkgname'}"
   PV = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[1] or '1.0'}"

  if that is also delayed evaluation, would it not make more sense to
use ":=" for efficiency, rather than having to re-evaluate the Python
call each time ${PN} and ${PV} are used (since they won't change in
the context of a recipe)? or am i missing something here?

3.2.1 Conditional metadata

  example:

     DEPENDS = "glibc ncurses"
     OVERRIDES = "machine:local"
     DEPENDS_append_machine = "libmad"

nitpickery, but shouldn't that last line use " libmad"?  (leading
space)

3.2.3 Examples

  i mentioned this recently, but that whole section just seems weird
... i'm not sure what it means to say:

  VAR_foo_append = "X"

and how that affects VAR. can someone sanity check that section and
see if it's right? at the very least, readers should be warned off
using "_append" and "+=" in the same line, which is an example shown
in that section.

3.6 Variable Flags

  with the "[dirs]" flag, as i recall, not only will the directories
be created, but the task will be "cd"ed to the final directory in that
list, no?

  i'm looking at lib/bb/build.py in exec_func(), and there's this
code:

    if dirs is None:
        dirs = flags.get('dirs')
        if dirs:
            dirs = d.expand(dirs).split()

    if dirs:
        for adir in dirs:
            bb.utils.mkdirhier(adir)
        adir = dirs[-1]
    else:
        adir = d.getVar('B', True)
        bb.utils.mkdirhier(adir)

and, finally, toward the bottom of that routine, one sees:

    with bb.utils.fileslocked(lockfiles):
        if ispython:
            exec_func_python(func, d, runfile, cwd=adir)
        else:
            exec_func_shell(func, d, runfile, cwd=adir)

which *seems* to suggest the final value of "adir" will be the
subsequent current working directory. if that's true, it might be
worth noting in the manual as some users will probably need to know
that.

  oh, and knowing this will make it clear why some classes prepend
instead of append, as in ccache.bbclass:

do_configure[dirs] =+ "${CCACHE_DIR}"

  also, in that same section on task flags, there is no mention of the
"recideptask" flag. should it be there?

  that's all i have for now, more later ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

