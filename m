Return-Path: <akini@synapticon.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07937E016BD
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 00:44:25 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id ev20so5136401lab.39
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2013 00:44:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=k8acREA+xlmjyOlZHj3P7Disw/AiUQjH4QtQFUXV7+k=;
	b=ikNO+8Upt2ZZ/5i28gUt3q/hrbfmooqxTdZPoppory7w66JcmAosH/248p8PL8EtQx
	qqQVI5Raf3k5auy2e+rYACHgaDBT/z8Cu1YEjkEM74IfyVeK2whvnMHFTxhDcyz386/1
	nTJnPio52G/2JBpvvFpSjLDYMuCAxsHE0uDQcczXUCkqUuLATAl/68OAguSU3tPIT8Jk
	7gmCBZd64SCzo8vd9WfZ8a2i/kW1y223GlL48O8iyjrP74G0saPxJbWjpoWPKhC6nHPv
	ikCI9ZSS9roTxqsxz2CelfaZcjyR50CPCnIhAFgq/tfFI84EkbCJCAqw0e+wApUAMmD2
	IeuQ==
X-Gm-Message-State: ALoCoQkDEpjUmop0eb3ENBYwM3byAUcHsnKeebQzh5EzG3Zhz45LEfDfPhx6j55KSJFnmrMSyzF+
MIME-Version: 1.0
X-Received: by 10.152.28.105 with SMTP id a9mr337534lah.41.1381131863578; Mon,
	07 Oct 2013 00:44:23 -0700 (PDT)
Received: by 10.114.3.8 with HTTP; Mon, 7 Oct 2013 00:44:23 -0700 (PDT)
Date: Mon, 7 Oct 2013 09:44:23 +0200
Message-ID: <CAKS01omrgMMCSPe_9Dr6ZkvewaMqcDxLisnz5O+FA8Y9qnNF3A@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: yocto@yoctoproject.org
Subject: QA issue : bad RPATH error with runtime dependencies of package PCL
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
X-List-Received-Date: Mon, 07 Oct 2013 07:44:27 -0000
Content-Type: multipart/alternative; boundary=089e0160a2401de63b04e821d29e

--089e0160a2401de63b04e821d29e
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I am trying to build a recipe for PCL library, similar to the one that
Lukas [1] has derived but for a older version because of some dependencies
with other packages and support for ARM platform.

1.
https://github.com/bulwahn/meta-ros/commit/2c1fb8dbc46f8bc3f3fe58fbdfb7b2c8f244431a

I am using PCL 1.6 instead of PCL 1.7 as used by Lukas.

When i try to include the package in the image (rootfs) i get the following
error message:
ERROR: QA Issue: libpcl: Files/directories were installed but not shipped
  /usr/share
  /usr/share/pcl-1.6
  /usr/share/pcl-1.6/PCLConfigVersion.cmake
  /usr/share/pcl-1.6/PCLConfig.cmake
ERROR: QA Issue: package libpcl contains bad RPATH
/usr/lib:/home/akini/poky/build/tmp/sysroots/zc702-zynq7/usr/lib/vtk-5.8 in
file
/home/akini/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcl/1.6.0-r0/packages-split/libpcl/usr/bin/pcl_ply2raw
ERROR: QA Issue: package libpcl contains bad RPATH
/usr/lib:/home/akini/poky/build/tmp/sysroots/zc702-zynq7/usr/lib/vtk-5.8 in
file
/home/akini/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcl/1.6.0-r0/packages-split/libpcl/usr/bin/timed_trigger_test
ERROR: QA Issue: package libpcl contains bad RPATH
/usr/lib:/home/akini/poky/build/tmp/sysroots/zc702-zynq7/usr/lib/vtk-5.8 in
file
/home/akini/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcl/1.6.0-r0/packages-split/libpcl/usr/bin/pcl_convert_pcd_ascii_binary
... many more such errors.
ERROR: Function failed: do_package_qa

