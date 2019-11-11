Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07AB7E00D33; Mon, 11 Nov 2019 00:57:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 681F3E0053F
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 00:57:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAB8v8Tm013701
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 00:57:08 -0800
Received: from [128.224.158.194] (128.224.158.194) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Mon, 11 Nov 2019 00:57:08 -0800
To: <yocto@yoctoproject.org>
References: <1568707486-382596-1-git-send-email-changqing.li@windriver.com>
	<1568707486-382596-2-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <a81adac3-e7f6-83d8-4c13-3ecf2c043c68@windriver.com>
Date: Mon, 11 Nov 2019 16:57:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1568707486-382596-2-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.158.194]
Subject: Re: [meta-cgl][PATCH 2/2] ocfs2-tools: Remove lsb from RDEPENDS
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
X-List-Received-Date: Mon, 11 Nov 2019 08:57:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

ping

On 9/17/19 4:04 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> The lsb had been removed from oe-core, and the "systemctl start o2cb/ocfs2"
> works well after patched, when systemd (no /etc/init.d/functions, either), so
> remove the unneeded line.
>
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   ...sh-Remove-unneeded-lib-lsb-init-functions.patch | 32 ++++++++++++++++++++++
>   .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb   |  7 ++---
>   2 files changed, 34 insertions(+), 5 deletions(-)
>   create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch
>
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch
> new file mode 100644
> index 0000000..5609b4b
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch
> @@ -0,0 +1,32 @@
> +From b7913a62e2d78fa98ae2c475de4cc697519181e2 Mon Sep 17 00:00:00 2001
> +From: Robert Yang <liezhi.yang@windriver.com>
> +Date: Tue, 10 Sep 2019 19:29:16 -0700
> +Subject: [PATCH] o2cb.init.sh: Remove unneeded /lib/lsb/init-functions
> +
> +The "systemctl start o2cb/ocfs2" works well when systemd (no
> +/etc/init.d/functions, either), so remove the unneeded line.
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> +---
> + vendor/common/o2cb.init.sh | 3 ---
> + 1 file changed, 3 deletions(-)
> +
> +diff --git a/vendor/common/o2cb.init.sh b/vendor/common/o2cb.init.sh
> +index 8b0dbf09..49eb9a4c 100755
> +--- a/vendor/common/o2cb.init.sh
> ++++ b/vendor/common/o2cb.init.sh
> +@@ -25,9 +25,6 @@ then
> + start_daemon () {
> +     daemon  $*
> + }
> +-else
> +-# Let's try to use the LSB functions
> +-. /lib/lsb/init-functions
> + fi
> +
> + if [ $? != 0 ]
> +--
> +2.21.0
> +
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
> index a0376ec..d64c868 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
> @@ -21,6 +21,7 @@ SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
>       file://ocfs2.service \
>       file://0001-Fix-build-with-glibc-2.28.patch \
>       file://0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch \
> +    file://0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch \
>   "
>   SRCREV = "f1b4d073f08679f97b64b3eb88e586032f92a701"
>   S = "${WORKDIR}/git"
> @@ -32,11 +33,7 @@ DEPENDS = "corosync pacemaker \
>       e2fsprogs e2fsprogs-native \
>   "
>   
> -# lsbinitscripts are needed to replace /etc/init.d/functions supplied by initscripts (systemv)
> -# They are not the same code!
> -#
> -RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0 \
> -                  ${@bb.utils.contains('DISTRO_FEATURES','systemd','lsbinitscripts','',d)}"
> +RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
>   
>   ASNEEDED_pn-${PN} = ""
>   PARALLEL_MAKE = ""

