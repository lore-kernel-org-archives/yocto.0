Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D344EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 17:03:48 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web11.17096.1687453418950485572
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 10:03:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=EW3VBIdn;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-570877f7838so65440277b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687453418; x=1690045418;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yl7R+0aDO0sv0dynokrpN8i0UZdL9PQTw3cPP3Bz1bM=;
        b=EW3VBIdnMirZMG7Y21Jcg8xlf21HAoUEvOzHYkRFi702TJXpS7hXU4ODbEpry/aPJa
         53LA4Xs5y1S5h2xKmW4+w+JZQHg95AGBSFdVHHHdS6Ni946gD9p4Nkf9rS8+Lk7784Zf
         mSs/Gt2HsejmwW/S4gODsMJQrQl8wYSYwLixCGfiRz0+QBbjoYBU06MrfrZHqmDf+cC2
         T0UT+O4/zjinMQvWbUzKXC5s8tS1UOER6f7CbQtcnjmNou2ozJXuIv8BJseFS3u+671x
         bIVhTJD1x9k46W18ck8EFefB/8lem4hijpxBH7AUF55587rteXqzD2jLfFP+/QoOsxA2
         5c2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687453418; x=1690045418;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yl7R+0aDO0sv0dynokrpN8i0UZdL9PQTw3cPP3Bz1bM=;
        b=DSfndLMPh759sal5ih5rmIAebQoi9wix4NSaHJWzCasOfSRFNwB2J9/pYIwCpQNCKh
         5UqVMxD9qt0KXKYRmb/vZSZIYj09cPt2QZgRNKXRvND064E1BdrUoH8+dFWpYRcYS34W
         YGXioYa3/jqf6WpySRCbNetd+2ikeGJmmTfGkyzfPtAs0yH9RG+aN2Jx+ogLFmHYAlId
         Ku5wdD5oVrNAIANLYPSUVRJaqceyKa+xnneq7UjIOI5Wrab8nNc6tsbMV0Do/opkivV5
         xxuqwHgT2ZVntL2ls8upbXFcucNYxaV+o0FUqc9VNAqMyZVUCV+aWQnibR3GU4TYn1i+
         lvLQ==
X-Gm-Message-State: AC+VfDy9ur/sg1ZnP0A67qUbXX3kyP8Ju4SxXfNfhYo0+GhMflOC+vrA
	8ECaj8mrKfwrSAYZ5/KmWCc=
X-Google-Smtp-Source: ACHHUZ57yJHfYXYT89fMLQKnuSUp8NyxU5NUtgM5cZXG3IbZ4nTvltfskDlVjmopYj6N6OdJHN1EGQ==
X-Received: by 2002:a81:4fce:0:b0:565:e48d:32cf with SMTP id d197-20020a814fce000000b00565e48d32cfmr20069323ywb.7.1687453417951;
        Thu, 22 Jun 2023 10:03:37 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:80e:b8b0:6c85:7e? ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id y188-20020a8188c5000000b00545a08184f8sm1935035ywf.136.2023.06.22.10.03.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 10:03:37 -0700 (PDT)
Message-ID: <339bb0b8-4334-f46b-0e79-21ab2de026f5@gmail.com>
Date: Thu, 22 Jun 2023 13:03:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][master-next][PATCH] *.patch: fix
 malformed Upstream-Status and SOB lines
Content-Language: en-US
To: Martin Jansa <Martin.Jansa@gmail.com>, yocto@lists.yoctoproject.org
References: <20230622143551.3898797-1-Martin.Jansa@gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230622143551.3898797-1-Martin.Jansa@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 17:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60408

Does SOB have the same meaning to you as it does in the US?  It does 
seem like an appropriate usage.  ; )


- armin



