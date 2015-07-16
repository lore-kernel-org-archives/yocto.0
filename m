Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96854E00978; Thu, 16 Jul 2015 01:13:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2A11E00957
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 01:13:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jul 2015 01:13:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,486,1432623600"; d="scan'208";a="763635949"
Received: from araska-mobl4.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.19.170])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2015 01:13:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Dave Kimble <dkimble@alticast.com>, Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Jul 2015 09:13:05 +0100
Message-ID: <8075701.Zr5asBW7Ea@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.7-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAMKF1sqOkmFAwGWJ4PJWcJUy+F6SVrhoKGBmiWcg6+ZNPB4xqA@mail.gmail.com>
References: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
	<13cb666befe542429cf1351610232147@MDBA.ALTICAST.COM>
	<CAMKF1sqOkmFAwGWJ4PJWcJUy+F6SVrhoKGBmiWcg6+ZNPB4xqA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: using gdb with externalsrc
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
X-List-Received-Date: Thu, 16 Jul 2015 08:13:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 15 July 2015 19:54:08 Khem Raj wrote:
> On Wed, Jul 15, 2015 at 2:52 PM, Dave Kimble <dkimble@alticast.com> wrote:
> > Yes, I'm able to debug the externalsrc component. I can see variables, set
> > breakpoints, step/next through the code etc. (so the symbols are valid).
> > And local changes to the externalsrc component are reflected when I
> > debug.
> > 
> > But I can't list the externalsrc component source code from within gdb (or
> > find it anywhere in the image). The source for all of the other components
> > is in the image (and I can list it in gdb). When I try to list the code
> > for
> > the externalsrc component, gdb prints this error message:
> > "[path on my build machine]/sourceFile.c: No such file or directory."
> 
> is this path pointing to S which is externalsrc path or to B which is
> under build TMPDIR
> and secondly, can you see compiler flags used during build for externalsrc ?

This sounds suspiciously like this bug that coincidentally I just filed 
yesterday:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=8015

As far as I can tell it has something to do with the source not being in the 
path we're passing to debugedit, but I'm not immediately sure how to fix it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

