Return-Path: <christian.ege@familie-ege.net>
Received: from server02.mc0.hosteurope.de (server02.mc0.hosteurope.de
	[92.51.170.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67996E011AF
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 00:59:25 -0800 (PST)
Received: from server04.webmailer.hosteurope.de ([10.9.0.183]); 
	by mailout.hosteurope.de (server02.mc0.hosteurope.de) running
	EXperimental Internet Mailer with esmtps (TLSv1:AES256-SHA:256)
	id 1TxZhT-0004ih-G7; Tue, 22 Jan 2013 09:59:23 +0100
Received: from nobody by server04.webmailer.hosteurope.de with local (Exim
	4.72) (envelope-from <christian.ege@familie-ege.net>)
	id 1TxZhT-0000jm-EE; Tue, 22 Jan 2013 09:59:23 +0100
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
MIME-Version: 1.0
Date: Tue, 22 Jan 2013 09:59:23 +0100
From: Christian Ege <christian.ege@familie-ege.net>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
Message-ID: <8389da1c972242f1c69900ba7f48db4e-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFcVEYOV0F1AUtXXl8wQEYHV1JdRVlTWw==-webmailer2@server04.webmailer.hosteurope.de>
X-Sender: christian.ege@familie-ege.net
User-Agent: Host Europe Webmailer/2.0
X-HE-Access: Yes
X-bounce-key: webpack.hosteurope.de; christian.ege@familie-ege.net; 1358845163;
	909436e3; 
X-Mailman-Approved-At: Wed, 23 Jan 2013 08:42:18 -0800
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: FW: YP Linux Kernel Development Manual
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
X-List-Received-Date: Tue, 22 Jan 2013 08:59:26 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

 Hi,
 I am not sure if this is the problem you are struggling with.
 I am wondering why class module.bbclass behaves completely different
 than kernel.bbclacc

>  hi, I follow the kernel development manual "2.5. Incorporating
> Out-of-Tree Modules",
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


