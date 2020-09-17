Received: from 6.mo2.mail-out.ovh.net (6.mo2.mail-out.ovh.net [87.98.165.38])
 by mx.groups.io with SMTP id smtpd.web10.13356.1600342520487748315
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 04:35:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 87.98.165.38, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player760.ha.ovh.net (unknown [10.108.42.142])
	by mo2.mail-out.ovh.net (Postfix) with ESMTP id 233511E8582
	for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2020 13:35:17 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player760.ha.ovh.net (Postfix) with ESMTPSA id 464AC1641A3B6;
	Thu, 17 Sep 2020 11:35:15 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-98R002268079d0-976b-401a-b366-99ab87e4a437,
                    37FE2FF8CF9CCFB15D81780207FD35F3FBF88097) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] wvdial
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>,
 yocto@lists.yoctoproject.org
References: <CAHwRhWYG+UoqcLdBWo5X2szpP53U5t0Uqiw92Jdkn5OFSS_urg@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <3934ca99-0e4a-3653-7d1c-1b7d323374f0@3mdeb.com>
Date: Thu, 17 Sep 2020 13:35:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHwRhWYG+UoqcLdBWo5X2szpP53U5t0Uqiw92Jdkn5OFSS_urg@mail.gmail.com>
X-Ovh-Tracer-Id: 5329165738079563270
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrtdeggdegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeejffekheejteelieektdeuffefkeegveeuueejffejlefggffggfegieeghefgleenucffohhmrghinhepiedurdgssgdprghluhhmnhhithdrtggrpdhgohhoghhlvggtohguvgdrtghomhdphihotghtohhprhhojhgvtghtrdhorhhgpdgsrhdqrdhtrhdpsghrrdhrshdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeeitddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------D5822EA43ACE3DF52509630A"
Content-Language: en-US

--------------D5822EA43ACE3DF52509630A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 17.09.2020 13:25, Zoltan Kerenyi Nagy wrote:
> *now there is only one issue has left:*
>
> /ERROR: ExpansionError during parsing=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvdial/wvdial_1.61.bb=20
> <http://wvdial_1.61.bb> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=A00:00:00
> Traceback (most recent call last):
> bb.data_smart.ExpansionError: Failure expanding variable=20
> do_fetch[file-checksums], expression was=20
> ${@bb.fetch.get_checksum_file_list(d)}=20
> =C2=A0${@get_lic_checksum_file_list(d)} which triggered exception=20
> NoMethodError: Could not find a fetcher which supports the URL:=20
> 'files://typo_pon.wvdial.1.patch'/


I'm sorry, but you I think you really do need a pair of glasses ;)
It's supposed to be file:// not file:// in the URL.

>
> This is the bb recipe:
>
> /HOMEPAGE =3D "http://www.alumnit.ca/wiki/?WvDial"
> DESCRIPTION =3D "WvDial is a program that makes it easy to connect your=
=20
> Linux workstation to the Internet."
>
> LICENSE =3D "LGPLv2"
> LIC_FILES_CHKSUM =3D=20
> "file://COPYING.LIB;md5=3D55ca817ccb7d5b5b66355690e9abc605"
>
> inherit pkgconfig
>
> DEPENDS =3D "wvstreams"
> RDEPENDS_${PN} =3D "ppp"
>
> SRC_URI =3D "http://${BPN}.googlecode.com/files/${BP}.tar.bz2=20
> <http://googlecode.com/files/${BP}.tar.bz2> \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files://typo_pon.wvdial.1.patch=
 \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "
>
> SRC_URI[md5sum] =3D "d81642557d175d8e0818f4721c27dfcf"
> SRC_URI[sha256sum] =3D=20
> "a2ce46c8c36870a0f2fa92ea64566df7251fb2d8d5aa2f6ef2b08d188287352e"
>
> EXTRA_OEMAKE =3D ""
> export WVLINK=3D"${LD}"
>
> PARALLEL_MAKE =3D ""
>
> BUILD_CPPFLAGS +=3D "-I${STAGING_INCDIR}/wvstreams"
>
> do_configure() {
> =C2=A0 =C2=A0 sed -i 's/LDFLAGS+=3D-luniconf/LIBS+=3D-luniconf/' ${S}/Ma=
kefile
> }
>
> do_install() {
> =C2=A0 =C2=A0 oe_runmake prefix=3D${D}/usr PPPDIR=3D${D}/etc/ppp/peers i=
nstall
> }
> # http://errors.yoctoproject.org/Errors/Details/186959/
> EXCLUDE_FROM_WORLD_libc-musl =3D "1"/
> /
> /
> Ive re-generated the md5 and sha256 hashes, and all the warnings have=20
> disapeared.
>
> *Here is the patch:
> *
> *if I modify teh 3rd line to "Index: wvdial-1.61/files/pon.wvdial.1" -=
=20
> the error is the same
> *
>
> /Remove warnings found by lintian Last-Update: 2011-01-09 Index:=20
> wvdial-1.61/pon.wvdial.1=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
> --- wvdial-1.61.orig/pon.wvdial.1 2011-01-09 21:33:03.000000000 +0300=20
> +++ wvdial-1.61/pon.wvdial.1 2011-01-09 21:33:15.000000000 +0300 @@=20
> -8,13 +8,11 @@ .SH DESCRIPTION .B pon.wvdial .br -.TR .B poff.wvdial=20
> .br .RS Replacement scripts for pon and poff. .RE -\." .SH SEE ALSO=20
> .BR wvdial (1), .BR pon (1),/
>
>
>=20
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------D5822EA43ACE3DF52509630A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 17.09.2020 13:25, Zoltan Kerenyi
      Nagy wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHwRhWYG+UoqcLdBWo5X2szpP53U5t0Uqiw92Jdkn5OFSS_urg@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"color:#333399"><b>now there =
