Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BEF5E002AB
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 22:27:04 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2012 22:27:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,298,1352102400"; d="scan'208";a="171285705"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Nov 2012 22:26:58 -0800
Message-ID: <1353565617.7717.154.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Nov 2012 00:26:57 -0600
In-Reply-To: <1353530214-3748-1-git-send-email-raj.khem@gmail.com>
References: <1353530214-3748-1-git-send-email-raj.khem@gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][danny][PATCH V2] mesa-dri_8.0.4.bbappend: Remove tabs from python code
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
X-List-Received-Date: Thu, 22 Nov 2012 06:27:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-11-21 at 12:36 -0800, Khem Raj wrote:
> check for xserver to be non-empty before using it
> fixed errors like
> 
> ERROR: Failed to parse recipe:
> /b/kraj/yocto/poky/meta/recipes-graphics/mesa/mesa-dri_8.0.4.bb
> ERROR: Error executing a python function in <code>:
> AttributeError: 'NoneType' object has no attribute 'split'
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

Pulled into meta-intel/master and meta-intel/danny-next.

Thanks,

Tom

> ---
>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |    8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> index 6bfa968..b92831d 100644
> --- a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> +++ b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> @@ -6,13 +6,13 @@
>  python __anonymous () {
>      import re
>      xserver = d.getVar('XSERVER', True)
> -    if 'emgd-driver-bin' in xserver.split(' '):
> +    if xserver and 'emgd-driver-bin' in xserver.split(' '):
>          extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
> -	take_out = ["--enable-egl", "--enable-gles1", "--enable-gles2"]
> -	put_in = ["--disable-egl", "--disable-gles1", "--disable-gles2"]
> +        take_out = ["--enable-egl", "--enable-gles1", "--enable-gles2"]
> +        put_in = ["--disable-egl", "--disable-gles1", "--disable-gles2"]
>          pattern = re.compile("--with-egl-platforms")
>          new_extra_oeconf = [ ]
> -	for i in extra_oeconf:
> +        for i in extra_oeconf:
>              if ( i not in take_out ) and ( not pattern.match(i)):
>                  new_extra_oeconf.append(i)
>          for i in put_in:



