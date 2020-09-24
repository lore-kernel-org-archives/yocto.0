Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10849.1600930737119652003
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:58:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4026D38C11CE
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:58:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08O6wOUY018301
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:58:45 -0700
Received: from [128.224.162.131] (128.224.162.131) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Wed, 23 Sep 2020
 23:58:34 -0700
Subject: Re: [yocto] [meta-anaconda][PATCH] libgnomekbd: add recipe which was removed from meta-openembedded
To: Chen Qi <Qi.Chen@windriver.com>, <yocto@yoctoproject.org>
References: <20200924064412.37742-1-Qi.Chen@windriver.com>
From: "kai" <kai.kang@windriver.com>
Message-ID: <80f2bcae-89ab-9087-6316-cfa15597a752@windriver.com>
Date: Thu, 24 Sep 2020 14:58:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200924064412.37742-1-Qi.Chen@windriver.com>
Content-Type: multipart/alternative;
	boundary="------------38CBC8776E6E2F2EC57AA68B"
Content-Language: en-US

--------------38CBC8776E6E2F2EC57AA68B
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/24/20 2:44 PM, Chen Qi wrote:
> Add this recipe as python3-anaconda recipe still needs it.

Merged. Thanks.

Kai

>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   recipes-gnome/libgnome/libgnomekbd_3.26.1.bb | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
>   create mode 100644 recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
>
> diff --git a/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb b/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
> new file mode 100644
> index 0000000..2a2db9c
> --- /dev/null
> +++ b/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
> @@ -0,0 +1,14 @@
> +SUMMARY = "GNOME keyboard library"
> +LICENSE = "LGPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=6e29c688d912da12b66b73e32b03d812"
> +
> +SECTION = "x11/gnome/libs"
> +
> +DEPENDS = "glib-2.0 gtk+3 libxklavier"
> +
> +inherit features_check gnomebase gobject-introspection gsettings gettext
> +
> +REQUIRED_DISTRO_FEATURES = "x11"
> +
> +SRC_URI[archive.md5sum] = "98040022484406e7ebe25f82cef93344"
> +SRC_URI[archive.sha256sum] = "f7ca02631576e9b88aee1b1bae37ac1488b80ee7975f20a97f29e761a7172679"
>
> 
>

-- 
Kai Kang
Wind River Linux


--------------38CBC8776E6E2F2EC57AA68B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/24/20 2:44 PM, Chen Qi wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200924064412.37742-1-Qi.Chen@windriver.com">
      <pre class="moz-quote-pre" wrap="">Add this recipe as python3-anaconda recipe still needs it.</pre>
    </blockquote>
    <p>Merged. Thanks.</p>
    <p>Kai<br>
    </p>
    <blockquote type="cite"
      cite="mid:20200924064412.37742-1-Qi.Chen@windriver.com">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Chen Qi <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a>
---
 recipes-gnome/libgnome/libgnomekbd_3.26.1.bb | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 recipes-gnome/libgnome/libgnomekbd_3.26.1.bb

diff --git a/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb b/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
new file mode 100644
index 0000000..2a2db9c
--- /dev/null
+++ b/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
@@ -0,0 +1,14 @@
+SUMMARY = "GNOME keyboard library"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING.LIB;md5=6e29c688d912da12b66b73e32b03d812">"file://COPYING.LIB;md5=6e29c688d912da12b66b73e32b03d812"</a>
+
+SECTION = "x11/gnome/libs"
+
+DEPENDS = "glib-2.0 gtk+3 libxklavier"
+
+inherit features_check gnomebase gobject-introspection gsettings gettext
+
+REQUIRED_DISTRO_FEATURES = "x11"
+
+SRC_URI[archive.md5sum] = "98040022484406e7ebe25f82cef93344"
+SRC_URI[archive.sha256sum] = "f7ca02631576e9b88aee1b1bae37ac1488b80ee7975f20a97f29e761a7172679"
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

--------------38CBC8776E6E2F2EC57AA68B--
