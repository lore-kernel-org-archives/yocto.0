Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60CA5E00282
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2013 18:25:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7Q1PbLC013960
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 25 Aug 2013 18:25:37 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.194) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 25 Aug 2013 18:25:36 -0700
Message-ID: <521AAE90.3010307@windriver.com>
Date: Sun, 25 Aug 2013 21:25:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
	<F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
	<CADkTA4NtzNb4pqKazvnfjO_2WawzCm_Zec1Dr9SQiPaybx+ndg@mail.gmail.com>
	<6DD4027E-D34F-4211-92FD-1570F248D7F8@gmail.com>
	<521994A5.9060007@windriver.com>
	<53009902-3F9B-477F-ACA0-0DF7C43EBF27@gmail.com>
In-Reply-To: <53009902-3F9B-477F-ACA0-0DF7C43EBF27@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-yocto defaulting to 3.4.52 for new qemuarmhf.conf
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
X-List-Received-Date: Mon, 26 Aug 2013 01:25:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-25 10:25 AM, Elvis Dowson wrote:
> Hi Bruce,
>
> On Aug 25, 2013, at 9:22 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>>> Another quick question, why is it that when I create a new
>>> qemuarmhf.conf machine configuration, it doesn't automatically pick
>>> up the latest linux-yocto_3.8.bb recipe? Why does it attempt to use
>>> the 3.4 recipe?
>>
>> Are you working off master ?
>>
>> Since you set the compatibility, it should have been picked. But something
>> else must be changed in your layers, since if you didn't add
>> 3.4 compatibility via bbappends, it never would have been selected
>> at all.
>
> Yes, I'm currently working off master. If I add the following
> qemuarmhf.conf file, and apply the patch to linux-yocto_3.8.bb, it still
> tries to compile linux-yocto_3.4.bb recipe. You should be able to
> reproduce this fairly easily at your end, with the current poky master.
> I'm not using any additional layers, just the core yocto default layers.

If you are using yocto and poky as the reference distro:

./conf/distro/poky.conf:PREFERRED_VERSION_linux-yocto ?= "3.4%"

Is where you are getting the default to 3.4.

I plan to bump that once we've shaken all the issues out of 3.10.

Cheers,

Bruce

>
> *_Filename: qemuarmhf.conf_*
>
> #@TYPE: Machine
> #@NAME: qemuarmhf
> #@DESCRIPTION: Machine configuration for QEMU ARM Cortex A9 hard float.
>
> require conf/machine/include/qemu.inc
> require conf/machine/include/tune-cortexa9.inc
>
> KERNEL_IMAGETYPE = "zImage"
>
> SERIAL_CONSOLE = "115200 ttyAMA0"
>
>
> *_Patch for linux-yocto_3.8.bb_*
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto_3.8.bb
> b/meta/recipes-kernel/linux/linux-yocto_3.8.bb
> index 790e3e3..787affe 100644
> --- a/meta/recipes-kernel/linux/linux-yocto_3.8.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_3.8.bb
> @@ -4,6 +4,7 @@ KBRANCH_DEFAULT = "standard/base"
>   KBRANCH = "${KBRANCH_DEFAULT}"
>
>   SRCREV_machine_qemuarm ?= "aa76cc28408376814752bd36fb0dcf0e25aa5ba3"
> +SRCREV_machine_qemuarmhf ?= "aa76cc28408376814752bd36fb0dcf0e25aa5ba3"
>   SRCREV_machine_qemumips  ?= "aa0affda03c955678b26b2fb586f1d9505127871"
>   SRCREV_machine_qemumips64 ?= "077bff22c9951db6b35470ba17b1df2f2a91fefb"
>   SRCREV_machine_qemuppc ?= "698eada61d9385b42dd117858b943655b565084b"
> @@ -21,7 +22,7 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
>
>   KMETA = "meta"
>
> -COMPATIBLE_MACHINE =
> "qemuarm|qemux86|qemuppc|qemumips|qemumips64|qemux86-64"
> +COMPATIBLE_MACHINE =
> "qemuarm|qemuarmhf|qemux86|qemuppc|qemumips|qemumips64|qemux86-64"
>
>   # Functionality flags
>   KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc"
>
> Best regards,
>
> Elvis Dowson


