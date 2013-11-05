Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 914A9E01757
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 20:28:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id rA54SOjp018069
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Nov 2013 20:28:24 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.17) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 4 Nov 2013 20:28:24 -0800
Message-ID: <527873E7.8000103@windriver.com>
Date: Mon, 4 Nov 2013 23:28:23 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Maxwell Bottiger <sleepylight@jive-turkey.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CADi-vsxH-E=StkCnZtw9-U7RLSC6cn-RFw684GXfANEhhMAe7Q@mail.gmail.com>
In-Reply-To: <CADi-vsxH-E=StkCnZtw9-U7RLSC6cn-RFw684GXfANEhhMAe7Q@mail.gmail.com>
Subject: Re: architecture mismatch during kernel build (40 to 3)
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
X-List-Received-Date: Tue, 05 Nov 2013 04:28:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-04 8:41 PM, Maxwell Bottiger wrote:
> I'm building a custom kernel, and I think I'm nearly there.  I'm seeing
> an error when running mkimage.  bitbake is complaining about an
> architecure mismatch, but I don't know which files it is comparing, or
> if the mismatch really matters (32bit x86 vs 64bit x86 or whatever)
>
> Here's the error string:
>
> WARNING: File '/usr/src/kernel/mkimage' from linux-yocto-custom was
> already stripped, this will prevent future debugging!
>
> ERROR: QA Issue: Architecture did not match (40 to 3) on
> /work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.6.39-r1/packages-split/kernel-dev/usr/src/kernel/mkimage

The obvious answer is .. it is mkimage that it is complaining about. You
are packaging mkimage (which is likely an x86 elf file) into your
kernel-dev package (which is your target arch, likely powerpc or ARM). 
Hence the QA error.

In your kernel recipe, you can remove the file before packaging
(i.e. in the do_install_append) or inhibit the QA check for your recipe.

What exactly does your kernel recipe look like ? What is building mkimage
and then getting it installed into /usr/src/kernel ?

My suggestion is to track that down, versus inhibiting the QA check.

Bruce

>
> ERROR: QA run found fatal errors. Please consider fixing them.
>
> ERROR: Function failed: do_package_qa
>
> ERROR: Logfile of failure stored in:
> /home/sleepylight/workspace/yocto/poky/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.6.39-r1/temp/log.do_package.11527
>
> ERROR: Task 18
> (/home/sleepylight/workspace/yocto/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_2.6.39.bb
> <http://linux-yocto-custom_2.6.39.bb>, do_package) failed with exit code '1'
>
>
> I'm building on a 64 bit linux platform, I don't know if that makes a
> difference.
>
> Thanks all.  I'm nearly there!
>
> -Max
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


