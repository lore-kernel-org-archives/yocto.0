Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CE56E00510
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 05:29:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rAJDTZ4f009507
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Nov 2013 05:29:36 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 19 Nov 2013 05:29:35 -0800
Message-ID: <528B67B9.8030505@windriver.com>
Date: Tue, 19 Nov 2013 08:29:29 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Zhenhua Luo <zhenhua.luo@freescale.com>, <yocto@yoctoproject.org>
References: <1384856869-10658-1-git-send-email-zhenhua.luo@freescale.com>
In-Reply-To: <1384856869-10658-1-git-send-email-zhenhua.luo@freescale.com>
Cc: b40290@freescale.com, b40527@freescale.com
Subject: Re: [meta-cloud-services][PATCH] erlang: skip the host library path check to fix cross-compile issue
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
X-List-Received-Date: Tue, 19 Nov 2013 13:29:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for the patch!

A couple of requests.

Can you list the compile issue here ? i.e. just a bit of the error
message showing it clearly. Someone else searching for a problem will
find it very useful!

On 13-11-19 05:27 AM, Zhenhua Luo wrote:
> Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
> ---
>   .../erlang/erlang-fix-build-issue-in-Yocto.patch   | 25 ++++++++++++++++++++++
>   .../recipes-devtools/erlang/erlang_R15B.bb         |  2 ++
>   2 files changed, 27 insertions(+)
>   create mode 100644 meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch
>
> diff --git a/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch b/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch
> new file mode 100644
> index 0000000..2d4b7b5
> --- /dev/null
> +++ b/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch
> @@ -0,0 +1,25 @@
> +Upstream-Status: Inappropriate [The fix is specific to Yocto build env]
> +
> +Skip host library path check to fix following Yocto insane check issue:
> +ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
> +Rerun configure task after fixing this.
> +
> +Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
> +
> +--- otp_src_R15B/erts/configure.in.orig	2011-12-14 04:22:11.000000000 -0600
> ++++ otp_src_R15B/erts/configure.in	2013-11-19 04:15:33.694334610 -0600
> +@@ -1469,10 +1469,10 @@
> + 	# ln -s libdlpi.so.1 $try_dlpi_lib/libdlpi.so
> + 	])
> +    fi
> +-   LDFLAGS="-L$try_dlpi_lib -R$try_dlpi_lib $LDFLAGS"
> +-   unset -v try_dlpi_lib
> +-   AC_MSG_NOTICE([Extending the search to include /lib])
> +-   AC_CHECK_LIB(dlpi, dlpi_open)
> ++#   LDFLAGS="-L$try_dlpi_lib -R$try_dlpi_lib $LDFLAGS"
> ++#   unset -v try_dlpi_lib
> ++#   AC_MSG_NOTICE([Extending the search to include /lib])
> ++#   AC_CHECK_LIB(dlpi, dlpi_open)
> +    if test x"$ac_cv_lib_dlpi_dlpi_open" = x"no"; then
> +       LDFLAGS="$save_ldflags"
> +    fi
> diff --git a/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb b/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> index 68d144b..8d8e28b 100644
> --- a/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> +++ b/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> @@ -9,6 +9,7 @@ EXTRA_OEMAKE = "BUILD_CC='${BUILD_CC}'"
>
>   EXTRA_OECONF = "--with-ssl=${STAGING_DIR_HOST}${layout_exec_prefix}"
>
> +EXTRA_OECONF_append_powerpc = " --disable-smp-support --disable-hipe"

This should be a separate patch. Can you split the commit and send
this as a two part series ?

Bruce

>   EXTRA_OECONF_append_arm = " --disable-smp-support --disable-hipe"
>   EXTRA_OECONF_append_armeb = " --disable-smp-support --disable-hipe"
>   EXTRA_OECONF_append_mipsel = " --disable-smp-support --disable-hipe"
> @@ -55,5 +56,6 @@ FILES_${PN}-staticdev += "${libdir}/*/*/*/*.a ${libdir}/*/*/*/*/*.a ${libdir}/*/
>
>   FILES_${PN}-libs-dbg += " ${libdir}/erlang/*/.debug ${libdir}/erlang/*/*/.debug ${libdir}/erlang/*/*/*/.debug ${libdir}/erlang/*/*/*/*/.debug ${libdir}/erlang/*/*/*/*/*/.debug "
>
> +SRC_URI += "file://erlang-fix-build-issue-in-Yocto.patch"
>   SRC_URI[md5sum] = "dd6c2a4807551b4a8a536067bde31d73"
>   SRC_URI[sha256sum] = "5bc34fc34fc890f84bae7ff1f7c81fbec2c9aa28a0ef51a57d7a8192204d8aa2"
>


