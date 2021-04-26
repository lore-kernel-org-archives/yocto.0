Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web08.7337.1619446145162741874
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 07:09:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4FTRZr44ygz5tlJ;
	Mon, 26 Apr 2021 16:08:52 +0200 (CEST)
Date: Mon, 26 Apr 2021 16:08:51 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] AppArmor with BusyBox
Message-ID: <20210426140851.e2g7okmtyt25rrna@qschulz>
References: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Konstantin,

On Mon, Apr 26, 2021 at 01:45:30PM +0300, Konstantin Aladyshev wrote:
> I'm using the OpenBMC system (https://github.com/openbmc/openbmc) and
> I've tried to enable AppArmor functionality from the 'meta-security'
> layer.
> 
> To achieve this I've added these strings to my local.conf file:
> DISTRO_FEATURES_append = " apparmor"
> IMAGE_INSTALL += "apparmor"
> 
> The AppArmor functionality was installed to my image, but
> unfortunately I've come to this issue:
> 
> kernel: AppArmor: AppArmor initialized
> kernel: AppArmor: AppArmor Filesystem Enabled
> kernel: AppArmor: AppArmor sha1 policy hashing enabled
> systemd[1]: systemd 247.3+ running in system mode. (+PAM -AUDIT
> -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -GCRYPT
> -GNUTLS -ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
> -PCRE2 default-hierarchy=hybrid)
> systemd[1]: Starting AppArmor initialization...
> apparmor[113]: Starting AppArmor profiles
> apparmor[128]: xargs: invalid option -- 'd'

Busybox implementation of xargs does not support specifying a delimiter.

I suggest you to install the full-featured xargs which is provided by
the findutils recipe.

You probably need to disable xargs Busybox implementation otherwise
there'll be a conflict (you'll know, Yocto won't create the image).

Cheers,
Quentin
