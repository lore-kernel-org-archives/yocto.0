Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6EE1E00796
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 12:11:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1BKBUuG011051
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Feb 2014 12:11:30 -0800 (PST)
Received: from [147.11.116.205] (147.11.116.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 11 Feb 2014 12:11:30 -0800
Message-ID: <52FA83EF.7000805@windriver.com>
Date: Tue, 11 Feb 2014 15:11:27 -0500
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>, <yocto@yoctoproject.org>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1391742553-30745-1-git-send-email-flihp@twobit.us>
X-Originating-IP: [147.11.116.205]
Subject: Re: [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wildcards in place of version numbers.
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
X-List-Received-Date: Tue, 11 Feb 2014 20:11:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-02-06 10:09 PM, Philip Tricca wrote:
> The current trend in OE recipes seems to use a wildcard in place of version numbers for bbappends. AFAIK this is a relatively new feature but a welcome one. This is a sort of RFC in that I think it's probably best for meta-selinux to use this mechanism to keep from having to rename bbappends everytime something in oe-core changes. I guess the right way to implement this is to change the bbappends in meta-selinux when the version numbers change upstream.
>

Hi Philip,

This might work out but I'm somewhat attached to the manual process.
Manual matching shows that someone is:
    - paying attention,
    - fixed the bbappend version number,
    - gotten someone else to review,
    - hopefully built the software for at least one arch,
    - hopefully tested run-time for at least one arch.

With a wildcard matching rule, there will be times when the
underlying package has changed and then the recipe changes and
perhaps code patches still apply but are to some extent broken.
Have people accepted this as a possible outcome that they
believe will be rare? Have you tried your approach with a few
different oe-core baselines such as dora, random, master?

I'm not agaist this change but I'm trying to be sure that people
agree that it's a good approach and that we've tested the idea
with some historical changes.

Thanks,

../Randy


> Philip Tricca (4):
>    busybox: Use wildcard for version number in busybox bbappend.
>    libcgroup: Use wildcard for version number in libcgroup bbappend.
>    sudo: Use wildcard for version number in sudo bbappend.
>    libxcb: Use wildcard for version number in libxcb bbappend.
>
>   recipes-core/busybox/busybox_%.bbappend        |   87 ++++++++++++++++++++++++
>   recipes-core/busybox/busybox_1.21.1.bbappend   |   87 ------------------------
>   recipes-core/libcgroup/libcgroup_%.bbappend    |   12 ++++
>   recipes-core/libcgroup/libcgroup_0.38.bbappend |   12 ----
>   recipes-extended/sudo/sudo_%.bbappend          |    3 +
>   recipes-extended/sudo/sudo_1.8.8.bbappend      |    3 -
>   recipes-graphics/xcb/libxcb_%.bbappend         |    8 +++
>   recipes-graphics/xcb/libxcb_1.9.3.bbappend     |    8 ---
>   8 files changed, 110 insertions(+), 110 deletions(-)
>   create mode 100644 recipes-core/busybox/busybox_%.bbappend
>   delete mode 100644 recipes-core/busybox/busybox_1.21.1.bbappend
>   create mode 100644 recipes-core/libcgroup/libcgroup_%.bbappend
>   delete mode 100644 recipes-core/libcgroup/libcgroup_0.38.bbappend
>   create mode 100644 recipes-extended/sudo/sudo_%.bbappend
>   delete mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend
>   create mode 100644 recipes-graphics/xcb/libxcb_%.bbappend
>   delete mode 100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend
>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

