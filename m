Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF67E0154E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 02:55:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Sep 2013 02:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,897,1371106800"; d="scan'208";a="395205092"
Received: from unknown (HELO helios.localnet) ([10.252.123.177])
	by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2013 02:55:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <brad@evidence.com>
Date: Fri, 13 Sep 2013 10:55:44 +0100
Message-ID: <22610256.9HCK7tef9Y@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABcZAN=QM=Tj=vtsdXERZy=9gcs6vBr1cpw+4Fr9USHuthCxkQ@mail.gmail.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
	<CABcZAN=QM=Tj=vtsdXERZy=9gcs6vBr1cpw+4Fr9USHuthCxkQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Fri, 13 Sep 2013 09:55:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 12 September 2013 17:23:53 Chris Larson wrote:
> On Thu, Sep 12, 2013 at 4:53 PM, Brad Litterell <brad@evidence.com> wrote:
> > I've grown to really appreciate bitbake for compiling code from a myriad
> > of sources, however, what is the recommended course for source I am
> > currently doing live development on?  My code base lives in a couple of
> > git
> > repos that do NOT map one-to-one with recipes and I don't really want to
> > store the source mixed in with the recipe meta data anyway, nor do I want
> > to be forced to commit it to git just to do a build.
> > 
> >  Currently I run a pre-bitbake script that creates a tarball out of the
> > 
> > source, but that is easy to forget and makes building a new image a two
> > step proces.  Since it is a build step I'd like it to be done by bitbake.
> > 
> >  Is there a recommended way to go about this?
> 
> See externalsrc.bbclass.

Also the manual section that talks about using it:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-software-from-an-external-source

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

