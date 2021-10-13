Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E176C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 19:57:32 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web09.2020.1634155051524967339
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 12:57:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dm7Mvrhl;
 spf=pass (domain: gmail.com, ip: 209.85.216.47,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id np13so3058072pjb.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 12:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=hF1jdpzbyabR3byQ3oPrfvbRcimwgY5HvCj+0lorXaY=;
        b=dm7MvrhlJ4IJIO1ES6sUa5Ril8zUJGlI6N6xd5Qfs9LrIxFALuMjvuvL63cga9zHTq
         +6fjewroXQAq97k2bPeBoMbXyTPm5N8steuWNw+cYzJ/fRrNZbClbAo5HJUe1Y9Rfqlt
         i7hi+lmVAOqiE3Y5PEtQTxay/7D/oW26iP861t4U8NxLtqsDNqNoou+AwSkRSTTL3NN1
         J6KcYBEMUj+27rYtcvM5KQ2ovt8RENfkz8HZhMilQUqBySR40rZN4c3MPB4NsPjuTf1o
         bo6FrHbNpiUfXJnApds0Es0TV+VR725DWlaXs738D7Mk43RL7vwd/FdWT7YY9NhdbDPJ
         ixrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=hF1jdpzbyabR3byQ3oPrfvbRcimwgY5HvCj+0lorXaY=;
        b=vQmZ2XUGwWn4mQoCNUOHbLfpHL2cGQcXhXWAzUlVKGkxHjeE4wwJ6jIXAisUOAUjeu
         BzhmP2YcBp8eJQ+BrA7cbhbe53x2qEtidCUIjjlY3hVlyZPV/8T1DqcDFYiC38CEIs1g
         2TNhyK22O65gwSv8KGx3XaPY6Vmz/HnF42ET2DwMhFlONjT4hY6k2ZCj9Mdbsb4MPK54
         SVH22G7lWjaW6KpKymVlXFjs9J606ihhgVAFNLqNZLgtTlwcxBEVHthJv5pHYPkvK4Rt
         YpZwXaNwA0OFN8Cw6y12FdWleC+GpRzNu8eJ5wIthCNHg2ZzSsViEHdPFb2GKCaRMyxg
         K/dQ==
X-Gm-Message-State: AOAM532rE15cVvxLgBysiuFtoaj3QOQ9PuVB+wm7yM7hLzoKyucdAsvF
	UN/A5suwOspbrTBu6AUrAHFwlcPd0ks=
X-Google-Smtp-Source: 
 ABdhPJwRMqmm8Oy6N9pzaZv3K/duGIgCF6Xq9Q/uE50DPHhS/OGc6lbaHYMAUUN9ajZ6JlOs72BixA==
X-Received: by 2002:a17:90b:4c4d:: with SMTP id
 np13mr15907655pjb.193.1634155050669;
        Wed, 13 Oct 2021 12:57:30 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:dbb2:6e4b:f1d2:3def?
 ([2601:202:4180:a5c0:dbb2:6e4b:f1d2:3def])
        by smtp.gmail.com with ESMTPSA id
 73sm293987pfv.125.2021.10.13.12.57.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 12:57:30 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] sssd: re-package to fix QA issues
To: kai <kai.kang@windriver.com>, yocto@lists.yoctoproject.org
References: <20211013084915.4589-1-kai.kang@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <71eeb0d4-ffdb-a16d-8d2a-9cd5db40ed6c@gmail.com>
Date: Wed, 13 Oct 2021 12:57:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211013084915.4589-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 19:57:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55058



On 10/13/21 1:49 AM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> It packages all file in ${libdir} to package sssd, including the .so
> symlink files. Then it causes QA issues:
>
> | ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
> | ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]
>
> So re-package sssd then the .so symlink files and .pc files are packaged
> to sssd-dev which should be.
>
> File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
> sssd-dev too. Then causes another QA issue:
>
> | ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
>     -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]

When building for ipk and deb I am seeing these errors.

IPK:
ERROR: sssd-2.5.2-r0 do_package_write_ipk: Fatal errors occurred in
subprocesses:
Command
'PATH="/home/akuster/oss/clean/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/akuster/oss/clean/poky/scripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin/i686-poky-linux:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/bin:/home/akuster/oss/clean/poky/bitbake/bin:/home/akuster/oss/clean/poky/build/tmp/hosttools"
opkg-build -Z xz -a "--memlimit=50% --threads=16" libsss_sudo
/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/deploy-ipks/core2-32'
returned non-zero exit status 1.
Subprocess output:libsss_sudo
*** Error: Package name libsss_sudo contains illegal characters, (other
than [a-z0-9.+-])

opkg-build: Please fix the above errors and try again.

ERROR: Logfile of failure stored in:
/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/temp/log.do_package_write_ipk.2960686
ERROR: Task
(/home/akuster/oss/maint/meta-security/recipes-security/sssd/sssd_2.5.2.bb:do_package_write_ipk)
failed with exit code '1'

DEB:

ERROR: sssd-2.5.2-r0 do_package_write_deb: Fatal errors occurred in
subprocesses:
Command
'PATH="/home/akuster/oss/clean/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/akuster/oss/clean/poky/scripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin/i686-poky-linux:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/bin:/home/akuster/oss/clean/poky/bitbake/bin:/home/akuster/oss/clean/poky/build/tmp/hosttools"
dpkg-deb -b
/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/packages-split/libsss_sudo
/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/deploy-debs/core2-32'
returned non-zero exit status 2.
Subprocess output:dpkg-deb: error: package name has characters that
aren't lowercase alphanums or '-+.'

ERROR: Logfile of failure stored in:
/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/temp/log.do_package_write_deb.2973553
ERROR: Task
(/home/akuster/oss/maint/meta-security/recipes-security/sssd/sssd_2.5.2.bb:do_package_write_deb)
failed with exit code '1'



>
> So create a new sub-package libsss_sudo to package file libsss_sudo.so
> and make sssd rdepends on it.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  recipes-security/sssd/sssd_2.5.2.bb | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
> index 76d6e03..da1a5c3 100644
> --- a/recipes-security/sssd/sssd_2.5.2.bb
> +++ b/recipes-security/sssd/sssd_2.5.2.bb
> @@ -125,10 +125,12 @@ SYSTEMD_SERVICE:${PN} = " \
>  "
>  SYSTEMD_AUTO_ENABLE = "disable"
>  
> -FILES:${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
> -FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
> -
> -# The package contains symlinks that trip up insane
> -INSANE_SKIP:${PN} = "dev-so"
> -
> -RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
> +PACKAGES =+ "libsss_sudo"
> +FILES:${PN} += "${base_libdir}/security/pam_sss*.so  \
> +                ${datadir}/dbus-1/system-services/*.service \
> +                ${libdir}/krb5/* \
> +                ${libdir}/ldb/* \
> +                "
> +FILES:libsss_sudo = "${libdir}/libsss_sudo.so"
> +
> +RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam libsss_sudo"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55049): https://lists.yoctoproject.org/g/yocto/message/55049
> Mute This Topic: https://lists.yoctoproject.org/mt/86283461/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


