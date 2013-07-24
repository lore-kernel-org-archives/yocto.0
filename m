Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A55E2E01525
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 00:31:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 24 Jul 2013 00:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,733,1367996400"; d="scan'208";a="370087186"
Received: from sorvi.fi.intel.com (HELO [10.237.72.152]) ([10.237.72.152])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jul 2013 00:31:32 -0700
Message-ID: <51EF82D3.1010305@linux.intel.com>
Date: Wed, 24 Jul 2013 10:31:31 +0300
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Christian Gagneraud <chgans@gna.org>
References: <51EF4137.80107@gna.org>
In-Reply-To: <51EF4137.80107@gna.org>
Cc: yocto@yoctoproject.org
Subject: Re: Generating an image with systemd and connman
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Jul 2013 07:31:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Christian,

On 24.07.2013 05:51, Christian Gagneraud wrote:
> Hi there,
>
> I have successfully generated Dylan core-image-minimal with the meta-ti
> layer. I would like to know what is the procedure to select systemd for
> the init process and connman as the network manager.
>
> It seems to me that systemd can be selected using EXTRA_IMAGE_FEATURES
> from local.conf (at least with the poky distro)
> The Yocto dev manual mention using DISTRO_FEATURES_append but it is
> usable when creating a custom distro.

I have

VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = ""
DISTRO_FEATURES_append = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED="sysvinit"

in my distro conf file and after that the generated system does only 
systemd. But I am creating a custom distro so I am not sure if these 
settings are any help for you.


Cheers,
Jukka


