Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.24437.1593618077586159965
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 08:41:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49xlnQ4gxlz5tlB;
	Wed,  1 Jul 2020 17:41:14 +0200 (CEST)
Date: Wed, 1 Jul 2020 17:41:13 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto
Message-ID: <20200701154113.jfyk4t6wrsvf5fme@qschulz>
References: <TwWH.1593617810628852168.CTrX@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <TwWH.1593617810628852168.CTrX@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Pankaj,

On Wed, Jul 01, 2020 at 08:36:50AM -0700, Pankaj  Vinadrao Joshi wrote:
[...]
> 2) I have built the image without these configuration but after booting the image its asking for password for connecting from ssh thought i have not set any packages
> i have included following features in local.conf file of build dir
> 
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> ENABLE_UART = "1"
> #EXTRA_IMAGE_FEATURES ?= "allow-empty-password allow-root-login"
> CORE_IMAGE_EXTRA_INSTALL += "git ruby bsdtar pseudo os-release lsb-release cmake"
> DISTRO_FEATURES_append = "opengl python3-pip"

DISTRO_FEATURES_append = " opengl python3-pip"
                          ^ missing space

> EXTRA_IMAGE_FEATURES_append += "src-pkgs package-management ssh-server-dropbear ssh-server-openssh stateless-rootfs "
> PACKAGE_CLASSES = "package_deb"
> IMAGE_INSTALL_append = " glibc-utils localedef unicode-ucd "
> IMAGE_FEATURES_append = "tools-debug tools-sdk dev-pkgs"

IMAGE_FEATURES_append = " tools-debug tools-sdk dev-pkgs"
                         ^ missing space

> CORE_IMAGE_EXTRA_INSTALL += " kernel-modules bash e2fsprogs mtools parted dosfstools mtd-utils-ubifs openssh"
> IMAGE_INSTALL_append += " dhcp-client dhcp-server python3-pip "
> DISTRO ?= "Exaleap-arm-linux"
> 

DISTRO ?= "exaleap-arm-linux"
           ^ avoid uppercase letter like the plague

> can someone help me to ressolve this issue???

Please read when I answer your mails before asking the same question
again :)

Quentin
