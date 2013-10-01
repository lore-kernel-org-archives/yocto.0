Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe02.domain01.net (STOEXHUBFE02.domain01.net
	[83.145.59.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C591E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 07:39:59 -0700 (PDT)
Received: from [192.168.0.100] (37.250.222.0) by stoexhubfe02.domain01.net
	(10.12.10.7) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 1 Oct 2013 16:39:53 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <loom.20131001T154728-532@post.gmane.org>
References: <loom.20131001T154728-532@post.gmane.org>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Tue, 1 Oct 2013 16:39:44 +0200
To: Jack <jackrubby2010@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Message-ID: <4607a605-12cd-476d-92fa-47ded39e2905@email.android.com>
X-GFI-SMTP-Submission: 1
Subject: Re: "Kernel access of bad area" in kernel module
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
X-List-Received-Date: Tue, 01 Oct 2013 14:40:00 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="UTF-8"



Jack <jackrubby2010@gmail.com> wrote:
>Hi,
>I want to set/reset GPIO registers in freescale p1022 processor. I saw
>a
>hello-mod kernel module in yocto and I added it to my image and it
>worked.
>According to hello-mod kernel module, I created GPIO module like
>hello-mod.
>But it GPIO module failed when I run it in kernel level. I checked
>several
>times addresses of registers and it seems accurate. 
>My code is here :
>
>
>#include <linux/module.h>
>
>int init_module(void)
>{
>	volatile uint32_t * Guts_Pmuxcr;
>	volatile uint32_t * Gpio3_Gpdir;
>	volatile uint32_t * Gpio3_Gpdat;
>	
>	// e500 Core View To Power Architecture CCSR: 0x0_FF70_0000
>
>    // GUTS_PMUXCR:Alternate Function Signal Multiplex Control Register
>	Guts_Pmuxcr = (volatile uint32_t *)(0xFF7E0060);
>      
>        // GPIO3_GPDIR: GPIO3 direction register
>	Gpio3_Gpdir = (volatile uint32_t *)(0xFF70F200);
>
>        // GPIO3_GPDAT: GPIO3 data register
>	Gpio3_Gpdat = (volatile uint32_t *)(0xFF70F208); 

You should generally a of trying to dereference physical addresses, or you should explicitly declare them as such. 

If suggest looking for some info on using GPIO on your CPU. Unfortunately, I've not used the p1022, so I can't really help you. 

http://linuxppc.10917.n7.nabble.com/Re-GPIO-IRQ-on-P1022-td59356.html discusses some IRQ issues, though you should be able to use the codes as an example of the GPIO framework and how to use it. 

Cheers, 
Anders 

>
>	// Enable GPIO3[10]: IRQ_DEBUG1_GPIO FIELD [BIT 26] set to "1"
>	*(Guts_Pmuxcr) = 0x00000010;
>


>
>	// Set Direction for GPIO3[10] to Output: FIELD DR10 [BIT 10] set to
>'1'
>	*(Gpio3_Gpdir) = 0x00200000;
>	
>	 
>	// Set GPIO3[10] to '0': FIELD D10 [BIT 10] set to '0'
>	*(Gpio3_Gpdat) = 0x00000000;
>	
>	printk("Hello World!\n");
>	return 0;
>}
>
>void cleanup_module(void)
>{
>	printk("Goodbye Cruel World!\n");
>}
>
>MODULE_LICENSE("GPL");
>
>
>When I write insmod GPIO.ko in the terminal I get error these errors:
>
>Unable to handle kernel paging request for data at address 0xff7e0060
>faulting instruction address: 0xf107e05c
>Oops: Kernel access of bad area, sig: 11 [#1]
>..........
>.........
>
>
>How can I solve this problem?
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

-- 
Anders Darander
ChargeStorm AB          Tel: +46 702 44 84 36
Laxholmstorget 3        Email: anders@chargestorm.se
602 21 Norrköping       Web: www.chargestorm.se

Sent from my Android phone with K-9 Mail. Please excuse my brevity.

