Return-Path: <akini@synapticon.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02873E002AC
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 05:17:13 -0800 (PST)
Received: by mail-la0-f41.google.com with SMTP id hp15so4857048lab.14
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 05:17:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=LAjMsL3yw9tRsXcMi/0BdCt8aOOOoM8Tu/4s/KEsUAg=;
	b=fWCEMaSvWCa1FBAL+1c46dNOOrtn6+3T0YXxbGxFiDykZ1TCYMYDWj9GkOVJohBF2m
	t0Zm1QTtqu0DOhYZ9PiVWCbGy+ZVRBgqICLgZGXdGHJij4fyXvN+1J2piF0dLaSDVE1d
	39f1lqGTOEMA0f2zxddxwc127oo5zbpWNNMcqtD8kqQXTsj3O6a3iBahmisyp9dPRdXF
	tiX4b7pdU7C9AJPeZmpZD1TksPfyj9lb1k0rADWMtWpJ/j7FR3/ct8UjoAQzIKZcgh96
	Kp5Woy0xsyObri9unc99ZafekOqCGkqCfedq5th2+ZcAY6io1EvDgWmqev9wnK79Rrhy
	6mJA==
X-Gm-Message-State: ALoCoQk8fKthgwFbCDiB0v9KXnp201ZMoCDuhn4RL2VsRY4gwFonwoulQMNGHNbG4J/CGrNkPDOd
MIME-Version: 1.0
X-Received: by 10.152.10.99 with SMTP id h3mr14575044lab.13.1384780631579;
	Mon, 18 Nov 2013 05:17:11 -0800 (PST)
Received: by 10.114.92.194 with HTTP; Mon, 18 Nov 2013 05:17:11 -0800 (PST)
Date: Mon, 18 Nov 2013 14:17:11 +0100
Message-ID: <CAKS01okasBL7vXEphr15HxzoDFnnUgouisqQhHOe8=LPLivVqA@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: yocto@yoctoproject.org
Subject: trouble having two toolchain in a single image.
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
X-List-Received-Date: Mon, 18 Nov 2013 13:17:14 -0000
Content-Type: multipart/alternative; boundary=001a1132f26aa343bc04eb735d38

--001a1132f26aa343bc04eb735d38
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I am trying to install two different toolchain in the same image using
Yocto Poky.
I already built the core-image-minimal which has gcc-4.8 installed in the
image.
When i try to install the second toolchain i get the following message:

The recipe epiphany-gcc is trying to install files into a shared area when
those files already exist. Those files and their manifest location are:

 /home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/g++-symlinks
   Matched in manifest-zc702-zynq7-gcc.packagedata

 /home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/cpp-symlinks
   Matched in manifest-zc702-zynq7-gcc.packagedata

 /home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/gcov
   Matched in manifest-zc702-zynq7-gcc.packagedata

 /home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/gfortran
   Matched in manifest-zc702-zynq7-gcc.packagedata

 /home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/cpp
   Matched in manifest-zc702-zynq7-cpp-common.packagedata



Can i use update-alternative here ?
Kindly let me know how or any example i can look up and realize this.



-- 


*Anup Kini*Systems Engineer
*------------------------------*

*Synapticon*  |  Cyber-Physical System Solutions

Mobile:

Direct:

+49 151 / 638 646 73

+49 7335 / 186 999 21

Fax:
+49 7335 / 186 999 1






synapticon.com <http://www.synapticon.com/>  |
@synapticon_co<https://twitter.com/#!/synapticon_co>

Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
Registry Court Ulm HRB 725114  |  USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended
solely for the use of the individual or entity to whom they are addressed.
Please notify the sender immediately if you have received this e-mail by
mistake and delete it from your system.

--001a1132f26aa343bc04eb735d38
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am trying to install two diff=
erent toolchain in the same image using Yocto Poky.</div><div>I already bui=
lt the core-image-minimal which has gcc-4.8 installed in the image.<br></di=
v>
<div>When i try to install the second toolchain i get the following message=
:<br></div><div><br><div><div>The recipe epiphany-gcc is trying to install =
files into a shared area when those files already exist. Those files and th=
eir manifest location are:</div>
<div>=A0 =A0/home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime=
-reverse/g++-symlinks</div><div>=A0 =A0Matched in manifest-zc702-zynq7-gcc.=
packagedata</div><div>=A0 =A0/home/akini/poky/build/tmp/sysroots/zc702-zynq=
7/pkgdata/runtime-reverse/cpp-symlinks</div>
<div>=A0 =A0Matched in manifest-zc702-zynq7-gcc.packagedata</div><div>=A0 =
=A0/home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/=
gcov</div><div>=A0 =A0Matched in manifest-zc702-zynq7-gcc.packagedata</div>=
<div>=A0 =A0/home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime=
-reverse/gfortran</div>
<div>=A0 =A0Matched in manifest-zc702-zynq7-gcc.packagedata</div><div>=A0 =
=A0/home/akini/poky/build/tmp/sysroots/zc702-zynq7/pkgdata/runtime-reverse/=
cpp</div><div>=A0 =A0Matched in manifest-zc702-zynq7-cpp-common.packagedata=
</div></div>
<div><br></div><div><br></div><div><br></div><div>Can i use update-alternat=
ive here ?</div><div>Kindly let me know how or any example i can look up an=
d realize this.</div><div><br></div><div><br clear=3D"all"><div><br></div>
-- <br><div dir=3D"ltr"><p style=3D"margin:0px;color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255)"><b><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">A=
nup Kini<br>
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

--001a1132f26aa343bc04eb735d38--
