Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6860B4C80093
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 09:09:02 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1EF90hb001250;
	Mon, 14 Feb 2011 07:09:00 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 14 Feb 2011 07:08:59 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 14 Feb 2011 07:09:00 -0800
Message-ID: <4D59458A.6060304@windriver.com>
Date: Mon, 14 Feb 2011 10:08:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <1865303E0DED764181A9D882DEF65FB68630C8DA71@shsmsx502.ccr.corp.intel.com>
	<4D593824.4020904@windriver.com>
In-Reply-To: <4D593824.4020904@windriver.com>
X-OriginalArrivalTime: 14 Feb 2011 15:09:00.0117 (UTC)
	FILETIME=[1BD32850:01CBCC59]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some nightly build failures on autobuilder (on commit b9a97e07, namely, "Revert part of the unpack change...")
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
X-List-Received-Date: Mon, 14 Feb 2011 15:09:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-14 09:11 AM, Bruce Ashfield wrote:
> On 11-02-14 01:52 AM, Cui, Dexuan wrote:
>> 1) Building qemumips meta-toolchain-sdk failed:
>> http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/steps/shell_26/logs/stdio
>>
>> eglibc's do_package failed:
>> ERROR: Error executing a python function in
>> /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-core/eglibc/eglibc_2.12.bb:
>>
>> CopyFailed: Command tar -cf - -C
>> /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/sstate-install-package///package
>> -ps . | tar -xf - -C
>> /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/package
>> failed with return value 2
>>
>> Looks it's related to Mark's recent commit 3e6d91ec, but what's odd
>> is: qemumips failed here while qemux86 and qemuarm are ok... BTW:
>> MACHINE routerstationpro and atom-pc also have the same failure as
>> qemumips.
>>
>> 2) on mpc, linux-libc-headers-yocto-2.6.37+git do_install failed:
>> http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/steps/shell_19/logs/stdio
>>
>> | install: cannot create regular file
>> `/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/linux-libc-headers-yocto-2.6.37+git-1+343c06b25b221aa7f7019aee83b2d976041fddce_1+343c06b25b221aa7f7019aee83b2d976041fddce-r2/image/boot/devicetree-':
>> No such file or directory
>> NOTE: package
>> linux-libc-headers-yocto-2.6.37+git-1+343c06b25b221aa7f7019aee83b2d976041fddce
>>
>
> Interesting. This would be due to the factoring of dtb
> processing into a standalone include file. Should be
> easy enough to track down. I'll have a look at this one.

And to follow up, I've got this one will open an issue and send
a change once my build machine gets done churning itself up
to show me the problem here.

Bruce

>
> Bruce
>
>>
>> 3) ememlow do_rootfs failed:
>> http://autobuilder.pokylinux.org:8010/builders/nightly-internal/builds/48/steps/shell_9/logs/stdio
>>
>> | error: Failed dependencies:
>> | keymaps is needed by task-poky-boot-1.0-r7.emenlow
>> | base-files is needed by task-poky-boot-1.0-r7.emenlow
>> | task-base-wifi is needed by task-base-extended-1.0-r69.emenlow
>> | task-base-bluetooth is needed by task-base-extended-1.0-r69.emenlow
>> | task-base is needed by task-base-extended-1.0-r69.emenlow
>> | ...
>>
>> First I'm trying to reproduce issue 1 now. Mark, do you have any quick
>> thought? :-)
>>
>>
>> Thanks,
>> -- Dexuan
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


