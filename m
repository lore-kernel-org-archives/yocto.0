Return-Path: <remi.subra@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2B9E95372
	for <webhook@archiver.kernel.org>; Wed,  4 Feb 2026 10:04:06 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.17032.1770199437422137968
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Feb 2026 02:03:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=pn6YqhDx;
 spf=pass (domain: smile.fr, ip: 209.85.167.47, mailfrom: remi.subra@smile.fr)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59dea72099eso7709281e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 02:03:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770199435; cv=none;
        d=google.com; s=arc-20240605;
        b=FmNZic5C3HNZupq9LND2cVhY3N9K6SdMDehA7HXl6pnvLY1nGtGstOYxyyxqxUtZz9
         PE91WwG6Ije9O9pIOkHXUukMoA21XXEZVuYkmDx4K0kVmXkgHI72CGf83UzkpmHLD/+e
         ik5+QUo4Yvl+pxYyWf+AzIevdvBII6NZx44vpCnx6DDu8yfysy4VOhhQ526xwT529bBk
         WQPeqbBcc72mR7E0cxH3JHe2NPq5wPFV2waunXnXfqbkza1Yjz0sDr8vP2AEpCjg9kme
         WWYIUkKJpUz1n9G5IfxTkuNYMZonQLcYPg/s02yPx4+q76d0e7JvNWgILwulK3X5zRYA
         iMwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=EODfDu+WH7rTwptnBerAut10l8sfxR1U8szsaDrwriU=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=Ny/gzcKMbpPt60EcKnDFOr1Ot8ZxwfslLfUxRgoWB1oWY3q6mzUrIA6obrx7LMv6GR
         7sMefnChvBauYH3lzlEJiZPHoCFsmgoX6pZQuG+ucUH2xAjVI2gt3kV3R9lX5SnRz7ax
         eUVKTbVSu/YkW3TDtQ7Asr+TEY2U1sIfqlVkqg4qWLiYn3rXAijFJqoeB5QwJayGGKbe
         mkl1XfZ/sdRT3noMIMBjQ8fdC80eDWaC7JCYbc+npsrcKXe9an3rfpHQsaRy2UfmUnY5
         INbEkedOa+23iPC6GZGcOl3UB6Bm6dou1N0Pz7uykx1KfoiuHRiLznBylP7GVKvBDoPW
         /8xA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1770199435; x=1770804235; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EODfDu+WH7rTwptnBerAut10l8sfxR1U8szsaDrwriU=;
        b=pn6YqhDx6q0hwi5nnOkQSHcKiHFtFIlWoV055KIY9us+EFX1/pwS1IcW6/7ggT52Ig
         Q6+UnZXgIAh18+ZF1LhV1MMTiKcpT3TZIu8us8UlRlHKsYMdbrmJx5RxY+W7myGgoIvN
         wDp+98w+Mm6wpXpFw+6IbFY5fKTr5gMukoqQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770199435; x=1770804235;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EODfDu+WH7rTwptnBerAut10l8sfxR1U8szsaDrwriU=;
        b=XrKsxMM0ZoGphOtEhK4jkq4lkSXMn9Z6tfrDPzczH3Z+UQbQZ1O/Fou/9zA5fQK65Z
         SQNnU1PluQgntKJjvWDxSbAcMkCUb9s9DcqvwkkJxJ+WUTt53XGa563fBnmFF1oyLCio
         ymev4NycSZyHCmiyTFNM+02dIwBUfJRydV5DrwjsXMNmyLnSQXHZsWjjpfHHAtBFTRHG
         AjPb1m0PlKQqcV2AEe7FGwnyL1GskfA70xeFTpx3UL9law8uHFsAMtv7w7pCi7L9/bqW
         o+jHZjq/sI0U0i9behL0HicE+rm95fmo40mo9QGFThFjgr4F7EopRg9OYBVWLC3G9MAA
         inqw==
