Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00733E00BF5; Wed,  4 Jun 2014 14:12:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D68AE00B6F
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 14:12:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2014 14:12:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,975,1392192000"; d="scan'208";a="549872517"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.136])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2014 14:12:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 04 Jun 2014 22:12:08 +0100
Message-ID: <8992080.rOWudXBWns@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAP71WjxesgvZNOMiUYG15wNce1BQ=0sJhVH--74FuqHsM3-93Q@mail.gmail.com>
References: <CAGM0ZdSD2D0gTOXbvmtZJuK5Am0XY+5jDADYQEZg2psLnNmoOQ@mail.gmail.com>
	<CAP71WjxesgvZNOMiUYG15wNce1BQ=0sJhVH--74FuqHsM3-93Q@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Build History Folder
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
X-List-Received-Date: Wed, 04 Jun 2014 21:12:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 04 June 2014 20:59:22 Nicolas Dechesne wrote:
> On Wed, Jun 4, 2014 at 8:35 PM, Bharath Chandra
> 
> <ellurubharath29@gmail.com> wrote:
> > I want to capture build history while building an image and I have done
> > the
> > following settings in conf/local.conf file.
> > 
> >      INHERIT += "buildhistory"
> >      BUILDHISTORY_COMMIT = "1"
> > 
> > as suggested in
> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#mainta
> > ining-build-output-quality
> > 
> > 
> > But, the problem is buildhistory/images folder is being created but
> > buildhistory/packages
> > 
> > folder is not being created. Any kind of suggestions on this issue would
> > be helpful.
> 
> maybe a dumb question... but have you actually built any package? if a
> package is re-used from sstate, then it's not built, and no statistics
> are generated.

This is true of 1.5 and older, but in 1.6, packages whose contents are 
restored from shared state *will* be captured in buildhistory. (However, if 
you built an image and then afterwards enabled buildhistory and built the 
image again, you wouldn't have any package information collected.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

