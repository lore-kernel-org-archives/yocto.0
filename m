Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D7ADE01565
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 15:23:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2013 15:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,939,1363158000"; d="scan'208";a="335471180"
Received: from unknown (HELO [10.255.13.73]) ([10.255.13.73])
	by orsmga001.jf.intel.com with ESMTP; 25 Jun 2013 15:23:37 -0700
Message-ID: <1372199017.9056.3.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 25 Jun 2013 17:23:37 -0500
In-Reply-To: <1372178712-19450-1-git-send-email-ross.burton@intel.com>
References: <1372178712-19450-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] lms8: handle different host setups
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
X-List-Received-Date: Tue, 25 Jun 2013 22:23:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-06-25 at 17:45 +0100, Ross Burton wrote:
> The configure script looks at the *host* environment to decide where to install
> the init script, so it's location at packaging time can change.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Pulled into meta-intel/master.

Thanks,

Tom

> ---
>  common/recipes-bsp/amt/lms8_8.0.0-7.bb |    8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/common/recipes-bsp/amt/lms8_8.0.0-7.bb b/common/recipes-bsp/amt/lms8_8.0.0-7.bb
> index fbb4e45..65c413a 100644
> --- a/common/recipes-bsp/amt/lms8_8.0.0-7.bb
> +++ b/common/recipes-bsp/amt/lms8_8.0.0-7.bb
> @@ -26,7 +26,13 @@ INITSCRIPT_PARAMS = "defaults"
>  do_install_append () {
>  	mv ${D}/${sbindir}/lms ${D}/${sbindir}/lms8
>  	install -d ${D}${sysconfdir}/init.d
> -	mv ${D}${sysconfdir}/rc.d/init.d/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
> +	# The configure script looks at the host to decide where to put init
> +	# scripts, so move it at the same time as renaming it.
> +	if test -f ${D}${sysconfdir}/rc.d/init.d/lms ; then
> +		mv ${D}${sysconfdir}/rc.d/init.d/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
> +	else
> +		mv ${D}${sysconfdir}/init.d/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
> +	fi
>  	sed -i 's/^NAME=lms/NAME=lms8/' ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
>  	rmdir ${D}${datadir} || :
>  }



