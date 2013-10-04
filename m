Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB02.domain01.net (STOEXHUB02.domain01.net
	[83.145.59.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1322E0161F
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 10:56:06 -0700 (PDT)
Received: from [192.168.0.100] (83.252.255.124) by stoexhub02.domain01.net
	(10.12.10.2) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Fri, 4 Oct 2013 19:56:03 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <loom.20131003T093203-279@post.gmane.org>
References: <loom.20131001T154728-532@post.gmane.org>
	<4607a605-12cd-476d-92fa-47ded39e2905@email.android.com>
	<loom.20131003T093203-279@post.gmane.org>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Fri, 4 Oct 2013 19:55:57 +0200
To: Jack <jackrubby2010@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Message-ID: <b9165dea-1b36-4bd0-95d9-483de2340d3e@email.android.com>
X-GFI-SMTP-Submission: 1
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
X-List-Received-Date: Fri, 04 Oct 2013 17:56:07 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="UTF-8"



Jack <jackrubby2010@gmail.com> wrote:
>Anders Darander <anders@...> writes:
>
>Thanks Anders,
>
>But I have this problem not only for GPIOs, but also for other
>registers.

Well, my comment about dereferencing physical addresses using *-only, wasn't restricted to GPIO's only. It was regarding physical addresses in general... 

Once again, I've not used this platform, this I'm not able to be too specific. 

>For example, I tried to change DTW bits of PROCTL register in eSDH but
>I get
>"Kernel access of bad area" again. My simple code is here :

>int init_module(void)
>{
>	
>	// e500 Core View To Power Architecture CCSR: 0x0_FF70_0000
>	
>	volatile uint32_t * eSDH_PROCTL = (volatile uint32_t *)(0xFF72E028);
>
>	*(eSDH_PROCTL) = 0x00000002;

I think that you should try to look at some code from the kernel that accesses registers on your platform. For instance http://lxr.free-electrons.com/source/sound/soc/fsl/p1022_ds.c?v=3.4 (this is just a randomly chosen file that relates to P1022. 

Have a look at how guts_phys is declared, as well as how guts later on is both declared and initialized from guts_phys. 
When the registers are actually read / written, this driver uses the clrsetbits_XX. These functions then implements the actual reading and writing of the registers. 

(Note again, I've just looked at this file and p1022 for a couple of minutes). 

Cheers, 
Anders 

-- 
ChargeStorm AB / eStorm 

