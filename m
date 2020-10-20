Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web09.11491.1603164606726650000
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 20:30:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: fede.evol@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id j7so298768wrt.9
        for <yocto@lists.yoctoproject.org>; Mon, 19 Oct 2020 20:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=B9AJthaF3pCbtgp7LI68URY7D9vGdTZIQF6F4q3Co18=;
        b=JidioMs7csDqKyds0ksRyz3B8LmJWdO7ayndHe9NwBWHFeip3HAtxBdwLhvDfgD+HO
         SGMa+qVnBm5WCXRZTyM00PskItrp5sAI2C1AlpkCVwmzfa66D83oSPWRfQp99eKSCi3S
         /yZeGSRmYRrmYNk2z7LE6F4xWerT1pM1dLu2mTKN+enA5QcoPHWEvyWCFlmP6SxUUd8b
         RbAUrJsD45yQgVQ+uZK6pqah13EmwT/XnpoO6ya1mhmKF38W+Dau4PEXzi2QeJY60c9J
         XuCeLWXycR05cqG5SyHzDSNBxS9IbnTPIoRVpUjqcQKehW5irvP/+cFqNZk9vdiLoMuI
         nOpw==
X-Gm-Message-State: AOAM530HBanhIB9a43DSUGonkEQO0GJsU+HGBAnsVzvI7rnSw64TamSf
	fj7mhPYkBMQ76woJ+up0JLQYrkP6W7NmcukhemJeQm1fE5RlSg==
X-Google-Smtp-Source: ABdhPJziXFdZgT6BBEstusAvTTOEYoRdQCONCA/yHu8c3LXWfbJtutaaGaK8T/syOwI4Ph4JCIWVA36/1F6DEfo+8wk=
X-Received: by 2002:a5d:66d2:: with SMTP id k18mr925353wrw.229.1603164604945;
 Mon, 19 Oct 2020 20:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <163F9594C568AA0B.19204@lists.yoctoproject.org>
In-Reply-To: <163F9594C568AA0B.19204@lists.yoctoproject.org>
From: "Federico Pellegrin" <fede@evolware.org>
Date: Tue, 20 Oct 2020 05:29:53 +0200
Message-ID: <CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com>
Subject: Re: [yocto] [PATCH 1/1] openssl: Add c_rehash to misc package and add perl runtime dependency
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cb58f505b211d832"

--000000000000cb58f505b211d832
Content-Type: text/plain; charset="UTF-8"

Sorry, new to the process, adding the pull URL here:

https://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=fedepell/bug14083

Cheers,
F.

Il giorno mar 20 ott 2020 alle ore 05:27 Federico Pellegrin <
fede@evolware.org> ha scritto:

