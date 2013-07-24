Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 885A9E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:51:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6OFpCKn011596
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Jul 2013 08:51:12 -0700 (PDT)
Received: from [128.224.20.80] (128.224.20.80) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 24 Jul 2013 08:51:12 -0700
Message-ID: <51EFF7EE.6000303@windriver.com>
Date: Wed, 24 Jul 2013 11:51:10 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <lothar@denx.de>
References: <20130724150504.17793cvsxo9h0y04@webmail.mnet-online.de>
	<51EFD395.3080009@windriver.com>
	<20130724172346.18894xbfvnwcubgg@webmail.mnet-online.de>
In-Reply-To: <20130724172346.18894xbfvnwcubgg@webmail.mnet-online.de>
Cc: yocto@yoctoproject.org
Subject: Re: how to set particular changes to a default kernel config
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
X-List-Received-Date: Wed, 24 Jul 2013 15:51:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-07-24 11:23 AM, lothar@denx.de wrote:
> Hi, thank you very much for your answer!
>
> So, you mean something like this in the kernel .bb:
>    require recipes-kernel/linux/linux-yocto.inc
> This is definitely missing. I'm including linux.inc changing it to
> linux-yocto.inc breaks other patches that I'd like to apply (perhaps the
> path?). This means more work, and more doubts, too.
>
> Now I'm asking myself, actually, should I change it from linux.inc to
> linux-yocto.inc generally?

Look a linux-yocto-custom (in meta-skelton), using linux-yocto
kernel bbclass support means that you have fragments, but don't
need to use the linux-yocto kernel tree.

>
> At the moment, I'll apply the CONFIG_'s with "echo", which seems easier
> for the simple case.

Linux yocto custom is simple, and intended for your use case .. give
it a whirl!

Bruce

> BR,
> L
>
>
> Zitat von Bruce Ashfield <bruce.ashfield@windriver.com>:
>
>> On 13-07-24 09:05 AM, lothar@denx.de wrote:
>>> Dear Yocto Team,
>>>
>>> For an ARM based board (MACHINE = "myboard"), I use a default kernel
>>> config from arch/arm/configs and want now to change some particular
>>> CONFIG_ options.
>>>
>>> Trying to follow the documentation, I currently have the following
>>> files:
>>> .
>>> +- linux-acme
>>> |   |
>>> |   +- additional.cfg
>>> |
>>> +- linux-acme_3.8.bb
>>>
>>>
>>>
>>> ...in linux-acme_3.8.bb I have
>>> (...)
>>> S = "${WORKDIR}/git"
>>> (...)
>>> KERNEL_DEFCONFIG_myboard = "blabla_defconfig"
>>> do_configure_prepend_myboard() {
>>>      install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} \
>>>            ${WORKDIR}/defconfig || die "no default config"
>>> }
>>> SRC_URI_myboard =
>>> "git://kernel.ubuntu.com/ubuntu/linux.git;protocol=git \
>>>            file://additional.cfg"
>>> (...)
>>>
>>>
>>> ...and in additional.cfg I have
>>> CONFIG_DEVTMPFS_MOUNT=y
>>> CONFIG_MTD_CMDLINE_PARTS=y
>>> CONFIG_MTD_BLOCK=y
>>> CONFIG_MTD_M25P80=y
>>>
>>>
>>> When I run something like...
>>> $ bitbake -b
>>> /yocto/meta-myboard/recipes-kernel/linux/linux-acme_3.8.bb -f
>>> ...it seems to find the .cfg file, since it stoped complaining (after I
>>> fixed some paths) and now compiles/builds smoothely.
>>>
>>> Anyway, I can't see the changes in the .config in
>>> $BDIR/tmp/work/myboard-linux-gnueabi/linux-acme/3.8+..../git/.config
>>>
>>> I imagine something like mixing both configs and running "make
>>> oldconfig" in behind. Anyway before compilation, the changes should be
>>> in the .config, right?
>>>
>>> Questions:
>>> 1) How can I add single additional options to a default kernel config?
>>
>> Just like you have above, but does your recipe inherit linux-yocto ?
>> You of course also need to have the dependencies of the options
>> you are trying to add, otherwise, they won't make the final .config.
>>
>>> 2) What is the best way to check if the options were applied?
>>
>> There's an audit phase that runs after configuration has completed, but
>> if you are using a different tree than the linux-yocto tree, it will
>> do it's best to tell you what is missing, but needs to sift through
>> a lot of data.
>>
>> A faster way for small changes is likely just what you are doing,
>> checking the .config in the build dir.
>>
>>> 3) Do I need another approach, e.g. through a patch, using echo, or
>>> using a .scc file (I tried, but with the same result)?
>>
>> Those will work as well, but the system will detect lonely .cfg files
>> and apply them to the tree after the default configuration.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Best Regards,
>>> Lothar Rubusch
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>
>
>


