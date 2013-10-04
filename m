Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D681CE016B2
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 05:46:11 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id ar20so9006186iec.32
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 05:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=ajEyUFjk/b2vEjNiXmebLbHPPLqMkvjIX/RC1/uvprI=;
	b=AnWJwwcShyBxCYs3E/7CliHLu5xk4zU9SDKOSAl6vbU66nLMiqtVzFSE57biL5W19s
	A+KXohvCkUvXKO+CJ4R9D8er47gxohcZ3M+twy7Vcj0OLN0CtFeAS6utRdg0UKfEM40M
	MFlD0pjm/s0k1xbGFUSBrVCrEjHN06fhkRjSo5LpbhCwytuSMJ+FKwzFzvBUCWApSAwP
	BzJcRPfdeK16iM+Ji2MeKxyv/YIexDThaIIev5N90m9X2hyiPo3gAmJFr+d2YtHpBHtC
	pD17r2R12f+3DROPcZZTyodd5QdYy7ncJQmfK+wX7JaHMnCaYaNSws8lbb/Sc18OXFi6
	6raw==
X-Received: by 10.42.89.134 with SMTP id g6mr8816825icm.8.1380890770381; Fri,
	04 Oct 2013 05:46:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Fri, 4 Oct 2013 05:45:50 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 4 Oct 2013 09:45:50 -0300
Message-ID: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-toolchain-qt with Qt Creator
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
X-List-Received-Date: Fri, 04 Oct 2013 12:46:14 -0000
Content-Type: multipart/alternative; boundary=90e6ba539e70d7a39a04e7e9affb

--90e6ba539e70d7a39a04e7e9affb
Content-Type: text/plain; charset=ISO-8859-1

Folks,

After a lots of internet search, including this ML threads, i did not find
any solution for this.

I'm having issues to integrate meta-toolchain-qt and meta-toolchain-qte
with Qt Creator 2.8.1.
I'm using this environment:

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.2"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "dylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29"
meta-ti           = "dylan:24edd661d5e8fce3689bdd2c89e0105af8080152"


When I configure the qmake path on Qt Creator I get the following message:

"Qt version is not properly installed please run make install"


I've tried on dylan branch too, but no success.

So, I tried to use Angstrom's setup-scripts on angstrom-v2013.06-yocto1.4
branch. And it came with the issue related with "error while loading shared
libraries: __vdso_time: invalid mode for dlopen(): Invalid argument". So, I
switched to Fedora 19 and it has gone, but the invalid Qt version problem
remains.

I tried, without success, to compile by myself the
qt-everywhere-opensource-src-4.8
these toolchains:

angstrom-eglibc-x86_64-cortexa8hf-vfp-neon-toolchain-qte-v2013.06
poky-eglibc-x86_64-arm-toolchain-qte-1.4.2


If someone could successfully use meta-toolchain-qte with Qt Creator,
please point me the right directions to achieve this.

I really need some help to get a qt4-embedded toolchain working.

Kind Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--90e6ba539e70d7a39a04e7e9affb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>After a lots of internet s=
earch, including this ML threads, i did not find any solution for this.</di=
v><div style><br></div><div style>I&#39;m having issues to integrate meta-t=
oolchain-qt and=A0meta-toolchain-qte with Qt Creator 2.8.1.</div>

<div style>I&#39;m using this environment:</div><div style><blockquote styl=
e=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div style><div>Build=
 Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<=
/div><div>

BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBS=
TRING =A0 =3D &quot;Ubuntu-12.10&quot;</div><div>TARGET_SYS =A0 =A0 =A0 =A0=
=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =A0 =A0 =A0 =A0 =
=A0 =3D &quot;beaglebone&quot;</div>

<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.4.2&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quo=
t;armv7a vfp neon&quot;</div><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-n=
eon&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-yocto-bsp =A0 =A0=3D &quot;d=
ylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29&quot;</div><div>meta-ti =A0 =
=A0 =A0 =A0 =A0 =3D &quot;dylan:24edd661d5e8fce3689bdd2c89e0105af8080152&qu=
ot;</div></div></blockquote>

</div><div style><br></div><div style>When I configure the qmake path on Qt=
 Creator I get the following message:</div><div style><blockquote style=3D"=
margin:0px 0px 0px 40px;border:none;padding:0px"><div style>&quot;Qt versio=
n is not properly installed please run make install&quot;</div>

</blockquote></div><div style><br></div><div style>I&#39;ve tried on dylan =
branch too, but no success.</div><div style><br></div><div style>So, I trie=
d to use Angstrom&#39;s setup-scripts on=A0angstrom-v2013.06-yocto1.4 branc=
h. And it came with the issue related with &quot;<span style=3D"background-=
color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,free=
sans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px">erro=
r while loading shared libraries: __vdso_time: invalid mode for dlopen(): I=
nvalid argument&quot;. So, I switched to Fedora 19 and it has gone, but the=
 invalid Qt version problem remains.</span></div>

<div style><span style=3D"background-color:rgb(251,251,251);color:rgb(51,51=
,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.727=
272033691406px;line-height:20px"><br></span></div><div style><span style=3D=
"background-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetic=
a,arial,freesans,clean,sans-serif;font-size:12.727272033691406px;line-heigh=
t:20px">I tried, without success, to compile by myself the=A0</span><font c=
olor=3D"#333333" face=3D"Helvetica, arial, freesans, clean, sans-serif"><sp=
an style=3D"line-height:20px">qt-everywhere-opensource-src-4.8 these toolch=
ains:</span></font></div>

<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div =
style><font color=3D"#333333" face=3D"Helvetica, arial, freesans, clean, sa=
ns-serif"><span style=3D"line-height:20px">angstrom-eglibc-x86_64-cortexa8h=
f-vfp-neon-toolchain-qte-v2013.06</span><br>

</font></div><div style><span style=3D"line-height:20px;color:rgb(51,51,51)=
;font-family:Helvetica,arial,freesans,clean,sans-serif">poky-eglibc-x86_64-=
arm-toolchain-qte-1.4.2</span><br></div></blockquote><font color=3D"#333333=
" face=3D"Helvetica, arial, freesans, clean, sans-serif"><span style=3D"lin=
e-height:20px"><div style>

<br></div></span></font><div style>If someone could=A0successfully use meta=
-toolchain-qte with Qt Creator, please point me the right directions to ach=
ieve this.=A0</div><div style><br></div><div style><span style=3D"backgroun=
d-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,fr=
eesans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px">I =
really need some help to get a qt4-embedded toolchain working.</span><br>

</div><div style><span style=3D"background-color:rgb(251,251,251);color:rgb=
(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:=
12.727272033691406px;line-height:20px"><br></span></div><div style>Kind Reg=
ards,<br>

</div><div><div><div dir=3D"ltr"><div><br></div>--<br>*dS<br>Diego Sueiro<b=
r><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--90e6ba539e70d7a39a04e7e9affb--
