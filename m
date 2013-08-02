Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 507DAE0152B
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 18:26:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r721QWsU010527
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 1 Aug 2013 18:26:32 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Thu, 1 Aug 2013 18:26:32 -0700
Message-ID: <51FB0AC7.70008@windriver.com>
Date: Thu, 1 Aug 2013 20:26:31 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: Joe Slater <jslater@windriver.com>
References: <1375377906-6266-1-git-send-email-jslater@windriver.com>
In-Reply-To: <1375377906-6266-1-git-send-email-jslater@windriver.com>
Cc: yocto@yoctoproject.org, joe.slater@windriver.com
Subject: Re: [meta-selinux][PATCH 1/1] policycoreutils: fix genhomedircon construction
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
X-List-Received-Date: Fri, 02 Aug 2013 01:26:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/1/13 12:25 PM, Joe Slater wrote:
> CQID: 418197
>
> Reference /usr/sbin instead of the directory into which
> the script is installed on the host.

This patch and the related audit patch have been applied to both master and 
dylan branches.  Thanks!

--Mark

> Signed-off-by: Joe Slater <jslater@windriver.com>
> ---
>   .../selinux/policycoreutils/scripts_makefile.patch |   26 ++++++++++++++++++++
>   recipes-security/selinux/policycoreutils_2.1.13.bb |    3 +-
>   2 files changed, 28 insertions(+), 1 deletions(-)
>   create mode 100644 recipes-security/selinux/policycoreutils/scripts_makefile.patch
>
> diff --git a/recipes-security/selinux/policycoreutils/scripts_makefile.patch b/recipes-security/selinux/policycoreutils/scripts_makefile.patch
> new file mode 100644
> index 0000000..8972474
> --- /dev/null
> +++ b/recipes-security/selinux/policycoreutils/scripts_makefile.patch
> @@ -0,0 +1,26 @@
> +policycoreutils: fix genhomedircon generation
> +
> +The script is put on the target and needs to reference
> +the directory in which semodule is installed.
> +
> +Upstream Status: pending
> +
> +Signed-off-by: Joe Slater <jslater@windriver.com>
> +
> +--- a/scripts/Makefile
> ++++ b/scripts/Makefile
> +@@ -8,11 +8,12 @@ LOCALEDIR ?= $(PREFIX)/share/locale
> +
> + all: fixfiles genhomedircon chcat
> +
> ++# we want the script to use the user sbin directory on the target
> ++#
> + genhomedircon:
> + 	@echo "#!/bin/sh" > genhomedircon
> + 	@echo >> genhomedircon
> +-	@if [ ! -e semodule_path ]; then echo -n "$(USRSBINDIR)/" >> genhomedircon; fi
> +-	@if [ -e semodule_path ]; then echo -n "`cat semodule_path`/" >> genhomedircon; fi
> ++	@echo -n "$(sbindir)/" >> genhomedircon
> + 	@echo "semodule -Bn" >> genhomedircon
> +
> + install: all
> diff --git a/recipes-security/selinux/policycoreutils_2.1.13.bb b/recipes-security/selinux/policycoreutils_2.1.13.bb
> index 6696357..687347c 100644
> --- a/recipes-security/selinux/policycoreutils_2.1.13.bb
> +++ b/recipes-security/selinux/policycoreutils_2.1.13.bb
> @@ -1,4 +1,4 @@
> -PR = "r2"
> +PR = "r3"
>
>   include selinux_20120924.inc
>   include ${BPN}.inc
> @@ -11,4 +11,5 @@ SRC_URI[sha256sum] = "34040f06f3111d9ee957576e4095841d35b9ca9141ee8d80aab036cbef
>   SRC_URI += "\
>   	file://policycoreutils-revert-restorecon-update-type.patch \
>   	file://policycoreutils-revert-run_init-open_init_pty.patch \
> +	file://scripts_makefile.patch \
>   	"
>


