Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web12.11629.1603164456695359928
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 20:27:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.128.65, mailfrom: fede.evol@gmail.com)
Received: by mail-wm1-f65.google.com with SMTP id f21so257190wml.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Oct 2020 20:27:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ziDWwi5m4ZdZb+H1nBg6WBwrWxEfhbLNGR8U3l+G9Fg=;
        b=qakw9JnZ7cCYM7DLutqaDVTQZZnZolU9shnAS+7JlzpmUL3JZAA8bERUXwyko18sUk
         eMsUF0qXJizW1OAvHsvC+oQnJiJBAEnWieXFQFy5Tz1Ks6TTLWYggRXI6Mu45m1J0qt/
         vyE58cEwGC65u007oK4XI5zdj7SrRls5GHAH1yE5U1qzbcDJFMTuz87yRrNq/oHrfpda
         2SwdJmZdm1coy9gmn1aqInUf+pGtti2/Dr1JTpwgho8KlyQAmQU09bG+z7pU/ZsT1Lwu
         KLdKs11vHBdzHLMf8MMt3FsDD6oUTMXi9nOf7cXHJ9lR6em5wUQERwA6HDw3lsJWBy7T
         pBCw==
X-Gm-Message-State: AOAM531emdqqXOWYDnjjiiogQPA1rxAM1X+LlJa99xu7LzHek6yfRMFh
	XyDYUV5PXrs9TLXrNo94xlrpKWZmDKoxF6lGUhIp0qpH09sM2A==
X-Google-Smtp-Source: ABdhPJz3OD+QkKKay9fcA+AhhtM+ePOI+mHQZIhud5pM6SOK+za+L5fTZAOLaMirE5pfgRNlJTRiLBv+zn2/HMVu+0k=
X-Received: by 2002:a1c:b657:: with SMTP id g84mr566369wmf.0.1603164454680;
 Mon, 19 Oct 2020 20:27:34 -0700 (PDT)
MIME-Version: 1.0
From: fede@evolware.org
Date: Tue, 20 Oct 2020 05:27:23 +0200
Message-ID: <CAM6O0Zi8uP-wkkjjPaUOo5yxr+ADf_VnzJDjvotZWjW6GRcVAQ@mail.gmail.com>
Subject: [PATCH 1/1] openssl: Add c_rehash to misc package and add perl runtime dependency
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d67c6605b211cf6b"

--000000000000d67c6605b211cf6b
Content-Type: text/plain; charset="UTF-8"

c_rehash implemented in perl is back (in history was moved to shell for
some time), so handle it inside the -misc package so just that one will
carry the heavy runtime dependency on perl and not the whole openssl
package. Note: in misc there were already before a few perl files
(tsget.pl and CA.pl) so the added perl dependency will fix those too.

[YOCTO #14083]

Signed-off-by: Federico Pellegrin <fede@evolware.org>
---
 meta/recipes-connectivity/openssl/openssl_1.1.1g.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
index 815955837b..66d8851426 100644
--- a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
+++ b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
@@ -195,13 +195,14 @@ FILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf \
                       ${libdir}/ssl-1.1/openssl.cnf* \
                       "
 FILES_${PN}-engines = "${libdir}/engines-1.1"
-FILES_${PN}-misc = "${libdir}/ssl-1.1/misc"
+FILES_${PN}-misc = "${libdir}/ssl-1.1/misc ${bindir}/c_rehash"
 FILES_${PN} =+ "${libdir}/ssl-1.1/*"
 FILES_${PN}_append_class-nativesdk = "
${SDKPATHNATIVE}/environment-setup.d/openssl.sh"

 CONFFILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf"

 RRECOMMENDS_libcrypto += "openssl-conf"
+RDEPENDS_${PN}-misc = "perl"
 RDEPENDS_${PN}-ptest += "openssl-bin perl perl-modules bash"

 RDEPENDS_${PN}-bin += "openssl-conf"
-- 
2.26.2

--000000000000d67c6605b211cf6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>c_rehash implemented in perl is back (=
in history was moved to shell for</div>some time), so handle it inside the =
-misc package so just that one will<br>carry the heavy runtime dependency o=
n perl and not the whole openssl<br>package. Note: in misc there were alrea=
dy before a few perl files<br>(<a href=3D"http://tsget.pl">tsget.pl</a> and=
 CA.pl) so the added perl dependency will fix those too.<br><br>[YOCTO #140=
83]<br><br>Signed-off-by: Federico Pellegrin &lt;<a href=3D"mailto:fede@evo=
lware.org">fede@evolware.org</a>&gt;<br>---<br>=C2=A0meta/recipes-connectiv=
ity/openssl/<a href=3D"http://openssl_1.1.1g.bb">openssl_1.1.1g.bb</a> | 3 =
++-<br>=C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br><br>diff --g=
it a/meta/recipes-connectivity/openssl/<a href=3D"http://openssl_1.1.1g.bb"=
>openssl_1.1.1g.bb</a> b/meta/recipes-connectivity/openssl/<a href=3D"http:=
//openssl_1.1.1g.bb">openssl_1.1.1g.bb</a><br>index 815955837b..66d8851426 =
100644<br>--- a/meta/recipes-connectivity/openssl/<a href=3D"http://openssl=
_1.1.1g.bb">openssl_1.1.1g.bb</a><br>+++ b/meta/recipes-connectivity/openss=
l/<a href=3D"http://openssl_1.1.1g.bb">openssl_1.1.1g.bb</a><br>@@ -195,13 =
+195,14 @@ FILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf \<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0${libdir}/ssl-1.1/openssl.cnf* \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>=C2=A0FILE=
S_${PN}-engines =3D &quot;${libdir}/engines-1.1&quot;<br>-FILES_${PN}-misc =
=3D &quot;${libdir}/ssl-1.1/misc&quot;<br>+FILES_${PN}-misc =3D &quot;${lib=
dir}/ssl-1.1/misc ${bindir}/c_rehash&quot;<br>=C2=A0FILES_${PN} =3D+ &quot;=
${libdir}/ssl-1.1/*&quot;<br>=C2=A0FILES_${PN}_append_class-nativesdk =3D &=
quot; ${SDKPATHNATIVE}/environment-setup.d/openssl.sh&quot;<br>=C2=A0<br>=
=C2=A0CONFFILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf&quot;<=
br>=C2=A0<br>=C2=A0RRECOMMENDS_libcrypto +=3D &quot;openssl-conf&quot;<br>+=
RDEPENDS_${PN}-misc =3D &quot;perl&quot;<br>=C2=A0RDEPENDS_${PN}-ptest +=3D=
 &quot;openssl-bin perl perl-modules bash&quot;<br>=C2=A0<br>=C2=A0RDEPENDS=
_${PN}-bin +=3D &quot;openssl-conf&quot;<br>-- <br>2.26.2</div>

--000000000000d67c6605b211cf6b--
