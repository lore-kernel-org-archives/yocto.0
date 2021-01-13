Subject: Re: #vmdk #hddimg #iso with #dunfell
To: yocto@lists.yoctoproject.org
From: chruetli@gmx.net
X-Originating-Location: Zurich, CH (178.38.93.55)
X-Originating-Platform: Windows Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Jan 2021 21:10:18 -0800
References: <v0SD.1607606297266017770.G9ej@lists.yoctoproject.org>
In-Reply-To: <v0SD.1607606297266017770.G9ej@lists.yoctoproject.org>
Message-ID: <12734.1610514618956248879@lists.yoctoproject.org>
X-Groupsio-MsgNum: 51990
Content-Type: multipart/related; boundary="dDrSZ015GqbISVA2Vo7w"

--dDrSZ015GqbISVA2Vo7w
Content-Type: multipart/alternative; boundary="ZoQAtQ2GKpZbXx6WT7rd"

--ZoQAtQ2GKpZbXx6WT7rd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Some more information:

Build Configuration:

BB_VERSION=3D "1.46.0"
BUILD_SYS=3D "x86_64-linux"
NATIVELSBSTRING=3D "universal"
TARGET_SYS=3D "x86_64-poky-linux"
MACHINE=3D "virtualbox"
DISTRO=3D "my-gnu-linux"
DISTRO_VERSION=3D "3.1.2"
TUNE_FEATURES=3D "m64"
TARGET_FPU=3D ""

Without any ajustments in my .conf file I get the missing WKS_FILE/S warni=
ng:

ERROR: my-image-1.0-r0 do_image_wic: No kickstart files from WKS_FILES wer=
e found: my-image.virtualbox.wks my-image.wks. Please set WKS_FILE or WKS_F=
ILES appropriately.

**** hddimg/vdmk ****

Setting IMAGE_FSTYPES =3D "hddimg"

Convert the generated hddimg to vdmk :

$ vboxmanage convertfromraw image-virtualbox.hddimg image-virtualbox.vdmk

Starting image-virtualbox.vdmk with VirtualBox:

Starting image-virtualbox.hdd with VirtualBox shows the same behaviour as =
for vdmk

Opening the vdmk file as an archive the files show strange creation dates:

**** iso ***
*
Setting IMAGE_FSTYPES =3D "iso"

S tarting image-virtualbox.iso with VirtualBox:
Linux is booting until it hangs after "Load/Save Random Seed". What stands=
 out is the failure message in the beginning "Failed to start Remount Root =
and Kernel File Systems"... But how to fix it?

--ZoQAtQ2GKpZbXx6WT7rd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Some more information:<br /><br />Build Configuration:</p>
<p class=3D"MsoNoSpacing"><span style=3D"font-family: courier_newregular ,=
 courier;"> BB_VERSION=3D "1.46.0"</span><span style=3D"font-family: courie=
r_newregular , courier;"><br />BUILD_SYS=3D "x86_64-linux"</span><br /><spa=
n style=3D"font-family: courier_newregular , courier;">NATIVELSBSTRING=3D "=
universal"<br />TARGET_SYS=3D "x86_64-poky-linux"<br />MACHINE=3D "virtualb=
ox"<br /></span><span style=3D"font-family: courier_newregular , courier;">=
DISTRO=3D "my-gnu-linux"<br /></span><span style=3D"font-family: courier_ne=
wregular , courier;">DISTRO_VERSION=3D "3.1.2"<br /></span><span style=3D"f=
ont-family: courier_newregular , courier;">TUNE_FEATURES=3D "m64"<br /></sp=
an><span style=3D"font-family: courier_newregular , courier;">TARGET_FPU=3D=
 ""</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;">&nbsp;</p>
Without any ajustments in my .conf file I get the missing WKS_FILE/S warni=
ng:<br /><br />
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><em>ERROR: my-imag=
e-1.0-r0 do_image_wic: No kickstart files from WKS_FILES were found: my-ima=
ge.virtualbox.wks my-image.wks. Please set WKS_FILE or WKS_FILES appropriat=
ely.</em></p>
<p><span>&nbsp;</span></p>
<span></span>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span><strong>*** =
hddimg/vdmk ***</strong><br /><br />Setting </span><span style=3D"font-fami=
ly: courier_newregular , courier;"><span>IMAGE_FSTYPES =3D "hddimg"</span> =
</span></p>
<span><br />Convert the generated hddimg to vdmk :</span>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span style=3D"fon=
t-family: courier_newregular , courier;">$ vboxmanage convertfromraw image-=
virtualbox.hddimg image-virtualbox.vdmk</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span>Starting <sp=
an style=3D"font-family: courier_newregular , courier;">image-virtualbox.vd=
mk</span> with VirtualBox:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span><img class=
=3D"" src=3D"https://3c.gmx.net/mail/client/attachment/view/tmai16598447a3=
c627c3/cGFydDEuOUUwREYxNTkuQjk3QTMxREFAd2luZHJpdmVyLmNvbQ;jsessionid=3D8CB2=
4CDEC29CC0830A60B500969CD9EB-n1.bs51b" />&nbsp;<br /></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span><br /></span=
><br /><span><span></span>Starting <span style=3D"font-family: courier_newr=
egular , courier;">image-virtualbox.hdd</span> with VirtualBox shows the sa=
me behaviour as </span><span>for vdmk</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span>&nbsp;<br />=
Opening the vdmk file as an archive the files show strange creation dates:<=
br /><img src=3D"cid:attach_0_1659B2835881C5D9_12734@lists.yoctoproject.org=
" /><br /><br /></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span>&nbsp;</span=
></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span><span><stron=
g>*** iso ***<br /></strong></span><br /></span><span><span>Setting </span>=
<span style=3D"font-family: courier_newregular , courier;"><span>IMAGE_FSTY=
PES =3D "iso"</span> <br /></span><span></span></span><span>&nbsp;<br /></s=
pan>S<span>tarting <span style=3D"font-family: courier_newregular , courier=
;">image-virtualbox.iso</span> with VirtualBox:<br />Linux is booting until=
 it hangs after "Load/Save Random Seed". What stands out is the failure mes=
sage in the beginning "Failed to start Remount Root and Kernel File Systems=
"... But how to fix it?<br /></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span><img class=
=3D"" src=3D"https://3c.gmx.net/mail/client/attachment/view/tmai16598447a3=
c627c3/cGFydDIuRDZDQjczODAuNzM4MDI4NzFAd2luZHJpdmVyLmNvbQ;jsessionid=3D8CB2=
4CDEC29CC0830A60B500969CD9EB-n1.bs51b" /><br /><br /></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;">&nbsp;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span>&nbsp;<img c=
lass=3D"" src=3D"https://3c.gmx.net/mail/client/attachment/view/tmai1659844=
7a3c627c3/cGFydDMuMDQxNjk2RTEuODY3MjhBNjNAd2luZHJpdmVyLmNvbQ;jsessionid=3D8=
CB24CDEC29CC0830A60B500969CD9EB-n1.bs51b" /></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0.0px;"><span>&nbsp;</span=
></p>

--ZoQAtQ2GKpZbXx6WT7rd--

--dDrSZ015GqbISVA2Vo7w
Content-Id: <attach_0_1659B2835881C5D9_12734@lists.yoctoproject.org>
X-Attachment-Id: attach_0_1659B2835881C5D9_12734@lists.yoctoproject.org
Content-Type: image/png; name="vdmk-file-date.PNG"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="vdmk-file-date.PNG"

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

--dDrSZ015GqbISVA2Vo7w--
