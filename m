Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
 by mx.groups.io with SMTP id smtpd.web10.14991.1590680551820013168
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 08:42:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lgRkWE5S;
 spf=pass (domain: gmail.com, ip: 209.85.161.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f47.google.com with SMTP id r12so5827107ool.4
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 08:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=gKQDW+G3yOLd608j4eP3WLzAKgQKWcEns2BjEPMRM70=;
        b=lgRkWE5SElevU87qLdS4PK+nxnC6rteAfJ27r6y3m6rvmD+RLFFhBeTBOrQL07ij/u
         TtiyNY2QirdnNLnkcQia7jOkC5JfR3FVMQoMprUisIj+yS7Dp/DnjcoXFX0i8am/FMsA
         vYW9Cb3mBlY/LhhoTtZXflkNXhkraMB7cehhCvyUe7r4UFCYbf76HZi3bWqHLUuTtPBu
         FreJ5TPb7KSvLWU4oIoPmN5l4xW5aKv8JID81QvX3S0OBrALw2cP0g1WWmy9zJpNvq5b
         zJt9YKkEPCz0DS9O1hkb7Dlp3uAum9mN/P08nRNmZLixXRT/am4UnxoZA9X21fAgP6pk
         /org==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gKQDW+G3yOLd608j4eP3WLzAKgQKWcEns2BjEPMRM70=;
        b=ZzlI4zafwQ247Jbv9Vux6/Cu67pG9zjg/IxwCtRTe8PMgMEYa/IF3K8aWiCK92lmoY
         RkMZWgCbppNUZaruS71TSGT3Za4FMWHsBpyC9zKwcSs1KTXSIqPAD1AoyPX+IpSgHBwV
         L8pjdgvCwAulCdVRSXJUHh7V/JEJFn0EiUGdjaM5lVFZyZzLTLPDhAzDpVENlArW34EW
         ZrrTOJ7HYJeqdgGZ6ERJ7xBu5MOmuO09AVc58l1fFAST4tFCY3hPLUvbOclnIW3zRI9m
         lMELIYnw57uAgCXS6VMNZCwGowx1XFmyesJk9DJdiRE9Z8x7PoTSeo3RC7hecGr0YhCs
         9eZg==
X-Gm-Message-State: AOAM533DJ8upuDfcqIjj/wgQPtQ4iIBUiRUvfZLVp/qvv4MP4/uBvX/O
	op/ciGWb+3VCPuFyZ5E5fzZfjIbccRM=
X-Google-Smtp-Source: ABdhPJx/pRF8L3eZA45fo220yhO8E5qWCR2qoxpK1WW3XKM2MsBK0lT9hQY42Ovlpql6us4sgO8s/w==
X-Received: by 2002:a4a:aecf:: with SMTP id v15mr2935918oon.59.1590680549330;
        Thu, 28 May 2020 08:42:29 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5cfb:80e2:2942:9b65? ([2601:646:9200:4e0:5cfb:80e2:2942:9b65])
        by smtp.gmail.com with ESMTPSA id v3sm1793538oob.26.2020.05.28.08.42.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 08:42:23 -0700 (PDT)
Subject: Re: [yocto] #yocto #raspberrypi #linux . Failure to build xen-image-minimal. Yocto bitbake failed @99% while building xen-minimal-image.
To: yocto@lists.yoctoproject.org
References: <wXlF.1590575855997499174.iVhC@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <7b4a8070-91f6-828b-431d-0e25a68b8975@gmail.com>
Date: Thu, 28 May 2020 08:42:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <wXlF.1590575855997499174.iVhC@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 5/27/20 3:37 AM, Siddhartha V wrote:
> Hello,
> 
> I am building the xen minimal image using yocto warrior* ("bitbake 
> xen-image-minimal") *by giving the target machine as *"raspberrypi4"*. 
> It reached 99% but at last I got below error and the whole process 
> terminated with error.
> 
> ERROR: xen-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command 
> '/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf 
> -v --rpmverbosity=info -y -c 
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf 
> --setopt=reposdir=/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/etc/yum.repos.d 
> --installroot=/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs 
> --setopt=logdir=/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/temp 
> --repofrompath=oe-repo,/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/oe-rootfs-repo 
> --nogpgcheck install kernel-module-xen-blkback 
> kernel-module-xen-gntalloc kernel-module-xen-gntdev 
> kernel-module-xen-netback kernel-module-xen-wdt packagegroup-core-boot 
> packagegroup-core-ssh-dropbear packagegroup-core-ssh-openssh qemu 
> run-postinsts xen-base locale-base-en-us locale-base-en-gb' returned 1:
> 
> DNF version: 4.1.0
> 
> cachedir: 
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/var/cache/dnf
> 
> Added oe-repo repo from 
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/oe-rootfs-repo
> 
> repo: using cache for: oe-repo
> 
> not found other for:
> 
> not found modules for:
> 
> not found deltainfo for:
> 
> not found updateinfo for:
> 
> oe-repo: using metadata from Wed 27 May 2020 06:15:39 AM UTC.
> 
> Last metadata expiration check: 0:00:01 ago on Wed 27 May 2020 06:15:45 
> AM UTC.
> 
> No module defaults found
> 
> No match for argument: kernel-module-xen-blkback
> 
> No match for argument: kernel-module-xen-gntalloc
> 
> No match for argument: kernel-module-xen-gntdev
> 
> No match for argument: kernel-module-xen-netback
> 
> No match for argument: kernel-module-xen-wdt
> 

it seems XEN related options are missing from kernel config. Perhaps you 
can add a config fragment adding them and stitch it to linux-raspberrypi 
recipe via bbappend.

> Error: Unable to find a match
> 
> ERROR: xen-image-minimal-1.0-r0 do_rootfs:
> 
> ERROR: xen-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> 
> ERROR: Logfile of failure stored in: 
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/temp/log.do_rootfs.14256
> 
> ERROR: Task 
> (/home/siddhu/Documents/yocto/sources/meta-virtualization/recipes-extended/images/xen-image-minimal.bb:do_rootfs) 
> failed with exit code '1'
> 
> NOTE: Tasks Summary: Attempted 2605 tasks of which 2152 didn't need to 
> be rerun and 1 failed.
> 
> Summary: 1 task failed:
> 
>    
> /home/siddhu/Documents/yocto/sources/meta-virtualization/recipes-extended/images/xen-image-minimal.bb:do_rootfs
> 
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> 
> May I know what mistake I am doing here please. I have attached 
> screenshot also.
> 
> 
> *My bblayer.conf file is as below:*
> 
> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION = "2"
> BBPATH = "${TOPDIR}"
> 
> BBFILES ?= ""
> BBLAYERS ?= " \
> 
>    /home/siddhu/Documents/yocto/sources/poky/meta \
>    /home/siddhu/Documents/yocto/sources/poky/meta-poky \
>    /home/siddhu/Documents/yocto/sources/poky/meta-yocto-bsp \
>    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-oe \
>    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-multimedia \
>    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-python \
>    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-networking \
>    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-filesystems \
>    /home/siddhu/Documents/yocto/sources/meta-cloud-services \
>    /home/siddhu/Documents/yocto/sources/meta-selinux \
>    /home/siddhu/Documents/yocto/sources/meta-virtualization\
>    /home/siddhu/Documents/yocto/sources/meta-raspberrypi \
>    "
> 
> *My local.conf file I have added the below details:*
> 
> MACHINE ??= "raspberrypi4"
> DISTRO_FEATURES += "virtualization xen"
> PACKAGE_CLASSES ?= "package_rpm"
> CONF_VERSION = "1"
> IMAGE_FEATURES += "ssh-server-dropbear"
> 
> 
> I have tried the same for "cubieboard2" also even there I faced the same 
> issue.Eagerly waiting for the response.
> 
> Regards,
> Siddhartha V
> 
> 
> 
> 
