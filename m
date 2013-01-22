Return-Path: <chege@cybertux.de>
Received: from server01.mc0.hosteurope.de (server01.mc0.hosteurope.de
	[92.51.170.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 500EAE01457
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 04:34:57 -0800 (PST)
Received: from server03.webmailer.hosteurope.de ([10.9.0.182]); 
	by mailout.hosteurope.de (server01.mc0.hosteurope.de) running
	EXperimental Internet Mailer with esmtps (TLSv1:AES256-SHA:256)
	id 1Txd43-0008Vb-CS
	for yocto@yoctoproject.org; Tue, 22 Jan 2013 13:34:55 +0100
Received: from nobody by server03.webmailer.hosteurope.de with local (Exim
	4.72) (envelope-from <chege@cybertux.de>) id 1Txd43-0003on-Ag
	for yocto@yoctoproject.org; Tue, 22 Jan 2013 13:34:55 +0100
To: <yocto@yoctoproject.org>
MIME-Version: 1.0
Date: Tue, 22 Jan 2013 13:34:55 +0100
From: Christian Ege <chege@cybertux.de>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C36D69C@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C36D69C@GV1HQPEX03.babgsetc.pvt>
Message-ID: <a44a95f36b76218ed6de65fb6f997ce0-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkJZUkYKW0F0AVNLX1tdLkQBWlJRRVBVUQ0=-webmailer2@server03.webmailer.hosteurope.de>
X-Sender: chege@cybertux.de
User-Agent: Host Europe Webmailer/2.0
X-HE-Access: Yes
X-bounce-key: webpack.hosteurope.de;chege@cybertux.de;1358858095;b83df3f6;
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 22 Jan 2013 12:34:57 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

 Hi,
 I am not sure if this is the problem you are struggling with.
 I am wondering why class module.bbclass behaves completely different
 than kernel.bbclacc

>  copy the "hello-mod_0.1.bb" and "files" folder into my taget layer
> "meta-intel/meta-jasperforest/recipe-kernel", then add 
> "MACHINE_EXTRA_
> RDEPENDS += "kernel-module-hello" in the conf/local.conf
>  after build and boot, there's no "hello.ko" found in the binary 
> image
>  also there's no hello.ko in the "tmp/work/..." folder

 If you hello-mod_0.1.bb inherits module class there is no mechanism
 to create the kernel-module package. This only applies to the 
 kernel.bbclass

 http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module.bbclass
 http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module-base.bbclass

 Have a look at kernel.bbclass instead shows some pathon code which 
 handles the module package creation:
 http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel.bbclass#n301

 I've fixed this in my layer by stealing the code from kernel.bbclass
 https://github.com/project-magpie/meta-stlinux/blob/master/recipes-bsp/tdt-driver/tdt-driver.inc

 With this you can also use the following extends with your module:
 module_autoload_aotom = "aotom"
 and
 module_conf_stmfb = "options stmfb 
 display0=1280x720-32@50:8m:pal:yuv:yuv"

 If you are only inherting from module this have not worked for me.

 The next part I had to fight against was the fact that in 
 core-image-minimal the package managment information are stripped and 
 thus no pre hooks are executet. So the module is installed in the image 
 but not loaded on boot-up unless you call update-modules by hand.

 ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "

 To prevent this I've defined an image without the stripping:
 https://github.com/project-magpie/meta-stlinux/blob/master/recipes-core/images/core-image-base.bb

 I hope this clarify things a little bit


 regards,
 Christian

>
>  Eddy
>
> All,
>
> There is a new YP manual under development. It is a development 
> manual
> for Linux kernels in the YP. Darren Hart is the original author of 
> the
> manual as you probably know. It is still being worked on but it is in
> HTML form and now part of the yocto-docs/master branch. It is
> published at
> http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html [1].
> Feel free to access it and comment.
>
> Thanks,
>
> Scott
>
> Scott Rifenbark
>
> Intel Corporation
>
> Yocto Project Documentation
>
> 503.712.2702
>
> 503.341.0418 (cell)
>
> _______________________________________________
>
> yocto mailing list
>
> yocto@yoctoproject.org [2]
>
> https://lists.yoctoproject.org/listinfo/yocto [3]
>
>
>
> Links:
> ------
> [1] http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html
> [2] mailto:yocto@yoctoproject.org
> [3] https://lists.yoctoproject.org/listinfo/yocto
> Hi,
>
> I am reposting this to the discussion list and copying Darren Hart.
>
> Scott
>
> FROM: Eddy Lai GMail [mailto:eddy.lai.tw@gmail.com]
>  SENT: Monday, January 21, 2013 3:36 PM
>  TO: Rifenbark, Scott M
>  SUBJECT: Re: [yocto] YP Linux Kernel Development Manual
>
> hi
>
>  hi, I follow the kernel development manual "2.5. Incorporating
> Out-of-Tree Modules",
>  copy the "hello-mod_0.1.bb" and "files" folder into my taget layer
> "meta-intel/meta-jasperforest/recipe-kernel", then add 
> "MACHINE_EXTRA_
> RDEPENDS += "kernel-module-hello" in the conf/local.conf
>  after build and boot, there's no "hello.ko" found in the binary 
> image
>  also there's no hello.ko in the "tmp/work/..." folder
>
>  Eddy
>
> All,
>
> There is a new YP manual under development. It is a development 
> manual
> for Linux kernels in the YP. Darren Hart is the original author of 
> the
> manual as you probably know. It is still being worked on but it is in
> HTML form and now part of the yocto-docs/master branch. It is
> published at
> http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html [1].
> Feel free to access it and comment.
>
> Thanks,
>
> Scott
>
> Scott Rifenbark
>
> Intel Corporation
>
> Yocto Project Documentation
>
> 503.712.2702
>
> 503.341.0418 (cell)
>
> _______________________________________________
>
> yocto mailing list
>
> yocto@yoctoproject.org [2]
>
> https://lists.yoctoproject.org/listinfo/yocto [3]
>
>
>
> Links:
> ------
> [1] http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html
> [2] mailto:yocto@yoctoproject.org
> [3] https://lists.yoctoproject.org/listinfo/yocto


> On Jan 16, 2013, at 11:11 AM, Darren Hart <dvhart@linux.intel.com> 
> wrote:
>> On 01/15/2013 10:38 AM, Bruce Ashfield wrote:
>>>
>>> I finally found the entries that I was recalling earlier. They are:
>>>
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=241
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1614
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2968
>>>
>>> 1614 and 2968 are the most interesting for what you are asking.
>>>
>>> As you can see the net result of those bugs is that you can get the
>>> right parts of the kernel tree in SDK packages, since they include
>>> dev packages, and with what is currently in kernel-dev .. it should
>>> be enough to build against in the SDK (perhaps with just the 
>>> LDFLAGS
>>> tweaks mentioned in the other thread). The sources should be part
>>> of the sysroot, and hence available when that is packaged for use
>>> outside of bitbake/yocto.
>>>
>>> If you aren't seeing kernel-dev in the SDK image, it might be that
>>> TOOLCHAIN_TARGET_TASK doesn't have kernel-dev by default, or 
>>> something
>>> else is different in the SDK that is being generated in your 
>>> testing.
>>>
>>> I'm only speculating about what might be missing, since I'm not 
>>> 100%
>>> familiar with the SDK, but perhaps Jessica or others can chime in 
>>> if
>>> I've led you astray :)
>>>
>>
>> Thanks for keeping this going Bruce. Yes, kernel-dev is the package 
>> for
>> the target. The only trick here is that we currently purge the host
>> binaries which means that you need to build scripts on the target 
>> prior
>> to building the module.
>>
>> I think this might be missing from the new kernel manual as it isn't 
>> a
>> particularly common use-case, and is rather orthogonal to the way 
>> the
>> tooling has been designed (not to say it can't be done).
>>
>> Patrick, please keep us posted if this continues to not work for 
>> you. I
>> will open a bug to include a section about this in the kernel
>> development manual.
>
> I got sick and was also diverted to other things, so I apologize for
> not responding sooner. I am very appreciative of every CPU cycle you
> have all spent considering this issue -- I wouldn't want you to
> imagine otherwise.
>
> I will gladly have a look at those issues and absorb the information
> you've offered. I will also let you all know if it works for me.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


