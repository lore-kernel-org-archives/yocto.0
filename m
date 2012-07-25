Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 945D0E00739
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 07:55:30 -0700 (PDT)
Received: by lagz14 with SMTP id z14so656437lag.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 07:55:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=JhXSF+63GO2mPJWpKk6jQ3zqGUEzZfyZgV7NuXxOmFE=;
	b=S4WNmdvcPSJooz0CcxT8+Il4BkG/vDj9/N2CcoXMCrZPQEKq2+rfyVI13EvIARQ09u
	2DBgjAbDIfEkEKfE6c/pfilfLJ6QCD0LMXImdlkaW8NPM/PPTHzcMOexMIoMBaE2zLP0
	hX97evyL7+dHlc7FKYJOrVO64J43SUjKcOjqO1e6fB9180U4zOFS1B5NlqOAwVvuLstJ
	I+3Ovojbj0+/sNFXPKjH6Uujghgorlr9n82NWnW4ptbAXF/m086EtdCMnm3rIimdk1jl
	gbeMprbA6+cYJMwQgJY94cNOLHkRAun7+HGK1dya2kRmJHlVEua39IhzOjKzkZxc3Pq+
	+6rg==
Received: by 10.112.102.8 with SMTP id fk8mr11528462lbb.71.1343228129446; Wed,
	25 Jul 2012 07:55:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 07:55:09 -0700 (PDT)
In-Reply-To: <CAJTo0LaradKKdy5UGc1qEVKUKgXSZD0R2Lw0h3+gaZxRpGJc2A@mail.gmail.com>
References: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
	<CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
	<CANsUPaOa11_oTJf46kCa5RjBL=JJehby1y+k5QtmHCAU5xsEbg@mail.gmail.com>
	<CAJTo0LZFbrD0e5SjBQYu6KnSmG+_K9shWdq1fNBC7tP+TyCQ3g@mail.gmail.com>
	<CANsUPaPE6C7qAmNMNkKMDpU46OHys2xcK2H0z+TigKqYe=GhcA@mail.gmail.com>
	<CAJTo0LaradKKdy5UGc1qEVKUKgXSZD0R2Lw0h3+gaZxRpGJc2A@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 16:55:09 +0200
Message-ID: <CANsUPaO=U-8oTNdQYLadDgdOV4a2F7xtxg4O_9azYrRcyqhT+Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQlwm2SH+A8DGdHZPNgN7JmNaJogMt2XTAkh8qUBv1VT6KeCWe1sGanO4PmXRQCsqxP1UQnS
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google Protocol Buffers
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
X-List-Received-Date: Wed, 25 Jul 2012 14:55:31 -0000
Content-Type: multipart/alternative; boundary=f46d0401730b820db904c5a8ab26

--f46d0401730b820db904c5a8ab26
Content-Type: text/plain; charset=ISO-8859-1

Using EXTRA_OECONF = "--with-protoc=protoc" it builds properly..

My final .bb file is:

*SUMMARY = "Protocol Buffers - Google's data interchange format"*
*DESCRIPTION = "Protocol Buffers are a way of encoding structured data in
an efficient yet extensible format"*
*SECTION = "libs"*
*
*
*DEPENDS = "protobuf-native"*
*DEPENDS_virtclass-native = ""*
*BBCLASSEXTEND = "native"*
*
*
*LICENSE = "LGPLv2.1"*
*#LIC_FILES_CHKSUM =
"file://../protobuf-2.4.1/COPYING.txt;md5=af6809583bfde9a31595a58bb4a24514"*
*LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=1a6d268fd218675ffea8be556788b780"
*
*
*
*PR = "r0"*
*
*
*SRC_URI = "http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz"*
*
*
*SRC_URI[md5sum] = "dc84e9912ea768baa1976cb7bbcea7b5"*
*SRC_URI[sha256sum] =
"eac6969b617f397247e805267da2b0db3ff9e5a9163b123503a192fbb5776567"*
*
*
*EXTRA_OECONF = "--with-protoc=protoc"*
*
*
*inherit autotools*
*
*
*
*
*
*
I also built the C binding of Google Protocol Buffer and this is the
recipe.. (I disabled protoc_c creation)

