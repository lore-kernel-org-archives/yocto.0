Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD14E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 05:38:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfa15 with SMTP id fa15so4723126vbb.35
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 05:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=n7rVTUcC/di1rL1NI4EcN5lICPe/l+z3eKGm162PSHE=;
	b=ZQoS0x1Me0hEjySEICh6/96bmus/uJ3B6w/8NsF9OetI+dTi1T7xCe+Zcs0FgzoAbo
	Xm7MmzB1AuA7dKZ+grqRrEpYzwnPF5k/6tvrPXcSSd73IpWA//19FnMYFQgg7jHD9XJE
	PAt+Lv5J+Vnv4PItfujjxuBezSR6JHrFLcnB4=
MIME-Version: 1.0
Received: by 10.52.71.33 with SMTP id r1mr9261939vdu.113.1326202685651; Tue,
	10 Jan 2012 05:38:05 -0800 (PST)
Received: by 10.52.33.112 with HTTP; Tue, 10 Jan 2012 05:38:05 -0800 (PST)
In-Reply-To: <4F0C3B05.7070908@communistcode.co.uk>
References: <4F0C1C26.6030301@communistcode.co.uk>
	<20120110111628.GC3445@jama.jama.net>
	<4F0C1F46.20003@communistcode.co.uk>
	<4F0C3B05.7070908@communistcode.co.uk>
Date: Tue, 10 Jan 2012 08:38:05 -0500
Message-ID: <CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble creating new package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 13:38:08 -0000
Content-Type: multipart/alternative; boundary=20cf307f33a0fa7c0a04b62c9fea

--20cf307f33a0fa7c0a04b62c9fea
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 10, 2012 at 8:20 AM, Jack Mitchell <ml@communistcode.co.uk>wrote:

