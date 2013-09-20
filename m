Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E753E015FD
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 12:56:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r8KJuflN013143
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 Sep 2013 12:56:41 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 20 Sep 2013 12:56:41 -0700
Message-ID: <523CA864.7020105@windriver.com>
Date: Fri, 20 Sep 2013 15:56:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: John Doe <xertz.yocto@gmail.com>
References: <CAEo3mJUri=-cHU7cKdJLspWrb_k2irEFx47+npb2TBRKMLcCPw@mail.gmail.com>
In-Reply-To: <CAEo3mJUri=-cHU7cKdJLspWrb_k2irEFx47+npb2TBRKMLcCPw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring linux-yocto-custom to build specific kernel modules
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
X-List-Received-Date: Fri, 20 Sep 2013 19:56:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-09-20 03:53 PM, John Doe wrote:
> Hi,
>
> I would like to know how I can build a specific kernel module (one that
> is already in the linux kernel). Do I have to create a custom bitbake
> recipe for the module or can I simply configure linux-yocto-custom?

Is your kernel already building from linux-yocto-custom ? Or are you
using the default linux-yocto kernel and recipes already ?

If you are using one of the standard qemu machines, or a BSP that
is already working with linux-yocto*, you can simply enable the module
by creating a configuration fragment, and putting it on the SRC_URI.

config fragments and how to add them to the SRC_URI are covered in
the kernel development manuals found off the yocto site.

Cheers,

Bruce

>
> My specific aim is to build the kernel module
> drivers/net/wireless/rtl818x/rtl8187 as part of the core-image-minimal
> build.
>
> Regards,
> J
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


