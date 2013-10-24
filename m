Return-Path: <akini@synapticon.com>
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AD10E0175F
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 06:07:14 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id gx14so1890783lab.27
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 06:07:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=g+YLM6s0fQlJoOh9OHFcDh3h2cmCwd/nWmFPojA5q+0=;
	b=cD0C2KsV9oyOnP7ChaNfM5UrAAbTpvNeykPIvgBx+ZvaiNd6+OFgcF0nmvIC9DPBTe
	1KBynk/e6rTTBO94HfmYrXwYQ2a0vnVAvtfjbf5nMB/OEujzCGBOUDIoGr13ELPHZulI
	dc5Oty8PEt3CVW/ox4yx/R5KcF4udHny8Z/ZsM52n7fidpVNBzROGDhLplhymme3JYkl
	TW4RzfNj3DiZeMYkukzdTFJzpFx6GsgfqXKv2n4Kof5wrBpAASdVOeE08cy7IgarNxsy
	lrKvwR6bGoFI4MvVxMNc0BN70/I0gXihIWDgY6F1vi3EApBulyJNJkUSmsF0elHu0MVC
	NqPw==
X-Gm-Message-State: ALoCoQkHPJORK4DJnSTX2XbkX1rJhEwJaSW1QFRv8au4j5KALtNMOp1L2Z+Y/M8dlPNAyanZ9jiN
MIME-Version: 1.0
X-Received: by 10.112.149.197 with SMTP id uc5mr1836140lbb.19.1382620033698;
	Thu, 24 Oct 2013 06:07:13 -0700 (PDT)
Received: by 10.114.3.8 with HTTP; Thu, 24 Oct 2013 06:07:13 -0700 (PDT)
Date: Thu, 24 Oct 2013 15:07:13 +0200
Message-ID: <CAKS01om711126d3NV4t9qVJ_H7oXF=hsjBjm=yZ5wP2awC4Vgg@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: yocto@yoctoproject.org
Subject: core-image-minimal-dev - linker error : cannot find -lc
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
X-List-Received-Date: Thu, 24 Oct 2013 13:07:15 -0000
Content-Type: multipart/alternative; boundary=047d7b343cd2f7e3c704e97c4f30

--047d7b343cd2f7e3c704e97c4f30
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I am trying to compile a c program on core-image-minimal-dev but en up with
the following error.
Kindly let me know if i need to include any additional packages in order to
be able to compile c programs on the image.

/usr/lib/gcc/arm-poky-linux-gnueabi/4.8.1/../../../../arm-poky-linux-gnueabi/bin/ld:
cannot find -lc
collect2: error: ld returned 1 exit status
make: *** [all] Error 1


Build Configuration:
BB_VERSION           = "1.20.0"
BUILD_SYS               = "x86_64-linux"
NATIVELSBSTRING  = "Ubuntu-12.04"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE                  = "zc702-zynq7"
DISTRO                     = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU           = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "origin/dylan:e7a20238dc73bb449f15feaf0dead51daf796184"
meta-oe           = "origin/dylan:8aafddccb03f54923927e9d1c8c80223baf581de"
meta-xilinx       =
"remotes/origin/dylan:21c3cd3f058d736742ebc23a7a954f23456fbea5"
meta-java         = "master:de06956f93ecd15d8c941a05da47a4425e3d397a"



-- 

*Anup Kini
*Systems Engineer****
*
------------------------------
*

*Synapticon** * |  Cyber-Physical System Solutions ****

Mobile:

Direct:

+49 151 / 638 646 73

+49 7335 / 186 999 21

Fax:****
+49 7335 / 186 999 1


 **

 ****

synapticon.com <http://www.synapticon.com/>  |
@synapticon_co<https://twitter.com/#!/synapticon_co>
****

Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
Registry Court Ulm HRB 725114  |  USt-ID DE271647127****

This message and any files transmitted with it are confidential and
intended
solely for the use of the individual or entity to whom they are addressed.
Please notify the sender immediately if you have received this e-mail by
mistake and delete it from your system.

