Return-Path: <varun292006@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A6EE014E2
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 11:23:33 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id 14so8840820pdj.26
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 11:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=IRpBZDMR4Yb98nR2Ws5Yd1eQfP6N5eCG80fAhmA7AqU=;
	b=n586MPBv4emVunj+Gbmq0YSR8dsYwEdcGJXZNJQw/bfLIoD2Bcdrsm4HrbAhN7M2cN
	R2LETbEQyeKrbqaGiFhgJp7tW8RZM8Nnxdc0ZvEL6qT8LhCC642OFnytLBNQvo8fjvPd
	2pm0R+VQnitRS9VgI/8vFvWJDrbqmSyopZrFCs0r0siApv5ioiD7jUlt1cZJKihYdc6z
	n24YgiXX4MAOHlMV0XlKO/Ku6oDkx3WOqunBpd+YvX/1p+i+1GnPszBWxkdV/IejJhxb
	i63+cpeEklKX6RLGThNkFohkMl9vT8Bh0NMYcISbs4Rpwp/jNmMQAH8KLM6PWaiQodEz
	S+2A==
MIME-Version: 1.0
X-Received: by 10.68.164.69 with SMTP id yo5mr42926361pbb.96.1373653413008;
	Fri, 12 Jul 2013 11:23:33 -0700 (PDT)
Received: by 10.68.73.196 with HTTP; Fri, 12 Jul 2013 11:23:32 -0700 (PDT)
In-Reply-To: <3624548.VBuVOLK5Yg@helios>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<2897880.FC0dZLhceG@helios>
	<CAGxOggHBwsZ5f5f9x12-pOLGJY9bRNkAu6G27kz4Qgp-4ztdqA@mail.gmail.com>
	<3624548.VBuVOLK5Yg@helios>
Date: Fri, 12 Jul 2013 23:53:32 +0530
Message-ID: <CAGxOggGH0mpoV=KqgGc=yEpNbdht5=L1WAzFvcm0za-TEC-FkQ@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Fri, 12 Jul 2013 18:23:34 -0000
Content-Type: multipart/alternative; boundary=047d7b6764e6ba1e9e04e1549b0e

--047d7b6764e6ba1e9e04e1549b0e
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

I am pasting the content of my recipe file below, please have a look at it.


DESCRIPTION = "bitake file"
*DEPENDS = "net-snmp fuse"*
RDEPENDS = "curl rpm openssh openldap procps psmisc sed net-snmp-server"
LICENSE = "GPLv2+"
PR = "r0"
SRC_URI = "*file:///home/user/Myapp.tar.gz"*<file:///home/user/Myapp.tar.gz%22>
;
EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH=${STAGING_DIR_HOST} "
EXTRA_OECMAKE += "-DTARGET_ARCHITECTURE=${TARGET_ARCH} "
EXTRA_OECMAKE += "-DCMAKE_SYSTEM_NAME=Linux "
EXTRA_OECMAKE += "-DCMAKE_SYSTEM_VERSION=1 "
EXTRA_OECMAKE += "-DRSTATE=${PR} "
EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER "
EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY "
EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY "
EXTRA_OECMAKE += "-DRPM=1 "

inherit cmake

do_configure(){
        cmake ..${EXTRA_OECMAKE}
}

do_compile(){
        oe_runmake all
}

//
Varun


On Mon, Jul 1, 2013 at 3:18 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Sunday 30 June 2013 00:05:58 varun bhatnagar wrote:
> > Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_INSTALL. I have
> > removed it from there but I need to add the command provided by these
> > packages in my image. So I have added one line in my layer.conf file
> > "IMAGE_INSTALL_append= test-ea ". Now if I try to run bitbake -k
> > core-image-minimal, it gives me a message saying "Nothing provides
> > test-ea". What shall I do? (I have build the recipe file of test-ea
> without
> > any error.)
>
> Can you show me what the test-ea recipe contains?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b6764e6ba1e9e04e1549b0e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div style>I am pasting the content=
 of my recipe file below, please have a look at it.</div><div style><br></d=
