Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84F7E4C804C2
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 08:37:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6FDbKsS021582;
	Fri, 15 Jul 2011 14:37:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21159-05; Fri, 15 Jul 2011 14:37:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6FDbCFg021576
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Jul 2011 14:37:15 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <8719D03F-32DE-4A41-9E6D-06617BD60790@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
	<8719D03F-32DE-4A41-9E6D-06617BD60790@kernel.crashing.org>
Date: Fri, 15 Jul 2011 14:37:09 +0100
Message-ID: <1310737029.20015.1234.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 13:37:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-15 at 08:33 -0500, Kumar Gala wrote:
> On Jul 14, 2011, at 9:36 PM, Kumar Gala wrote:
> 
> > Where is the best place to ask questions and try and get support for adding some toolchain variations in?
> > 
> > I'm wanting to add support in for a few different flavors of PPC that are not currently supported:
> > 
> > * e500v2 (gcc needs --enable-e500_double, eglibc 
> > * e5500 (64-bit embedded ppc)
> > * e5500 - multilib support for 32/64-bit
> > 
> 
> The other reason I ask is the recipes today don't seem to use (or allow for use of) --with-cpu.
> 
> Wondering who is the expect on these recipes to discuss such issues with.

The tune files (conf/machine/include/tune*) usually set the march and
mcpu options which are added to CFLAGS. Does that provide the
functionality you're looking for?

Cheers,

Richard