>
> c_rehash implemented in perl is back (in history was moved to shell for
> some time), so handle it inside the -misc package so just that one will
> carry the heavy runtime dependency on perl and not the whole openssl
> package. Note: in misc there were already before a few perl files
> (tsget.pl and CA.pl) so the added perl dependency will fix those too.
>
> [YOCTO #14083]
>
> Signed-off-by: Federico Pellegrin <fede@evolware.org>
> ---
>  meta/recipes-connectivity/openssl/openssl_1.1.1g.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
> b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
> index 815955837b..66d8851426 100644
> --- a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
> +++ b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
> @@ -195,13 +195,14 @@ FILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf \
>                        ${libdir}/ssl-1.1/openssl.cnf* \
>                        "
>  FILES_${PN}-engines = "${libdir}/engines-1.1"
> -FILES_${PN}-misc = "${libdir}/ssl-1.1/misc"
> +FILES_${PN}-misc = "${libdir}/ssl-1.1/misc ${bindir}/c_rehash"
>  FILES_${PN} =+ "${libdir}/ssl-1.1/*"
>  FILES_${PN}_append_class-nativesdk = "
> ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>
>  CONFFILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf"
>
>  RRECOMMENDS_libcrypto += "openssl-conf"
> +RDEPENDS_${PN}-misc = "perl"
>  RDEPENDS_${PN}-ptest += "openssl-bin perl perl-modules bash"
>
>  RDEPENDS_${PN}-bin += "openssl-conf"
> --
> 2.26.2
>
> 
>
>

--000000000000cb58f505b211d832
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Sorry, new to the process, adding the =
pull URL here: <br></div><div><br></div><div><a href=3D"https://git.yoctopr=
oject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dfedepell/bug14083">https://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dfedepell/bug14083</a=
></div><div><br></div><div>Cheers,</div><div>F.<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 20 o=
tt 2020 alle ore 05:27 Federico Pellegrin &lt;<a href=3D"mailto:fede@evolwa=
re.org">fede@evolware.org</a>&gt; ha scritto:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>c_rehash=
 implemented in perl is back (in history was moved to shell for</div>some t=
ime), so handle it inside the -misc package so just that one will<br>carry =
the heavy runtime dependency on perl and not the whole openssl<br>package. =
Note: in misc there were already before a few perl files<br>(<a href=3D"htt=
p://tsget.pl" target=3D"_blank">tsget.pl</a> and CA.pl) so the added perl d=
ependency will fix those too.<br><br>[YOCTO #14083]<br><br>Signed-off-by: F=
ederico Pellegrin &lt;<a href=3D"mailto:fede@evolware.org" target=3D"_blank=
">fede@evolware.org</a>&gt;<br>---<br>=C2=A0meta/recipes-connectivity/opens=
sl/<a href=3D"http://openssl_1.1.1g.bb" target=3D"_blank">openssl_1.1.1g.bb=
</a> | 3 ++-<br>=C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br><br=
>diff --git a/meta/recipes-connectivity/openssl/<a href=3D"http://openssl_1=
.1.1g.bb" target=3D"_blank">openssl_1.1.1g.bb</a> b/meta/recipes-connectivi=
ty/openssl/<a href=3D"http://openssl_1.1.1g.bb" target=3D"_blank">openssl_1=
.1.1g.bb</a><br>index 815955837b..66d8851426 100644<br>--- a/meta/recipes-c=
onnectivity/openssl/<a href=3D"http://openssl_1.1.1g.bb" target=3D"_blank">=
openssl_1.1.1g.bb</a><br>+++ b/meta/recipes-connectivity/openssl/<a href=3D=
"http://openssl_1.1.1g.bb" target=3D"_blank">openssl_1.1.1g.bb</a><br>@@ -1=
95,13 +195,14 @@ FILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf=
 \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0${libdir}/ssl-1.1/openssl.cnf* \<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>=C2=
=A0FILES_${PN}-engines =3D &quot;${libdir}/engines-1.1&quot;<br>-FILES_${P=
N}-misc =3D &quot;${libdir}/ssl-1.1/misc&quot;<br>+FILES_${PN}-misc =3D &qu=
ot;${libdir}/ssl-1.1/misc ${bindir}/c_rehash&quot;<br>=C2=A0FILES_${PN} =3D=
+ &quot;${libdir}/ssl-1.1/*&quot;<br>=C2=A0FILES_${PN}_append_class-natives=
dk =3D &quot; ${SDKPATHNATIVE}/environment-setup.d/openssl.sh&quot;<br>=C2=
=A0<br>=C2=A0CONFFILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cn=
f&quot;<br>=C2=A0<br>=C2=A0RRECOMMENDS_libcrypto +=3D &quot;openssl-conf&qu=
ot;<br>+RDEPENDS_${PN}-misc =3D &quot;perl&quot;<br>=C2=A0RDEPENDS_${PN}-pt=
est +=3D &quot;openssl-bin perl perl-modules bash&quot;<br>=C2=A0<br>=C2=A0=
RDEPENDS_${PN}-bin +=3D &quot;openssl-conf&quot;<br>-- <br>2.26.2</div>
<br>
<br>
<br>
</blockquote></div>

--000000000000cb58f505b211d832--
