Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14152E015BA
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 00:08:18 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VUAM5-0001PJ-0N
	for yocto@yoctoproject.org; Thu, 10 Oct 2013 09:08:17 +0200
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 09:08:17 +0200
Received: from jackrubby2010 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 09:08:17 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Thu, 10 Oct 2013 07:07:58 +0000 (UTC)
Message-ID: <loom.20131010T090015-586@post.gmane.org>
References: <loom.20131001T154728-532@post.gmane.org>
	<4607a605-12cd-476d-92fa-47ded39e2905@email.android.com>
	<loom.20131003T093203-279@post.gmane.org>
	<b9165dea-1b36-4bd0-95d9-483de2340d3e@email.android.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.122 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:21.0) Gecko/20100101 Firefox/21.0)
Subject: (No subject)
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
X-List-Received-Date: Thu, 10 Oct 2013 07:08:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Anders Darander <anders@...> writes:

> 
> 
> Jack <jackrubby2010@...> wrote:
> >Anders Darander <anders <at> ...> writes:
> >
> >Thanks Anders,
> >
> >But I have this problem not only for GPIOs, but also for other
> >registers.
> 
> Well, my comment about dereferencing physical addresses using *-only,
wasn't restricted to GPIO's only.
> It was regarding physical addresses in general... 
> 
> Once again, I've not used this platform, this I'm not able to be too
specific. 
> 
> >For example, I tried to change DTW bits of PROCTL register in eSDH but
> >I get
> >"Kernel access of bad area" again. My simple code is here :
> 
> >int init_module(void)
> >{
> >	
> >	// e500 Core View To Power Architecture CCSR: 0x0_FF70_0000
> >	
> >	volatile uint32_t * eSDH_PROCTL = (volatile uint32_t *)(0xFF72E028);
> >
> >	*(eSDH_PROCTL) = 0x00000002;
> 
> I think that you should try to look at some code from the kernel that
accesses registers on your platform. For
> instance
http://lxr.free-electrons.com/source/sound/soc/fsl/p1022_ds.c?v=3.4 (this is
just a
> randomly chosen file that relates to P1022. 
> 
> Have a look at how guts_phys is declared, as well as how guts later on is
both declared and initialized from
> guts_phys. 
> When the registers are actually read / written, this driver uses the
clrsetbits_XX. These functions then
> implements the actual reading and writing of the registers. 
> 
> (Note again, I've just looked at this file and p1022 for a couple of
minutes). 
> 
> Cheers, 
> Anders 
> 

Thank you very much Anders for useful comments and replies,

I saw the link that you mentioned and I could write in pmuxcr register. So
writing to register problem almost has solved. But I have some problems yet.

I read fsl_guts.h in powerpc architecture and saw Global Utility Registers
like gpiocr as GPIO Control Register, gpindr as General-Purpose Input Data
Register and gpoutdr as General-Purpose Output Data Register. But in GPIO
registers in p1022 reference manual we have GPDIR register to set specify
GPIO direction and GPDAT register for GPIO data register. We have only one
register for data but fsl_guts.h defines two register for input an output data.
 

Does gpiocr work as GPDIR?

For GPDAT, which of the two registers I should use? gpindr or gpoutdr?

 
Thanks,

Best regards. 




