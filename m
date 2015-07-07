Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8FDFE009BE; Tue,  7 Jul 2015 09:19:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rcagley[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A9DE006B7
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 09:18:59 -0700 (PDT)
Received: by igau2 with SMTP id u2so40785740iga.0
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 09:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=98t163HPXUFFLaNogbebp2VUwSNOYUARPrgU1FPWTPo=;
	b=zygDv4vkWBWxzZY92u6SNZKRxH93Ri1Nl3xYf/ICjst3P0wzSxNI6gKH0JyKaxR7Ad
	62S2GJkOISk/wUAmKKUgUG4jetZkBB3fdyObWbpGU0wR7f4UyfLzVOCGZv4o0AMn9rxH
	GYvdzbqb8T32mAET6+Q6dc1mQF/oVrwYVTHQDjHgrSQL1FTqIMBRKjz2icK2BdPRA8wS
	HyipuCdUA8Dq3WGEHX63Xv5coCQchrPi8k2JnDf0madaFOlhJIsD4ueZfVINbnJx8AGw
	2N/z1OpmpN2hMVFwpaxprTFcXOxmSb/QH98HujR8ixbrbJD3MKhwNV8eeHaIj/Kn2ipB
	HVgg==
MIME-Version: 1.0
X-Received: by 10.50.87.38 with SMTP id u6mr79641945igz.39.1436285939205; Tue,
	07 Jul 2015 09:18:59 -0700 (PDT)
Received: by 10.107.51.84 with HTTP; Tue, 7 Jul 2015 09:18:59 -0700 (PDT)
In-Reply-To: <559BCC32.9050002@balister.org>
References: <CAN-NoH3OUDBmKqmO4hzUBjKt_LprWc-uwc1X8w6zRDwmUpQFKg@mail.gmail.com>
	<559BCC32.9050002@balister.org>
Date: Tue, 7 Jul 2015 09:18:59 -0700
Message-ID: <CAN-NoH1uz17nPsycMivhQPwZo7j4cKDKaB9BeKfzWu98Doc1qQ@mail.gmail.com>
From: Richard Cagley <rcagley@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 07 Jul 2015 16:19:02 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 7, 2015 at 5:55 AM, Philip Balister <philip@balister.org> wrote:
> On 07/06/2015 09:16 PM, Richard Cagley wrote:
>> I have a kernel module that shows up in my build work directory after
>> I configure the kernel accordingly
>> build/tmp-glibc/work/zedboard_zynq7-oe-linux-gnueabi/linux-xlnx/3.14-xilinx+gitAUTOINC+2b48a8aeea-r0/image/lib/modules/3.14.2-xilinx/kernel/drivers/dma/xilinx/vdmatest.ko
>>
>> But, when I add "kernel-modules" to my IMAGE_INSTALL in local.conf I
>> don't see vdmatest.ko show up in the resultant root filesystem after I
>> run bitbake core-image-minimal-dev and untar the image
>>
>> Is there a way to tell yocto to install all kernel modules or a step
>> I've missed?
>>
>
> I have:
>
> MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
>
> in my machine conf,
>
Wow, thanks. I spent a lot of time trying to figure out that one. I
stuck it in local.conf for now but I guess the machine.conf would
eventually make more sense.

> Make sure you have buildhistory in your user classes. That creates files
> that are very helpful for working out what is actually in the generated
> packages.
>
thanks for the tip. I just turned this on and will try to leverage it
in the future.

