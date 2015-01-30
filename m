Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F26CE0086F; Fri, 30 Jan 2015 08:34:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05B79E002F9
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 08:34:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0UGYiZa019776
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Jan 2015 08:34:44 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 30 Jan 2015 08:34:44 -0800
Message-ID: <54CBB28C.1040407@windriver.com>
Date: Fri, 30 Jan 2015 11:34:20 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>,
	<yocto@yoctoproject.org>
References: <1451676.12.1422626878778.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <1451676.12.1422626878778.JavaMail.kraghavendra@Raghavendra>
Subject: Re: Yocto-custom kernel build issue
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
X-List-Received-Date: Fri, 30 Jan 2015 16:34:54 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-01-30 09:08 AM, Raghavendra Kakarla wrote:
> Hi,
>
> I am new to yocto project build system. I downloaded the yocto project build system from git. I built for the all qemu architectures(MIPS,ARM,PPC,X86) and ran on qemu.
>
> all are working fine.
>
> Now I need to create a bsp layer for my board which has the mips processor core.
>
> I created the bsp layer with using the yocto-bsp create command.
>
> here I use the my own kernel which is reside at our local git repositery. I gave this path while creating the bsplayer.
>
> After adding my bsp layer to bblayers and my mechine to local.conf i built the kernel using bitbake -k core-image-minimal command.
>
> While building i got the following errors:
>
>
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function do_configure
> | NOTE: make oldnoconfig
> | make: *** No rule to make target `oldnoconfig'.  Stop.
> | NOTE: make oldconfig
> | make: *** No rule to make target `oldconfig'.  Stop.
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at /home/testuser/poky/build/tmp/work/mydhanush-poky-linux/linux-yocto-custom/3.10.14+gitAUTOINC+12bbf6468e-r0/temp/log.do_configure.14044)
>
> And also i did not got "src" folder in the following path for my mechine which is there for the qemu mips.
> /home/testuser/poky/build/tmp/sysroots/mydhanush/usr

Is the source directory in 
/home/testuser/poky/build/tmp/work-shared/<your machine>/kernel-source ?

And if so, is your recipe setting ${S} in any way ?

Bruce

>
> could you please help for resolving this issue.
>
> thanks in advance.
>
>
>
>
> Thanks & Regards,
> Raghavendra K.
>


