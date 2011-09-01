Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CED1AE01211
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 10:20:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Sep 2011 10:19:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44445619"
Received: from unknown (HELO [10.255.14.3]) ([10.255.14.3])
	by orsmga001.jf.intel.com with ESMTP; 01 Sep 2011 10:19:49 -0700
Message-ID: <4E5FBEB5.8080407@linux.intel.com>
Date: Thu, 01 Sep 2011 10:19:49 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <24a30eaf49c25c0b5d8b5d7405691c6c1b67588d.1314844442.git.dvhart@linux.intel.com>
In-Reply-To: <24a30eaf49c25c0b5d8b5d7405691c6c1b67588d.1314844442.git.dvhart@linux.intel.com>
Subject: Re: [PATCH][meta-intel] grub: remove the dependency on freetype, disable grub-mkfont
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
X-List-Received-Date: Thu, 01 Sep 2011 17:20:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Seeing this change reminded me that we really should move grub_1.98 to 
oe-core, is there any objection to this?  Any reason this should not be 
part of oe-core to support general x86_64 machines?

Sau!


On 08/31/2011 07:34 PM, Darren Hart wrote:
> Grub's configure task was picking up the host freetype libraries if
> bitbake hadn't gotten around building freetype yet. We could add a
> dependency on freetype, but it's only used for the optional grub-mkfont
> utility which we don't really need.
>
> Disable grub-mkfont via EXTRA_OECONF, removing the dependency on freetype.
>
> Testing: core-image-minimal build and install on sugarbay.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> Tested-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   common/recipes-bsp/grub/grub_1.98.bb |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/common/recipes-bsp/grub/grub_1.98.bb b/common/recipes-bsp/grub/grub_1.98.bb
> index 0cd3a40..802733f 100644
> --- a/common/recipes-bsp/grub/grub_1.98.bb
> +++ b/common/recipes-bsp/grub/grub_1.98.bb
> @@ -24,7 +24,7 @@ SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz \
>   inherit autotools
>   inherit gettext
>
> -EXTRA_OECONF = "--with-platform=pc --target=i386"
> +EXTRA_OECONF = "--with-platform=pc --target=i386 --disable-grub-mkfont"
>
>   do_configure() {
>       oe_runconf

