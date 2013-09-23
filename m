Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0AD2E015C2
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2013 19:38:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r8N2c43d012099
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2013 19:38:05 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.23) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 22 Sep 2013 19:38:02 -0700
Message-ID: <523FA989.2010700@windriver.com>
Date: Sun, 22 Sep 2013 22:38:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: John Doe <xertz.yocto@gmail.com>
References: <CAEo3mJUri=-cHU7cKdJLspWrb_k2irEFx47+npb2TBRKMLcCPw@mail.gmail.com>
	<523CA864.7020105@windriver.com>
	<CAEo3mJVqezmQM5o8+=EozeHbU2O=WM91TGnZ=AJkGWRofbQ7yw@mail.gmail.com>
In-Reply-To: <CAEo3mJVqezmQM5o8+=EozeHbU2O=WM91TGnZ=AJkGWRofbQ7yw@mail.gmail.com>
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
X-List-Received-Date: Mon, 23 Sep 2013 02:38:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-09-22 12:05 PM, John Doe wrote:
>> Is your kernel already building from linux-yocto-custom ? Or are you
>> using the default linux-yocto kernel and recipes already ?
>
> I have a project that is using linux-yocto-custom and another project
> which is using the default linux-yocto kernel.
>
>> If you are using one of the standard qemu machines, or a BSP that
>> is already working with linux-yocto*, you can simply enable the module
>> by creating a configuration fragment, and putting it on the SRC_URI.
>
> The problem is that I can not find the driver (rtl8187 under
> drivers/net/wireless/rtl818x) in the menuconfig. It seems all device
> drivers are missing despite them being in the repository or tarball.
>

If there's a missing dependency (say for example PCI), or a wrapping
Kconfig options that hides the menu, you won't see the drivers offered
in menuconfig.

Looking at the kernel source and the Kconfig is my next step, since it
lists all the dependencies that you need.

Bruce

> Cheers
> J
>


