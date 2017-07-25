Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4155E00C2E; Tue, 25 Jul 2017 06:01:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 741C8E00C2B
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 06:00:57 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id w199so2634985lff.2
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 06:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bVROqDLZy3YhfQpD2FAbi41mZKPSbXZ4MUh0limp8P4=;
	b=VaEvA+9CS+nSffkHztAuCchwfxMR61qg84YTMbS4H6RCL/EdBYZygT1ERvPUSb/KYr
	waSahzaLrS8eg0+zZMe9NMTU3JoNMScEbMAPfIWkDoa1gdSFBgXffNiCQL7kid01MaaQ
	XzHRNNXHvqz2WPUhmDCTb8d3CCJpWMx2MkoQrwV/U34znmzQOWyns2KhB8HQBcveMkq2
	qQiiaUaZFEzESHFbn0Wwt6MnBsHJxQMjv59h02RTA1FgB2DsaIGJ1JRhTWnZizesBfYM
	GqetXoEKGeXFn1hUtBSYM0gdKobXuZHGn1mgiF5UhWWkq5srbPMUEjYr6hGU49jenXR+
	INww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bVROqDLZy3YhfQpD2FAbi41mZKPSbXZ4MUh0limp8P4=;
	b=R8u/5chC+AQq+mxKJVxDL0JHhNPtOh1PF7XhbmR2eHkcqwJmax2TD0pqm2nbb47ONA
	M/gd6NsuxO9IQiRJ03nMWPG0Jht3ozA/2GINblw4GwTf4NQcdfhGm3SBySEu+mAlGHLW
	t+SGijMkSdCduXRSb15wOaYv8d9QvqRC4oiaWX0Hkl5VCfdWLkGUg/y10lCOb2oZrc4G
	VvncMlkROH8Mv/nNet6K0LHIZny4+m7EvhLD71HG6BTgmwKfLCE90K3wGkROePy2+TG5
	0z8eDB1xWcFjEVA3e7xmk6k4MjkgO3XFwpx4iU+2QzcsJbVj645p31Kfc4dBAsaRhCXm
	23Ng==
X-Gm-Message-State: AIVw111XN+XJvllRVmlSqi7WRyJ/iWC7wKZt2QalQMZsVg835irVd/+z
	HVkfeZPcSsbwJH+8pAfLPCmv0XBKhA==
X-Received: by 10.46.6.9 with SMTP id 9mr6346980ljg.87.1500987656028; Tue, 25
	Jul 2017 06:00:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.14.2 with HTTP; Tue, 25 Jul 2017 06:00:55 -0700 (PDT)
In-Reply-To: <CA+KKcb=08Ztv9Ga2erUN++XbTB5R395tvN8UpQz51NgfucUE1w@mail.gmail.com>
References: <CA+KKcb=08Ztv9Ga2erUN++XbTB5R395tvN8UpQz51NgfucUE1w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 25 Jul 2017 09:00:55 -0400
Message-ID: <CADkTA4PXvsvV6f-b794R4OA7Kk8UVDWnE5sNUuORbFU2-KK1TA@mail.gmail.com>
To: Federico Pietro Briata <federico@briata.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-virtualization] [recipes-containers] criu version 2.12.1
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
X-List-Received-Date: Tue, 25 Jul 2017 13:01:00 -0000
Content-Type: multipart/alternative; boundary="f403045fa2400cc875055523ecb9"

--f403045fa2400cc875055523ecb9
Content-Type: text/plain; charset="UTF-8"

Hi Frederico,

Thanks for the patch, but this needs to go to the meta-virtualization list.


Also, we carry a _git recipe in meta-virt to track the various releases
(and sometimes points in between).
So this patch should be done against that recipe versus creating a new
versioned variant.

Finally, make sure to check the patch submission guidelines, since this
patch doesn't have a proper
commit log or a Signed-off-by.

Cheers,

Bruce


On Tue, Jul 25, 2017 at 8:26 AM, Federico Pietro Briata <federico@briata.org
> wrote:

