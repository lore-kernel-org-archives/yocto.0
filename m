Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE43E0161A
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:33:20 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id m15so3124980wgh.31
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xjmg5OiRq1NiBFqhVrv/MlnEHK8IKx5yeCOjUnKVu+E=;
	b=Ugv7sHT+fKqL4uSymqcgo/2vx0+Rkb+6wl6hzKFR0W1SRTrZ08rvCgZIjzZSMbQlfr
	pApT3EWh8fzfTd0/TeHFrK6puTyNbo1pdGKHU4TLtI0mZqCA2Wyv4dqvpRq8ChseMDZB
	cOkpzKSn3kojw76faS6iB4xsC/k+r4epfI5BPvNei/epHnwE5m/m/ldBUs5GpL8JOJLo
	x8/8LpzWEkDawOXzhWy7K5amHBAbYlsiAWSnJ9O948n8/SzbrOftef9+grPljUW3qere
	8FsScsUctj7F9/oBUIRpx9iapPEjSewMTO/5e2h7fBZ/S0RwIcDRlkEmd3l87L7FEy6m
	+0WQ==
MIME-Version: 1.0
X-Received: by 10.180.81.129 with SMTP id a1mr13785283wiy.2.1379943199436;
	Mon, 23 Sep 2013 06:33:19 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Mon, 23 Sep 2013 06:33:19 -0700 (PDT)
In-Reply-To: <CANyK_8fqDiyBBn-fm=vEp3vxm05HaPTXrwp3-VsZVG7VEPm5MQ@mail.gmail.com>
References: <CABHD4K8VcQHZSzO2Ch1mEeMNMzHXNTVw7DxqDYdO5VriOtxrWg@mail.gmail.com>
	<CANyK_8fqDiyBBn-fm=vEp3vxm05HaPTXrwp3-VsZVG7VEPm5MQ@mail.gmail.com>
Date: Mon, 23 Sep 2013 19:03:19 +0530
Message-ID: <CABHD4K-qjLsL9YDFe6Of2FX5V8Vzxg_5bnhzjvdReDy1-9o03A@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to pack non striped valgrind image into squashfs image
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
X-List-Received-Date: Mon, 23 Sep 2013 13:33:22 -0000
Content-Type: multipart/alternative; boundary=f46d044401e23679f404e70d109c

--f46d044401e23679f404e70d109c
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul for your response.Below file is nmy valgrind recipe file which
is from poky/meta/valgrind

DESCRIPTION = "Valgrind memory debugger"
HOMEPAGE = "http://valgrind.org/"
BUGTRACKER = "http://valgrind.org/support/bug_reports.html"
LICENSE = "GPLv2 & GPLv2+ & BSD"
LIC_FILES_CHKSUM = "file://COPYING;md5=c46082167a314d785d012a244748d803 \

file://include/pub_tool_basics.h;beginline=1;endline=29;md5=6b18ba0139d10678ce3a9969f68e4c6d
\

file://include/valgrind.h;beginline=1;endline=56;md5=b6bb5ab625a759823e17197ec3e2ee83
\

file://COPYING.DOCS;md5=8fdeb5abdb235a08e76835f8f3260215"

X11DEPENDS = "virtual/libx11"
DEPENDS = "${@base_contains('DISTRO_FEATURES', 'x11', '${X11DEPENDS}', '',
d)}"
PR = "r8"

SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
           file://fix_issue_caused_by_ccache.patch \
           file://fix_unsupporting_kernel_3.patch \
           file://fixed-perl-path.patch \
           file://Added-support-for-PPC-instructions-mfatbu-mfatbl.patch \
           file://configure-with-newer-glibc.patch \
           file://sepbuildfix.patch \
          "

SRC_URI[md5sum] = "288758010b271119a0ffc0183f1d6e38"
SRC_URI[sha256sum] =
"473be00576bed311a662b277a2bfbe97d9cca4058e68619a0e420c9fc19958db"

COMPATIBLE_HOST = '(i.86|x86_64|powerpc|powerpc64).*-linux'
COMPATIBLE_HOST_armv7a = 'arm.*-linux'

