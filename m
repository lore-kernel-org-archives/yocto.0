Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDEBE006C0
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 20:35:19 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id rp18so390993iec.33
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 20:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nznzlGUCoaB0MyIxXpwaQxmnBvOMY+wvAnyOC595gm0=;
	b=Lo8Zo+N8wwH58S7Q5rOItqdouyAnuyQWbX0gDlqvtGQugdsOzUv1ZEJNz6FVYcmnX6
	RXRpK0a00QbQC7kJEjeN5nSsobknLfrndr5d6CdE+xxOzrMf6Eg60yB8So5AZSA+Yrpp
	ZoGodQe+AOmmpWTaDXbOtsltZKyGxH8A+8iIuHEDs3Ly9qHZUdl2CMqXi/Oi/jwqO9Nz
	5EX4bn1WG6KLZj/eVrE5X0HS6/Rr8DVn7VD77cmJ15WgwF8Ws1MIatET1FapirKVwVtK
	4A1qEVfR/wB/v0pcE+XPsKstfqQB6CVs0Whn4k1euJFASzUDat0BYqP8LcL6lmc1sppq
	pihA==
X-Received: by 10.42.157.74 with SMTP id c10mr6431037icx.74.1398224119132;
	Tue, 22 Apr 2014 20:35:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Tue, 22 Apr 2014 20:34:49 -0700 (PDT)
In-Reply-To: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
References: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Apr 2014 20:34:49 -0700
Message-ID: <CAMKF1sqxhAVj1i6t7OTEv76a64Ov-LoHtED_pq5ufkxb-Ci3bQ@mail.gmail.com>
To: Sujith H <sujith.h@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] weston: Add weston.ini config file
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
X-List-Received-Date: Wed, 23 Apr 2014 03:35:22 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 16, 2014 at 1:12 AM, Sujith H <sujith.h@gmail.com> wrote:
> Adding weston.ini to $ROOT_HOME/.config. With this change
> user can login to $ROOT_HOME and launch weston with ivi-shell.

what if I am not root ? IOW is there more systemwide way of doing it ?

>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>  recipes-graphics/wayland/weston_1.4.0.bbappend | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
> index 7a8ba6f..a2713d6 100644
> --- a/recipes-graphics/wayland/weston_1.4.0.bbappend
> +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
> @@ -12,3 +12,16 @@ PR = "r1"
>
>  FILES_${PN} += "${libdir}/weston/*"
>  FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
> +
> +do_install_append() {
> +   install -d ${D}${ROOT_HOME}/.config
> +   install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e  's/hmi-controller.so/hmi-controller.so, ivi-controller.so/' ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e 's|\@libexecdir\@|${libexecdir}|' ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|' ${D}${ROOT_HOME}/.config/weston.ini
> +}
> +
> +PACKAGES += "${PN}-ini"
> +
> +FILES_${PN}-ini = "${ROOT_HOME}/.config"
> --
> 1.8.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

