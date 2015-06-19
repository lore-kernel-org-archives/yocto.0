Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B33BE00992; Fri, 19 Jun 2015 09:19:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3106E00957
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 09:19:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t5JGJqvZ012708
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 19 Jun 2015 09:19:53 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 19 Jun 2015 09:19:52 -0700
Message-ID: <55844128.9030507@windriver.com>
Date: Fri, 19 Jun 2015 12:19:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Andreas Fenkart <afenkart@gmail.com>, <yocto@yoctoproject.org>
References: <CALtMJECkfxQz+tabTRVL9JcZUNgO+Oho_JcssbCWkZdEEmCsvg@mail.gmail.com>
In-Reply-To: <CALtMJECkfxQz+tabTRVL9JcZUNgO+Oho_JcssbCWkZdEEmCsvg@mail.gmail.com>
Subject: Re: Problems using "In-Tree" defconfig File
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
X-List-Received-Date: Fri, 19 Jun 2015 16:19:59 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-19 03:28 AM, Andreas Fenkart wrote:
> I want to use a defconfig, that is provided by the linux git
> repository, hence this seems to fit my need:
>
> http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
> KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file
>
> Anybody used that feature recently? I couldn't get it to work, :-(

Works here.

>
> The build fails in kernel_config target, in merge_config.sh. It fails
> to merge kernel config fragments. Probably because I don't have any.
>
> [INFO] collecting configs in .meta/meta-series
> ARCH=arm O=<path>/linux-dss11e-standard-build merge_config.sh -d
> mv: cannot stat '<path>/linux-dss11e-standard-build/.tmp.config*': No
> such file or directory

This actually means something else, like a misconfigured BSP.

>
> Grep'ing for KBUILD_DEFCONFIG in kernel-tools only get_defconfig seems
> to use  that variable
>
> $ get_defconfig arm dss20_defconfig
> linux/arch/arm/configs/dss20_defconfig      ...so that works fine
>
> I took that snipped from check_defconfig functoin, here:
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/createme#n201
>
> but that function is not called anywhere in script createme. After all
> that script only creates the meta folder but has nothing to do with
> kernel configuration. Seems to be a dead end. Probably get_defconfig
> call should be added to configme script

In this case no. What release are you using ? And what does your kernel
recipe look like ?

do_kernel_metadata is responsible for yanking that defconfig out of the
tree and feeding it into the build just like a 'defconfig' passed via
the SRC_URI.

Bruce

>
> Anybody had the same problem, is there a patch. Or did I misconfigure something?
>
> kind regards,
> Andi
>
>
> Here my recipe:
> ---------------------------------------------------------------------------------------------------------------
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SRCBRANCH = "dSS"
> SRCREV="82d97d74bb072fe24be10b46d0782d3735130199"
> SRC_URI =
> "git://git.digitalstrom.org/bsp/linux.git;protocol=https;branch=${SRCBRANCH}"
>
> LINUX_VERSION = "4.1"
> LINUX_VERSION_EXTENSION = ""
> KBUILD_DEFCONFIG_dss11e = "dss20_defconfig"
>
> PR = "r1"
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE = "(dss11e)"
>


