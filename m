Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E149E00C88; Fri, 16 Sep 2016 07:37:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6EA8E00B74
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 07:37:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 16 Sep 2016 07:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,345,1470726000"; d="scan'208";a="1031597895"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.107])
	by orsmga001.jf.intel.com with ESMTP; 16 Sep 2016 07:37:48 -0700
Message-ID: <1474036666.2923.6.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <bill.randle@gmail.com>
Date: Fri, 16 Sep 2016 15:37:46 +0100
In-Reply-To: <CA+n--H_scFqtfah2QPxJfZON+wGDW3=O-T3ZVPXtz0+5527sFQ@mail.gmail.com>
References: <1474002500-29602-1-git-send-email-tracy.graydon@intel.com>
	<1474027656.2923.0.camel@linux.intel.com>
	<CA+n--H_scFqtfah2QPxJfZON+wGDW3=O-T3ZVPXtz0+5527sFQ@mail.gmail.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] /buildset-config.controller/eclipse-plugin-*
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
X-List-Received-Date: Fri, 16 Sep 2016 14:37:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Great catch, thanks Bill.

I've pushed a patch to make this change.

Thanks,

Joshua

On Fri, 2016-09-16 at 07:24 -0700, Bill Randle wrote:
> Also, buildset-config.controller/nightly.conf needs to be edited and
> the rule for luna removed.
> 
>     -Bill
> 
> On Fri, Sep 16, 2016 at 5:07 AM, Joshua Lock
> <joshua.g.lock@linux.intel.com> wrote:
> > 
> > On Thu, 2016-09-15 at 22:08 -0700, Graydon, Tracy wrote:
> > > 
> > > We are no longer supporting kepler or luna. Remove the build set
> > > for
> > > those and
> > > remove luna from yoctoAB.conf.
> > 
> > Pushed to master, thanks!
> > 
> > > 
> > > 
> > > Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> > > ---
> > >  buildset-config.controller/eclipse-plugin-kepler.conf | 10 ---
> > > ----
> > > ---
> > >  buildset-config.controller/eclipse-plugin-luna.conf   | 11 ---
> > > ----
> > > ----
> > >  buildset-config.controller/yoctoAB.conf               |  1 -
> > >  3 files changed, 22 deletions(-)
> > >  delete mode 100644 buildset-config.controller/eclipse-plugin-
> > > kepler.conf
> > >  delete mode 100644 buildset-config.controller/eclipse-plugin-
> > > luna.conf
> > > 
> > > diff --git a/buildset-config.controller/eclipse-plugin-
> > > kepler.conf
> > > b/buildset-config.controller/eclipse-plugin-kepler.conf
> > > deleted file mode 100644
> > > index 9948852..0000000
> > > --- a/buildset-config.controller/eclipse-plugin-kepler.conf
> > > +++ /dev/null
> > > @@ -1,10 +0,0 @@
> > > -[eclipse-plugin-kepler]
> > > -builders: 'example-worker'
> > > -repos: [{'eclipse-poky-kepler':
> > > -            {'repourl':'git://git.yoctoproject.org/eclipse-
> > > poky',
> > > -             'branch':'kepler-master'}}]
> > > -steps: [{'SetDest':{}},
> > > -        {'CheckOutLayers': {}},
> > > -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
> > > kepler'}},
> > > -        {'PublishLayerTarballs':{}},
> > > -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
> > > kepler']}}]
> > > diff --git a/buildset-config.controller/eclipse-plugin-luna.conf
> > > b/buildset-config.controller/eclipse-plugin-luna.conf
> > > deleted file mode 100644
> > > index d745af3..0000000
> > > --- a/buildset-config.controller/eclipse-plugin-luna.conf
> > > +++ /dev/null
> > > @@ -1,11 +0,0 @@
> > > -[eclipse-plugin-luna]
> > > -builders: 'example-worker'
> > > -repos: [{'eclipse-poky-luna':
> > > -            {'repourl':'git://git.yoctoproject.org/eclipse-
> > > poky',
> > > -             'branch':'luna-master' }}]
> > > -steps: [{'SetDest':{}},
> > > -        {'CheckOutLayers': {}},
> > > -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
> > > luna'}},
> > > -        {'PublishLayerTarballs':{}},
> > > -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
> > > luna']}}]
> > > -
> > > diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-
> > > config.controller/yoctoAB.conf
> > > index fe9750b..309a5ab 100644
> > > --- a/buildset-config.controller/yoctoAB.conf
> > > +++ b/buildset-config.controller/yoctoAB.conf
> > > @@ -1,6 +1,5 @@
> > >  [BuildSets]
> > >  order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars',
> > > -        'eclipse-plugin-luna',
> > >          'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb',
> > >          'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb',
> > >          'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
> > > --
> > > 2.7.0
> > > 
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

