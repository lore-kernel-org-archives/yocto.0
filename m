Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C611FC433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 20:08:15 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.2219.1634155695036446694
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 13:08:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nt+gsFCY;
 spf=pass (domain: gmail.com, ip: 209.85.216.43,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id oa4so3107005pjb.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 13:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=VG9W+JVPDev5qjKOb2t4/2fMvNDaeIzQcEdQxdw/HvY=;
        b=nt+gsFCYuX4g/b+z7L9cWIvjdATrNjXszMPDlye0OKADukvrpYUD5N15RTfZygymti
         IGAHp89+aghe2d6fYeoyTpqPCBX3aZHE2erqj3/8gBcLwrykxR7oiL3+vBdIKQY1BYjX
         gieO9n3CrNsiRH5BLIuXFPCMd+xDZzrL0oOWdtf85AcMUOOp6zk+0Ox+54dZTGHy8JDc
         tmvhcptnlmtqNw2fCxrvUo73LaqhtI2e8mVW83XFgEaUWzfIAB0M2mHtAKFP1SIn6SAk
         C9O8uOpC/OlEVwTY04P6+jHAuV17I3F3J4Sw8AlqGynO+D8F8+d/AD6FfaFfLr21hayy
         QxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=VG9W+JVPDev5qjKOb2t4/2fMvNDaeIzQcEdQxdw/HvY=;
        b=WXxvzVz9TlF0r8K3k/oVl+PfGcO2kQEbkuJ6YE7f4EmOg0ezOmeL0YW1CIZoJ2fP0L
         FabMPjQjURBgkUhvhbaKbda133HWMtSgEPQ6oAesSVF4/w60l9JyeLqAe2PQf1s6Uo2N
         X6XlatzY1Vg4ve1FaJ+ggcqnxSwOF9c4Cjx3Ny+Nh8RuHoZ1fSTnSCrOqvUU77sJP17w
         ih91ni/yGgLN+ioImE/x5KgJJPx4tzc8IT5t4gpyjQAwaMV9rHhf9T1GXq4En/r/a/0S
         EFf4850jkV4YXP/ohd3RWzbWEvZlNUTdv95LdqpB0fH5+3XLQHpex//LY8NYmDrbLPiX
         RPNQ==
X-Gm-Message-State: AOAM53068ma7C4x6PEENST/rfHLnCcWXJ2qvIsmmbiOuDMUVGp2jJFpK
	TiqQV7UyAc8OijWkGa7YsEmWhFCl1As=
X-Google-Smtp-Source: 
 ABdhPJwmjdHsCDXfYcTITj4Oat94QdKs7pha+G3MYKwkiEKT7X0O6q/QM1eSFKYhnjEvxCBFvmwNmw==
X-Received: by 2002:a17:90a:3b4d:: with SMTP id
 t13mr16049738pjf.115.1634155694163;
        Wed, 13 Oct 2021 13:08:14 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:dbb2:6e4b:f1d2:3def?
 ([2601:202:4180:a5c0:dbb2:6e4b:f1d2:3def])
        by smtp.gmail.com with ESMTPSA id
 nn14sm322541pjb.27.2021.10.13.13.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 13:08:13 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] sssd: re-package to fix QA issues
To: kai <kai.kang@windriver.com>, yocto@lists.yoctoproject.org
References: <20211013084915.4589-1-kai.kang@windriver.com>
 <16ADAF5C8E9754EC.2153@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <916ab488-0410-dd3f-7385-031d444e68f6@gmail.com>
Date: Wed, 13 Oct 2021 13:08:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <16ADAF5C8E9754EC.2153@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 20:08:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55059


changing the 'libsss_sudo' to 'libsss-sudo' fixes the errors.

I can do this locally or you can send a v2.

- armin

