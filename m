Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F08DE00C91; Thu, 10 Mar 2016 02:04:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFCFFE00C28
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 02:04:41 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 10 Mar 2016 02:04:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,315,1455004800"; d="scan'208";a="63439216"
Received: from jlock-mobl1.gar.corp.intel.com ([10.252.202.107])
	by fmsmga004.fm.intel.com with ESMTP; 10 Mar 2016 02:04:40 -0800
Message-ID: <1457604278.4090.13.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Mar 2016 10:04:38 +0000
In-Reply-To: <56E141B0.8060102@mlbassoc.com>
References: <56E12C5E.6030904@mlbassoc.com>
	<1457602551.4090.0.camel@linux.intel.com>
	<56E141B0.8060102@mlbassoc.com>
X-Mailer: Evolution 3.18.5.1 (3.18.5.1-1.fc23) 
Mime-Version: 1.0
Subject: Re: Long-term package revision maintenance
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
X-List-Received-Date: Thu, 10 Mar 2016 10:04:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-03-10 at 10:43 +0100, Gary Thomas wrote:
> On 2016-03-10 10:35, Joshua G Lock wrote:
> > 
> > On Thu, 2016-03-10 at 09:12 +0100, Gary Thomas wrote:
> > > 
> > > I've been running local PR servers for my builds.  This works
> > > quite well, as long as I don't touch my build trees.
> > > 
> > > What's the best way to manage versions long-term?  i.e. if I
> > > have a deployed system that I build today, but may not touch
> > > for a long time (years?) and I might not want to keep my build
> > > trees for that long.  If I just blow away the build tree, the
> > > next time I build for that target, all of the version info will
> > > be lost.  I'd like to be able to pick up where I left off.
> > We have a bitbake-prserv-tool script:
> > 
> > $ bitbake-prserv-tool
> > Usage: bitbake-prserv-tool command
> > Avaliable commands:
> > 	export <file.conf>: export and lock down the AUTOPR values from
> > the PR service into a file for release.
> > 	import <file.conf>: import the AUTOPR values from the exported
> > file into the PR service.
> > 
> > I haven't used it but it certainly reads like what you want?
> > 
> Did you miss all the questions I had about it (that you cut from the
> reply)?

Evidently yes, apologies — I clearly need more coffee.

Unfortunately I don't have the knowledge to answer those questions, but
a quick look at the git history[1], related ticket[2] and wiki[3] makes
me think it was designed to work as you hope.

If you have build trees available it should be fairly cheap to verify,
I think.

This seems like a scenario we should document in the "Working With a PR
Service"[4] section of the Yocto Project Development Manual so please
do let us know how you get on.

Regards,

Joshua

1. http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=a05e3a57c6
f567578faeb31fae89b20e22850af4
2. https://bugzilla.yoctoproject.org/show
_bug.cgi?id=1556
3. https://wiki.yoctoproject.org/wiki/PR_Service#Export
_Functionality
4. http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#work
ing-with-a-pr-service

