Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D5FEE017BD
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 20:51:34 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id at1so4049061iec.29
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 20:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1oAzbf5zh2eensU5AMjQxSrKCgekr/HlRbLxDE3rucg=;
	b=gfUqqeEdb+/fqeRYJtxgH0lI1IpFDgjsWChn5uRcExiDsl3L2hnZlIEX0tEe7mPkuu
	QfmcIuc1FLqdcAFS6WdieLj74I3mCA0TGSJkox3lMs4E9P9p4Y27ZSCqGRL8KZA9Hsa2
	QgkIC+i9tLvqAqI2fCaNAK0bYFN6lZJN40em/GlA9En3BWrEutHw+8RMtHxJbB+Qv4kk
	DErYGMVDvvS+DemFi0R1FMCABuHUfFQRtTzqbAlgVs3/jI5qkD/O2d5T9hfv+PWFQNXL
	lw2Eyq7GZnVdw8CsSiv53Lp1Z4F23Q5yehSuF28hZPEIYpF2tVbXVX4sg3V90GqcxeUu
	3tTg==
X-Received: by 10.50.17.9 with SMTP id k9mr714785igd.3.1383191493954; Wed, 30
	Oct 2013 20:51:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 20:51:03 -0700 (PDT)
In-Reply-To: <CAKS01om711126d3NV4t9qVJ_H7oXF=hsjBjm=yZ5wP2awC4Vgg@mail.gmail.com>
References: <CAKS01om711126d3NV4t9qVJ_H7oXF=hsjBjm=yZ5wP2awC4Vgg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 20:51:03 -0700
Message-ID: <CAMKF1sr=UF4_HHb_Z0cyZYLwJxxg4R_+iUL_XN-fY7wVQNob3w@mail.gmail.com>
To: Anup Kini <akini@synapticon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: core-image-minimal-dev - linker error : cannot find -lc
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
X-List-Received-Date: Thu, 31 Oct 2013 03:51:37 -0000
Content-Type: multipart/alternative; boundary=089e01182a34a7543a04ea015d63

--089e01182a34a7543a04ea015d63
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2013 at 6:07 AM, Anup Kini <akini@synapticon.com> wrote:

> Hi All,
>
> I am trying to compile a c program on core-image-minimal-dev but en up
> with the following error.
> Kindly let me know if i need to include any additional packages in order
> to be able to compile c programs on the image.
>
> /usr/lib/gcc/arm-poky-linux-gnueabi/4.8.1/../../../../arm-poky-linux-gnue=
abi/bin/ld:
> cannot find -lc
> collect2: error: ld returned 1 exit status
> make: *** [all] Error 1
>


=E2=80=8BIt seems you are compiling on target. Make sure that you have 'too=
ls-sdk'
packagegroup added to your image =E2=80=8Bvia IMAGE_FEATURES



>
>
> Build Configuration:
> BB_VERSION           =3D "1.20.0"
> BUILD_SYS               =3D "x86_64-linux"
> NATIVELSBSTRING  =3D "Ubuntu-12.04"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE                  =3D "zc702-zynq7"
> DISTRO                     =3D "poky"
> DISTRO_VERSION    =3D "1.5"
> TUNE_FEATURES     =3D " armv7a vfp neon zynq"
> TARGET_FPU           =3D "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "origin/dylan:e7a20238dc73bb449f15feaf0dead51daf796=
184"
> meta-oe           =3D "origin/dylan:8aafddccb03f54923927e9d1c8c80223baf58=
1de"
> meta-xilinx       =3D
> "remotes/origin/dylan:21c3cd3f058d736742ebc23a7a954f23456fbea5"
> meta-java         =3D "master:de06956f93ecd15d8c941a05da47a4425e3d397a"
>
>
>
> --
>
> *Anup Kini
> *Systems Engineer****
> *
> ------------------------------
> *
>
> *Synapticon** * |  Cyber-Physical System Solutions ****
>
> Mobile:
>
> Direct:
>
> +49 151 / 638 646 73
>
> +49 7335 / 186 999 21
>
> Fax:****
> +49 7335 / 186 999 1
>
>
>  **
>
>  ****
>
> synapticon.com <http://www.synapticon.com/>  |  @synapticon_co<https://tw=
itter.com/#!/synapticon_co>
> ****
>
> Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
> Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
> Registry Court Ulm HRB 725114  |  USt-ID DE271647127****
>
> This message and any files transmitted with it are confidential and
> intended
> solely for the use of the individual or entity to whom they are addressed=
.
> Please notify the sender immediately if you have received this e-mail by
> mistake and delete it from your system.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e01182a34a7543a04ea015d63
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;cou=
rier new&#39;,monospace;font-size:small"><br></div><div class=3D"gmail_extr=
a"><br><br><div class=3D"gmail_quote">On Thu, Oct 24, 2013 at 6:07 AM, Anup=
 Kini <span dir=3D"ltr">&lt;<a href=3D"mailto:akini@synapticon.com" target=
