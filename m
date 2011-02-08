Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C021E4C80053
	for <yocto@yoctoproject.org>; Tue,  8 Feb 2011 08:11:20 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p18EBIRl006053;
	Tue, 8 Feb 2011 06:11:18 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 06:11:17 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 06:11:17 -0800
Message-ID: <4D514F05.1080408@windriver.com>
Date: Tue, 08 Feb 2011 09:11:17 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110131 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <AANLkTimx3rKU_wj-depc214tGMNnpEZF4OU059H9FGHd@mail.gmail.com>
In-Reply-To: <AANLkTimx3rKU_wj-depc214tGMNnpEZF4OU059H9FGHd@mail.gmail.com>
X-OriginalArrivalTime: 08 Feb 2011 14:11:18.0083 (UTC)
	FILETIME=[0DD03130:01CBC79A]
Cc: yocto@yoctoproject.org
Subject: Re: Adding machine for linux-yocto-stable
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
X-List-Received-Date: Tue, 08 Feb 2011 14:11:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-08 08:46 AM, Diego Sueiro wrote:
> Folks,
>
> I'm trying to get devkit8000 kernel compiled with linux-yocto-stable recipe.
> I've added devkit8000 on COMPATIBLE_MACHINE and on KMACHINE_dekvkit800.
>
> But I don't know what pokylinux branch to use to make the kernel build
> works.
>
> I believe that I have to config these variables:
>
>     LINUX_KERNEL_TYPE

This one defaults to something sane, so you don't need
to set this line.

>     SRCREV_machine_pn-linux-yocto-stable_devkit8000

You would need to set this, to a SRCREV of the branch you'll
end up building.

>
>
> Any suggestions?

Are you working out of an up to date master ? I've made some
changes recently that allow BSPs to bootstrap/reuse existing
branches. If you aren't on the latest master the procedure
is different.

Cheers,

Bruce

>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


