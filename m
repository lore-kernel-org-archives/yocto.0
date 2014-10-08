Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1D36E00848; Wed,  8 Oct 2014 13:43:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE,
	RCVD_IN_DNSWL_NONE,T_MANY_HDRS_LCASE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
Received: from vms173023pub.verizon.net (vms173023pub.verizon.net
	[206.46.173.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62D7BE0077F
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 13:43:28 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.18.33.160])
	by vms173023.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0ND500D8Y87WDTE0@vms173023.mailsrvcs.net> for
	yocto@yoctoproject.org; Wed, 08 Oct 2014 15:43:24 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 7A7512016D; Wed,
	08 Oct 2014 16:43:08 -0400 (EDT)
Date: Wed, 08 Oct 2014 16:43:08 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Message-id: <20141008204308.GM25997@denix.org>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
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
X-List-Received-Date: Wed, 08 Oct 2014 20:43:39 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Oct 07, 2014 at 07:05:42PM -0700, Wy kevinthesun wrote:
> However, a new problem occurs. Now when I tries run HelloWorld binary,
> after "Hello World" is printed, the terminal also prints "Segmentation
> fault". It seems that some memory problems occurs. I guess it comes from
> that the 1.5.1 yocto system on boards hopes ld-linux-armhf.so.3 as dynamic
> linker, instead of ld-linux.so.3, which is used by toolchain. There may be
> some memory address problem between them. How can I solve it?

As Nicolas suggested earlier, it seems you are trying to mix ABIs here. 
Because ld-linux-armhf.so.3 indicates the system uses hardfp ABI, but the 
example app you built with your toolchain wants ld-linux.so.3, which is 
usually the old softfp ABI. You'd need to match ABIs and the easiest solution 
is to use the same toolchain that was used to build the system (1.5.1?)

-- 
Denys


> 2014-10-07 18:17 GMT-07:00 Wy kevinthesun <kevinthesunwy@gmail.com>:
> 
> > Problem solved! It turns out it is the mismatch of ld-linux.so. I referred
> > to this post
> > http://stackoverflow.com/questions/24543474/cross-compiled-gnu-arm-beagleboneblack-from-windows-runtime-error-on-elf,
> > and found my problem was exactly the same: the binary needs
> > /lib/ld-linux.so.3 to run, but that file is missing in the 1.5.1 yocto
> > system on board. Then I copied ld-linux.so.3 file from Yocto toolchain on
> > my pc. Then it works!
> >
> > Thank you!
> >
> > 2014-10-07 8:21 GMT-07:00 Nicolas Dechesne <nicolas.dechesne@linaro.org>:
> >
> > On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun <kevinthesunwy@gmail.com>
> >> wrote:
> >> > Hi, I am new to Yocto Project and learning to develop software on Atmel
> >> > SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I followed
> >> the
> >> > instructions and got the 1.6.1 toolchain
> >> >
> >> > poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.1.sh.
> >> >
> >> > I can compile the simple HelloWorld program and binary file is made.
> >> Then I
> >> > copied the binary file
> >> >
> >> > into board and tried to run it. However, when I changed to the file
> >> located
> >> > directory and type
> >> >
> >> > "./Hello", it returned "sh: ./Hello: No such file or directory". Then I
> >> > tried "sh Hello", it gave
> >> >
> >> > me  "Hello: Hello: cannot execute binary file ". If I type "file
> >> Hello", it
> >> > gives "Hello: ELF 32-bit
> >> >  LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked (uses
> >> > shared libs), for GNU/Linux 2.6.16,
> >> > BuildID[sha1]=9933a2d2ce212099c5f9902a8e612c1423e136da, not stripped". I
> >> > googled and someone
> >> >
> >> > said the problem may be the toolchain. Then I tried 1.3, 1.5.1
> >> toolchain for
> >> > arm, but still same
> >> >
> >> > error. Could you please help me about this problem?
> >>
> >>
> >> i suspect this is an armv7 soft-float vs hard-float mismatch. Either
> >> your prebuilt OE system is configured with soft-float and the
> >> toolchain you use compiled for hard-float by default, or the other way
> >> around. can you check how you've compile HelloWolrd and check the
> >> other ABI?
> >>
> >
> >

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