iv><div style><br></div><div style><font color=3D"#0000ff"><font face=3D"Ca=
libri" style=3D"font-size:medium">DESCRIPTION =3D &quot;bitake file&quot;</=
font><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">
<b style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><font f=
ace=3D"Calibri">DEPENDS =3D &quot;net-snmp fuse&quot;</font></b><br style=
=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><font face=3D"C=
alibri" style=3D"font-size:medium">RDEPENDS =3D &quot;curl rpm openssh open=
ldap procps psmisc sed net-snmp-server&quot;</font><br style=3D"font-family=
:&#39;Times New Roman&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">LICENSE =3D &quot;GPLv2+&=
quot;</font><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:me=
dium"><font face=3D"Calibri" style=3D"font-size:medium">PR =3D &quot;r0&quo=
t;</font><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:mediu=
m">
<font face=3D"Calibri" style=3D"font-size:medium">SRC_URI =3D &quot;</font>=
<a href=3D"file:///home/user/Myapp.tar.gz%22" style=3D"font-family:&#39;Tim=
es New Roman&#39;;font-size:medium"><u><font face=3D"Calibri">file:///home/=
user/Myapp.tar.gz&quot;</font></u></a><font face=3D"Calibri" style=3D"font-=
size:medium">;</font><br style=3D"font-family:&#39;Times New Roman&#39;;fon=
t-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;=
-DCMAKE_FIND_ROOT_PATH=3D${STAGING_DIR_HOST} &quot;</font><br style=3D"font=
-family:&#39;Times New Roman&#39;;font-size:medium"><font face=3D"Calibri" =
style=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;-DTARGET_ARCHITECTURE=
=3D${TARGET_ARCH} &quot;</font><br style=3D"font-family:&#39;Times New Roma=
n&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;=
-DCMAKE_SYSTEM_NAME=3DLinux &quot;</font><br style=3D"font-family:&#39;Time=
s New Roman&#39;;font-size:medium"><font face=3D"Calibri" style=3D"font-siz=
e:medium">EXTRA_OECMAKE +=3D &quot;-DCMAKE_SYSTEM_VERSION=3D1 &quot;</font>=
<br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;=
-DRSTATE=3D${PR} &quot;</font><br style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium"><font face=3D"Calibri" style=3D"font-size:medium">E=
XTRA_OECMAKE +=3D &quot;-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3DNEVER &quot;<=
/font><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;=
-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=3DONLY &quot;</font><br style=3D"font-f=
amily:&#39;Times New Roman&#39;;font-size:medium"><font face=3D"Calibri" st=
yle=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;-DCMAKE_FIND_ROOT_PATH_MO=
DE_INCLUDE=3DONLY &quot;</font><br style=3D"font-family:&#39;Times New Roma=
n&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">EXTRA_OECMAKE +=3D &quot;=
-DRPM=3D1 &quot;</font><br style=3D"font-family:&#39;Times New Roman&#39;;f=
ont-size:medium"><font face=3D"Calibri" style=3D"font-size:medium">=A0</fon=
t><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">inherit cmake</font><br s=
tyle=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><font face=
=3D"Calibri" style=3D"font-size:medium">=A0</font><br style=3D"font-family:=
&#39;Times New Roman&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">do_configure(){</font><br=
 style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><font fac=
e=3D"Calibri" style=3D"font-size:medium">=A0=A0=A0=A0=A0=A0=A0 cmake ..${EX=
TRA_OECMAKE}</font><br style=3D"font-family:&#39;Times New Roman&#39;;font-=
size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">}</font><br style=3D"font=
-family:&#39;Times New Roman&#39;;font-size:medium"><font face=3D"Calibri" =
style=3D"font-size:medium">=A0</font><br style=3D"font-family:&#39;Times Ne=
w Roman&#39;;font-size:medium">
<font face=3D"Calibri" style=3D"font-size:medium">do_compile(){</font><br s=
tyle=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><font face=
=3D"Calibri" style=3D"font-size:medium">=A0=A0=A0=A0=A0=A0=A0 oe_runmake al=
l</font><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium=
">
<font face=3D"Calibri" style=3D"font-size:medium">}</font></font><br></div>=
<div style><font color=3D"#0000ff"><font face=3D"Calibri" style=3D"font-siz=
e:medium"><br></font></font></div><div style>//</div><div style>Varun</div>=
</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Jul 1=
, 2013 at 3:18 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:pa=
ul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.co=
m</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Sunday 30 June 2013 00:=
05:58 varun bhatnagar wrote:<br>
&gt; Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_INSTALL. I h=
ave<br>
&gt; removed it from there but I need to add the command provided by these<=
br>
&gt; packages in my image. So I have added one line in my layer.conf file<b=
r>
&gt; &quot;IMAGE_INSTALL_append=3D test-ea &quot;. Now if I try to run bitb=
ake -k<br>
&gt; core-image-minimal, it gives me a message saying &quot;Nothing provide=
s<br>
&gt; test-ea&quot;. What shall I do? (I have build the recipe file of test-=
ea without<br>
&gt; any error.)<br>
<br>
</div>Can you show me what the test-ea recipe contains?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7b6764e6ba1e9e04e1549b0e--
