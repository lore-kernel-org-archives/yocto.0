Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5810.1585112830094660736
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 22:07:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=CzgSfGpJ;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: jpuhlman@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A29CE018CC; Tue, 24 Mar 2020 22:07:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD66E018CA
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2020 22:07:04 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id x11so839249otp.6
        for <yocto@yoctoproject.org>; Tue, 24 Mar 2020 22:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=JnRcERQ3WACPgdUaGCS0p1qPSBdyqId2ZpxaZXsopy0=;
        b=CzgSfGpJlqRoU3nABdXkXGV8GoXcthjeMXpyIsXPNnFiVRTY1JfQBerXRSXUmSeUqX
         Otf9r9+6ckVSojX8codjr2NIUHMwV22ggn/4zZPJm80P2VnALllMugwdni48WSAXwpmM
         QW5giZBZ758gGTgo2XbBD4ddKvMzhvsWeDIxiN5055zitl+4tCPPJcd8Uumh4gmLQwXA
         6WVsGmEZ2akDKElozRvpAu4Pha/6jyzLDCja1HzX9YRfZkRVyDnN8PinIzyq9V2Tud6g
         SS60QiMKuwA3jvvOm/dNF1S0pzwOMTf/rm+QOdl0vxW7pGkyr4qWunVjPmfBBf5CjFLV
         NJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=JnRcERQ3WACPgdUaGCS0p1qPSBdyqId2ZpxaZXsopy0=;
        b=r1TpucEDkaL24HLI6AgJIEHYpV9MueAjiXnT4o/EAHF4oeWtiH/uhojjpbRhg5qJiT
         udX8Gx8eXfG0EcTiKk6GsNex2uSx6ku4A8wY5SH/E7fuSdZ+5vaxD0OG0POxrNhJIYhS
         SUhNdNz8Dk8lqKGg2iziUvzaI7PbwkuyO3iDNbmge3bol4UECZVvDQocP1NZ1TbjZK9k
         8+4I1Ni2493vbJzAhIoGIpY2N/Q80NbTujf4v1yzhIzjxMQWvL4ClWqBRSAqZgDeD3y+
         V7OokkbNWiDaUHHGtp2DqsydleHFCXDyCPOOvNbl2DhM0pnBoW8npHEtyOENOzdcPVcR
         ZUEQ==
X-Gm-Message-State: ANhLgQ0xy6EVxI51YEWzAj0ln08s6zEX4rV5KoGHZksD0yRLoJ6wnb6p
	WG6FgAv9OYn894rv9DjCH9MS7S5b294=
X-Google-Smtp-Source: ADFU+vsBrhftyPYQ+K9fSBLKoAVjJCEHlO5Uv+iUxi9WtWQolq60NE0vYQbo+KhPckdWEVPp/+d81g==
X-Received: by 2002:a9d:7cd1:: with SMTP id r17mr1245049otn.183.1585112823174;
        Tue, 24 Mar 2020 22:07:03 -0700 (PDT)
Received: from ?IPv6:2600:1700:4c90:60a0:5566:b07f:3f47:4a0e? ([2600:1700:4c90:60a0:5566:b07f:3f47:4a0e])
        by smtp.gmail.com with ESMTPSA id b11sm6676234otj.64.2020.03.24.22.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 22:07:02 -0700 (PDT)
