Return-Path: <Mark.Asselstine@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A948E00E18; Thu,  5 Sep 2019 10:55:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E0CE00E10
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2019 10:55:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x85HtYMQ000024
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Sep 2019 10:55:34 -0700 (PDT)
Received: from yow-masselst-lx1.localnet (128.224.60.192) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.468.0; Thu, 5 Sep 2019 10:55:33 -0700
From: Mark Asselstine <mark.asselstine@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Sep 2019 13:55:33 -0400
Message-ID: <2699541.DOkOTGASKR@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <20190823181953.19102-1-mark.asselstine@windriver.com>
References: <20190823181953.19102-1-mark.asselstine@windriver.com>
MIME-Version: 1.0
Subject: Re: [meta-selinux][PATCH] selinux-init: use systemd (re)labelling
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
X-List-Received-Date: Thu, 05 Sep 2019 17:55:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, August 23, 2019 2:19:53 P.M. EDT Mark Asselstine wrote:
> Boot loops were being seen when booting with selinux enabled, when the
> init system in use is systemd. Once logs were retrieved from the
> failing system the error was found to be
> 
> selinux-init.sh[284]: /sbin/restorecon: Could not set context for
> /sys/fs/cgroup/cpuacct:  Read-only file system selinux-init.sh[284]:
> /sbin/restorecon: Could not set context for /sys/fs/cgroup/cpu:  Read-only
> file system
> 
> Systemd mounts /sys/fs/cgroup read-only and the (re)labelling code
> used by selinux-init.sh is unable to handle this. On top of this the
> system is basically presenting two methods of (re)labelling; using the
> built in systemd approach via selinux-autorelabel.service *and* the
> code we have in selinux-init.sh. This can get confusing especially
> given that most online resources will speak to the systemd approach
> using selinux-autorelabel.service and /.autorelabel.
> 
> These changes leave the current approach in place when sysvinit is the
> init system used, but if systemd is being used we make use of it's
> internal (re)labelling functionality. Overall the workflow remains the
> same but we now avoid boot loops (systemd remounts /sys/fs/cgroup rw
> during the (re)labelling procedure).
> 
> Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> ---

Joe, any thoughts on this change?

MarkA

>  .../selinux/selinux-init/selinux-init.sh           | 14 +-------------
>  .../selinux/selinux-init/selinux-init.sh.sysvinit  | 14 ++++++++++++++
>  recipes-security/selinux/selinux-init_0.1.bb       |  8 +++++---
>  recipes-security/selinux/selinux-initsh.inc        |  8 ++++++++
>  4 files changed, 28 insertions(+), 16 deletions(-)
>  create mode 100644
> recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
> 
> diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh
> b/recipes-security/selinux/selinux-init/selinux-init.sh index
> ead4f00..f93d231 100644
> --- a/recipes-security/selinux/selinux-init/selinux-init.sh
> +++ b/recipes-security/selinux/selinux-init/selinux-init.sh
> @@ -33,18 +33,6 @@ check_rootfs()
>  	/sbin/shutdown -f -h now
>  }
> 
> -# If first booting, the security context type of init would be
> -# "kernel_t", and the whole file system should be relabeled.
> -if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
> -	echo "Checking SELinux security contexts:"
> -	check_rootfs
> -	echo " * First booting, filesystem will be relabeled..."
> -	test -x /etc/init.d/auditd && /etc/init.d/auditd start
> -	${SETENFORCE} 0
> -	${RESTORECON} -RF /
> -	${RESTORECON} -F /
> -	echo " * Relabel done, rebooting the system."
> -	/sbin/reboot
> -fi
> +# sysvinit firstboot relabel placeholder HERE
> 
>  exit 0
> diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
> b/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit new file
> mode 100644
> index 0000000..d4f3f71
> --- /dev/null
> +++ b/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
> @@ -0,0 +1,14 @@
> +# Contents will be added to selinux-init.sh to support relabelling with
> sysvinit +# If first booting, the security context type of init would be
> +# "kernel_t", and the whole file system should be relabeled.
> +if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
> +	echo "Checking SELinux security contexts:"
> +	check_rootfs
> +	echo " * First booting, filesystem will be relabeled..."
> +	test -x /etc/init.d/auditd && /etc/init.d/auditd start
> +	${SETENFORCE} 0
> +	${RESTORECON} -RF /
> +	${RESTORECON} -F /
> +	echo " * Relabel done, rebooting the system."
> +	/sbin/reboot
> +fi
> diff --git a/recipes-security/selinux/selinux-init_0.1.bb
> b/recipes-security/selinux/selinux-init_0.1.bb index 38b5900..78f571c
> 100644
> --- a/recipes-security/selinux/selinux-init_0.1.bb
> +++ b/recipes-security/selinux/selinux-init_0.1.bb
> @@ -14,9 +14,11 @@ ${PN}_RDEPENDS = " \
>      policycoreutils-setfiles \
>  "
> 
> -SRC_URI = "file://${BPN}.sh \
> -		file://${BPN}.service \
> -	"
> +SRC_URI = " \
> +    file://${BPN}.sh \
> +    file://${BPN}.sh.sysvinit \
> +    file://${BPN}.service \
> +"
> 
>  INITSCRIPT_PARAMS = "start 01 S ."
> 
> diff --git a/recipes-security/selinux/selinux-initsh.inc
> b/recipes-security/selinux/selinux-initsh.inc index bcdd449..8e31cda 100644
> --- a/recipes-security/selinux/selinux-initsh.inc
> +++ b/recipes-security/selinux/selinux-initsh.inc
> @@ -17,9 +17,15 @@ inherit update-rc.d systemd
> 
>  SYSTEMD_SERVICE_${PN} = "${SELINUX_SCRIPT_SRC}.service"
> 
> +FILES_${PN} += "/.autorelabel"
> +
>  do_install () {
>  	install -d ${D}${sysconfdir}/init.d/
>  	install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh
> ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST} +	# Insert the relabelling
> code which is only needed with sysvinit +	sed -i -e '/HERE/r
> ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh.sysvinit' \ +	       -e '/.*HERE$/d' -e
> '/.*Contents.*sysvinit/d' \
> +	       ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
> 
>  	install -d ${D}${systemd_unitdir}/system
>  	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service
> ${D}${systemd_unitdir}/system @@ -27,6 +33,8 @@ do_install () {
>  	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 
'false',
> d)}; then install -d ${D}${bindir}
>  		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}$
{bindir}
> +		sed -i -e '/.*HERE$/d' ${D}${bindir}/$
{SELINUX_SCRIPT_SRC}.sh
> +		echo "# first boot relabelling" > ${D}/.autorelabel
>  	fi
>  }





