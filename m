Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83F5FE00C97; Tue,  7 Jun 2016 14:29:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0467AE00C81
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 14:29:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jun 2016 14:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,435,1459839600"; d="scan'208";a="982853831"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.25.208])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2016 14:29:14 -0700
Message-ID: <1465334952.3458.38.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 07 Jun 2016 22:29:12 +0100
In-Reply-To: <5756FD3D.3010109@mlbassoc.com>
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
	<CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
	<5756FD3D.3010109@mlbassoc.com>
X-Mailer: Evolution 3.20.2 (3.20.2-1.fc24) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's this
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
X-List-Received-Date: Tue, 07 Jun 2016 21:29:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-06-07 at 18:58 +0200, Gary Thomas wrote:
> On 2016-06-07 18:20, Burton, Ross wrote:
> > 
> > On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com
> > <mailto:ross.burton@intel.com>> wrote:
> > 
> >     It means the hash calculated my the bitbake master was
> > different to the hash calculated when the worker started up.
> >     This usually means that you're using something like ${TIME} in
> > the recipe but not marking it appropriatly so the
> >     cache ignores it.  Do you have a base-files bbappend that
> > writes a timestamp?
> > 
> > 
> > The always wise Joshua reminds me that if your DISTRO_VERSION
> > contains ${DATETIME} then this happens.  If you're doing
> > this then you'll want to set [vardepsexclude] on DISTRO_VERSION to
> > stop the DATETIME from getting into the cache (or not
> > put the current date/time into the distro version).
> > 
> 
> Ah, that's probably it.  Exactly how do I set that exclusion?

Assuming DISTRO_VERSION includes DATETIME

    DISTRO_VERSION[vardepsexclude] = "DATETIME"

see for example:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/dist
ro/poky.conf#n14

Regards,

Joshua