On 10/13/21 12:57 PM, Armin Kuster via lists.yoctoproject.org wrote:
>
> On 10/13/21 1:49 AM, kai wrote:
>> From: Kai Kang <kai.kang@windriver.com>
>>
>> It packages all file in ${libdir} to package sssd, including the .so
>> symlink files. Then it causes QA issues:
>>
>> | ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
>> | ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]
>>
>> So re-package sssd then the .so symlink files and .pc files are packaged
>> to sssd-dev which should be.
>>
>> File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
>> sssd-dev too. Then causes another QA issue:
>>
>> | ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
>>     -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]
> When building for ipk and deb I am seeing these errors.
>
> IPK:
> ERROR: sssd-2.5.2-r0 do_package_write_ipk: Fatal errors occurred in
> subprocesses:
> Command
> 'PATH="/home/akuster/oss/clean/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/akuster/oss/clean/poky/scripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin/i686-poky-linux:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/bin:/home/akuster/oss/clean/poky/bitbake/bin:/home/akuster/oss/clean/poky/build/tmp/hosttools"
> opkg-build -Z xz -a "--memlimit=50% --threads=16" libsss_sudo
> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/deploy-ipks/core2-32'
> returned non-zero exit status 1.
> Subprocess output:libsss_sudo
> *** Error: Package name libsss_sudo contains illegal characters, (other
> than [a-z0-9.+-])
>
> opkg-build: Please fix the above errors and try again.
>
> ERROR: Logfile of failure stored in:
> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/temp/log.do_package_write_ipk.2960686
> ERROR: Task
> (/home/akuster/oss/maint/meta-security/recipes-security/sssd/sssd_2.5.2.bb:do_package_write_ipk)
> failed with exit code '1'
>
> DEB:
>
> ERROR: sssd-2.5.2-r0 do_package_write_deb: Fatal errors occurred in
> subprocesses:
> Command
> 'PATH="/home/akuster/oss/clean/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/akuster/oss/clean/poky/scripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin/i686-poky-linux:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/bin:/home/akuster/oss/clean/poky/bitbake/bin:/home/akuster/oss/clean/poky/build/tmp/hosttools"
> dpkg-deb -b
> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/packages-split/libsss_sudo
> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/deploy-debs/core2-32'
> returned non-zero exit status 2.
> Subprocess output:dpkg-deb: error: package name has characters that
> aren't lowercase alphanums or '-+.'
>
> ERROR: Logfile of failure stored in:
> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/temp/log.do_package_write_deb.2973553
> ERROR: Task
> (/home/akuster/oss/maint/meta-security/recipes-security/sssd/sssd_2.5.2.bb:do_package_write_deb)
> failed with exit code '1'
>
>
>
>> So create a new sub-package libsss_sudo to package file libsss_sudo.so
>> and make sssd rdepends on it.
>>
>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> ---
>>  recipes-security/sssd/sssd_2.5.2.bb | 16 +++++++++-------
>>  1 file changed, 9 insertions(+), 7 deletions(-)
>>
>> diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
>> index 76d6e03..da1a5c3 100644
>> --- a/recipes-security/sssd/sssd_2.5.2.bb
>> +++ b/recipes-security/sssd/sssd_2.5.2.bb
>> @@ -125,10 +125,12 @@ SYSTEMD_SERVICE:${PN} = " \
>>  "
>>  SYSTEMD_AUTO_ENABLE = "disable"
>>  
>> -FILES:${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
>> -FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
>> -
>> -# The package contains symlinks that trip up insane
>> -INSANE_SKIP:${PN} = "dev-so"
>> -
>> -RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
>> +PACKAGES =+ "libsss_sudo"
>> +FILES:${PN} += "${base_libdir}/security/pam_sss*.so  \
>> +                ${datadir}/dbus-1/system-services/*.service \
>> +                ${libdir}/krb5/* \
>> +                ${libdir}/ldb/* \
>> +                "
>> +FILES:libsss_sudo = "${libdir}/libsss_sudo.so"
>> +
>> +RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam libsss_sudo"
>>
>>
>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55058): https://lists.yoctoproject.org/g/yocto/message/55058
> Mute This Topic: https://lists.yoctoproject.org/mt/86283461/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


