Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B283BE00799; Tue, 12 Aug 2014 08:08:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A57DE006EF
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 08:08:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Aug 2014 08:08:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,849,1400050800"; d="scan'208";a="467877310"
Received: from unknown (HELO [10.255.12.111]) ([10.255.12.111])
	by azsmga001.ch.intel.com with ESMTP; 12 Aug 2014 08:07:52 -0700
Message-ID: <53EA2DC8.407@linux.intel.com>
Date: Tue, 12 Aug 2014 08:07:52 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Sujith H <sujith.h@gmail.com>, yocto@yoctoproject.org
References: <1407751229-13058-1-git-send-email-sujith.h@gmail.com>
In-Reply-To: <1407751229-13058-1-git-send-email-sujith.h@gmail.com>
Cc: Sujith H <Sujith_Haridasan@mentor.com>,
	Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Subject: Re: [PATCH] psplash: Adding support for systemd service files
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
X-List-Received-Date: Tue, 12 Aug 2014 15:08:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Maybe I was not clear about this, this should be a patch to psplash 
upstream, not to the oe-core metadata.  Then once we merge the change to 
psplash we can update the pslash recipes.

So the patch would be to add the 2 service files to psplash upstream.

http://git.yoctoproject.org/cgit/cgit.cgi/psplash/

Make Sense?

Sau!


On 08/11/2014 03:00 AM, Sujith H wrote:
> From: Sujith H <Sujith_Haridasan@mentor.com>
>
> If the DISTRO_FEATURES has systemd, then its better
> to have corresponding service files associated with
> the psplash. This change will help to do the same.
>
> Signed-off-by: Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>   meta/recipes-core/psplash/files/psplash-quit.service  | 11 +++++++++++
>   meta/recipes-core/psplash/files/psplash-start.service | 11 +++++++++++
>   meta/recipes-core/psplash/psplash_git.bb              | 12 +++++++++++-
>   3 files changed, 33 insertions(+), 1 deletion(-)
>   create mode 100644 meta/recipes-core/psplash/files/psplash-quit.service
>   create mode 100644 meta/recipes-core/psplash/files/psplash-start.service
>
> diff --git a/meta/recipes-core/psplash/files/psplash-quit.service b/meta/recipes-core/psplash/files/psplash-quit.service
> new file mode 100644
> index 0000000..14bd499
> --- /dev/null
> +++ b/meta/recipes-core/psplash/files/psplash-quit.service
> @@ -0,0 +1,11 @@
> +[Unit]
> +Description=Terminate Psplash Boot Screen
> +After=psplash-start.service
> +
> +[Service]
> +Type=oneshot
> +ExecStart=/usr/bin/psplash-write QUIT
> +TimeoutSec=20
> +
> +[Install]
> +WantedBy=multi-user.target
> diff --git a/meta/recipes-core/psplash/files/psplash-start.service b/meta/recipes-core/psplash/files/psplash-start.service
> new file mode 100644
> index 0000000..502b150
> --- /dev/null
> +++ b/meta/recipes-core/psplash/files/psplash-start.service
> @@ -0,0 +1,11 @@
> +[Unit]
> +Description=Starts Psplash Boot screen
> +Wants=systemd-vconsole-setup.service
> +After=systemd-vconsole-setup.service systemd-udev-trigger.service systemd-udevd.service
> +DefaultDependencies=no
> +
> +[Service]
> +ExecStart=/usr/bin/psplash
> +
> +[Install]
> +WantedBy=sysinit.target
> diff --git a/meta/recipes-core/psplash/psplash_git.bb b/meta/recipes-core/psplash/psplash_git.bb
> index 628ced4..16fa0ae 100644
> --- a/meta/recipes-core/psplash/psplash_git.bb
> +++ b/meta/recipes-core/psplash/psplash_git.bb
> @@ -11,6 +11,8 @@ PR = "r15"
>
>   SRC_URI = "git://git.yoctoproject.org/${BPN} \
>              file://psplash-init \
> +           file://psplash-start.service \
> +           file://psplash-quit.service \
>              ${SPLASH_IMAGES}"
>
>   SPLASH_IMAGES = "file://psplash-poky-img.h;outsuffix=default"
> @@ -65,11 +67,14 @@ python __anonymous() {
>
>   S = "${WORKDIR}/git"
>
> -inherit autotools pkgconfig update-rc.d update-alternatives
> +inherit autotools pkgconfig update-rc.d update-alternatives systemd
>
>   ALTERNATIVE_PRIORITY = "100"
>   ALTERNATIVE_LINK_NAME[psplash] = "${bindir}/psplash"
>
> +SYSTEMD_PACKAGES = "${@base_contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
> +SYSTEMD_SERVICE_${PN} = "${@base_contains('DISTRO_FEATURES','systemd','psplash-start.service psplash-quit.service','',d)}"
> +
>   python do_compile () {
>       import shutil
>
> @@ -103,6 +108,11 @@ do_install_append() {
>   		install -m 0755 $i ${D}${bindir}/$i
>   	done
>   	rm -f ${D}${bindir}/psplash
> +
> +	if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
> +                install -d ${D}${systemd_unitdir}/system
> +                install -m 644 ${WORKDIR}/*.service ${D}/${systemd_unitdir}/system
> +        fi
>   }
>
>   FILES_${PN} += "/mnt/.psplash"
>

