Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21475E003E4
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 20:42:49 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Feb 2012 20:42:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="106336949"
Received: from unknown (HELO envy.home) ([10.255.14.253])
	by orsmga001.jf.intel.com with ESMTP; 10 Feb 2012 20:42:48 -0800
Message-ID: <4F35C3A3.1060003@linux.intel.com>
Date: Fri, 10 Feb 2012 17:25:55 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: josh@linux.intel.com
References: <1328920359-18646-1-git-send-email-josh@linux.intel.com>
In-Reply-To: <1328920359-18646-1-git-send-email-josh@linux.intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] netbase: put sys940x specific interfaces file in MACHINE directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 Feb 2012 04:42:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/10/2012 04:32 PM, josh@linux.intel.com wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> Move the interfaces file to a MACHINE appropriate subdirectory of
> files so that:
> a) base.bbclass appropriately marks the resultant package MACHINE
> specific.
> b) builds for alternative MACHINES whilst this layer is enabled
> don't get the sys940x interfaces file
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> CC: Darren Hart <dvhart@linux.intel.com>

Thanks Josh, applied. Will push next time I'm connected.

--
Darren

> ---
>  meta-sys940x/recipes-core/netbase/files/interfaces |   10 ----------
>  .../netbase/files/sys940x-noemgd/interfaces        |   10 ++++++++++
>  .../recipes-core/netbase/files/sys940x/interfaces  |   10 ++++++++++
>  .../recipes-core/netbase/netbase_4.47.bbappend     |    2 +-
>  4 files changed, 21 insertions(+), 11 deletions(-)
>  delete mode 100644 meta-sys940x/recipes-core/netbase/files/interfaces
>  create mode 100644 meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces
>  create mode 100644 meta-sys940x/recipes-core/netbase/files/sys940x/interfaces
> 
> diff --git a/meta-sys940x/recipes-core/netbase/files/interfaces b/meta-sys940x/recipes-core/netbase/files/interfaces
> deleted file mode 100644
> index 4218f5d..0000000
> --- a/meta-sys940x/recipes-core/netbase/files/interfaces
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
> - 
> -# The loopback interface
> -auto lo
> -iface lo inet loopback
> -
> -# Wired or wireless interfaces
> -auto eth0
> -iface eth0 inet dhcp
> -    hwaddress ether RANDOM_MAC
> diff --git a/meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces b/meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces
> new file mode 100644
> index 0000000..4218f5d
> --- /dev/null
> +++ b/meta-sys940x/recipes-core/netbase/files/sys940x-noemgd/interfaces
> @@ -0,0 +1,10 @@
> +# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
> + 
> +# The loopback interface
> +auto lo
> +iface lo inet loopback
> +
> +# Wired or wireless interfaces
> +auto eth0
> +iface eth0 inet dhcp
> +    hwaddress ether RANDOM_MAC
> diff --git a/meta-sys940x/recipes-core/netbase/files/sys940x/interfaces b/meta-sys940x/recipes-core/netbase/files/sys940x/interfaces
> new file mode 100644
> index 0000000..4218f5d
> --- /dev/null
> +++ b/meta-sys940x/recipes-core/netbase/files/sys940x/interfaces
> @@ -0,0 +1,10 @@
> +# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
> + 
> +# The loopback interface
> +auto lo
> +iface lo inet loopback
> +
> +# Wired or wireless interfaces
> +auto eth0
> +iface eth0 inet dhcp
> +    hwaddress ether RANDOM_MAC
> diff --git a/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
> index 6d3f694..e01e0b6 100644
> --- a/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
> +++ b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>  RDEPENDS_${PN} += "genmac"
> -PRINC := "${@int(PRINC) + 1}"
> +PRINC := "${@int(PRINC) + 2}"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

