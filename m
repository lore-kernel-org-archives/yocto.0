Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37ACAE012D8
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 20:58:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8A3wp9Y014801
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Sep 2011 20:58:51 -0700 (PDT)
Received: from [128.224.22.82] (128.224.22.82) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Sep 2011 20:58:51 -0700
Message-ID: <4E6AE079.6000700@windriver.com>
Date: Fri, 9 Sep 2011 23:58:49 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
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
X-List-Received-Date: Sat, 10 Sep 2011 03:58:55 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 11-09-09 07:09 PM, Zhang, Jessica wrote:
> Hi,
>
> Has anybody ran into kernel panic when boot up core-image-sato-sdk for
> qemux86. I’ve been having this issue with several clean build for two
> days. And my latest build tree is a freshly cloned tree against
> poky-master with commit:
>
> commit 20dbf0024385eaef61a04d8773fd7640e3c8cc6d
>
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Date: Fri Sep 9 19:07:40 2011 +0100
>
> The qemu kernel panic messages are:
>
> INIT: version 2.88 booting
>
> Init[1]: segfault at 38 ip 495076c7 sp bfd9b60c error 4 in
> libc-2.13.so[49492000+15f000]
>
> Init[1]: segfault at 16 ip 0804b3c7 sp bfd9b280 error 4 in
> init.sysvinit[8048000+7000]
>
> Kernel panic – not syncing: Attempted to kill init!
>
> Pid: 1, comm: init Not tainted 3.0.4-yocto-standard+ #1
>
> Any idea?

Since I've been at Linux plumbers since Wednesday, I can confirm
that nothing has changed in the kernel itself. And I just booted
an older userspace with a brand new kernel a few minutes ago. That means
that something else has changed which is producing the segfault
(toolchain, libs, .. something) and tossing you out to the panic.

If you try an older filesystem with your recent kernel, do you see
a good boot.

Bruce

>
> Thanks,
>
> Jessica
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


