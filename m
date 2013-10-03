Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6145E0161B
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 07:22:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r93EMHml019502
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Oct 2013 07:22:17 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 3 Oct 2013 07:22:16 -0700
Message-ID: <524D7D94.10401@windriver.com>
Date: Thu, 3 Oct 2013 10:22:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
References: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>	<524D6529.90802@windriver.com>	<CANmVirhtHb+fS=SSyMKu053DQq3tiTfX-V1nyA+ak44tFGdaPg@mail.gmail.com>	<524D7809.5040700@windriver.com>
	<CANmVirgN+tS+g_2bCxeSMbQf67x-=GZPxF50CPnSP7QL1OrwSg@mail.gmail.com>
In-Reply-To: <CANmVirgN+tS+g_2bCxeSMbQf67x-=GZPxF50CPnSP7QL1OrwSg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install Kernel Modules in rootfs
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
X-List-Received-Date: Thu, 03 Oct 2013 14:22:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-03 10:09 AM, Raul Rosetto Munoz wrote:
> Look all the time the modules of kernel 3.8 come.
>
> My /lib/modules is like this:

That's where ? In your booted target ? What BSP are you using, how did
you install the image ?

Answering that question, will likely get you your answer. If you previously
generated a rootfs and installed it. You'd need to do the same thing
and do it with a clean install with the new kernel to remove all
remnants of the old package.

(That's assuming you aren't using package management on the target,
or package feeds. I don't, so manually look after this sort of thing).

Cheers,

Bruce

>
> /lib/modules$ ll
> total 16
> drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ./
> drwxr-xr-x 7 raul raul 4096 Oct  3 10:09 ../
> drwxr-xr-x 2 raul raul 4096 Oct  3 10:09 2.6.35.3-1.1.0+yocto+g914558e/
> drwxr-xr-x 3 raul raul 4096 Oct  1 15:45 3.8.13-fslc+g7205340/
>
>
> /lib/modules$ ll 2.6.35.3-1.1.0+yocto+g914558e/
> total 36
> drwxr-xr-x 2 raul raul 4096 Oct  3 10:09 ./
> drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ../
> -rw-r--r-- 1 raul raul   45 Oct  3 10:09 modules.alias
> -rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.alias.bin
> -rw-r--r-- 1 raul raul    0 Oct  3 10:09 modules.builtin.bin
> -rw-r--r-- 1 raul raul    0 Oct  3 10:09 modules.dep
> -rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.dep.bin
> -rw-r--r-- 1 raul raul   52 Oct  3 10:09 modules.devname
> -rw-r--r-- 1 raul raul  131 Oct  3 10:09 modules.softdep
> -rw-r--r-- 1 raul raul   49 Oct  3 10:09 modules.symbols
> -rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.symbols.bin
>
> /lib/modules$ ll 3.8.13-fslc+g7205340/
> total 24
> drwxr-xr-x 3 raul raul 4096 Oct  1 15:45 ./
> drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ../
> drwxr-xr-x 6 raul raul 4096 Oct  1 15:45 kernel/
> -rw-r--r-- 1 raul raul 5153 Oct  1 15:45 modules.builtin
> -rw-r--r-- 1 raul raul  391 Oct  1 15:45 modules.order
>
> I have no idea how to remove the remains of the kernel 3.8.
>
> I dont want to delete all the /tmp
>
> =/
>
> Take so much time.
>
>
>
>
>
>
>
>
> On Thu, Oct 3, 2013 at 10:58 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 13-10-03 09 <tel:13-10-03%2009>:32 AM, Raul Rosetto Munoz wrote:
>
>         I think that I found my problem,
>
>         I tryed to use the kernel 3.8 before in this build system, but I
>         decided
>         to go back to the 2.6.35.3.
>
>         But now I did bitbake -c cleanall virtual/kernel, I tryed to delete
>         every thing about kernel 3.8 but the modules that are instaled in my
>         /lib/modules/ still be the modules of kernel 3.8.
>
>         How I clean the modules and force to use no 2.6.35.3 again.
>
>         Which package or command do that?
>
>
>     If you reconstruct your image, the old module package shouldn't be
>     re-used, since you would now have a dependency on the 2.6.35.x kernel.
>
>     How exactly are they installed in /lib/modules ? Did you do anything
>     in particular ?
>
>     Bruce
>
>
>         Thanks for all Help.
>
>
>         On Thu, Oct 3, 2013 at 9:38 AM, Bruce Ashfield
>         <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>
>         <mailto:bruce.ashfield@__windriver.com
>         <mailto:bruce.ashfield@windriver.com>>> wrote:
>
>
>              On 13-10-03 08 <tel:13-10-03%2008> <tel:13-10-03%2008>:34
>         AM, Raul Rosetto Munoz wrote:
>
>                  Hello All,
>
>                  I'm Trying to install the kernel modules inside my
>         rootfs but I
>                  couldn't
>                  find an especific information that help me to do that!
>
>                  I have in my /tmp/images/ the tgz with all the modules
>         that I need.
>
>                  modules--2.6.35.3-r32.23-____imx28evk-20131002210958.tgz
>
>
>                  I just want that this tzg was extracted inside my rootfs
>                  /lib/modules.
>
>                  Please some one can help me with this?
>
>
>              Does your image type have a RDEPENDS on "kernel-modules",
>         or do you
>              have IMAGE_INSTALL_append = " kernel-modules", in your
>         local.conf ?
>
>              If you do either of the above, the entire set of built
>         modules will
>              be installed.
>
>              You can also install / require individual modules via
>              kernel-module-<module name>.
>
>              The Yocto docs should have details on this as well.
>
>              Cheers,
>
>              Bruce
>
>
>                  Thanks so much.
>
>                  --
>                  *Raul Rosetto Muñoz*
>
>
>                  ___________________________________________________
>                  yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>         https://lists.yoctoproject.____org/listinfo/yocto
>
>                  <https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>>
>
>
>
>
>
>         --
>         *Raul Rosetto Muñoz*
>
>
>
>
>
> --
> *Raul Rosetto Muñoz*