*SUMMARY = "C bindings for Google's Protocol Buffers"*
*DESCRIPTION = "This package provides a code generator and runtime
libraries to use Protocol Buffers from pure C (not C++)."*
*SECTION = "libs"*
*
*
*DEPENDS = "protobuf-c-native"*
*DEPENDS_virtclass-native = ""*
*BBCLASSEXTEND = "native"*
*
*
*DEPENDS += "protobuf"*
*
*
*LICENSE = "LGPLv2.1"*
*LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=1a6d268fd218675ffea8be556788b780"
*
*
*
*PR = "r0"*
*
*
*SRC_URI = "http://protobuf-c.googlecode.com/files/protobuf-c-0.15.tar.gz"*
*
*
*SRC_URI[md5sum] = "73ff0c8df50d2eee75269ad8f8c07dc8"*
*SRC_URI[sha256sum] =
"8fcb538e13a5431c46168fc8f2e6ad2574e2db9b684c0c72b066e24f010a0036"*
*
*
*EXTRA_OECONF = "--disable-protoc"*
*
*
*inherit autotools*
*
*
Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Jul 25, 2012 at 12:08 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 25 July 2012 11:04, Giovanni Foiani <fnognn@unife.it> wrote:
> > Can I do this overriding do_configure task? Like this:
> >
> > do_configure() {
> >     ./configure --with-protoc=/path/to/sysroot/i686-linux/usr/bin/protoc
> > }
> >
> > I tried this way but I got a "permission denied" error..
> >
> > /bin/bash: line 8: ../-libtool: Permission denied
> > | make[3]: *** [install-libLTLIBRARIES] Error 126
>
> By explicitly calling configure you've thrown away all the special
> options that are required to cross-compile.  Delete  your
> do_configure() block and just set EXTRA_OECONF = "
> --with-protoc=protoc" (as the sysroot is in your PATH, and you can't
> predict where sysroot is).
>
> Ross
>

--f46d0401730b820db904c5a8ab26
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Using=A0EXTRA_OECONF =3D &quot;--with-protoc=3Dprotoc&quot; it builds prope=
rly..<div><br></div><div>My final .bb file is:<div><br></div><div><div><i>S=
UMMARY =3D &quot;Protocol Buffers - Google&#39;s data interchange format&qu=
ot;</i></div>

<div><i>DESCRIPTION =3D &quot;Protocol Buffers are a way of encoding struct=
ured data in an efficient yet extensible format&quot;</i></div>

<div><i>SECTION =3D &quot;libs&quot;</i></div><div><i><br></i></div><div><i=
>DEPENDS =3D &quot;protobuf-native&quot;</i></div><div><i>DEPENDS_virtclass=
-native =3D &quot;&quot;</i></div><div><i>BBCLASSEXTEND =3D &quot;native&qu=
ot;</i></div>



<div><i><br></i></div><div><i>LICENSE =3D &quot;LGPLv2.1&quot;</i></div><di=
v><i>#LIC_FILES_CHKSUM =3D &quot;file://../protobuf-2.4.1/COPYING.txt;md5=
=3Daf6809583bfde9a31595a58bb4a24514&quot;</i></div><div><i>LIC_FILES_CHKSUM=
 =3D &quot;file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=3D1a6d268fd218675ffea8=
be556788b780&quot;</i></div>



<div><i><br></i></div><div><i>PR =3D &quot;r0&quot;</i></div><div><i><br></=
i></div><div><i>SRC_URI =3D &quot;<a href=3D"http://protobuf.googlecode.com=
/files/protobuf-2.4.1.tar.gz" target=3D"_blank">http://protobuf.googlecode.=
com/files/protobuf-2.4.1.tar.gz</a>&quot;</i></div>



<div><i><br></i></div><div><i>SRC_URI[md5sum] =3D &quot;dc84e9912ea768baa19=
76cb7bbcea7b5&quot;</i></div><div><i>SRC_URI[sha256sum] =3D &quot;eac6969b6=
17f397247e805267da2b0db3ff9e5a9163b123503a192fbb5776567&quot;</i></div><div=
>



