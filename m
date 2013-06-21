Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s25.dub0.hotmail.com (dub0-omc3-s25.dub0.hotmail.com
	[157.55.2.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9C7E005B3
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:19:32 -0700 (PDT)
Received: from DUB116-W37 ([157.55.2.9]) by dub0-omc3-s25.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 21 Jun 2013 05:19:31 -0700
X-TMN: [er0bRhhqeswZ9Dw5jYr+78aNH63aKCH7Sjs9WdMPYJg=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W37E6C55FE16070642C92AA988F0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 21 Jun 2013 12:19:31 +0000
Importance: Normal
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C4629B@ORSMSX103.amr.corp.intel.com>
References: <DUB116-W535D2739FAA722F6E3D6BB988C0@phx.gbl>,
	<C6510F6D410BB64A8C15398EDC6B847C73C4629B@ORSMSX103.amr.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 21 Jun 2013 12:19:31.0443 (UTC)
	FILETIME=[95402430:01CE6E79]
Subject: Re: toolchain's environment-setup file that includes the image generated rootfs
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
X-List-Received-Date: Fri, 21 Jun 2013 12:19:33 -0000
Content-Type: multipart/alternative;
	boundary="_27f7ad28-d5ec-4316-9c3a-f5cbc12c66b8_"

--_27f7ad28-d5ec-4316-9c3a-f5cbc12c66b8_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Then how should I go about adding a --sysroots statement in the generated m=
eta-toolchain=2C of the generated image?=20


From: jessica.zhang@intel.com
To: djnass_18@hotmail.com=3B yocto@yoctoproject.org
Subject: RE: [yocto] toolchain's environment-setup file that includes the i=
mage generated rootfs
Date: Wed=2C 19 Jun 2013 16:26:14 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Overall=2C we don=92t suggest user to copy and alter the environment-setup =
file manually.=0A=
 =0A=
=0A=
=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]=0A=
On Behalf Of Thanassis Silis
=0A=
Sent: Tuesday=2C June 18=2C 2013 7:19 AM
=0A=
To: yocto@yoctoproject.org
=0A=
Subject: [yocto] toolchain's environment-setup file that includes the image=
 generated rootfs=0A=
=0A=
=0A=
 =0A=
=0A=
hello everyone=2C
=0A=
tampering with eclipse I was advised to use the image generated rootfs for =
sysroot entry=2C under window->preferences->Yocto Project ADT. I also used =
the meta-toolchain=2C which is extracted under /opt/poky/
=0A=

=0A=
If I copy extract the same toolchain and sysroots to another pc=2C I should=
 alter the environment-setup file.
=0A=
Looking into this file some changes are obvious. Variables:
=0A=

=0A=
CC=2C CXX=2C CPP=2C LD should be appended with " --sysroot=3D/path/to/image=
-rootfs/"=2C next to the already existing "--sysroot=3D/opt/poky/1.4.1/sysr=
oots/armv7a-vfp-neon-poky-linux-gnueabi".
=0A=

=0A=
It is not clear if the above should be appended in the CONFIGURE_FLAGS=3D"-=
-target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --build=3D=
x86_64-linux --with-libtool-sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-n=
eon-poky-linux-gnueabi"
=0A=

=0A=
as well.
=0A=

=0A=
Thank you.=0A=
=0A=
 		 	   		  =

--_27f7ad28-d5ec-4316-9c3a-f5cbc12c66b8_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Then how should I go about addin=
g a --sysroots statement in the generated meta-toolchain=2C of the generate=
d image? <br><br><br><div><hr id=3D"stopSpelling">From: jessica.zhang@intel=
.com<br>To: djnass_18@hotmail.com=3B yocto@yoctoproject.org<br>Subject: RE:=
 [yocto] toolchain's environment-setup file that includes the image generat=
ed rootfs<br>Date: Wed=2C 19 Jun 2013 16:26:14 +0000<br><br>=0A=
=0A=
=0A=
=0A=
<style><!--=0A=
.ExternalClass p.ecxMsoNormal=2C .ExternalClass li.ecxMsoNormal=2C .Externa=
lClass div.ecxMsoNormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass a:link=2C .ExternalClass span.ecxMsoHyperlink {=0A=
color:blue=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxMsoHyperlinkFollowed {=0A=
color:purple=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass p {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle18 {=0A=
font-family:"Calibri"=2C"sans-serif"=3B=0A=
color:#1F497D=3B=0A=
}=0A=
=0A=
.ExternalClass .ecxMsoChpDefault {=0A=
font-size:10.0pt=3B=0A=
}=0A=
=0A=
.ExternalClass div.ecxWordSection1 {=0A=
}=0A=
=0A=
--></style>=0A=
=0A=
=0A=
<div class=3D"ecxWordSection1">=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Overa=
ll=2C we don=92t suggest user to copy and alter the environment-setup file =
manually.</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #B5C4DF 1.0pt=3Bpadding:3.0pt =
0cm 0cm 0cm=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span style=3D"font-size:10.0pt=3Bfont-family:=
&quot=3BTahoma&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From:</span></b><sp=
an style=3D"font-size:10.0pt=3Bfont-family:&quot=3BTahoma&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B"> yocto-bounces@yoctoproject.org [mailto:yocto-bou=
nces@yoctoproject.org]=0A=
<b>On Behalf Of </b>Thanassis Silis<br>=0A=
<b>Sent:</b> Tuesday=2C June 18=2C 2013 7:19 AM<br>=0A=
<b>To:</b> yocto@yoctoproject.org<br>=0A=
<b>Subject:</b> [yocto] toolchain's environment-setup file that includes th=
e image generated rootfs</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal">&nbsp=3B</p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">hello everyone=2C<br>=0A=
tampering with eclipse I was advised to use the image generated rootfs for =
sysroot entry=2C under window-&gt=3Bpreferences-&gt=3BYocto Project ADT. I =
also used the meta-toolchain=2C which is extracted under /opt/poky/<br>=0A=
<br>=0A=
If I copy extract the same toolchain and sysroots to another pc=2C I should=
 alter the environment-setup file.<br>=0A=
Looking into this file some changes are obvious. Variables:<br>=0A=
<br>=0A=
CC=2C CXX=2C CPP=2C LD should be appended with " --sysroot=3D/path/to/image=
-rootfs/"=2C next to the already existing "--sysroot=3D/opt/poky/1.4.1/sysr=
oots/armv7a-vfp-neon-poky-linux-gnueabi".<br>=0A=
<br>=0A=
It is not clear if the above should be appended in the CONFIGURE_FLAGS=3D"-=
-target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --build=3D=
x86_64-linux --with-libtool-sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-n=
eon-poky-linux-gnueabi"<br>=0A=
<br>=0A=
as well.<br>=0A=
<br>=0A=
Thank you.</span></p>=0A=
</div>=0A=
</div></div> 		 	   		  </div></body>
</html>=

--_27f7ad28-d5ec-4316-9c3a-f5cbc12c66b8_--
