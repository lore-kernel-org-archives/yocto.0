Return-Path: <sazzalin@settopsurvey.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F0E5E00AE6; Fri, 18 Dec 2015 01:36:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.39.26.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from correo.avancemgrup.es (correo.avancemgrup.es [95.39.26.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08020E00349
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 01:35:57 -0800 (PST)
Received: from settop-dev (84.124.107.127) by correo.avancemgrup.es
	(192.168.11.11) with Microsoft SMTP Server id 14.2.247.3;
	Fri, 18 Dec 2015 10:35:54 +0100
Message-ID: <1450431381.4619.6.camel@settopsurvey.com>
From: simo <sazzalin@settopsurvey.com>
To: <yocto@yoctoproject.org>
Date: Fri, 18 Dec 2015 10:36:21 +0100
In-Reply-To: <CAOsp8o-FvX64t-dniWEPY57hTfA7ckKdhS4khCg9AL1ddh6FZw@mail.gmail.com>
References: <1450201373.2067.10.camel@settopsurvey.com>
	<CAALGJZZSsF_xE3w1c=6ajkXFDbr+7_wd0+BN=e283XGZya8dVA@mail.gmail.com>
	<CAALGJZbV0Afzj3=YD1pqVrtbQ4ugcMiVK3dLj6VRM57Y+gxcTg@mail.gmail.com>
	<1450269478.2067.30.camel@settopsurvey.com>
	<CAOsp8o-FvX64t-dniWEPY57hTfA7ckKdhS4khCg9AL1ddh6FZw@mail.gmail.com>
Organization: Al-Top
X-Mailer: Evolution 3.12.9-1+b1 
MIME-Version: 1.0
X-Originating-IP: [84.124.107.127]
Subject: Re: Power off IC over Yocto
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
X-List-Received-Date: Fri, 18 Dec 2015 09:36:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Michael,

First of all thank for your feedback.
I also don't like to modify the kernel this way, also because it's not
portable.

I will look forward to develope a kernel module to do that task.

>> I don't understand your question about machine_halt, but I will
assume you are asking how important the lines of code are between your
usermode helper call and machine_halt. The answer is very. All of those
lines must execute successfully to have clean shutdown.

Yes, I was referring to the execution of 

kernel_shutdown_prepare(SYSTEM_HALT);

migrate_to_reboot_cpu();
syscore_shutdown();
kmsg_dump(KMSG_DUMP_HALT);
machine_halt();

Because it's supposed that after sending the I2C command (to power off
the board) before the execution of these function, they will not be
executed.

Thanks again.
Simon

El jue, 17-12-2015 a las 23:37 -0600, Michael Habibi escribió:
> I think you are modifying code too deep in the kernel. By the time you
> get to that function, the system should not be executing more tasks.
> If it does, it will likely get terminated pretty quickly afterward,
> regardless if it finished (no guarantee your process will run to
> completion). It's also not great practice to actually modify the
> kernel itself, because then it will only work with your one
> machine/setup (unless that is acceptable). Kernel modules loaded in
> may be better practice here. 
> 
> 
> I don't understand your question about machine_halt, but I will assume
> you are asking how important the lines of code are between your
> usermode helper



