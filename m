Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BDBAE013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:23:53 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c0gLv1rwGz3hhwt;
	Wed, 24 Jul 2013 17:23:48 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c0gLr4TFnzbbnM;
	Wed, 24 Jul 2013 17:23:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id Tt3n54nNQADF; Wed, 24 Jul 2013 17:23:46 +0200 (CEST)
X-Auth-Info: Icf6eiDdnbCIiWCf6iNZkqxS5QqrSMoNkfH79a2Yw5U=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Wed, 24 Jul 2013 17:23:46 +0200 (CEST)
Received: from p4FD638F0.dip0.t-ipconnect.de (p4FD638F0.dip0.t-ipconnect.de
	[79.214.56.240]) by webmail.mnet-online.de (Horde Framework) with HTTP; 
	Wed, 24 Jul 2013 17:23:46 +0200
Message-ID: <20130724172346.18894xbfvnwcubgg@webmail.mnet-online.de>
Date: Wed, 24 Jul 2013 17:23:46 +0200
From: lothar@denx.de
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <20130724150504.17793cvsxo9h0y04@webmail.mnet-online.de>
	<51EFD395.3080009@windriver.com>
In-Reply-To: <51EFD395.3080009@windriver.com>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
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
X-List-Received-Date: Wed, 24 Jul 2013 15:23:54 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Hi, thank you very much for your answer!

So, you mean something like this in the kernel .bb:
   require recipes-kernel/linux/linux-yocto.inc
This is definitely missing. I'm including linux.inc changing it to  
linux-yocto.inc breaks other patches that I'd like to apply (perhaps  
the path?). This means more work, and more doubts, too.

Now I'm asking myself, actually, should I change it from linux.inc to  
linux-yocto.inc generally?

At the moment, I'll apply the CONFIG_'s with "echo", which seems  
easier for the simple case.
BR,
L


Zitat von Bruce Ashfield <bruce.ashfield@windriver.com>:

> On 13-07-24 09:05 AM, lothar@denx.de wrote:
>> Dear Yocto Team,
>>
>> For an ARM based board (MACHINE = "myboard"), I use a default kernel
>> config from arch/arm/configs and want now to change some particular
>> CONFIG_ options.
>>
>> Trying to follow the documentation, I currently have the following files:
>> .
>> +- linux-acme
>> |   |
>> |   +- additional.cfg
>> |
>> +- linux-acme_3.8.bb
>>
>>
>>
>> ...in linux-acme_3.8.bb I have
>> (...)
>> S = "${WORKDIR}/git"
>> (...)
>> KERNEL_DEFCONFIG_myboard = "blabla_defconfig"
>> do_configure_prepend_myboard() {
>>      install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} \
>>            ${WORKDIR}/defconfig || die "no default config"
>> }
>> SRC_URI_myboard = "git://kernel.ubuntu.com/ubuntu/linux.git;protocol=git \
>>            file://additional.cfg"
>> (...)
>>
>>
>> ...and in additional.cfg I have
>> CONFIG_DEVTMPFS_MOUNT=y
>> CONFIG_MTD_CMDLINE_PARTS=y
>> CONFIG_MTD_BLOCK=y
>> CONFIG_MTD_M25P80=y
>>
>>
>> When I run something like...
>> $ bitbake -b /yocto/meta-myboard/recipes-kernel/linux/linux-acme_3.8.bb -f
>> ...it seems to find the .cfg file, since it stoped complaining (after I
>> fixed some paths) and now compiles/builds smoothely.
>>
>> Anyway, I can't see the changes in the .config in
>> $BDIR/tmp/work/myboard-linux-gnueabi/linux-acme/3.8+..../git/.config
>>
>> I imagine something like mixing both configs and running "make
>> oldconfig" in behind. Anyway before compilation, the changes should be
>> in the .config, right?
>>
>> Questions:
>> 1) How can I add single additional options to a default kernel config?
>
> Just like you have above, but does your recipe inherit linux-yocto ?
> You of course also need to have the dependencies of the options
> you are trying to add, otherwise, they won't make the final .config.
>
>> 2) What is the best way to check if the options were applied?
>
> There's an audit phase that runs after configuration has completed, but
> if you are using a different tree than the linux-yocto tree, it will
> do it's best to tell you what is missing, but needs to sift through
> a lot of data.
>
> A faster way for small changes is likely just what you are doing,
> checking the .config in the build dir.
>
>> 3) Do I need another approach, e.g. through a patch, using echo, or
>> using a .scc file (I tried, but with the same result)?
>
> Those will work as well, but the system will detect lonely .cfg files
> and apply them to the tree after the default configuration.
>
> Cheers,
>
> Bruce
>
>>
>> Best Regards,
>> Lothar Rubusch
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>




