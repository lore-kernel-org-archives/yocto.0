Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C2FE0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 10:29:59 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Jul 2013 10:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,678,1367996400"; d="scan'208";a="269088066"
Received: from unknown (HELO helios.localnet) ([10.252.122.80])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Jul 2013 10:29:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Tue, 16 Jul 2013 18:29:55 +0100
Message-ID: <4980830.1VfIILUjWT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <7941E07E1E020448937ACA7D4279E632018398AF5AC0@powerhog>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
	<1409977.06We3GSB1m@helios>
	<7941E07E1E020448937ACA7D4279E632018398AF5AC0@powerhog>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Image recipes in Yocto 1.4 (dylan-9.0.0)
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
X-List-Received-Date: Tue, 16 Jul 2013 17:30:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

Sorry this message got lost in my inbox.

On Monday 24 June 2013 16:22:27 Brian Karcz wrote:
> > Paul Eggleton wrote:
> > > Brian Karcz wrote:
> > > Is there a way to stop this optimization and have the image build 
> > > populate the work directory as it has in the past?
> > 
> > You should be able to do this in your image recipe:
> > 
> > python () {
> >         d.delVarFlag("do_fetch", "noexec")
> >         d.delVarFlag("do_unpack", "noexec") 
> > }
>
> That was what I needed to get my build(s) moving forward. It has brought me
> to a follow-up question. The image in question (a ramdisk image) is being
> built as a dependency of a larger image build. When I rebuild the parent
> image, bitbake believes the child image needs to be rebuilt, but when this
> occurs, do_fetch and do_unpack once again don't get executed and my build
> fails as before when it jumps straight to do_rootfs with an empty work
> directory. Upon seeing this, I attempted to re-build the child image from
> its own recipe, without trying to build the parent, and the same behavior
> occurs.
> 
> I was considering adding the child image to RM_WORK_EXCLUDE in local.conf,
> but that didn't seem intuitive to the problem. 

So you are using rm_work? If you are I don't think RM_WORK_EXCLUDE will really 
help.

Just to confirm, you're not referring to the WORKDIR of one recipe within the 
other are you? Also, how are you setting up the dependency relationship 
between the images?

> I would think bitbake would do nothing since nothing has changed, or the
> required tasks would be executed, but I wouldn't think telling the last
> build to leave the work area would be the fix.
> 
> Do have any thoughts on making this work past a single build?

So I haven't tested this exact configuration; it's possible that bitbake is 
eliminating a dependency based on the task being marked as "noexec", but I 
wouldn't have thought so.

Cheers,
Paul

PS: please keep replies on the mailing list. Thanks.

-- 

Paul Eggleton
Intel Open Source Technology Centre