VTK is a runtime dependency for PCL and i have included the following line
in my recipe:

...
RDEPENDS_${PN} = "eigen boost libflann vtk"
...

Let me know if i am doing something wrong and how to over come this error
the right way !!

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

--089e0160a2401de63b04e821d29e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I am trying to build=
 a recipe for PCL library, similar to the one that Lukas [1] has derived bu=
t for a older version because of some dependencies with other packages and =
support for ARM platform.</div>
<div><br></div><div>1. <a href=3D"https://github.com/bulwahn/meta-ros/commi=
t/2c1fb8dbc46f8bc3f3fe58fbdfb7b2c8f244431a">https://github.com/bulwahn/meta=
-ros/commit/2c1fb8dbc46f8bc3f3fe58fbdfb7b2c8f244431a</a></div><div><br></di=
v>
<div>I am using PCL 1.6 instead of PCL 1.7 as used by Lukas.</div><div><br>=
</div><div>When i try to include the package in the image (rootfs) i get th=
e following error message:</div><div>ERROR: QA Issue: libpcl: Files/directo=
ries were installed but not shipped</div>
<div>=A0 /usr/share</div><div>=A0 /usr/share/pcl-1.6</div><div>=A0 /usr/sha=
re/pcl-1.6/PCLConfigVersion.cmake</div><div>=A0 /usr/share/pcl-1.6/PCLConfi=
g.cmake</div><div>ERROR: QA Issue: package libpcl contains bad RPATH /usr/l=
ib:/home/akini/poky/build/tmp/sysroots/zc702-zynq7/usr/lib/vtk-5.8 in file =
/home/akini/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcl/1=
.6.0-r0/packages-split/libpcl/usr/bin/pcl_ply2raw</div>
<div>ERROR: QA Issue: package libpcl contains bad RPATH /usr/lib:/home/akin=
i/poky/build/tmp/sysroots/zc702-zynq7/usr/lib/vtk-5.8 in file /home/akini/p=
oky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcl/1.6.0-r0/packa=
ges-split/libpcl/usr/bin/timed_trigger_test</div>
<div>ERROR: QA Issue: package libpcl contains bad RPATH /usr/lib:/home/akin=
i/poky/build/tmp/sysroots/zc702-zynq7/usr/lib/vtk-5.8 in file /home/akini/p=
oky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcl/1.6.0-r0/packa=
ges-split/libpcl/usr/bin/pcl_convert_pcd_ascii_binary</div>
<div>... many more such errors.</div><div>ERROR: Function failed: do_packag=
e_qa</div><div><br></div><div>VTK is a runtime dependency for PCL and i hav=
e included the following line in my recipe:</div><div><br></div><div>...</d=
iv>
<div>RDEPENDS_${PN} =3D &quot;eigen boost libflann vtk&quot;</div><div>...<=
/div><div><br></div><div>Let me know if i am doing something wrong and how =
to over come this error the right way !!</div><div><br></div>-- <br><div di=
r=3D"ltr">
<p style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:13px;background-color:rgb(255,255,255)"><b><span style=3D"font-size:=
10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Anup Kini<br></span></b><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">S=
ystems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<div style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:13px;background-color:rgb(255,255,255);text-align:center" align=3D=
"center"><b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lan=
g=3D"EN-US"><hr align=3D"center" size=3D"2" width=3D"100%">
</span></b></div><p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255)"><b>=
<span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=
Synapticon</span></b><b><span style=3D"font-size:12pt;font-family:&#39;Time=
s New Roman&#39;,serif" lang=3D"EN-US">=A0</span></b><span style=3D"font-si=
ze:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=A0|=A0=A0</span><span=
 style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Cyber=
-Physical System Solutions</span><span style=3D"font-size:10pt;font-family:=
Verdana,sans-serif" lang=3D"EN-US">=A0</span><span lang=3D"EN-US"><u></u><u=
></u></span></p>
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
</div>

--089e0160a2401de63b04e821d29e--