--047d7b343cd2f7e3c704e97c4f30
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am trying to compile a c prog=
ram on core-image-minimal-dev but en up with the following error.</div><div=
>Kindly let me know if i need to include any additional packages in order t=
o be able to compile c programs on the image.</div>
<div><div><br></div><div>/usr/lib/gcc/arm-poky-linux-gnueabi/4.8.1/../../..=
/../arm-poky-linux-gnueabi/bin/ld: cannot find -lc</div><div>collect2: erro=
r: ld returned 1 exit status</div><div>make: *** [all] Error 1</div><div>
<br></div><div><br></div><div><div>Build Configuration:</div><div>BB_VERSIO=
N =A0 =A0 =A0 =A0 =A0 =3D &quot;1.20.0&quot;</div><div>BUILD_SYS =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =
=A0=3D &quot;Ubuntu-12.04&quot;</div>
<div>TARGET_SYS =A0 =A0 =A0 =A0 =A0 =3D &quot;arm-poky-linux-gnueabi&quot;<=
/div><div>MACHINE =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;zc702-zynq7&=
quot;</div><div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =3D &quot;po=
ky&quot;</div><div>DISTRO_VERSION =A0 =A0=3D &quot;1.5&quot;</div>
<div>TUNE_FEATURES =A0 =A0 =3D &quot; armv7a vfp neon zynq&quot;</div><div>=
TARGET_FPU =A0 =A0 =A0 =A0 =A0 =3D &quot;vfp-neon&quot;</div><div>meta =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta=
-yocto-bsp =A0 =A0=3D &quot;origin/dylan:e7a20238dc73bb449f15feaf0dead51daf=
796184&quot;</div>
<div>meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;origin/dylan:8aafddccb03f5492392=
7e9d1c8c80223baf581de&quot;</div><div>meta-xilinx =A0 =A0 =A0 =3D &quot;rem=
otes/origin/dylan:21c3cd3f058d736742ebc23a7a954f23456fbea5&quot;</div><div>=
meta-java =A0 =A0 =A0 =A0 =3D &quot;master:de06956f93ecd15d8c941a05da47a442=
5e3d397a&quot;</div>
<div><br></div></div><div><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr"><p style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:13px;background-color:rgb(255,255,255)"><b><span style=3D"f=
ont-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Anup Kini<br>
</span></b><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></p><div style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255);text-align:center" ali=
gn=3D"center">
<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S"><hr align=3D"center" size=3D"2" width=3D"100%"></span></b></div><p style=
=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:13px;background-color:rgb(255,255,255)">
<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S">Synapticon</span></b><b><span style=3D"font-size:12pt;font-family:&#39;T=
imes New Roman&#39;,serif" lang=3D"EN-US">=A0</span></b><span style=3D"font=
-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=A0|=A0=A0</span><s=
pan style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Cy=
ber-Physical System Solutions</span><span style=3D"font-size:10pt;font-fami=
ly:Verdana,sans-serif" lang=3D"EN-US">=A0</span><span lang=3D"EN-US"><u></u=
><u></u></span></p>
<table style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
13px;text-align:start;background-color:rgb(255,255,255);border-collapse:col=
lapse" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbody><tr><td styl=
e=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" wid=
th=3D"57">
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
:Arial,sans-serif" lang=3D"EN-US">=A0</span><u></u></p></td><td style=3D"ma=
rgin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=3D"227">=
<p style=3D"margin:0px">
<span style=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US">=
=A0</span><u></u><u></u></p></td></tr></tbody></table><p style=3D"margin:0p=
x 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;b=
ackground-color:rgb(255,255,255)">
<span style=3D"font-size:10pt;font-family:Arial,sans-serif"><a href=3D"http=
://www.synapticon.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">sy=
napticon.com</a>=A0=A0| =A0<a href=3D"https://twitter.com/#!/synapticon_co"=
 style=3D"color:rgb(17,85,204)" target=3D"_blank">@synapticon_co</a></span>=
<u></u><u></u></p>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif;color:rgb(127,127,127)">Synapticon G=
mbH =A0|=A0 Hohlbachweg 2=A0 | =A073344 Gruibingen, DE<br>
Secretary=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+49 =
7335 / 186 999 0</a>=A0 |=A0 General Manager: Nikolai Ensslen=A0<br>Registr=
y Court Ulm HRB 725114=A0 |=A0 USt-ID DE271647127</span><u></u><u></u></p><=
p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255)">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127=
,127)" lang=3D"EN-US">This message and any files transmitted with it are co=
nfidential and intended=A0</span><span style=3D"font-size:8pt;font-family:V=
erdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">solely for the use of the individual or entity=
 to whom they are addressed.=A0</span><span style=3D"font-size:8pt;font-fam=
ily:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">Please notify the sender immediately if you ha=
ve received this e-mail by=A0</span><span style=3D"font-size:8pt;font-famil=
y:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">mistake and delete it from your system.=A0</sp=
an></p></div>
</div></div></div>

--047d7b343cd2f7e3c704e97c4f30--
