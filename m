Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30FB5E00D81; Mon, 28 Sep 2015 08:13:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13838E006EA
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 08:12:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9E337F81199; Mon, 28 Sep 2015 09:12:55 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A89FDF81199;
	Mon, 28 Sep 2015 09:12:54 -0600 (MDT)
To: yocto@yoctoproject.org
References: <1443360854-14668-1-git-send-email-toolmmy@googlemail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560958FF.4030200@mlbassoc.com>
Date: Mon, 28 Sep 2015 09:13:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1443360854-14668-1-git-send-email-toolmmy@googlemail.com>
Subject: Re: [meta-raspberrypi][PATCH] userland: Fix multiple inline issues while building with gcc 5.x
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
X-List-Received-Date: Mon, 28 Sep 2015 15:13:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-27 07:34, Tom Doehring wrote:
> Building userland source with gcc 5.x causes multiple issues such as:
>
> vcos_thread.h:186:15: warning: inline function 'vcos_thread_get_affinity' declared but never defined
> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
>
> The following patches fixes these issues and allows building userland on the current
> poky master branch.

Are these patches compatible with older GCC, or does having them
require using GCC-5?

>
> Signed-off-by: Tom Doehring <toolmmy@googlemail.com>
> ---
>   .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ----------------------
>   .../userland/0001-fix-gcc-5.x-inlines.patch        | 26 ++++++++++++++++
>   .../userland/userland/0002-fix-musl-build.patch    | 22 ++++++++++++++
>   .../0003-fix-alloc-size-uninitialized.patch        | 13 ++++++++
>   recipes-graphics/userland/userland_git.bb          | 13 +++++---
>   5 files changed, 70 insertions(+), 39 deletions(-)
>   delete mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
>   create mode 100644 recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
>   create mode 100644 recipes-graphics/userland/userland/0002-fix-musl-build.patch
>   create mode 100644 recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
>
> diff --git a/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch b/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
> deleted file mode 100644
> index 2a092c2..0000000
> --- a/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -From 12f7718bb0e08e2c06825c7ab7541b3c5bfe74c1 Mon Sep 17 00:00:00 2001
> -From: Khem Raj <raj.khem@gmail.com>
> -Date: Sun, 9 Aug 2015 08:55:05 -0700
> -Subject: [PATCH] Use newer POSIX macro
> -
> -Define _POSIX_C_SOURCE such that it demands correct
> -posix interfaces, netdb.h declares interfaces such as
> -getaddrinfo if __USE_POSIX, i.e. POSIX.1:1990 or later.
> -However, these interfaces were new in the 2001 edition of POSIX
> -therefore ask for Extension from POSIX.1:2001 since we use addrinfo
> -structure here.
> -
> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ----
> -Upstream-Status: Submitted
> -
> - containers/CMakeLists.txt | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/containers/CMakeLists.txt b/containers/CMakeLists.txt
> -index a29a885..5570038 100644
> ---- a/containers/CMakeLists.txt
> -+++ b/containers/CMakeLists.txt
> -@@ -13,7 +13,7 @@ add_definitions(-DDL_PATH_PREFIX="${VMCS_PLUGIN_DIR}/")
> -
> - SET( GCC_COMPILER_FLAGS -Wall -g -O2 -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wcast-qual -Wwrite-strings -Wundef )
> - SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wextra )#-Wno-missing-field-initializers )
> --SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=199309L )
> -+SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=200112L )
> - SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-missing-field-initializers )
> - SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-unused-value )
> -
> ---
> -2.1.4
> -
> diff --git a/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch b/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
> new file mode 100644
> index 0000000..57f3518
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
> @@ -0,0 +1,26 @@
> +--- userland-fb11b39d97371c076eef7c85bbcab5733883a41e.orig/interface/vcos/vcos_types.h
> ++++ userland-fb11b39d97371c076eef7c85bbcab5733883a41e/interface/vcos/vcos_types.h
> +@@ -121,10 +121,10 @@
> + #if defined(NDEBUG)
> +
> + #ifdef __GNUC__
> +-# define VCOS_INLINE_DECL extern __inline__
> ++# define VCOS_INLINE_DECL extern
> + # define VCOS_INLINE_IMPL static __inline__
> + #else
> +-# define VCOS_INLINE_DECL static _VCOS_INLINE   /* declare a func */
> ++# define VCOS_INLINE_DECL extern
> + # define VCOS_INLINE_IMPL static _VCOS_INLINE   /* implement a func inline */
> + #endif
> +
> +--- userland-fb11b39d97371c076eef7c85bbcab5733883a41e.orig/interface/vcos/pthreads/vcos_platform_types.h
> ++++ userland-fb11b39d97371c076eef7c85bbcab5733883a41e/interface/vcos/pthreads/vcos_platform_types.h
> +@@ -61,7 +61,7 @@
> + #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
> +
> + #define VCOS_INLINE_BODIES
> +-#define VCOS_INLINE_DECL extern __inline__
> ++#define VCOS_INLINE_DECL extern
> + #define VCOS_INLINE_IMPL static __inline__
> +
> + #ifdef __cplusplus
> diff --git a/recipes-graphics/userland/userland/0002-fix-musl-build.patch b/recipes-graphics/userland/userland/0002-fix-musl-build.patch
> new file mode 100644
> index 0000000..2fb11e7
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0002-fix-musl-build.patch
> @@ -0,0 +1,22 @@
> +--- userland-d4aa617de3b196399bb8e2ce32e181768cb52179.orig/host_applications/linux/apps/raspicam/RaspiVidYUV.c
> ++++ userland-d4aa617de3b196399bb8e2ce32e181768cb52179/host_applications/linux/apps/raspicam/RaspiVidYUV.c
> +@@ -106,8 +106,6 @@
> + /// Run/record forever
> + #define WAIT_METHOD_FOREVER        4
> +
> +-extern FILE *stderr, *stdout;
> +-
> + int mmal_status_to_int(MMAL_STATUS_T status);
> + static void signal_handler(int signal_number);
> +
> +--- userland-d4aa617de3b196399bb8e2ce32e181768cb52179.orig/host_applications/linux/libs/debug_sym/debug_sym.c
> ++++ userland-d4aa617de3b196399bb8e2ce32e181768cb52179/host_applications/linux/libs/debug_sym/debug_sym.c
> +@@ -67,6 +67,8 @@
> + # else
> + #  define PAGE_SIZE   4096
> + # endif
> ++#endif
> ++#ifndef PAGE_MASK
> + #define PAGE_MASK   (~(PAGE_SIZE - 1))
> + #endif
> +
> diff --git a/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch b/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
> new file mode 100644
> index 0000000..7dd6436
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
> @@ -0,0 +1,13 @@
> +diff --git a/host_applications/linux/apps/smem/smem.c b/host_applications/linux/apps/smem/smem.c
> +index f780b79..618580e 100644
> +--- a/host_applications/linux/apps/smem/smem.c
> ++++ b/host_applications/linux/apps/smem/smem.c
> +@@ -192,7 +192,7 @@ int main( int argc, char **argv )
> +    int  opt;
> +    int  opt_alloc = 0;
> +    int  opt_status = 0;
> +-   uint32_t alloc_size;
> ++   uint32_t alloc_size = 0;
> +    int  opt_pid = -1;
> +    VCSM_STATUS_T status_mode = VCSM_STATUS_NONE;
> +
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 2b3286a..e431077 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -9,15 +9,20 @@ PR = "r5"
>
>   PROVIDES = "virtual/libgles2 \
>               virtual/egl"
> +
>   COMPATIBLE_MACHINE = "raspberrypi"
>
>   SRCBRANCH = "master"
>   SRCFORK = "raspberrypi"
> -SRCREV = "c2f27fb8e581f8e5af83bf28422553ade8f7a7c8"
> +SRCREV = "cc92dfd6c4e8e2d90c3903dccfe77f7274b8d1b7"
> +
> +SRC_URI = "\
> +    git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> +    file://0001-fix-gcc-5.x-inlines.patch \
> +    file://0002-fix-musl-build.patch \
> +    file://0003-fix-alloc-size-uninitialized.patch \
> +    "
>
> -SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> -           file://0001-Use-newer-POSIX-macro.patch \
> -          "
>   S = "${WORKDIR}/git"
>
>   inherit cmake
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

