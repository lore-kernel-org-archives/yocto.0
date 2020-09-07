Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1370.1599497198649662829
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 09:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfGNB2gy;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7506038C1176
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 09:46:38 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id k15so8853621pfc.12
        for <yocto@yoctoproject.org>; Mon, 07 Sep 2020 09:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=9u3BuKMsvGABZ5jcQaD1yBivIdHXYRNGVTnCAxOdLbg=;
        b=JfGNB2gyS1MQ9qdgT4xQswqYGQF9vGYLxuc3YZBEadQJ/bqn1q3Tn+1yc+7b1bUmhf
         7Fn1+KSkCKvsHHb6pKtraAAw6xH2UXeR2qmhI8ofb1vKay9fNl7Z6BwrMD1//2bHvePu
         cNiby9p/Z1Vp9C/1fKvQPwRWCxG+D2M2zB7NJ92iTmNE44CTKkf/Btk+rj9jKSLn92as
         Mo+1bU13kTArr8fnQauHUqMNZnkgD88MX6Aj4McCIX5Yv7xVo7fCHdWHJDX++eH/jyz8
         BDZnY0jiuS9+84/elJk18inKhOUeLgcln+BAe4Hxwx6K5jy8sqRYo4B7ReDmBwu31gMJ
         dgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=9u3BuKMsvGABZ5jcQaD1yBivIdHXYRNGVTnCAxOdLbg=;
        b=TQ68soXy0EqY42F6tH6K/0RGpx8bKe4BpkGk04dCnrBeblyTFYTj7lzEMx/cWbbJqJ
         hsekfUmSPz1UJ/kl1pC2IYmy342M5H8rCFtg6IrOu/u3uWtRyGYf5304WX7AsDWU7tyL
         Z/6zIQqnrBtygDQOrgKrLaItIm3ir3ZA2pD1zNPf2IZwgTqBM5NawgWnkEk+zWJP0nHt
         I7Uxl6xABy7ltbz+Pl7T28Pal0ximyvXg5+O+sVej9wtHV0/bNkCShwGCR6kQAXSQijD
         KDaApiVbbyjtNIaG4wN7kLCapLON60IJ7hyHpfPQrRFkX/Y30RqHjJHa7M7wGpvyyRL/
         O+eg==
X-Gm-Message-State: AOAM5310Yf/EzJ+hAh6JO5OhtzO5Pl/BOulITbFaObfp+qETUJmZlIkm
	f/Kut6RoE8/dagswGXqL6ySJVACiGT0=
X-Google-Smtp-Source: ABdhPJwDRhSSv1kA0CKt66F6jrmvRQxLKoxKkh9+XJbHY4BxziPYq26Ic4pi7L5kRWkl1JKGtWSdBQ==
X-Received: by 2002:a05:6a00:16c7:: with SMTP id l7mr21841249pfc.202.1599497197619;
        Mon, 07 Sep 2020 09:46:37 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:5e2:c7ea:56cb:5d37? ([2601:202:4180:a5c0:5e2:c7ea:56cb:5d37])
        by smtp.gmail.com with ESMTPSA id 143sm15557402pfc.66.2020.09.07.09.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 09:46:37 -0700 (PDT)
Subject: Re: [yocto][meta-security][PATCH] dhcp: remove bbappend file
To: Chen Qi <Qi.Chen@windriver.com>, yocto@yoctoproject.org
References: <20200907051423.80188-1-Qi.Chen@windriver.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <10476134-b3c5-58f4-17aa-020a2a70996e@gmail.com>
Date: Mon, 7 Sep 2020 09:46:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907051423.80188-1-Qi.Chen@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


This patch set is for meta-selinux

-armin

On 9/6/20 10:14 PM, Chen Qi wrote:
> dhcp has been removed, thus removing its bbappend file.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  recipes-connectivity/dhcp/dhcp_%.bbappend   |  1 -
>  recipes-connectivity/dhcp/dhcp_selinux.inc  |  3 --
>  recipes-connectivity/dhcp/files/init-server | 52 ---------------------
>  3 files changed, 56 deletions(-)
>  delete mode 100644 recipes-connectivity/dhcp/dhcp_%.bbappend
>  delete mode 100644 recipes-connectivity/dhcp/dhcp_selinux.inc
>  delete mode 100644 recipes-connectivity/dhcp/files/init-server
>
> diff --git a/recipes-connectivity/dhcp/dhcp_%.bbappend b/recipes-connectivity/dhcp/dhcp_%.bbappend
> deleted file mode 100644
> index 7719d3b..0000000
> --- a/recipes-connectivity/dhcp/dhcp_%.bbappend
> +++ /dev/null
> @@ -1 +0,0 @@
> -require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
> diff --git a/recipes-connectivity/dhcp/dhcp_selinux.inc b/recipes-connectivity/dhcp/dhcp_selinux.inc
> deleted file mode 100644
> index 08389f1..0000000
> --- a/recipes-connectivity/dhcp/dhcp_selinux.inc
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -inherit selinux
> -
> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connectivity/dhcp/files/init-server
> deleted file mode 100644
> index a0e901a..0000000
> --- a/recipes-connectivity/dhcp/files/init-server
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -#!/bin/sh
> -#
> -# $Id: dhcp3-server.init.d,v 1.4 2003/07/13 19:12:41 mdz Exp $
> -#
> -
> -test -f /usr/sbin/dhcpd || exit 0
> -
> -# It is not safe to start if we don't have a default configuration...
> -if [ ! -f /etc/default/dhcp-server ]; then
> -	echo "/etc/default/dhcp-server does not exist! - Aborting..."
> -	exit 0
> -fi
> -
> -# Read init script configuration (so far only interfaces the daemon
> -# should listen on.)
> -. /etc/default/dhcp-server
> -
> -# Restorecon for /var/lib/dhcp/{dhcpd.leases,dhcpd6.leases}
> -restorecon_dhcpd_leases(){
> -	test ! -x /sbin/restorecon || for x in dhcpd.leases dhcpd6.leases; do
> -		[ -f /var/lib/dhcp/$x ] && /sbin/restorecon -F /var/lib/dhcp/$x
> -	done
> -}
> -
> -case "$1" in
> -	start)
> -		echo -n "Starting DHCP server: "
> -		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
> -		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases	
> -		restorecon_dhcpd_leases
> -		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES -user dhcp -group dhcp
> -		echo "."
> -		;;
> -	stop)
> -		echo -n "Stopping DHCP server: dhcpd3"
> -		start-stop-daemon -K -x /usr/sbin/dhcpd
> -		echo "."
> -		;;
> -	restart | force-reload)
> -		$0 stop
> -		sleep 2
> -		$0 start
> -		if [ "$?" != "0" ]; then
> -			exit 1
> -		fi
> -		;;
> -	*)
> -		echo "Usage: /etc/init.d/dhcp-server {start|stop|restart|force-reload}"
> -		exit 1 
> -esac
> -
> -exit 0
>
> 

