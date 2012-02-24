Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 964BAE003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 06:45:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1OEjPZu024002
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 24 Feb 2012 06:45:26 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 24 Feb 2012 06:45:26 -0800
Message-ID: <4F47A273.5030701@windriver.com>
Date: Fri, 24 Feb 2012 09:45:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Joshua Immanuel <josh@hipro.co.in>
References: <1329817258.2743.23.camel@babel.joshhome>
	<1330072145.3803.25.camel@babel.joshhome>
In-Reply-To: <1330072145.3803.25.camel@babel.joshhome>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: missing kernel in rootfs image
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
X-List-Received-Date: Fri, 24 Feb 2012 14:45:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-24 03:29 AM, Joshua Immanuel wrote:
> On Tue, 2012-02-21 at 15:10 +0530, Joshua Immanuel wrote:
>>          While trying to generate my custom rootfs image, I added the
>> linux_yocto_3.0.bbappend file to my custom layer and specified the
>> KMACHINE, SRCREV and COMPATIBLE_MACHINE variables. I find the
>> generated
>> kernel image (bzImage-ekino.bin) in the tmp/deploy/images directory.
>>
>> But, the rootfs image does not contain the kernel (in /boot
>> directory).
>> My machine configuration file has the following kernel specific lines
>>
>>          PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>          PREFERRED_VERSION_linux-yocto ?= "3.0%"
>
> Can someone explain the work flow behind the process of installing the
> kernel into the rootfs image? My custom image has the IMAGE_INSTALL for
> "task-core-boot". In turn, the task-core-boot recipe DEPENDS on
> "virtual/kernel" this ensures that the kernel is staged.
>
> But, I am not sure which recipe/class is responsible for installing the
> kernel in the final rootfs image. Should I explicitly add the
> "linux-yocto" to RDEPENDS?

Are you past this issue yet ? I'm not sure, since you did have some
other email that looked to be past this .. or maybe they weren't.

Darren went through the process of documenting these variables and
was looking into some related issues. Darren: is this something that
you ran into ?

Cheers,

Bruce

>
> Please guide me.
>
> Regards
> Joshua
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


