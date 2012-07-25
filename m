Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF45E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 03:05:15 -0700 (PDT)
Received: by lagz14 with SMTP id z14so419263lag.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 03:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Eigm+/byXKRrcGGqeYl/xMzXXWgoh/LeYZKy16+ARxM=;
	b=B+hT8Dt+Qsden7WxeE5PNH4KxbKuQBu/m/YQP+n6YFJrGUfBpT1Br63gXK4/G9GXsa
	SVTOk2C6+DZGNADcZsrlCu7OGAoZ+IBx/9FC/Li/KByoWMhugVlNEggIUkWVtOuKuFT3
	lSnL6G95ZhBrcV/he/TuUX6sQ+nqd4ANpq6sEw2zJbFfyE4F7fjLEdCHQygxPGKQqEfB
	P2rKhPdrVl7YVsOYajUC0A8WcScalSl9JCzTwwsQemmyhsKsVYs16spQEZ0ZGAUuigSv
	4Y8IdCgweg2LtVcRT50S061G7LqVjz4OEkLVgNI47OtSYi+500Pxka1KzBkCz3a02e68
	un1g==
Received: by 10.152.48.6 with SMTP id h6mr25287805lan.30.1343210714314; Wed,
	25 Jul 2012 03:05:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 03:04:54 -0700 (PDT)
In-Reply-To: <CAJTo0LZFbrD0e5SjBQYu6KnSmG+_K9shWdq1fNBC7tP+TyCQ3g@mail.gmail.com>
References: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
	<CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
	<CANsUPaOa11_oTJf46kCa5RjBL=JJehby1y+k5QtmHCAU5xsEbg@mail.gmail.com>
	<CAJTo0LZFbrD0e5SjBQYu6KnSmG+_K9shWdq1fNBC7tP+TyCQ3g@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 12:04:54 +0200
Message-ID: <CANsUPaPE6C7qAmNMNkKMDpU46OHys2xcK2H0z+TigKqYe=GhcA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQnGURXffY8IUXu3KafycgQ91iMkzEJKei25teBZcBR/3r3vP8N+3jwsaPU7kae8sdl0PTnx
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
X-List-Received-Date: Wed, 25 Jul 2012 10:05:16 -0000
Content-Type: multipart/alternative; boundary=bcaec55242427c377704c5a49db0

--bcaec55242427c377704c5a49db0
Content-Type: text/plain; charset=ISO-8859-1

Thanks Ross,

Protocol Buffer README file says:

*** Note for cross-compiling ***
*
*
*  The makefiles normally invoke the protoc executable that they just*
*  built in order to build tests.  When cross-compiling, the protoc*
*  executable may not be executable on the host machine.  In this case,*
*  you must build a copy of protoc for the host machine first, then use*
*  the --with-protoc option to tell configure to use it instead.  For*
*  example:*
*
*
*    ./configure --with-protoc=protoc*
*
*
*  This will use the installed protoc (found in your $PATH) instead of*
*  trying to execute the one built during the build process.  You can*
*  also use an executable that hasn't been installed.  For example, if*
*  you built the protobuf package for your host machine in ../host,*
*  you might do:*
*
*
*    ./configure --with-protoc=../host/src/protoc*
*
*
I think I have to use this last option and point to the executable into the
i696-linux sysroot..
Can I do this overriding do_configure task? Like this:

*do_configure() {*
*    ./configure --with-protoc=/path/to/sysroot/i686-linux/usr/bin/protoc*
*}*
*
*
I tried this way but I got a "permission denied" error..

*/bin/bash: line 8: ../-libtool: Permission denied*
*| make[3]: *** [install-libLTLIBRARIES] Error 126*

