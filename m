Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 607E7E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 12:40:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5EJefq2027991
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Jun 2013 12:40:41 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 14 Jun 2013 12:40:41 -0700
Message-ID: <51BB71B6.8000104@windriver.com>
Date: Fri, 14 Jun 2013 15:40:38 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Javi Roman <javiroman@kernel-labs.org>
References: <CACWQdqAfZ98fe9TW4R0aAQo2rL7Eshoyhqbe3Bd+Pp7AEi9k=w@mail.gmail.com>
	<CACWQdqAEcv-M9r19DtWpCUtHvWEVVShKwXCXnjbVc24m-1HOSg@mail.gmail.com>
In-Reply-To: <CACWQdqAEcv-M9r19DtWpCUtHvWEVVShKwXCXnjbVc24m-1HOSg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Custom recipe kernel 2.6.32 and depmodwrapper
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
X-List-Received-Date: Fri, 14 Jun 2013 19:40:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-14 04:21 AM, Javi Roman wrote:
> Problably the issue about modules.builtin was a nosense, becasuse
> patching the kernel Makefile in order to include this file dosen't fix
> the problem.
>

I can't recall. Did you say this was with yocto master ?

> That said, I am unable to make work properly the /lib/modules folder.
> The problem is the "make modules_install" is not putting all the files
> in the target folder (I mean the modules.dep files an so on). This is
> the log output when the task do_install of the kernel.bbclass:
>
> [...]
>
>    DEPMOD  2.6.32-abacus
>
> + bbnote 'JAVI -> ls INSTALL_MOD_PATH'
> + echo 'NOTE: JAVI -> ls INSTALL_MOD_PATH'
> NOTE: JAVI -> ls INSTALL_MOD_PATH
> + ls -l /home/jroman/poky.git/build/tmp/work/romley-poky-linux/linux-yocto-abacus/2.6.32+gitAUTOINC+459b3d520991ec1b8e5ba68fbc4b206d602fee6e-r1/image/lib/modules/2.6.32-abacus/
>
> total 40
> lrwxrwxrwx 1 root root   163 Jun 14 10:08 build ->
> /home/jroman/poky.git/build/tmp/work/romley-poky-linux/linux-yocto-abacus/2.6.32+gitAUTOINC+459b3d520991ec1b8e5ba68fbc4b206d602fee6e-r1/linux-romley-standard-build
> drwxr-xr-x 9 root root  4096 Jun 14 10:08 kernel
> -rw-r--r-- 1 root root  6380 Jun 14 10:08 modules.builtin
> -rw-r--r-- 1 root root 16509 Jun 14 10:08 modules.order
> lrwxrwxrwx 1 root root   141 Jun 14 10:08 source ->
> /home/jroman/poky.git/build/tmp/work/romley-poky-linux/linux-yocto-abacus/2.6.32+gitAUTOINC+459b3d520991ec1b8e5ba68fbc4b206d602fee6e-r1/linux
>
> [...]
>
> The make modules_install uses the target folder INSTALL_MOD_PATH in
> order to install the modules, however you can see only the files
> "modules.builtin" and "modules.order" are properly installed. The
> "make modules_install" work fine if I run this command from a
> "devshell", however from the "bitbake virtual/kernel -c install" is
> not properly working.

 From your log, you've been looking around and instrumenting the install
routine.

The DEPMOD=echo in the modules_install call is likely the source of
why you aren't seeing some files in the install phase. Or did you
already rule that out ?

We are re-creating the .dep with all modules taken into account with
the depwrapper, which takes you back to your original question, if
I'm not mistaken.

Mark Hatle did a lot of work with the depmodwrapper, but as far as I
can recall, nothing of the 2.6.x vintage was tested. I'd suggest that
patches against depmodwrapper to use the right files for a kernel
of that vintage would be possible, but I'm not aware of anyone working
on them at the moment.

Cheers,

Bruce

>
> Can anybody give me a hint?
>
> Many thanks.
> Javi Roman
>
>
> On Thu, Jun 13, 2013 at 3:03 PM, Javi Roman <javiroman@kernel-labs.org> wrote:
>> Hi!
>>
>> I've found a possible issue with the depmodwrapper (in image.bbclass
>> -> do_rootfs) and the old kernel tree 2.6.32.
>>
>> The final rootfs image is not properly populated with the necessary
>> kernel module files for the module-init-tools utility:
>>
>> /lib/modules/<kernel-version/
>> modules.alias
>> modules.alias.bin
>> modules.builtin
>> modules.builtin.bin
>> modules.dep
>> modules.dep.bin
>> modules.devname
>> modules.order
>> modules.softdep
>> modules.symbols
>> modules.symbols.bin
>>
>> This tool depmodwrapper is using the kernel Makefile generated file
>> "modules.builtin", this file is not generated by the kbuild kernel
>> system in the 2.6.32 kernel. This feature was included in the 2.6.33
>> branch [1].
>>
>> So the image.bbclass is broken for kernel trees below 2.6.33 version.
>> However the bitbake.conf shows the variable OLDEST_KERNEL = "2.6.16".
>>
>> Many thanks!
>>
>> [1] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=bc081dd6e9f622c73334dc465359168543ccaabf
>>
>> Javi Roman
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


