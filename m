Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5B14E00A0A; Fri,  7 Apr 2017 01:18:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37D84E00972
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 01:18:03 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 54BC22656F3
Message-ID: <1491553079.25991.60.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 07 Apr 2017 10:17:59 +0200
In-Reply-To: <CAHrosF9GEX9CTWTKFkuHXqS2jrZHMWKU6WKNTg1WWfcJee69Og@mail.gmail.com>
References: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
	<1491489030.31049.11.camel@linux.intel.com>
	<CAHrosF9GEX9CTWTKFkuHXqS2jrZHMWKU6WKNTg1WWfcJee69Og@mail.gmail.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Local repo no network help request
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
X-List-Received-Date: Fri, 07 Apr 2017 08:18:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-04-07 at 00:38 -0700, Matthew Phillips wrote:
> I used an alternative pathname that eliminated the "/../", however it
> still failed. The debug messages show that it is able to find the
> local repo, but it seems to be trying to access HEAD regardless.
> 
> I have also tried a couple of the additional flags that I can set for
> SRC_URI (ex. nobranch, usehead, etc.). Sadly, no option is available
> to limite remote fetch operations.
> 
> 1) Should I locally (in the .bb file) override do_fetch?
> 
> 2) I also tried running git archive [...] on the local repo, and
> pointing to the tgz file as such:
> 
> SRC_URI = "file://${TOPDIR}/my-repo.tgz
> 

can you bitbake -e your_recipe and paste SRC_URI contents ?


> However this too failed. Or, I don't think it failed in the do_fetch
> step, but it later failed during the build. (I saved the error
> messages, but I don't have them atm). Please advise...what am I doing
> incorrectly?

Please paste error message.

> 
> Thank you,
> M
> 
> On Thu, Apr 6, 2017 at 7:30 AM, Leonardo Sandoval
> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> > On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:
> > > Hi all,
> > > 
> > > I am trying to do the following:
> > > 
> > > I have a local git repo, pulled manually from a remote repo (via a script).
> > > I have a .bb file set up referencing this repo. This .bb file includes
> > > (among other things):
> > > 
> > > > > SRC_URI = "git://${TOPDIR}/../sources/my-repo;protocol=file;branch=master"
> > > > > SRCREV = "${AUTOREV}"
> > 
> > did you get the same result if you hard-coded the pathname?
> > 
> > 
> > 
> > 
> > > I do not want to use the network (so BB_NO_NETWORK is 1).
> > > 
> > > Although the SRC_URI is pointing to the correct path, the yocto build
> > > fails because it tries to access the network.
> > > 
> > > How should I be doing this instead?
> > > 
> > > I can run a script (preferably bash atm) before the build if doing
> > > something pre-build will help simplify anything.
> > > 
> > > Thank you,
> > > M
> > 
> > 