How can I solve this error?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Jul 25, 2012 at 11:49 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 25 July 2012 10:47, Giovanni Foiani <fnognn@unife.it> wrote:
> > The native library builds properly but it populates the wrong sysroot..I
> can
> > find protoc executable into tmp/sysroots/i686-linux but not into imx53qsb
> > sysroot, hence rebuilding the protobuf library it can't find the
> > executable..
>
> That's what you want -- you want a protoc in the native sysroot.  I
> guess you need to patch the makefile to use the sysroot protoc instead
> of the one it just built.
>
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec55242427c377704c5a49db0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Thanks Ross,</div><div><br></div>Protocol Buffer README file says:<div=
><br></div><div><div><i>** Note for cross-compiling **</i></div><div><i><br=
></i></div><div><i>=A0 The makefiles normally invoke the protoc executable =
that they just</i></div>

<div><i>=A0 built in order to build tests. =A0When cross-compiling, the pro=
toc</i></div><div><i>=A0 executable may not be executable on the host machi=
ne. =A0In this case,</i></div><div><i>=A0 you must build a copy of protoc f=
or the host machine first, then use</i></div>

<div><i>=A0 the --with-protoc option to tell configure to use it instead. =
=A0For</i></div><div><i>=A0 example:</i></div><div><i><br></i></div><div><i=
>=A0 =A0 ./configure --with-protoc=3Dprotoc</i></div><div><i><br></i></div>=
<div><i>=A0 This will use the installed protoc (found in your $PATH) instea=
d of</i></div>

<div><i>=A0 trying to execute the one built during the build process. =A0Yo=
u can</i></div><div><i>=A0 also use an executable that hasn&#39;t been inst=
alled. =A0For example, if</i></div><div><i>=A0 you built the protobuf packa=
ge for your host machine in ../host,</i></div>

<div><i>=A0 you might do:</i></div><div><i><br></i></div><div><i>=A0 =A0 ./=
configure --with-protoc=3D../host/src/protoc</i></div><div><i><br></i></div=
><div>I think I have to use this last option and point to the=A0executable =
into the i696-linux=A0sysroot..</div>

<div>Can I do this overriding do_configure task?=A0Like this:</div><div><br=
></div><div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:13px;background-color:rgb(255,255,255)"><i>do_configure() {</i></=
div>

<div><i>=A0 =A0 ./configure --with-protoc=3D/path/to/sysroot/i686-linux/usr=
/bin/protoc</i></div><div style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:13px;background-color:rgb(255,255,255)"><i>}</i></div></=
div>

<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13=
px;background-color:rgb(255,255,255)"><i><br></i></div><div style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;background-color:=
rgb(255,255,255)">

I tried this way but I got a &quot;permission denied&quot; error..</div><di=
v style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;=
background-color:rgb(255,255,255)"><br></div><div style=3D"background-color=
:rgb(255,255,255)">

<div><font color=3D"#222222" face=3D"arial, sans-serif"><i>/bin/bash: line =
8: ../-libtool: Permission denied</i></font></div><div><font color=3D"#2222=
22" face=3D"arial, sans-serif"><i>| make[3]: *** [install-libLTLIBRARIES] E=
rror 126</i></font></div>

<div><font color=3D"#222222" face=3D"arial, sans-serif"><br></font></div><d=
iv><font color=3D"#222222" face=3D"arial, sans-serif">How can I solve this =
error</font><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
">?</span></div>

<div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif"><br><=
/span></div></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:13px;background-color:rgb(255,255,255)">Thanks</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;back=
ground-color:rgb(255,255,255)">

<br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:13px;background-color:rgb(255,255,255)">Giovanni</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Wed, Jul 25, 2012 at 11:49 AM, Burton=
, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">

<div class=3D"im">On 25 July 2012 10:47, Giovanni Foiani &lt;<a href=3D"mai=
lto:fnognn@unife.it">fnognn@unife.it</a>&gt; wrote:<br>
&gt; The native library builds properly but it populates the wrong sysroot.=
.I can<br>
&gt; find protoc executable into tmp/sysroots/i686-linux but not into imx53=
qsb<br>
&gt; sysroot, hence rebuilding the protobuf library it can&#39;t find the<b=
r>
&gt; executable..<br>
<br>
</div>That&#39;s what you want -- you want a protoc in the native sysroot. =
=A0I<br>
guess you need to patch the makefile to use the sysroot protoc instead<br>
of the one it just built.<br>
<br>
Ross<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--bcaec55242427c377704c5a49db0--