inherit autotools

EXTRA_OECONF = "--enable-tls --without-mpicc"
EXTRA_OECONF_armv7a = "--enable-tls -host=armv7-none-linux-gnueabi
--without-mpicc"
EXTRA_OEMAKE = "-w"
PARALLEL_MAKE = ""

do_install_append () {
    install -m 644 ${B}/default.supp ${D}/${libdir}/valgrind/
}

FILES_${PN}-dbg += "${libdir}/${PN}/*/.debug/*"
RRECOMMENDS_${PN}_powerpc += "${TCLIBC}-dbg"
RRECOMMENDS_${PN}_powerpc64 += "${TCLIBC}-dbg"
RRECOMMENDS_${PN}_armv7a += "${TCLIBC}-dbg"


Now this file will compile valgrind binary and install it /usr/lib/valgrind
for my package

Now when I go
to  /tmp/work/${workdir}/image-zzz_ii-debug/1.0-r0/rootfs/usr/lib/valgrind

I can see the vgpreload_memcheck-arm-linux.so is stripped which should be
non stripped for our valgrind to work well

file vgpreload_memcheck-arm-linux.so
vgpreload_memcheck-arm-linux.so: ELF 32-bit LSB shared object, ARM, version
1 (SYSV), stripped


Now how our valgrind recipe stripping these images since I am new to yocto
finding it difficult to solve it.



On Mon, Sep 23, 2013 at 6:32 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 23 September 2013 11:00, Amit Tomer <amittomer25@gmail.com> wrote:
> > I am new to OpenEmbedded and facing an issue where our valgrind is not
> > working,
> > Valgrind bin comes as non striped image after compilation but while
> packing
> > it to squashfs image ,it become striped one and fails to run on target.
> >
> > So how do we pack it as non striped one ??
> >
>
> It's likely in <packagename>-dbg (so probably valgrind-dbg). Try
> adding that to your IMAGE_INSTALL variable.
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>

--f46d044401e23679f404e70d109c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul for your response.Below file is nmy valgrind r=
ecipe file which is from poky/meta/valgrind<div><br></div><div><div>DESCRIP=
TION =3D &quot;Valgrind memory debugger&quot;</div><div>HOMEPAGE =3D &quot;=
<a href=3D"http://valgrind.org/">http://valgrind.org/</a>&quot;</div>
<div>BUGTRACKER =3D &quot;<a href=3D"http://valgrind.org/support/bug_report=
s.html">http://valgrind.org/support/bug_reports.html</a>&quot;</div><div>LI=
CENSE =3D &quot;GPLv2 &amp; GPLv2+ &amp; BSD&quot;</div><div>LIC_FILES_CHKS=
UM =3D &quot;file://COPYING;md5=3Dc46082167a314d785d012a244748d803 \</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://include/pub_tool_basics=
.h;beginline=3D1;endline=3D29;md5=3D6b18ba0139d10678ce3a9969f68e4c6d \</div=
><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://include/valgrind.h;beg=
inline=3D1;endline=3D56;md5=3Db6bb5ab625a759823e17197ec3e2ee83 \</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://COPYING.DOCS;md5=3D8fde=
b5abdb235a08e76835f8f3260215&quot;</div><div><br></div><div>X11DEPENDS =3D =
&quot;virtual/libx11&quot;</div><div>DEPENDS =3D &quot;${@base_contains(&#3=
9;DISTRO_FEATURES&#39;, &#39;x11&#39;, &#39;${X11DEPENDS}&#39;, &#39;&#39;,=
 d)}&quot;</div>
<div>PR =3D &quot;r8&quot;</div><div><br></div><div>SRC_URI =3D &quot;<a hr=
ef=3D"http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2">http://www.=
valgrind.org/downloads/valgrind-${PV}.tar.bz2</a> \</div><div>=A0 =A0 =A0 =
=A0 =A0 =A0file://fix_issue_caused_by_ccache.patch \</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0file://fix_unsupporting_kernel_3.patch \</div><=
div>=A0 =A0 =A0 =A0 =A0 =A0file://fixed-perl-path.patch \</div><div>=A0 =A0=
 =A0 =A0 =A0 =A0file://Added-support-for-PPC-instructions-mfatbu-mfatbl.pat=
