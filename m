Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F218DE0169F
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 05:38:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r93Cc5j0004881
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Oct 2013 05:38:05 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 3 Oct 2013 05:38:05 -0700
Message-ID: <524D6529.90802@windriver.com>
Date: Thu, 3 Oct 2013 08:38:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Raul Rosetto Munoz <munoz0raul@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>
In-Reply-To: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 Oct 2013 12:38:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-03 08:34 AM, Raul Rosetto Munoz wrote:
> Hello All,
>
> I'm Trying to install the kernel modules inside my rootfs but I couldn't
> find an especific information that help me to do that!
>
> I have in my /tmp/images/ the tgz with all the modules that I need.
>
> modules--2.6.35.3-r32.23-imx28evk-20131002210958.tgz
>
> I just want that this tzg was extracted inside my rootfs /lib/modules.
>
> Please some one can help me with this?

Does your image type have a RDEPENDS on "kernel-modules", or do you
have IMAGE_INSTALL_append = " kernel-modules", in your local.conf ?

If you do either of the above, the entire set of built modules will
be installed.

You can also install / require individual modules via 
kernel-module-<module name>.

The Yocto docs should have details on this as well.

Cheers,

Bruce

>
> Thanks so much.
>
> --
> *Raul Rosetto Muñoz*
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


