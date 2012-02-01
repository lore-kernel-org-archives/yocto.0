Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1171E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:52:48 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2012 14:52:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113018854"
Received: from unknown (HELO [10.255.14.103]) ([10.255.14.103])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 14:52:48 -0800
Message-ID: <4F29C23F.5070801@linux.intel.com>
Date: Wed, 01 Feb 2012 14:52:47 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<d40c099c9dced8365653e7cef02108e03ab4bfdf.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <d40c099c9dced8365653e7cef02108e03ab4bfdf.1328135056.git.dvhart@linux.intel.com>
Subject: Re: [pull-sys940x 4/4] netbase: Add interfaces with RANDOM_MAC for sys940x* machines
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
X-List-Received-Date: Wed, 01 Feb 2012 22:52:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 01/02/12 14:26, Darren Hart wrote:
> These machines have no MAC in the hardware and require that it
> be set manually. Specify RANDOM_MAC for the eth0 interface which
> the genmac init script will replace with RANDOM_MAC on first boot.

My concern with this patch is that iirc netbase isn't MACHINE specific - 
so if I have this layer enabled and build for another core2 machine I'll 
get these changes there too.

I don't know what the "right" solution to that is, though I muse some 
more below.

> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta-sys940x/recipes-core/netbase/files/interfaces |   10 ++++++++++
>   .../recipes-core/netbase/netbase_4.47.bbappend     |    3 +++
>   2 files changed, 13 insertions(+), 0 deletions(-)
>   create mode 100644 meta-sys940x/recipes-core/netbase/files/interfaces
>   create mode 100644 meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
>
> diff --git a/meta-sys940x/recipes-core/netbase/files/interfaces b/meta-sys940x/recipes-core/netbase/files/interfaces
> new file mode 100644
> index 0000000..4218f5d
> --- /dev/null
> +++ b/meta-sys940x/recipes-core/netbase/files/interfaces
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
> new file mode 100644
> index 0000000..6d3f694
> --- /dev/null
> +++ b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +RDEPENDS_${PN} += "genmac"

We can use a MACHINE specific override here, I think.

RDEPENDS_${PN}_sys940x += "genmac"

Ideally we don't want that interfaces file on non-sys940x machines, 
perhaps we could name the interfaces file differently and add a 
do_install_append_sys940x which installs the MACHINE specific interface 
file?

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

