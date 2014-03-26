Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 602E6E00B7E
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:48:32 -0700 (PDT)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 284377D9; Wed, 26 Mar 2014 17:48:32 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from skate (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
	by mail.free-electrons.com (Postfix) with ESMTPSA id C272D7AD;
	Wed, 26 Mar 2014 17:48:31 +0100 (CET)
Date: Wed, 26 Mar 2014 17:48:29 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20140326174829.5d897f11@skate>
In-Reply-To: <CAMKF1sq7QUcKypgyn8auurnqRd5ZfztdymcxquRwsRxvN4seqw@mail.gmail.com>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
	<CAMKF1sq7QUcKypgyn8auurnqRd5ZfztdymcxquRwsRxvN4seqw@mail.gmail.com>
Organization: Free Electrons
X-Mailer: Claws Mail 3.9.1 (GTK+ 2.24.20; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded and musl-libc
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
X-List-Received-Date: Wed, 26 Mar 2014 16:48:32 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Dear Khem Raj,

On Fri, 21 Mar 2014 11:22:24 -0700, Khem Raj wrote:

> it has been under my radar for a while. I have actually locally made
> toolchains with
> clang+musl and it seems to be coming along. its licensed differently thats
> the biggest attraction for folks who do static linking. Otherwise it still
> doesnt yet support variety of architectures that other libcs support. given
> now we have kconfig for eglibc too may be it fills in the nommu gap much
> like uclibc does today.

The non-MMU gap? Last time I looked, musl didn't had support for any
non-MMU architecture. See also
http://lists.uclibc.org/pipermail/uclibc/2014-February/048258.html:

"""
> Do you intend to have support for non-MMU architectures in musl?

At present there isn't a plan to, but we're not particularly opposed
to it either. The big questions are how invasive it would be and
whether we can provide full functionality in any reasonable way. The
answers to those questions wouldn't translate directly to a yes or no
but would be an important part of considerations. It would probably
help to have someone familiar with the technical aspects of supporting
non-MMU archs discuss it with us on our mailing list or IRC channel.

Rich
"""

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