X-Gm-Message-State: AOJu0YwBJw8gIoJAJrOL4p/Oqfl/Xs70BIxGdgR6yN5wfdG8X4ovK2Y1
	k57IoRr6fIkARtTmFy6Zi/QhEWSwHjfb7H2rVvNklDn8JHY4i9FtBmPiAG4cu9WOYbhjitOqvlX
	WBaeH45HelFSrfnc+NnWX0VfnbYaC9c3f0O/PAR0+VPojj2F88EO0J8c=
X-Gm-Gg: AZuq6aIlTQI1pv/tdfHWxn7tdzPJ+PxGw0JHO1w8kJE4m/ZuaoaH9pOSFBk3ANwDtSU
	HS2kvYVKQGoCzEyqaDoPU7y1j0Dk4o62B/RLCtiUldbg33VwZ49bqaCZdlIRDfqB7xbxTjbOWfC
	FRzanfP0RvbAbSd7U2UOqaagGEjsU+Yt6ZLV8ScV4LFfVIW0fkUtc1Q/HpWFY3SubSulqSwntgC
	6DWOmfSS+YBhJ3b9IZLrBmaH4viVnoZqRfawmppmQnskXjkOYuIOaLLFbTn2fgoak/1RexOgziY
	NXUczQ==
X-Received: by 2002:ac2:51d0:0:b0:59c:bdd8:9d7e with SMTP id
 2adb3069b0e04-59e38c47529mr1062713e87.45.1770199434885; Wed, 04 Feb 2026
 02:03:54 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?R=C3=A9mi_SUBRA?= <remi.subra@smile.fr>
Date: Wed, 4 Feb 2026 11:03:44 +0100
X-Gm-Features: AZwV_QgnRRp6Z-Z5WuFeUaGPyUmjySSi8VxhFZx5SdO9OEIqNjLM0GtaqM7AA1E
Message-ID: <CAHThLsnSD1yn7d02JEU82EQuffWjwYfPVtse1oXWp88OURhhtQ@mail.gmail.com>
Subject: Busybox init manager: proposal for install scripts, like update-rc.d
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 10:04:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66215

Hello,

I'm trying to build a "minimal" system and want to use the busybox
init manager, by setting INIT_MANAGER=3D"mdev-busybox" in my DISTRO.
The busybox recipe automatically installs the inittab, with
corresponding rcS and rcK scripts which handle start/stop scripts in
the /etc/rcX.d directory. Unfortunately there is no way currently in
OpenEmbedded to automatically install the service script from a
package as expected by the busybox init manager configuration (like
with sysvinit or systemd) :/

So I wrote a new class to handle these use case, deeply inspired by
the update-rc.d class. But I didn't use it directly as update-rc.d
handles the runlevels, as sysvinit, and they are completely ignored by
busybox init. But I think that the INITSCRIPT_PACKAGES,
INITSCRIPT_NAME and INITSCRIPT_PARAMS defined in recipes for sysvinit
support could be re-used.
By using the same variables, I think that all packages supporting
sysvinit could also support busybox init without modification in their
recipes (by inheriting my new class inside update-rc.d.bbclass).

I choose to install a symlink to the service init script in
/etc/rcS.d/SXXname if start is found in the INITSCRIPT_PARAMS, and
stop symlink in /etc/rcK.d/KXXname if stop is in parameters. I also
respect the defaults params like in update-rc.d.
I mainly choose the directory name to be like sysvinit, but slightly
different to avoid confusion.

Now I would like to propose a patch for this feature, but I don't know
if my current approach is good. I'm especially not sure if creating a
new class is the better approach, or if it's better to "merge" it
inside the update-rc.d class?
So, I really appreciate your opinion, as yocto core developers.

Kind regards
    R=C3=A9mi SUBRA, Smile


FIY, there is my current implementation (is a WIP and my first class,
so please be patient with me):