> Hi All,
>
> in attach my recipes for Criu 2.12.1.
>
> Best regards,
>
> Federico Briata
>
>
> ---
>  recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0002-criu-Skip-documentation-install.patch         |   28 +++++++
>  recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Fix-toolchain-hardcode.patch             |   94 +++++++++++++++++++++++
>  recipes-containers/criu/criu_2.12.1.bb                                                                       |   79 +++++++++++++++++++
>  recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Change-libraries-install-directory.patch |   24 ++++++
>  4 files changed, 225 insertions(+), 0 deletions(-)
>
> diff --git a/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Change-libraries-install-directory.patch b/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Change-libraries-install-directory.patch
> new file mode 100644
> index 0000000..88efba3
> --- /dev/null
> +++ b/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Change-libraries-install-directory.patch
> @@ -0,0 +1,24 @@
> +diff --git a/Makefile.install b/Makefile.install
> +index 7f867cf..15b6065 100644
> +--- a/Makefile.install
> ++++ b/Makefile.install
> +@@ -8,19 +8,6 @@ LIBDIR		:= $(PREFIX)/lib
> + INCLUDEDIR	:= $(PREFIX)/include
> + LIBEXECDIR	:= $(PREFIX)/libexec
> +
> +-#
> +-# For recent Debian/Ubuntu with multiarch support.
> +-DEB_HOST_MULTIARCH := $(shell dpkg-architecture -qDEB_HOST_MULTIARCH 2>/dev/null)
> +-ifneq "$(DEB_HOST_MULTIARCH)" ""
> +-        LIBDIR			:= $(PREFIX)/lib/$(DEB_HOST_MULTIARCH)
> +-else
> +-        #
> +-        # For most other systems
> +-        ifeq "$(shell uname -m)" "x86_64"
> +-                LIBDIR		:= $(PREFIX)/lib64
> +-        endif
> +-endif
> +-
> + export PREFIX BINDIR SBINDIR MANDIR
> + export LIBDIR INCLUDEDIR LIBEXECDIR
> +
> diff --git a/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Fix-toolchain-hardcode.patch b/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Fix-toolchain-hardcode.patch
> new file mode 100644
> index 0000000..1e1437d
> --- /dev/null
> +++ b/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0001-criu-Fix-toolchain-hardcode.patch
> @@ -0,0 +1,94 @@
> +diff --git a/Makefile b/Makefile
> +index 79490d0..1e421b1 100644
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -54,7 +54,7 @@ LDARCH			?= $(SRCARCH)
> +
> + export SRCARCH LDARCH VDSO
> +
> +-UNAME-M := $(shell uname -m)
> ++UNAME-M ?= $(shell uname -m)
> + export UNAME-M
> +
> + ifeq ($(ARCH),arm)
> +diff --git a/criu/pie/Makefile b/criu/pie/Makefile
> +index 141c018..09dbdc6 100644
> +--- a/criu/pie/Makefile
> ++++ b/criu/pie/Makefile
> +@@ -17,7 +17,7 @@ restorer-obj-e		+= ./$(ARCH_DIR)/syscalls.built-in.o
> + #
> + CFLAGS			:= $(filter-out -pg $(CFLAGS-GCOV),$(CFLAGS))
> + CFLAGS			+= -iquote $(SRC_DIR)/criu/pie/piegen
> +-CFLAGS			+= -iquote $(SRC_DIR)/criu/arch/$(ARCH)/include
> ++CFLAGS			+= -iquote $(SRC_DIR)/criu/arch/$(SRCARCH)/include
> + CFLAGS			+= -iquote $(SRC_DIR)/criu/include
> + CFLAGS			+= -iquote $(SRC_DIR)/include
> + CFLAGS			+= -iquote $(SRC_DIR)
> +diff --git a/scripts/nmk/scripts/include.mk b/scripts/nmk/scripts/include.mk
> +index 711b9da..3d44624 100644
> +--- a/scripts/nmk/scripts/include.mk
> ++++ b/scripts/nmk/scripts/include.mk
> +@@ -20,7 +20,7 @@ SUBARCH := $(shell uname -m | sed       \
> +                 -e s/aarch64.*/arm64/)
> +
> + ARCH		?= $(SUBARCH)
> +-SRCARCH 	:= $(ARCH)
> ++SRCARCH 	?= $(ARCH)
> +
> + export SUBARCH ARCH SRCARCH
> +
> +diff --git a/scripts/nmk/scripts/tools.mk b/scripts/nmk/scripts/tools.mk
> +index 56dba84..1698821 100644
> +--- a/scripts/nmk/scripts/tools.mk
> ++++ b/scripts/nmk/scripts/tools.mk
> +@@ -2,30 +2,30 @@ ifndef ____nmk_defined__tools
> +
> + #
> + # System tools shorthands
> +-RM		:= rm -f
> ++RM		?= rm -f
> + HOSTLD		?= ld
> +-LD		:= $(CROSS_COMPILE)$(HOSTLD)
> ++LD		?= $(CROSS_COMPILE)$(HOSTLD)
> + HOSTCC		?= gcc
> +-CC		:= $(CROSS_COMPILE)$(HOSTCC)
> +-CPP		:= $(CC) -E
> +-AS		:= $(CROSS_COMPILE)as
> +-AR		:= $(CROSS_COMPILE)ar
> +-STRIP		:= $(CROSS_COMPILE)strip
> +-OBJCOPY		:= $(CROSS_COMPILE)objcopy
> +-OBJDUMP		:= $(CROSS_COMPILE)objdump
> +-NM		:= $(CROSS_COMPILE)nm
> +-MAKE		:= make
> +-MKDIR		:= mkdir -p
> +-AWK		:= awk
> +-PERL		:= perl
> +-PYTHON		:= python
> +-FIND		:= find
> +-SH		:= $(shell if [ -x "$$BASH" ]; then echo $$BASH;        \
> ++CC		?= $(CROSS_COMPILE)$(HOSTCC)
> ++CPP		?= $(CC) -E
> ++AS		?= $(CROSS_COMPILE)as
> ++AR		?= $(CROSS_COMPILE)ar
> ++STRIP		?= $(CROSS_COMPILE)strip
> ++OBJCOPY		?= $(CROSS_COMPILE)objcopy
> ++OBJDUMP		?= $(CROSS_COMPILE)objdump
> ++NM		?= $(CROSS_COMPILE)nm
> ++MAKE		?= make
> ++MKDIR		?= mkdir -p
> ++AWK		?= awk
> ++PERL		?= perl
> ++PYTHON		?= python
> ++FIND		?= find
> ++SH		?= $(shell if [ -x "$$BASH" ]; then echo $$BASH;        \
> +                         else if [ -x /bin/bash ]; then echo /bin/bash;  \
> +                         else echo sh; fi ; fi)
> +-CSCOPE		:= cscope
> +-ETAGS		:= etags
> +-CTAGS		:= ctags
> ++CSCOPE		?= cscope
> ++ETAGS		?= etags
> ++CTAGS		?= ctags
> +
> + export RM HOSTLD LD HOSTCC CC CPP AS AR STRIP OBJCOPY OBJDUMP
> + export NM SH MAKE MKDIR AWK PERL PYTHON SH CSCOPE
> diff --git a/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0002-criu-Skip-documentation-install.patch b/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0002-criu-Skip-documentation-install.patch
> new file mode 100644
> index 0000000..ba414d9
> --- /dev/null
> +++ b/recipes-containers/criu/criu-2.12.1+gitAUTOINC+14e0bf7baf/0002-criu-Skip-documentation-install.patch
> @@ -0,0 +1,28 @@
> +From 07d9b3d0c372e45127dd51781d9564e8bee90dbe Mon Sep 17 00:00:00 2001
> +From: Jianchuan Wang <jianchuan.wang@windriver.com>
> +Date: Tue, 16 Aug 2016 09:42:24 +0800
> +Subject: [PATCH 2/2] criu: Skip documentation install
> +
> +asciidoc is needed to generate CRIU documentation, so skip it in install.
> +
> +Signed-off-by: Jianchuan Wang <jianchuan.wang@windriver.com>
> +---
> + Makefile.install | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Makefile.install b/Makefile.install
> +index a30dc96..33143fb 100644
> +--- a/Makefile.install
> ++++ b/Makefile.install
> +@@ -22,7 +22,7 @@ install-tree:
> + .PHONY: install-tree
> +
> + install-man:
> +-	$(Q) $(MAKE) -C Documentation install
> ++#	$(Q) $(MAKE) -C Documentation install
> + .PHONY: install-man
> +
> + install-lib: lib
> +--
> +2.7.4
> +
> diff --git a/recipes-containers/criu/criu_2.12.1.bb b/recipes-containers/criu/criu_2.12.1.bb
> new file mode 100644
> index 0000000..a170b39
> --- /dev/null
> +++ b/recipes-containers/criu/criu_2.12.1.bb
> @@ -0,0 +1,79 @@
> +SUMMARY = "CRIU"
> +DESCRIPTION = "Checkpoint/Restore In Userspace, or CRIU, is a software tool for \
> +Linux operating system. Using this tool, you can freeze a running application \
> +(or part of it) and checkpoint it to a hard drive as a collection of files. \
> +You can then use the files to restore and run the application from the point \
> +it was frozen at. The distinctive feature of the CRIU project is that it is \
> +mainly implemented in user space"
> +HOMEPAGE = "http://criu.org"
> +SECTION = "console/tools"
> +LICENSE = "GPLv2"
> +
> +EXCLUDE_FROM_WORLD = "1"
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=412de458544c1cb6a2b512cd399286e2"
> +
> +SRCREV = "14e0bf7baf0f3a47acaf86ea880d312f608d2789"
> +PR = "r0"
> +PV = "2.12.1+git${SRCPV}"
> +
> +SRC_URI = "git://github.com/xemul/criu.git;branch=criu-2.x-stable;protocol=http \
> +	   file://0001-criu-Fix-toolchain-hardcode.patch \
> +           file://0002-criu-Skip-documentation-install.patch \
> +           file://0001-criu-Change-libraries-install-directory.patch \
> +          "
> +
> +COMPATIBLE_HOST = "(x86_64|arm|aarch64).*-linux"
> +
> +DEPENDS += "libnet libnl libcap protobuf-c-native protobuf-c"
> +
> +S = "${WORKDIR}/git"
> +
> +#
> +# CRIU just can be built on ARMv7 and ARMv6, so the Makefile check
> +# if the ARCH is ARMv7 or ARMv6.
> +# ARM BSPs need set CRIU_BUILD_ARCH variable for building CRIU.
> +#
> +EXTRA_OEMAKE_arm += "ARCH=arm WERROR=0"
> +EXTRA_OEMAKE_x86-64 += "ARCH=${TARGET_ARCH} WERROR=0"
> +EXTRA_OEMAKE_aarch64 += "ARCH=${TARGET_ARCH} WERROR=0"
> +
> +EXTRA_OEMAKE_append += "SBINDIR=${sbindir} LIBDIR=${libdir} INCLUDEDIR=${includedir} PIEGEN=no"
> +EXTRA_OEMAKE_append += "LOGROTATEDIR=${sysconfdir} SYSTEMDUNITDIR=${systemd_unitdir}"
> +
> +CFLAGS += "-D__USE_GNU -D_GNU_SOURCE"
> +
> +CFLAGS += " -I${STAGING_INCDIR} -I${STAGING_INCDIR}/libnl3"
> +
> +# overide LDFLAGS to allow criu to build without: "x86_64-poky-linux-ld: unrecognized option '-Wl,-O1'"
> +export LDFLAGS=""
> +
> +export BUILD_SYS
> +export HOST_SYS
> +
> +inherit setuptools
> +
> +PACKAGECONFIG ??= ""
> +PACKAGECONFIG[selinux] = ",,libselinux"
> +
> +do_compile_prepend() {
> +    rm -rf ${S}/images/google/protobuf/descriptor.proto
> +    ln -s  ${PKG_CONFIG_SYSROOT_DIR}/usr/include/google/protobuf/descriptor.proto ${S}/images/google/protobuf/descriptor.proto
> +}
> +
> +do_compile () {
> +	oe_runmake
> +}
> +
> +do_install () {
> +    oe_runmake PREFIX=${exec_prefix} LIBDIR=${libdir} DESTDIR="${D}" install
> +}
> +
> +FILES_${PN} += "${systemd_unitdir}/ \
> +	    /etc/ \
> +	    /usr/sbin/ \
> +	    /usr/libexec \
> +            ${libdir}/python2.7/site-packages/ \
> +            ${libdir}/pycriu/ \
> +            ${libdir}/crit-0.0.1-py2.7.egg-info \
> +            "
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--f403045fa2400cc875055523ecb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Frederico,<div><br></div><div>Thanks for the patch, but=
 this needs to go to the meta-virtualization list. =C2=A0</div><div><br></d=
iv><div>Also, we carry a _git recipe in meta-virt to track the various rele=
ases (and sometimes points in between).</div><div>So this patch should be d=
one against that recipe versus creating a new versioned variant.</div><div>=
<br></div><div>Finally, make sure to check the patch submission guidelines,=
 since this patch doesn&#39;t have a proper</div><div>commit log or a Signe=
d-off-by.</div><div><br></div><div>Cheers,</div><div><br></div><div>Bruce</=
div><div><br></div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Tue, Jul 25, 2017 at 8:26 AM, Federico Pietro Briata <span dir=3D=
"ltr">&lt;<a href=3D"mailto:federico@briata.org" target=3D"_blank">federico=
@briata.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><pre style=3D"border-width:0px;border-style:none;border-color:-mo=
z-use-text-color">Hi All,<br></pre><pre style=3D"border-width:0px;border-st=
yle:none;border-color:-moz-use-text-color">in attach my recipes for Criu 2.=
12.1.<br></pre><pre style=3D"border-width:0px;border-style:none;border-colo=
r:-moz-use-text-color">Best regards,<br></pre><pre style=3D"border-width:0p=
x;border-style:none;border-color:-moz-use-text-color">Federico Briata<br></=
pre><pre style=3D"border-width:0px;border-style:none;border-color:-moz-use-=
text-color"><br>---
 recipes-containers/criu/criu-<wbr>2.12.1+gitAUTOINC+14e0bf7baf/<wbr>0002-c=
riu-Skip-documentation-<wbr>install.patch         |   28 +++++++
 recipes-containers/criu/criu-<wbr>2.12.1+gitAUTOINC+14e0bf7baf/<wbr>0001-c=
riu-Fix-toolchain-<wbr>hardcode.patch             |   94 ++++++++++++++++++=
+++++
 recipes-containers/criu/<a href=3D"http://criu_2.12.1.bb" target=3D"_blank=
">criu_<wbr>2.12.1.bb</a>                                                  =
                     |   79 +++++++++++++++++++
 recipes-containers/criu/criu-<wbr>2.12.1+gitAUTOINC+14e0bf7baf/<wbr>0001-c=
riu-Change-libraries-<wbr>install-directory.patch |   24 ++++++
 4 files changed, 225 insertions(+), 0 deletions(-)

diff --git a/recipes-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0b=
f7baf/0001-criu-Change-<wbr>libraries-install-directory.<wbr>patch b/recipe=
s-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0bf7baf/0001-criu-Cha=
nge-<wbr>libraries-install-directory.<wbr>patch
new file mode 100644
index 0000000..88efba3
--- /dev/null
+++ b/recipes-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0bf7baf/0=
001-criu-Change-<wbr>libraries-install-directory.<wbr>patch
@@ -0,0 +1,24 @@
+diff --git a/Makefile.install b/Makefile.install
+index 7f867cf..15b6065 100644
+--- a/Makefile.install
++++ b/Makefile.install
+@@ -8,19 +8,6 @@ LIBDIR		:=3D $(PREFIX)/lib
+ INCLUDEDIR	:=3D $(PREFIX)/include
+ LIBEXECDIR	:=3D $(PREFIX)/libexec
+=20
+-#
+-# For recent Debian/Ubuntu with multiarch support.
+-DEB_HOST_MULTIARCH :=3D $(shell dpkg-architecture -qDEB_HOST_MULTIARCH 2&=
gt;/dev/null)
+-ifneq &quot;$(DEB_HOST_MULTIARCH)&quot; &quot;&quot;
+-        LIBDIR			:=3D $(PREFIX)/lib/$(DEB_HOST_<wbr>MULTIARCH)
+-else
+-        #
+-        # For most other systems
+-        ifeq &quot;$(shell uname -m)&quot; &quot;x86_64&quot;
+-                LIBDIR		:=3D $(PREFIX)/lib64
+-        endif
+-endif
+-
+ export PREFIX BINDIR SBINDIR MANDIR
+ export LIBDIR INCLUDEDIR LIBEXECDIR
+=20
diff --git a/recipes-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0b=
f7baf/0001-criu-Fix-<wbr>toolchain-hardcode.patch b/recipes-containers/criu=
/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0bf7baf/0001-criu-Fix-<wbr>toolchain-h=
ardcode.patch
new file mode 100644
index 0000000..1e1437d
--- /dev/null
+++ b/recipes-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0bf7baf/0=
001-criu-Fix-<wbr>toolchain-hardcode.patch
@@ -0,0 +1,94 @@
+diff --git a/Makefile b/Makefile
+index 79490d0..1e421b1 100644
+--- a/Makefile
++++ b/Makefile
+@@ -54,7 +54,7 @@ LDARCH			?=3D $(SRCARCH)
+=20
+ export SRCARCH LDARCH VDSO
+=20
+-UNAME-M :=3D $(shell uname -m)
++UNAME-M ?=3D $(shell uname -m)
+ export UNAME-M
+=20
+ ifeq ($(ARCH),arm)
+diff --git a/criu/pie/Makefile b/criu/pie/Makefile
+index 141c018..09dbdc6 100644
+--- a/criu/pie/Makefile
++++ b/criu/pie/Makefile
+@@ -17,7 +17,7 @@ restorer-obj-e		+=3D ./$(ARCH_DIR)/syscalls.built-<wbr>i=
n.o
+ #
+ CFLAGS			:=3D $(filter-out -pg $(CFLAGS-GCOV),$(CFLAGS))
+ CFLAGS			+=3D -iquote $(SRC_DIR)/criu/pie/piegen
+-CFLAGS			+=3D -iquote $(SRC_DIR)/criu/arch/$(ARCH)/<wbr>include
++CFLAGS			+=3D -iquote $(SRC_DIR)/criu/arch/$(<wbr>SRCARCH)/include
+ CFLAGS			+=3D -iquote $(SRC_DIR)/criu/include
+ CFLAGS			+=3D -iquote $(SRC_DIR)/include
+ CFLAGS			+=3D -iquote $(SRC_DIR)
+diff --git a/scripts/nmk/scripts/<a href=3D"http://include.mk" target=3D"_=
blank">include.<wbr>mk</a> b/scripts/nmk/scripts/<a href=3D"http://include.=
mk" target=3D"_blank">include.<wbr>mk</a>
+index 711b9da..3d44624 100644
+--- a/scripts/nmk/scripts/<a href=3D"http://include.mk" target=3D"_blank">=
include.<wbr>mk</a>
++++ b/scripts/nmk/scripts/<a href=3D"http://include.mk" target=3D"_blank">=
include.<wbr>mk</a>
+@@ -20,7 +20,7 @@ SUBARCH :=3D $(shell uname -m | sed       \
+                 -e s/aarch64.*/arm64/)
+=20
+ ARCH		?=3D $(SUBARCH)
+-SRCARCH 	:=3D $(ARCH)
++SRCARCH 	?=3D $(ARCH)
+=20
+ export SUBARCH ARCH SRCARCH
+=20
+diff --git a/scripts/nmk/scripts/<a href=3D"http://tools.mk" target=3D"_bl=
ank">tools.mk</a> b/scripts/nmk/scripts/<a href=3D"http://tools.mk" target=
=3D"_blank">tools.mk</a>
+index 56dba84..1698821 100644
+--- a/scripts/nmk/scripts/<a href=3D"http://tools.mk" target=3D"_blank">to=
ols.mk</a>
++++ b/scripts/nmk/scripts/<a href=3D"http://tools.mk" target=3D"_blank">to=
ols.mk</a>
+@@ -2,30 +2,30 @@ ifndef ____nmk_defined__tools
+=20
+ #
+ # System tools shorthands
+-RM		:=3D rm -f
++RM		?=3D rm -f
+ HOSTLD		?=3D ld
+-LD		:=3D $(CROSS_COMPILE)$(HOSTLD)
++LD		?=3D $(CROSS_COMPILE)$(HOSTLD)
+ HOSTCC		?=3D gcc
+-CC		:=3D $(CROSS_COMPILE)$(HOSTCC)
+-CPP		:=3D $(CC) -E
+-AS		:=3D $(CROSS_COMPILE)as
+-AR		:=3D $(CROSS_COMPILE)ar
+-STRIP		:=3D $(CROSS_COMPILE)strip
+-OBJCOPY		:=3D $(CROSS_COMPILE)objcopy
+-OBJDUMP		:=3D $(CROSS_COMPILE)objdump
+-NM		:=3D $(CROSS_COMPILE)nm
+-MAKE		:=3D make
+-MKDIR		:=3D mkdir -p
+-AWK		:=3D awk
+-PERL		:=3D perl
+-PYTHON		:=3D python
+-FIND		:=3D find
+-SH		:=3D $(shell if [ -x &quot;$$BASH&quot; ]; then echo $$BASH;        \
++CC		?=3D $(CROSS_COMPILE)$(HOSTCC)
++CPP		?=3D $(CC) -E
++AS		?=3D $(CROSS_COMPILE)as
++AR		?=3D $(CROSS_COMPILE)ar
++STRIP		?=3D $(CROSS_COMPILE)strip
++OBJCOPY		?=3D $(CROSS_COMPILE)objcopy
++OBJDUMP		?=3D $(CROSS_COMPILE)objdump
++NM		?=3D $(CROSS_COMPILE)nm
++MAKE		?=3D make
++MKDIR		?=3D mkdir -p
++AWK		?=3D awk
++PERL		?=3D perl
++PYTHON		?=3D python
++FIND		?=3D find
++SH		?=3D $(shell if [ -x &quot;$$BASH&quot; ]; then echo $$BASH;        \
+                         else if [ -x /bin/bash ]; then echo /bin/bash;  \
+                         else echo sh; fi ; fi)
+-CSCOPE		:=3D cscope
+-ETAGS		:=3D etags
+-CTAGS		:=3D ctags
++CSCOPE		?=3D cscope
++ETAGS		?=3D etags
++CTAGS		?=3D ctags
+=20
+ export RM HOSTLD LD HOSTCC CC CPP AS AR STRIP OBJCOPY OBJDUMP
+ export NM SH MAKE MKDIR AWK PERL PYTHON SH CSCOPE
diff --git a/recipes-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0b=
f7baf/0002-criu-Skip-<wbr>documentation-install.patch b/recipes-containers/=
criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0bf7baf/0002-criu-Skip-<wbr>docume=
ntation-install.patch
new file mode 100644
index 0000000..ba414d9
--- /dev/null
+++ b/recipes-containers/criu/<wbr>criu-2.12.1+gitAUTOINC+<wbr>14e0bf7baf/0=
002-criu-Skip-<wbr>documentation-install.patch
@@ -0,0 +1,28 @@
+From 07d9b3d0c372e45127dd51781d9564<wbr>e8bee90dbe Mon Sep 17 00:00:00 200=
1
+From: Jianchuan Wang &lt;<a href=3D"mailto:jianchuan.wang@windriver.com" t=
arget=3D"_blank">jianchuan.wang@windriver.com</a>&gt;
+Date: Tue, 16 Aug 2016 09:42:24 +0800
+Subject: [PATCH 2/2] criu: Skip documentation install
+
+asciidoc is needed to generate CRIU documentation, so skip it in install.
+
+Signed-off-by: Jianchuan Wang &lt;<a href=3D"mailto:jianchuan.wang@windriv=
er.com" target=3D"_blank">jianchuan.wang@windriver.com</a>&gt;
+---
+ Makefile.install | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile.install b/Makefile.install
+index a30dc96..33143fb 100644
+--- a/Makefile.install
++++ b/Makefile.install
+@@ -22,7 +22,7 @@ install-tree:
+ .PHONY: install-tree
+=20
+ install-man:
+-	$(Q) $(MAKE) -C Documentation install
++#	$(Q) $(MAKE) -C Documentation install
+ .PHONY: install-man
+=20
+ install-lib: lib
+--=20
+2.7.4
+
diff --git a/recipes-containers/criu/<a href=3D"http://criu_2.12.1.bb" targ=
et=3D"_blank">criu<wbr>_2.12.1.bb</a> b/recipes-containers/criu/<a href=3D"=
http://criu_2.12.1.bb" target=3D"_blank">criu<wbr>_2.12.1.bb</a>
new file mode 100644
index 0000000..a170b39
--- /dev/null
+++ b/recipes-containers/criu/<a href=3D"http://criu_2.12.1.bb" target=3D"_=
blank">criu<wbr>_2.12.1.bb</a>
@@ -0,0 +1,79 @@
+SUMMARY =3D &quot;CRIU&quot;
+DESCRIPTION =3D &quot;Checkpoint/Restore In Userspace, or CRIU, is a softw=
are tool for \
+Linux operating system. Using this tool, you can freeze a running applicat=
ion \
+(or part of it) and checkpoint it to a hard drive as a collection of files=
. \
+You can then use the files to restore and run the application from the poi=
nt \
+it was frozen at. The distinctive feature of the CRIU project is that it i=
s \
+mainly implemented in user space&quot;
+HOMEPAGE =3D &quot;<a href=3D"http://criu.org" target=3D"_blank">http://cr=
iu.org</a>&quot;
+SECTION =3D &quot;console/tools&quot;
+LICENSE =3D &quot;GPLv2&quot;
+
+EXCLUDE_FROM_WORLD =3D &quot;1&quot;
+
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<wbr>412de458544c1cb6a2b51=
2cd399286<wbr>e2&quot;
+
+SRCREV =3D &quot;<wbr>14e0bf7baf0f3a47acaf86ea880d31<wbr>2f608d2789&quot;
+PR =3D &quot;r0&quot;
+PV =3D &quot;2.12.1+git${SRCPV}&quot;
+
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/xemul/criu.git;branch=
=3Dcriu-2.x-stable;protocol=3Dhttp" target=3D"_blank">github.com/xemul/criu=
.<wbr>git;branch=3Dcriu-2.x-stable;<wbr>protocol=3Dhttp</a> \
+	   file://0001-criu-Fix-<wbr>toolchain-hardcode.patch \
+           file://0002-criu-Skip-<wbr>documentation-install.patch \
+           file://0001-criu-Change-<wbr>libraries-install-directory.<wbr>p=
atch \
+          &quot;
+
+COMPATIBLE_HOST =3D &quot;(x86_64|arm|aarch64).*-linux&quot;
+
+DEPENDS +=3D &quot;libnet libnl libcap protobuf-c-native protobuf-c&quot;
+
+S =3D &quot;${WORKDIR}/git&quot;
+
+#
+# CRIU just can be built on ARMv7 and ARMv6, so the Makefile check
+# if the ARCH is ARMv7 or ARMv6.
+# ARM BSPs need set CRIU_BUILD_ARCH variable for building CRIU.
+#
+EXTRA_OEMAKE_arm +=3D &quot;ARCH=3Darm WERROR=3D0&quot;
+EXTRA_OEMAKE_x86-64 +=3D &quot;ARCH=3D${TARGET_ARCH} WERROR=3D0&quot;
+EXTRA_OEMAKE_aarch64 +=3D &quot;ARCH=3D${TARGET_ARCH} WERROR=3D0&quot;
+
+EXTRA_OEMAKE_append +=3D &quot;SBINDIR=3D${sbindir} LIBDIR=3D${libdir} INC=
LUDEDIR=3D${includedir} PIEGEN=3Dno&quot;
+EXTRA_OEMAKE_append +=3D &quot;LOGROTATEDIR=3D${sysconfdir} SYSTEMDUNITDIR=
=3D${systemd_<wbr>unitdir}&quot;
+
+CFLAGS +=3D &quot;-D__USE_GNU -D_GNU_SOURCE&quot;
+
+CFLAGS +=3D &quot; -I${STAGING_INCDIR} -I${STAGING_INCDIR}/libnl3&quot;
+
+# overide LDFLAGS to allow criu to build without: &quot;x86_64-poky-linux-=
ld: unrecognized option &#39;-Wl,-O1&#39;&quot;
+export LDFLAGS=3D&quot;&quot;
+
+export BUILD_SYS
+export HOST_SYS
+
+inherit setuptools
+
+PACKAGECONFIG ??=3D &quot;&quot;
+PACKAGECONFIG[selinux] =3D &quot;,,libselinux&quot;
+
+do_compile_prepend() {
+    rm -rf ${S}/images/google/protobuf/<wbr>descriptor.proto
+    ln -s  ${PKG_CONFIG_SYSROOT_DIR}/usr/<wbr>include/google/protobuf/<wbr=
>descriptor.proto ${S}/images/google/protobuf/<wbr>descriptor.proto
+}
+
+do_compile () {
+	oe_runmake
+}
+
+do_install () {
+    oe_runmake PREFIX=3D${exec_prefix} LIBDIR=3D${libdir} DESTDIR=3D&quot;=
${D}&quot; install
+}
+
+FILES_${PN} +=3D &quot;${systemd_unitdir}/ \
+	    /etc/ \
+	    /usr/sbin/ \
+	    /usr/libexec \
+            ${libdir}/python2.7/site-<wbr>packages/ \
+            ${libdir}/pycriu/ \
+            ${libdir}/crit-0.0.1-py2.7.<wbr>egg-info \
+            &quot;
</pre></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt =
not follow the NULL pointer, for chaos and madness await thee at its end&qu=
ot;</div>
</div></div></div>

--f403045fa2400cc875055523ecb9--
