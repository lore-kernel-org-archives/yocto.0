Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.9461.1625592187895129130
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 10:23:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qnzEweO5;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jpewhacker@gmail.com)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B499A38C063A
	for <yocto@yoctoproject.org>; Tue,  6 Jul 2021 17:23:06 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id 59-20020a9d0ac10000b0290462f0ab0800so22275162otq.11
        for <yocto@yoctoproject.org>; Tue, 06 Jul 2021 10:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=8JX3NzM8fyg0mmooL5f2eX0aOfkxmNhgrRdMV+s2wfI=;
        b=qnzEweO5P6yIGziFUDkw9+q8N3l3tMmu+xv2IgMq9tB80qGLujNupkrzfRoAQOU/Ja
         iLB98hj8xmObwiia0oMSYXl4WizU+LWODRJEA0sxbCMuMycoGS7iiMWEGRRy/GXbT7G0
         YVRjDBCSvjtg9KJrR6Gp5m+PVrpbAW86cL/osaeFaqx2Newc4VLjKyp6BldPHPgHV8fL
         jpIXersT3pmLGJnDSK1LyIFupDnEycykomw1pjiNZqt1gpjA18rtUeixK2DAwCnegg8g
         cW6bfQVQ62SwTsHjv0cIu5weimJp5gd81GRePEO71+wxLu5tV0OjZ9SZBhpnyz3iH8JP
         4oyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=8JX3NzM8fyg0mmooL5f2eX0aOfkxmNhgrRdMV+s2wfI=;
        b=JkN4fu1lXlW9IwLavm0zORIO/8niVLkQB9rMjooJk56MP+jIbKgDrum6Kyhfs97ewl
         wtLxl5o+PxDxEaXD7zItuyhEZNf1ThRcjBr0fcaI9/ha9BxwdH8+KpGcwDOCbS0myHNv
         JqcLjxIsg4Y0+/uPxLnjVEYvBz8LD06FH+p6Wf9Sutp8SHfQpAa5P7sHZ4u24eV8lneW
         PYI+QpsmL8I67D0ezYXIuQTOBI+SH4u9GlrpUPNXpVgzuVqGl+3uVMrgu7y1WyvhHEaN
         pGm4RFKur71o6P6XUXolFfULTi+QJW+tYm6KT5kACjv8XrpJdKLsinqrKUQKimUAZBk9
         32ig==
X-Gm-Message-State: AOAM533wW3R+e30r2mVfdcMfwd2dmQZ6sgsSuz25S5DYlrLJtM3o8Kol
	5mtQk5Y9EkNviE3m14GuSHw=
X-Google-Smtp-Source: ABdhPJy2JtrvITU05Zr519a9bqGHFGIhuD9JhwUsZCjgHJ+h/WAe6OoujswqL6kqPPuXG0blpt96gw==
X-Received: by 2002:a9d:600b:: with SMTP id h11mr15742327otj.313.1625592185909;
        Tue, 06 Jul 2021 10:23:05 -0700 (PDT)
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id q26sm3419854ota.20.2021.07.06.10.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 10:23:05 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-mingw][PATCH] openssl: support for building nativesdk of mingw
To: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org
References: <20210105033119.425-1-changqing.li@windriver.com>
Cc: paul.eggleton@microsoft.com, derawa@microsoft.com
Message-ID: <dea213ad-0c35-53a5-d893-0f3f1bcad182@gmail.com>
Date: Tue, 6 Jul 2021 12:23:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210105033119.425-1-changqing.li@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------0AE92A151611782C608F02FC"
Content-Language: en-US

--------------0AE92A151611782C608F02FC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 1/4/21 9:31 PM, Changqing Li wrote:
> * add support for mingw32
> * Engines are installed in a slightly different path, which is
>    urgly, patch it to make the path shorter
> * remove runtime dependency from perl for mingw nativesdk
>
> since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
> 'openssl: Add c_rehash to misc package and add perl runtime dependency'
>
> package openssl-misc have runtime dependency on perl, and perl then
> have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
> http://arsv.github.io/perl-cross/usage.html, perl don't support
> cross-compile build for mingw32 and another 3 recipes also don't
> support mingw well. so remove the dependency of perl, don't support
> c_rehash for mingw.


It would appear that some or all of this patch is unnecessary. OE-core 
166bb89f6d97495b6522786182b4f9623acd7ff4 implements part of this patch, 
which makes me think it's working there without any changes necessary. 
It would be worth following up to see if that is the case.


