Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B2BDE01351
	for <yocto@yoctoproject.org>; Sun, 17 Jun 2012 03:32:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9AAFCF81234; Sun, 17 Jun 2012 04:32:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B672DF81233;
	Sun, 17 Jun 2012 04:31:52 -0600 (MDT)
Message-ID: <4FDDB218.8070704@mlbassoc.com>
Date: Sun, 17 Jun 2012 04:31:52 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <1339501183-16643-1-git-send-email-gary@mlbassoc.com>
In-Reply-To: <1339501183-16643-1-git-send-email-gary@mlbassoc.com>
Subject: Re: [PATCH] webkit-gtk: Apply work around for all PowerPC targets
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 17 Jun 2012 10:32:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-12 05:39, Gary Thomas wrote:
> The current patch for bug #1570 only applies to qemuppc but should be
> applicable for all PowerPC targets.  Also update the patch so that
> only one language backend, either ICU or PANGO, is built.
>
> Also remove some old customizations (dependencies on darwin) as these
> should now be handled in a layer specific .bbappend file.
>
> Signed-off-by: Gary Thomas<gary@mlbassoc.com>

ping??

> ---
>   meta/recipes-sato/webkit/webkit-gtk_svn.bb |   15 +++++++++------
>   1 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/meta/recipes-sato/webkit/webkit-gtk_svn.bb b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
> index 9381486..716afce 100644
> --- a/meta/recipes-sato/webkit/webkit-gtk_svn.bb
> +++ b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
> @@ -7,10 +7,13 @@ LIC_FILES_CHKSUM = "file://Source/WebCore/rendering/RenderApplet.h;endline=22;md
>                       file://Source/WebKit/gtk/webkit/webkit.h;endline=21;md5=b4fbe9f4a944f1d071dba1d2c76b3351 \
>                       file://Source/JavaScriptCore/parser/Parser.h;endline=23;md5=2f3cff0ad0a9c486da5a376928973a90"
>
> -DEPENDS = "zlib enchant gnome-keyring libsoup-2.4 curl icu libxml2 cairo libxslt libxt libidn gnutls gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-native-runtime sqlite3"
> +# Choice of language backends - icu has issues on Big Endian machines so use pango
> +ICU_LIB = "icu"
> +ICU_LIB_powerpc = "pango"
> +
> +DEPENDS = "zlib enchant gnome-keyring libsoup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls \
> +           gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-native-runtime sqlite3 ${ICU_LIB}"
>   DEPENDS += " ${@base_contains('DISTRO_FEATURES', 'opengl', 'virtual/libgl', '', d)}"
> -DEPENDS_darwin8 = "curl icu libxml2 cairo libxslt libidn gnutls gtk+ gstreamer flex-native gperf-native perl-native-runtime sqlite3"
> -DEPENDS_append_qemuppc += "pango"
>
>   SRCREV_FORMAT = "source"
>
> @@ -48,10 +51,10 @@ EXTRA_OECONF = "\
>                   UNICODE_CFLAGS=-D_REENTRANT \
>                  "
>
> -#default unicode backend icu breaks in cross-compile when target and host owns different endian type
> -EXTRA_OECONF_append_qemuppc += "--with-unicode-backend=glib"
> +#default unicode backend icu breaks in cross-compile when target and host are different endian type
> +EXTRA_OECONF_append_powerpc += "--with-unicode-backend=glib"
>
> -CPPFLAGS_append_qemuppc += "-I${STAGING_INCDIR}/pango-1.0 \
> +CPPFLAGS_append_powerpc += "-I${STAGING_INCDIR}/pango-1.0 \
>                               -I${STAGING_LIBDIR}/glib-2.0/include \
>                               -I${STAGING_INCDIR}/glib-2.0"
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

