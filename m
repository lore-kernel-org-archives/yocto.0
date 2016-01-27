Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DE70E00852; Wed, 27 Jan 2016 11:40:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95881E0079A;
	Wed, 27 Jan 2016 11:40:34 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p63so1657915wmp.1;
	Wed, 27 Jan 2016 11:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:references:to:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=sCpqQM+TLLWfJ15Rzr4n8fuJcBnCEvmJBnZnTBhVOBY=;
	b=xEK9zz6uPHIwhrRNWrLa6JgCauvWSaRbwr9uNk/cqsqXR2vU/XOMp0neZ9qgWmbmi+
	5Z6SQ5OY6MwbN1uUvd+ZzKTFQtDlbMlUgsZh312l1/btIYHQhpSPZHH7Rqen6aL9AT9+
	OnEkqFN3xyQmlsRoEPY0uJqzkCa3B3ODSko53K8b8tdHWs720hiwkx9d1Z7GztdrnrzW
	W+WIC8rCvNzSmGq/SgA0a7hlJP849hy890nep1yEQmxOQD+L7vK1fCtW1fsp/iTeoxKS
	sn7hQf7WYw0WvolJOtWDgC5vW70SqzsoHg4XM6YY8M2QKNP986asJIaUiY6KXtAQ/y+g
	u5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:references:to:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=sCpqQM+TLLWfJ15Rzr4n8fuJcBnCEvmJBnZnTBhVOBY=;
	b=G9PLQYPFEwqxnIFwt+PHIv665d6AgGmknWCCI9VveEZ0xLSbpNONqyHvT6ySlWkMQy
	z2vSHYACFwoDZllTPx1263Od3Pqtk53a4d+41e0r1ok3J3LyBeXoDOJWPqEiYiTYpRnj
	dmdoaPgEwd0MH+g7g/0kH2PGbUqc4QC4mdi9Q8S8JnC3/AmJJHa0kEUfpHuLbjgDZixe
	/bzqs8r5u142pvS7fAfaS6K/3ldQwUOy8AhRHqEUldW6O0t7+i+2yJXtL7LlbvyHfepS
	E1uwjgoAhXp2r5ooSv1Qew+osw+qN7H+zA7RlD+IOCQ+s/Z7E1BOiOXfjSuC1wt46+pn
	QlXQ==
X-Gm-Message-State: AG10YOQBRGMr2i1NpZ0mLc//XryZPvfg6IcYknWECafUDjZdqiAGSsoCRw3s/WQ/55TQiw==
X-Received: by 10.28.218.81 with SMTP id r78mr33342252wmg.91.1453923633418;
	Wed, 27 Jan 2016 11:40:33 -0800 (PST)
Received: from [192.168.23.113]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101]) by smtp.googlemail.com with ESMTPSA id
	w8sm7662434wjx.21.2016.01.27.11.40.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jan 2016 11:40:32 -0800 (PST)
References: <CAJTF2nSAzJvaqSsm4GZeTJbc2=L-Fw-mbP+OXnbfaBxN0NU8rw@mail.gmail.com>
	<CAALGJZb0LgOF_FVEeiUH=FYTzA7-_G4xS28XpNXyc14XTBG6uQ@mail.gmail.com>
	<CAJTF2nT-hOXiuUa8ta=cPVXPejg2ck=AzA+3xJNuszVkuBu+CQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
From: Christian Ege <k4230r6@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56A91D2F.6080800@gmail.com>
Date: Wed, 27 Jan 2016 20:40:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTF2nT-hOXiuUa8ta=cPVXPejg2ck=AzA+3xJNuszVkuBu+CQ@mail.gmail.com>
Subject: Re: Kernel build gets stuck in a endless loop
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
X-List-Received-Date: Wed, 27 Jan 2016 19:40:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

Thanks to Guiseppe Pagano, there is a solution for this issue. It is
more a hot fix than a real solution but this is maybe for someone else
helpful.

