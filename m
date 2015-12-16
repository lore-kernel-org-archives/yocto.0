Return-Path: <sazzalin@settopsurvey.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E114E00B77; Wed, 16 Dec 2015 04:37:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FAA6E00AE6
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 04:37:36 -0800 (PST)
Received: from settop-dev (84.124.107.127) by correo.avancemgrup.es
	(192.168.11.11) with Microsoft SMTP Server id 14.2.247.3;
	Wed, 16 Dec 2015 13:37:33 +0100
Message-ID: <1450269478.2067.30.camel@settopsurvey.com>
From: simo <sazzalin@settopsurvey.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 Dec 2015 13:37:58 +0100
In-Reply-To: <CAALGJZbV0Afzj3=YD1pqVrtbQ4ugcMiVK3dLj6VRM57Y+gxcTg@mail.gmail.com>
References: <1450201373.2067.10.camel@settopsurvey.com>
	<CAALGJZZSsF_xE3w1c=6ajkXFDbr+7_wd0+BN=e283XGZya8dVA@mail.gmail.com>
	<CAALGJZbV0Afzj3=YD1pqVrtbQ4ugcMiVK3dLj6VRM57Y+gxcTg@mail.gmail.com>
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
X-List-Received-Date: Wed, 16 Dec 2015 12:37:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi, 

right now we solved executing an external tool we wrote in C to send the
I2C command to the external expansion board.

I had to modify the kernel_halt() function as follows:

void kernel_halt(void)
{

        /* added by simo */

        /* external environment declaration */
        char i2c_shutdown_cmd[] = "/home/root/i2c-shutdown";
        char **argv;
        static char *envp[] = 
        {
                "HOME=/",
                "PATH=/home/root:/sbin:/usr/sbin:/bin:/usr/bin",
                NULL
        };

        argv = argv_split(GFP_KERNEL, i2c_shutdown_cmd, NULL);

        // WORKS HERE
        pr_emerg("Turning off.\n");
        call_usermodehelper(argv[0], argv, envp, UMH_WAIT_EXEC);

        /* no more executed */
        kernel_shutdown_prepare(SYSTEM_HALT);

        migrate_to_reboot_cpu();
        syscore_shutdown();
        //pr_emerg("System halted\n");
        kmsg_dump(KMSG_DUMP_HALT);

        /* commented while(1); in machine_halt for arm */
        machine_halt();
}
EXPORT_SYMBOL_GPL(kernel_halt);

I cannot execute call_usermodehelper after kernel_shutdown_prepare()
because this function disables user space access.

So I have a question: how much is important to execute the code until
machine_halt() ?

I am using a kernel version 3.18.18.

Regards,
Simon


El mar, 15-12-2015 a las 19:46 +0100, Christian Ege escribió:
> 
> Am 15.12.2015 7:45 nachm. schrieb "Christian Ege" <k4230r6@gmail.com>:
> >
> > Hi,
> >
> > Am 15.12.2015 6:45 nachm. schrieb "simo"
> <sazzalin@settopsurvey.com>:
> > >
> > > I am using a Gumtix Overo board and we create and expansion board
> that
> > > power Overo and other devices by external power supply IC.
> > >
> > > Our expansion board with power supply are connected by I2C bus 2
> in
> > > overo (not the same i2C that TW4030 or tps6595 is connected).
> > >
> > > Using the Linux  command shutdown we would like to power off the
> hole
> > > system.
> > > We would like to close the linux and last thing send a command
> over I2C
> > > to our power supply IC in order it disconnect the physical power.
> > >
> > > Our question is:
> > >
> > > Where we have to implement that function?
> > > Is there any example of it?
> > I guess you can use 
> > http://lxr.free-electrons.com/source/kernel/reboot.c
> >
> register_reboot_notifier is your friend
> > You have to create some kernel module doing this or write a kernel
> patch.
> >
> > Regards,
> > Christian
> >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> 
> 



