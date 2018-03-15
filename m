Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D98A7E00AF9; Thu, 15 Mar 2018 03:44:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D51DE00752
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 03:44:04 -0700 (PDT)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Mar 2018 03:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,310,1517904000"; d="scan'208";a="24733050"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga008.fm.intel.com with ESMTP; 15 Mar 2018 03:43:37 -0700
Date: Thu, 15 Mar 2018 12:47:08 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Message-ID: <20180315104708.GC20946@mbabyjoh-desk.ger.corp.intel.com>
References: <20180312163806.16943-1-git@andred.net>
	<20180313161037.GA20946@mbabyjoh-desk.ger.corp.intel.com>
	<1521105005.6779.44.camel@andred.net>
MIME-Version: 1.0
In-Reply-To: <1521105005.6779.44.camel@andred.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 1/2] openjdk-8: fix MAKE detection patch
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
X-List-Received-Date: Thu, 15 Mar 2018 10:44:05 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi André,

On Thu, Mar 15, 2018 at 09:10:05AM +0000, André Draszik wrote:
> On Tue, 2018-03-13 at 18:10 +0200, Maxin B. John wrote:
> > Hi André,
> > 
> > On Mon, Mar 12, 2018 at 04:38:05PM +0000, André Draszik wrote:
> > > From: André Draszik <andre.draszik@jci.com>
> > > 
> > > The patch had a few typos, leading to errors during ./configure
> > >    ../jdk8u-4be07cb28b21/common/autoconf/configure: line 8408: test: too
> > > many arguments
> > > 
> > > Change-Id: I867eba7aae3390aa869e69c86f29e77b505043e7
> > > ---
> > >  recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
> > > | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-
> > > for-make.patch b/recipes-core/openjdk/patches-openjdk-8/dont-expect-
> > > fqpn-for-make.patch
> > > index 6454237..5192d1a 100644
> > > --- a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-
> > > make.patch
> > > +++ b/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-
> > > make.patch
> > > @@ -6,7 +6,7 @@
> > >       # User has supplied a make, test it.
> > >  -    if test ! -f "$MAKE"; then
> > >  -      AC_MSG_ERROR([The specified make (by MAKE=$MAKE) is not found.])
> > > -+    if test -a `dirname "$MAKE"` = "." -a ! -f "$MAKE"; then
> > > ++    if test `dirname "$MAKE"` = "." && ! test -f "$MAKE"; then
> > >  +      AC_PATH_PROGS(CHECK_MAKE, $MAKE)
> > >  +    else
> > >  +      CHECK_MAKE="${MAKE}"
> > > --
> > 
> > Merged, Thanks.
> 
> Thanks Maxin.
> 
> Did you forget the 2nd patch, or is there an issue with it?

Ah, I missed it (or rather due to some weird reasons, it didn't
show up in my inbox)

> BTW, I just noticed that master and master-next have diverged quite a lot -
> what is the plan wrt that?

master-next was meant to be a place for testing the new patches. Will
update it soon.

> Cheers,
> Andre'

Cheers,
Maxin

