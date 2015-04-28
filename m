Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26717E009A5; Tue, 28 Apr 2015 06:52:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B85F2E00997
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 06:52:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3SDqadC001974
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Apr 2015 06:52:37 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 28 Apr 2015 06:52:35 -0700
Message-ID: <553F90A3.9070501@windriver.com>
Date: Tue, 28 Apr 2015 09:52:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: =?windows-1252?Q?=22Schauml=F6ffel=2C_Jan=22?=
	<J.Schaumloeffel@astro-kom.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
In-Reply-To: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Tue, 28 Apr 2015 13:52:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-04-28 02:49 AM, Schaumlöffel, Jan wrote:
> Hi everyone,
>
> I have a working root fs based on “dizzy”, for which I created a
> customized machine config, a custom package config recipe and a custom
> image recipe.
>
> When running into problems with the python installation on that rootfs I
> decided to upgrade to Poky 1.8 “fido”.
>
> So I checked out the “fido” branches of the following repositories:
>
> -git.yoctoproject.org/git/poky
>
> -github.com/openembedded/openembedded-core.git
>
> -github.com/openembedded/meta-openembedded.git
>
> After that, a lot of packages were rebuilt (obviously), but everything
> seemed to work, excluding the last step:
>
> NOTE: Executing buildhistory_get_image_installed ...
>
> DEBUG: Executing shell function buildhistory_get_image_installed
>
> DEBUG: Shell function buildhistory_get_image_installed finished
>
> NOTE: Executing: ldconfig -/…/mymachine
> -poky-linux-gnueabi/mymachine-image/1.0-r0/rootfs-c new -v
>
> ERROR: No kernel-abiversion file found
> (/…/pkgdata/kernel-depmod/kernel-abiversion), cannot run depmod, aborting
>
> DEBUG: Python function do_rootfs finished
>
> ERROR: Function failed: do_rootfs
>
> I already verified that a completely “vanilla” setup from these
> repositories (i.e. source oe-init-build-env into empty directory, then
> bitbake core-image-minimal) does indeed complete.
>
> The problem is re-introduced as soon as I do not build with MACHINE ?=
> “beaglebone” but with my own machine configuration. Naturally I compared
> the configurations without finding anything too suspicious.
>
> So, before I go into any further lengths about my machine configuration:
> Are there any general hints why the “kernel-abiversion” file might go
> missing after migrating from 1.7 to 1.8?

Hmmm. It shouldn't have gone missing. Bits of the kernel build
outputs did move around in 1.8, but the abiversion is still
generated and placed in the STAGING_KERNEL_BUILDDIR.

As for modules, it is placed in the PKGDESTWORK directory as part
of packaging.

After your build has failed, if you look in STAGING_KERNEL_BUILDDIR
do you see the abiversion file ?

Bruce


>
> KR and TIA,
>
> Jan
>
>
>


