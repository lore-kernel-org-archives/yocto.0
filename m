Return-Path: <javiroman@kernel-labs.org>
Received: from paris.hostgo.com (unknown [64.71.164.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D1C0E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 13:09:55 -0700 (PDT)
Received: from mail-qa0-f53.google.com ([209.85.216.53]:47281)
	by paris.hostgo.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.80.1)
	(envelope-from <javiroman@kernel-labs.org>) id 1UnaJl-0006v1-2A
	for yocto@yoctoproject.org; Fri, 14 Jun 2013 16:09:53 -0400
Received: by mail-qa0-f53.google.com with SMTP id g10so383457qah.19
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 13:09:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type;
	bh=uVAf+mBsWaixce9tKPxKCrzvqEN5t2OuiJcDC5wSA5k=;
	b=Dz4w5OonI4ExT2C2oYXeTIG24PgFt1uqMCB8ma9SczRWfIe63D4C//E//UdVHOOFRL
	mO65kI4+DGJYRNXj+BUszOO75wfbH6mVTFD9YMbGAqXmtiXlAo/SHgztUtKSQsHl/nF8
	uoTjbQOXyv5KRvCBOKYAQcTmWHsbsPwqJEfMqWTs18N4EgXeUAMKn0Pemdz16LTzGuPU
	iwpymlc5zKh7JwOXYhvs3ZeBuGNKlkVdmGmwbCMIBkz3yyNI9B3Eud47rJbSC27P+mi3
	qe7tfkobLSyl2RJeJ3/LAo3cZxTAoxCzW/Vx3pjJgCkXjnZj38yRjCwwS0eBJYbpuoBG
	6WtQ==
X-Received: by 10.229.16.132 with SMTP id o4mr1388277qca.99.1371240593645;
	Fri, 14 Jun 2013 13:09:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.130.4 with HTTP; Fri, 14 Jun 2013 13:09:13 -0700 (PDT)
In-Reply-To: <CACWQdqAEcv-M9r19DtWpCUtHvWEVVShKwXCXnjbVc24m-1HOSg@mail.gmail.com>
References: <CACWQdqAfZ98fe9TW4R0aAQo2rL7Eshoyhqbe3Bd+Pp7AEi9k=w@mail.gmail.com>
	<CACWQdqAEcv-M9r19DtWpCUtHvWEVVShKwXCXnjbVc24m-1HOSg@mail.gmail.com>
From: Javi Roman <javiroman@kernel-labs.org>
Date: Fri, 14 Jun 2013 22:09:13 +0200
Message-ID: <CACWQdqDLSyVYyn7_MgDKHHUx0=QSzmrB0U5PGq8P6YV=uo2=UA@mail.gmail.com>
To: yocto@yoctoproject.org
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - paris.hostgo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kernel-labs.org
X-Get-Message-Sender-Via: paris.hostgo.com: authenticated_id:
	javiroman@kernel-labs.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Fri, 14 Jun 2013 20:09:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

After hit my head against the wall over and over .... I realize the
modules.dep file and so on is not deployed in the modules-xxx.tar.gz
file at all. Only is deployed in the final rootfs image.

I would swear this files were deployed in OE in the past.

I apologize for the noise in the list!
Javi Roman


On Fri, Jun 14, 2013 at 10:21 AM, Javi Roman <javiroman@kernel-labs.org> wrote:
> Problably the issue about modules.builtin was a nosense, becasuse
> patching the kernel Makefile in order to include this file dosen't fix
> the problem.
>
> That said, I am unable to make work properly the /lib/modules folder.
> The problem is the "make modules_install" is not putting all the files
> in the target folder (I mean the modules.dep files an so on). This is
> the log output when the task do_install of the kernel.bbclass:
>
> [...]
>
>   DEPMOD  2.6.32-abacus
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