>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
>   .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
>   2 files changed, 63 insertions(+)
>   create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
>   create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend
>
> diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
> new file mode 100644
> index 0000000..028431b
> --- /dev/null
> +++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
> @@ -0,0 +1,32 @@
> +From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
> +From: Changqing Li <changqing.li@windriver.com>
> +Date: Tue, 22 Dec 2020 09:22:10 +0800
> +Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
> +
> +we had pass libdir to Configure, don't use prefix again to
> +avoid engineer dir set to:
> +/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
> +
> +Upstream-Status: Inappropriate[oe-specific]
> +
> +Signed-off-by: Changqing Li <changqing.li@windriver.com>
> +---
> + Configurations/unix-Makefile.tmpl | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Makefile.tmpl
> +index bbafb98..eecb63e 100644
> +--- a/Configurations/unix-Makefile.tmpl
> ++++ b/Configurations/unix-Makefile.tmpl
> +@@ -244,7 +244,7 @@ LIBDIR={- our $libdir = $config{libdir} || "lib";
> +           File::Spec::Win32->file_name_is_absolute($libdir) ? "" : $libdir -}
> + ENGINESDIR_dev={- use File::Spec::Win32;
> +                   our $enginesdir =
> +-                      File::Spec::Win32->catdir($prefix,$libdir,
> ++                      File::Spec::Win32->catdir($libdir,
> +                                                 "engines-$sover_dirname");
> +                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_file) =
> +                       File::Spec::Win32->splitpath($enginesdir, 1);
> +--
> +2.17.1
> +
> diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-connectivity/openssl/openssl_%.bbappend
> new file mode 100644
> index 0000000..7fd82f1
> --- /dev/null
> +++ b/recipes-connectivity/openssl/openssl_%.bbappend
> @@ -0,0 +1,31 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +SRC_URI_append_mingw32_class-nativesdk = " \
> +           file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch \
> +"
> +
> +do_configure_mingw32 () {
> +	os=${HOST_OS}
> +	target="$os-${HOST_ARCH}"
> +	case $target in
> +        mingw32-x86_64)
> +                target=mingw64
> +                ;;
> +        mingw32-i686)
> +                target=mingw
> +                ;;
> +        esac
> +
> +        useprefix=${prefix}
> +        if [ "x$useprefix" = "x" ]; then
> +                useprefix=/
> +        fi
> +        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA_OECONF, as they will fully replace the
> +        # environment variables set by bitbake. Adjust the environment variables instead.
> +        HASHBANGPERL="/usr/bin/env perl" PERL=perl PERL5LIB="${S}/external/perl/Text-Template-1.46/lib/" \
> +        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --prefix=$useprefix --openssldir=${libdir}/ssl-1.1 --libdir=${libdir} $target
> +        perl ${B}/configdata.pm --dump
> +}
> +
> +FILES_${PN}-engines_mingw32_class-nativesdk = "${libdir}/engines-1_1"
> +RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk = "perl"
>
> 
>

--------------0AE92A151611782C608F02FC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/4/21 9:31 PM, Changqing Li wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20210105033119.425-1-changqing.li@windriver.com">
      <pre class="moz-quote-pre" wrap="">* add support for mingw32
* Engines are installed in a slightly different path, which is
  urgly, patch it to make the path shorter
* remove runtime dependency from perl for mingw nativesdk

since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
'openssl: Add c_rehash to misc package and add perl runtime dependency'

package openssl-misc have runtime dependency on perl, and perl then
have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
<a class="moz-txt-link-freetext" href="http://arsv.github.io/perl-cross/usage.html">http://arsv.github.io/perl-cross/usage.html</a>, perl don't support
cross-compile build for mingw32 and another 3 recipes also don't
support mingw well. so remove the dependency of perl, don't support
c_rehash for mingw.</pre>
    </blockquote>
    <p><br>
    </p>
    <p>It would appear that some or all of this patch is unnecessary.
      OE-core 166bb89f6d97495b6522786182b4f9623acd7ff4 implements part
      of this patch, which makes me think it's working there without any
      changes necessary. It would be worth following up to see if that
      is the case.<br>
      <br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:20210105033119.425-1-changqing.li@windriver.com">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
---
 ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
 .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
 create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend

diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
new file mode 100644
index 0000000..028431b
--- /dev/null
+++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
@@ -0,0 +1,32 @@
+From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
+From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
+Date: Tue, 22 Dec 2020 09:22:10 +0800
+Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
+
+we had pass libdir to Configure, don't use prefix again to
+avoid engineer dir set to:
+/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
+
+Upstream-Status: Inappropriate[oe-specific]
+
+Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
+---
+ Configurations/unix-Makefile.tmpl | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Makefile.tmpl
+index bbafb98..eecb63e 100644
+--- a/Configurations/unix-Makefile.tmpl
++++ b/Configurations/unix-Makefile.tmpl
+@@ -244,7 +244,7 @@ LIBDIR={- our $libdir = $config{libdir} || "lib";
+           File::Spec::Win32-&gt;file_name_is_absolute($libdir) ? "" : $libdir -}
+ ENGINESDIR_dev={- use File::Spec::Win32;
+                   our $enginesdir =
+-                      File::Spec::Win32-&gt;catdir($prefix,$libdir,
++                      File::Spec::Win32-&gt;catdir($libdir,
+                                                 "engines-$sover_dirname");
+                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_file) =
+                       File::Spec::Win32-&gt;splitpath($enginesdir, 1);
+-- 
+2.17.1
+
diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-connectivity/openssl/openssl_%.bbappend
new file mode 100644
index 0000000..7fd82f1
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl_%.bbappend
@@ -0,0 +1,31 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI_append_mingw32_class-nativesdk = " \
+           <a class="moz-txt-link-freetext" href="file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch">file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch</a> \
+"
+
+do_configure_mingw32 () {
+	os=${HOST_OS}
+	target="$os-${HOST_ARCH}"
+	case $target in
+        mingw32-x86_64)
+                target=mingw64
+                ;;
+        mingw32-i686)
+                target=mingw
+                ;;
+        esac
+
+        useprefix=${prefix}
+        if [ "x$useprefix" = "x" ]; then
+                useprefix=/
+        fi
+        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA_OECONF, as they will fully replace the
+        # environment variables set by bitbake. Adjust the environment variables instead.
+        HASHBANGPERL="/usr/bin/env perl" PERL=perl PERL5LIB="${S}/external/perl/Text-Template-1.46/lib/" \
+        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --prefix=$useprefix --openssldir=${libdir}/ssl-1.1 --libdir=${libdir} $target
+        perl ${B}/configdata.pm --dump
+}
+
+FILES_${PN}-engines_mingw32_class-nativesdk = "${libdir}/engines-1_1"
+RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk = "perl"
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------0AE92A151611782C608F02FC--
