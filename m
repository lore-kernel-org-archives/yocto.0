Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A241E0078E; Fri, 10 Oct 2014 18:16:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HDRS_LCASE,
	RCVD_IN_DNSWL_NONE,T_MANY_HDRS_LCASE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3E5AE0076C
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 18:16:28 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.18.33.160])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0ND900E84A7FS3NA@vms173021.mailsrvcs.net> for
	yocto@yoctoproject.org; Fri, 10 Oct 2014 20:16:28 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id D322C20183; Fri,
	10 Oct 2014 21:16:27 -0400 (EDT)
Date: Fri, 10 Oct 2014 21:16:27 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Message-id: <20141011011627.GS25997@denix.org>
References: <CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
	<CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
	<CAG6mzON96UH=mFnrrkC3KWudoUqPdQSdT9wPH1_Vj=vgFdzTDQ@mail.gmail.com>
	<CAP71WjyH9GJ0xVbe+pO+Ww3CPAXkpTsabqn1XZumN-LR0ffSyg@mail.gmail.com>
	<CAG6mzOPvNvjcN+2kmeYkd3efkbsSa5gsG4SUF0VMT-f8_ZnB7w@mail.gmail.com>
	<20141010232756.GR25997@denix.org>
	<CAG6mzOOvZ=ENA90B2DGiCV+EvEhp6ny3Xu21TzjRmvy3PzvJKA@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAG6mzOOvZ=ENA90B2DGiCV+EvEhp6ny3Xu21TzjRmvy3PzvJKA@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Sat, 11 Oct 2014 01:16:33 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Oct 10, 2014 at 05:51:08PM -0700, Wy kevinthesun wrote:
> These errors occur when I add "-mfloat-abi=hardfp" to the toolchain
> setting. If I don't add it, no error occurs. Now I think the problem is
> that 1.5.1 or 1.6.2 toolchain doesn't support hard float, which is required
> by my yocto 1.5.1 system.

Can you please explain how you got your "1.5.1 yocto system"? Did you built it 
yourself or downloaded prebuilt from the site? If latter, then it should match 
the toolchain...


> 2014-10-10 16:27 GMT-07:00 Denys Dmytriyenko <denis@denix.org>:
> 
> > On Fri, Oct 10, 2014 at 04:15:42PM -0700, Wy kevinthesun wrote:
> > > I tried both hard and hardfp. They both returned 3 errors:
> > >
> > > C compiler cannot create executables    Hello        -1    Configure
> > Problem
> > > in `/home/kevinthefire/workspace/Hello':    Hello        -1    Configure
> > > Problem
> > > make: *** No rule to make target `all'.    Hello             C/C++
> > Problem
> >
> > That doesn't sound like a toolchain error, but rather an autotools one.
> > Make
> > sure you are setting up cross compilation properly.
> >
> >
> > > 2014-10-09 23:12 GMT-07:00 Nicolas Dechesne <nicolas.dechesne@linaro.org
> > >:
> > >
> > > > On Thu, Oct 9, 2014 at 10:27 PM, Wy kevinthesun <
> > kevinthesunwy@gmail.com>
> > > > wrote:
> > > > > It seems that Yocto 1.5.1 is built with hard float. However, the
> > 1.51,
> > > > 1.6
> > > > > and  1.62 toolchains are soft float. When I tried to set
> > > > > "-mfloat-abi=hardfp" in the compile option, the compiling process ran
> > > > into
> > > > > error. It seems these toolchains don't  support hard float? How can I
> > > > solve
> > > > > this problem?
> > > > >
> > > > > These are my set in the environment file of 1.5.1 toolchain:
> > > > > export CC="arm-poky-linux-gnueabi-gcc  -march=armv5te -marm
> > > > > -mthumb-interwork -mfloat-abi=hardfp
> > > > > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > > > > export CXX="arm-poky-linux-gnueabi-g++  -march=armv5te -marm
> > > > > -mthumb-interwork -mfloat-abi=hardfp
> > > > > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > > > > export CPP="arm-poky-linux-gnueabi-gcc -E  -march=armv5te -marm
> > > > > -mthumb-interwork -mfloat-abi=hardfp
> > > > > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > > > >
> > > > > It ran into error.
> > > >
> > > >
> > > > maybe because the gcc documentation says -mfloat-abi=hard, not =hardfp
> > ?
> > > >
> > > > in general, showing us the error you have is much preferred, otherwise
> > > > it's difficult to help if we don't really know what went wrong.
> > > >
> > > > cheers.
> > > >
> >

