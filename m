Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.11183.1592882821389234695
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 20:27:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: kai.kang@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 05N3QChm022319
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Mon, 22 Jun 2020 20:26:32 -0700
Received: from [128.224.162.131] (128.224.162.131) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Mon, 22 Jun 2020
 20:26:10 -0700
Subject: Re: [yocto] [meta-security][PATCH] sssd: disable build secrets
To: "Armin Kuster (akuster808@gmail.com)" <akuster808@gmail.com>
References: <161937E0092D8EB5.18675@lists.yoctoproject.org>
CC: <yocto@lists.yoctoproject.org>
From: "kai" <kai.kang@windriver.com>
Message-ID: <6d15f66c-1e3c-bcca-6f9e-4eeeee9683fc@windriver.com>
Date: Tue, 23 Jun 2020 11:24:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <161937E0092D8EB5.18675@lists.yoctoproject.org>
Content-Type: multipart/alternative;
	boundary="------------C701A673680A147DE43F8B9E"
Content-Language: en-US

--------------C701A673680A147DE43F8B9E
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/17/20 11:41 AM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> It requires http_parser.h to build secrets:
>
> | configure: error:
> | You must have the header file http_parser.h installed to build sssd
> | with secrets responder. If you want to build sssd without secret responder
> | then specify --without-secrets when running configure.
>
> The header file is from package http-parser[1] rather than apache2. But
> there is no recipe http-parser in openembedded. So disable build secrets
> for sssd and remove related systemd service and socket files.
>
> Reference:
> 1. https://github.com/nodejs/http-parser

Ping.


>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   recipes-security/sssd/sssd_1.16.4.bb | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> index 7ea1586..2c3c803 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> @@ -39,8 +39,7 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
>   
>   PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
>   PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
> -PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
> -PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
> +PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
>   PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
>   PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
>   PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
> @@ -60,6 +59,7 @@ EXTRA_OECONF += " \
>       --without-python2-bindings \
>       --enable-pammoddir=${base_libdir}/security \
>       --without-python2-bindings \
> +    --without-secrets \
>   "
>   
>   do_configure_prepend() {
> @@ -85,6 +85,7 @@ do_install () {
>       # Remove /var/run as it is created on startup
>       rm -rf ${D}${localstatedir}/run
>   
> +    rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
>   }
>   
>   pkg_postinst_ontarget_${PN} () {
> @@ -109,8 +110,6 @@ SYSTEMD_SERVICE_${PN} = " \
>       sssd-pam-priv.socket \
>       sssd-pam.service \
>       sssd-pam.socket \
> -    sssd-secrets.service \
> -    sssd-secrets.socket \
>       sssd.service \
>   "
>   SYSTEMD_AUTO_ENABLE = "disable"
>
> 


-- 
Kai Kang
Wind River Linux


--------------C701A673680A147DE43F8B9E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 6/17/20 11:41 AM, kai wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:161937E0092D8EB5.18675@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>

It requires http_parser.h to build secrets:

| configure: error:
| You must have the header file http_parser.h installed to build sssd
| with secrets responder. If you want to build sssd without secret responder
| then specify --without-secrets when running configure.

The header file is from package http-parser[1] rather than apache2. But
there is no recipe http-parser in openembedded. So disable build secrets
for sssd and remove related systemd service and socket files.

Reference:
1. <a class="moz-txt-link-freetext" href="https://github.com/nodejs/http-parser">https://github.com/nodejs/http-parser</a></pre>
    </blockquote>
    <p>Ping.</p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:161937E0092D8EB5.18675@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>
---
 recipes-security/sssd/sssd_1.16.4.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 7ea1586..2c3c803 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -39,8 +39,7 @@ PACKAGECONFIG += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd',PACKAGECONFIG[autofs]=">"${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
 
 PACKAGECONFIG[autofs] = "</a>--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
-PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
 PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
@@ -60,6 +59,7 @@ EXTRA_OECONF += " \
     --without-python2-bindings \
     --enable-pammoddir=${base_libdir}/security \
     --without-python2-bindings \
+    --without-secrets \
 "
 
 do_configure_prepend() {
@@ -85,6 +85,7 @@ do_install () {
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
 
+    rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
 }
 
 pkg_postinst_ontarget_${PN} () {
@@ -109,8 +110,6 @@ SYSTEMD_SERVICE_${PN} = " \
     sssd-pam-priv.socket \
     sssd-pam.service \
     sssd-pam.socket \
-    sssd-secrets.service \
-    sssd-secrets.socket \
     sssd.service \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Kai Kang
Wind River Linux</pre>
  </body>
</html>

--------------C701A673680A147DE43F8B9E--