> Hi Crhistian,
> It is not a clean patch, but it works for me.
> 
> File:    kernel_imx_3.14/Makefile
> 
> - $(Q)$(MAKE) -f $(srctree)/Makefile silentoldconfig
> + if [[ ! -e include/config/auto.conf ]]; then $(MAKE) -f
> $(srctree)/Makefile silentoldconfig ; fi
> 
> In this way:
> 
> 
> # If .config is newer than include/config/auto.conf, someone tinkered
> # with it and forgot to run make oldconfig.
> # if auto.conf.cmd is missing then we are probably in a cleaned tree so
> # we execute the config step to be sure to catch updated Kconfig files
> include/config/%.conf: $(KCONFIG_CONFIG) include/config/auto.conf.cmd
>         if [[ ! -e include/config/auto.conf ]]; then $(MAKE) -f
> $(srctree)/Makefile silentoldconfig ; fi
> #       $(Q)$(MAKE) -f $(srctree)/Makefile silentoldconfig
> else
> # external modules needs include/generated/autoconf.h and
> include/config/auto.conf
> # but do not care if they are up-to-date. Use auto.conf to trigger the test
> PHONY += include/config/auto.conf
> 
> I had a similar problem during Android 5.0 build process, ad this patch
> solves. Hope it will the same for you.
> 
> If it works I'll pass the patch to udooneo Team.
I've added this to my UDOO layer in a slightly modified version:

https://github.com/graugans/meta-udoo/blob/jethro/recipes-kernel/linux/linux-udooboard/0003-avoid-endless-loop.patch

Regards,
Christian

> 
> Bye
> Giuseppe
> 
> 
> 
> 2016-01-03 19:14 GMT+01:00 Christian Ege <k4230r6@gmail.com
> <mailto:k4230r6@gmail.com>>:
> 
>     Hi Giuseppe,
> 
>     Am 03.01.2016 7:08 nachm. schrieb "Giuseppe Pagano"
>     >
>     > Did you solved ?
>     I did a little investigation but did not finally succeeded.
>     > Maybe I have a patch for you.
>     >
>     This would be awesome.
> 
>     Regards,
>     Christian
> 
> 
>     >
>     >
>     > Christian Ege k4230r6 at gmail.com <http://gmail.com> 
>     > Sun Nov 29 12:24:50 PST 2015
>     >
>     > Previous message: [yocto] [meta-security][PATCH] nmap: package
>     update to 7.0
>     > Next message: [yocto] [Recipe reporting system] Upgradable recipe
>     name list
>     > Messages sorted by: [ date ] [ thread ] [ subject ] [ author ]
>     > ________________________________
>     >
>     > Hi,
>     >
>     > can anyone give me some advice how to debug an endless loop during
>     > kernel and module recipes with my UDOO Neo support layer?
>     >
>     > https://github.com/graugans/meta-fsl-arm-extra/tree/master-udooneo
>     >
>     > When I build the kernel for the UDOO Neo kernel or a module with
>     bitbake
>     > the bitbake process hangs in an endless loop:
>     >
>     >
>     > bitbake -v kernel-module-imx-gpu-viv
>     >
>     > + cd
>     >
>     /data/FSL/fsl-community-bsp-master/build/tmp/work/udooneo-poky-linux-gnueabi/kernel-module-imx-gpu-viv/5.0.11.p7.1+fslc+gitAUTOINC+eeeb23c0fb-r0/git
>     > + do_make_scripts
>     > + unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>     > + make CC=arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm
>     > -fuse-ld=bfd LD=arm-poky-linux-gnueabi-ld.bfd
>     > AR=arm-poky-linux-gnueabi-ar  -C
>     >
>     /data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-source
>     >
>     O=/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-build-artifacts
>     > scripts
>     >
>     > make: Entering directory
>     >
>     '/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-source'
>     >
>     >   GEN
>     >
>     /data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-build-artifacts/Makefile
>     >
>     > scripts/kconfig/conf --silentoldconfig Kconfig
>     >
>     >   GEN
>     >
>     /data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-build-artifacts/Makefile
>     >
>     > scripts/kconfig/conf --silentoldconfig Kconfig
>     >
>     >   GEN     /data/FSL/fsl-community-bsp-master/build/tmp/work-shared
>     >
>     > For the kernel I can workaround this by adding the following line
>     to the
>     > recipe:
>     >
>     >     B = "${S}"
>     >
>     > But this does not work for kernel module recipes like the
>     > "kernel-module-imx-gpu-viv"
> 
> 


