Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32972E00948; Tue, 20 Mar 2018 21:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848D6E0084A
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 21:28:37 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id v194-v6so5139310itb.0
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 21:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=n4li34hb5D6eVbkQf4XIFu4yvs7sa6CAfgPzAM8S0Uk=;
	b=Glv/iDnyd/u+0xXGezkNZlURfYq46ik3loZ6pbqEK9XSE5uwxpQo4p7a32keTg12kr
	+1Fn1lrKbdmtfrGSgevqj2o/3ApnNVZthSXphr1mO6ka9wwqDU7fCDAbEsScSjOqPqbU
	SlZ5M8/1gIGSU4eKaUwNfdpeBiSZA8LYtlm/RVoHTlv35BQ3cevhGNu/RH9DY0wnPoTs
	bNfZmD5Pbm4/+mOvWI+n3RmpK/dq8zoiH+xH28lDXHaK+FI+yLb3WvEtPOnUOQV+D0Ld
	2ioerCcFzE/VaadNtiejtwXBFIUyuxO7a8yrPfYqoj9/wQ4afsOmojeph3ay6UyTCVQR
	M5NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=n4li34hb5D6eVbkQf4XIFu4yvs7sa6CAfgPzAM8S0Uk=;
	b=Sq6doTYTwvJBFDiWrICJkf0NAw7Tm4kElUWGVjEn+lM7e9UOJ0BGfqXpDmRCrgT5IK
	h8gowF0iw/WgEjO+Yc91irEGM3hyTnnwLrYtluc1wUxpU85wwQIPbCx7C5lP9kJxALLd
	W7v0f8j8uKtUpWB0jdSEk5hCcPeIu7CwfHs3f5CQ78zSr3sEx8g2g8YlaLuyG+5/j8RQ
	bHPYMV3o/cwP0ZzfwUh+NPr4yuzta+JS8N3uzjYJZAqekH0zGgjo0GoP0x5861732qgW
	bbrWzACnWYP85dH6UsHegkLAqy7GvCuab2Brn5DHA/KyJ8yIwqreREUNZkEJz6hopOgu
	8paw==
X-Gm-Message-State: AElRT7GBHtbig5OgIJQPiUSwM+QEn8PWm8oXhNeO/tclSZ/tQAHJ3zbL
	jF28cfF1R1+Kz6MYxibtAgHfjGc1HIr9chxP7PngXsaQ
X-Google-Smtp-Source: AG47ELtJ1DF3M+47S9ygYizJGMuz4deaxfk1N2ilASsnBTVqGdNjajz02fASPKpjOX/0guf04FNJphkQgHBoOC3gwyM=
X-Received: by 2002:a24:4d8e:: with SMTP id
	l136-v6mr2431807itb.121.1521606516500; 
	Tue, 20 Mar 2018 21:28:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.167.21 with HTTP; Tue, 20 Mar 2018 21:28:36 -0700 (PDT)
In-Reply-To: <1521528644-4341-1-git-send-email-jkrishnanjanappa@mvista.com>
References: <1521528644-4341-1-git-send-email-jkrishnanjanappa@mvista.com>
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
Date: Wed, 21 Mar 2018 09:58:36 +0530
Message-ID: <CAD3vsf5X5Pe4wP-31XhszNwsO19YWW2FTZuHu5r8ZptyXcWg=A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-security][rocko][PATCH] clamav: Add missing clamav.service file to SRC_URI
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
X-List-Received-Date: Wed, 21 Mar 2018 04:28:38 -0000
Content-Type: multipart/alternative; boundary="000000000000e781130567e49f7d"

--000000000000e781130567e49f7d
Content-Type: text/plain; charset="UTF-8"

Please ignore this patch, it gives an error as it is unable to
inherit multilib-alternatives.This class is part of our internal layer.

Regards,
Jagadeesh

On Tue, Mar 20, 2018 at 12:20 PM, Jagadeesh Krishnanjanappa <
jkrishnanjanappa@mvista.com> wrote:

