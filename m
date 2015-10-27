Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5596E008AE; Tue, 27 Oct 2015 01:54:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12CB9E007E4
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 01:54:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Oct 2015 01:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,204,1444719600"; d="scan'208";a="836386132"
Received: from fcheverx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.27])
	by fmsmga002.fm.intel.com with ESMTP; 27 Oct 2015 01:54:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Oct 2015 08:54:11 +0000
Message-ID: <1620018.GlC35GoaDv@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAJTo0LZV6-BdOuk9+rTWvdFaJnC7nCxOp2SA-nHheLWfj=_Umw@mail.gmail.com>
References: <CAHWMYyDLXYt2m3qgZd1M8y09wuz0xW==uAmDbPN_8cF9vKCZmg@mail.gmail.com>
	<CAHWMYyDWu5k5bK=bGLwHOxZyS18peHR2PMndou5=LGm+_PLwqg@mail.gmail.com>
	<CAJTo0LZV6-BdOuk9+rTWvdFaJnC7nCxOp2SA-nHheLWfj=_Umw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Disabling ipv6
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
X-List-Received-Date: Tue, 27 Oct 2015 08:54:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 October 2015 08:45:26 Burton, Ross wrote:
> On 26 October 2015 at 20:16, Todd Efflam <todd.efflam@gmail.com> wrote:
> > Thanks for the tip.  We tried adding this to the local.conf file but
> > it failed with the following error:
> > ERROR: Nothing PROVIDES 'glibc'
> > ERROR: glibc was skipped: missing required distro feature 'ipv6' (not
> > in DISTRO_FEATURES)
> 
> Ouch.  That's surely not right.
> 
> The commit that introduced this was:
> 
> commit 97899bc908a421295d814801ff86edeb9304d2fd
> Author: Chen Qi <Qi.Chen@windriver.com>
> Date:   Thu Jul 3 11:23:42 2014 +0800
> 
>     eglibc: check for required distro features
> 
>     If users accidently override the DISTRO_FEATURES in local.conf,
>     then build failures occur for lack of libc functions.
> 
>     All features in DISTRO_FEATURES_LIBC should be in DISTRO_FEATURES.
>     That's why this patch let the recipe inherit distro_features_check
>     class and set REQUIRED_DISTRO_FEATURES to "${DISTRO_FEATURES_LIBC}".
> 
>     [YOCTO #6381]
> 
> But the entire point of the logic in glibc-options is to make these
> options, well, optional.
> 
> It looks like the required_distro_features use in eglibc is misguided.  Can
> you comment out the REQUIRED_DISTRO_FEATURES assignment in glibc.inc and
> verify that it then builds fine without ipv6 enabled?

Ah yes, I meant to get back to this at some point as I didn't really like how 
this was fixed previously either (see 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6381 for details of the 
problem). It seems to me that we should:

1) Fix the glibc recipes so that they handle an empty libc configuration or 
error out much earlier with a sensible message if that's not possible

2) Properly detect when DISTRO_FEATURES has been "zapped" via += in local.conf 
or elsewhere and show an error/warning about that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