<i><br></i></div><div><i>EXTRA_OECONF =3D &quot;--with-protoc=3Dprotoc&quot=
;</i></div><div><i><br></i></div><div><i>inherit autotools</i></div><div><i=
><br></i></div><div><i><br></i></div><div><i><br></i></div><div>I also buil=
t the C binding of Google Protocol Buffer and this is the recipe.. (I disab=
led protoc_c creation)</div>



<div><br></div><div><div><i>SUMMARY =3D &quot;C bindings for Google&#39;s P=
rotocol Buffers&quot;</i></div><div><i>DESCRIPTION =3D &quot;This package p=
rovides a code generator and runtime libraries to use Protocol Buffers from=
 pure C (not C++).&quot;</i></div>



<div><i>SECTION =3D &quot;libs&quot;</i></div><div><i><br></i></div><div><i=
>DEPENDS =3D &quot;protobuf-c-native&quot;</i></div><div><i>DEPENDS_virtcla=
ss-native =3D &quot;&quot;</i></div><div><i>BBCLASSEXTEND =3D &quot;native&=
quot;</i></div>


<div><i><br></i></div><div><i>DEPENDS +=3D &quot;protobuf&quot;</i></div>
<div><i><br></i></div><div><i>LICENSE =3D &quot;LGPLv2.1&quot;</i></div><di=
v><i>LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=
=3D1a6d268fd218675ffea8be556788b780&quot;</i></div><div><i><br></i></div><d=
iv>


<i>PR =3D &quot;r0&quot;</i></div><div>
<i><br></i></div><div><i>SRC_URI =3D &quot;<a href=3D"http://protobuf-c.goo=
glecode.com/files/protobuf-c-0.15.tar.gz" target=3D"_blank">http://protobuf=
-c.googlecode.com/files/protobuf-c-0.15.tar.gz</a>&quot;</i></div><div><i><=
br>


</i></div><div><i>SRC_URI[md5sum] =3D &quot;73ff0c8df50d2eee75269ad8f8c07dc=
8&quot;</i></div>
<div><i>SRC_URI[sha256sum] =3D &quot;8fcb538e13a5431c46168fc8f2e6ad2574e2db=
9b684c0c72b066e24f010a0036&quot;</i></div><div><i><br></i></div><div><i>EXT=
RA_OECONF =3D &quot;--disable-protoc&quot;</i></div><div><i><br></i></div>


<div><i>inherit autotools</i></div></div><div><i><br></i></div><div>Giovann=
i</div>

<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577515" value=3D"+393493577515=
" target=3D"_blank">+39-349-3577515</a><br>


Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>mail:=A0 =A0 =A0 =A0 <a href=3D"mai=
lto:giovanni.foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a=
></div>
<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Wed, Jul 25, 2012 at 12:08 PM, Burton=
, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">



<div>On 25 July 2012 11:04, Giovanni Foiani &lt;<a href=3D"mailto:fnognn@un=
ife.it" target=3D"_blank">fnognn@unife.it</a>&gt; wrote:<br>
&gt; Can I do this overriding do_configure task? Like this:<br>
&gt;<br>
&gt; do_configure() {<br>
&gt; =A0 =A0 ./configure --with-protoc=3D/path/to/sysroot/i686-linux/usr/bi=
n/protoc<br>
&gt; }<br>
&gt;<br>
&gt; I tried this way but I got a &quot;permission denied&quot; error..<br>
&gt;<br>
&gt; /bin/bash: line 8: ../-libtool: Permission denied<br>
&gt; | make[3]: *** [install-libLTLIBRARIES] Error 126<br>
<br>
</div>By explicitly calling configure you&#39;ve thrown away all the specia=
l<br>
options that are required to cross-compile. =A0Delete =A0your<br>
do_configure() block and just set EXTRA_OECONF =3D &quot;<br>
--with-protoc=3Dprotoc&quot; (as the sysroot is in your PATH, and you can&#=
39;t<br>
predict where sysroot is).<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div>

--f46d0401730b820db904c5a8ab26--