=3D"_blank">akini@synapticon.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">Hi All,<div><br></div><div>I am trying to=
 compile a c program on core-image-minimal-dev but en up with the following=
 error.</div>

<div>Kindly let me know if i need to include any additional packages in ord=
er to be able to compile c programs on the image.</div>
<div><div><br></div><div>/usr/lib/gcc/arm-poky-linux-gnueabi/4.8.1/../../..=
/../arm-poky-linux-gnueabi/bin/ld: cannot find -lc</div><div>collect2: erro=
r: ld returned 1 exit status</div><div>make: *** [all] Error 1</div></div>

</div></blockquote><div><br></div><div><br></div><div><div class=3D"gmail_d=
efault"><span style=3D"font-family:&#39;courier new&#39;,monospace;font-siz=
e:small">=E2=80=8BIt seems you are compiling on target. Make sure that you =
have &#39;tools-sdk&#39; packagegroup added to your image=C2=A0</span><font=
 face=3D"courier new, monospace">=E2=80=8Bvia IMAGE_FEATURES</font></div>

<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div><div>
<br></div><div><br></div><div><div>Build Configuration:</div><div>BB_VERSIO=
N =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.20.0&quot;</div><div>BUILD=
_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linu=
x&quot;</div><div>NATIVELSBSTRING =C2=A0=3D &quot;Ubuntu-12.04&quot;</div>


<div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux=
-gnueabi&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;zc702-zynq7&quot;</div><div>DISTRO =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&=
quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5&quot;</div>


<div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot; armv7a vfp neon zynq&quot;</div=
><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp-neon&quot=
;</div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div=
>meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto-bsp =C2=A0 =C2=
=A0=3D &quot;origin/dylan:e7a20238dc73bb449f15feaf0dead51daf796184&quot;</d=
iv>


<div>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;origin/dylan:8aaf=
ddccb03f54923927e9d1c8c80223baf581de&quot;</div><div>meta-xilinx =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;remotes/origin/dylan:21c3cd3f058d736742ebc23a7a954f234=
56fbea5&quot;</div><div>meta-java =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;mas=
ter:de06956f93ecd15d8c941a05da47a4425e3d397a&quot;</div>


<div><br></div></div><div><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr"><p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,s=
ans-serif;margin:0px"><b><span style=3D"font-size:10pt;font-family:Arial,sa=
ns-serif" lang=3D"EN-US">Anup Kini<br>


</span></b><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></p><div style=3D"text-align:center;color:rgb(34,34,34);font-size:13px;fon=
t-family:arial,sans-serif;margin:0px" align=3D"center">


<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S"><hr align=3D"center" size=3D"2" width=3D"100%"></span></b></div><p style=
=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif;margin:=
0px 0px 8pt">