is
            only one issue has left:</b></div>
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399"><i>ERROR:
            ExpansionError during parsing
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvdial/<a
              href=3D"http://wvdial_1.61.bb" moz-do-not-send=3D"true">wvdi=
al_1.61.bb</a>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=A00:00:00<br>
            Traceback (most recent call last):<br>
            bb.data_smart.ExpansionError: Failure expanding variable
            do_fetch[file-checksums], expression was
            ${@bb.fetch.get_checksum_file_list(d)}
            =C2=A0${@get_lic_checksum_file_list(d)} which triggered except=
ion
            NoMethodError: Could not find a fetcher which supports the
            URL: 'files://typo_pon.wvdial.1.patch'</i></div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>I'm sorry, but you I think you really do need a pair of glasses
      ;)<br>
      It's supposed to be <a class=3D"moz-txt-link-freetext" href=3D"file:=
//">file://</a> not <a class=3D"moz-txt-link-freetext" href=3D"file://">fil=
e://</a> in the URL.<br>
      <br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CAHwRhWYG+UoqcLdBWo5X2szpP53U5t0Uqiw92Jdkn5OFSS_urg@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399">This is the b=
b
          recipe:</div>
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399"><i>HOMEPAGE =
=3D "<a
              href=3D"http://www.alumnit.ca/wiki/?WvDial"
              moz-do-not-send=3D"true">http://www.alumnit.ca/wiki/?WvDial<=
/a>"<br>
            DESCRIPTION =3D "WvDial is a program that makes it easy to
            connect your Linux workstation to the Internet."<br>
            <br>
            LICENSE =3D "LGPLv2"<br>
            LIC_FILES_CHKSUM =3D
            <a class=3D"moz-txt-link-rfc2396E" href=3D"file://COPYING.LIB;=
md5=3D55ca817ccb7d5b5b66355690e9abc605">"file://COPYING.LIB;md5=3D55ca817cc=
b7d5b5b66355690e9abc605"</a><br>
            <br>
            inherit pkgconfig<br>
            <br>
            DEPENDS =3D "wvstreams"<br>
            RDEPENDS_${PN} =3D "ppp"<br>
            <br>
            SRC_URI =3D "<a class=3D"moz-txt-link-freetext" href=3D"http:/=
/$">http://$</a>{BPN}.<a
              href=3D"http://googlecode.com/files/${BP}.tar.bz2"
              moz-do-not-send=3D"true">googlecode.com/files/${BP}.tar.bz2<=
/a>
            \<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files://typo_pon.wvdi=
al.1.patch \<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "<br>
            <br>
            SRC_URI[md5sum] =3D "d81642557d175d8e0818f4721c27dfcf"<br>
            SRC_URI[sha256sum] =3D
            "a2ce46c8c36870a0f2fa92ea64566df7251fb2d8d5aa2f6ef2b08d1882873=
52e"<br>
            <br>
            EXTRA_OEMAKE =3D ""<br>
            export WVLINK=3D"${LD}"<br>
            <br>
            PARALLEL_MAKE =3D ""<br>
            <br>
            BUILD_CPPFLAGS +=3D "-I${STAGING_INCDIR}/wvstreams"<br>
            <br>
            do_configure() {<br>
            =C2=A0 =C2=A0 sed -i 's/LDFLAGS+=3D-luniconf/LIBS+=3D-luniconf=
/'
            ${S}/Makefile<br>
            }<br>
            <br>
            do_install() {<br>
            =C2=A0 =C2=A0 oe_runmake prefix=3D${D}/usr PPPDIR=3D${D}/etc/p=
pp/peers
            install<br>
            }<br>
            # <a
              href=3D"http://errors.yoctoproject.org/Errors/Details/186959=
/"
              moz-do-not-send=3D"true">http://errors.yoctoproject.org/Erro=
rs/Details/186959/</a><br>
            EXCLUDE_FROM_WORLD_libc-musl =3D "1"</i></div>
        <div class=3D"gmail_default" style=3D"color:#333399"><i><br>
          </i></div>
        <div class=3D"gmail_default" style=3D"color:#333399">Ive=C2=A0
          re-generated the md5 and sha256 hashes, and all the warnings
          have disapeared.</div>
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399"><b>Here is th=
e
            patch: <br>
          </b></div>
        <div class=3D"gmail_default" style=3D"color:#333399"><b>if I modif=
y
            teh 3rd line to "Index: wvdial-1.61/<span
              style=3D"color:rgb(255,0,0)">files</span>/pon.wvdial.1" -
            the error is the same<br>
          </b></div>
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399">
          <pre><i>Remove warnings found by lintian
Last-Update: 2011-01-09
Index: wvdial-1.61/pon.wvdial.1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
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
 .BR pon (1),</i>
</pre>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------D5822EA43ACE3DF52509630A--
