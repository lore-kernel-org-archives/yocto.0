Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CE446E006C3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 17:43:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r1D1hhjE008726
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Feb 2013 17:43:43 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Tue, 12 Feb 2013 17:43:42 -0800
Message-ID: <511AEFCD.10600@windriver.com>
Date: Tue, 12 Feb 2013 20:43:41 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: David Mulder <dmulder@lasx.com>
References: <19F0379280417C4A8FE3BD23AA7298E501346EB2@EXMBX202A.mmeprod.cbeyond>
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E501346EB2@EXMBX202A.mmeprod.cbeyond>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building uio-pci-generic into core-image-minimal
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
X-List-Received-Date: Wed, 13 Feb 2013 01:43:46 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-02-12 6:47 PM, David Mulder wrote:
> I need to use the uio-pci-generic kernel module, but I don’t know how to
> make it available in my image.
>
> Yocto 1.3, core-image-minimal, did ‘bitbake linux-yocto –c menuconfig’
> and added “Generic driver for PCI 2.3”. It took a while to bitbake
> core-image-minimal after that change, and I saw uio-pci-generic.o, so I
> assume it rebuilt the kernel and built the module, but I don’t see any
> traces of the module in my image (‘find / -name *uio*’, /sys/class/uio
> or /sys/bus/pci/drivers/uio-pci-generic).
>
> I added uio and uio-pci-generic to a recipe’s RDEPENDS, but it can’t
> find a provider. I added them to IMAGE_FEATURES in local.conf, but that

You need to add the modules to IMAGE_INSTALL via their individual package
name, or if you just want all modules, use the virtual package 
"kernel-modules"

You can also get it in the image via MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS.

Cheers,

Bruce


> didn’t seem to do anything. I set ‘module_autoload_uio = “uio”’ in
> local.conf, which also seemed to do nothing. Same for setting it in
> linux-yocto_3.4.bbappend (some patches indicate that it used to be set
> in that file). I don’t know what else to try.
>
> What might I be missing? Where could I look to see if that module has
> been built and copied to my image?
>
> Thanks!
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


