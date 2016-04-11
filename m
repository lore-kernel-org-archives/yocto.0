Return-Path: <alan@alanstice.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21515E00E18; Mon, 11 Apr 2016 11:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [136.166.156.64 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25B99E00E0E
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:37:50 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id c77so567366qkg.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=alanstice-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=zibPehwgsgfENJ12XXbYeJSFTil7/YBjz7TrOLfIJUM=;
	b=N41/t8AY5T6fcO4/kLBzqyiB0pxcTfqDjlolDEjQ1BUuUk5KQJmFHf3qDwZ2qapLDe
	oukNg6cOUNjp2aAvcQOyrEFz1JKHYD3vWeRXULTbqmQO/4Ej6jKNayujN69r8tt75Fel
	lRdiY7+yPVWvi4vaGHP5KgTSUOG68qnRcr/5lIph9EyBg5SPfkv5yOT4tDdyw1RwpKJg
	SDM3ICypmAFSQHCame4+UpL2vn2Ccb1YLjRlBr0P+y3PVTtFeHIh7/grWcvo//0XPBjA
	ppuJ+0yLHvGY8aE7O4W+UbRzk4ZoBeJKSiTmSoW51/YC489BESZWQlJ/oml6hvrkdjFP
	qyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=zibPehwgsgfENJ12XXbYeJSFTil7/YBjz7TrOLfIJUM=;
	b=GT0QHTYN3n7Qz68QLj4hWKL+xenx7Nj0ETL1k8bCrNSqC0gKOuSxi0QaE5iZWiNEWc
	TQf106WiPW1v6D54o9l/FfSaW2wkfZYqHbSMdaceR+3tLk/XKWKT5HTNUm6auA77SJmW
	BULShD9GBgQTqpimYiKr/jkA4SsUYUKDUUSWHbtrRupxzOmZ4zUWR/tvjwf9D2xNIfsk
	BUpeXNQCe0AIEjIFCK49wu3M07yUJZo9jwhNskM7nkxqdyEQmXNx8bdN9k9yUrrUJyVv
	/m0GBSiHnSHba2xinifXLUN5VmUGnLk20g2lmzSDDnFj2UJytZk1sSrimZofb9rMYKck
	kHHQ==
X-Gm-Message-State: AD7BkJJ6TKHCHyfL4yCKKmkRxNCT6JiRfolXjkNjrlcr71R0D9IPn1pjj4mJzM6cRMC9Cj3F8Qf+Kv10RI6DIg==
MIME-Version: 1.0
X-Received: by 10.55.74.14 with SMTP id x14mr31375887qka.70.1460399870217;
	Mon, 11 Apr 2016 11:37:50 -0700 (PDT)
Received: by 10.140.29.195 with HTTP; Mon, 11 Apr 2016 11:37:50 -0700 (PDT)
X-Originating-IP: [136.166.156.64]
In-Reply-To: <1460399745-22611-1-git-send-email-alan@alanstice.com>
References: <1460399745-22611-1-git-send-email-alan@alanstice.com>
Date: Mon, 11 Apr 2016 11:37:50 -0700
Message-ID: <CAPn_zGuj0p5xQFryUeq45WYNcnAZ87HZJ12CGMUgcQ7RZyZwGQ@mail.gmail.com>
From: Alan Stice <alan@alanstice.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Rename linux.inc to linux-rpi.inc Rename linux.inc to prevent it from impacting other machines
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
X-List-Received-Date: Mon, 11 Apr 2016 18:38:15 -0000
Content-Type: multipart/alternative; boundary=001a114a7a6c7eae49053039d7a8

--001a114a7a6c7eae49053039d7a8
Content-Type: text/plain; charset=UTF-8

Attempting submitting this patch from my linux machine to hopefully correct
the line wrapping issue.

On Mon, Apr 11, 2016 at 11:35 AM, Alan Stice <alan@alanstice.com> wrote:

> Signed-off-by: Alan Stice <alan@alanstice.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc |   2 +-
>  recipes-kernel/linux/linux-rpi.inc         | 132
> +++++++++++++++++++++++++++++
>  recipes-kernel/linux/linux.inc             | 132
> -----------------------------
>  3 files changed, 133 insertions(+), 133 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-rpi.inc
>  delete mode 100644 recipes-kernel/linux/linux.inc
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> index 24e7fe2..7ab1de2 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -1,4 +1,4 @@
> -require linux.inc
> +require linux-rpi.inc
>  inherit linux-raspberrypi-base
>
>  DESCRIPTION = "Linux Kernel for Raspberry Pi"
> diff --git a/recipes-kernel/linux/linux-rpi.inc
> b/recipes-kernel/linux/linux-rpi.inc
> new file mode 100644
> index 0000000..fae78b7
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-rpi.inc
> @@ -0,0 +1,132 @@
> +DESCRIPTION = "Linux Kernel"
> +SECTION = "kernel"
> +LICENSE = "GPLv2"
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> +
> +inherit kernel siteinfo
> +require recipes-kernel/linux/linux-yocto.inc
> +
> +# Enable OABI compat for people stuck with obsolete userspace
> +ARM_KEEP_OABI ?= "1"
> +
> +# Quirk for udev greater or equal 141
> +UDEV_GE_141 ?= "1"
> +
> +# Set the verbosity of kernel messages during runtime
> +# You can define CMDLINE_DEBUG in your local.conf or distro.conf to
> override this behaviour
> +CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet",
> "debug", d)}'
> +CMDLINE_append = " ${CMDLINE_DEBUG}"
> +
> +# Set a variable in .configure
> +# $1 - Configure variable to be set
> +# $2 - value [n/y/value]
> +kernel_configure_variable() {
> +    # Remove the config
> +    CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
> +    if test "$2" = "n"
> +    then
> +        echo "# CONFIG_$1 is not set" >> ${B}/.config
> +    else
> +        echo "CONFIG_$1=$2" >> ${B}/.config
> +    fi
> +}
> +
> +do_configure_prepend() {
> +    # Clean .config
> +    echo "" > ${B}/.config
> +    CONF_SED_SCRIPT=""
> +
> +    # oabi / eabi support
> +    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" =
> "linux-uclibceabi" ]; then
> +        kernel_configure_variable AEABI y
> +        if [ "${ARM_KEEP_OABI}" = "1" ] ; then
> +            kernel_configure_variable OABI_COMPAT y
> +        else
> +            kernel_configure_variable OABI_COMPAT n
> +        fi
> +    else
> +        kernel_configure_variable AEABI n
> +        kernel_configure_variable OABI_COMPAT n
> +    fi
> +
> +    # Set cmdline
> +    kernel_configure_variable CMDLINE "\"${CMDLINE}\""
> +
> +    # Localversion
> +    kernel_configure_variable LOCALVERSION "\"\""
> +    kernel_configure_variable LOCALVERSION_AUTO n
> +
> +    # Udev quirks
> +    # Newer versions of udev mandate that sysfs doesn't have deprecated
> entries
> +    if [ "${UDEV_GE_141}" = "1" ] ; then
> +        kernel_configure_variable SYSFS_DEPRECATED n
> +        kernel_configure_variable SYSFS_DEPRECATED_V2 n
> +        kernel_configure_variable HOTPLUG y
> +        kernel_configure_variable UEVENT_HELPER_PATH "\"\""
> +        kernel_configure_variable UNIX y
> +        kernel_configure_variable SYSFS y
> +        kernel_configure_variable PROC_FS y
> +        kernel_configure_variable TMPFS y
> +        kernel_configure_variable INOTIFY_USER y
> +        kernel_configure_variable SIGNALFD y
> +        kernel_configure_variable TMPFS_POSIX_ACL y
> +        kernel_configure_variable BLK_DEV_BSG y
> +        kernel_configure_variable DEVTMPFS y
> +        kernel_configure_variable DEVTMPFS_MOUNT y
> +    fi
> +
> +    # Newer inits like systemd need cgroup support
> +    if [ "${KERNEL_ENABLE_CGROUPS}" = "1" ] ; then
> +        kernel_configure_variable CGROUP_SCHED y
> +        kernel_configure_variable CGROUPS y
> +        kernel_configure_variable CGROUP_NS y
> +        kernel_configure_variable CGROUP_FREEZER y
> +        kernel_configure_variable CGROUP_DEVICE y
> +        kernel_configure_variable CPUSETS y
> +        kernel_configure_variable PROC_PID_CPUSET y
> +        kernel_configure_variable CGROUP_CPUACCT y
> +        kernel_configure_variable RESOURCE_COUNTERS y
> +    fi
> +
> +    # root-over-nfs-over-usb-eth support. Limited, but should cover some
> cases
> +    # Enable this by setting a proper CMDLINE_NFSROOT_USB.
> +    if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
> +        oenote "Configuring the kernel for root-over-nfs-over-usb-eth
> with CMDLINE ${CMDLINE_NFSROOT_USB}"
> +        kernel_configure_variable INET y
> +        kernel_configure_variable IP_PNP y
> +        kernel_configure_variable USB_GADGET y
> +        kernel_configure_variable USB_GADGET_SELECTED y
> +        kernel_configure_variable USB_ETH y
> +        kernel_configure_variable NFS_FS y
> +        kernel_configure_variable ROOT_NFS y
> +        kernel_configure_variable ROOT_NFS y
> +        kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
> +    fi
> +
> +    # Activate CONFIG_LEGACY_PTYS
> +    kernel_configure_variable LEGACY_PTYS y
> +
> +    # Keep this the last line
> +    # Remove all modified configs and add the rest to .config
> +    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
> +
> +    yes '' | oe_runmake oldconfig
> +}
> +
> +# Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
> +python () {
> +    try:
> +        defconfig = bb.fetch2.localpath('file://defconfig', d)
> +    except bb.fetch2.FetchError:
> +        return
> +
> +    try:
> +        configfile = open(defconfig)
> +    except IOError:
> +        return
> +
> +    if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
> +        depends = d.getVar('DEPENDS', False)
> +        d.setVar('DEPENDS', depends + ' lzop-native')
> +}
> diff --git a/recipes-kernel/linux/linux.inc
> b/recipes-kernel/linux/linux.inc
> deleted file mode 100644
> index fae78b7..0000000
> --- a/recipes-kernel/linux/linux.inc
> +++ /dev/null
> @@ -1,132 +0,0 @@
> -DESCRIPTION = "Linux Kernel"
> -SECTION = "kernel"
> -LICENSE = "GPLv2"
> -
> -LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> -
> -inherit kernel siteinfo
> -require recipes-kernel/linux/linux-yocto.inc
> -
> -# Enable OABI compat for people stuck with obsolete userspace
> -ARM_KEEP_OABI ?= "1"
> -
> -# Quirk for udev greater or equal 141
> -UDEV_GE_141 ?= "1"
> -
> -# Set the verbosity of kernel messages during runtime
> -# You can define CMDLINE_DEBUG in your local.conf or distro.conf to
> override this behaviour
> -CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet",
> "debug", d)}'
> -CMDLINE_append = " ${CMDLINE_DEBUG}"
> -
> -# Set a variable in .configure
> -# $1 - Configure variable to be set
> -# $2 - value [n/y/value]
> -kernel_configure_variable() {
> -    # Remove the config
> -    CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
> -    if test "$2" = "n"
> -    then
> -        echo "# CONFIG_$1 is not set" >> ${B}/.config
> -    else
> -        echo "CONFIG_$1=$2" >> ${B}/.config
> -    fi
> -}
> -
> -do_configure_prepend() {
> -    # Clean .config
> -    echo "" > ${B}/.config
> -    CONF_SED_SCRIPT=""
> -
> -    # oabi / eabi support
> -    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" =
> "linux-uclibceabi" ]; then
> -        kernel_configure_variable AEABI y
> -        if [ "${ARM_KEEP_OABI}" = "1" ] ; then
> -            kernel_configure_variable OABI_COMPAT y
> -        else
> -            kernel_configure_variable OABI_COMPAT n
> -        fi
> -    else
> -        kernel_configure_variable AEABI n
> -        kernel_configure_variable OABI_COMPAT n
> -    fi
> -
> -    # Set cmdline
> -    kernel_configure_variable CMDLINE "\"${CMDLINE}\""
> -
> -    # Localversion
> -    kernel_configure_variable LOCALVERSION "\"\""
> -    kernel_configure_variable LOCALVERSION_AUTO n
> -
> -    # Udev quirks
> -    # Newer versions of udev mandate that sysfs doesn't have deprecated
> entries
> -    if [ "${UDEV_GE_141}" = "1" ] ; then
> -        kernel_configure_variable SYSFS_DEPRECATED n
> -        kernel_configure_variable SYSFS_DEPRECATED_V2 n
> -        kernel_configure_variable HOTPLUG y
> -        kernel_configure_variable UEVENT_HELPER_PATH "\"\""
> -        kernel_configure_variable UNIX y
> -        kernel_configure_variable SYSFS y
> -        kernel_configure_variable PROC_FS y
> -        kernel_configure_variable TMPFS y
> -        kernel_configure_variable INOTIFY_USER y
> -        kernel_configure_variable SIGNALFD y
> -        kernel_configure_variable TMPFS_POSIX_ACL y
> -        kernel_configure_variable BLK_DEV_BSG y
> -        kernel_configure_variable DEVTMPFS y
> -        kernel_configure_variable DEVTMPFS_MOUNT y
> -    fi
> -
> -    # Newer inits like systemd need cgroup support
> -    if [ "${KERNEL_ENABLE_CGROUPS}" = "1" ] ; then
> -        kernel_configure_variable CGROUP_SCHED y
> -        kernel_configure_variable CGROUPS y
> -        kernel_configure_variable CGROUP_NS y
> -        kernel_configure_variable CGROUP_FREEZER y
> -        kernel_configure_variable CGROUP_DEVICE y
> -        kernel_configure_variable CPUSETS y
> -        kernel_configure_variable PROC_PID_CPUSET y
> -        kernel_configure_variable CGROUP_CPUACCT y
> -        kernel_configure_variable RESOURCE_COUNTERS y
> -    fi
> -
> -    # root-over-nfs-over-usb-eth support. Limited, but should cover some
> cases
> -    # Enable this by setting a proper CMDLINE_NFSROOT_USB.
> -    if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
> -        oenote "Configuring the kernel for root-over-nfs-over-usb-eth
> with CMDLINE ${CMDLINE_NFSROOT_USB}"
> -        kernel_configure_variable INET y
> -        kernel_configure_variable IP_PNP y
> -        kernel_configure_variable USB_GADGET y
> -        kernel_configure_variable USB_GADGET_SELECTED y
> -        kernel_configure_variable USB_ETH y
> -        kernel_configure_variable NFS_FS y
> -        kernel_configure_variable ROOT_NFS y
> -        kernel_configure_variable ROOT_NFS y
> -        kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
> -    fi
> -
> -    # Activate CONFIG_LEGACY_PTYS
> -    kernel_configure_variable LEGACY_PTYS y
> -
> -    # Keep this the last line
> -    # Remove all modified configs and add the rest to .config
> -    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
> -
> -    yes '' | oe_runmake oldconfig
> -}
> -
> -# Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
> -python () {
> -    try:
> -        defconfig = bb.fetch2.localpath('file://defconfig', d)
> -    except bb.fetch2.FetchError:
> -        return
> -
> -    try:
> -        configfile = open(defconfig)
> -    except IOError:
> -        return
> -
> -    if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
> -        depends = d.getVar('DEPENDS', False)
> -        d.setVar('DEPENDS', depends + ' lzop-native')
> -}
> --
> 2.7.4
>
>

