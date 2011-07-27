Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D00E4C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 08:52:28 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RDqMii030257;
	Wed, 27 Jul 2011 14:52:22 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30197-01; Wed, 27 Jul 2011 14:52:18 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RDqDvD030251
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Jul 2011 14:52:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E3012D8.3080106@windriver.com>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
	<4E3012D8.3080106@windriver.com>
Date: Wed, 27 Jul 2011 14:52:03 +0100
Message-ID: <1311774723.2344.373.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 13:52:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 09:30 -0400, Bruce Ashfield wrote:
> As you know, I've been working on several kernel efforts
> around the FSL parts as well (in particular the ones that
> have enough pieces upstream to work out of the box).  I
> definitely don't want to overlap in a way that doesn't
> create complimentary efforts.
> 
> What are your current thoughts around kernels and the
> (nearly religious) kernel version question ? It would be
> great to get some alignment on features (-rt, tracing,
> boot, footprint reduction, etc, etc) and save some effort
> on maintenance and validation. Also if we want to create
> some yocto reference BSPs, having a kernel version and feature
> set match is important as well (i.e. what we've done for
> the intel ones).
> 
> To that end, do you have an thoughts about using linux-yocto
> as a base to any BSP work ? That statement doesn't do it
> justice though, since when I say 'use linux-yocto as a base',
> it really means that linux-yocto uses your BSPs as an
> upstream/official reference and can pull support for them
> into branches, and have the configuration and other tooling
> get them any functionality that is being developed.
> 
> No control over BSP content, or anything like this, is being
> suggested or asserted here. Just looking to all push in the
> same direction (embedded features and BSPs to upstream) and
> re-use the work of BSPs available in the community. If the
> base is the same (and hence kernel version), then this relationship
> and workflow is very simple.
> 
> ... and as a bonus, if the workflow doesn't work easily, then
> there's a problem with it and we can work on something that
> is suitable (change tools, etc).

So just to put what Bruce says into other words, there isn't any hard
requirement to use linux-yocto but we are asking people to try it and if
it doesn't work, at least tell us why.

I understand transitions and new ways of working take time and that
meta-fsl-ppc might be enough of a step at first without the linux-yocto
complications. That is fine but please do keep it in mind.

Cheers,

Richard


