Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FEFBE0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 12:31:12 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B49D5F81220; Mon, 21 May 2012 13:31:11 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B3919F81203;
	Mon, 21 May 2012 13:31:10 -0600 (MDT)
Message-ID: <4FBA97FE.2000909@mlbassoc.com>
Date: Mon, 21 May 2012 13:31:10 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4FBA8091.1040509@mlbassoc.com>
	<20120521192834.GA3154@jama.jama.net>
In-Reply-To: <20120521192834.GA3154@jama.jama.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Trouble building RasberryPi with Yocto/Poky
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 19:31:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-21 13:28, Martin Jansa wrote:
> On Mon, May 21, 2012 at 11:51:13AM -0600, Gary Thomas wrote:
>> I tried to build a simple image using just Poky+meta-raspberrypi
>> Build Configuration:
>> BB_VERSION        = "1.15.2"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "raspberrypi"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.2+snapshot-20120521"
>> TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
>> TARGET_FPU        = "vfp"
>> meta
>> meta-yocto        = "master:f24d8df3af52e2a2911233746ad69f8899bbdf93"
>> meta-raspberrypi  = "master:d1e802561ab5c70680fd6ee70a47791fe78aa977"
>>
>> When I ran 'bitbake core-image-sato', I got this error:
>>
>> | make[1]: *** No rule to make target
>> `/local/rpi_poky/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1/image/lib/firmware/./', needed by
>> `/local/rpi_poky/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1/image/lib/firmware/ti_3410.fw'.  Stop.
>>
>> Any ideas how to move forward?
>
> If your distro is using make-3.82 than you need something like this
> http://git.shr-project.org/git/?p=meta-smartphone.git;a=commit;h=9c45467120d525a406fe8ec012c6231180c99767
> to fix this race. (I haven't seen it with make-3.81)

It is indeed.  I'll work up a patch for this (doesn't look
like a work-around causes any undue complications)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