> This solves the below error when systemd is used as init manager,
> -- snip --
> ERROR: clamav-0.99.2-r0 do_package: SYSTEMD_SERVICE_clamav value
> clamav.service does not exist
> ERROR: clamav-0.99.2-r0 do_package: Function failed:
> systemd_populate_packages
> -- snip --
>
> Other issues:
> 1. Ship /lib/systemd/system/clamav-freshclam.service into ${PN}-freshclam
>    package, to solve below warning:
> -- snip --
> [10240] WARNING: QA Issue: clamav: Files/directories were installed but
> not shipped in any package:
>   /lib/systemd/system/clamav-freshclam.service
> -- snip --
>
> 2. Solve rpm conflict error in do_populate_sdk, when clamav and mlib-clamav
>    are specified using IMAGE_INSTALL.
> -- snip --
> do_populate_sdk fails with below error:
>   file /usr/bin/clamav-config conflicts between attempted installs of
> lib32-clamav-dev-0.99.2-r0.i586 and clamav-dev-0.99.2-r0.corei7_64
> -- snip --
>
> Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
> ---
>  recipes-security/clamav/clamav_0.99.2.bb | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-security/clamav/clamav_0.99.2.bb
> b/recipes-security/clamav/clamav_0.99.2.bb
> index 5dfda8f..d7aa6d0 100644
> --- a/recipes-security/clamav/clamav_0.99.2.bb
> +++ b/recipes-security/clamav/clamav_0.99.2.bb
> @@ -14,6 +14,7 @@ SRC_URI = "git://github.com/vrtadmin/
> clamav-devel;branch=${PV} \
>      file://clamd.conf \
>      file://freshclam.conf \
>      file://volatiles.03_clamav \
> +    file://${BPN}.service \
>      "
>
>  SRC_URI[md5sum] = "61b51a04619aeafd965892a53f86d192"
> @@ -26,7 +27,7 @@ SO_VER = "7.1.1"
>
>  EXTRANATIVEPATH += "chrpath-native"
>
> -inherit autotools-brokensep pkgconfig useradd systemd
> +inherit autotools-brokensep pkgconfig useradd systemd
> multilib-alternatives
>
>  UID = "clamav"
>  GID = "clamav"
> @@ -90,8 +91,13 @@ do_install_append() {
>      install -m 0644 ${WORKDIR}/volatiles.03_clamav
> ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
>      sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/
> libclamav.pc
>      rm ${D}/${libdir}/libclamav.so
> +    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','
> false',d)};then
> +       install -D -m 0644 ${WORKDIR}/clamav.service
> ${D}${systemd_unitdir}/system/clamav.service
> +    fi
>  }
>
> +MULTILIB_ALTERNATIVES_${PN}-dev = "${bindir}/clamav-config"
> +
>  pkg_postinst_${PN} () {
>      if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
>          ${sysconfdir}/init.d/populate-volatile.sh update
> @@ -126,7 +132,8 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
>                          ${sysconfdir}/clamav ${sysconfdir}/default/volatiles
> \
>                          ${localstatedir}/lib/clamav \
>                          ${docdir}/${PN}-freshclam
> ${mandir}/man1/freshclam.* \
> -                        ${mandir}/man5/freshclam.conf.*"
> +                        ${mandir}/man5/freshclam.conf.* \
> +                        ${systemd_unitdir}/system/
> clamav-freshclam.service"
>
>  FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
>                      ${libdir}/pkgconfig/*.pc \
> --
> 2.7.4
>
>

--000000000000e781130567e49f7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Please ignore this patch, it gives an error as i=
t is unable to <br>inherit multilib-alternatives.This class is part of our =
internal layer.<br><br></div>Regards,<br></div>Jagadeesh<br></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Mar 20, 2018 at 12=
:20 PM, Jagadeesh Krishnanjanappa <span dir=3D"ltr">&lt;<a href=3D"mailto:j=
krishnanjanappa@mvista.com" target=3D"_blank">jkrishnanjanappa@mvista.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This solves the belo=
w error when systemd is used as init manager,<br>
-- snip --<br>
ERROR: clamav-0.99.2-r0 do_package: SYSTEMD_SERVICE_clamav value clamav.ser=
vice does not exist<br>
ERROR: clamav-0.99.2-r0 do_package: Function failed: systemd_populate_packa=
ges<br>
-- snip --<br>
<br>
Other issues:<br>
1. Ship /lib/systemd/system/clamav-<wbr>freshclam.service into ${PN}-freshc=
lam<br>
=C2=A0 =C2=A0package, to solve below warning:<br>
-- snip --<br>
[10240] WARNING: QA Issue: clamav: Files/directories were installed but not=
 shipped in any package:<br>
=C2=A0 /lib/systemd/system/clamav-<wbr>freshclam.service<br>
-- snip --<br>
<br>
2. Solve rpm conflict error in do_populate_sdk, when clamav and mlib-clamav=
<br>
=C2=A0 =C2=A0are specified using IMAGE_INSTALL.<br>
-- snip --<br>
do_populate_sdk fails with below error:<br>
=C2=A0 file /usr/bin/clamav-config conflicts between attempted installs of =
lib32-clamav-dev-0.99.2-r0.<wbr>i586 and clamav-dev-0.99.2-r0.corei7_64<br>
-- snip --<br>
<br>
Signed-off-by: Jagadeesh Krishnanjanappa &lt;<a href=3D"mailto:jkrishnanjan=
appa@mvista.com">jkrishnanjanappa@mvista.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/clamav/<a href=3D"http://clamav_0.99.2.bb" rel=3D"no=
referrer" target=3D"_blank">clamav<wbr>_0.99.2.bb</a> | 11 +++++++++--<br>
=C2=A01 file changed, 9 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-security/clamav/<a href=3D"http://clamav_0.99.2.bb" re=
l=3D"noreferrer" target=3D"_blank">clam<wbr>av_0.99.2.bb</a> b/recipes-secu=
rity/clamav/<a href=3D"http://clamav_0.99.2.bb" rel=3D"noreferrer" target=
=3D"_blank">clam<wbr>av_0.99.2.bb</a><br>
index 5dfda8f..d7aa6d0 100644<br>
--- a/recipes-security/clamav/<a href=3D"http://clamav_0.99.2.bb" rel=3D"no=
referrer" target=3D"_blank">clam<wbr>av_0.99.2.bb</a><br>
+++ b/recipes-security/clamav/<a href=3D"http://clamav_0.99.2.bb" rel=3D"no=
referrer" target=3D"_blank">clam<wbr>av_0.99.2.bb</a><br>
@@ -14,6 +14,7 @@ SRC_URI =3D &quot;git://<a href=3D"http://github.com/vrta=
dmin/clamav-devel;branch=3D${PV}" rel=3D"noreferrer" target=3D"_blank">gith=
ub.com/vrtadmin/<wbr>clamav-devel;branch=3D${PV}</a> \<br>
=C2=A0 =C2=A0 =C2=A0file://clamd.conf \<br>
=C2=A0 =C2=A0 =C2=A0file://freshclam.conf \<br>
=C2=A0 =C2=A0 =C2=A0file://volatiles.03_clamav \<br>
+=C2=A0 =C2=A0 file://${BPN}.service \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0SRC_URI[md5sum] =3D &quot;<wbr>61b51a04619aeafd965892a53f86d1<wbr>92&=
quot;<br>
@@ -26,7 +27,7 @@ SO_VER =3D &quot;7.1.1&quot;<br>
<br>
=C2=A0EXTRANATIVEPATH +=3D &quot;chrpath-native&quot;<br>
<br>
-inherit autotools-brokensep pkgconfig useradd systemd<br>
+inherit autotools-brokensep pkgconfig useradd systemd multilib-alternative=
s<br>
<br>
=C2=A0UID =3D &quot;clamav&quot;<br>
=C2=A0GID =3D &quot;clamav&quot;<br>
@@ -90,8 +91,13 @@ do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/volatiles.03_clamav=C2=A0 ${=
D}${sysconfdir}/default/<wbr>volatiles/volatiles.03_clamav<br>
=C2=A0 =C2=A0 =C2=A0sed -i -e &#39;s#${STAGING_DIR_HOST}##g&#39; ${D}${libd=
ir}/pkgconfig/<wbr>libclamav.pc<br>
=C2=A0 =C2=A0 =C2=A0rm ${D}/${libdir}/libclamav.so<br>
+=C2=A0 =C2=A0 if ${@bb.utils.contains(&#39;DISTRO_<wbr>FEATURES&#39;,&#39;=
systemd&#39;,&#39;true&#39;,&#39;<wbr>false&#39;,d)};then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0install -D -m 0644 ${WORKDIR}/clamav.service ${=
D}${systemd_unitdir}/system/<wbr>clamav.service<br>
+=C2=A0 =C2=A0 fi<br>
=C2=A0}<br>
<br>
+MULTILIB_ALTERNATIVES_${PN}-<wbr>dev =3D &quot;${bindir}/clamav-config&quo=
t;<br>
+<br>
=C2=A0pkg_postinst_${PN} () {<br>
=C2=A0 =C2=A0 =C2=A0if [ -z &quot;$D&quot; ] &amp;&amp; [ -e /etc/init.d/po=
pulate-volatile.<wbr>sh ] ; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}/init.d/populate-<wbr>volati=
le.sh update<br>
@@ -126,7 +132,8 @@ FILES_${PN}-freshclam =3D &quot;${bindir}/freshclam \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${sysconfdir}/clamav ${sysconfdir}/default/<wbr>volatiles =
\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${localstatedir}/lib/clamav \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${docdir}/${PN}-freshclam ${mandir}/man1/freshclam.* \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ${mandir}/man5/freshclam.conf.<wbr>*&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ${mandir}/man5/freshclam.conf.<wbr>* \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ${systemd_unitdir}/system/<wbr>clamav-freshclam.service&quot;<br=
>
<br>
=C2=A0FILES_${PN}-dev =3D &quot; ${bindir}/clamav-config ${libdir}/*.la \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${libdir}/pkgconfig/*.pc \<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--000000000000e781130567e49f7d--
