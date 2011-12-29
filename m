Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A00D2E0030B
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 09:37:24 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Dec 2011 09:37:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90604200"
Received: from unknown (HELO [10.255.15.201]) ([10.255.15.201])
	by azsmga001.ch.intel.com with ESMTP; 29 Dec 2011 09:37:23 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
In-Reply-To: <CAEsOVNdfWJCUwkOk7n+2YzKpU5JCEF=q2Fm0x3n708Vo3Ap9eQ@mail.gmail.com>
References: <1324313709.12454.34.camel@elmorro>
	<CAEsOVNdfWJCUwkOk7n+2YzKpU5JCEF=q2Fm0x3n708Vo3Ap9eQ@mail.gmail.com>
Date: Thu, 29 Dec 2011 11:32:41 -0600
Message-ID: <1325179961.30886.204.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Yocto BSP and kernel usability tools
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Dec 2011 17:37:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-12-28 at 00:36 +0000, McClintock Matthew-B29882 wrote:
> (This probably belongs somewhere inline but I got lost on the long email)
> 
> A lot of times users would already have a git tree containing linux
> and/or u-boot already working for their boards. Perhaps you could let
> the user point at external linux and/or u-boot trees with defconfigs,
> u-boot configs, device trees, etc for their target BSP?
> 

Yes, definitely, I think that makes sense and should be easily doable
using the templating mechanism e.g. using the 'choicelist' input method
the user could be presented with a choice of kernel recipes to use
similarly to how xserver-choice is defined in the examples.

Choosing for example the Yocto 3.0 kernel would select what's already
been described, but additional choices could select alternate kernels
and allow the user to point those recipes at specific git repos or
tarballs, attach defconfigs, .dts files or whatever to those kernels'
SRC_URIs.  There would need to be a way for the user to specify the
files to include, etc, but that could also be easily done by adding some
python code for that purpose (or maybe that's already covered by the
code that adds patches to a SRC_URI).

In any case, I haven't thought about all the details yet but I think the
problem can be generalized even further and those details will come out
in the implementation.  But as a general answer to your question, I
think that yes, it is possible and desirable, and I'll at least try to
have a simple example of it implemented in the first pass.

Tom

> -M
> 
> On Mon, Dec 19, 2011 at 10:55 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > Hi,
> >
> > This is what I hope to implement in the M2 timeframe.
> >
> > Any and all comments welcome...
> >
> > Thanks,
> >
> > Tom
> >
> > ---
> >

[snip]


