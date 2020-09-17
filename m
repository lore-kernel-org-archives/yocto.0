Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web12.13272.1600341944410748828
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 04:25:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lTLNs6o8;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id j3so1098866vsm.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2020 04:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sMzGUFn+89DU8TSVOYikAqMjSy5Bq7yc08PNdG34hV8=;
        b=lTLNs6o83AinD7UipjchNqmUO0VqapFnYpsos3ToN64gU5KhnKFaqMoIY9h12ObYZ/
         73SMTEAKyG9ft15KHSHBO8I7UK1IUYPhCTNhL7J2gNh2HMeIZKyQlJZCTVELHWKugPqF
         DfGFIBiFfcBkWvIyBETX1GuTym/TO2RZ7u4u0HEO1ROln5rkvVfk5niLMoynQS+jOUJE
         +tUWt3Ssscinl2egxYOYIXdyOCUkwiZWsptbJe+vml3BgbDjOwTe0tp58mCFuNoTXhuX
         rB4c0blp1UdP8oUfBN1bwIAcSwbUaHCr8kl8i+eMFyUF4gEL75zGUr9ZFh7L5n+4Uhri
         brHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sMzGUFn+89DU8TSVOYikAqMjSy5Bq7yc08PNdG34hV8=;
        b=kIkbszUXcuhjvVSnxYaD111wY384tnrCIbCbcAKQpdM9/MgHmPugkhkfPFJcOzlU2k
         nKg43CUit8mKUa8vSNP4YG11La/P+MzqG7RSHa0TJXtZDm86dWaxc5yJhqUYrtdMatk2
         AgDntWpqQbOKRILdQbZyHGi2bE18fCS95BJxY0/bt5x4tVaPTev7+gl/vaHCGZqEHZ0L
         O1mAMvr+NH114CVnqNkIMrU8Dcvqbyvl5eOyc5nEEorSLoDkzyZhnwN4zsFkVcqu1JJ0
         saMNusE+n20DYV7JqAoPYuR6p3vtsx7ei4kYorwTj4iRTdmFhbrN+x/R1/H9xMtXqoj2
         U8NA==
X-Gm-Message-State: AOAM532mda+z4bPsUKN24cDYyeUm8mQFj9/v3EEGUtsUyP/tOq6tlUaF
	VPBBydN1KYgrOTqf8qXntoeKBLaSpRjH2ivrvXNmEFLcJxQjGo7W
X-Google-Smtp-Source: ABdhPJxcwzQjDuVkzDa5h0BGeqa2yoKEwkP5EiOcO4jKVJVJerAcESEs/p9FUBHCnYIKLgwtj9fJut+oDxXA9vpslH8=
X-Received: by 2002:a67:fe8f:: with SMTP id b15mr7679434vsr.46.1600341942842;
 Thu, 17 Sep 2020 04:25:42 -0700 (PDT)
MIME-Version: 1.0
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Thu, 17 Sep 2020 13:25:06 +0200
Message-ID: <CAHwRhWYG+UoqcLdBWo5X2szpP53U5t0Uqiw92Jdkn5OFSS_urg@mail.gmail.com>
Subject: wvdial
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000005b95605af80a56a"

--00000000000005b95605af80a56a
Content-Type: text/plain; charset="UTF-8"

*now there is only one issue has left:*



*ERROR: ExpansionError during parsing
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/wvdial_1.61.bb
<http://wvdial_1.61.bb>
                                  | ETA:  0:00:00Traceback (most recent
call last):bb.data_smart.ExpansionError: Failure expanding variable
do_fetch[file-checksums], expression was
${@bb.fetch.get_checksum_file_list(d)}  ${@get_lic_checksum_file_list(d)}
which triggered exception NoMethodError: Could not find a fetcher which
supports the URL: 'files://typo_pon.wvdial.1.patch'*

This is the bb recipe:


































