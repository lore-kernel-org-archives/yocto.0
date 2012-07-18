Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9CE4E002A5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 07:24:55 -0700 (PDT)
Received: by lboj14 with SMTP id j14so2560342lbo.35
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 07:24:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=KiEVJIclhZubncZfvn29dXUbMWrfIrYDHxb14P8Xix4=;
	b=VqUjS6fbAsV3wq4M8KEpLsPDiUQJWAGhAn+Mh1gP0bxBK/xAxKM++L+RrUZ2079/tl
	qZ/NJTGhoeGKWgo74g7Iube53zqVeN+FZpdhzM39sFKuudVNgACsIL2LI4Jwg6bFWNQH
	+aGQkTx3VHnmKTPx0VYK/GTFe43cRW+frjuGRHUpnYnxHChrO+kDTPQ5F59JKMf0OIkt
	u2mbWx3+DbNceCUE89Tg/mgUarZI6m2NEbRqbNeyR9yjrpEtSsHiQsr4XCC9BOxYR2VN
	E1X6ef1lpm6kziCVQ0ppUiGF6PLlS+EZgpVOuuVoBWlom5UnBlV0eFay2T/apauEGkLj
	AZbA==
Received: by 10.152.48.6 with SMTP id h6mr3735717lan.30.1342621494249; Wed, 18
	Jul 2012 07:24:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 18 Jul 2012 07:24:34 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46AB293D@ORSMSX101.amr.corp.intel.com>
References: <CANsUPaOcZUzv_bnFbcH1JcnMh1BHvba0LTmD0jHnUM-E9TBesQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AB293D@ORSMSX101.amr.corp.intel.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 18 Jul 2012 16:24:34 +0200
Message-ID: <CANsUPaOyauO5V1qpj3MbweFPJaQnAyyb40Q4BgNdY3Suhwu8VQ@mail.gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQlLzYztUJDUV+QLaJf5DjvJzC91gWd5LFrO3hGKOqO3uhHR4jd2LigKvnt05kf0NImGtPUF
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem building Yocto Hello World demo on imx53QSB
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
X-List-Received-Date: Wed, 18 Jul 2012 14:24:56 -0000
Content-Type: multipart/alternative; boundary=bcaec55242423b885604c51b6da9

--bcaec55242423b885604c51b6da9
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

downgrading from Ubuntu 11.04 (32 bit) to Ubuntu 10.04 (32 bit) and
following the ADT manual procedure HelloWorld demo works.
I noticed that ADT creates an armv5 tool chain instead building the
toolchain using Freescale layer (because I need to deploy the application
on a iMX53QSB) it creates an armv7 tool chain (that is the right processor
architecture).
Can this create problems?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Tue, Jul 17, 2012 at 5:12 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  Hi Giovanni,****
>
> ** **
>
> Can you following the ADT manual and use the built 1.2.1 toolchain tar
> ball?  The meta-ide-support is supposed to be used under build tree instead
> of copied over to /opt/poky.****
>
> ** **
>
> Cheers,****
>
> Jessica****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Giovanni Foiani
> *Sent:* Tuesday, July 17, 2012 2:29 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Problem building Yocto Hello World demo on imx53QSB****
>
> ** **
>
> Hi,****
>
> ** **
>
> I need to deploy a C application that I have made on a Freescale iMX53
> QSB. ****
>
> First I wanted to test the cross-compilation environment building the
> Hello World demo but I got some issues. ****
>
> I made the following steps:****
>
>    - download yocto denzil****
>    - source oe-init-build-env****
>    - edit local.conf and bblayers.conf files****
>    - run 'bitbake meta-ide-support'****
>    - copied the resultant sdk in /opt/poky****
>    - installed Yocto Eclipse plugin****
>    - Configured the plugin as following****
>
>
>     - toolchain root location: /opt/poky/1.2.1****
>       - sysroot
>       location: /opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
>       ****
>
>  When I build the project I get the following error:****
>
> ** **
>
> *Invoking autogen.sh in build directory:
> /home/gfoiani/workspace/idea-c-application*****
>
> ** **
>
> *Command-line environment variables:*****
>
> *            **CFLAGS=" -g -O0  -march=armv7-a -fno-tree-vectorize
> -mthumb-interwork -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
> --sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
> CXXFLAGS=" -g -O0  -march=armv7-a -fno-tree-vectorize     -mthumb-interwork
> -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
> --sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
> LDFLAGS="
> --sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
> CPPFLAGS=" -march=armv7-a -fno-tree-vectorize     -mthumb-interwork
> -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
> --sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"****
> *
>
> ** **
>
> *sh /home/gfoiani/workspace/idea-c-application/autogen.sh
> --with-libtool-sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
> --target=arm-poky-linux-gnueabi --host=arm-poky-linux-gnueabi
> --build=i686-linux
> --with-libtool-sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
> *****
>
> *configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
> valid shell variable name*****
>
> *configure.ac:24: the top level*****
>
> *autom4te: m4 failed with exit status: 1*****
>
> *aclocal: autom4te failed with exit status: 1*****
>
> *configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
> valid shell variable name*****
>
> *configure.ac:24: the top level*****
>
> *autom4te: m4 failed with exit status: 1*****
>
> *configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
> valid shell variable name*****
>
> *configure.ac:24: the top level*****
>
> *autom4te: m4 failed with exit status: 1*****
>
> *autoheader:
> '/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/autom4te' failed with
> exit status: 1*****
>
> *configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
> valid shell variable name*****
>
> *configure.ac:24: the top level*****
>
> *autom4te: m4 failed with exit status: 1*****
>
> *automake: autoconf failed with exit status: 1*****
>
> */home/gfoiani/workspace/idea-c-application/autogen.sh: line 9:
> ./configure: No such file or directory*****
>
> ** **
>
> *Configuration failed with error*****
>
> ** **
>
> What Am I doing wrong?****
>
> ** **
>
> Thanks****
>
> ** **
>
> Giovanni****
>
> --
>
> Dott. Ing. Giovanni Foiani****
>
> Cell:        +39-349-3577515
> Phone:    +39-0532-97-4106
> mail:        giovanni.foiani@unife.it****
>
> CenTec - Corso Guercino, 47 - 44042 Cento (FE)****
>
> ** **
>

