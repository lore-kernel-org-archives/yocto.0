Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D86ACE004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 07:55:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 May 2013 07:55:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,764,1363158000"; d="scan'208";a="341996955"
Received: from unknown (HELO helios.localnet) ([10.252.121.189])
	by fmsmga001.fm.intel.com with ESMTP; 29 May 2013 07:55:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>, Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 29 May 2013 15:55:10 +0100
Message-ID: <2809625.nUpYsyq62m@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <20130529143948.GM3192@jama>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 29 May 2013 14:55:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
> On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
> > Hi,
> > I'm failing to load a kernel module named spike doing this:
> > 1) add the recipe (inherit module), based in a Makefile with
> > modules_install:
> > $(MAKE) INSTALL_MOD_DIR=kernel/drivers/spike -C $(KERNEL_SRC) M=$(SRC)
> > modules_install
> > 2) Add the package to the image with IMAGE_INSTALL += "spike" in the
> > local.conf file
> > 3) In the machine/mymachine.conf I've added
> > 
> >         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "spike"
> >         module_autoload_spike = "spike"
> > 
> > The driver gets added to the image and I can load it with insmod spike,
> > however, I would like to load it at boot time.
> > A workaround is to create a file with the name spike.conf and write spike
> > inside. Copying that file to /etc/modules-load.d/spike.conf
> > loads the driver correctly, but I need to do it from a recipe.
> > 
> > Can anyone spot what am I doing wrong?
> 
> module_autoload won't work with external module unless you inherit also
> kernel-module-split

Note that module.bbclass already does this, so if the external module recipe 
already does "inherit module" then that is not the problem.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