--001a114a7a6c7eae49053039d7a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Attempting submitting this patch from my linux machine to =
hopefully correct the line wrapping issue.</div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Mon, Apr 11, 2016 at 11:35 AM, Alan Stice=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:alan@alanstice.com" target=3D"_bla=
nk">alan@alanstice.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">Signed-off-by: Alan Stice &lt;<a href=3D"mailto:alan@alanstice.com">ala=
n@alanstice.com</a>&gt;<br>
---<br>
=C2=A0recipes-kernel/linux/linux-raspberrypi.inc |=C2=A0 =C2=A02 +-<br>
=C2=A0recipes-kernel/linux/linux-rpi.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
 132 +++++++++++++++++++++++++++++<br>
=C2=A0recipes-kernel/linux/linux.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 132 -----------------------------<br>
=C2=A03 files changed, 133 insertions(+), 133 deletions(-)<br>
=C2=A0create mode 100644 recipes-kernel/linux/linux-rpi.inc<br>
=C2=A0delete mode 100644 recipes-kernel/linux/linux.inc<br>
<br>
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc<br>
index 24e7fe2..7ab1de2 100644<br>
--- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
+++ b/recipes-kernel/linux/linux-raspberrypi.inc<br>
@@ -1,4 +1,4 @@<br>
-require linux.inc<br>
+require linux-rpi.inc<br>
=C2=A0inherit linux-raspberrypi-base<br>
<br>
=C2=A0DESCRIPTION =3D &quot;Linux Kernel for Raspberry Pi&quot;<br>
diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linu=
x-rpi.inc<br>
new file mode 100644<br>
index 0000000..fae78b7<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/linux-rpi.inc<br>
@@ -0,0 +1,132 @@<br>
+DESCRIPTION =3D &quot;Linux Kernel&quot;<br>
+SECTION =3D &quot;kernel&quot;<br>
+LICENSE =3D &quot;GPLv2&quot;<br>
+<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1=
be7cd7&quot;<br>
+<br>
+inherit kernel siteinfo<br>
+require recipes-kernel/linux/linux-yocto.inc<br>
+<br>
+# Enable OABI compat for people stuck with obsolete userspace<br>
+ARM_KEEP_OABI ?=3D &quot;1&quot;<br>
+<br>
+# Quirk for udev greater or equal 141<br>
+UDEV_GE_141 ?=3D &quot;1&quot;<br>
+<br>
+# Set the verbosity of kernel messages during runtime<br>
+# You can define CMDLINE_DEBUG in your local.conf or distro.conf to overri=
de this behaviour<br>
+CMDLINE_DEBUG ?=3D &#39;${@base_conditional(&quot;DISTRO_TYPE&quot;, &quot=
;release&quot;, &quot;quiet&quot;, &quot;debug&quot;, d)}&#39;<br>
+CMDLINE_append =3D &quot; ${CMDLINE_DEBUG}&quot;<br>
+<br>
+# Set a variable in .configure<br>
+# $1 - Configure variable to be set<br>
+# $2 - value [n/y/value]<br>
+kernel_configure_variable() {<br>
+=C2=A0 =C2=A0 # Remove the config<br>
+=C2=A0 =C2=A0 CONF_SED_SCRIPT=3D&quot;$CONF_SED_SCRIPT /CONFIG_$1[ =3D]/d;=
&quot;<br>
+=C2=A0 =C2=A0 if test &quot;$2&quot; =3D &quot;n&quot;<br>
+=C2=A0 =C2=A0 then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# CONFIG_$1 is not set&quot; &gt;&g=
t; ${B}/.config<br>
+=C2=A0 =C2=A0 else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;CONFIG_$1=3D$2&quot; &gt;&gt; ${B}/=
.config<br>
+=C2=A0 =C2=A0 fi<br>
+}<br>
+<br>
+do_configure_prepend() {<br>
+=C2=A0 =C2=A0 # Clean .config<br>
+=C2=A0 =C2=A0 echo &quot;&quot; &gt; ${B}/.config<br>
+=C2=A0 =C2=A0 CONF_SED_SCRIPT=3D&quot;&quot;<br>
+<br>
+=C2=A0 =C2=A0 # oabi / eabi support<br>
+=C2=A0 =C2=A0 if [ &quot;${TARGET_OS}&quot; =3D &quot;linux-gnueabi&quot; =
-o=C2=A0 &quot;${TARGET_OS}&quot; =3D &quot;linux-uclibceabi&quot; ]; then<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable AEABI y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;${ARM_KEEP_OABI}&quot; =3D &quot;1&=
quot; ] ; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable OABI_C=
OMPAT y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable OABI_C=
OMPAT n<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
+=C2=A0 =C2=A0 else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable AEABI n<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable OABI_COMPAT n<br>
+=C2=A0 =C2=A0 fi<br>
+<br>
+=C2=A0 =C2=A0 # Set cmdline<br>
+=C2=A0 =C2=A0 kernel_configure_variable CMDLINE &quot;\&quot;${CMDLINE}\&q=
uot;&quot;<br>
+<br>
+=C2=A0 =C2=A0 # Localversion<br>
+=C2=A0 =C2=A0 kernel_configure_variable LOCALVERSION &quot;\&quot;\&quot;&=
quot;<br>
+=C2=A0 =C2=A0 kernel_configure_variable LOCALVERSION_AUTO n<br>
+<br>
+=C2=A0 =C2=A0 # Udev quirks<br>
+=C2=A0 =C2=A0 # Newer versions of udev mandate that sysfs doesn&#39;t have=
 deprecated entries<br>