--bcaec55242423b885604c51b6da9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jessica,<div><br></div><div>downgrading from Ubuntu 11.04 (32 bit) to=A0=
Ubuntu 10.04 (32 bit) and following the ADT manual procedure HelloWorld dem=
o works.</div><div>I noticed that ADT creates an=A0armv5 tool chain instead=
 building the toolchain using Freescale layer (because I need to deploy the=
 application on a iMX53QSB) it creates an armv7=A0tool chain (that is the r=
ight processor architecture).</div>

<div>Can this create problems?</div><div><br></div><div>Thanks</div><div><b=
r></div><div>Giovanni<br clear=3D"all">
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Tue, Jul 17, 2012 at 5:12 PM, Zhang, =
Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" ta=
rget=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">







<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Giovanni,<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can you following the ADT=
 manual and use the built 1.2.1 toolchain tar ball?=A0 The meta-ide-support=
 is supposed to be used under build tree instead of copied
 over to /opt/poky.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Cheers,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Giovanni Foiani<br>
<b>Sent:</b> Tuesday, July 17, 2012 2:29 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Problem building Yocto Hello World demo on imx53QSB=
<u></u><u></u></span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I need to deploy a C application that I have made on=
 a Freescale iMX53 QSB.=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">First I wanted to test the cross-compilation environ=
ment building the Hello World demo but I got some issues.=A0<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal">I made the following steps:<u></u><u></u></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal">
download yocto denzil<u></u><u></u></li><li class=3D"MsoNormal">
source oe-init-build-env<u></u><u></u></li><li class=3D"MsoNormal">
edit local.conf and bblayers.conf files<u></u><u></u></li><li class=3D"MsoN=
ormal">
run &#39;bitbake meta-ide-support&#39;<u></u><u></u></li><li class=3D"MsoNo=
rmal">
copied the=A0<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;background:white">resultant=A0</span>sdk in /opt/pok=
y<u></u><u></u></li><li class=3D"MsoNormal">
installed Yocto Eclipse plugin<u></u><u></u></li><li class=3D"MsoNormal">
Configured the plugin as following<u></u><u></u></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal">
toolchain root location:=A0/opt/poky/1.2.1<u></u><u></u></li><li class=3D"M=
soNormal">
sysroot location:=A0/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnu=
eabi<u></u><u></u></li></ul>
</ul>
</div>
<div>
<p class=3D"MsoNormal">When I build the project I get the following error:<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>Invoking autogen.sh in build directory: /home/gfo=
iani/workspace/idea-c-application</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Command-line environment variables:</i><u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal"><span><i>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 </i></spa=
n><i>CFLAGS=3D&quot; -g -O0 =A0-march=3Darmv7-a -fno-tree-vectorize =A0 =A0=
 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --s=
ysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot;
 CXXFLAGS=3D&quot; -g -O0 =A0-march=3Darmv7-a -fno-tree-vectorize =A0 =A0 -=
mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sys=
root=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot; LD=
FLAGS=3D&quot; --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-li=
nux-gnueabi&quot;
 CPPFLAGS=3D&quot; -march=3Darmv7-a -fno-tree-vectorize =A0 =A0 -mthumb-int=
erwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/op=
t/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot;</i><u></u><u=
></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>sh /home/gfoiani/workspace/idea-c-application/aut=
ogen.sh --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-p=
oky-linux-gnueabi --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux=
-gnueabi --build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.2.1/sysr=
oots/armv7a-vfp-neon-poky-linux-gnueabi=A0</i><u></u><u></u></p>


</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS&#39; i=
s not a valid shell variable name</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: the top level</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>aclocal: autom4te failed with exit status: 1</i><=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS&#39; i=
s not a valid shell variable name</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: the top level</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS&#39; i=
s not a valid shell variable name</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: the top level</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autoheader: &#39;/opt/poky/1.2.1/sysroots/i686-po=
kysdk-linux/usr/bin/autom4te&#39; failed with exit status: 1</i><u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS&#39; i=
s not a valid shell variable name</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24" target=3D"_bla=
nk">configure.ac:24</a>: the top level</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>automake: autoconf failed with exit status: 1</i>=
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>/home/gfoiani/workspace/idea-c-application/autoge=
n.sh: line 9: ./configure: No such file or directory</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Configuration failed with error</i><u></u><u></u>=
</p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">What Am I doing wrong?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Giovanni<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">--<br>
<br>
Dott. Ing. Giovanni Foiani<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Cell:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-357751=
5" value=3D"+393493577515" target=3D"_blank">+39-349-3577515</a><br>
Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>
mail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"=
_blank">giovanni.foiani@unife.it</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">CenTec - Corso Guercino, 47 - 44042 Cento=
 (FE)</span><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--bcaec55242423b885604c51b6da9--