<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S">Synapticon</span></b><b><span style=3D"font-size:12pt;font-family:&#39;T=
imes New Roman&#39;,serif" lang=3D"EN-US">=C2=A0</span></b><span style=3D"f=
ont-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=C2=A0|=C2=A0=C2=
=A0</span><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Cyber-Physical System Solutions</span><span style=3D"font-size:1=
0pt;font-family:Verdana,sans-serif" lang=3D"EN-US">=C2=A0</span><span lang=
=3D"EN-US"><u></u><u></u></span></p>


<table style=3D"border-collapse:collapse;text-align:start;color:rgb(34,34,3=
4);font-size:13px;font-family:arial,sans-serif" border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0"><tbody><tr><td style=3D"margin:0px;width:42.55pt;padd=
ing:0cm 5.4pt 0cm 0cm" valign=3D"top" width=3D"57">


<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US">Mobile:</span></p><p style=3D"margin:0px"><span sty=
le=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Direct:</=
span></p>


</td><td style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D=
"top" width=3D"227"><p style=3D"margin:0px"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif" lang=3D"EN-US"><a value=3D"+49733518699917" st=
yle=3D"color:rgb(17,85,204)">+49 151 / 638 646 73</a></span></p>


<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US"><a value=3D"+49733518699917" style=3D"color:rgb(17,=
85,204)">+49 7335 / 186 999 21<br></a></span></p></td></tr><tr><td style=3D=
"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=
=3D"57">


<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US">Fax:</span><span lang=3D"EN-US"><u></u><u></u></spa=
n></p></td><td style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" val=
ign=3D"top" width=3D"227">


<a value=3D"+4973351869991" style=3D"color:rgb(17,85,204)">+49 7335 / 186 9=
99 1</a></td></tr><tr><td style=3D"margin:0px;width:42.55pt;padding:0cm 5.4=
pt 0cm 0cm" valign=3D"top" width=3D"57"><p style=3D"margin:0px"><span style=
=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US"><br>


</span></p><p style=3D"margin:0px"><span style=3D"font-size:6pt;font-family=
:Arial,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u></p></td><td style=3D=
"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=3D"22=
7"><p style=3D"margin:0px">


<span style=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p></td></tr></tbody></table><p style=3D"color:=
rgb(34,34,34);font-size:13px;font-family:arial,sans-serif;margin:0px 0px 8p=
t">
<span style=3D"font-size:10pt;font-family:Arial,sans-serif"><a href=3D"http=
://www.synapticon.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">sy=
napticon.com</a>=C2=A0=C2=A0| =C2=A0<a href=3D"https://twitter.com/#!/synap=
ticon_co" style=3D"color:rgb(17,85,204)" target=3D"_blank">@synapticon_co</=
a></span><u></u><u></u></p>


<p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif=
;margin:0px 0px 8pt"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">Synapticon GmbH =C2=A0|=C2=A0 Hohlbachweg 2=C2=
=A0 | =C2=A073344 Gruibingen, DE<br>


Secretary=C2=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+=
49 7335 / 186 999 0</a>=C2=A0 |=C2=A0 General Manager: Nikolai Ensslen=C2=
=A0<br>Registry Court Ulm HRB 725114=C2=A0 |=C2=A0 USt-ID DE271647127</span=
><u></u><u></u></p><p style=3D"color:rgb(34,34,34);font-size:13px;font-fami=
ly:arial,sans-serif;margin:0px 0px 8pt">


<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127=
,127)" lang=3D"EN-US">This message and any files transmitted with it are co=
nfidential and intended=C2=A0</span><span style=3D"font-size:8pt;font-famil=
y:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>


</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">solely for the use of the individual or entity=
 to whom they are addressed.=C2=A0</span><span style=3D"font-size:8pt;font-=
family:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>


</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">Please notify the sender immediately if you ha=
ve received this e-mail by=C2=A0</span><span style=3D"font-size:8pt;font-fa=
mily:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>


</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">mistake and delete it from your system.=C2=A0<=
/span></p></div>
</div></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--089e01182a34a7543a04ea015d63--
