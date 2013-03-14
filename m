Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409C9E01460;
	Thu, 14 Mar 2013 14:14:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2ELEdbu015875
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Mar 2013 14:14:39 -0700 (PDT)
Received: from [128.224.22.72] (128.224.22.72) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 14 Mar 2013 14:14:39 -0700
Message-ID: <51423DBA.1070608@windriver.com>
Date: Thu, 14 Mar 2013 14:14:34 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_WLRVObY-EuECAaF4UyCS8x9DJsHOhn9p45EhurS5g8g@mail.gmail.com>
In-Reply-To: <CACzyEJ_WLRVObY-EuECAaF4UyCS8x9DJsHOhn9p45EhurS5g8g@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [PATCH] [meta-realtime] Add rt-app and define core-image-realtime
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
X-List-Received-Date: Thu, 14 Mar 2013 21:14:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-14 12:52 PM, Insop Song wrote:
> Hi Bruce,
>
> This is for adding rt-app, please let me know what you think.
> For next patch, I will add schedtool_dl

Reading this more closely, can you split this into two patches ?
We need to review this in chunks, patch 1 for the rt-app (it
looks fine), and another for the image definition ?

oe-core already has core-image-rt and core-image-rt-sdk, so the
naming and content here will be a bit confusing. We should
determine where we want the image definition, and if we can
simply extend the oe-core ones versus introducing new ones.

Cheers,

Bruce

>
> Regards,
>
> Insop
>
> ----------------------------------------------------------------------------------
>
> - "rt-app" is a test application that starts multiple periodic threads
>    in order to simulate a real-time periodic load
>
>    - run example
>
>    root@qemux86:~# rt-app -t 100000:35000:d -D 1
>    [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
>    [rt-app] <notice> [0] starting thread with period: 100000, exec:
>    35000,deadline: 100000, priority: 10
>    [rt-app] <notice> [0] Locking pages in memory
>    deadline	dur.	slack	Budget	Used Budget
>    0	100000	35000	35000	64705	305724113	305759126
>    305824105	35013	64979
>    0	100000	35000	35000	165100	305824508	305859531
>    ....
>    0	100000	35000	35000	864955	306524363	306559381
>    306624105	35019	64724
>    0	100000	35000	35000	965099	306624507	306659526
>    306724105	35019	64578
>    [rt-app] <notice> [0] Exiting.
> ---
>   recipes-extended/images/core-image-realtime.bb     |   12 +++++++++
>   ...adline-as-a-default-to-go-around-yocto-bu.patch |   26 ++++++++++++++++++
>   recipes-tools/rt-app/rt-app.bb                     |   28 ++++++++++++++++++++
>   3 files changed, 66 insertions(+)
>   create mode 100644 recipes-extended/images/core-image-realtime.bb
>   create mode 100644
> recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
>   create mode 100644 recipes-tools/rt-app/rt-app.bb
>
> diff --git a/recipes-extended/images/core-image-realtime.bb
> b/recipes-extended/images/core-image-realtime.bb
> new file mode 100644
> index 0000000..624aacf
> --- /dev/null
> +++ b/recipes-extended/images/core-image-realtime.bb
> @@ -0,0 +1,12 @@
> +require recipes-core/images/core-image-minimal-dev.bb
> +
> +DEPENDS = "linux-yocto"
> +
> +IMAGE_FEATURES += "package-management ssh-server-dropbear"
> +EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
> +
> +IMAGE_INSTALL = "\
> +	${CORE_IMAGE_BASE_INSTALL} \
> +	rt-app \
> +	libgcc \
> +	"
> diff --git a/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
> b/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
> new file mode 100644
> index 0000000..a697e89
> --- /dev/null
> +++ b/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
> @@ -0,0 +1,26 @@
> +From 041b2b65889c44c47f90313c5bf9ce61effa96df Mon Sep 17 00:00:00 2001
> +From: Insop Song <insop.song@gmail.com>
> +Date: Sat, 9 Mar 2013 01:23:24 -0800
> +Subject: [PATCH] set "--with-deadline" as a default to go around yocto build
> + error on deadline enabled
> +
> +---
> + configure.ac |    2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index a5e2990..64e57e4 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -34,7 +34,7 @@ AC_ARG_WITH([deadline],
> + 	[AS_HELP_STRING([--with-deadline],
> +          [Add support for SCHED_DEADLINE])],
> + 	[],
> +-	[with_deadline=no])
> ++	[with_deadline=yes])
> +
> + AS_IF([test "x$with_deadline" != xno],
> + 	[AC_DEFINE([DLSCHED], [1], [Define if you have SCHED_DEADLINE support])
> +--
> +1.7.9.5
> +
> diff --git a/recipes-tools/rt-app/rt-app.bb b/recipes-tools/rt-app/rt-app.bb
> new file mode 100644
> index 0000000..acce437
> --- /dev/null
> +++ b/recipes-tools/rt-app/rt-app.bb
> @@ -0,0 +1,28 @@
> +DESCRIPTION = "rt-app is a test application that starts multiple
> periodic threads in order to simulate a real-time periodic load"
> +SECTION = "devel"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM =
> "file://COPYING;endline=339;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
> +PR = "r1"
> +
> +SRCREV = "e81cbe9f76ee298feded17bb7455d4deb2fb32af"
> +
> +SRC_URI = "git://github.com/gbagnoli/rt-app.git \
> +	file://0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch \
> +	"
> +
> +S = "${WORKDIR}/git"
> +
> +inherit autotools gettext pkgconfig
> +
> +do_configure_prepend() {
> +	autoreconf --install --verbose --force
> +}
> +
> +do_install() {
> +     	install -d ${D}${bindir}
> +     	install -m 0755 src/rt-app ${D}${bindir}
> +}
> +
> +FILES_{PN} = "${bindir}/rt-app"
> +
> +PARALLEL_MAKE = ""
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