*HOMEPAGE = "http://www.alumnit.ca/wiki/?WvDial
<http://www.alumnit.ca/wiki/?WvDial>"DESCRIPTION = "WvDial is a program
that makes it easy to connect your Linux workstation to the
Internet."LICENSE = "LGPLv2"LIC_FILES_CHKSUM =
"file://COPYING.LIB;md5=55ca817ccb7d5b5b66355690e9abc605"inherit
pkgconfigDEPENDS = "wvstreams"RDEPENDS_${PN} = "ppp"SRC_URI =
"http://${BPN}.googlecode.com/files/${BP}.tar.bz2
<http://googlecode.com/files/${BP}.tar.bz2> \
 files://typo_pon.wvdial.1.patch \          "SRC_URI[md5sum] =
"d81642557d175d8e0818f4721c27dfcf"SRC_URI[sha256sum] =
"a2ce46c8c36870a0f2fa92ea64566df7251fb2d8d5aa2f6ef2b08d188287352e"EXTRA_OEMAKE
= ""export WVLINK="${LD}"PARALLEL_MAKE = ""BUILD_CPPFLAGS +=
"-I${STAGING_INCDIR}/wvstreams"do_configure() {    sed -i
's/LDFLAGS+=-luniconf/LIBS+=-luniconf/' ${S}/Makefile}do_install() {
oe_runmake prefix=${D}/usr PPPDIR=${D}/etc/ppp/peers install}#
http://errors.yoctoproject.org/Errors/Details/186959/
<http://errors.yoctoproject.org/Errors/Details/186959/>EXCLUDE_FROM_WORLD_libc-musl
= "1"*

Ive  re-generated the md5 and sha256 hashes, and all the warnings have
disapeared.


*Here is the patch: *

*if I modify teh 3rd line to "Index: wvdial-1.61/files/pon.wvdial.1" - the
error is the same*

*Remove warnings found by lintian
Last-Update: 2011-01-09
Index: wvdial-1.61/pon.wvdial.1
===================================================================
--- wvdial-1.61.orig/pon.wvdial.1	2011-01-09 21:33:03.000000000 +0300
+++ wvdial-1.61/pon.wvdial.1	2011-01-09 21:33:15.000000000 +0300
@@ -8,13 +8,11 @@
 .SH DESCRIPTION
 .B pon.wvdial
 .br
-.TR
 .B poff.wvdial
 .br
 .RS
 Replacement scripts for pon and poff.
 .RE
-\."
 .SH SEE ALSO
 .BR wvdial (1),
 .BR pon (1),*

