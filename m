Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89F61E00303
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 08:51:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0VGpKla011053
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 Jan 2012 08:51:20 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 31 Jan 2012 08:51:20 -0800
Message-ID: <4F281BFB.9010701@windriver.com>
Date: Tue, 31 Jan 2012 11:51:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: autif khan <autif.mlist@gmail.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
In-Reply-To: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Tue, 31 Jan 2012 16:51:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-31 11:45 AM, autif khan wrote:
> I could not find a way to patch the kernel source before its is built.
>
> I promise to update the Yocto wiki's How do I section when I have a
> working solution for the following :-)

This should be covered in the existing documentation and also the
more general bitbake/oe-core docs.

>
> Here is what I am trying to do:
>
> 1) Patch the kernel (add VID/PID to hid_ignore_list in
> drivers/hid/hid-core.c and also to add the VID/PID to .h file)
> 2) Build the kernel - no change here - standard kernel build
> 3) Build a kernel module
>
> I have a meta layer where I am keeping my changes. I am guessing that I need to:
>
> a) write a bbappend file to accomplish #1
> b) write a recipe to accomplish #3
>
> I have written recipes before, but just for libraries and autotools
> based applications. Not for a kernel module. If there is a recipe out
> there for some other module, I would be happy to steal from it.
>
> Please advise how I can go about patching the kernel and if there is a

It's just like any other package. If your changes are simple, then
generating patches and putting them on the SRC_URI via a bbappend in
your layer is all you need. If you have complex changes, there are options
to manage them via git or via feature descriptions.

> recipe for a kernel module - please point me to it.

Darren validated and updated the kernel module example, so he'd probably
got this closer at hand than I do.

Cheers,

Bruce

>
> Thank you
>
> Autif
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


