Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF3EE0034A
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 00:47:40 -0700 (PDT)
Received: by lboj14 with SMTP id j14so8900679lbo.35
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 00:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=YGA8lq669V1IdNKvSeg4bKN0Bk7Y5CtjgE7PIDfdfxY=;
	b=ICIAnPLKk6wAvv4tpVuBuhiQ9U0hgjgN+q7XTkIU5Wszdx/hm8VLoplYL2UZTjbXp4
	EXbQHFQvatNCGZ1kp396N+nOCnrLcgjiOZGCKE1qYw27dDbwPzmQmNSwDSvxRUU3BACN
	Yv8Va4B8RLwsP2P/nejVYLYyAOGz1PKg5wLHkRYMkXG/2sF1/JsZ2Sbhl0VXR19kK0N0
	bfk3+wepgx9xsVwBKFTpqur7gvwucStkQdI5uZ2u7M8qqrFjHrX+jDTuwT1mYQhdkhBD
	Ez/OyntBxWOB2mV5VwOnMq9tV2soNa6o6sPeHTiCUUUbsNFgD4hfXbKsuTdD8rRjMrCF
	CeVg==
Received: by 10.112.101.169 with SMTP id fh9mr7412834lbb.18.1343029659070;
	Mon, 23 Jul 2012 00:47:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Mon, 23 Jul 2012 00:47:18 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46AB73DE@ORSMSX101.amr.corp.intel.com>
References: <CANsUPaOcZUzv_bnFbcH1JcnMh1BHvba0LTmD0jHnUM-E9TBesQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AB293D@ORSMSX101.amr.corp.intel.com>
	<CANsUPaOyauO5V1qpj3MbweFPJaQnAyyb40Q4BgNdY3Suhwu8VQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AB73DE@ORSMSX101.amr.corp.intel.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Mon, 23 Jul 2012 09:47:18 +0200
Message-ID: <CANsUPaOasnTAuxb8PZ8OWAi3SOGeTYmG6XTbrUWXh4s+Ev6EtA@mail.gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQm3LrsF2xu9EgEfDihHuMpFk/KETAju9kuyIBg5hhj/W6hXxsVccnum+1B4ll62+ID7MJxa
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
X-List-Received-Date: Mon, 23 Jul 2012 07:47:41 -0000
Content-Type: multipart/alternative; boundary=f46d04016ae1c0715704c57a7573

--f46d04016ae1c0715704c57a7573
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

See notes below..

thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Jul 18, 2012 at 7:11 PM, Zhang, Jessica <jessica.zhang@intel.com>wr=
ote:

>  Please see my comments below=85****
>
> ** **
>
> ** **
>
> ** **
>
> *From:* Giovanni Foiani [mailto:fnognn@unife.it]
> *Sent:* Wednesday, July 18, 2012 7:25 AM
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Problem building Yocto Hello World demo on imx53QS=
B
> ****
>
> ** **
>
> Hi Jessica,****
>
> ** **
>
> downgrading from Ubuntu 11.04 (32 bit) to Ubuntu 10.04 (32 bit) and
> following the ADT manual procedure HelloWorld demo works.****
>
> [JZ] This I=92m assuming you strictly follow the ADT manual and use the
> Yocto project built out toolchain, right?  Why downgrade from Ubuntu 11.0=
4
> to 10.04? I don=92t think you need to do that unless 10.04 is what you wa=
nt.
> ****
>
> **
>

Yocto warned me that my distribution was not supported so compatibly with
this document <https://wiki.yoctoproject.org/wiki/Distribution_Support> I
decided to downgrade to Ubuntu 10.04

**
>
> ** **
>
> I noticed that ADT creates an armv5 tool chain instead building the
> toolchain using Freescale layer (because I need to deploy the application
> on a iMX53QSB) it creates an armv7 tool chain (that is the right processo=
r
> architecture).****
>
> Can this create problems?****
>
> [JZ] In that case, you need to build out an armv7 toolchain.  The key is
> to add the Freescale layer and set target MACHINE appropriately.  And use
> that toolchain  for your cross development.  It should work.
>

Yes adding Freescale layer and pointing to the toolchain under the build
tree it works.
My configuration are:


   - Toolchain root location: /home/gfoiani/yocto/poky/build
   - Sysroot location: /home/gfoiani/yocto/poky/build/tmp/sysroots/imx53qsb



> ****
>
> ** **
>
> Thanks****
>
> ** **
>
> Giovanni
> ****
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
>
>
> ****
>
> On Tue, Jul 17, 2012 at 5:12 PM, Zhang, Jessica <jessica.zhang@intel.com>
> wrote:****
>
> Hi Giovanni,****
>
>  ****
>
> Can you following the ADT manual and use the built 1.2.1 toolchain tar
> ball?  The meta-ide-support is supposed to be used under build tree inste=
ad
> of copied over to /opt/poky.****
>
>  ****
>
> Cheers,****
>
> Jessica****
>
>  ****
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Giovanni Foiani
> *Sent:* Tuesday, July 17, 2012 2:29 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Problem building Yocto Hello World demo on imx53QSB***=
*
>
>  ****
>
> Hi,****
>
>  ****
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
>       location: /opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnuea=
bi
>       ****
>
>  When I build the project I get the following error:****
>
>  ****
>
> *Invoking autogen.sh in build directory:
> /home/gfoiani/workspace/idea-c-application*****
>
>  ****
>
> *Command-line environment variables:*****
>
> *            CFLAGS=3D" -g -O0  -march=3Darmv7-a -fno-tree-vectorize
> -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8
> --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
> CXXFLAGS=3D" -g -O0  -march=3Darmv7-a -fno-tree-vectorize     -mthumb-int=
erwork
> -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8
> --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
> LDFLAGS=3D"
> --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
> CPPFLAGS=3D" -march=3Darmv7-a -fno-tree-vectorize     -mthumb-interwork
> -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8
> --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"*=
***
> *
>
>  ****
>
> *sh /home/gfoiani/workspace/idea-c-application/autogen.sh
> --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-li=
nux-gnueabi
> --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi
> --build=3Di686-linux
> --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-li=
nux-gnueabi
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
> '/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/autom4te' failed wit=
h
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
>  ****
>
> *Configuration failed with error*****
>
>  ****
>
> What Am I doing wrong?****
>
>  ****
>
> Thanks****
>
>  ****
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
>  ****
>
> ** **
>

