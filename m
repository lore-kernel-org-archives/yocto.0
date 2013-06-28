Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED848E014E4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:29:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jun 2013 03:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="357185680"
Received: from unknown (HELO helios.localnet) ([10.252.122.97])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2013 03:29:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 28 Jun 2013 11:29:01 +0100
Message-ID: <13073341.mysd8saUrS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
	<CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 10:29:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Friday 28 June 2013 11:16:14 Paul Barker wrote:
> On 28 June 2013 10:40, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> > FWIW, for older hosts where installing these tools in the normal fashion
> > is difficult or impractical, there is now buildtools-tarball (which replaces
> > and extends the old external-python-tarball). This builds on the
> > relocatable SDK installer to provide suitable versions of python, git,
> > tar and other tools required on the build host. I believe the plan is to
> > offer this for download so that people can get started immediately (and
> > of course point to this in the documentation).
> 
> Just chiming in to say that sounds excellent. Will this contain a
> known-working make as well for those with a broken make 3.82?

A patch has recently been merged to do exactly this, yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

