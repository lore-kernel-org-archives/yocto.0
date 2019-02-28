Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E143FE00D08; Wed, 27 Feb 2019 21:19:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CDF9E00D01
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 21:19:51 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4491850lCRz54;
	Thu, 28 Feb 2019 06:19:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1551331189;
	bh=5q6eKRDkdM0GARSnN5n3PXv9pyAqomH+EQpYsev6o+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A1jDR9cQ+8iRFdNfmQV4gOiX0JGYFiLoMwkinvadt/It2Fw9QoDavtXAM89V+CZKq
	FFjy7rzq83VpawWRx7EfHzCJE00tSBqSU4h7mB8zZoiiPqemwwBhb7clZAVbILLYGM
	9m5ulNhW0zNHOvEMFpJFVUKhlj8H2AaWMNo6Z3ggmbYEZdY7LS6bu7Dx/newLoDGzy
	Q752eyrJUjVnOaGHrtIt5UlNzffHfCMQUVP8AzVx1nemhLK/HUZuGYn3DFte1DUJD3
	r+UjC5bLiOlTpN+2474NPHau5wbi1UHhsUp9nXvHndM5oU4qxsdPKD8nRaR8s26qHx
	Qpzk1Ektq8QKF7geKKBcE6UjmsHcvWnkR3h0d1usj0pA1fpII0708bwFjKLSK5C+2g
	6r7Yk31UalR7LOs+iAQh32pBTUGlqW8752IUFlTodK02g/5EU+5esBFnq2vVXh4ZaO
	qAZ6Gv2/em28UgcOTTtyWga+1jm006f1S0vatSBwUj3vnOAL43L+gVJMQACSLtHjtW
	2BycqBih2wJuz8atyAQefaAs9fS8kl5pdbAl6TPX9FCnN4NZFa9UB5nBQD5MN3e8DA
	aXeX3JcOz96UDyKDG1QCbASrQ3L0AMBi2oEKwdd9riutDYtCN5zN2CAejeevJL3BOr
	tTDOKEu6LCF64BfKg6lh56o0=
Date: Thu, 28 Feb 2019 07:19:45 +0200
From: Adrian Bunk <bunk@stusta.de>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190228051945.GB11051@localhost>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Thu, 28 Feb 2019 05:19:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Feb 27, 2019 at 11:59:42PM +0000, Burton, Ross wrote:
> On Wed, 27 Feb 2019 at 23:55, Tom Rini <trini@konsulko.com> wrote:
> > My current incomplete list is:
> >     bind-utils \
> >     bridge-utils \
> >     coreutils \
> >     dnsmasq \
> >     e2fsprogs \
> >     e2fsprogs-resize2fs \
> >     e2fsprogs-tune2fs \
> >     findutils \
> >     gawk \
> >     grep \
> >     inetutils-ping \
> >     inetutils-ping6 \
> >     inetutils-traceroute \
> >     iproute2 \
> >     less \
> >     net-tools \
> >     parted \
> >     pciutils \
> >     procps \
> >     sed \
> >     util-linux \
> >     vim \
> >     which \
> >
> > And it's also incomplete as there's more stuff under inetutils I don't
> > need (but others may), and I set aside patch/diff/ed and some other
> > stuff I don't need.  And since some of that stuff comes from
> > meta-openembedded, it's indeed really not clear how/where a packagegroup
> > would reside as we need things out of meta-networking.
> 
> That's a good start.  For a oe-core packagegroup

I do not think a core-only packagegroup makes sense when the goal is to 
completely replace busybox (and not just most apps while keeping a few 
busybox apps installed).

> I'd suggest dropping
> dnsmasq bridgeutils bindutils to keep it lean.

The stated usecases are not "lean" but "replace all busybox commands
with the full versions".

For that you need bind-utils (in oe-core) for DNS lookup.

>...
> Also swap vim for something in core obviously.

It is not obvious how to do that.

What other vi implementation is in core?
Is there even any good non-busybox non-GUI editor in core?
Replacing busybox vi with ed would be a bad fit for the
stated usecases.

There has to be some vi implementation installed,
and the "desktop command" implementation is vim.

> Ross

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