--f46d04016ae1c0715704c57a7573
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

See notes below..<div><br></div><div>thanks=A0</div><div><br></div><div>Gio=
vanni<br clear=3D"all">
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Wed, Jul 18, 2012 at 7:11 PM, Zhang, =
Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" ta=
rget=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">







<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Please see my comments be=
low=85<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Giovanni=
 Foiani [mailto:<a href=3D"mailto:fnognn@unife.it" target=3D"_blank">fnognn=
@unife.it</a>]
<br>
<b>Sent:</b> Wednesday, July 18, 2012 7:25 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Problem building Yocto Hello World demo on imx5=
3QSB<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Hi Jessica,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div><div class=3D"im">
<p class=3D"MsoNormal">downgrading from Ubuntu 11.04 (32 bit) to=A0Ubuntu 1=
0.04 (32 bit) and following the ADT manual procedure HelloWorld demo works.=
<u></u><u></u></p>
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">[JZ] This I=92m ass=
uming you strictly follow the ADT manual and use the Yocto project built ou=
t toolchain, right?=A0 Why downgrade from Ubuntu 11.04 to 10.04? I
 don=92t think you need to do that unless 10.04 is what you want.<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0</span></p></di=
v></div></div></blockquote><div><br></div><div>Yocto warned me that my dist=
ribution was not supported so=A0<span style=3D"background-color:rgb(255,255=
,255);font-family:arial,sans-serif;font-size:13px;white-space:nowrap">compa=
tibly with this <a href=3D"https://wiki.yoctoproject.org/wiki/Distribution_=
Support">document</a> I decided to downgrade to Ubuntu 10.04=A0</span>=A0</=
div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-US" link=3D"b=
lue" vlink=3D"purple"><div><div><p class=3D"MsoNormal"><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1=
f497d"><u></u></span></p>


<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
</div><div class=3D"im">
<div>
<p class=3D"MsoNormal">I noticed that ADT creates an=A0armv5 tool chain ins=
tead building the toolchain using Freescale layer (because I need to deploy=
 the application on a iMX53QSB) it creates an armv7=A0tool chain (that is t=
he right processor architecture).<u></u><u></u></p>


</div>
</div><div>
<p class=3D"MsoNormal">Can this create problems?<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">[JZ] In that case, you ne=
ed to build out an armv7 toolchain.=A0 The key is to add the Freescale laye=
r and set target MACHINE appropriately.=A0 And use that toolchain=A0
 for your cross development.=A0 It should work.</span></p></div></div></div=
></blockquote><div><br></div><div>Yes adding Freescale layer and pointing t=
o the toolchain under the build tree it works.</div><div>My configuration a=
re:</div>

<div><br></div><div><ul><li>Toolchain root location: /home/gfoiani/yocto/po=
ky/build</li><li>Sysroot location:=A0/home/gfoiani/yocto/poky/build/tmp/sys=
roots/imx53qsb</li></ul></div><div>=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><div><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1f497d"><u></u><u></u></span></p>
</div><div><div class=3D"h5">
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
<p class=3D"MsoNormal">Giovanni<br clear=3D"all">
<u></u><u></u></p>
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
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<br>
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On Tue, Jul 17, 2012 at 5:12 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Giovanni,</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can you following the ADT=
 manual and use the built 1.2.1 toolchain tar ball?=A0 The meta-ide-support
 is supposed to be used under build tree instead of copied over to /opt/pok=
y.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Cheers,</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Giovanni Foiani<br>
<b>Sent:</b> Tuesday, July 17, 2012 2:29 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Problem building Yocto Hello World demo on imx53QSB=
</span><u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
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
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>Invoking autogen.sh in build directory: /home/gfo=
iani/workspace/idea-c-application</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Command-line environment variables:</i><u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 CFLAGS=3D&quot;=
 -g -O0 =A0-march=3Darmv7-a -fno-tree-vectorize =A0 =A0 -mthumb-interwork -=
mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/opt/poky/1=
.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot;
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
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>sh /home/gfoiani/workspace/idea-c-application/aut=
ogen.sh --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-p=
oky-linux-gnueabi --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux=
-gnueabi
 --build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/arm=
v7a-vfp-neon-poky-linux-gnueabi=A0</i><u></u><u></u></p>
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
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Configuration failed with error</i><u></u><u></u>=
</p>
</div>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">What Am I doing wrong?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
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
<p class=3D"MsoNormal">Cell:=A0 =A0 =A0 =A0
<a href=3D"tel:%2B39-349-3577515" target=3D"_blank">+39-349-3577515</a><br>
Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" target=3D"_blank">+39-0532=
-97-4106</a><br>
mail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"=
_blank">giovanni.foiani@unife.it</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">CenTec - Corso Guercino, 47 - 44042 Cento=
 (FE)</span><u></u><u></u></p>
</div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--f46d04016ae1c0715704c57a7573--
