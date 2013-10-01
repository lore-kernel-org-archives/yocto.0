Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73AC7E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 07:25:10 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VR0su-0005ru-L7
	for yocto@yoctoproject.org; Tue, 01 Oct 2013 16:25:08 +0200
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 16:25:08 +0200
Received: from jackrubby2010 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 16:25:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Tue, 1 Oct 2013 14:24:49 +0000 (UTC)
Message-ID: <loom.20131001T154728-532@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.122 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:21.0) Gecko/20100101 Firefox/21.0)
Subject: "Kernel access of bad area" in kernel module
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
X-List-Received-Date: Tue, 01 Oct 2013 14:25:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,
I want to set/reset GPIO registers in freescale p1022 processor. I saw a
hello-mod kernel module in yocto and I added it to my image and it worked.
According to hello-mod kernel module, I created GPIO module like hello-mod.
But it GPIO module failed when I run it in kernel level. I checked several
times addresses of registers and it seems accurate. 
My code is here :


#include <linux/module.h>

int init_module(void)
{
	volatile uint32_t * Guts_Pmuxcr;
	volatile uint32_t * Gpio3_Gpdir;
	volatile uint32_t * Gpio3_Gpdat;
	
	// e500 Core View To Power Architecture CCSR: 0x0_FF70_0000

       // GUTS_PMUXCR:Alternate Function Signal Multiplex Control Register
	Guts_Pmuxcr = (volatile uint32_t *)(0xFF7E0060);
      
        // GPIO3_GPDIR: GPIO3 direction register
	Gpio3_Gpdir = (volatile uint32_t *)(0xFF70F200);

        // GPIO3_GPDAT: GPIO3 data register
	Gpio3_Gpdat = (volatile uint32_t *)(0xFF70F208); 
	 

	// Enable GPIO3[10]: IRQ_DEBUG1_GPIO FIELD [BIT 26] set to "1"
	*(Guts_Pmuxcr) = 0x00000010;
	 

	// Set Direction for GPIO3[10] to Output: FIELD DR10 [BIT 10] set to '1'
	*(Gpio3_Gpdir) = 0x00200000;
	
	 
	// Set GPIO3[10] to '0': FIELD D10 [BIT 10] set to '0'
	*(Gpio3_Gpdat) = 0x00000000;
	
	printk("Hello World!\n");
	return 0;
}

void cleanup_module(void)
{
	printk("Goodbye Cruel World!\n");
}

MODULE_LICENSE("GPL");


When I write insmod GPIO.ko in the terminal I get error these errors:

Unable to handle kernel paging request for data at address 0xff7e0060
faulting instruction address: 0xf107e05c
Oops: Kernel access of bad area, sig: 11 [#1]
..........
.........


How can I solve this problem?



