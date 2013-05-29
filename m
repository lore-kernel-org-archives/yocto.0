Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B99F1E004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 08:34:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r4TFYbXb022704
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 May 2013 08:34:37 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 29 May 2013 08:34:37 -0700
Message-ID: <51A6200C.6030904@windriver.com>
Date: Wed, 29 May 2013 11:34:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Katu Txakur <katutxakurra@gmail.com>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
In-Reply-To: <CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using module_autoload
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
X-List-Received-Date: Wed, 29 May 2013 15:34:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-05-29 11:32 AM, Katu Txakur wrote:
> Martin, Paul, thanks for your help.
> Yes, the recipe does inherit module.
> Any other problem that you can think off?

Note: if you are on master, Martin said "module-split", not
"module".

Cheers,

Bruce

>
> Thanks a lot in advance,
> Katu
>
>
> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
> <mailto:paul.eggleton@linux.intel.com>>
>
>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
>      > > Hi,
>      > > I'm failing to load a kernel module named spike doing this:
>      > > 1) add the recipe (inherit module), based in a Makefile with
>      > > modules_install:
>      > > $(MAKE) INSTALL_MOD_DIR=kernel/drivers/spike -C $(KERNEL_SRC)
>     M=$(SRC)
>      > > modules_install
>      > > 2) Add the package to the image with IMAGE_INSTALL += "spike"
>     in the
>      > > local.conf file
>      > > 3) In the machine/mymachine.conf I've added
>      > >
>      > >         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "spike"
>      > >         module_autoload_spike = "spike"
>      > >
>      > > The driver gets added to the image and I can load it with
>     insmod spike,
>      > > however, I would like to load it at boot time.
>      > > A workaround is to create a file with the name spike.conf and
>     write spike
>      > > inside. Copying that file to /etc/modules-load.d/spike.conf
>      > > loads the driver correctly, but I need to do it from a recipe.
>      > >
>      > > Can anyone spot what am I doing wrong?
>      >
>      > module_autoload won't work with external module unless you
>     inherit also
>      > kernel-module-split
>
>     Note that module.bbclass already does this, so if the external
>     module recipe
>     already does "inherit module" then that is not the problem.
>
>     Cheers,
>     Paul
>
>     --
>
>     Paul Eggleton
>     Intel Open Source Technology Centre
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


