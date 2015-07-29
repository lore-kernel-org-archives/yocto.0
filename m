Return-Path: <l.joli@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664ABE00A90; Wed, 29 Jul 2015 06:25:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f197.google.com (mail-yk0-f197.google.com
	[209.85.160.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EFBCE00A80
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:25:26 -0700 (PDT)
Received: by ykay190 with SMTP id y190so9825421yka.1
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Dpi7SRuyJY2/J4uKs4kyz3YUQ9c6Hb4u+D8pC3Q2Ue4=;
	b=X+lxOusYjjL7JnUqeNK5IFVtOZ6Ea6oXj6S0OtLtjiMESKhphXkQl0ZK8UjX9VN64C
	nlIX4raCuGKuOsBG6gqCV3NFKfjvVtiX5k8Sl9PpfGsrRpJYF7I4xkNR+Bjw2FN2SZ64
	oNCTHW1kCLFvx5/L/TR1bGqzIFN6aLylwWQAHiFTuQMREREWn86cUC28X8MFwd9lRWgG
	8ZKZZQ19NFWqPTjgWISJvv17V1l2nTe7rfTNsxzfnBoYug1tcZthMWrOjk7aRBNSQCD0
	cgujb7DuWQtTy9WPWFHBHc3FYmbDgDlvVGd19u8yNyxJlnEyLSN7tAsdjRR8ASa0+I+f
	om9w==
X-Gm-Message-State: ALoCoQko5i+IB9ofE4y4rmEy1DWMdWqndJkDRGGgIOue6zZD+YV8jMWkUqKD1Jozio6IcMG2y9qw
X-Received: by 10.52.137.236 with SMTP id ql12mr47966783vdb.48.1438176326089; 
	Wed, 29 Jul 2015 06:25:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.79.6 with HTTP; Wed, 29 Jul 2015 06:25:06 -0700 (PDT)
In-Reply-To: <55B8D37A.6020308@mlbassoc.com>
References: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
	<55B8D37A.6020308@mlbassoc.com>
From: Laurent Joli <l.joli@expemb.com>
Date: Wed, 29 Jul 2015 15:25:06 +0200
Message-ID: <CAJtzDg_BE_+hxYu9jNHUQW3gxme6Ay95NENjA=R6ufj+w9LfCw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [Asterisk] recipe 13.1.1
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
X-List-Received-Date: Wed, 29 Jul 2015 13:25:30 -0000
Content-Type: multipart/alternative; boundary=bcaec51b9c0d0a9203051c038552

--bcaec51b9c0d0a9203051c038552
Content-Type: text/plain; charset=UTF-8

Hi Gary,

2015-07-29 15:22 GMT+02:00 Gary Thomas <gary@mlbassoc.com>:

> On 2015-07-29 07:14, Laurent Joli wrote:
>
>>
>> Hi everybody,
>>
>> I am try to build an recipe for asterisk 13.1.1 but I have some errors.
>>
>> I will show you my recipe :
>>
>> /**********************/
>> DESCRIPTION = "asterisk PBX"
>> DEPENDS = "openssl ncurses sqlite3 libxml2 jansson curl libxslt "
>> HOMEPAGE = "http://www.asterisk.org"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=3c6764ffcbe996d1d8f919b393ccdd67"
>>
>> PR = "0"
>>
>> SRC_URI = "
>> http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-${PV}.tar.gz
>> <
>> http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz>
>> \
>>
>>             file://asterisk.init"
>>
>> SRC_URI[md5sum] = "a2781693a67e008d2a3c60b756d4d4ab"
>> SRC_URI[sha256sum] =
>> "070b68238734117c0b9c1018ba192ff29964a115a71620e648d4286c92f2f02b"
>>
>> EXTRA_OECONF = " \
>>          --without-curses \
>>          --without-gtk2 \
>>          --without-isdnnet \
>>          --without-misdn \
>>          --without-nbs \
>>          --with-ncurses \
>>          --without-netsnmp \
>>          --without-newt \
>>          --without-ogg \
>>          --without-osptk \
>>          --without-popt \
>>          --without-pri \
>>          --without-radius \
>>          --without-sdl \
>>          --without-spandsp \
>>          --without-suppserv \
>>          --without-tds \
>>          --without-termcap \
>>          --without-tinfo \
>>          --without-vorbis \
>>          --without-vpb \
>>          --without-postgres \
>>          --without-lua \
>>          --disable-xmldoc \
>> "
>>
>> inherit update-rc.d
>>
>> FILES_${PN}-dbg += "${libdir}/asterisk/modules/.debug"
>>
>>
>> INITSCRIPT_PACKAGES = "${PN}"
>> INITSCRIPT_NAME_${PN} = "asterisk"
>> INITSCRIPT_PARAMS_${PN} = "defaults 29 29"
>>
>> PACKAGES =+ "${PN}-moh"
>>
>> DESCRIPTION_${PN}-moh = "Asterisk MusicOnHold sound"
>> FILES_${PN}-moh = "${localstatedir}/lib/${PN}/moh"
>>
>>
>> do_configure() {
>>      echo "begin configure asterisk"
>>      ./configure --host=${TARGET_SYS} --build=${BUILD_SYS}
>> ${EXTRA_OECONF}
>> }
>>
>> # Install init script
>> do_install_append() {
>>      install -d ${D}${sysconfdir}/init.d
>>      install -m 0775 ${WORKDIR}/asterisk.init
>>  ${D}${sysconfdir}/init.d/asterisk
>>
>>      # Remove EN sound files from this package as they are installed by
>> "asterisk-sounds-en"
>>      rm -rf ${D}/var/lib/asterisk/sounds/en
>> }
>>
>> FILES_${PN} += "${sysconfdir}/init.d/asterisk \
>>                  /run/asterisk "
>> /************************************/
>>
>> When I build my recipe , I have  this log :
>>
>> //....//
>> checking for utime.h... yes
>> | checking arpa/nameser.h usability... yes
>> | checking arpa/nameser.h presence... yes
>> | checking for arpa/nameser.h... yes
>> | checking sys/io.h usability... yes
>> | checking sys/io.h presence... yes
>> | checking for sys/io.h... yes
>> | checking for initscr in -lncurses... yes
>> | checking curses.h usability... yes
>> | checking curses.h presence... yes
>> | checking for curses.h... yes
>> | checking for uuid_generate_random in -luuid... yes
>> | checking uuid/uuid.h usability... yes
>> | checking uuid/uuid.h presence... yes
>> | checking for uuid/uuid.h... yes
>> | checking for uuid_generate_random in -le2fs-uuid... no
>> | checking for uuid_generate_random... no
>> | checking for json_dumps in -ljansson... yes
>> | checking jansson.h usability... yes
>> | checking jansson.h presence... yes
>> | checking for jansson.h... yes
>> | checking for arm-poky-linux-gnueabi-xml2-config... no
>> | checking for xml2-config...
>> /media/ljoli/disk_one/compile_fido/build/tmp/sysroots/cgtqmx6/usr/bin/crossscripts/xml2-config
>> | configure: *** The Asterisk menuselect tool requires the 'libxml2'
>> development package.
>> | configure: *** Please install the 'libxml2' development package.
>> | + bb_exit_handler
>> | + ret=1
>> | + echo WARNING: exit code 1 from a shell command.
>> | WARNING: exit code 1 from a shell command.
>> | + exit 1
>>
>> How to add "libxml2-dev" in my recipe ?
>>
>
> Adding this line should do:
>   DEPENDS = "libxml2"
>

As you can see in my second line of recipe I have already add libxml2.
But that is strange it said me : configure: *** Please install the
'libxml2' development package.


>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec51b9c0d0a9203051c038552
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div>Hi Gary,<br></div></div></div>
<br><div class=3D"gmail_quote">2015-07-29 15:22 GMT+02:00 Gary Thomas <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gar=
y@mlbassoc.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On 2015-07-29 07:14, Laurent Joli wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
<br>
Hi everybody,<br>
<br>
I am try to build an recipe for asterisk 13.1.1 but I have some errors.<br>
<br>
I will show you my recipe :<br>
<br>
/**********************/<br>
DESCRIPTION =3D &quot;asterisk PBX&quot;<br>
DEPENDS =3D &quot;openssl ncurses sqlite3 libxml2 jansson curl libxslt &quo=
t;<br>
HOMEPAGE =3D &quot;<a href=3D"http://www.asterisk.org" rel=3D"noreferrer" t=
arget=3D"_blank">http://www.asterisk.org</a>&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D3c6764ffcbe996d1d8f919b393c=
cdd67&quot;<br>
<br>
PR =3D &quot;0&quot;<br>
<br>
SRC_URI =3D &quot;<a href=3D"http://downloads.asterisk.org/pub/telephony/as=
terisk/releases/asterisk-$%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_bl=
ank">http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk=
-${PV}.tar.gz</a><br></span>
&lt;<a href=3D"http://downloads.asterisk.org/pub/telephony/asterisk/release=
s/asterisk-$%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank">http://do=
wnloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar=
.gz</a>&gt; \<div><div class=3D"h5"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://asterisk.init&quot;<br>
<br>
SRC_URI[md5sum] =3D &quot;a2781693a67e008d2a3c60b756d4d4ab&quot;<br>
SRC_URI[sha256sum] =3D &quot;070b68238734117c0b9c1018ba192ff29964a115a71620=
e648d4286c92f2f02b&quot;<br>
<br>
EXTRA_OECONF =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-curses \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-gtk2 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-isdnnet \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-misdn \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-nbs \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--with-ncurses \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-netsnmp \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-newt \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-ogg \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-osptk \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-popt \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-pri \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-radius \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-sdl \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-spandsp \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-suppserv \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-tds \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-termcap \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-tinfo \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-vorbis \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-vpb \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-postgres \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-lua \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-xmldoc \<br>
&quot;<br>
<br>
inherit update-rc.d<br>
<br>
FILES_${PN}-dbg +=3D &quot;${libdir}/asterisk/modules/.debug&quot;<br>
<br>
<br>
INITSCRIPT_PACKAGES =3D &quot;${PN}&quot;<br>
INITSCRIPT_NAME_${PN} =3D &quot;asterisk&quot;<br>
INITSCRIPT_PARAMS_${PN} =3D &quot;defaults 29 29&quot;<br>
<br>
PACKAGES =3D+ &quot;${PN}-moh&quot;<br>
<br>
DESCRIPTION_${PN}-moh =3D &quot;Asterisk MusicOnHold sound&quot;<br>
FILES_${PN}-moh =3D &quot;${localstatedir}/lib/${PN}/moh&quot;<br>
<br>
<br>
do_configure() {<br>
=C2=A0 =C2=A0 =C2=A0echo &quot;begin configure asterisk&quot;<br>
=C2=A0 =C2=A0 =C2=A0./configure --host=3D${TARGET_SYS} --build=3D${BUILD_SY=
S}=C2=A0 ${EXTRA_OECONF}<br>
}<br>
<br>
# Install init script<br>
do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}/init.d<br>
=C2=A0 =C2=A0 =C2=A0install -m 0775 ${WORKDIR}/asterisk.init=C2=A0 =C2=A0${=
D}${sysconfdir}/init.d/asterisk<br>
<br>
=C2=A0 =C2=A0 =C2=A0# Remove EN sound files from this package as they are i=
nstalled by &quot;asterisk-sounds-en&quot;<br>
=C2=A0 =C2=A0 =C2=A0rm -rf ${D}/var/lib/asterisk/sounds/en<br>
}<br>
<br>
FILES_${PN} +=3D &quot;${sysconfdir}/init.d/asterisk \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/run/asterisk=
 &quot;<br>
