Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAD99E00AFD; Thu, 23 Mar 2017 08:52:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F90FE00AA2
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:52:16 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 3CD7A269D46
To: liezhi.yang@windriver.com
References: <20170323145220.1287-1-romain.perier@collabora.com>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <7912b619-4d90-db4c-07ad-d95b602dc99e@collabora.com>
Date: Thu, 23 Mar 2017 16:52:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170323145220.1287-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH RESEND] logrotate: Add systemd support
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
X-List-Received-Date: Thu, 23 Mar 2017 15:52:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello,

Please ignore this patch, I will send a v2 with improvements.

Regards,

Romain

Le 23/03/2017 à 15:52, Romain Perier a écrit :
> Currently, this recipe only supports daily scheduling via a cron job.
> This commit adds support for systemd, including systemd service and
> systemd timer. When the corresponding distro feature is enabled the
> systemd timer will be used instead of the cron job.
>
> Signed-off-by: Romain Perier <romain.perier@collabora.com>
> ---
>
> Note: I was not registered on the yocto and oe ML, I subscribed. So
> I resend for this reason (my bad).
>
>  .../logrotate/logrotate/logrotate.service          |  9 +++++++++
>  .../logrotate/logrotate/logrotate.timer            |  7 +++++++
>  meta/recipes-extended/logrotate/logrotate_3.9.1.bb | 22 ++++++++++++++++++++--
>  3 files changed, 36 insertions(+), 2 deletions(-)
>  create mode 100644 meta/recipes-extended/logrotate/logrotate/logrotate.service
>  create mode 100644 meta/recipes-extended/logrotate/logrotate/logrotate.timer
>
> diff --git a/meta/recipes-extended/logrotate/logrotate/logrotate.service b/meta/recipes-extended/logrotate/logrotate/logrotate.service
> new file mode 100644
> index 0000000..3edb8ef
> --- /dev/null
> +++ b/meta/recipes-extended/logrotate/logrotate/logrotate.service
> @@ -0,0 +1,9 @@
> +[Unit]
> +Description=Rotate log files
> +
> +[Service]
> +Type=oneshot
> +ExecStart=/usr/sbin/logrotate /etc/logrotate.conf
> +Nice=19
> +IOSchedulingClass=best-effort
> +IOSchedulingPriority=7
> diff --git a/meta/recipes-extended/logrotate/logrotate/logrotate.timer b/meta/recipes-extended/logrotate/logrotate/logrotate.timer
> new file mode 100644
> index 0000000..a92ba1e
> --- /dev/null
> +++ b/meta/recipes-extended/logrotate/logrotate/logrotate.timer
> @@ -0,0 +1,7 @@
> +[Unit]
> +Description=Daily rotation of log files
> +
> +[Timer]
> +OnCalendar=daily
> +AccuracySec=12h
> +Persistent=true
> diff --git a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
> index 5f1a601..734d661 100644
> --- a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
> +++ b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
> @@ -14,6 +14,8 @@ SRC_URI = "https://fedorahosted.org/releases/l/o/logrotate/logrotate-${PV}.tar.g
>             file://act-as-mv-when-rotate.patch \
>             file://update-the-manual.patch \
>             file://disable-check-different-filesystems.patch \
> +           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://logrotate.service', '', d)} \
> +           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://logrotate.timer', '', d)} \
>              "
>  
>  SRC_URI[md5sum] = "4492b145b6d542e4a2f41e77fa199ab0"
> @@ -47,6 +49,14 @@ EXTRA_OEMAKE = "\
>  # INSTALL=install and BASEDIR=/usr.
>  OS_NAME = "Linux"
>  
> +inherit systemd
> +
> +SYSTEMD_AUTO_ENABLE = "disable"
> +SYSTEMD_SERVICE_${PN} = "\
> +    ${PN}.service \
> +    ${PN}.timer \
> +"
> +
>  do_compile_prepend() {
>      # Make sure the recompile is OK
>      rm -f ${B}/.depend
> @@ -55,9 +65,17 @@ do_compile_prepend() {
>  do_install(){
>      oe_runmake install DESTDIR=${D} PREFIX=${D} MANDIR=${mandir}
>      mkdir -p ${D}${sysconfdir}/logrotate.d
> -    mkdir -p ${D}${sysconfdir}/cron.daily
>      mkdir -p ${D}${localstatedir}/lib
>      install -p -m 644 examples/logrotate-default ${D}${sysconfdir}/logrotate.conf
> -    install -p -m 755 examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
>      touch ${D}${localstatedir}/lib/logrotate.status
> +
> +    # Install systemd unit files
> +    if [ "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}" = "systemd" ]; then
> +        install -d ${D}/${systemd_system_unitdir}
> +        install -m 0644 ${WORKDIR}/logrotate.service ${D}/${systemd_system_unitdir}/logrotate.service
> +        install -m 0644 ${WORKDIR}/logrotate.timer ${D}/${systemd_system_unitdir}/logrotate.timer
> +    else
> +        mkdir -p ${D}${sysconfdir}/cron.daily
> +        install -p -m 0755 examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
> +    fi
>  }


