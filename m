Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D927EE00307
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 21:49:15 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2012 21:49:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104479599"
Received: from unknown (HELO [10.255.13.127]) ([10.255.13.127])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2012 21:49:15 -0800
Message-ID: <4F07DCDA.20209@linux.intel.com>
Date: Fri, 06 Jan 2012 21:49:14 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1325913610.git.tom.zanussi@intel.com>
	<ef75d749854732618ce999c79b3368aa46037ea8.1325913610.git.tom.zanussi@intel.com>
In-Reply-To: <ef75d749854732618ce999c79b3368aa46037ea8.1325913610.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] local.conf.sample.extended: add LICENSE_FLAGS_WHITELIST section
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
X-List-Received-Date: Sat, 07 Jan 2012 05:49:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/06/2012 09:23 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Add a new section for LICENSE_FLAGS_WHITELIST, containing a list of
> the current packages with LICENSE_FLAGS.
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>

Thanks!

Acked-by: Saul Wold <sgw@linux.intel.com>

> ---
>   meta-yocto/conf/local.conf.sample.extended |   13 +++++++++++++
>   1 files changed, 13 insertions(+), 0 deletions(-)
>
> diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
> index 7c26572..f44d7fa 100644
> --- a/meta-yocto/conf/local.conf.sample.extended
> +++ b/meta-yocto/conf/local.conf.sample.extended
> @@ -123,3 +123,16 @@
>   # The following is a list of classes to import to use in the generation of images
>   # currently an example class is image_types_uboot
>   # IMAGE_CLASSES = " image_types_uboot"
> +
> +# This is a list of packages that require a commercial license to ship
> +# product. If shipped as part of an image these packages may have
> +# implications so they are disabled by default.  To enable them,
> +# un-comment the below as appropriate.
> +#LICENSE_FLAGS_WHITELIST = "commercial_gst-fluendo-mp3 \
> +#                           commercial_gst-openmax \
> +#                           commercial_gst-plugins-ugly \
> +#                           commercial_lame \
> +#                           commercial_libmad \
> +#                           commercial_libomxil \
> +#                           commercial_mpeg2dec \
> +#                           commercial_qmmp"

