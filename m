Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A3FAE00A2C; Tue,  7 Jul 2015 05:55:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 30F61E009F0
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 05:55:17 -0700 (PDT)
Received: (qmail 13125 invoked by uid 1003); 7 Jul 2015 12:55:16 -0000
Received: from unknown (HELO ?192.168.11.124?)
	(philip@opensdr.com@108.44.116.228)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	7 Jul 2015 12:55:16 -0000
Message-ID: <559BCC32.9050002@balister.org>
Date: Tue, 07 Jul 2015 08:55:14 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Cagley <rcagley@gmail.com>, yocto@yoctoproject.org
References: <CAN-NoH3OUDBmKqmO4hzUBjKt_LprWc-uwc1X8w6zRDwmUpQFKg@mail.gmail.com>
In-Reply-To: <CAN-NoH3OUDBmKqmO4hzUBjKt_LprWc-uwc1X8w6zRDwmUpQFKg@mail.gmail.com>
Subject: Re: installing kernel modules in root filesystem
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
X-List-Received-Date: Tue, 07 Jul 2015 12:55:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 07/06/2015 09:16 PM, Richard Cagley wrote:
> I have a kernel module that shows up in my build work directory after
> I configure the kernel accordingly
> build/tmp-glibc/work/zedboard_zynq7-oe-linux-gnueabi/linux-xlnx/3.14-xilinx+gitAUTOINC+2b48a8aeea-r0/image/lib/modules/3.14.2-xilinx/kernel/drivers/dma/xilinx/vdmatest.ko
> 
> But, when I add "kernel-modules" to my IMAGE_INSTALL in local.conf I
> don't see vdmatest.ko show up in the resultant root filesystem after I
> run bitbake core-image-minimal-dev and untar the image
> 
> Is there a way to tell yocto to install all kernel modules or a step
> I've missed?
> 

I have:

MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"

in my machine conf,

Make sure you have buildhistory in your user classes. That creates files
that are very helpful for working out what is actually in the generated
packages.

Philip


