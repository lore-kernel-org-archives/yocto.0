Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web09.13510.1607085184293771693
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 04:33:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1klAGi-0002Cx-B8; Fri, 04 Dec 2020 13:33:00 +0100
Message-ID: <23bb2041f1dbe77348dd8438b8c7dd9ecc76cf42.camel@delisys.ch>
Subject: Re: [yocto] #yocto #kernel #zeus
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: steven.monsees@baesystems.com, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 04 Dec 2020 13:32:54 +0100
In-Reply-To: <MADEUP.164D829FD99DA22F.22997@lists.yoctoproject.org>
References: <MADEUP.164D829FD99DA22F.22997@lists.yoctoproject.org>
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1607085184;34ca5613;
X-HE-SMSGID: 1klAGi-0002Cx-B8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2020-12-04 at 12:17 +0000, Monsees, Steven C (US) via
lists.yoctoproject.org wrote:
>  
> I seem to have an issue initializing busybox.
> I have attached my error log… but basically busybox fails to compile
> when I set
>  
> CONFIG_FEATURE_MOUNT_NFS=y
>  

The log indicates that it is missing a dependency which ships
"rpc/rpc.h". Some googling turned up this discussion on the
openembedded-core mailing list:

https://lists.openembedded.org/g/openembedded-core/topic/72355602#111216

There is a final patch in the last mail of the topic, but it seems that
this config option is anyway only required for Linux < 2.6.23.

> If I modify my_cfg.cfg and remove the above parameter it compiles
> clean ,
> (I.E. “# CONFIG_FEATURE_MOUNT_NFS is not set”).
>  
> I am assuming my bbappend file is at fault, but do not see it. This
> setup works correctly under “rocko”, and if I disable
> “CONFIG_FEATURE_MOUNT_NFS” all appears correct…
>  
> Can someone tell me what is going on and how to correct ?
>  
> Thanks,
> Steve
>  
> This is my append file:
>  
> busybox_%.bbappend:
>  
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> FILESEXTRAPATHS_prepend := "${THISDIR}/busybox:"
>  
> SRC_URI_append += " \
>                 file://inetd.conf \
>                 file:// my_cfg.cfg \
>                 file://ftp.cfg \
>                 file://ftpd.cfg \
>                 file://hexdump.cfg \
>                 file://httpd.cfg \
>                 file://inetd.cfg \
>                 file://nc.cfg \
>                 file://telnetd.cfg \
>                 file://tftpd.cfg \
>                 file://coreutils.cfg \
>                 "
>  
> PACKAGES =+ "${@plnx_enable_busybox_package('inetd', d)}"
>  
> INITSCRIPT_PACKAGES =+ "${@plnx_enable_busybox_package('inetd', d)}"
>  
> FILES_${PN}-inetd = "${sysconfdir}/init.d/busybox-inetd
> ${sysconfdir}/inetd.conf"
> INITSCRIPT_NAME_${PN}-inetd = "inetd.busybox"
> INITSCRIPT_PARAMS_${PN}-inetd = "start 65 S ."
> CONFFILES_${PN}-inetd = "${sysconfdir}/inetd.conf"
>  
> RRECOMMENDS_${PN} =+ "${@bb.utils.contains('DISTRO_FEATURES',
> 'busybox-inetd', '${PN}-inetd', '', d)}"
>  
> def plnx_enable_busybox_package(f, d):
>     distro_features = (d.getVar('DISTRO_FEATURES', True) or
> "").split()
>     if "busybox-" + f in distro_features:
>         return "${PN}-" + f
>     else:
>         return ""
>  
> This is my platform specific config file:
>  
> my_cfg.cfg:
>  
> CONFIG_EXTRA_COMPAT=y
> CONFIG_INCLUDE_SUSv2=y
> CONFIG_FEATURE_VERBOSE_USAGE=y
> CONFIG_UNICODE_SUPPORT=y
> CONFIG_NICE=y
> CONFIG_SHA512SUM=y
> CONFIG_MKFS_VFAT=y
> CONFIG_FEATURE_TOP_SMP_CPU=y
> CONFIG_FEATURE_TOP_DECIMALS=y
> CONFIG_FEATURE_TOP_SMP_PROCESS=y
> CONFIG_FEATURE_TOPMEM=y
> CONFIG_FEATURE_MOUNT_VERBOSE=y
> CONFIG_FEATURE_MOUNT_HELPERS=y
> CONFIG_FEATURE_MOUNT_NFS=y <<<- if disabled, compiles clean
> CONFIG_FEATURE_MOUNT_CIFS=y
> CONFIG_WATCHDOG=y
> CONFIG_DEVMEM=y
> CONFIG_LSPCI=y
> # CONFIG_GZIP is not set
> # CONFIG_GUNZIP is not set
> # CONFIG_UNZIP is not set