ch \</div><div>=A0 =A0 =A0 =A0 =A0 =A0file://configure-with-newer-glibc.pat=
ch \</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0file://sepbuildfix.patch \</div><div>=A0 =A0 =
=A0 =A0 =A0 &quot;</div><div><br></div><div>SRC_URI[md5sum] =3D &quot;28875=
8010b271119a0ffc0183f1d6e38&quot;</div><div>SRC_URI[sha256sum] =3D &quot;47=
3be00576bed311a662b277a2bfbe97d9cca4058e68619a0e420c9fc19958db&quot;</div>
<div><br></div><div>COMPATIBLE_HOST =3D &#39;(i.86|x86_64|powerpc|powerpc64=
).*-linux&#39;</div><div>COMPATIBLE_HOST_armv7a =3D &#39;arm.*-linux&#39;</=
div><div><br></div><div>inherit autotools</div><div><br></div><div>EXTRA_OE=
CONF =3D &quot;--enable-tls --without-mpicc&quot;</div>
<div>EXTRA_OECONF_armv7a =3D &quot;--enable-tls -host=3Darmv7-none-linux-gn=
ueabi --without-mpicc&quot;</div><div>EXTRA_OEMAKE =3D &quot;-w&quot;</div>=
<div>PARALLEL_MAKE =3D &quot;&quot;</div><div><br></div><div>do_install_app=
end () {</div>
<div>=A0 =A0 install -m 644 ${B}/default.supp ${D}/${libdir}/valgrind/</div=
><div>}</div><div><br></div><div>FILES_${PN}-dbg +=3D &quot;${libdir}/${PN}=
/*/.debug/*&quot;</div><div>RRECOMMENDS_${PN}_powerpc +=3D &quot;${TCLIBC}-=
dbg&quot;</div>
<div>RRECOMMENDS_${PN}_powerpc64 +=3D &quot;${TCLIBC}-dbg&quot;</div><div>R=
RECOMMENDS_${PN}_armv7a +=3D &quot;${TCLIBC}-dbg&quot;</div><div><br></div>=
<div><br><div style>Now this file will compile valgrind binary and install =
it /usr/lib/valgrind for my package</div>
<div style><br></div><div style>Now when I go to=A0=A0/tmp/work/${workdir}/=
image-zzz_ii-debug/1.0-r0/rootfs/usr/lib/valgrind=A0</div><div style><br></=
div><div style>I can see the=A0vgpreload_memcheck-arm-linux.so is stripped =
which should be non stripped for our valgrind to work well</div>
<div style><br></div><div style><div>file vgpreload_memcheck-arm-linux.so</=
div><div>vgpreload_memcheck-arm-linux.so: ELF 32-bit LSB shared object, ARM=
, version 1 (SYSV), stripped</div><div><br></div><div><br></div><div style>
Now how our valgrind recipe stripping these images since I am new to yocto =
finding it difficult to solve it.</div></div><div><br></div></div></div></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Se=
p 23, 2013 at 6:32 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:=
paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</a>&gt;</spa=
n> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 23 September 2013 11:00=
, Amit Tomer &lt;<a href=3D"mailto:amittomer25@gmail.com">amittomer25@gmail=
.com</a>&gt; wrote:<br>

&gt; I am new to OpenEmbedded and facing an issue where our valgrind is not=
<br>
&gt; working,<br>
&gt; Valgrind bin comes as non striped image after compilation but while pa=
cking<br>
&gt; it to squashfs image ,it become striped one and fails to run on target=
.<br>
&gt;<br>
&gt; So how do we pack it as non striped one ??<br>
&gt;<br>
<br>
</div>It&#39;s likely in &lt;packagename&gt;-dbg (so probably valgrind-dbg)=
. Try<br>
adding that to your IMAGE_INSTALL variable.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</font></span></blockquote></div><br></div>

--f46d044401e23679f404e70d109c--
