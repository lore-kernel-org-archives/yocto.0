Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5A72E008B5
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 19:24:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0N3OHeI006907
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 19:24:18 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Wed, 22 Jan 2014 19:24:17 -0800
Message-ID: <52E08B5F.80304@windriver.com>
Date: Thu, 23 Jan 2014 11:24:15 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <jackie.huang@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <1390371472-17124-1-git-send-email-jackie.huang@windriver.com>
In-Reply-To: <1390371472-17124-1-git-send-email-jackie.huang@windriver.com>
X-TagToolbar-Keys: D20140123112415237
Subject: Re: [meta-selinux][PATCH] udev/init: fix the invalid binary path
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
X-List-Received-Date: Thu, 23 Jan 2014 03:24:23 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-22 ÏÂÎç2:17, jackie.huang@windriver.com Ð´µÀ:
> From: Jackie Huang <jackie.huang@windriver.com>
> 
> The invalid binary path causes failure:
> udevd[102]: starting version 182
> /etc/rcS.d/S04udev: line 106: /usr/bin/udevadm: No such file or directory
> 
> use the command 'udevadm' directly in the init just as the oe-core one does.
> 
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>   recipes-core/udev/udev/init |   10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
> index a96638f..29146ec 100644
> --- a/recipes-core/udev/udev/init
> +++ b/recipes-core/udev/udev/init
> @@ -103,13 +103,13 @@ case "$1" in
>       echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
>       @UDEVD@ -d
>   
> -    /usr/bin/udevadm control --env=STARTUP=1
> +    udevadm control --env=STARTUP=1
>       if [ "$not_first_boot" != "" ];then
> -            /usr/bin/udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
> -            (/usr/bin/udevadm settle --timeout=10; /usr/bin/udevadm control --env=STARTUP=)&
> +            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
> +            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
>       else
> -            /usr/bin/udevadm trigger --action=add
> -            /usr/bin/udevadm settle
> +            udevadm trigger --action=add
> +            udevadm settle
>       fi
>   
>       test ! -x /sbin/restorecon || /sbin/restorecon -F /dev
> 

This is ok, I will add a ref to oe-core commit:

http://git.openembedded.org/openembedded-core/commit/?id=cc0f22cd1e93cc25647add1a3339e150572e4fce

And change you message and merge.

Thanks. :)
-- 
- Pascal

