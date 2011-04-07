Return-Path: <murilo.travaglia@phiinnovations.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFA794C80132
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2011 09:36:11 -0500 (CDT)
Received: by ywo32 with SMTP id 32so1359020ywo.35
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2011 07:36:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.151.29.21 with SMTP id g21mr925797ybj.66.1302186970949; Thu,
	07 Apr 2011 07:36:10 -0700 (PDT)
Received: by 10.150.145.1 with HTTP; Thu, 7 Apr 2011 07:36:10 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9552265BF3@orsmsx504.amr.corp.intel.com>
References: <BANLkTi=aSGBWpYCPMNquWoUXNfH6zHD2SQ@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9552265BAB@orsmsx504.amr.corp.intel.com>
	<BANLkTim2FMSqib4OFgU4Lc9XK9Uta1fBqA@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9552265BF3@orsmsx504.amr.corp.intel.com>
Date: Thu, 7 Apr 2011 11:36:10 -0300
Message-ID: <BANLkTi=STEGAVAOmuL8At4189U+=+JHa8Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 07 Apr 2011 14:36:12 -0000
Content-Type: multipart/alternative; boundary=000e0cd56e62d5ba2404a055074a

--000e0cd56e62d5ba2404a055074a
Content-Type: text/plain; charset=ISO-8859-1

Thanks for the help Jessica!

Now I'm able to do a cross compile project with own toochain and root
filesystem.


Regards,

On Tue, Apr 5, 2011 at 6:45 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  For the Eclipse IDE, if you to to preference->Yocto SDK, there's "Sysroot
> Location:", there specify the directory that you want to use as your sysroot
> that contains your target dev libs and headers.  For the example that I use,
> I'd specify /home/jzhang/qemu-arm there...the
> environment-setup-armv5te-poky-linux file will be used by the IDE but mainly
> for the path part to locat the cross toolchain...
>
>  ------------------------------
> *From:* Murilo Travaglia [mailto:murilo.travaglia@phiinnovations.com]
> *Sent:* Tuesday, April 05, 2011 2:37 PM
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Cross Compiled Project
>
> Hello Jessica,
>
> I'm using Eclipse IDE plugin. This field called sysroot is in the file
> environment-setup-my-toolchain?
>
> In this file I can the variables:
>
> PKG_CONFIG_SYSROOT_DIR
> POKY_NATIVE_SYSROOT
> POKY_TARGET_SYSROOT
>
> Thanks for the prompt reply! =]
>
> Regards,
>
> On Tue, Apr 5, 2011 at 6:26 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:
>
>>  There're 2 main parts for cross development, at least if you want to use
>> Yocto ADT setup, one is the cross toolchain, the other is the sysroot, which
>> contains target development library and headers.  For Yocto sample settings,
>> we use qemu rootfs to setup the sysroot.  For your case (arm) when you
>> bitbake poky-image-sato-sdk, it'll generate a file called
>> yocto-image-sato-sdk-qemuarm-1.0.rootfs.tar.bz2, and by using
>> poky-extract-sdk script to extract that file under a specified directory,
>> e.g. $HOME/qemu-arm.  Then for your case, you need to create the sysroot
>> directory that contains the target libs and pass that in through --sysroot
>> option.  If you're using our Eclipse IDE plug-in, there's field called
>> sysroot that you must setup...
>>
>> Thanks,
>> Jessica
>>
>>  ------------------------------
>> *From:* yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org] *On Behalf Of *Murilo Travaglia
>> *Sent:* Tuesday, April 05, 2011 2:01 PM
>> *To:* yocto@yoctoproject.org
>> *Subject:* [yocto] Cross Compiled Project
>>
>>   Hi all,
>>
>>
>> I'm trying to use my own toolchain to develop and debug my application. I
>> made some changes in the file environment-setup-my-toolchain (file used in
>> SDK Mode to configure the environment) to link the compiler, gdb,etc to my
>> own toolchain. Making a "Reconfigure Project" or "Build Project" I can see
>> that my own toolchain is used.  =]
>>
>> The problem is that I couldn't see where I have to make the modifications
>> to get the specific libraries for the target architecture, e.g: if I'LL
>> develop an application to ARM architecture, where I have to make
>> modifications to use the libs (/lib, usr/lib) of the target architecture
>> (ARM). Is this possible in the Yocto Project?
>>
>> Thanks in advance!
>>
>> Best regards!
>>
>> --
>> Murilo Marques Travaglia
>> Phi Innovations
>>
>>
>>
>>
>
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

--000e0cd56e62d5ba2404a055074a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for the help Jessica!<br><br>Now I&#39;m able to do a cross compile =
project with own toochain and root filesystem.<br><br><br>Regards, <br><br>=
<div class=3D"gmail_quote">On Tue, Apr 5, 2011 at 6:45 PM, Zhang, Jessica <=
span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com">jessica.zha=
ng@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">