+=C2=A0 =C2=A0 if [ &quot;${UDEV_GE_141}&quot; =3D &quot;1&quot; ] ; then<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SYSFS_DEPRECATED n<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SYSFS_DEPRECATED_V2 =
n<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable HOTPLUG y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable UEVENT_HELPER_PATH &=
quot;\&quot;\&quot;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable UNIX y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SYSFS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable PROC_FS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable TMPFS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable INOTIFY_USER y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SIGNALFD y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable TMPFS_POSIX_ACL y<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable BLK_DEV_BSG y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable DEVTMPFS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable DEVTMPFS_MOUNT y<br>
+=C2=A0 =C2=A0 fi<br>
+<br>
+=C2=A0 =C2=A0 # Newer inits like systemd need cgroup support<br>
+=C2=A0 =C2=A0 if [ &quot;${KERNEL_ENABLE_CGROUPS}&quot; =3D &quot;1&quot; =
] ; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_SCHED y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUPS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_NS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_FREEZER y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_DEVICE y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CPUSETS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable PROC_PID_CPUSET y<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_CPUACCT y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable RESOURCE_COUNTERS y<=
br>
+=C2=A0 =C2=A0 fi<br>
+<br>
+=C2=A0 =C2=A0 # root-over-nfs-over-usb-eth support. Limited, but should co=
ver some cases<br>
+=C2=A0 =C2=A0 # Enable this by setting a proper CMDLINE_NFSROOT_USB.<br>
+=C2=A0 =C2=A0 if [ ! -z &quot;${CMDLINE_NFSROOT_USB}&quot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 oenote &quot;Configuring the kernel for root-o=
ver-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable INET y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable IP_PNP y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable USB_GADGET y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable USB_GADGET_SELECTED =
y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable USB_ETH y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable NFS_FS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable ROOT_NFS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable ROOT_NFS y<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CMDLINE &quot;\&quot=
;${CMDLINE_NFSROOT_USB}\&quot;&quot;<br>
+=C2=A0 =C2=A0 fi<br>
+<br>
+=C2=A0 =C2=A0 # Activate CONFIG_LEGACY_PTYS<br>
+=C2=A0 =C2=A0 kernel_configure_variable LEGACY_PTYS y<br>
+<br>
+=C2=A0 =C2=A0 # Keep this the last line<br>
+=C2=A0 =C2=A0 # Remove all modified configs and add the rest to .config<br=
>
+=C2=A0 =C2=A0 sed -e &quot;${CONF_SED_SCRIPT}&quot; &lt; &#39;${WORKDIR}/d=
efconfig&#39; &gt;&gt; &#39;${B}/.config&#39;<br>
+<br>
+=C2=A0 =C2=A0 yes &#39;&#39; | oe_runmake oldconfig<br>
+}<br>
+<br>
+# Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled<br>
+python () {<br>
+=C2=A0 =C2=A0 try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 defconfig =3D bb.fetch2.localpath(&#39;file://=
defconfig&#39;, d)<br>
+=C2=A0 =C2=A0 except bb.fetch2.FetchError:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
+<br>
+=C2=A0 =C2=A0 try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 configfile =3D open(defconfig)<br>
+=C2=A0 =C2=A0 except IOError:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
+<br>
+=C2=A0 =C2=A0 if &#39;CONFIG_KERNEL_LZO=3Dy\n&#39; in configfile.readlines=
():<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 depends =3D d.getVar(&#39;DEPENDS&#39;, False)=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&#39;DEPENDS&#39;, depends + &#39; lz=
op-native&#39;)<br>
+}<br>
diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.in=
c<br>
deleted file mode 100644<br>
index fae78b7..0000000<br>
--- a/recipes-kernel/linux/linux.inc<br>
+++ /dev/null<br>
@@ -1,132 +0,0 @@<br>
-DESCRIPTION =3D &quot;Linux Kernel&quot;<br>
-SECTION =3D &quot;kernel&quot;<br>
-LICENSE =3D &quot;GPLv2&quot;<br>
-<br>
-LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1=
be7cd7&quot;<br>
-<br>
-inherit kernel siteinfo<br>
-require recipes-kernel/linux/linux-yocto.inc<br>
-<br>
-# Enable OABI compat for people stuck with obsolete userspace<br>
-ARM_KEEP_OABI ?=3D &quot;1&quot;<br>
-<br>
-# Quirk for udev greater or equal 141<br>
-UDEV_GE_141 ?=3D &quot;1&quot;<br>
-<br>
-# Set the verbosity of kernel messages during runtime<br>
-# You can define CMDLINE_DEBUG in your local.conf or distro.conf to overri=
de this behaviour<br>
-CMDLINE_DEBUG ?=3D &#39;${@base_conditional(&quot;DISTRO_TYPE&quot;, &quot=
;release&quot;, &quot;quiet&quot;, &quot;debug&quot;, d)}&#39;<br>
-CMDLINE_append =3D &quot; ${CMDLINE_DEBUG}&quot;<br>
-<br>
-# Set a variable in .configure<br>
-# $1 - Configure variable to be set<br>
-# $2 - value [n/y/value]<br>
-kernel_configure_variable() {<br>
-=C2=A0 =C2=A0 # Remove the config<br>
-=C2=A0 =C2=A0 CONF_SED_SCRIPT=3D&quot;$CONF_SED_SCRIPT /CONFIG_$1[ =3D]/d;=
&quot;<br>
-=C2=A0 =C2=A0 if test &quot;$2&quot; =3D &quot;n&quot;<br>
-=C2=A0 =C2=A0 then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# CONFIG_$1 is not set&quot; &gt;&g=
t; ${B}/.config<br>
-=C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;CONFIG_$1=3D$2&quot; &gt;&gt; ${B}/=
.config<br>
-=C2=A0 =C2=A0 fi<br>
-}<br>
-<br>
-do_configure_prepend() {<br>
-=C2=A0 =C2=A0 # Clean .config<br>
-=C2=A0 =C2=A0 echo &quot;&quot; &gt; ${B}/.config<br>
-=C2=A0 =C2=A0 CONF_SED_SCRIPT=3D&quot;&quot;<br>
-<br>
-=C2=A0 =C2=A0 # oabi / eabi support<br>
-=C2=A0 =C2=A0 if [ &quot;${TARGET_OS}&quot; =3D &quot;linux-gnueabi&quot; =
-o=C2=A0 &quot;${TARGET_OS}&quot; =3D &quot;linux-uclibceabi&quot; ]; then<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable AEABI y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;${ARM_KEEP_OABI}&quot; =3D &quot;1&=
quot; ] ; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable OABI_C=
OMPAT y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable OABI_C=
OMPAT n<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
-=C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable AEABI n<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable OABI_COMPAT n<br>
-=C2=A0 =C2=A0 fi<br>
-<br>
-=C2=A0 =C2=A0 # Set cmdline<br>
-=C2=A0 =C2=A0 kernel_configure_variable CMDLINE &quot;\&quot;${CMDLINE}\&q=
uot;&quot;<br>
-<br>
-=C2=A0 =C2=A0 # Localversion<br>
-=C2=A0 =C2=A0 kernel_configure_variable LOCALVERSION &quot;\&quot;\&quot;&=
quot;<br>
-=C2=A0 =C2=A0 kernel_configure_variable LOCALVERSION_AUTO n<br>
-<br>
-=C2=A0 =C2=A0 # Udev quirks<br>
-=C2=A0 =C2=A0 # Newer versions of udev mandate that sysfs doesn&#39;t have=
 deprecated entries<br>