/************************************/<br>
<br>
When I build my recipe , I have=C2=A0 this log :<br>
<br>
//....//<br>
checking for utime.h... yes<br>
| checking arpa/nameser.h usability... yes<br>
| checking arpa/nameser.h presence... yes<br>
| checking for arpa/nameser.h... yes<br>
| checking sys/io.h usability... yes<br>
| checking sys/io.h presence... yes<br>
| checking for sys/io.h... yes<br>
| checking for initscr in -lncurses... yes<br>
| checking curses.h usability... yes<br>
| checking curses.h presence... yes<br>
| checking for curses.h... yes<br>
| checking for uuid_generate_random in -luuid... yes<br>
| checking uuid/uuid.h usability... yes<br>
| checking uuid/uuid.h presence... yes<br>
| checking for uuid/uuid.h... yes<br>
| checking for uuid_generate_random in -le2fs-uuid... no<br>
| checking for uuid_generate_random... no<br>
| checking for json_dumps in -ljansson... yes<br>
| checking jansson.h usability... yes<br>
| checking jansson.h presence... yes<br>
| checking for jansson.h... yes<br>
| checking for arm-poky-linux-gnueabi-xml2-config... no<br>
| checking for xml2-config... /media/ljoli/disk_one/compile_fido/build/tmp/=
sysroots/cgtqmx6/usr/bin/crossscripts/xml2-config<br>
| configure: *** The Asterisk menuselect tool requires the &#39;libxml2&#39=
; development package.<br>
| configure: *** Please install the &#39;libxml2&#39; development package.<=
br>
| + bb_exit_handler<br>
| + ret=3D1<br>
| + echo WARNING: exit code 1 from a shell command.<br>
| WARNING: exit code 1 from a shell command.<br>
| + exit 1<br>
<br>
How to add &quot;libxml2-dev&quot; in my recipe ?<br>
</div></div></blockquote>
<br>
Adding this line should do:<br>
=C2=A0 DEPENDS =3D &quot;libxml2&quot;<span class=3D"HOEnZb"><font color=3D=
"#888888"><br></font></span></blockquote><div><br></div><div>As you can see=
 in my second line of recipe I have already add libxml2.<br></div><div>But =
that is strange it said me : configure: *** Please install the &#39;libxml2=
&#39; development package.</div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--bcaec51b9c0d0a9203051c038552--
