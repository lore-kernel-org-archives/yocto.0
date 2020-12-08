Subject: Re: perl5 do_install() fails (libperl.so: No such file or directory) #dunfell
To: yocto@lists.yoctoproject.org
From: lobl.pavel@gmail.com
X-Originating-Location: GB (165.225.80.252)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Dec 2020 03:56:11 -0800
References: <CA+aJhH1tZ_RFf71XXg0Ht27NHLAQOksFkU3MweZxbLw5qNX1iQ@mail.gmail.com>
In-Reply-To: <CA+aJhH1tZ_RFf71XXg0Ht27NHLAQOksFkU3MweZxbLw5qNX1iQ@mail.gmail.com>
Message-ID: <17296.1607428571320318437@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fJK7chrmz2zEYCScbvRE"

--fJK7chrmz2zEYCScbvRE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

debian testing here, dunfell branch. I was able to get rid of the error wi=
th following patch. Not sure what's the reason though.

--- a/meta/recipes-devtools/perl/perl_5.30.1.bb
+++ b/meta/recipes-devtools/perl/perl_5.30.1.bb
@@ -146,7 +146,7 @@ do_install() {
install lib/ExtUtils/typemap ${D}${libdir}/perl5/${PV}/ExtUtils/

# Fix up shared library
-=C2=A0=C2=A0=C2=A0 rm ${D}/${libdir}/perl5/${PV}/*/CORE/libperl.so
+=C2=A0=C2=A0=C2=A0 rm ${D}/${libdir}/perl5/${PV}/${TARGET_ARCH}-linux/COR=
E/libperl.so
ln -sf ../../../../libperl.so.${PERL_LIB_VER} $(echo ${D}/${libdir}/perl5/=
${PV}/*/CORE)/libperl.so
}

BR,
Pavel

--fJK7chrmz2zEYCScbvRE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />debian testing here, dunfell branch. I was able to get rid o=
f the error with following patch. Not sure what's the reason though.<br /><=
br />--- a/meta/recipes-devtools/perl/perl_5.30.1.bb<br />+++ b/meta/recipe=
s-devtools/perl/perl_5.30.1.bb<br />@@ -146,7 +146,7 @@ do_install() {<br /=
>&nbsp;&nbsp;&nbsp;&nbsp; install lib/ExtUtils/typemap ${D}${libdir}/perl5/=
${PV}/ExtUtils/<br />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp; # Fix up shared l=
ibrary<br />-&nbsp;&nbsp;&nbsp; rm ${D}/${libdir}/perl5/${PV}/*/CORE/libper=
l.so<br />+&nbsp;&nbsp;&nbsp; rm ${D}/${libdir}/perl5/${PV}/${TARGET_ARCH}-=
linux/CORE/libperl.so<br />&nbsp;&nbsp;&nbsp;&nbsp; ln -sf ../../../../libp=
erl.so.${PERL_LIB_VER} $(echo ${D}/${libdir}/perl5/${PV}/*/CORE)/libperl.so=
<br />&nbsp;}<br /><br />BR,<br />Pavel

--fJK7chrmz2zEYCScbvRE--
