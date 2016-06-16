Return-Path: <roy_garrard@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBED3E00DB6; Thu, 16 Jun 2016 14:49:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.142 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1294 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Jun 2016 14:49:04 PDT
Received: from scamp.selinc.com (scamp.selinc.com [74.117.214.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A76E00708
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 14:49:04 -0700 (PDT)
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by scamp.selinc.com (8.16.0.11/8.16.0.11) with ESMTP id u5GLRUo9001786
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 14:27:30 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: B0C3001F:A9BFE0D2-88257FD4:0072F99A;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP3 SHF227 March 23, 2015
Message-ID: <OFB0C3001F.A9BFE0D2-ON88257FD4.0072F99A-87257FD4.0075DE50@selinc.com>
From: roy_garrard@selinc.com
Date: Thu, 16 Jun 2016 15:27:28 -0600
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 06/16/2016 02:27:30 PM,
	Serialize complete at 06/16/2016 02:27:30 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8198
	signatures=670732
Subject: Mercurial Fetcher and AUTOREV
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
X-List-Received-Date: Thu, 16 Jun 2016 21:49:06 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0075DE4E87257FD4_="

--=_alternative 0075DE4E87257FD4_=
Content-Type: text/plain; charset="US-ASCII"

I'm trying to get a bitbake file to pull down the latest revision of a 
mercurial repo when it builds. It's unfortunately undocumented (
https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#auto-revisions
), though there are a few mailing list posts on the topic. None of my 
attempts to recreate their methods have panned out.

This is what the .bb file looks like:

###############################################################################
# Variables for locations.
###############################################################################
SRC_URI = "hg://selhg//hg/products/test;rev=${SRCREV}
;protocol=ssh;branch=default;module=root"
SRCREV = "${AUTOREV}"

# Sources are downloaded to an hg subdirectory when pulling a repo.
S = "${WORKDIR}/hg"

###############################################################################
# The version of the library we're going to install.
###############################################################################
# Set PV to SRCPV so bitbake knows it should always check SRC_URI for a 
new
# version of the application.
PV = "${SRCPV}"
PR = "r0"
PE = "1"


And here's the relevant part of the output error:


/usr/bin/env hg up -C -r AUTOINC
| DEBUG: Python function base_do_unpack finished
| DEBUG: Python function do_unpack finished
| ERROR: Function failed: Fetcher failure: Fetch command failed with exit 
code 255, output:
| abort: unknown revision 'AUTOINC'!
| 
NOTE: recipe test-1_AUTOINC+AUTOINC-r0: task do_unpack: Failed
DEBUG: Teardown for bitbake-worker
NOTE: Tasks Summary: Attempted 361 tasks of which 359 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
  /home/roygarr/git/poky/meta/recipes-core/test/test_0.0.1.bb, do_unpack
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


The problem seems to be that AUTOREV is resolving to AUTOINC instead of a 
hash number. There are a few mumblings across the forums that this has to 
do with the PV and SRCREV variables, but I haven't been able to connect 
the dots.

I have had some success in recreating this with the Git fetcher. The .bb 
file is almost identical, but something about it works out in a more 
positive way. My money's on the "rev=" argument that the hg fetcher needs 
but the git fetcher doesn't.

###############################################################################
# Variables for locations.
###############################################################################
SRC_URI = 
"git://lpul-hg.ad.selinc.com/git/repos/products/test;protocol=ssh;branch=master"
SRCREV = "${AUTOREV}"

# Sources are downloaded to a git subdirectory when pulling a repo.
S = "${WORKDIR}/git"

###############################################################################
# The version of the library we're going to install.
###############################################################################
# Set PV to SRCPV so bitbake knows it should always check SRC_URI for a 
new
# version of the application.
PV = "${SRCPV}"
PR = "r0"
PE = "1"

...

DEBUG: Executing task do_clean
NOTE: recipe test-1_AUTOINC+1072c0d5c6-r0: task do_clean: Started
NOTE: recipe test-1_AUTOINC+1072c0d5c6-r0: task do_clean: Succeeded


Any insight you can offer would be appreciated.

- Roy, Intern at SEL


--=_alternative 0075DE4E87257FD4_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I'm trying to get a bitbake file to pull
down the latest revision of a mercurial repo when it builds. It's unfortunately
undocumented (</font><a href="https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#auto-revisions"><font size=2 color=blue face="sans-serif">https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#auto-revisions</font></a><font size=2 face="sans-serif">),
though there are a few mailing list posts on the topic. None of my attempts
to recreate their methods have panned out.</font>
<br>
<br><font size=2 face="sans-serif">This is what the .bb file looks like:</font>
<br>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console"># Variables for locations.</font>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console">SRC_URI = &quot;hg://selhg//hg/products/test;<b>rev=${SRCREV}</b>;protocol=ssh;branch=default;module=root&quot;</font>
<br><font size=2 face="Lucida Console">SRCREV = &quot;${AUTOREV}&quot;</font>
<br>
<br><font size=2 face="Lucida Console"># Sources are downloaded to an hg
subdirectory when pulling a repo.</font>
<br><font size=2 face="Lucida Console">S = &quot;${WORKDIR}/hg&quot;</font>
<br>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console"># The version of the library we're
going to install.</font>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console"># Set PV to SRCPV so bitbake knows
it should always check SRC_URI for a new</font>
<br><font size=2 face="Lucida Console"># version of the application.</font>
<br><font size=2 face="Lucida Console">PV = &quot;${SRCPV}&quot;</font>
<br><font size=2 face="Lucida Console">PR = &quot;r0&quot;</font>
<br><font size=2 face="Lucida Console">PE = &quot;1&quot;</font>
<br>
<br>
<br><font size=2 face="sans-serif">And here's the relevant part of the
output error:</font>
<br>
<br>
<br><font size=2 face="Lucida Console">/usr/bin/env hg up -C -r AUTOINC</font>
<br><font size=2 face="Lucida Console">| DEBUG: Python function base_do_unpack
finished</font>
<br><font size=2 face="Lucida Console">| DEBUG: Python function do_unpack
finished</font>
<br><font size=2 face="Lucida Console">| ERROR: Function failed: Fetcher
failure: Fetch command failed with exit code 255, output:</font>
<br><font size=2 face="Lucida Console">| abort: unknown revision 'AUTOINC'!</font>
<br><font size=2 face="Lucida Console">| </font>
<br><font size=2 face="Lucida Console">NOTE: recipe <b>test-1_AUTOINC+AUTOINC-r0</b>:
task do_unpack: Failed</font>
<br><font size=2 face="Lucida Console">DEBUG: Teardown for bitbake-worker</font>
<br><font size=2 face="Lucida Console">NOTE: Tasks Summary: Attempted 361
tasks of which 359 didn't need to be rerun and 1 failed.</font>
<br>
<br><font size=2 face="Lucida Console">Summary: 1 task failed:</font>
<br><font size=2 face="Lucida Console">&nbsp; /home/roygarr/git/poky/meta/recipes-core/test/test_0.0.1.bb,
do_unpack</font>
<br><font size=2 face="Lucida Console">Summary: There was 1 ERROR message
shown, returning a non-zero exit code.</font>
<br>
<br>
<br><font size=2 face="sans-serif">The problem seems to be that AUTOREV
is resolving to AUTOINC instead of a hash number. There are a few mumblings
across the forums that this has to do with the PV and SRCREV variables,
but I haven't been able to connect the dots.</font>
<br>
<br><font size=2 face="sans-serif">I have had some success in recreating
this with the Git fetcher. The .bb file is almost identical, but something
about it works out in a more positive way. My money's on the &quot;rev=&quot;
argument that the hg fetcher needs but the git fetcher doesn't.</font>
<br>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console"># Variables for locations.</font>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console">SRC_URI = &quot;git://lpul-hg.ad.selinc.com/git/repos/products/test;protocol=ssh;branch=master&quot;</font>
<br><font size=2 face="Lucida Console">SRCREV = &quot;${AUTOREV}&quot;</font>
<br>
<br><font size=2 face="Lucida Console"># Sources are downloaded to a git
subdirectory when pulling a repo.</font>
<br><font size=2 face="Lucida Console">S = &quot;${WORKDIR}/git&quot;</font>
<br>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console"># The version of the library we're
going to install.</font>
<br><font size=2 face="Lucida Console">###############################################################################</font>
<br><font size=2 face="Lucida Console"># Set PV to SRCPV so bitbake knows
it should always check SRC_URI for a new</font>
<br><font size=2 face="Lucida Console"># version of the application.</font>
<br><font size=2 face="Lucida Console">PV = &quot;${SRCPV}&quot;</font>
<br><font size=2 face="Lucida Console">PR = &quot;r0&quot;</font>
<br><font size=2 face="Lucida Console">PE = &quot;1&quot;</font>
<br>
<br><font size=2 face="Lucida Console">...</font>
<br>
<br><font size=2 face="Lucida Console">DEBUG: Executing task do_clean</font>
<br><font size=2 face="Lucida Console">NOTE: recipe <b>test-1_AUTOINC+1072c0d5c6-r0</b>:
task do_clean: Started</font>
<br><font size=2 face="Lucida Console">NOTE: recipe test-1_AUTOINC+1072c0d5c6-r0:
task do_clean: Succeeded</font>
<br>
<br>
<br><font size=2 face="sans-serif">Any insight you can offer would be appreciated.</font>
<br>
<br><font size=2 face="sans-serif">- Roy, Intern at SEL</font>
<br>
<br>

--=_alternative 0075DE4E87257FD4_=--
