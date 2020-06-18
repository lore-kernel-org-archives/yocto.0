Received: from mail.optimcloud.com (mail.optimcloud.com [46.23.86.243])
 by mx.groups.io with SMTP id smtpd.web11.11310.1592496758573637506
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 09:12:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.86.243, mailfrom: yocto@optimcloud.com)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by mail.optimcloud.com (Postfix) with ESMTPA id 2B2518002B
	for <yocto@lists.yoctoproject.org>; Thu, 18 Jun 2020 16:12:34 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 23:12:33 +0700
From: "Yocto" <yocto@optimcloud.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto - meta-anaconda installer gives "An unknown error has occurred"
In-Reply-To: <zfUG.1592494100488823620.BO2C@lists.yoctoproject.org>
References: <zfUG.1592494100488823620.BO2C@lists.yoctoproject.org>
Message-ID: <ddd6238faab99c6a0e5cf5edfa27915e@optimcloud.com>
X-Sender: yocto@optimcloud.com
Authentication-Results: mail.optimcloud.com;
	auth=pass smtp.auth=yocto@optimcloud.com smtp.mailfrom=yocto@optimcloud.com
X-Spamd-Bar: /
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-06-18 22:28, srijan.nandi@gmail.com wrote:
> Hello all,
> 
> I created a core-image-full-cmdline for genericx86-64 machine. I am
> trying to configure meta-anaconda with it. I have used the following
> bblayers.conf file and added the requirements in the local.conf file.
> 

I was recently able to build and boot an x86_64 image and install it via 
anaconda from dunfell layer on real hardware and in XenServer
i did notice depending on the vm template used some would error, 
centos/ununtu templates appeared ok, though not sure if you have
templates for os installs in vmware, never used it.

> 1. Target Build:
> bblayers.conf:
> BBLAYERS ?= " \
>   /opt/graylog-poky/meta \
>   /opt/graylog-poky/meta-poky \
>   /opt/graylog-poky/meta-yocto-bsp \
>   /opt/graylog-poky/meta-graylog \
>   /opt/graylog-poky/meta-openembedded/meta-oe \
>   /opt/graylog-poky/meta-openembedded/meta-python \
>   /opt/graylog-poky/meta-openembedded/meta-networking \
>   /opt/graylog-poky/meta-openembedded/meta-gnome \
>   /opt/graylog-poky/meta-openembedded/meta-filesystems \
>   /opt/graylog-poky/meta-openembedded/meta-initramfs \
>   /opt/graylog-poky/meta-anaconda \
> "
> local.conf file:
> PACKAGE_CLASSES ?= "package_deb package_rpm"
> DISTRO_FEATURES_append = " systemd keyboard ldconfig pam"
> EXTRA_IMAGE_FEATURES_append = " package-management ssh-server-openssh"
> 
> CORE_IMAGE_EXTRA_INSTALL_append = " kernel-modules iptables bash vim
> parted tcpdump dhcp-server dhcp-client"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = ""
> IMAGE_FSTYPES = "ext4 iso wic wic.vmdk"
> 
> The target directory is /opt/graylog-poky/build.
> 
> Then I created the install build with the following bblayers.conf and
> local.conf with the following customizations
> 
> bblayers.conf:
> BBLAYERS ?= " \
>   /opt/graylog-poky/meta \
>   /opt/graylog-poky/meta-poky \
>   /opt/graylog-poky/meta-yocto-bsp \
>   /opt/graylog-poky/meta-graylog \
>   /opt/graylog-poky/meta-openembedded/meta-oe \
>   /opt/graylog-poky/meta-openembedded/meta-python \
>   /opt/graylog-poky/meta-openembedded/meta-networking \
>   /opt/graylog-poky/meta-openembedded/meta-gnome \
>   /opt/graylog-poky/meta-openembedded/meta-filesystems \
>   /opt/graylog-poky/meta-openembedded/meta-initramfs \
>   /opt/graylog-poky/meta-anaconda \
>   "
> local.conf:
> MACHINE ??= "qemux86-64"
> PACKAGE_CLASSES ?= "package_ipk"
> PACKAGE_CLASSES = "package_rpm"
> DISTRO = "anaconda"
> INSTALLER_TARGET_IMAGE = "core-image-full-cmdline"
> INSTALLER_TARGET_BUILD = "/opt/graylog-poky/build"
> 
> It gave me an iso, when I try to boot in a vmware or on a virtualbox
> with the iso, it boots up and then after opening up the anaconda
> installer it comes up with the error message "An unknown error has
> occurred" and it hangs on the screen.
> 
> Any help will be highly appreciated.
> 
> Also would like to know if it is possible to boot an x86-64 using the
> above method.
> 