On 6/22/23 10:35 AM, Martin Jansa wrote:
> * as reported by openembedded-core/scripts/contrib/patchreview.py -v .
>
> Malformed Signed-off-by 'Signed-Off-By:' (./recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch)
> Malformed Signed-off-by 'Signed-Off-By:' (./recipes-mac/AppArmor/files/disable_perl_h_check.patch)
>
> Missing Upstream-Status tag (./recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch)
>
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-ids/samhain/files/samhain-pid-path.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-ids/suricata/files/fixup.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-scanners/clamav/files/fix2_libcurl_check.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/isic/files/configure_fix.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/krill/files/panic_workaround.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/opendnssec/files/libdns_conf_fix.patch
> Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/opendnssec/files/libxml2_conf.patch
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>   .../files/0001-standard.profile-expand-checks.patch  |  1 +
>   .../files/samhain-not-run-ptest-on-host.patch        |  2 +-
>   recipes-ids/samhain/files/samhain-pid-path.patch     | 12 ++++++------
>   recipes-ids/suricata/files/fixup.patch               |  2 +-
>   .../AppArmor/files/crosscompile_perl_bindings.patch  |  2 +-
>   .../AppArmor/files/disable_perl_h_check.patch        |  2 +-
>   .../clamav/files/fix2_libcurl_check.patch            |  2 +-
>   .../files/ecryptfs-utils-CVE-2016-6224.patch         |  2 +-
>   recipes-security/isic/files/configure_fix.patch      |  2 +-
>   recipes-security/krill/files/panic_workaround.patch  |  2 +-
>   .../opendnssec/files/libdns_conf_fix.patch           |  2 +-
>   recipes-security/opendnssec/files/libxml2_conf.patch |  2 +-
>   12 files changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
> index 0621360..43d550b 100644
> --- a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
> +++ b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
> @@ -3,6 +3,7 @@ From: Armin Kuster <akuster808@gmail.com>
>   Date: Wed, 21 Jun 2023 07:46:38 -0400
>   Subject: [PATCH] standard.profile: expand checks
>   
> +Upstream-Status: Pending
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
>   ---
>    .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++++
> diff --git a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> index 5284313..e00fc2a 100644
> --- a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> +++ b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> @@ -1,6 +1,6 @@
>   not run test on host, since we are doing cross-compile
>   
> -Upstream-status: Inappropriate [cross compile specific]
> +Upstream-Status: Inappropriate [cross compile specific]
>   
>   Signed-off-by: Roy Li <rongqing.li@windriver.com>
>   ---
> diff --git a/recipes-ids/samhain/files/samhain-pid-path.patch b/recipes-ids/samhain/files/samhain-pid-path.patch
> index 592bd16..8fdadd1 100644
> --- a/recipes-ids/samhain/files/samhain-pid-path.patch
> +++ b/recipes-ids/samhain/files/samhain-pid-path.patch
> @@ -2,15 +2,15 @@ commit a932b03b65edeb02ccad2fce06bfa68a8f2fbb04
>   Author: Aws Ismail <aws.ismail@windriver.com>
>   Date:   Thu Jan 10 16:29:05 2013 -0500
>   
> -    Set the PID Lock path for samhain.pid
> +Set the PID Lock path for samhain.pid
>       
> -    The explicit path for samhain.pid inorder
> -    for samhain to work properly after it initial
> -    database build.
> +The explicit path for samhain.pid inorder
> +for samhain to work properly after it initial
> +database build.
>       
> -    Upstream-Status: Inappropriate [configuration]
> +Upstream-Status: Inappropriate [configuration]
>   
> -    Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
> +Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
>   
>   diff --git a/samhainrc.linux b/samhainrc.linux
>   index 10a8176..a7b06e6 100644
> diff --git a/recipes-ids/suricata/files/fixup.patch b/recipes-ids/suricata/files/fixup.patch
> index fc44ce6..4646aa9 100644
> --- a/recipes-ids/suricata/files/fixup.patch
> +++ b/recipes-ids/suricata/files/fixup.patch
> @@ -1,6 +1,6 @@
>   Skip pkg Makefile from using its own rust steps
>   
> -Upstream-Status: OE Specific
> +Upstream-Status: Inappropriate [OE Specific]
>   
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
>   
> diff --git a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
> index ef55de7..585f306 100644
> --- a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
> +++ b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
> @@ -5,7 +5,7 @@ stuck in the generated Makefile with our cross tools.  In this case, linking is
>   done via the compiler rather than the linker directly so pass in CC not LD
>   here.
>   
> -Signed-Off-By: Tom Rini <trini@konsulko.com>
> +Signed-off-by: Tom Rini <trini@konsulko.com>
>   
>   --- a/libraries/libapparmor/swig/perl/Makefile.am.orig	2017-06-13 19:04:43.296676212 -0400
>   +++ b/libraries/libapparmor/swig/perl/Makefile.am	2017-06-13 19:05:03.488676693 -0400
> diff --git a/recipes-mac/AppArmor/files/disable_perl_h_check.patch b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> index cf2640f..7ffdf2f 100644
> --- a/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> +++ b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> @@ -5,7 +5,7 @@ cross compilation.  Rather than try and get a compile check to work here,
>   we know that we have what's required via our metadata so remove only this
>   check.
>   
> -Signed-Off-By: Tom Rini <trini@konsulko.com>
> +Signed-off-by: Tom Rini <trini@konsulko.com>
>   
>   --- a/libraries/libapparmor/configure.ac.orig	2017-06-13 16:41:38.668471495 -0400
>   +++ b/libraries/libapparmor/configure.ac	2017-06-13 16:41:40.708471543 -0400
> diff --git a/recipes-scanners/clamav/files/fix2_libcurl_check.patch b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> index 46406e9..8b500f3 100644
> --- a/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> +++ b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> @@ -1,6 +1,6 @@
>   clamav .102.2 tries to find clamav using culf_config. Use EO pkg_config instead
>   
> -Upstream-Status: OE specific
> +Upstream-Status: Inappropriate [OE specific]
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
>   
>   Index: git/configure
> diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
> index 4252f97..a457d79 100644
> --- a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
> +++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
> @@ -14,7 +14,7 @@ the patch comes from:
>   https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-6224
>   https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
>   
> -Upstream-Status: backport
> +Upstream-Status: Backport
>   
>   Signed-off-by: Li Zhou <li.zhou@windriver.com>
>   ---
> diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes-security/isic/files/configure_fix.patch
> index 7c3e033..ed2bf7a 100644
> --- a/recipes-security/isic/files/configure_fix.patch
> +++ b/recipes-security/isic/files/configure_fix.patch
> @@ -1,6 +1,6 @@
>   isic: add with-libnet remove libnet test
>   
> -Upstream-Status: Inappropriate[embedded specific]
> +Upstream-Status: Inappropriate [embedded specific]
>   builds fine on non-oe systems. We need to exlude
>   cross compile libnet test. Pass in the location for libnet.a. Path
>   did not support mulitlib either.
> diff --git a/recipes-security/krill/files/panic_workaround.patch b/recipes-security/krill/files/panic_workaround.patch
> index dc26416..f63169f 100644
> --- a/recipes-security/krill/files/panic_workaround.patch
> +++ b/recipes-security/krill/files/panic_workaround.patch
> @@ -1,4 +1,4 @@
> -Upstream-Status: OE specific
> +Upstream-Status: Inappropriate [OE specific]
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
>   
>   Index: git/Cargo.toml
> diff --git a/recipes-security/opendnssec/files/libdns_conf_fix.patch b/recipes-security/opendnssec/files/libdns_conf_fix.patch
> index 31d7252..220a2b8 100644
> --- a/recipes-security/opendnssec/files/libdns_conf_fix.patch
> +++ b/recipes-security/opendnssec/files/libdns_conf_fix.patch
> @@ -1,6 +1,6 @@
>   Configure does not work with OE pkg-config for the ldns option
>   
> -Upstream-Status: OE specific
> +Upstream-Status: Inappropriate [OE specific]
>   
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
>   
> diff --git a/recipes-security/opendnssec/files/libxml2_conf.patch b/recipes-security/opendnssec/files/libxml2_conf.patch
> index b4ed430..c20d5d2 100644
> --- a/recipes-security/opendnssec/files/libxml2_conf.patch
> +++ b/recipes-security/opendnssec/files/libxml2_conf.patch
> @@ -1,6 +1,6 @@
>   configure does not work with OE pkg-config for the libxml2 option
>   
> -Upstream-Status: OE specific
> +Upstream-Status: Inappropriate [OE specific]
>   
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60399): https://lists.yoctoproject.org/g/yocto/message/60399
> Mute This Topic: https://lists.yoctoproject.org/mt/99698731/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


