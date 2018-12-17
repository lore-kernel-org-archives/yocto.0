Return-Path: <richard@sigma-star.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AA93E00C62; Mon, 17 Dec 2018 04:27:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 555 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Dec 2018 04:27:29 PST
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76FDE00AC5
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 04:27:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 467D518021737;
	Mon, 17 Dec 2018 13:18:13 +0100 (CET)
From: Richard Weinberger <richard@sigma-star.at>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org
Date: Mon, 17 Dec 2018 13:18:10 +0100
Message-ID: <5071759.uEPJhu1AMY@blindfold>
In-Reply-To: <d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
	<d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Dec 2018 08:06:28 -0800
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 12:27:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Richard,

Am Montag, 17. Dezember 2018, 11:34:08 CET schrieb richard.purdie@linuxfoundation.org:
> On Mon, 2018-12-17 at 11:26 +0100, Richard Weinberger wrote:
> > On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > > The system can definitely do it, its just not something we tend to
> > > do
> > > very often so its not entirely clear the best way to do it.
> > > 
> > > What may work is selecting the i586 tune from an x64-64 target
> > > machine?
> > > 
> > > Copying qemux86-64.conf to qemux86-64-2.conf and changing it to
> > > have
> > > DEFAULTTUNE ?= "i586" did appear to start to build at least in a
> > > quick
> > > test here...
> > 
> > I went this approach for now.
> > That way I get i586 userland and an SDK with both 32bit and 64bit
> > toolchains.
> > The SDK offers me multiple environment files to include.
> > 
> > What I don't understand right now is, how can i tell the kernel
> > recipe
> > that it has
> > to use the 64bit toolchain to build the kernel?
> > 
> > Any hints?
> 
> I think (but am going from memory) that the x86 toolchains can generate
> 64 and 32 bit code with the right compiler option. The kernel just
> passes in the right options if configured to build as 64 bit even if it
> has the 32 bit toolchain?

This was my hope, and this is also what I get when doing such builds manually.
Having a x86_64 gcc and building userspace with "-m32" appended.

Yocto seems to try a different approach.
When I use qemux86-64.conf with DEFAULTTUNE being "i586" it generates a 32bit
toolchain by default.

Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "i686-poky-linux"
MACHINE              = "myqemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5.1"
TUNE_FEATURES        = "m32 i586"

What I need is a x86_64-poky-linux toolchain with -m32 set for everything except
kernel (and modules).

Thanks,
//richard

-- 
sigma star gmbh - Eduard-Bodem-Gasse 6 - 6020 Innsbruck - Austria
ATU66964118 - FN 374287y



