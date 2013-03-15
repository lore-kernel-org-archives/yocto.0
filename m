Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7858FE00770
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 07:20:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2FEKqPV029578
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Mar 2013 07:20:52 -0700 (PDT)
Received: from [128.224.22.84] (128.224.22.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 15 Mar 2013 07:20:52 -0700
Message-ID: <51432E43.7060708@windriver.com>
Date: Fri, 15 Mar 2013 07:20:51 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
References: <CAFyqS9rzC5ueHXBKnzt7JnfWKKSvBkXBEL3px3vh3itEXaRWqg@mail.gmail.com>
In-Reply-To: <CAFyqS9rzC5ueHXBKnzt7JnfWKKSvBkXBEL3px3vh3itEXaRWqg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: remove /boot/uImage and /usr/share/terminfo
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
X-List-Received-Date: Fri, 15 Mar 2013 14:20:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-15 06:33 AM, Hans Beckérus wrote:
> Hi. In an effort to shrink our rootfs by some major numbers we found two
> low-hanging fruits that we would like to address before cherry picking
> and removing lots of good linux functionality. We have no need for the
> uImage (3MB) stored in /boot and also we can leave out the terminfo tree
> (2.5MB).
> My question here now is if the build system provide functionality to
> actually tell the image builder not to include these specific components?

 From kernel.bbclass, you just need to clear RDEPENDS_kernel-base
in your .conf files:

# Allow machines to override this dependency if kernel image files are
# not wanted in images as standard
RDEPENDS_kernel-base ?= "kernel-image"

You'll still get your kernel modules installed after making this change.

Bruce

> Or do we need to write some post installer for our rootfs that mounts
> the image, removes the files, and then umount it?
> If we remove inclusion of any kernel modules it seems that /boot is
> never populated? But we need the modules. Also, what package brings in
> terminfo?
> Is it as simple as writing a .bbappend to remove it att deploy time?
>
> Hans
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


