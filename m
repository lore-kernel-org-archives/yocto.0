Return-Path: <l.joli@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B4AEE009E4; Wed, 29 Jul 2015 06:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f198.google.com (mail-qk0-f198.google.com
	[209.85.220.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 581E4E0097F
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:42:46 -0700 (PDT)
Received: by qkbs7 with SMTP id s7so10969964qkb.0
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=t7sb5cIwkbw7/eO0IXZ0gR5z2meaSaoVB6FSIJr5tRQ=;
	b=hXu+imOnu30IWrod2ojCpH2DM/S7a/huJHGsCwZ3mv45o7CRykswPPB9iPsNp5cr1y
	dsSYm1CIsRv0G7Fr02tEhwtDMh0wiHtPkch5QCStOCyssv7/RJQqRO2DSt62BotJWRgx
	F9u5Sa710LBFjVNdi9lHMKW8PmkjiNqM9uxMF1lz79ZJqP9TwwdxSCu1jkBx6u5YwHLU
	QRLYj3XBYwMMdiChhwmElQisCqb8ADOAqUa3YVC3WpGnUbQn3iJ+J0w0nigp9ChoOhQ8
	pzvoEokXuLJtPBhDkAGBodiAdaLi6UShCHJGy1VAXefE4lWs2TVNIdsvx+fqFItysOxs
	HLIQ==
X-Gm-Message-State: ALoCoQmXFwYRVBWxPk0y3qqvKZ27AMBnOkmQaJaJWjkqdEhWE1aEyevANDpYQh1Z6yYDNALbl5bS
X-Received: by 10.52.100.167 with SMTP id ez7mr51998027vdb.80.1438177365613;
	Wed, 29 Jul 2015 06:42:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.79.6 with HTTP; Wed, 29 Jul 2015 06:42:26 -0700 (PDT)
In-Reply-To: <55B8D76A.1090507@mlbassoc.com>
References: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
	<55B8D37A.6020308@mlbassoc.com>
	<CAJtzDg_BE_+hxYu9jNHUQW3gxme6Ay95NENjA=R6ufj+w9LfCw@mail.gmail.com>
	<55B8D76A.1090507@mlbassoc.com>
From: Laurent Joli <l.joli@expemb.com>
Date: Wed, 29 Jul 2015 15:42:26 +0200
Message-ID: <CAJtzDg864mgz4668FceX4ov5Uu8VxeGKh4tc1ERXq7wXQz06bQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 Jul 2015 13:42:50 -0000
Content-Type: multipart/alternative; boundary=20cf307c9f5600769e051c03c302

--20cf307c9f5600769e051c03c302
Content-Type: text/plain; charset=UTF-8

Hello Gary,

2015-07-29 15:38 GMT+02:00 Gary Thomas <gary@mlbassoc.com>:

> On 2015-07-29 07:25, Laurent Joli wrote:
>
>>
>> Hi Gary,
>>
>> 2015-07-29 15:22 GMT+02:00 Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>>:
>>
>>
>>     On 2015-07-29 07:14, Laurent Joli wrote:
>>
>>
>>         Hi everybody,
>>
>>         I am try to build an recipe for asterisk 13.1.1 but I have some
>> errors.
>>
>>         I will show you my recipe :
>>
>>         /**********************/
>>         DESCRIPTION = "asterisk PBX"
>>         DEPENDS = "openssl ncurses sqlite3 libxml2 jansson curl libxslt "
>>         HOMEPAGE = "http://www.asterisk.org"
>>         LICENSE = "GPLv2"
>>         LIC_FILES_CHKSUM =
>> "file://COPYING;md5=3c6764ffcbe996d1d8f919b393ccdd67"
>>
>>         PR = "0"
>>
>>         SRC_URI = "
>> http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-${PV}.tar.gz
>>         <
>> http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz
>> >
>>         <
>> http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz>
>> \
>>
>>                      file://asterisk.init"
>>
>>         SRC_URI[md5sum] = "a2781693a67e008d2a3c60b756d4d4ab"
>>         SRC_URI[sha256sum] =
>> "070b68238734117c0b9c1018ba192ff29964a115a71620e648d4286c92f2f02b"
>>
>>         EXTRA_OECONF = " \
>>                   --without-curses \
>>                   --without-gtk2 \
>>                   --without-isdnnet \
>>                   --without-misdn \
>>                   --without-nbs \
>>                   --with-ncurses \
>>                   --without-netsnmp \
>>                   --without-newt \
>>                   --without-ogg \
>>                   --without-osptk \
>>                   --without-popt \
>>                   --without-pri \
>>                   --without-radius \
>>                   --without-sdl \
>>                   --without-spandsp \
>>                   --without-suppserv \
>>                   --without-tds \
>>                   --without-termcap \
>>                   --without-tinfo \
>>                   --without-vorbis \
>>                   --without-vpb \
>>                   --without-postgres \
>>                   --without-lua \
>>                   --disable-xmldoc \
>>         "
>>
>>         inherit update-rc.d
>>
>>         FILES_${PN}-dbg += "${libdir}/asterisk/modules/.debug"
>>
>>
>>         INITSCRIPT_PACKAGES = "${PN}"
>>         INITSCRIPT_NAME_${PN} = "asterisk"
>>         INITSCRIPT_PARAMS_${PN} = "defaults 29 29"
>>
>>         PACKAGES =+ "${PN}-moh"
>>
>>         DESCRIPTION_${PN}-moh = "Asterisk MusicOnHold sound"
>>         FILES_${PN}-moh = "${localstatedir}/lib/${PN}/moh"
>>
>>
>>         do_configure() {
>>               echo "begin configure asterisk"
>>               ./configure --host=${TARGET_SYS} --build=${BUILD_SYS}
>> ${EXTRA_OECONF}
>>         }
>>
>>         # Install init script
>>         do_install_append() {
>>               install -d ${D}${sysconfdir}/init.d
>>               install -m 0775 ${WORKDIR}/asterisk.init
>>  ${D}${sysconfdir}/init.d/asterisk
>>
>>               # Remove EN sound files from this package as they are
>> installed by "asterisk-sounds-en"
>>               rm -rf ${D}/var/lib/asterisk/sounds/en
>>         }
>>
>>         FILES_${PN} += "${sysconfdir}/init.d/asterisk \
>>                           /run/asterisk "
>>         /************************************/
>>
>>         When I build my recipe , I have  this log :
>>
>>         //....//
>>         checking for utime.h... yes
>>         | checking arpa/nameser.h usability... yes
>>         | checking arpa/nameser.h presence... yes
>>         | checking for arpa/nameser.h... yes
>>         | checking sys/io.h usability... yes
>>         | checking sys/io.h presence... yes
>>         | checking for sys/io.h... yes
>>         | checking for initscr in -lncurses... yes
>>         | checking curses.h usability... yes
>>         | checking curses.h presence... yes
>>         | checking for curses.h... yes
>>         | checking for uuid_generate_random in -luuid... yes
>>         | checking uuid/uuid.h usability... yes
>>         | checking uuid/uuid.h presence... yes
>>         | checking for uuid/uuid.h... yes
>>         | checking for uuid_generate_random in -le2fs-uuid... no
>>         | checking for uuid_generate_random... no
>>         | checking for json_dumps in -ljansson... yes
>>         | checking jansson.h usability... yes
>>         | checking jansson.h presence... yes
>>         | checking for jansson.h... yes
>>         | checking for arm-poky-linux-gnueabi-xml2-config... no
>>         | checking for xml2-config...
>> /media/ljoli/disk_one/compile_fido/build/tmp/sysroots/cgtqmx6/usr/bin/crossscripts/xml2-config
>>         | configure: *** The Asterisk menuselect tool requires the
>> 'libxml2' development package.
>>         | configure: *** Please install the 'libxml2' development package.
>>         | + bb_exit_handler
>>         | + ret=1
>>         | + echo WARNING: exit code 1 from a shell command.
>>         | WARNING: exit code 1 from a shell command.
>>         | + exit 1
>>
>>         How to add "libxml2-dev" in my recipe ?
>>
>>
>>     Adding this line should do:
>>        DEPENDS = "libxml2"
>>
>>
>> As you can see in my second line of recipe I have already add libxml2.
>>
>
> Sorry, I missed that.
>
>  But that is strange it said me : configure: *** Please install the
>> 'libxml2' development package.
>>
>
> That's because the 'xml2-config' script seems to be disabled.  It contains:
>   #!/bin/sh
>   echo '--should-not-have-used-/usr/bin/xml2-config'
>   exit 1
>
> Yes, you are allright


> You'll have to figure out how to make the configure script use
> pkg-config instead.
>
> When I use pkg-config instead of xml2-config , I have this log :

| checking for uuid_generate_random in -le2fs-uuid... no
| checking for uuid_generate_random... no
| checking for json_dumps in -ljansson... yes
| checking jansson.h usability... yes
| checking jansson.h presence... yes
| checking for jansson.h... yes
| checking for arm-poky-linux-gnueabi-pkg-config... no
| checking for pkg-config...
/media/ljoli/disk_one/compile_fido/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
| Must specify package names on the command line
| Must specify package names on the command line
| configure: *** The Asterisk menuselect tool requires the 'libxml2'
development package.
| configure: *** Please install the 'libxml2' development package.
| + bb_exit_handler
| + ret=1
| + echo WARNING: exit code 1 from a shell command.
| WARNING: exit code 1 from a shell command.
| + exit 1



>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--20cf307c9f5600769e051c03c302
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br clear=3D"all"><div><div=
 class=3D"gmail_signature"><div dir=3D"ltr"><br><div>Hello Gary,<br></div><=
/div></div></div>
<br><div class=3D"gmail_quote">2015-07-29 15:38 GMT+02:00 Gary Thomas <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gar=
y@mlbassoc.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On 2015-07-29 07:25, Laurent Joli wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
<br>
Hi Gary,<br>
<br>
2015-07-29 15:22 GMT+02:00 Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.=
com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:g=
ary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;:<div><div=
 class=3D"h5"><br>
<br>
=C2=A0 =C2=A0 On 2015-07-29 07:14, Laurent Joli wrote:<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi everybody,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am try to build an recipe for asterisk 13.1.1=
 but I have some errors.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I will show you my recipe :<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /**********************/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DESCRIPTION =3D &quot;asterisk PBX&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DEPENDS =3D &quot;openssl ncurses sqlite3 libxm=
l2 jansson curl libxslt &quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 HOMEPAGE =3D &quot;<a href=3D"http://www.asteri=
sk.org" rel=3D"noreferrer" target=3D"_blank">http://www.asterisk.org</a>&qu=
ot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 LICENSE =3D &quot;GPLv2&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=
=3D3c6764ffcbe996d1d8f919b393ccdd67&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PR =3D &quot;0&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SRC_URI =3D &quot;<a href=3D"http://downloads.a=
sterisk.org/pub/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz" rel=
=3D"noreferrer" target=3D"_blank">http://downloads.asterisk.org/pub/telepho=
ny/asterisk/releases/asterisk-${PV}.tar.gz</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://downloads.asterisk.org/pu=
b/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz" rel=3D"noreferrer"=
 target=3D"_blank">http://downloads.asterisk.org/pub/telephony/asterisk/rel=
eases/asterisk-$%7BPV%7D.tar.gz</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://downloads.asterisk.org/pu=
b/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz" rel=3D"noreferrer"=
 target=3D"_blank">http://downloads.asterisk.org/pub/telephony/asterisk/rel=
eases/asterisk-$%7BPV%7D.tar.gz</a>&gt; \<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://asterisk.init&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SRC_URI[md5sum] =3D &quot;a2781693a67e008d2a3c6=
0b756d4d4ab&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SRC_URI[sha256sum] =3D &quot;070b68238734117c0b=
9c1018ba192ff29964a115a71620e648d4286c92f2f02b&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 EXTRA_OECONF =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-cu=
rses \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-gt=
k2 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-is=
dnnet \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-mi=
sdn \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-nb=
s \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-ncurs=
es \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-ne=
tsnmp \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-ne=
wt \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-og=
g \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-os=
ptk \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-po=
pt \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-pr=
i \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-ra=
dius \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-sd=
l \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-sp=
andsp \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-su=
ppserv \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-td=
s \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-te=
rmcap \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-ti=
nfo \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-vo=
rbis \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-vp=
b \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-po=
stgres \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-lu=
a \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-xm=
ldoc \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inherit update-rc.d<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 FILES_${PN}-dbg +=3D &quot;${libdir}/asterisk/m=
odules/.debug&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 INITSCRIPT_PACKAGES =3D &quot;${PN}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 INITSCRIPT_NAME_${PN} =3D &quot;asterisk&quot;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 INITSCRIPT_PARAMS_${PN} =3D &quot;defaults 29 2=
9&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PACKAGES =3D+ &quot;${PN}-moh&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DESCRIPTION_${PN}-moh =3D &quot;Asterisk MusicO=
nHold sound&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 FILES_${PN}-moh =3D &quot;${localstatedir}/lib/=
${PN}/moh&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_configure() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;begin configure=
 asterisk&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ./configure --host=3D${TAR=
GET_SYS} --build=3D${BUILD_SYS}=C2=A0 ${EXTRA_OECONF}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Install init script<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdi=
r}/init.d<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0775 ${WORKDIR}=
/asterisk.init=C2=A0 =C2=A0${D}${sysconfdir}/init.d/asterisk<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Remove EN sound files fr=
om this package as they are installed by &quot;asterisk-sounds-en&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -rf ${D}/var/lib/asteri=
sk/sounds/en<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 FILES_${PN} +=3D &quot;${sysconfdir}/init.d/ast=
erisk \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /run/asterisk &quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /************************************/<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 When I build my recipe , I have=C2=A0 this log =
:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 //....//<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 checking for utime.h... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking arpa/nameser.h usability... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking arpa/nameser.h presence... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for arpa/nameser.h... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking sys/io.h usability... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking sys/io.h presence... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for sys/io.h... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for initscr in -lncurses... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking curses.h usability... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking curses.h presence... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for curses.h... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for uuid_generate_random in -luuid..=
. yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking uuid/uuid.h usability... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking uuid/uuid.h presence... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for uuid/uuid.h... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for uuid_generate_random in -le2fs-u=
uid... no<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for uuid_generate_random... no<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for json_dumps in -ljansson... yes<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking jansson.h usability... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking jansson.h presence... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for jansson.h... yes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for arm-poky-linux-gnueabi-xml2-conf=
ig... no<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | checking for xml2-config... /media/ljoli/disk=
_one/compile_fido/build/tmp/sysroots/cgtqmx6/usr/bin/crossscripts/xml2-conf=
ig<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | configure: *** The Asterisk menuselect tool r=
equires the &#39;libxml2&#39; development package.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | configure: *** Please install the &#39;libxml=
2&#39; development package.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | + bb_exit_handler<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | + ret=3D1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | + echo WARNING: exit code 1 from a shell comm=
and.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | WARNING: exit code 1 from a shell command.<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | + exit 1<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 How to add &quot;libxml2-dev&quot; in my recipe=
 ?<br>
<br>
<br>
=C2=A0 =C2=A0 Adding this line should do:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0DEPENDS =3D &quot;libxml2&quot;<br>
<br>
<br>
As you can see in my second line of recipe I have already add libxml2.<br>
</div></div></blockquote>
<br>
Sorry, I missed that.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
But that is strange it said me : configure: *** Please install the &#39;lib=
xml2&#39; development package.<br>
</blockquote>
<br></span>
That&#39;s because the &#39;xml2-config&#39; script seems to be disabled.=
=C2=A0 It contains:<br>
=C2=A0 #!/bin/sh<br>
=C2=A0 echo &#39;--should-not-have-used-/usr/bin/xml2-config&#39;<br>
=C2=A0 exit 1<br>
<br></blockquote><div>Yes, you are allright=C2=A0 <br></div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
You&#39;ll have to figure out how to make the configure script use<br>
pkg-config instead.<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div>=
</blockquote><div>When I use pkg-config instead of xml2-config , I have thi=
s log : <br><br>| checking for uuid_generate_random in -le2fs-uuid... no<br=
>| checking for uuid_generate_random... no<br>| checking for json_dumps in =
-ljansson... yes<br>| checking jansson.h usability... yes<br>| checking jan=
sson.h presence... yes<br>| checking for jansson.h... yes<br>| checking for=
 arm-poky-linux-gnueabi-pkg-config... no<br>| checking for pkg-config... /m=
edia/ljoli/disk_one/compile_fido/build/tmp/sysroots/i686-linux/usr/bin/pkg-=
config<br>| Must specify package names on the command line<br>| Must specif=
y package names on the command line<br>| configure: *** The Asterisk menuse=
lect tool requires the &#39;libxml2&#39; development package.<br>| configur=
e: *** Please install the &#39;libxml2&#39; development package.<br>| + bb_=
exit_handler<br>| + ret=3D1<br>| + echo WARNING: exit code 1 from a shell c=
ommand.<br>| WARNING: exit code 1 from a shell command.<br>| + exit 1<br><b=
r></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZ=
b"><div class=3D"h5">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div></div>

--20cf307c9f5600769e051c03c302--
