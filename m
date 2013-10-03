Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AA4E0169D
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 00:48:23 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VRddy-0007LP-Fs
	for yocto@yoctoproject.org; Thu, 03 Oct 2013 09:48:18 +0200
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 09:48:18 +0200
Received: from jackrubby2010 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 09:48:18 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Thu, 3 Oct 2013 07:47:58 +0000 (UTC)
Message-ID: <loom.20131003T093203-279@post.gmane.org>
References: <loom.20131001T154728-532@post.gmane.org>
	<4607a605-12cd-476d-92fa-47ded39e2905@email.android.com>
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
X-List-Received-Date: Thu, 03 Oct 2013 07:48:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Anders Darander <anders@...> writes:

> 
> 
> Jack <jackrubby2010 <at> gmail.com> wrote:
> >Hi,
> >I want to set/reset GPIO registers in freescale p1022 processor. I saw
> >a
> >hello-mod kernel module in yocto and I added it to my image and it
> >worked.
> >According to hello-mod kernel module, I created GPIO module like
> >hello-mod.
> >But it GPIO module failed when I run it in kernel level. I checked
> >several
> >times addresses of registers and it seems accurate. 
> >My code is here :
> >
> >
> >#include <linux/module.h>
> >
> >int init_module(void)
> >{
> >	volatile uint32_t * Guts_Pmuxcr;
> >	volatile uint32_t * Gpio3_Gpdir;
> >	volatile uint32_t * Gpio3_Gpdat;
> >	
> >	// e500 Core View To Power Architecture CCSR: 0x0_FF70_0000
> >
> >    // GUTS_PMUXCR:Alternate Function Signal Multiplex Control Register
> >	Guts_Pmuxcr = (volatile uint32_t *)(0xFF7E0060);
> >      
> >        // GPIO3_GPDIR: GPIO3 direction register
> >	Gpio3_Gpdir = (volatile uint32_t *)(0xFF70F200);
> >
> >        // GPIO3_GPDAT: GPIO3 data register
> >	Gpio3_Gpdat = (volatile uint32_t *)(0xFF70F208); 
> 
> You should generally a of trying to dereference physical addresses, or you
should explicitly declare them
> as such. 
> 
> If suggest looking for some info on using GPIO on your CPU. Unfortunately,
I've not used the p1022, so I can't
> really help you. 
> 
> http://linuxppc.10917.n7.nabble.com/Re-GPIO-IRQ-on-P1022-td59356.html
discusses some IRQ
> issues, though you should be able to use the codes as an example of the
GPIO framework and how to use it. 
> 
> Cheers, 
> Anders 
> 
> >
> >	// Enable GPIO3[10]: IRQ_DEBUG1_GPIO FIELD [BIT 26] set to "1"
> >	*(Guts_Pmuxcr) = 0x00000010;
> >
> 
> >
> >	// Set Direction for GPIO3[10] to Output: FIELD DR10 [BIT 10] set to
> >'1'
> >	*(Gpio3_Gpdir) = 0x00200000;
> >	
> >	 
> >	// Set GPIO3[10] to '0': FIELD D10 [BIT 10] set to '0'
> >	*(Gpio3_Gpdat) = 0x00000000;
> >	
> >	printk("Hello World!\n");
> >	return 0;
> >}
> >
> >void cleanup_module(void)
> >{
> >	printk("Goodbye Cruel World!\n");
> >}
> >
> >MODULE_LICENSE("GPL");
> >
> >
> >When I write insmod GPIO.ko in the terminal I get error these errors:
> >
> >Unable to handle kernel paging request for data at address 0xff7e0060
> >faulting instruction address: 0xf107e05c
> >Oops: Kernel access of bad area, sig: 11 [#1]
> >..........
> >.........
> >
> >
> >How can I solve this problem?
> >
> >
> >_______________________________________________
> >yocto mailing list
> >yocto <at> yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto
> 

Thanks Anders,

But I have this problem not only for GPIOs, but also for other registers.
For example, I tried to change DTW bits of PROCTL register in eSDH but I get
"Kernel access of bad area" again. My simple code is here :

#include <linux/module.h>

int init_module(void)
{
	
	// e500 Core View To Power Architecture CCSR: 0x0_FF70_0000
	
	volatile uint32_t * eSDH_PROCTL = (volatile uint32_t *)(0xFF72E028);

	*(eSDH_PROCTL) = 0x00000002;

	return 0;
}

void cleanup_module(void)
{
	printk("Goodbye Cruel World!\n");
}

MODULE_LICENSE("GPL");

What should I do? Can you help me?