--00000000000005b95605af80a56a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399"><b>no=
w there is only one issue has left:</b></div><div class=3D"gmail_default" s=
tyle=3D"color:#333399"><br></div><div class=3D"gmail_default" style=3D"colo=
r:#333399"><i>ERROR: ExpansionError during parsing /home/kerenyiz/oe-core/b=
uild/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/<a href=
=3D"http://wvdial_1.61.bb">wvdial_1.61.bb</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=A00:00:00<b=
r>Traceback (most recent call last):<br>bb.data_smart.ExpansionError: Failu=
re expanding variable do_fetch[file-checksums], expression was ${@bb.fetch.=
get_checksum_file_list(d)} =C2=A0${@get_lic_checksum_file_list(d)} which tr=
iggered exception NoMethodError: Could not find a fetcher which supports th=
e URL: &#39;files://typo_pon.wvdial.1.patch&#39;</i></div><div class=3D"gma=
il_default" style=3D"color:#333399"><br></div><div class=3D"gmail_default" =
style=3D"color:#333399">This is the bb recipe:</div><div class=3D"gmail_def=
ault" style=3D"color:#333399"><br></div><div class=3D"gmail_default" style=
=3D"color:#333399"><i>HOMEPAGE =3D &quot;<a href=3D"http://www.alumnit.ca/w=
iki/?WvDial">http://www.alumnit.ca/wiki/?WvDial</a>&quot;<br>DESCRIPTION =
=3D &quot;WvDial is a program that makes it easy to connect your Linux work=
station to the Internet.&quot;<br><br>LICENSE =3D &quot;LGPLv2&quot;<br>LIC=
_FILES_CHKSUM =3D &quot;file://COPYING.LIB;md5=3D55ca817ccb7d5b5b66355690e9=
abc605&quot;<br><br>inherit pkgconfig<br><br>DEPENDS =3D &quot;wvstreams&qu=
ot;<br>RDEPENDS_${PN} =3D &quot;ppp&quot;<br><br>SRC_URI =3D &quot;http://$=
{BPN}.<a href=3D"http://googlecode.com/files/${BP}.tar.bz2">googlecode.com/=
files/${BP}.tar.bz2</a> \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files=
://typo_pon.wvdial.1.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<b=
r><br>SRC_URI[md5sum] =3D &quot;d81642557d175d8e0818f4721c27dfcf&quot;<br>S=
RC_URI[sha256sum] =3D &quot;a2ce46c8c36870a0f2fa92ea64566df7251fb2d8d5aa2f6=
ef2b08d188287352e&quot;<br><br>EXTRA_OEMAKE =3D &quot;&quot;<br>export WVLI=
NK=3D&quot;${LD}&quot;<br><br>PARALLEL_MAKE =3D &quot;&quot;<br><br>BUILD_C=
PPFLAGS +=3D &quot;-I${STAGING_INCDIR}/wvstreams&quot;<br><br>do_configure(=
) {<br>=C2=A0 =C2=A0 sed -i &#39;s/LDFLAGS+=3D-luniconf/LIBS+=3D-luniconf/&=
#39; ${S}/Makefile<br>}<br><br>do_install() {<br>=C2=A0 =C2=A0 oe_runmake p=
refix=3D${D}/usr PPPDIR=3D${D}/etc/ppp/peers install<br>}<br># <a href=3D"h=
ttp://errors.yoctoproject.org/Errors/Details/186959/">http://errors.yoctopr=
oject.org/Errors/Details/186959/</a><br>EXCLUDE_FROM_WORLD_libc-musl =3D &q=
uot;1&quot;</i></div><div class=3D"gmail_default" style=3D"color:#333399"><=
i><br></i></div><div class=3D"gmail_default" style=3D"color:#333399">Ive=C2=
=A0 re-generated the md5 and sha256 hashes, and all the warnings have disap=
eared.</div><div class=3D"gmail_default" style=3D"color:#333399"><br></div>=
<div class=3D"gmail_default" style=3D"color:#333399"><b>Here is the patch: =
<br></b></div><div class=3D"gmail_default" style=3D"color:#333399"><b>if I =
modify teh 3rd line to &quot;Index: wvdial-1.61/<span style=3D"color:rgb(25=
5,0,0)">files</span>/pon.wvdial.1&quot; - the error is the same<br></b></di=
v><div class=3D"gmail_default" style=3D"color:#333399"><br></div><div class=
=3D"gmail_default" style=3D"color:#333399"><pre><i>Remove warnings found by=
 lintian
Last-Update: 2011-01-09
Index: wvdial-1.61/pon.wvdial.1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- wvdial-1.61.orig/pon.wvdial.1	2011-01-09 21:33:03.000000000 +0300
+++ wvdial-1.61/pon.wvdial.1	2011-01-09 21:33:15.000000000 +0300
@@ -8,13 +8,11 @@
 .SH DESCRIPTION
 .B pon.wvdial
 .br
-.TR
 .B poff.wvdial
 .br
 .RS
 Replacement scripts for pon and poff.
 .RE
-\.&quot;
 .SH SEE ALSO
 .BR wvdial (1),
 .BR pon (1),</i>
</pre></div><div class=3D"gmail_default" style=3D"color:#333399"><br></div>=
</div>

--00000000000005b95605af80a56a--
