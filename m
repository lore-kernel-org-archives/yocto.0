Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.1202.1588282628387277973
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 14:37:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id A140040C0F;
	Thu, 30 Apr 2020 21:37:07 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtpfYP57TQth; Thu, 30 Apr 2020 21:37:07 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 0786D40A9E;
	Thu, 30 Apr 2020 21:37:05 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 4F4EE172BDF; Thu, 30 Apr 2020 17:37:05 -0400 (EDT)
Date: Thu, 30 Apr 2020 17:37:05 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: Re: [yocto][PATCH] openssl: Fix dependency loop with PACKAGECONFIG cryptodev-linux
Message-ID: <20200430213705.GW11927@denix.org>
References: <20200430202311.11303-1-scott@jumpnowtek.com>
MIME-Version: 1.0
In-Reply-To: <20200430202311.11303-1-scott@jumpnowtek.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 08:23:11PM +0000, Scott Ellis wrote:

Hi, Scott,

Sorry, I'm not trying to discourage you from submitting patches, but there are 
few issues with your patch here - see below and inline.

First of all, patches for OE-core should be sent to:
openembedded-core@lists.openembedded.org
https://lists.openembedded.org/g/openembedded-core

Looks like you are building poky-zeus - Poky, as a distro, is composed from 
multiple components/layers, such as bitbake, oe-core/meta, meta-poky and 
meta-yocto-bsp. Most of them have own git repos with corresponding mailing 
lists - usually mentioned in corresponding README files, please check those.


> Applies to both zeus and dunfell

The process to get your change backported to older branches/releases is to 
submit it against master, and once accepted, re-send and ask to backport to 
other branches, such as zeus and dunfell with the name of the branch in the 
subject. That is because different branches/versions are usually maintained 
by different people.


> ERROR: Nothing RPROVIDES 'cryptodev-module-native' (but virtual:native:/home/scott/poky-zeus/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb RDEPENDS on or otherwise requires it)
> ERROR: Required build target 'openssl' has no buildable providers.
> Missing or unbuildable dependency chain was: ['openssl', 'rpm-native', 'python3-native', 'openssl-native', 'cryptodev-module-native']

Not sure how you were able to set the wrong PACKAGECONFIG for openssl-native, 
when it gets explicitly emptied in the recipe below.


> diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb b/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> index aa4ef6f48a..a952fae728 100644
> --- a/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> +++ b/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> @@ -32,7 +32,7 @@ PACKAGECONFIG ?= ""
>  PACKAGECONFIG_class-native = ""
>  PACKAGECONFIG_class-nativesdk = ""

Here, ^^^ PACKAGECONFIG should all be empty for native and nativesdk versions 
of openssl.


> -PACKAGECONFIG[cryptodev-linux] = "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-module"
> +PACKAGECONFIG[cryptodev-linux] = "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux"

This is not a fix, but rather a workaround for a bad setup. Moreover, it 
actually reverts my recent fix to RDEPENDS on cryptodev-module, which is 
needed to properly support devcryptoeng in openssl.

Maybe if you share with us how you set your environment, we would be able to 
help you resolve it properly. Thank you!

-- 
Denys


>  B = "${WORKDIR}/build"
>  do_configure[cleandirs] = "${B}"
> -- 
> 2.17.1
> 

> 