Subject: Re: [yocto] [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3
To: "Chen, Qi" <Qi.Chen@windriver.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20200319015321.15525-1-jpuhlman@mvista.com>
 <20200319015321.15525-17-jpuhlman@mvista.com>
 <DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0@DM6PR11MB3498.namprd11.prod.outlook.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <d0517571-48b2-0cd6-061e-82fe04a66f15@mvista.com>
Date: Tue, 24 Mar 2020 22:06:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0@DM6PR11MB3498.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------9C13AD645C83E92BAC17DBE3"
Content-Language: en-US

--------------9C13AD645C83E92BAC17DBE3
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

I just shot a mail to the list with the missing patch.

On 3/24/2020 8:29 PM, Chen, Qi wrote:
> file://0001-Fix-python3-usage.patch is missing, causing do_fetch failur=
e.
>
> Regards,
> Chen Qi
> -----------------------------------------------------------------------=
-
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on=20
> behalf of Jeremy Puhlman <jpuhlman@mvista.com>
> *Sent:* Thursday, March 19, 2020 9:53
> *To:* yocto@yoctoproject.org <yocto@yoctoproject.org>
> *Cc:* Jeremy A. Puhlman <jpuhlman@mvista.com>
> *Subject:* [yocto] [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3
> Drop unneeded patches moving some in to metadata.
> Fix up for building 2.0.3
>
> Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> ---
> =A0.../pacemaker/0001-pacemaker-fix-xml-config.patch=A0 |=A0 52 -------=
-
> =A0...earch-header-from-STAGING_INCDIR-to-walka.patch |=A0 37 ------
> =A0.../0003-pacemaker-fix-header-defs-lookup.patch=A0=A0=A0 |=A0 27 ---=
-
> =A0.../0004-pacemaker-do-not-build-help.patch=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 27 ----
> =A0...o-not-execute-target-program-while-cross-.patch |=A0 44 -------
> =A0...-Fix-definition-of-curses_indented_printf.patch |=A0 30 +++++
> =A0...006-pacemaker-do-not-use-libgnutls-config.patch |=A0 35 ------
> =A0...-Make-the-testing-infrastructure-optional.patch | 137=20
> ---------------------
> =A0.../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch |=A0 28 -----
> =A0.../{pacemaker_1.1.21.bb =3D> pacemaker_2.0.3.bb}=A0=A0=A0 | 26 ++--
> =A010 files changed, 43 insertions(+), 400 deletions(-)
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-=
config.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-h=
eader-from-STAGING_INCDIR-to-walka.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-head=
er-defs-lookup.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-b=
uild-help.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-e=
xecute-target-program-while-cross-.patch
> =A0create mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-defi=
nition-of-curses_indented_printf.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-u=
se-libgnutls-config.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-i=
nfrastructure-optional.patch
> =A0delete mode 100644=20
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-lib=
dir-ocf.patch
> =A0rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.21.bb =3D=
>=20
> pacemaker_2.0.3.bb} (82%)
>
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xm=
l-config.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xm=
l-config.patch
> deleted file mode 100644
> index 72c3a1e..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xm=
l-config.patch
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -From ac1ff1d538d2be205fbcc9676c6497a1395b71d8 Mon Sep 17 00:00:00 2001
> -From: Changqing Li <changqing.li@windriver.com>
> -Date: Fri, 10 Aug 2018 14:59:33 +0800
> -Subject: [PATCH] pacemaker: fix xml config
> -
> -Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> -
> -update to version 1.1.19
> -Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ----
> - configure.ac | 17 ++++++-----------
> - 1 file changed, 6 insertions(+), 11 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index 3bf1914..345caeb 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -555,7 +555,6 @@ AC_PATH_PROGS(TAR, tar)
> - AC_PATH_PROGS(MD5, md5)
> - AC_PATH_PROGS(TEST, test)
> - PKG_PROG_PKG_CONFIG
> --AC_PATH_PROGS(XML2CONFIG, xml2-config)
> - AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
> - AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
> -
> -@@ -805,17 +804,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
> - dnl AC_CHECK_HEADERS(netinet/ip6.h)
> - dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
> -
> --AC_MSG_CHECKING(for special libxml2 includes)
> --if test "x$XML2CONFIG" =3D "x"; then
> --=A0=A0 AC_MSG_ERROR(libxml2 config not found)
> --else
> --=A0=A0 XML2HEAD=3D"`$XML2CONFIG --cflags`"
> --=A0=A0 AC_MSG_RESULT($XML2HEAD)
> --=A0=A0 AC_CHECK_LIB(xml2, xmlReadMemory)
> --=A0=A0 AC_CHECK_LIB(xslt, xsltApplyStylesheet)
> --fi
> -+PKG_CHECK_MODULES([XML], [libxml-2.0])
> -+PKG_CHECK_MODULES([XSLT], [libxslt])
> -+
> -+AC_CHECK_LIB(xml2, xmlReadMemory)
> -+AC_CHECK_LIB(xslt, xsltApplyStylesheet)
> -
> --CPPFLAGS=3D"$CPPFLAGS $XML2HEAD"
> -+CPPFLAGS=3D"$CPPFLAGS $XML_CFLAGS"
> -
> - AC_CHECK_HEADERS(libxml/xpath.h)
> - AC_CHECK_HEADERS(libxslt/xslt.h)
> ---
> -2.7.4
> -
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search=
-header-from-STAGING_INCDIR-to-walka.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search=
-header-from-STAGING_INCDIR-to-walka.patch
> deleted file mode 100644
> index 83940d1..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search=
-header-from-STAGING_INCDIR-to-walka.patch
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -From 844ec301031b0e6a3000c793906ba476f08a1e65 Mon Sep 17 00:00:00 2001
> -From: Li xin <lixin.fnst@cn.fujitsu.com>
> -Date: Wed, 27 Dec 2017 05:20:45 +0000
> -Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to=20
> walkaround
> - error
> -
> -** -I/usr/include/ is unsafe for cross-compilation
> -
> - ... ...
> -
> - ** This autoconf log indicates errors, it looked at host include=20
> and/or library paths
> - ** while determining system capabilities
> -
> -Upstream-Status: pending
> -
> -Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> -Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> -Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> -
> ----
> - configure.ac | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> -diff --git a/configure.ac b/configure.ac
> -index 5e420f2..5d442a5 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -484,6 +484,9 @@ esac
> - dnl Eventually remove this
> - if test "$cross_compiling" !=3D "yes"; then
> -=A0=A0=A0 CPPFLAGS=3D"$CPPFLAGS -I${prefix}/include/heartbeat"
> -+else
> -+=A0=A0 CFLAGS=3D"$CFLAGS -I${STAGING_INCDIR}/heartbeat"
> -+=A0=A0 CPPFLAGS=3D"$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
> - fi
> -
> - AC_SUBST(INIT_EXT)
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-he=
ader-defs-lookup.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-he=
ader-defs-lookup.patch
> deleted file mode 100644
> index 6dc4663..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-he=
ader-defs-lookup.patch
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -From 9236fa746d43adb098c2946e72e8b29ffbc78865 Mon Sep 17 00:00:00 2001
> -From: Bian Naimeng <biannm@cn.fujitsu.com>
> -Date: Fri, 3 Jul 2015 16:30:25 +0900
> -Subject: [PATCH] pacemaker: fix header defs lookup
> -
> -Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> -
> ----
> - configure.ac | 5 ++---
> - 1 file changed, 2 insertions(+), 3 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index 5d442a5..1429b01 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -147,9 +147,8 @@ extract_header_define() {
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0 Cfile=3D$srcdir/extract_define.$2.${$}
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0 printf "#include <stdio.h>\n" > ${Cfile}.c
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0 printf "#include <%s>\n" $1 >> ${Cfile}.c
> --=A0=A0=A0=A0=A0=A0=A0 printf "int main(int argc, char **argv) { print=
f(\"%%s\",=20
> %s); return 0; }\n" $2 >> ${Cfile}.c
> --=A0=A0=A0=A0=A0=A0=A0 $CC $CFLAGS ${Cfile}.c -o ${Cfile}
> --=A0=A0=A0=A0=A0=A0=A0 value=3D`${Cfile}`
> -+=A0=A0=A0=A0=A0=A0=A0 printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
> -+=A0=A0=A0=A0=A0=A0=A0 value=3D`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\=
" | cut -f 2 -d=20
> ':' | sed 's,^",,' | sed 's,"$,,'`
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0 AC_MSG_RESULT($value)
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0 printf $value
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0 rm -rf ${Cfile}.c ${Cfile} ${Cfile}.dSYM $=
{Cfile}.gcno
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not=
-build-help.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not=
-build-help.patch
> deleted file mode 100644
> index 4234fe5..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not=
-build-help.patch
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -From cda171512fc8dc0aa385290e1f7644ff222e5f18 Mon Sep 17 00:00:00 2001
> -From: Bian Naimeng <biannm@cn.fujitsu.com>
> -Date: Fri, 3 Jul 2015 17:27:52 +0900
> -Subject: [PATCH] pacemaker: do not build help
> -
> -Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> -
> ----
> - configure.ac | 5 +----
> - 1 file changed, 1 insertion(+), 4 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index 1429b01..e930e33 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -574,10 +574,7 @@ if test x"${MAKE}" =3D x""; then
> -=A0=A0=A0 AC_MSG_ERROR(You need (g)make installed in order to build ${=
PACKAGE})
> - fi
> -
> --AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" !=3D x"")
> --if test x"${HELP2MAN}" !=3D x""; then
> --=A0=A0 PCMK_FEATURES=3D"$PCMK_FEATURES generated-manpages"
> --fi
> -+AM_CONDITIONAL(BUILD_HELP, test x"Do not build help" =3D x"")
> -
> - MANPAGE_XSLT=3D""
> - if test x"${XSLTPROC}" !=3D x""; then
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not=
-execute-target-program-while-cross-.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not=
-execute-target-program-while-cross-.patch
> deleted file mode 100644
> index b600fec..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not=
-execute-target-program-while-cross-.patch
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -From 6d59090df5856d32163f256912ddf1c897590447 Mon Sep 17 00:00:00 2001
> -From: Changqing Li <changqing.li@windriver.com>
> -Date: Wed, 21 Aug 2019 13:12:13 +0800
> -Subject: [PATCH] pacemaker: do not execute target program while cross=20
> compile
> -
> -Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> -
> -refresh patch to new version 1.1.21
> -Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ----
> - Makefile.common | 8 +++++---
> - 1 file changed, 5 insertions(+), 3 deletions(-)
> -
> -diff --git a/Makefile.common b/Makefile.common
> -index 469417f..9f19a53 100644
> ---- a/Makefile.common
> -+++ b/Makefile.common
> -@@ -36,18 +36,20 @@ if BUILD_HELP
> - man8_MANS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(sbin_PROGRAMS:%=3D=
%.8) $(sbin_SCRIPTS:%=3D%.8)
> - endif
> -
> -++man7_MANS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D
> -+
> - %.8:=A0 % $(MAN8DEPS)
> -=A0=A0=A0=A0=A0=A0=A0 chmod a+x $(abs_builddir)/$<
> -=A0=A0=A0=A0=A0=A0=A0 $(AM_V_MAN)PATH=3D$(abs_builddir):$$PATH $(HELP2=
MAN) --output=20
> $@ --no-info --section 8 --name "Part of the Pacemaker cluster=20
> resource manager" $(abs_builddir)/$<
> -
> - %.xml:=A0 %
> --=A0=A0=A0=A0=A0 $(AM_V_GEN)$(abs_builddir)/$< metadata > $@
> -+=A0=A0=A0=A0=A0=A0=A0 @echo "xml for $<: Do not try to execute target=
 program here"
> -
> - %.dbook: %.xml
> --=A0=A0=A0=A0=A0 $(AM_V_XSL)$(XSLTPROC) --nonet --novalid --stringpara=
m=20
> man.name $* $(DBOOK_OPTS) $(top_srcdir)/xml/ocf-meta2man.xsl=20
> $(abs_builddir)/$< > $(abs_builddir)/$@
> -+=A0=A0=A0=A0=A0=A0=A0 @echo "dbook for $<: Do not try to execute targ=
et program here"
> -
> - %.7:=A0 %.dbook
> --=A0=A0=A0=A0=A0 $(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT) $(abs_builddir=
)/$<=20
> $(PCMK_quiet)
> -+=A0=A0=A0=A0=A0=A0=A0 @echo "man7 for $<: Do not try to execute targe=
t program here"
> -
> - # Build docbook from asciidoc because XML is a PITA to edit
> - #
> ---
> -2.7.4
> -
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-de=
finition-of-curses_indented_printf.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-de=
finition-of-curses_indented_printf.patch
> new file mode 100644
> index 0000000..f5e1829
> --- /dev/null
> +++=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-de=
finition-of-curses_indented_printf.patch
> @@ -0,0 +1,30 @@
> +From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
> +From: Chris Lumens <clumens@redhat.com>
> +Date: Thu, 2 Jan 2020 15:08:58 -0500
> +Subject: [PATCH 006/207] Fix: tools: Fix definition of=20
> curses_indented_printf.
> +
> +The placeholder version that is built if curses is not enabled does no=
t
> +have a type that matches the header file.=A0 Correct that.
> +
> +Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> +Upstream-Status: Backport[git]
> +---
> + tools/crm_mon_curses.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
> +index c0dbedbf0..ecd0584fe 100644
> +--- a/tools/crm_mon_curses.c
> ++++ b/tools/crm_mon_curses.c
> +@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out,=20
> const char *format, va_list args) {
> +
> + G_GNUC_PRINTF(2, 3)
> + void
> +-curses_indented_printf(pcmk__output_t *out, const char *format,=20
> va_list args) {
> ++curses_indented_printf(pcmk__output_t *out, const char *format, ...) =
{
> +=A0=A0=A0=A0 return;
> + }
> +
> +--
> +2.23.0
> +
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not=
-use-libgnutls-config.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not=
-use-libgnutls-config.patch
> deleted file mode 100644
> index c1ffc86..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not=
-use-libgnutls-config.patch
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -From 5148e0a7e3cd4293416b969f2c563faa6aca27b2 Mon Sep 17 00:00:00 2001
> -From: Joe Slater <jslater@windriver.com>
> -Date: Mon, 11 Mar 2013 15:47:54 -0700
> -Subject: [PATCH] pacemaker: do not use libgnutls-config
> -
> -Do not try to use libgnutls-config when configuring.
> -It has been deprecated and we do not supply it.=A0 If a
> -host version is found, bad things can happen.
> -
> -Upstream-Status: Inappropriate [OE specific]
> -
> -Signed-off-by: Joe Slater <jslater@windriver.com>
> -Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> -
> ----
> - configure.ac | 6 +++---
> - 1 file changed, 3 insertions(+), 3 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index e930e33..2eade3c 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -1707,9 +1707,9 @@ dnl=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> - AC_CHECK_HEADERS(gnutls/gnutls.h)
> - AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)
> -
> --dnl GNUTLS library: Attempt to determine by 'libgnutls-config' progra=
m.
> --dnl If no 'libgnutls-config', try traditional autoconf means.
> --AC_PATH_PROGS(LIBGNUTLS_CONFIG, libgnutls-config)
> -+dnl libgnutls-config has been deprecated, so we use pkg-config
> -+
> -+LIBGNUTLS_CONFIG=3D"pkg-config gnutls"
> -
> - if test -n "$LIBGNUTLS_CONFIG"; then
> -=A0=A0=A0=A0=A0=A0=A0 AC_MSG_CHECKING(for gnutls header flags)
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing=
-infrastructure-optional.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing=
-infrastructure-optional.patch
> deleted file mode 100644
> index 3417aae..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing=
-infrastructure-optional.patch
> +++ /dev/null
> @@ -1,137 +0,0 @@
> -From 8a7c861e746ef13a2ffe74388891d7ea5709614b Mon Sep 17 00:00:00 2001
> -From: =3D?UTF-8?q?Ferenc=3D20W=3DC3=3DA1gner?=3D <wferi@debian.org>
> -Date: Thu, 29 Sep 2016 10:47:49 +0200
> -Subject: [PATCH] Make the testing infrastructure optional
> -MIME-Version: 1.0
> -Content-Type: text/plain; charset=3DUTF-8
> -Content-Transfer-Encoding: 8bit
> -
> -Upstream does not want this option, unfortunately.
> -https://github.com/ClusterLabs/pacemaker/pull/1149
> -
> -Signed-off-by: Ferenc W=C3=A1gner <wferi@debian.org>
> -
> -It does not install test case by default
> -Backport the patch from ubuntu
> -http://archive.ubuntu.com/ubuntu/pool/main/p/pacemaker/pacemaker_1.1.1=
8-0ubuntu1.debian.tar.xz
> -Upstream-Status: Deny=20
> [https://github.com/ClusterLabs/pacemaker/pull/1149]
> -
> -Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ----
> - Makefile.am=A0=A0=A0=A0=A0=A0=A0=A0 | 2 ++
> - configure.ac=A0=A0=A0=A0=A0=A0=A0 | 5 +++++
> - fencing/Makefile.am | 2 ++
> - lrmd/Makefile.am=A0=A0=A0 | 2 ++
> - pengine/Makefile.am | 2 ++
> - tools/Makefile.am=A0=A0 | 2 ++
> - 6 files changed, 15 insertions(+)
> -
> -diff --git a/Makefile.am b/Makefile.am
> -index 874f6ed..9ce8b12 100644
> ---- a/Makefile.am
> -+++ b/Makefile.am
> -@@ -35,6 +35,7 @@ ACLOCAL_AMFLAGS=A0 =3D -I m4
> - licensedir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(docdir)/licen=
ses/
> - license_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(wildcard licenses=
/*)
> -
> -+if ENABLE_TESTS
> - # Test components
> - SUBDIRS=A0=A0=A0=A0=A0=A0 +=3D cts
> -
> -@@ -46,6 +47,7 @@ test_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D valgr=
ind-pcmk.suppressions
> - noinst_PROGRAMS =3D scratch
> - nodist_scratch_SOURCES=A0=A0=A0=A0=A0=A0=A0 =3D scratch.c
> - scratch_LDADD =3D $(top_builddir)/lib/common/libcrmcommon.la -lm
> -+endif
> -
> - scratch.c:
> -=A0=A0=A0=A0=A0=A0=A0 echo 'int main(void){}' >$@
> -diff --git a/configure.ac b/configure.ac
> -index b87e61b..a0cf3e2 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -330,6 +330,11 @@ AC_ARG_WITH(configdir,
> -=A0=A0=A0=A0 [ CONFIGDIR=3D"$withval" ]
> - )
> -
> -+AC_ARG_ENABLE([tests],
> -+=A0=A0=A0 [AS_HELP_STRING([--disable-tests],[don't build and install =
the=20
> testing components])],,
> -+=A0=A0=A0 [enable_tests=3Dyes])
> -+AM_CONDITIONAL([ENABLE_TESTS],[test "x$enable_tests" !=3D xno])
> -+
> - dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> - dnl General Processing
> - dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -diff --git a/fencing/Makefile.am b/fencing/Makefile.am
> -index 3bb628f..8c06502 100644
> ---- a/fencing/Makefile.am
> -+++ b/fencing/Makefile.am
> -@@ -18,8 +18,10 @@
> - include $(top_srcdir)/Makefile.common
> -
> - ## binary progs
> -+if ENABLE_TESTS
> - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D $(datadir)/$(PACKAGE)/tests/fencing
> - test_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.py
> -+endif
> -
> - halibdir=A0=A0=A0=A0=A0 =3D $(CRM_DAEMON_DIR)
> - halib_PROGRAMS=A0=A0=A0=A0=A0=A0=A0 =3D stonithd stonith-test
> -diff --git a/lrmd/Makefile.am b/lrmd/Makefile.am
> -index 33611cb..ad6b88d 100644
> ---- a/lrmd/Makefile.am
> -+++ b/lrmd/Makefile.am
> -@@ -19,11 +19,13 @@ include $(top_srcdir)/Makefile.common
> - lrmdlibdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(CRM_DAEMON_DIR)
> - lrmdlib_PROGRAMS=A0=A0=A0=A0=A0 =3D lrmd lrmd_internal_ctl
> -
> -+if ENABLE_TESTS
> - # Test components
> - lrmdlib_PROGRAMS=A0=A0=A0=A0=A0 +=3D lrmd_test
> -
> - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D $(datadir)/$(PACKAGE)/tests/lrmd
> - test_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.py
> -+endif
> -
> - initdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D $(INITDIR)
> - init_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D pacemaker_remote
> -diff --git a/pengine/Makefile.am b/pengine/Makefile.am
> -index 861946c..3faae3a 100644
> ---- a/pengine/Makefile.am
> -+++ b/pengine/Makefile.am
> -@@ -21,6 +21,7 @@ AM_CPPFLAGS=A0 +=3D -I$(top_builddir) -I$(top_srcdir=
)
> -
> - halibdir=A0=A0=A0=A0=A0 =3D $(CRM_DAEMON_DIR)
> -
> -+if ENABLE_TESTS
> - PE_TESTS=A0=A0=A0=A0=A0 =3D $(wildcard test10/*.scores)
> -
> - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D $(datadir)/$(PACKAGE)/tests/pengine
> -@@ -29,6 +30,7 @@ test_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regre=
ssion.core.sh
> -
> - test10dir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(datadir)/$(PACKAG=
E)/tests/pengine/test10
> - test10_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(PE_TESTS) $(PE_TESTS:=
%.scores=3D%.xml)=20
> $(PE_TESTS:%.scores=3D%.exp) $(PE_TESTS:%.scores=3D%.dot)=20
> $(PE_TESTS:%.scores=3D%.summary) $(wildcard test10/*.stderr)
> -+endif
> -
> - beekhof:
> -=A0=A0=A0=A0=A0=A0=A0 echo $(shell ls -1 test10/*.xml)
> -diff --git a/tools/Makefile.am b/tools/Makefile.am
> -index 3548035..826396d 100644
> ---- a/tools/Makefile.am
> -+++ b/tools/Makefile.am
> -@@ -40,10 +40,12 @@ EXTRA_DIST=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(sbin_SCRI=
PTS)
> - sbin_PROGRAMS=A0=A0=A0=A0=A0=A0=A0=A0 =3D crm_simulate crmadmin cibad=
min crm_node=20
> crm_attribute crm_resource crm_verify \
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 crm_shadow attrd_updater crm_diff crm_mon=20
> iso8601 crm_ticket crm_error
> -
> -+if ENABLE_TESTS
> - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D $(datadir)/$(PACKAGE)/tests/cli
> - test_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.sh
> - test_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.da=
tes.exp regression.tools.exp=20
> regression.acls.exp \
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 regression.validity.exp
> -+endif
> -
> - if BUILD_HEARTBEAT_SUPPORT
> - sbin_PROGRAMS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 +=3D crm_uuid
> ---
> -2.7.4
> -
> diff --git=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-l=
ibdir-ocf.patch=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-l=
ibdir-ocf.patch
> deleted file mode 100644
> index 98c3475..0000000
> ---=20
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-l=
ibdir-ocf.patch
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -From 588800f0e2fe52a677a19b7c59636e9f391a6e75 Mon Sep 17 00:00:00 2001
> -From: Mingli Yu <Mingli.Yu@windriver.com>
> -Date: Wed, 27 Dec 2017 07:14:21 +0000
> -Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
> -
> -* Set the default OCF_ROOT_DIR to $libdir/ocf
> -=A0 to make the resource agents components more
> -=A0 compatible
> -
> -Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> -
> ----
> - configure.ac | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index 2eade3c..ba290cc 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -1152,7 +1152,7 @@ AC_SUBST(HA_VARLIBHBDIR)
> -
> - AC_DEFINE_UNQUOTED(UUID_FILE,"$localstatedir/lib/heartbeat/hb_uuid",=20
> Location of Heartbeat's UUID file)
> -
> --OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR=20
> /usr/lib/ocf`
> -+OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR=20
> $libdir/ocf`
> - if test "X$OCF_ROOT_DIR" =3D X; then
> -=A0=A0 AC_MSG_ERROR(Could not locate OCF directory)
> - fi
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb=20
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> similarity index 82%
> rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
> rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> index 3a8db77..9b63acd 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> @@ -13,24 +13,20 @@ LIC_FILES_CHKSUM =3D=20
> "file://COPYING;md5=3D000212f361a81b100d9d0f0435040663"
>
> =A0DEPENDS =3D "corosync libxslt libxml2 gnutls resource-agents libqb=20
> python3-native"
>
> -SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git;branch=3D1.1 \
> - file://0001-pacemaker-fix-xml-config.patch \
> - file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patc=
h \
> - file://0003-pacemaker-fix-header-defs-lookup.patch \
> - file://0004-pacemaker-do-not-build-help.patch \
> - file://0005-pacemaker-do-not-execute-target-program-while-cross-.patc=
h \
> - file://0006-pacemaker-do-not-use-libgnutls-config.patch \
> - file://set-OCF_ROOT_DIR-to-libdir-ocf.patch \
> - file://0007-Make-the-testing-infrastructure-optional.patch \
> +SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git \
> + file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch =
\
> + file://0001-Fix-python3-usage.patch \
> file://volatiles \
> file://tmpfiles \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
>
> +CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat"
> +CPPFLAGS +=3D"-I${STAGING_INCDIR}/heartbeat"
> =A0SRC_URI_append_libc-musl =3D=20
> "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
>
> -SRCREV =3D "f14e36fd4336874705b34266c7cddbe12119106c"
> +SRCREV =3D "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
>
> -inherit autotools-brokensep pkgconfig systemd python3-dir useradd
> +inherit autotools-brokensep pkgconfig systemd python3native=20
> python3-dir useradd
>
> =A0S =3D "${WORKDIR}/git"
>
> @@ -48,7 +44,11 @@ EXTRA_OECONF +=3D "STAGING_INCDIR=3D${STAGING_INCDIR=
} \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --without-heartbeat=
 \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --disable-pretty \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --disable-tests \
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
> +
> +CACHED_CONFIGUREVARS +=3D " \
> +=A0=A0=A0 ac_cv_path_BASH_PATH=3D/bin/bash \
> +"
>
> =A0do_install_append() {
> =A0=A0=A0=A0 install -d ${D}${sysconfdir}/default
> @@ -92,7 +92,7 @@ FILES_${PN} +=3D "=20
> ${datadir}/snmp=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 \
> ${libdir}/corosync/lcrso/pacemaker.lcrso=A0=A0=A0 \
> ${libdir}/${PYTHON_DIR}/dist-packages/cts/=A0 \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${libdir}/ocf/resou=
rce.d/ \
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${libdir}/${PYTHON_DI=
R}/site-packages \
> + ${libdir}/${PYTHON_DIR}/site-packages/cts/ \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
> =A0FILES_${PN}-dbg +=3D "${libdir}/corosync/lcrso/.debug"
> =A0RDEPENDS_${PN} =3D "bash python3-core perl libqb ${PN}-cli-utils"
> --=20
> 2.13.3
>
>
> <http://www.avg.com/email-signature?utm_medium=3Demail&utm_source=3Dlin=
k&utm_campaign=3Dsig-email&utm_content=3Demailclient>=20
> 	Virus-free. www.avg.com=20
> <http://www.avg.com/email-signature?utm_medium=3Demail&utm_source=3Dlin=
k&utm_campaign=3Dsig-email&utm_content=3Demailclient>=20
>
>
> <#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>

--=20
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------9C13AD645C83E92BAC17DBE3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    I just shot a mail to the list with the missing patch.<br>
    <br>
    <div class=3D"moz-cite-prefix">On 3/24/2020 8:29 PM, Chen, Qi wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0@DM6PR11MB3498.namprd11=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <font size=3D"2"><span style=3D"font-size:11pt"><a
              href=3D"file://0001-Fix-python3-usage.patch" target=3D"_bla=
nk"
              rel=3D"noopener noreferrer" moz-do-not-send=3D"true">file:/=
/0001-Fix-python3-usage.patch</a></span></font>
        is missing, causing do_fetch failure.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Chen Qi<br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@list=
s.yoctoproject.org">yocto@lists.yoctoproject.org</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:yocto@lists.y=
octoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a> on behalf of Je=
remy
          Puhlman <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jpuhl=
man@mvista.com">&lt;jpuhlman@mvista.com&gt;</a><br>
          <b>Sent:</b> Thursday, March 19, 2020 9:53<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:yocto@yoctopr=
oject.org">&lt;yocto@yoctoproject.org&gt;</a><br>
          <b>Cc:</b> Jeremy A. Puhlman <a class=3D"moz-txt-link-rfc2396E"=
 href=3D"mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a><br>
          <b>Subject:</b> [yocto] [meta-cgl][PATCH 17/20] pacemaker:
          Update to 2.0.3</font>
        <div>=A0</div>
      </div>
      <div class=3D"BodyFragment"><font size=3D"2"><span
            style=3D"font-size:11pt;">
            <div class=3D"PlainText">Drop unneeded patches moving some in
              to metadata.<br>
              Fix up for building 2.0.3<br>
              <br>
              Signed-off-by: Jeremy A. Puhlman
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jpuhlman@=
mvista.com">&lt;jpuhlman@mvista.com&gt;</a><br>
              ---<br>
              =A0.../pacemaker/0001-pacemaker-fix-xml-config.patch=A0 |=A0=
 52
              --------<br>
              =A0...earch-header-from-STAGING_INCDIR-to-walka.patch |=A0 =
37
              ------<br>
              =A0.../0003-pacemaker-fix-header-defs-lookup.patch=A0=A0=A0=
 |=A0 27
              ----<br>
              =A0.../0004-pacemaker-do-not-build-help.patch=A0=A0=A0=A0=A0=
=A0=A0=A0 |=A0 27
              ----<br>
              =A0...o-not-execute-target-program-while-cross-.patch |=A0 =
44
              -------<br>
              =A0...-Fix-definition-of-curses_indented_printf.patch |=A0 =
30
              +++++<br>
              =A0...006-pacemaker-do-not-use-libgnutls-config.patch |=A0 =
35
              ------<br>
              =A0...-Make-the-testing-infrastructure-optional.patch | 137
              ---------------------<br>
              =A0.../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch |=A0 =
28
              -----<br>
              =A0.../{pacemaker_1.1.21.bb =3D&gt; pacemaker_2.0.3.bb}=A0=A0=
=A0 |=A0
              26 ++--<br>
              =A010 files changed, 43 insertions(+), 400 deletions(-)<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-co=
nfig.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-hea=
der-from-STAGING_INCDIR-to-walka.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-header=
-defs-lookup.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-bui=
ld-help.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-exe=
cute-target-program-while-cross-.patch<br>
              =A0create mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-defini=
tion-of-curses_indented_printf.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use=
-libgnutls-config.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-inf=
rastructure-optional.patch<br>
              =A0delete mode 100644
meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdi=
r-ocf.patch<br>
              =A0rename
              meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.21.bb
              =3D&gt; pacemaker_2.0.3.bb} (82%)<br>
              <br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-=
config.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-=
config.patch<br>
              deleted file mode 100644<br>
              index 72c3a1e..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-=
config.patch<br>
              +++ /dev/null<br>
              @@ -1,52 +0,0 @@<br>
              -From ac1ff1d538d2be205fbcc9676c6497a1395b71d8 Mon Sep 17
              00:00:00 2001<br>
              -From: Changqing Li <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;=
</a><br>
              -Date: Fri, 10 Aug 2018 14:59:33 +0800<br>
              -Subject: [PATCH] pacemaker: fix xml config<br>
              -<br>
              -Signed-off-by: Bian Naimeng <a class=3D"moz-txt-link-rfc23=
96E" href=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;<=
/a><br>
              -<br>
              -update to version 1.1.19<br>
              -Signed-off-by: Changqing Li
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:changqing=
.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a><br>
              ----<br>
              - configure.ac | 17 ++++++-----------<br>
              - 1 file changed, 6 insertions(+), 11 deletions(-)<br>
              -<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index 3bf1914..345caeb 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -555,7 +555,6 @@ AC_PATH_PROGS(TAR, tar)<br>
              - AC_PATH_PROGS(MD5, md5)<br>
              - AC_PATH_PROGS(TEST, test)<br>
              - PKG_PROG_PKG_CONFIG<br>
              --AC_PATH_PROGS(XML2CONFIG, xml2-config)<br>
              - AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)<=
br>
              - AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN",
              Valgrind command)<br>
              - <br>
              -@@ -805,17 +804,13 @@ dnl
              AC_CHECK_HEADERS(netinet/icmp6.h)<br>
              - dnl AC_CHECK_HEADERS(netinet/ip6.h)<br>
              - dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)<br>
              - <br>
              --AC_MSG_CHECKING(for special libxml2 includes)<br>
              --if test "x$XML2CONFIG" =3D "x"; then<br>
              --=A0=A0 AC_MSG_ERROR(libxml2 config not found)<br>
              --else<br>
              --=A0=A0 XML2HEAD=3D"`$XML2CONFIG --cflags`"<br>
              --=A0=A0 AC_MSG_RESULT($XML2HEAD)<br>
              --=A0=A0 AC_CHECK_LIB(xml2, xmlReadMemory)<br>
              --=A0=A0 AC_CHECK_LIB(xslt, xsltApplyStylesheet)<br>
              --fi<br>
              -+PKG_CHECK_MODULES([XML], [libxml-2.0])<br>
              -+PKG_CHECK_MODULES([XSLT], [libxslt])<br>
              -+<br>
              -+AC_CHECK_LIB(xml2, xmlReadMemory)<br>
              -+AC_CHECK_LIB(xslt, xsltApplyStylesheet)<br>
              - <br>
              --CPPFLAGS=3D"$CPPFLAGS $XML2HEAD"<br>
              -+CPPFLAGS=3D"$CPPFLAGS $XML_CFLAGS"<br>
              - <br>
              - AC_CHECK_HEADERS(libxml/xpath.h)<br>
              - AC_CHECK_HEADERS(libxslt/xslt.h)<br>
              --- <br>
              -2.7.4<br>
              -<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-h=
eader-from-STAGING_INCDIR-to-walka.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-h=
eader-from-STAGING_INCDIR-to-walka.patch<br>
              deleted file mode 100644<br>
              index 83940d1..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-h=
eader-from-STAGING_INCDIR-to-walka.patch<br>
              +++ /dev/null<br>
              @@ -1,37 +0,0 @@<br>
              -From 844ec301031b0e6a3000c793906ba476f08a1e65 Mon Sep 17
              00:00:00 2001<br>
              -From: Li xin <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:lixin.fnst@cn.fujitsu.com">&lt;lixin.fnst@cn.fujitsu.com&gt;</a><br>
              -Date: Wed, 27 Dec 2017 05:20:45 +0000<br>
              -Subject: [PATCH] pacemaker: search header from
              STAGING_INCDIR to walkaround<br>
              - error<br>
              -<br>
              -** -I/usr/include/ is unsafe for cross-compilation<br>
              -<br>
              - ... ...<br>
              -<br>
              - ** This autoconf log indicates errors, it looked at host
              include and/or library paths<br>
              - ** while determining system capabilities<br>
              -<br>
              -Upstream-Status: pending<br>
              -<br>
              -Signed-off-by: Bian Naimeng <a class=3D"moz-txt-link-rfc23=
96E" href=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;<=
/a><br>
              -Signed-off-by: Li Xin <a class=3D"moz-txt-link-rfc2396E" h=
ref=3D"mailto:lixin.fnst@cn.fujitsu.com">&lt;lixin.fnst@cn.fujitsu.com&gt=
;</a><br>
              -Signed-off-by: Mingli Yu <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:Mingli.Yu@windriver.com">&lt;Mingli.Yu@windriver.com&gt;=
</a><br>
              -<br>
              ----<br>
              - configure.ac | 3 +++<br>
              - 1 file changed, 3 insertions(+)<br>
              -<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index 5e420f2..5d442a5 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -484,6 +484,9 @@ esac<br>
              - dnl Eventually remove this<br>
              - if test "$cross_compiling" !=3D "yes"; then<br>
              -=A0=A0=A0 CPPFLAGS=3D"$CPPFLAGS -I${prefix}/include/heartb=
eat"<br>
              -+else<br>
              -+=A0=A0 CFLAGS=3D"$CFLAGS -I${STAGING_INCDIR}/heartbeat"<b=
r>
              -+=A0=A0 CPPFLAGS=3D"$CPPFLAGS -I${STAGING_INCDIR}/heartbea=
t"<br>
              - fi<br>
              - <br>
              - AC_SUBST(INIT_EXT)<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-head=
er-defs-lookup.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-head=
er-defs-lookup.patch<br>
              deleted file mode 100644<br>
              index 6dc4663..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-head=
er-defs-lookup.patch<br>
              +++ /dev/null<br>
              @@ -1,27 +0,0 @@<br>
              -From 9236fa746d43adb098c2946e72e8b29ffbc78865 Mon Sep 17
              00:00:00 2001<br>
              -From: Bian Naimeng <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;</a><br>
              -Date: Fri, 3 Jul 2015 16:30:25 +0900<br>
              -Subject: [PATCH] pacemaker: fix header defs lookup<br>
              -<br>
              -Signed-off-by: Bian Naimeng <a class=3D"moz-txt-link-rfc23=
96E" href=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;<=
/a><br>
              -<br>
              ----<br>
              - configure.ac | 5 ++---<br>
              - 1 file changed, 2 insertions(+), 3 deletions(-)<br>
              -<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index 5d442a5..1429b01 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -147,9 +147,8 @@ extract_header_define() {<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0 Cfile=3D$srcdir/extract_define=
.$2.${$}<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0 printf "#include &lt;stdio.h&g=
t;\n" &gt;
              ${Cfile}.c<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0 printf "#include &lt;%s&gt;\n"=
 $1 &gt;&gt;
              ${Cfile}.c<br>
              --=A0=A0=A0=A0=A0=A0=A0 printf "int main(int argc, char **a=
rgv) {
              printf(\"%%s\", %s); return 0; }\n" $2 &gt;&gt; ${Cfile}.c<=
br>
              --=A0=A0=A0=A0=A0=A0=A0 $CC $CFLAGS ${Cfile}.c -o ${Cfile}<=
br>
              --=A0=A0=A0=A0=A0=A0=A0 value=3D`${Cfile}`<br>
              -+=A0=A0=A0=A0=A0=A0=A0 printf "\"%s\":%s\n" $2 $2 &gt;&gt;=
 ${Cfile}.c<br>
              -+=A0=A0=A0=A0=A0=A0=A0 value=3D`$CC $CFLAGS -E ${Cfile}.c =
| grep \"$2\" |
              cut -f 2 -d ':' | sed 's,^",,' | sed 's,"$,,'`<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0 AC_MSG_RESULT($value)<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0 printf $value<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0 rm -rf ${Cfile}.c ${Cfile} ${C=
file}.dSYM
              ${Cfile}.gcno<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-b=
uild-help.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-b=
uild-help.patch<br>
              deleted file mode 100644<br>
              index 4234fe5..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not-b=
uild-help.patch<br>
              +++ /dev/null<br>
              @@ -1,27 +0,0 @@<br>
              -From cda171512fc8dc0aa385290e1f7644ff222e5f18 Mon Sep 17
              00:00:00 2001<br>
              -From: Bian Naimeng <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;</a><br>
              -Date: Fri, 3 Jul 2015 17:27:52 +0900<br>
              -Subject: [PATCH] pacemaker: do not build help<br>
              -<br>
              -Signed-off-by: Bian Naimeng <a class=3D"moz-txt-link-rfc23=
96E" href=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;<=
/a><br>
              -<br>
              ----<br>
              - configure.ac | 5 +----<br>
              - 1 file changed, 1 insertion(+), 4 deletions(-)<br>
              -<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index 1429b01..e930e33 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -574,10 +574,7 @@ if test x"${MAKE}" =3D x""; then<br>
              -=A0=A0=A0 AC_MSG_ERROR(You need (g)make installed in order=
 to
              build ${PACKAGE})<br>
              - fi<br>
              - <br>
              --AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" !=3D x"")<=
br>
              --if test x"${HELP2MAN}" !=3D x""; then<br>
              --=A0=A0 PCMK_FEATURES=3D"$PCMK_FEATURES generated-manpages=
"<br>
              --fi<br>
              -+AM_CONDITIONAL(BUILD_HELP, test x"Do not build help" =3D
              x"")<br>
              - <br>
              - MANPAGE_XSLT=3D""<br>
              - if test x"${XSLTPROC}" !=3D x""; then<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-e=
xecute-target-program-while-cross-.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-e=
xecute-target-program-while-cross-.patch<br>
              deleted file mode 100644<br>
              index b600fec..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-e=
xecute-target-program-while-cross-.patch<br>
              +++ /dev/null<br>
              @@ -1,44 +0,0 @@<br>
              -From 6d59090df5856d32163f256912ddf1c897590447 Mon Sep 17
              00:00:00 2001<br>
              -From: Changqing Li <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;=
</a><br>
              -Date: Wed, 21 Aug 2019 13:12:13 +0800<br>
              -Subject: [PATCH] pacemaker: do not execute target program
              while cross compile<br>
              -<br>
              -Signed-off-by: Bian Naimeng <a class=3D"moz-txt-link-rfc23=
96E" href=3D"mailto:biannm@cn.fujitsu.com">&lt;biannm@cn.fujitsu.com&gt;<=
/a><br>
              -<br>
              -refresh patch to new version 1.1.21<br>
              -Signed-off-by: Changqing Li
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:changqing=
.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a><br>
              ----<br>
              - Makefile.common | 8 +++++---<br>
              - 1 file changed, 5 insertions(+), 3 deletions(-)<br>
              -<br>
              -diff --git a/Makefile.common b/Makefile.common<br>
              -index 469417f..9f19a53 100644<br>
              ---- a/Makefile.common<br>
              -+++ b/Makefile.common<br>
              -@@ -36,18 +36,20 @@ if BUILD_HELP<br>
              - man8_MANS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(sbin_=
PROGRAMS:%=3D%.8)
              $(sbin_SCRIPTS:%=3D%.8)<br>
              - endif<br>
              - <br>
              -++man7_MANS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D<br>
              -+<br>
              - %.8:=A0 % $(MAN8DEPS)<br>
              -=A0=A0=A0=A0=A0=A0=A0 chmod a+x $(abs_builddir)/$&lt;<br>
              -=A0=A0=A0=A0=A0=A0=A0 $(AM_V_MAN)PATH=3D$(abs_builddir):$$=
PATH
              $(HELP2MAN) --output $@ --no-info --section 8 --name "Part
              of the Pacemaker cluster resource manager"
              $(abs_builddir)/$&lt;<br>
              - <br>
              - %.xml:=A0 %<br>
              --=A0=A0=A0=A0=A0 $(AM_V_GEN)$(abs_builddir)/$&lt; metadata=
 &gt; $@<br>
              -+=A0=A0=A0=A0=A0=A0=A0 @echo "xml for $&lt;: Do not try to=
 execute
              target program here"<br>
              - <br>
              - %.dbook: %.xml<br>
              --=A0=A0=A0=A0=A0 $(AM_V_XSL)$(XSLTPROC) --nonet --novalid
              --stringparam man.name $* $(DBOOK_OPTS)
              $(top_srcdir)/xml/ocf-meta2man.xsl $(abs_builddir)/$&lt;
              &gt; $(abs_builddir)/$@<br>
              -+=A0=A0=A0=A0=A0=A0=A0 @echo "dbook for $&lt;: Do not try =
to execute
              target program here"<br>
              - <br>
              - %.7:=A0 %.dbook<br>
              --=A0=A0=A0=A0=A0 $(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT)
              $(abs_builddir)/$&lt; $(PCMK_quiet)<br>
              -+=A0=A0=A0=A0=A0=A0=A0 @echo "man7 for $&lt;: Do not try t=
o execute
              target program here"<br>
              - <br>
              - # Build docbook from asciidoc because XML is a PITA to
              edit<br>
              - #<br>
              --- <br>
              -2.7.4<br>
              -<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-defi=
nition-of-curses_indented_printf.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-defi=
nition-of-curses_indented_printf.patch<br>
              new file mode 100644<br>
              index 0000000..f5e1829<br>
              --- /dev/null<br>
              +++
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-defi=
nition-of-curses_indented_printf.patch<br>
              @@ -0,0 +1,30 @@<br>
              +From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17
              00:00:00 2001<br>
              +From: Chris Lumens <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:clumens@redhat.com">&lt;clumens@redhat.com&gt;</a><br>
              +Date: Thu, 2 Jan 2020 15:08:58 -0500<br>
              +Subject: [PATCH 006/207] Fix: tools: Fix definition of
              curses_indented_printf.<br>
              +<br>
              +The placeholder version that is built if curses is not
              enabled does not<br>
              +have a type that matches the header file.=A0 Correct that.=
<br>
              +<br>
              +Signed-off-by: Jeremy A. Puhlman
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jpuhlman@=
mvista.com">&lt;jpuhlman@mvista.com&gt;</a><br>
              +Upstream-Status: Backport[git]<br>
              +---<br>
              + tools/crm_mon_curses.c | 2 +-<br>
              + 1 file changed, 1 insertion(+), 1 deletion(-)<br>
              +<br>
              +diff --git a/tools/crm_mon_curses.c
              b/tools/crm_mon_curses.c<br>
              +index c0dbedbf0..ecd0584fe 100644<br>
              +--- a/tools/crm_mon_curses.c<br>
              ++++ b/tools/crm_mon_curses.c<br>
              +@@ -368,7 +368,7 @@
              curses_indented_vprintf(pcmk__output_t *out, const char
              *format, va_list args) {<br>
              + <br>
              + G_GNUC_PRINTF(2, 3)<br>
              + void<br>
              +-curses_indented_printf(pcmk__output_t *out, const char
              *format, va_list args) {<br>
              ++curses_indented_printf(pcmk__output_t *out, const char
              *format, ...) {<br>
              +=A0=A0=A0=A0 return;<br>
              + }<br>
              + <br>
              +-- <br>
              +2.23.0<br>
              +<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-u=
se-libgnutls-config.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-u=
se-libgnutls-config.patch<br>
              deleted file mode 100644<br>
              index c1ffc86..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-u=
se-libgnutls-config.patch<br>
              +++ /dev/null<br>
              @@ -1,35 +0,0 @@<br>
              -From 5148e0a7e3cd4293416b969f2c563faa6aca27b2 Mon Sep 17
              00:00:00 2001<br>
              -From: Joe Slater <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:jslater@windriver.com">&lt;jslater@windriver.com&gt;</a><br>
              -Date: Mon, 11 Mar 2013 15:47:54 -0700<br>
              -Subject: [PATCH] pacemaker: do not use libgnutls-config<br=
>
              -<br>
              -Do not try to use libgnutls-config when configuring.<br>
              -It has been deprecated and we do not supply it.=A0 If a<br=
>
              -host version is found, bad things can happen.<br>
              -<br>
              -Upstream-Status: Inappropriate [OE specific]<br>
              -<br>
              -Signed-off-by: Joe Slater <a class=3D"moz-txt-link-rfc2396=
E" href=3D"mailto:jslater@windriver.com">&lt;jslater@windriver.com&gt;</a=
><br>
              -Signed-off-by: Jackie Huang
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jackie.hu=
ang@windriver.com">&lt;jackie.huang@windriver.com&gt;</a><br>
              -<br>
              ----<br>
              - configure.ac | 6 +++---<br>
              - 1 file changed, 3 insertions(+), 3 deletions(-)<br>
              -<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index e930e33..2eade3c 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -1707,9 +1707,9 @@ dnl
              =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>
              - AC_CHECK_HEADERS(gnutls/gnutls.h)<br>
              - AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)<br>
              - <br>
              --dnl GNUTLS library: Attempt to determine by
              'libgnutls-config' program.<br>
              --dnl If no 'libgnutls-config', try traditional autoconf
              means.<br>
              --AC_PATH_PROGS(LIBGNUTLS_CONFIG, libgnutls-config)<br>
              -+dnl libgnutls-config has been deprecated, so we use
              pkg-config<br>
              -+<br>
              -+LIBGNUTLS_CONFIG=3D"pkg-config gnutls"<br>
              - <br>
              - if test -n "$LIBGNUTLS_CONFIG"; then<br>
              -=A0=A0=A0=A0=A0=A0=A0 AC_MSG_CHECKING(for gnutls header fl=
ags)<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-i=
nfrastructure-optional.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-i=
nfrastructure-optional.patch<br>
              deleted file mode 100644<br>
              index 3417aae..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-i=
nfrastructure-optional.patch<br>
              +++ /dev/null<br>
              @@ -1,137 +0,0 @@<br>
              -From 8a7c861e746ef13a2ffe74388891d7ea5709614b Mon Sep 17
              00:00:00 2001<br>
              -From: =3D?UTF-8?q?Ferenc=3D20W=3DC3=3DA1gner?=3D
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:wferi@deb=
ian.org">&lt;wferi@debian.org&gt;</a><br>
              -Date: Thu, 29 Sep 2016 10:47:49 +0200<br>
              -Subject: [PATCH] Make the testing infrastructure optional<=
br>
              -MIME-Version: 1.0<br>
              -Content-Type: text/plain; charset=3DUTF-8<br>
              -Content-Transfer-Encoding: 8bit<br>
              -<br>
              -Upstream does not want this option, unfortunately.<br>
              -https://github.com/ClusterLabs/pacemaker/pull/1149<br>
              -<br>
              -Signed-off-by: Ferenc W=C3=A1gner <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:wferi@debian.org">&lt;wferi@debian.org&gt;</a><=
br>
              -<br>
              -It does not install test case by default<br>
              -Backport the patch from ubuntu<br>
-http://archive.ubuntu.com/ubuntu/pool/main/p/pacemaker/pacemaker_1.1.18-=
0ubuntu1.debian.tar.xz<br>
              -Upstream-Status: Deny [<a
                href=3D"https://github.com/ClusterLabs/pacemaker/pull/114=
9"
                moz-do-not-send=3D"true">https://github.com/ClusterLabs/p=
acemaker/pull/1149</a>]<br>
              -<br>
              -Signed-off-by: Hongxu Jia
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:hongxu.ji=
a@windriver.com">&lt;hongxu.jia@windriver.com&gt;</a><br>
              ----<br>
              - Makefile.am=A0=A0=A0=A0=A0=A0=A0=A0 | 2 ++<br>
              - configure.ac=A0=A0=A0=A0=A0=A0=A0 | 5 +++++<br>
              - fencing/Makefile.am | 2 ++<br>
              - lrmd/Makefile.am=A0=A0=A0 | 2 ++<br>
              - pengine/Makefile.am | 2 ++<br>
              - tools/Makefile.am=A0=A0 | 2 ++<br>
              - 6 files changed, 15 insertions(+)<br>
              -<br>
              -diff --git a/Makefile.am b/Makefile.am<br>
              -index 874f6ed..9ce8b12 100644<br>
              ---- a/Makefile.am<br>
              -+++ b/Makefile.am<br>
              -@@ -35,6 +35,7 @@ ACLOCAL_AMFLAGS=A0 =3D -I m4<br>
              - licensedir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(d=
ocdir)/licenses/<br>
              - license_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(wildc=
ard licenses/*)<br>
              - <br>
              -+if ENABLE_TESTS<br>
              - # Test components<br>
              - SUBDIRS=A0=A0=A0=A0=A0=A0 +=3D cts<br>
              - <br>
              -@@ -46,6 +47,7 @@ test_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D
              valgrind-pcmk.suppressions<br>
              - noinst_PROGRAMS =3D scratch<br>
              - nodist_scratch_SOURCES=A0=A0=A0=A0=A0=A0=A0 =3D scratch.c=
<br>
              - scratch_LDADD =3D
              $(top_builddir)/lib/common/libcrmcommon.la -lm<br>
              -+endif<br>
              - <br>
              - scratch.c:<br>
              -=A0=A0=A0=A0=A0=A0=A0 echo 'int main(void){}' &gt;$@<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index b87e61b..a0cf3e2 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -330,6 +330,11 @@ AC_ARG_WITH(configdir,<br>
              -=A0=A0=A0=A0 [ CONFIGDIR=3D"$withval" ]<br>
              - )<br>
              - <br>
              -+AC_ARG_ENABLE([tests],<br>
              -+=A0=A0=A0 [AS_HELP_STRING([--disable-tests],[don't build =
and
              install the testing components])],,<br>
              -+=A0=A0=A0 [enable_tests=3Dyes])<br>
              -+AM_CONDITIONAL([ENABLE_TESTS],[test "x$enable_tests" !=3D
              xno])<br>
              -+<br>
              - dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
              - dnl General Processing<br>
              - dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
              -diff --git a/fencing/Makefile.am b/fencing/Makefile.am<br>
              -index 3bb628f..8c06502 100644<br>
              ---- a/fencing/Makefile.am<br>
              -+++ b/fencing/Makefile.am<br>
              -@@ -18,8 +18,10 @@<br>
              - include $(top_srcdir)/Makefile.common<br>
              - <br>
              - ## binary progs<br>
              -+if ENABLE_TESTS<br>
              - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D
              $(datadir)/$(PACKAGE)/tests/fencing<br>
              - test_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.py=
<br>
              -+endif<br>
              - <br>
              - halibdir=A0=A0=A0=A0=A0 =3D $(CRM_DAEMON_DIR)<br>
              - halib_PROGRAMS=A0=A0=A0=A0=A0=A0=A0 =3D stonithd stonith-=
test<br>
              -diff --git a/lrmd/Makefile.am b/lrmd/Makefile.am<br>
              -index 33611cb..ad6b88d 100644<br>
              ---- a/lrmd/Makefile.am<br>
              -+++ b/lrmd/Makefile.am<br>
              -@@ -19,11 +19,13 @@ include $(top_srcdir)/Makefile.common<=
br>
              - lrmdlibdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(CRM_DAE=
MON_DIR)<br>
              - lrmdlib_PROGRAMS=A0=A0=A0=A0=A0 =3D lrmd lrmd_internal_ct=
l<br>
              - <br>
              -+if ENABLE_TESTS<br>
              - # Test components<br>
              - lrmdlib_PROGRAMS=A0=A0=A0=A0=A0 +=3D lrmd_test<br>
              - <br>
              - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D
              $(datadir)/$(PACKAGE)/tests/lrmd<br>
              - test_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.py=
<br>
              -+endif<br>
              - <br>
              - initdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D $(INITDIR)<br>
              - init_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D pacemaker_rem=
ote<br>
              -diff --git a/pengine/Makefile.am b/pengine/Makefile.am<br>
              -index 861946c..3faae3a 100644<br>
              ---- a/pengine/Makefile.am<br>
              -+++ b/pengine/Makefile.am<br>
              -@@ -21,6 +21,7 @@ AM_CPPFLAGS=A0 +=3D -I$(top_builddir)
              -I$(top_srcdir)<br>
              - <br>
              - halibdir=A0=A0=A0=A0=A0 =3D $(CRM_DAEMON_DIR)<br>
              - <br>
              -+if ENABLE_TESTS<br>
              - PE_TESTS=A0=A0=A0=A0=A0 =3D $(wildcard test10/*.scores)<b=
r>
              - <br>
              - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D
              $(datadir)/$(PACKAGE)/tests/pengine<br>
              -@@ -29,6 +30,7 @@ test_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D
              regression.core.sh<br>
              - <br>
              - test10dir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D
              $(datadir)/$(PACKAGE)/tests/pengine/test10<br>
              - test10_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D $(PE_TESTS)
              $(PE_TESTS:%.scores=3D%.xml) $(PE_TESTS:%.scores=3D%.exp)
              $(PE_TESTS:%.scores=3D%.dot) $(PE_TESTS:%.scores=3D%.summar=
y)
              $(wildcard test10/*.stderr)<br>
              -+endif<br>
              - <br>
              - beekhof:<br>
              -=A0=A0=A0=A0=A0=A0=A0 echo $(shell ls -1 test10/*.xml)<br>
              -diff --git a/tools/Makefile.am b/tools/Makefile.am<br>
              -index 3548035..826396d 100644<br>
              ---- a/tools/Makefile.am<br>
              -+++ b/tools/Makefile.am<br>
              -@@ -40,10 +40,12 @@ EXTRA_DIST=A0=A0=A0=A0=A0=A0=A0=A0 =3D=
 $(sbin_SCRIPTS)<br>
              - sbin_PROGRAMS=A0=A0=A0=A0=A0=A0=A0=A0 =3D crm_simulate cr=
madmin cibadmin
              crm_node crm_attribute crm_resource crm_verify \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 crm_shadow attrd_updater
              crm_diff crm_mon iso8601 crm_ticket crm_error<br>
              - <br>
              -+if ENABLE_TESTS<br>
              - testdir=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D
              $(datadir)/$(PACKAGE)/tests/cli<br>
              - test_SCRIPTS=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D regression.sh=
<br>
              - test_DATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D r=
egression.dates.exp
              regression.tools.exp regression.acls.exp \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 regression.validity.exp<br>
              -+endif<br>
              - <br>
              - if BUILD_HEARTBEAT_SUPPORT<br>
              - sbin_PROGRAMS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 +=3D crm_uuid=
<br>
              --- <br>
              -2.7.4<br>
              -<br>
              diff --git
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-lib=
dir-ocf.patch
b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-lib=
dir-ocf.patch<br>
              deleted file mode 100644<br>
              index 98c3475..0000000<br>
              ---
a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-lib=
dir-ocf.patch<br>
              +++ /dev/null<br>
              @@ -1,28 +0,0 @@<br>
              -From 588800f0e2fe52a677a19b7c59636e9f391a6e75 Mon Sep 17
              00:00:00 2001<br>
              -From: Mingli Yu <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:Mingli.Yu@windriver.com">&lt;Mingli.Yu@windriver.com&gt;</a><br>
              -Date: Wed, 27 Dec 2017 07:14:21 +0000<br>
              -Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to
              $libdir/ocf<br>
              -<br>
              -* Set the default OCF_ROOT_DIR to $libdir/ocf<br>
              -=A0 to make the resource agents components more<br>
              -=A0 compatible<br>
              -<br>
              -Signed-off-by: Mingli Yu <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:Mingli.Yu@windriver.com">&lt;Mingli.Yu@windriver.com&gt;=
</a><br>
              -<br>
              ----<br>
              - configure.ac | 2 +-<br>
              - 1 file changed, 1 insertion(+), 1 deletion(-)<br>
              -<br>
              -diff --git a/configure.ac b/configure.ac<br>
              -index 2eade3c..ba290cc 100644<br>
              ---- a/configure.ac<br>
              -+++ b/configure.ac<br>
              -@@ -1152,7 +1152,7 @@ AC_SUBST(HA_VARLIBHBDIR)<br>
              - <br>
              -
              AC_DEFINE_UNQUOTED(UUID_FILE,"$localstatedir/lib/heartbeat/=
hb_uuid",
              Location of Heartbeat's UUID file)<br>
              - <br>
              --OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER
              OCF_ROOT_DIR /usr/lib/ocf`<br>
              -+OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER
              OCF_ROOT_DIR $libdir/ocf`<br>
              - if test "X$OCF_ROOT_DIR" =3D X; then<br>
              -=A0=A0 AC_MSG_ERROR(Could not locate OCF directory)<br>
              - fi<br>
              diff --git
              a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
              b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb<=
br>
              similarity index 82%<br>
              rename from
              meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb<b=
r>
              rename to
              meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb<br=
>
              index 3a8db77..9b63acd 100644<br>
              ---
              a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb=
<br>
              +++
              b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb<=
br>
              @@ -13,24 +13,20 @@ LIC_FILES_CHKSUM =3D "<a
                href=3D"file://COPYING;md5=3D000212f361a81b100d9d0f043504=
0663"
                moz-do-not-send=3D"true">file://COPYING;md5=3D000212f361a=
81b100d9d0f0435040663</a>"<br>
              =A0<br>
              =A0DEPENDS =3D "corosync libxslt libxml2 gnutls
              resource-agents libqb python3-native"<br>
              =A0<br>
              -SRC_URI =3D
              "git://github.com/ClusterLabs/${BPN}.git;branch=3D1.1 \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
                href=3D"file://0001-pacemaker-fix-xml-config.patch"
                moz-do-not-send=3D"true">file://0001-pacemaker-fix-xml-co=
nfig.patch</a>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
href=3D"file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.=
patch"
                moz-do-not-send=3D"true">
file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch</a=
>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
                href=3D"file://0003-pacemaker-fix-header-defs-lookup.patc=
h"
                moz-do-not-send=3D"true">file://0003-pacemaker-fix-header=
-defs-lookup.patch</a>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
                href=3D"file://0004-pacemaker-do-not-build-help.patch"
                moz-do-not-send=3D"true">file://0004-pacemaker-do-not-bui=
ld-help.patch</a>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
href=3D"file://0005-pacemaker-do-not-execute-target-program-while-cross-.=
patch"
                moz-do-not-send=3D"true">
file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch</a=
>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
                href=3D"file://0006-pacemaker-do-not-use-libgnutls-config=
.patch"
                moz-do-not-send=3D"true">file://0006-pacemaker-do-not-use=
-libgnutls-config.patch</a>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
                href=3D"file://set-OCF_ROOT_DIR-to-libdir-ocf.patch"
                moz-do-not-send=3D"true">file://set-OCF_ROOT_DIR-to-libdi=
r-ocf.patch</a>
              \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
                href=3D"file://0007-Make-the-testing-infrastructure-optio=
nal.patch"
                moz-do-not-send=3D"true">
file://0007-Make-the-testing-infrastructure-optional.patch</a> \<br>
              +SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git \<br>
              +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a
href=3D"file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.pa=
tch"
                moz-do-not-send=3D"true">
file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch</a>
              \<br>
              +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a href=3D"file://0001-Fix-=
python3-usage.patch"
                moz-do-not-send=3D"true">file://0001-Fix-python3-usage.pa=
tch</a>
              \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a href=3D"file://volatil=
es"
                moz-do-not-send=3D"true">file://volatiles</a> \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <a href=3D"file://tmpfile=
s"
                moz-do-not-send=3D"true">file://tmpfiles</a> \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "<br>
              =A0<br>
              +CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat"<br>
              +CPPFLAGS +=3D"-I${STAGING_INCDIR}/heartbeat"<br>
              =A0SRC_URI_append_libc-musl =3D "<a
                href=3D"file://0001-pacemaker-fix-compile-error-of-musl-l=
ibc.patch"
                moz-do-not-send=3D"true">file://0001-pacemaker-fix-compil=
e-error-of-musl-libc.patch</a>"<br>
              =A0<br>
              -SRCREV =3D "f14e36fd4336874705b34266c7cddbe12119106c"<br>
              +SRCREV =3D "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"<br>
              =A0<br>
              -inherit autotools-brokensep pkgconfig systemd python3-dir
              useradd<br>
              +inherit autotools-brokensep pkgconfig systemd
              python3native python3-dir useradd<br>
              =A0<br>
              =A0S =3D "${WORKDIR}/git"<br>
              =A0<br>
              @@ -48,7 +44,11 @@ EXTRA_OECONF +=3D
              "STAGING_INCDIR=3D${STAGING_INCDIR} \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --witho=
ut-heartbeat \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --disab=
le-pretty \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --disab=
le-tests \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "<br>
              +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "<br>
              +<br>
              +CACHED_CONFIGUREVARS +=3D " \<br>
              +=A0=A0=A0 ac_cv_path_BASH_PATH=3D/bin/bash \<br>
              +"<br>
              =A0<br>
              =A0do_install_append() {<br>
              =A0=A0=A0=A0 install -d ${D}${sysconfdir}/default<br>
              @@ -92,7 +92,7 @@ FILES_${PN} +=3D "
              ${datadir}/snmp=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
              ${libdir}/corosync/lcrso/pacemaker.lcrso=A0=A0=A0 \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
              ${libdir}/${PYTHON_DIR}/dist-packages/cts/=A0 \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${libdi=
r}/ocf/resource.d/ \<br>
              -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${libdir}=
/${PYTHON_DIR}/site-packages \<br>
              +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
              ${libdir}/${PYTHON_DIR}/site-packages/cts/ \<br>
              =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "<br>
              =A0FILES_${PN}-dbg +=3D "${libdir}/corosync/lcrso/.debug"<b=
r>
              =A0RDEPENDS_${PN} =3D "bash python3-core perl libqb
              ${PN}-cli-utils"<br>
              -- <br>
              2.13.3<br>
              <br>
            </div>
          </span></font></div>
      <div id=3D"DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br>
        <table style=3D"border-top: 1px solid #D3D4DE;">
          <tbody>
            <tr>
              <td style=3D"width: 55px; padding-top: 13px;"><a
href=3D"http://www.avg.com/email-signature?utm_medium=3Demail&amp;utm_sou=
rce=3Dlink&amp;utm_campaign=3Dsig-email&amp;utm_content=3Demailclient"
                  target=3D"_blank" moz-do-not-send=3D"true"><img
src=3D"https://ipmcdn.avast.com/images/icons/icon-envelope-tick-green-avg=
-v1.png"
                    alt=3D"" style=3D"width: 46px; height: 29px;"
                    moz-do-not-send=3D"true" width=3D"46" height=3D"29"><=
/a></td>
              <td style=3D"width: 470px; padding-top: 12px; color:
                #41424e; font-size: 13px; font-family: Arial, Helvetica,
                sans-serif; line-height: 18px;">Virus-free. <a
href=3D"http://www.avg.com/email-signature?utm_medium=3Demail&amp;utm_sou=
rce=3Dlink&amp;utm_campaign=3Dsig-email&amp;utm_content=3Demailclient"
                  target=3D"_blank" style=3D"color: #4453ea;"
                  moz-do-not-send=3D"true">www.avg.com</a> </td>
            </tr>
          </tbody>
        </table>
        <a href=3D"#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width=3D"1"
          height=3D"1" moz-do-not-send=3D"true"> </a></div>
    </blockquote>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Jeremy A. Puhlman
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jpuhlman@mvista.com"=
>jpuhlman@mvista.com</a></pre>
  </body>
</html>

--------------9C13AD645C83E92BAC17DBE3--