-=C2=A0 =C2=A0 if [ &quot;${UDEV_GE_141}&quot; =3D &quot;1&quot; ] ; then<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SYSFS_DEPRECATED n<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SYSFS_DEPRECATED_V2 =
n<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable HOTPLUG y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable UEVENT_HELPER_PATH &=
quot;\&quot;\&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable UNIX y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SYSFS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable PROC_FS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable TMPFS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable INOTIFY_USER y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable SIGNALFD y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable TMPFS_POSIX_ACL y<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable BLK_DEV_BSG y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable DEVTMPFS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable DEVTMPFS_MOUNT y<br>
-=C2=A0 =C2=A0 fi<br>
-<br>
-=C2=A0 =C2=A0 # Newer inits like systemd need cgroup support<br>
-=C2=A0 =C2=A0 if [ &quot;${KERNEL_ENABLE_CGROUPS}&quot; =3D &quot;1&quot; =
] ; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_SCHED y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUPS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_NS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_FREEZER y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_DEVICE y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CPUSETS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable PROC_PID_CPUSET y<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CGROUP_CPUACCT y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable RESOURCE_COUNTERS y<=
br>
-=C2=A0 =C2=A0 fi<br>
-<br>
-=C2=A0 =C2=A0 # root-over-nfs-over-usb-eth support. Limited, but should co=
ver some cases<br>
-=C2=A0 =C2=A0 # Enable this by setting a proper CMDLINE_NFSROOT_USB.<br>
-=C2=A0 =C2=A0 if [ ! -z &quot;${CMDLINE_NFSROOT_USB}&quot; ]; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 oenote &quot;Configuring the kernel for root-o=
ver-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable INET y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable IP_PNP y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable USB_GADGET y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable USB_GADGET_SELECTED =
y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable USB_ETH y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable NFS_FS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable ROOT_NFS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable ROOT_NFS y<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CMDLINE &quot;\&quot=
;${CMDLINE_NFSROOT_USB}\&quot;&quot;<br>
-=C2=A0 =C2=A0 fi<br>
-<br>
-=C2=A0 =C2=A0 # Activate CONFIG_LEGACY_PTYS<br>
-=C2=A0 =C2=A0 kernel_configure_variable LEGACY_PTYS y<br>
-<br>
-=C2=A0 =C2=A0 # Keep this the last line<br>
-=C2=A0 =C2=A0 # Remove all modified configs and add the rest to .config<br=
>
-=C2=A0 =C2=A0 sed -e &quot;${CONF_SED_SCRIPT}&quot; &lt; &#39;${WORKDIR}/d=
efconfig&#39; &gt;&gt; &#39;${B}/.config&#39;<br>
-<br>
-=C2=A0 =C2=A0 yes &#39;&#39; | oe_runmake oldconfig<br>
-}<br>
-<br>
-# Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled<br>
-python () {<br>
-=C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 defconfig =3D bb.fetch2.localpath(&#39;file://=
defconfig&#39;, d)<br>
-=C2=A0 =C2=A0 except bb.fetch2.FetchError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
-<br>
-=C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 configfile =3D open(defconfig)<br>
-=C2=A0 =C2=A0 except IOError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
-<br>
-=C2=A0 =C2=A0 if &#39;CONFIG_KERNEL_LZO=3Dy\n&#39; in configfile.readlines=
():<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 depends =3D d.getVar(&#39;DEPENDS&#39;, False)=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&#39;DEPENDS&#39;, depends + &#39; lz=
op-native&#39;)<br>
-}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--001a114a7a6c7eae49053039d7a8--