<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">For the Eclipse IDE, if you to to preference-&gt;Yocto SDK,=20
there&#39;s &quot;Sysroot Location:&quot;, there specify the directory that=
 you want to use as=20
your sysroot that contains your target dev libs and headers.=A0 For the=20
example that I use, I&#39;d specify /home/jzhang/qemu-arm there...the=20
environment-setup-armv5te-poky-linux file will be used by the IDE but mainl=
y for=20
the path part to locat the cross toolchain...</font></span></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font face=3D"Tahoma" size=3D"2"><b>From:</b> Murilo Travaglia=20
[mailto:<a href=3D"mailto:murilo.travaglia@phiinnovations.com" target=3D"_b=
lank">murilo.travaglia@phiinnovations.com</a>] <br><b>Sent:</b> Tuesday, Ap=
ril 05,=20
2011 2:37 PM<br><b>To:</b> Zhang, Jessica<br><b>Cc:</b>=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> Re: [yocto] Cross Compiled=20
Project<br></font><br></div><div><div></div><div class=3D"h5">
<div></div>Hello Jessica,<br><br>I&#39;m using Eclipse IDE plugin. This fie=
ld called=20
sysroot is in the file environment-setup-my-toolchain?<br><br>In this file =
I can=20
the variables:=20
<br><br>PKG_CONFIG_SYSROOT_DIR<br>POKY_NATIVE_SYSROOT<br>POKY_TARGET_SYSROO=
T<br><br>Thanks=20
for the prompt reply! =3D]<br><br>Regards,<br><br>
<div class=3D"gmail_quote">On Tue, Apr 5, 2011 at 6:26 PM, Zhang, Jessica <=
span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_=
blank">jessica.zhang@intel.com</a>&gt;</span>=20
wrote:<br>
<blockquote style=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt=
 0pt 0pt 0.8ex; padding-left: 1ex;" class=3D"gmail_quote">
  <div>
  <div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Ari=
al" size=3D"2">There&#39;re 2=20
  main parts for cross development, at least if you want to use Yocto ADT s=
etup,=20
  one is the cross toolchain, the other is the sysroot, which contains targ=
et=20
  development library and headers.=A0 For Yocto sample settings, we use qem=
u=20
  rootfs to setup the sysroot.=A0 For your case (arm) when you bitbake=20
  poky-image-sato-sdk, it&#39;ll generate a file called=20
  yocto-image-sato-sdk-qemuarm-1.0.rootfs.tar.bz2, and by using poky-extrac=
t-sdk=20
  script to extract that file under a specified directory, e.g.=20
  $HOME/qemu-arm.=A0 Then for your case, you need to create the sysroot=20
  directory that contains the target libs and pass that in through --sysroo=
t=20
  option.=A0 If you&#39;re using our Eclipse IDE plug-in, there&#39;s field=
 called=20
  sysroot that you must setup...</font></span></div>
  <div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Ari=
al" size=3D"2"></font></span>=A0</div>
  <div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Ari=
al" size=3D"2">Thanks,</font></span></div>
  <div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Ari=
al" size=3D"2">Jessica</font></span></div><br>
  <div dir=3D"ltr" lang=3D"en-us" align=3D"left">
  <hr>
  <font face=3D"Tahoma" size=3D"2"><b>From:</b> <a href=3D"mailto:yocto-bou=
nces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>=
 [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank=
">yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Murilo=20
  Travaglia<br><b>Sent:</b> Tuesday, April 05, 2011 2:01 PM<br><b>To:</b> <=
a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br><b>Subject:</b> [yocto] Cross=20
  Compiled Project<br></font><br></div>
  <div>
  <div></div>
  <div>
  <div></div>Hi all,<br><br><br>I&#39;m trying to use my own toolchain to d=
evelop=20
  and debug my application. I made some changes in the file=20
  environment-setup-my-toolchain (file used in SDK Mode to configure the=20
  environment) to link the compiler, gdb,etc to my own toolchain. Making a=
=20
  &quot;Reconfigure Project&quot; or &quot;Build Project&quot; I can see th=
at my own toolchain is=20
  used.=A0 =3D]<br><br>The problem is that I couldn&#39;t see where I have =
to make=20
  the modifications to get the specific libraries for the target architectu=
re,=20
  e.g: if I&#39;LL develop an application to ARM architecture, where I have=
 to make=20
  modifications to use the libs (/lib, usr/lib) of the target architecture=
=20
  (ARM). Is this possible in the Yocto Project?<br><br>Thanks in=20
  advance!<br><br>Best regards!=A0 <br clear=3D"all"><br>-- <br>Murilo Marq=
ues=20
  Travaglia<br>Phi=20
Innovations<br><br><br><br></div></div></div></blockquote></div><br><br cle=
ar=3D"all"><br>-- <br>Murilo Marques Travaglia<br>Phi=20
Innovations<br><br><br><br></div></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Murilo Marques Travagli=
a<br>Phi Innovations<br><br><br><br>

--000e0cd56e62d5ba2404a055074a--