>  On 10/01/12 11:21, Jack Mitchell wrote:
>
>> On 10/01/12 11:16, Martin Jansa wrote:
>>
>>> On Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell wrote:
>>>
>>>> Good morning everyone,
>>>>
>>>> I am currently having issues creating a (very!) simple package. I have
>>>> looked at the latest reference manual and studied other .bb files to no
>>>> avail.
>>>>
>>>> I am trying to build a simple web server called Hiawatha. To install
>>>> (http://www.hiawatha-**webserver.org/howto/**
>>>> compilation_and_installation<http://www.hiawatha-webserver.org/howto/compilation_and_installation>
>>>> )
>>>> it consists of a simple:
>>>>
>>>> ./configure
>>>>
>>>> make
>>>>
>>>> make install
>>>>
>>>> Now, for the life in me I cannot replicate this behaviour in a .bb file.
>>>> This is what I have so far:
>>>>
>>>> DESCRIPTION = "Lightweight secure web server"
>>>> HOMEPAGE = "http://www.hiawatha-**webserver.org<http://www.hiawatha-webserver.org/>
>>>> "
>>>>
>>>> LICENSE = "GPLv2"
>>>> LIC_FILES_CHKSUM = "file://COPYING;md5=**a9b0a0eb7c54c87ec6ac05f5f603df
>>>> **6a"
>>>>
>>>> SECTION = "custom"
>>>>
>>>> PR = "r0"
>>>>
>>>> SRC_URI = "http://www.hiawatha-**webserver.org/files/hiawatha-**
>>>> 7.8.2.tar.gz<http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz>
>>>> "
>>>>
>>>> SRC_URI[md5sum] = "**8aff3f8c759871ea1d1ff22e980303**32"
>>>>
>>>> do_configure () {
>>>>
>>>>    ./configure --disable-ipv6 \
>>>>               --disable-ssl \
>>>>               --disable-toolkit \
>>>>               --disable-xslt \
>>>>               --disable-largefile \
>>>>
>>>>    oe_runmake
>>>>
>>>> }
>>>>
>>>> do_install () {
>>>>
>>>>    oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
>>>>      INCLUDEDIR=${includedir}
>>>>
>>>> }
>>>>
>>>> Could someone point me in the right direction, I feel this should be an
>>>> extremely easy piece of software to build - I think I'm just not
>>>> understanding the build system correctly....
>>>>
>>>> The error I receive when trying to build this package is:
>>>>
>>>> ERROR: Function 'do_install' failed (see
>>>> /home/jack/yocto/poky-git/**beagleInitial/tmp/work/**
>>>> armv5te-poky-linux-gnueabi/**hiawatha-7.8.2-r0/temp/log.do_**install.6289
>>>>
>>>> for further information)
>>>> | NOTE: make -j 9 -e MAKEFLAGS= -e install
>>>> DESTDIR=/home/jack/yocto/poky-**git/beagleInitial/tmp/work/**
>>>> armv5te-poky-linux-gnueabi/**hiawatha-7.8.2-r0/image
>>>> SBINDIR=/usr/sbin MANDIR=/usr/share/man INCLUDEDIR=/usr/include
>>>> | make: *** No rule to make target `install'.  Stop.
>>>> | ERROR: oe_runmake failed
>>>>
>>> try to start with
>>> inherit autotools
>>>
>>> Cheers,,
>>>
>>> Thanks in advance,
>>>> Jack.
>>>>
>>>> ______________________________**_________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>>>
>>>
>> Hi Martin,
>>
>> Inheriting autotools makes no difference, I also don't understand why
>> autotools should be inherited if it is only a make/configure combination
>> being used?
>>
>> Best Regards
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
> Ok, I have managed to get a bit further on this. I didn't realise that I
> had to do
>
> bitbake -c clean hiawatha
>
> Everytime I had changed the package to ensure that it was building with
> the new configuration. My new .bb looks like this:
>
>
> DESCRIPTION = "Lightweight secure web server"
> HOMEPAGE = "http://www.hiawatha-**webserver.org<http://www.hiawatha-webserver.org/>
> "
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=**a9b0a0eb7c54c87ec6ac05f5f603df**
> 6a"
> DEPENDS = "openssl libxml2 libxslt"
>
> SECTION = "custom"
>
> PR = "r0"
>
> SRC_URI = "http://www.hiawatha-**webserver.org/files/hiawatha-**
> 7.8.2.tar.gz<http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz>
> "
> SRC_URI[md5sum] = "**8aff3f8c759871ea1d1ff22e980303**32"
>
> inherit autotools
>
> EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include
> -DWITHOUT_XATTR' \
>                     'BUILDDIR=${S}'"
>
> EXTRA_OECONF = " --disable-ipv6 \
>             --disable-ssl \
>             --disable-toolkit \
>             --disable-xslt \
>             --disable-largefile \
>             --mandir=${mandir}"
>
> do_configure() {
>
>  oe_runconf
>
> }
>
> do_compile() {
>
>  oe_runmake
>
> }
>
> do_install() {
>
>  oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
> INCLUDEDIR=${includedir}
>
>
> Now, this is building and installing however the Hiawatha binary doesn't
> get included in the build. The configuration files make it in so I know
> it's running the make install phase however I don't know how to find out
> what is going on during the build and why the binary isn't making it in the
> rootfs.
>
>
Maybe you need an IMAGE_INSTALL += "hiawatha" in you local.conf????

Jim A

>  ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--20cf307f33a0fa7c0a04b62c9fea
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br>
<div class=3D"gmail_quote">On Tue, Jan 10, 2012 at 8:20 AM, Jack Mitchell <=
span dir=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk">ml@communist=
code.co.uk</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">On 10/01/12 11:21, Jack Mitchell wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">On 10/01/12 11:16, Martin Jansa wrote=
:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">On Tue, Jan 10, 2012 at 11:08:22AM +0=
000, Jack Mitchell wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Good morning everyone,<br><br>I am cu=
rrently having issues creating a (very!) simple package. I have<br>looked a=
t the latest reference manual and studied other .bb files to no<br>
avail.<br><br>I am trying to build a simple web server called Hiawatha. To =
install<br>(<a href=3D"http://www.hiawatha-webserver.org/howto/compilation_=
and_installation" target=3D"_blank">http://www.hiawatha-<u></u>webserver.or=
g/howto/<u></u>compilation_and_installation</a>)<br>
it consists of a simple:<br><br>./configure<br><br>make<br><br>make install=
<br><br>Now, for the life in me I cannot replicate this behaviour in a .bb =
file.<br>This is what I have so far:<br><br>DESCRIPTION =3D &quot;Lightweig=
ht secure web server&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"http://www.hiawatha-webserver.org/" target=3D=
"_blank">http://www.hiawatha-<u></u>webserver.org</a>&quot;<br><br>LICENSE =
=3D &quot;GPLv2&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<u=
></u>a9b0a0eb7c54c87ec6ac05f5f603df<u></u>6a&quot;<br>
<br>SECTION =3D &quot;custom&quot;<br><br>PR =3D &quot;r0&quot;<br><br>SRC_=
URI =3D &quot;<a href=3D"http://www.hiawatha-webserver.org/files/hiawatha-7=
.8.2.tar.gz" target=3D"_blank">http://www.hiawatha-<u></u>webserver.org/fil=
es/hiawatha-<u></u>7.8.2.tar.gz</a>&quot;<br>
<br>SRC_URI[md5sum] =3D &quot;<u></u>8aff3f8c759871ea1d1ff22e980303<u></u>3=
2&quot;<br><br>do_configure () {<br><br>=A0 =A0./configure --disable-ipv6 \=
<br>=A0 =A0 =A0 =A0 =A0 =A0 =A0 --disable-ssl \<br>=A0 =A0 =A0 =A0 =A0 =A0 =
=A0 --disable-toolkit \<br>=A0 =A0 =A0 =A0 =A0 =A0 =A0 --disable-xslt \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 --disable-largefile \<br><br>=A0 =A0oe_runmake<=
br><br>}<br><br>do_install () {<br><br>=A0 =A0oe_runmake install DESTDIR=3D=
${D} SBINDIR=3D${sbindir} MANDIR=3D${mandir} \<br>=A0 =A0 =A0INCLUDEDIR=3D$=
{includedir}<br><br>}<br><br>Could someone point me in the right direction,=
 I feel this should be an<br>
extremely easy piece of software to build - I think I&#39;m just not<br>und=
erstanding the build system correctly....<br><br>The error I receive when t=
rying to build this package is:<br><br>ERROR: Function &#39;do_install&#39;=
 failed (see<br>
/home/jack/yocto/poky-git/<u></u>beagleInitial/tmp/work/<u></u>armv5te-poky=
-linux-gnueabi/<u></u>hiawatha-7.8.2-r0/temp/log.do_<u></u>install.6289 <br=
>for further information)<br>| NOTE: make -j 9 -e MAKEFLAGS=3D -e install<b=
r>
DESTDIR=3D/home/jack/yocto/poky-<u></u>git/beagleInitial/tmp/work/<u></u>ar=
mv5te-poky-linux-gnueabi/<u></u>hiawatha-7.8.2-r0/image <br>SBINDIR=3D/usr/=
sbin MANDIR=3D/usr/share/man INCLUDEDIR=3D/usr/include<br>| make: *** No ru=
le to make target `install&#39;. =A0Stop.<br>
| ERROR: oe_runmake failed<br></blockquote>try to start with<br>inherit aut=
otools<br><br>Cheers,,<br><br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Thanks in advance,<br>Jack.<br><br>__=
____________________________<u></u>_________________<br>yocto mailing list<=
br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" ta=
rget=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br=
></blockquote>
</blockquote><br>Hi Martin,<br><br>Inheriting autotools makes no difference=
, I also don&#39;t understand why autotools should be inherited if it is on=
ly a make/configure combination being used?<br><br>Best Regards<br>________=
______________________<u></u>_________________<br>
yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.=
org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></u>org=
/listinfo/yocto</a><br>
</blockquote><br></div></div>Ok, I have managed to get a bit further on thi=
s. I didn&#39;t realise that I had to do<br><br>bitbake -c clean hiawatha<b=
r><br>Everytime I had changed the package to ensure that it was building wi=
th the new configuration. My new .bb looks like this:=20
<div class=3D"im"><br><br>DESCRIPTION =3D &quot;Lightweight secure web serv=
er&quot;<br>HOMEPAGE =3D &quot;<a href=3D"http://www.hiawatha-webserver.org=
/" target=3D"_blank">http://www.hiawatha-<u></u>webserver.org</a>&quot;<br>=
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<u></u>a9b0a0eb7c54c87ec6ac=
05f5f603df<u></u>6a&quot;<br></div>DEPENDS =3D &quot;openssl libxml2 libxsl=
t&quot;=20
<div class=3D"im"><br>SECTION =3D &quot;custom&quot;<br><br>PR =3D &quot;r0=
&quot;<br><br>SRC_URI =3D &quot;<a href=3D"http://www.hiawatha-webserver.or=
g/files/hiawatha-7.8.2.tar.gz" target=3D"_blank">http://www.hiawatha-<u></u=
>webserver.org/files/hiawatha-<u></u>7.8.2.tar.gz</a>&quot;<br>
SRC_URI[md5sum] =3D &quot;<u></u>8aff3f8c759871ea1d1ff22e980303<u></u>32&qu=
ot;<br><br></div>inherit autotools<br><br>EXTRA_OEMAKE =3D &quot;&#39;CC=3D=
${CC}&#39; &#39;CFLAGS=3D${CFLAGS} -I${S}/include -DWITHOUT_XATTR&#39; \<br=
>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &#39;BUILDDIR=3D${S}&#39;&quot;<br=
>
<br>EXTRA_OECONF =3D &quot; --disable-ipv6 \<br>=A0 =A0 =A0 =A0 =A0 =A0 --d=
isable-ssl \<br>=A0 =A0 =A0 =A0 =A0 =A0 --disable-toolkit \<br>=A0 =A0 =A0 =
=A0 =A0 =A0 --disable-xslt \<br>=A0 =A0 =A0 =A0 =A0 =A0 --disable-largefile=
 \<br>=A0 =A0 =A0 =A0 =A0 =A0 --mandir=3D${mandir}&quot;<br>
<br>do_configure() {<br><br>=A0oe_runconf<br><br>}<br><br>do_compile() {<br=
><br>=A0oe_runmake<br><br>}<br><br>do_install() {<br><br>=A0oe_runmake inst=
all DESTDIR=3D${D} SBINDIR=3D${sbindir} INCLUDEDIR=3D${includedir}<br><br><=
br>Now, this is building and installing however the Hiawatha binary doesn&#=
39;t get included in the build. The configuration files make it in so I kno=
w it&#39;s running the make install phase however I don&#39;t know how to f=
ind out what is going on during the build and why the binary isn&#39;t maki=
ng it in the rootfs.=20
<div class=3D"HOEnZb">
<div class=3D"h5"><br></div></div></blockquote>
<div>=A0</div>
<div>Maybe you need an IMAGE_INSTALL +=3D &quot;hiawatha&quot; in you local=
.conf????</div>
<div>=A0</div>
<div>Jim A</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">______________________________<u></u>_________________<br=
>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject=
.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></u>or=
g/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--20cf307f33a0fa7c0a04b62c9fea--
