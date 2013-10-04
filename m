Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D6D8E016B2
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 05:58:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r94CwoW7004365
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Oct 2013 05:58:50 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 4 Oct 2013 05:58:49 -0700
Message-ID: <524EBB85.7050600@windriver.com>
Date: Fri, 4 Oct 2013 08:58:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>, yocto
	<yocto@yoctoproject.org>
References: <33115ABC4887814E8A92A08FBC93416B0A196300@IRSMSX103.ger.corp.intel.com>
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B0A196300@IRSMSX103.ger.corp.intel.com>
Cc: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: Creating a custom mips64 layer using yocto-bsp
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
X-List-Received-Date: Fri, 04 Oct 2013 12:58:54 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-04 04:15 AM, Stoicescu, CorneliuX wrote:
> Hello,
>
> I am trying to create a custom mips64 layer for a project. I am using
> the “yocto-bsp” command to make the magic happen. Unfortunately, the
> tool only supports creating layers for mips (32 bit) architecture. So I
> tried a little magic of my own and I changed a line in
> meta-my_layer/conf/machine/my_layer.conf from:
>
> /require conf/machine/include/tune-mips.inc/
>
> //
>
> /to/
>
> //
>
> /require conf/machine/include/tune-mips64.inc/
>
> When building, it fails at linux-yocto task do_package with a lot of
> errors like:
>
> ERROR: QA Issue: Bit size did not match (64 to 32) linux-yocto on
> /work/mipstest-poky-linux/linux-yocto/3.10.11+gitAUTOINC+dad2b7e1ce_e1aa804148-r0.1/packages-split/kernel-module-sch-codel/lib/modules/3.10.11-yocto-standard/kernel/net/sched/sch_codel.ko
>
> I believe that means the modules still think they should be 32 bit but
> are not. Can anyone help me with my issue?

Did you check the kernel configuration ? Since the BSP tool didn't allow
you to use the 64 bit qemumips base, you got the 32 bit BSP. So it will
definitely build 32 bit modules, which gets you your warning.

Check the generated machine files, search for qemumips32 and mti-malta32
and switch them to the 64 bit variants.

Bruce

>
> PS: I looked through the Yocto mega-manual and I added the following
> line to my_layer.conf file without any luck:
>
> /TARGET_ARCH = "mips64"/
>
> Thank you!
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