diff --git a/meta/classes-recipe/busybox-init.bbclass
b/meta/classes-recipe/busybox-init.bbclass
new file mode 100644
index 0000000000..cd508cf325
--- /dev/null
+++ b/meta/classes-recipe/busybox-init.bbclass
@@ -0,0 +1,133 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+INITSCRIPT_PARAMS ?=3D "defaults"
+
+INIT_D_DIR =3D "${sysconfdir}/init.d"
+INIT_D_RCS =3D "${INIT_D_DIR}/rcS"
+INIT_D_RCK =3D "${INIT_D_DIR}/rcK"
+RCS_DIR =3D "${sysconfdir}/rcS.d"
+RCK_DIR =3D "${sysconfdir}/rcK.d"
+
+def initscript_priority(mode:str, d):
+    params =3D d.getVar('INITSCRIPT_PARAMS').split()
+    priority =3D 20
+
+    if mode !=3D "start" and mode !=3D "stop":
+        bb.error("invalid mode [start|stop] for init script: %s" % mode)
+        return ""
+
+    if mode in params:
+        idx_mode =3D params.index(mode)
+        if '.' not in params[idx_mode:]:
+            bb.error("INITSCRIPT_PARAMS missing '.' after %s: %s" %
(mode, params))
+            return ""
+        idx_end =3D params.index('.', idx_mode)
+
+        mode_params =3D params[idx_mode:idx_end+1]
+        if (len(mode_params) < 4):
+            bb.error("INITSCRIPT_PARAMS doesn't have a correct format
for %s: %s" % (mode, params))
+            return ""
+        priority =3D mode_params[1]
+    elif params[0] =3D=3D "defaults":
+        if mode =3D=3D "start" and len(params) > 1:
+            priority =3D params[1]
+        if mode =3D=3D "stop" and len(params) > 2:
+            priority =3D params[2]
+    else:
+        bb.note("INITSCRIPT_PARAMS doesn't define the %s priority:
%s" % (mode, params))
+        return ""
+
+    bb.debug(1, "INITSCRIPT_PARAMS: %s -> %s priority %s" % (params,
mode, priority))
+    return f"{priority:02}"
+
+busyboxinit_postinst() {
+if [ -x "$D${INIT_D_RCS}" -a -f "$D${INIT_D_RCS}" ]; then
+    mkdir -p "$D${RCS_DIR}"
+    link_prio=3D${@initscript_priority('start', d)}
+    if [ "x$link_prio" !=3D "x" ]; then
+        ln -s "../init.d/${INITSCRIPT_NAME}"
"$D${RCS_DIR}/S${link_prio}${INITSCRIPT_NAME}"
+    fi
+fi
+if [ -x "$D${INIT_D_RCK}" -a -f "$D${INIT_D_RCK}" ]; then
+    mkdir -p "$D${RCK_DIR}"
+    link_prio=3D${@initscript_priority('stop', d)}
+    if [ "x$link_prio" !=3D "x" ]; then
+        ln -s "../init.d/${INITSCRIPT_NAME}"
"$D${RCK_DIR}/K${link_prio}${INITSCRIPT_NAME}"
+    fi
+fi
+}
+
+busyboxinit_prerm() {
+if [ -z "$D" -a -x "${INIT_D_DIR}/${INITSCRIPT_NAME}" ]; then
+ ${INIT_D_DIR}/${INITSCRIPT_NAME} stop || :
+fi
+}
+
+busyboxinit_postrm() {
+if [ -d "$D${RCS_DIR}" ]; then
+    rm -f $D${RCS_DIR}/S??${INITSCRIPT_NAME}
+fi
+if [ -d "$D${RCK_DIR}" ]; then
+    rm -f $D${RCK_DIR}/K??${INITSCRIPT_NAME}
+fi
+}
+
+
+def busyboxinit_after_parse(d):
+    if d.getVar('INITSCRIPT_PACKAGES', False) =3D=3D None:
+        if d.getVar('INITSCRIPT_NAME', False) =3D=3D None:
+            bb.fatal("%s inherits busybox-init but doesn't set
INITSCRIPT_NAME" % d.getVar('FILE', False))
+        if d.getVar('INITSCRIPT_PARAMS', False) =3D=3D None:
+            bb.fatal("%s inherits busybox-init but doesn't set
INITSCRIPT_PARAMS" % d.getVar('FILE', False))
+
+python __anonymous() {
+    busyboxinit_after_parse(d)
+}
+
+PACKAGESPLITFUNCS =3D+ "${@'populate_packages_busyboxinit' if
d.getVar('INIT_MANAGER') =3D=3D 'mdev-busybox' else ''}"
+
+populate_packages_busyboxinit[vardeps] +=3D "busyboxinit_prerm
busyboxinit_postrm busyboxinit_postinst"
+populate_packages_busyboxinit[vardepsexclude] +=3D "OVERRIDES"
+
+python populate_packages_busyboxinit () {
+    def busyboxinit_package(pkg):
+        import subprocess
+        import os
+
+        bb.debug(1, 'adding busybox-init links in
postinst/prerm/postrm for %s' % pkg)
+
+        localdata =3D bb.data.createCopy(d)
+        overrides =3D localdata.getVar("OVERRIDES")
+        localdata.setVar("OVERRIDES", "%s:%s" % (pkg, overrides))
+
+        postinst =3D d.getVar('pkg_postinst:%s' % pkg)
+        if not postinst:
+            postinst =3D '#!/bin/sh\n'
+        postinst +=3D localdata.getVar('busyboxinit_postinst')
+        d.setVar('pkg_postinst:%s' % pkg, postinst)
+
+        prerm =3D d.getVar('pkg_prerm:%s' % pkg)
+        if not prerm:
+            prerm =3D '#!/bin/sh\n'
+        prerm +=3D localdata.getVar('busyboxinit_prerm')
+        d.setVar('pkg_prerm:%s' % pkg, prerm)
+
+        postrm =3D d.getVar('pkg_postrm:%s' % pkg)
+        if not postrm:
+                postrm =3D '#!/bin/sh\n'
+        postrm +=3D localdata.getVar('busyboxinit_postrm')
+        d.setVar('pkg_postrm:%s' % pkg, postrm)
+
+    pkgs =3D d.getVar('INITSCRIPT_PACKAGES')
+    if pkgs =3D=3D None:
+        pkgs =3D d.getVar('UPDATERCPN')
+        packages =3D (d.getVar('PACKAGES') or "").split()
+        if not pkgs in packages and packages !=3D []:
+            pkgs =3D packages[0]
+    for pkg in pkgs.split():
+        busyboxinit_package(pkg)
+}
diff --git a/meta/classes-recipe/update-rc.d.bbclass
b/meta/classes-recipe/update-rc.d.bbclass
index a19e704741..840dede320 100644
--- a/meta/classes-recipe/update-rc.d.bbclass
+++ b/meta/classes-recipe/update-rc.d.bbclass
@@ -4,6 +4,8 @@
 # SPDX-License-Identifier: MIT
 #

+inherit busybox-init
+
 UPDATERCPN ?=3D "${PN}"

 DEPENDS:append:class-target =3D
"${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', ' update-rc.d
initscripts', '', d)}"
diff --git a/meta/recipes-core/busybox/files/rcK
b/meta/recipes-core/busybox/files/rcK
index f8a63e1325..b6d97f8fef 100644
--- a/meta/recipes-core/busybox/files/rcK
+++ b/meta/recipes-core/busybox/files/rcK
@@ -1,9 +1,9 @@
 #!/bin/sh

-# Stop all init scripts in /etc/rc6.d
+# Stop all init scripts in /etc/rcK.d and /etc/rc6.d
 # executing them in numerical order.
 #
-for i in /etc/rc6.d/K??*; do
+for i in /etc/rcK.d/K??* /etc/rc6.d/K??*; do

      # Ignore dangling symlinks (if any).
      [ ! -f "$i" ] && continue

