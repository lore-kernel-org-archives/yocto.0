Return-Path: <murilo.travaglia@phiinnovations.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0AE24C800A2
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2011 16:36:53 -0500 (CDT)
Received: by gya6 with SMTP id 6so448509gya.35
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2011 14:36:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.150.103.14 with SMTP id a14mr1084226ybc.9.1302039413454; Tue,
	05 Apr 2011 14:36:53 -0700 (PDT)
Received: by 10.150.145.1 with HTTP; Tue, 5 Apr 2011 14:36:53 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9552265BAB@orsmsx504.amr.corp.intel.com>
References: <BANLkTi=aSGBWpYCPMNquWoUXNfH6zHD2SQ@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9552265BAB@orsmsx504.amr.corp.intel.com>
Date: Tue, 5 Apr 2011 18:36:53 -0300
Message-ID: <BANLkTim2FMSqib4OFgU4Lc9XK9Uta1fBqA@mail.gmail.com>
From: Murilo Travaglia <murilo.travaglia@phiinnovations.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross Compiled Project
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
X-List-Received-Date: Tue, 05 Apr 2011 21:36:54 -0000
Content-Type: multipart/alternative; boundary=000e0cd6b3d6b9003a04a032ac2a

--000e0cd6b3d6b9003a04a032ac2a
Content-Type: text/plain; charset=ISO-8859-1

Hello Jessica,

I'm using Eclipse IDE plugin. This field called sysroot is in the file
environment-setup-my-toolchain?

In this file I can the variables:

PKG_CONFIG_SYSROOT_DIR
POKY_NATIVE_SYSROOT
POKY_TARGET_SYSROOT

Thanks for the prompt reply! =]

Regards,

On Tue, Apr 5, 2011 at 6:26 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  There're 2 main parts for cross development, at least if you want to use
> Yocto ADT setup, one is the cross toolchain, the other is the sysroot, which
> contains target development library and headers.  For Yocto sample settings,
> we use qemu rootfs to setup the sysroot.  For your case (arm) when you
> bitbake poky-image-sato-sdk, it'll generate a file called
> yocto-image-sato-sdk-qemuarm-1.0.rootfs.tar.bz2, and by using
> poky-extract-sdk script to extract that file under a specified directory,
> e.g. $HOME/qemu-arm.  Then for your case, you need to create the sysroot
> directory that contains the target libs and pass that in through --sysroot
> option.  If you're using our Eclipse IDE plug-in, there's field called
> sysroot that you must setup...
>
> Thanks,
> Jessica
>
>  ------------------------------
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Murilo Travaglia
> *Sent:* Tuesday, April 05, 2011 2:01 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Cross Compiled Project
>
> Hi all,
>
>
> I'm trying to use my own toolchain to develop and debug my application. I
> made some changes in the file environment-setup-my-toolchain (file used in
> SDK Mode to configure the environment) to link the compiler, gdb,etc to my
> own toolchain. Making a "Reconfigure Project" or "Build Project" I can see
> that my own toolchain is used.  =]
>
> The problem is that I couldn't see where I have to make the modifications
> to get the specific libraries for the target architecture, e.g: if I'LL
> develop an application to ARM architecture, where I have to make
> modifications to use the libs (/lib, usr/lib) of the target architecture
> (ARM). Is this possible in the Yocto Project?
>
> Thanks in advance!
>
> Best regards!
>
> --
> Murilo Marques Travaglia
> Phi Innovations
>
>
>
>


-- 
Murilo Marques Travaglia
Phi Innovations

--000e0cd6b3d6b9003a04a032ac2a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Jessica,<br><br>I&#39;m using Eclipse IDE plugin. This field called s=
ysroot is in the file environment-setup-my-toolchain?<br><br>In this file I=
 can the variables: <br><br>PKG_CONFIG_SYSROOT_DIR<br>POKY_NATIVE_SYSROOT<b=
r>
POKY_TARGET_SYSROOT<br><br>Thanks for the prompt reply! =3D]<br><br>Regards=
,<br><br><div class=3D"gmail_quote">On Tue, Apr 5, 2011 at 6:26 PM, Zhang, =
Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com">je=
ssica.zhang@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">



<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">There&#39;re 2 main parts for cross development, at least if y=
ou=20
want to use Yocto ADT setup, one is the cross toolchain, the other is the=
=20
sysroot, which contains target development library and headers.=A0 For Yoct=
o=20
sample settings, we use qemu rootfs to setup the sysroot.=A0 For your case=
=20
(arm) when you bitbake poky-image-sato-sdk, it&#39;ll generate a file calle=
d=20
yocto-image-sato-sdk-qemuarm-1.0.rootfs.tar.bz2, and by using poky-extract-=
sdk=20
script to extract that file under a specified directory, e.g.=20
$HOME/qemu-arm.=A0 Then for your case, you need to create the sysroot=20
directory that contains the target libs and pass that in through --sysroot=
=20
option.=A0 If you&#39;re using our Eclipse IDE plug-in, there&#39;s field c=
alled=20
sysroot that you must setup...</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Thanks,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Jessica</font></span></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font face=3D"Tahoma" size=3D"2"><b>From:</b> <a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>=
=20
[mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank"=
>yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Murilo=20
Travaglia<br><b>Sent:</b> Tuesday, April 05, 2011 2:01 PM<br><b>To:</b>=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> [yocto] Cross Compiled=20
Project<br></font><br></div><div><div></div><div class=3D"h5">
<div></div>Hi all,<br><br><br>I&#39;m trying to use my own toolchain to dev=
elop and=20
debug my application. I made some changes in the file=20
environment-setup-my-toolchain (file used in SDK Mode to configure the=20
environment) to link the compiler, gdb,etc to my own toolchain. Making a=20
&quot;Reconfigure Project&quot; or &quot;Build Project&quot; I can see that=
 my own toolchain is=20
used.=A0 =3D]<br><br>The problem is that I couldn&#39;t see where I have to=
 make=20
the modifications to get the specific libraries for the target architecture=
,=20
e.g: if I&#39;LL develop an application to ARM architecture, where I have t=
o make=20
modifications to use the libs (/lib, usr/lib) of the target architecture (A=
RM).=20
Is this possible in the Yocto Project?<br><br>Thanks in advance!<br><br>Bes=
t=20
regards!=A0 <br clear=3D"all"><br>-- <br>Murilo Marques Travaglia<br>Phi=20
Innovations<br><br><br><br></div></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Murilo Marques Travagli=
a<br>Phi Innovations<br><br><br><br>

--000e0cd6b3d6b9003a04a032ac2a--
