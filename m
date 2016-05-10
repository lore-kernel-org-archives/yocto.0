Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8416E00D2E; Tue, 10 May 2016 04:28:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.107 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC4S32.hotmail.com (dub004-omc4s32.hotmail.com
	[157.55.2.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F21E00D25
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 04:28:12 -0700 (PDT)
Received: from DUB130-W5 ([157.55.2.72]) by DUB004-OMC4S32.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 10 May 2016 04:28:11 -0700
X-TMN: [yJIsYjb7KYIa5+8I+LS03gNMgqdZd9pF]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W57477F296DFD10B36D06BDA710@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Esponde, Joel" <joel.esponde@honeywell.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 10 May 2016 12:28:11 +0100
Importance: Normal
In-Reply-To: <F6CD090A69E64C4289DC608E1C5D2024253EE345@DE08W1305.global.ds.honeywell.com>
References: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>,
	<DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>,
	<F6CD090A69E64C4289DC608E1C5D2024253EE345@DE08W1305.global.ds.honeywell.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 10 May 2016 11:28:11.0817 (UTC)
	FILETIME=[090B0190:01D1AAAF]
Subject: Re: Formulating Recipe for out-of-tree kernel module
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
X-List-Received-Date: Tue, 10 May 2016 11:28:17 -0000
Content-Type: multipart/alternative;
	boundary="_dc59bfae-c499-4812-b29d-ebada6126d26_"

--_dc59bfae-c499-4812-b29d-ebada6126d26_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Joel=2C
I am on Krogoth.
My reading of that patch is that it allows out-of-tree modules to depend on=
 symbols from the kernel but I don't see how it would help with depending o=
n another out-of-tree module?  Those symbols are not added to the kernel Mo=
dule.symvers.
I've been following some other usage I read that 'out-of-tree' means compil=
ing outside/after the kernel build=2C which may not be 100% accurate?
Anyway=2C it suggests to me that copying the first module's Module.symvers =
to the shared kernel staging area and then referencing that from the second=
 module is probably better than my current solution=2C provided I don't bre=
ak any conventions on using the staging area.
Cheers=2CChris

From: Joel.Esponde@Honeywell.com
To: christrobridge@hotmail.com=3B yocto@yoctoproject.org
Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module
Date: Tue=2C 10 May 2016 10:06:37 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Hi=2C=0A=
 =0A=
There is a bitbake issue that prevents building an out-of-tree module that =
is dependent of another out-of-tree module.=0A=
This issue has been fixed recently:=0A=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&id=
=3Da9cc27e6916e5affe8b0cc431c3e89abd7681643=0A=
 =0A=
This fix has been released on yocto 2.1 (krogoth).=0A=
=0A=
So if you are using an older Yocto project=2C you will have to fix two reci=
pes manually.=0A=
 =0A=
I hope this will help!=0A=
 =0A=
=0A=
Jo=EBl Esponde=0A=
Honeywell=0A=
| Sensing and Productivity Solutions=0A=
=0A=
 =0A=
=0A=
=0A=
=0A=
De : yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
=0A=
De la part de Chris Trobridge
=0A=
Envoy=E9 : mardi 10 mai 2016 08:59
=0A=
=C0 : yocto@yoctoproject.org
=0A=
Objet : Re: [yocto] Formulating Recipe for out-of-tree kernel module=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
At the risk of answering my own question...=0A=
=0A=
=0A=
 =0A=
=0A=
Splitting a driver package into a module recipe and a separate recipe for u=
ser-mode utilities works in that each recipe uses the appropriate build pro=
cess and puts files in the=0A=
 appropriate subdirectory of /work/.=0A=
=0A=
 =0A=
=0A=
=0A=
I still don't see a way to build one out-of-tree module against another.  I=
 am interested in opinion on this.  Should I try to get these drivers built=
 in tree?  They seem to be=0A=
 the only two out-of-tree drivers in the build at present.  There is also s=
ome facility to add extra modules to the dahdi linux build=2C although achi=
eving this with bitbake could be challenging too.
=0A=

=0A=
Cheers=2C=0A=
=0A=
=0A=
Chris=0A=
=0A=
=0A=
=0A=
=0A=
From:=0A=
christrobridge@hotmail.com
=0A=
To: yocto@yoctoproject.org
=0A=
Date: Mon=2C 9 May 2016 12:15:26 +0100
=0A=
Subject: [yocto] Formulating Recipe for out-of-tree kernel module=0A=
=0A=
I am looking to produce a recipe for the amfeltec usb-fxs adaptor (http://a=
mfeltec.com/products/piranha-usb-fxs-adapter/)=2C=0A=
 with the intention of contributing this to the meta-telephony layer.=0A=
=0A=
 =0A=
=0A=
=0A=
However=2C I have found a few obstacles to getting a clean recipe:=0A=
=0A=
=0A=
=0A=
=0A=
The makefile produces both a kernel module and a user utility=2C with the l=
atter being hard-coded to build with g++.  I can produce a recipe to produc=
e one or other of the components but not both.  Given=0A=
 the structure of the build directories=2C should this be be achievable=2C =
or should I be spitting up the recipe in two?=0A=
Dahdi header files and Modules.symvers are required.  A header file is used=
 to deduce the version of Dahdi=2C Modules.symvers is required for the modu=
le build process.  Hence=2C requires the location of=0A=
 the Dahdi source/build directory.  This can be set relative to the amfelte=
c work directory but this feels wrong.=0A=
=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
=0A=
In more general terms my questions are:=0A=
=0A=
=0A=
=0A=
=0A=
Should I split a recipe into kernel and non-kernel components?=0A=
How should one out-of-tree recipe access the headers/Module.symvers from an=
other (should that recipe be installing them in ${STAGING_KERNEL_DIR} (or s=
omewhere else)?)=0A=
=0A=
 =0A=
=0A=
=0A=
Cheers=2C=0A=
=0A=
=0A=
=0A=
Chris=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=

=0A=
-- _______________________________________________ yocto mailing list yocto=
@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=
=0A=
=0A=
=0A=
 		 	   		  =

--_dc59bfae-c499-4812-b29d-ebada6126d26_
Content-Type: text/html; charset="iso-8859-1"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Thanks Joel=2C<div><br></div><di=
v>I am on Krogoth.</div><div><br></div><div>My reading of that patch is tha=
t it allows out-of-tree modules to depend on symbols from the kernel but I =
don't see how it would help with depending on another out-of-tree module? &=
nbsp=3BThose symbols are not added to the kernel Module.symvers.</div><div>=
<br></div><div>I've been following some other usage I read that 'out-of-tre=
e' means compiling outside/after the kernel build=2C which may not be 100% =
accurate?</div><div><br></div><div>Anyway=2C it suggests to me that copying=
 the first module's Module.symvers to the shared kernel staging area and th=
en referencing that from the second module is probably better than my curre=
nt solution=2C provided I don't break any conventions on using the staging =
area.</div><div><br></div><div>Cheers=2C</div><div>Chris<br><br><div><hr id=
=3D"stopSpelling">From: Joel.Esponde@Honeywell.com<br>To: christrobridge@ho=
tmail.com=3B yocto@yoctoproject.org<br>Subject: RE: [yocto] Formulating Rec=
ipe for out-of-tree kernel module<br>Date: Tue=2C 10 May 2016 10:06:37 +000=
0<br><br>=0A=
=0A=
=0A=
=0A=
<style><!--=0A=
.ExternalClass p.ecxMsoNormal=2C .ExternalClass li.ecxMsoNormal=2C .Externa=
lClass div.ecxMsoNormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
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
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle18 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:#400000=3B=0A=
font-weight:normal=3B=0A=
font-style:normal=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle19 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:#400000=3B=0A=
font-weight:normal=3B=0A=
font-style:normal=3B=0A=
}=0A=
=0A=
.ExternalClass .ecxMsoChpDefault {=0A=
font-size:10.0pt=3B=0A=
}=0A=
=0A=
.ExternalClass div.ecxWordSection1 {=0A=
}=0A=
=0A=
.ExternalClass ol {=0A=
}=0A=
=0A=
.ExternalClass ul {=0A=
}=0A=
=0A=
--></style>=0A=
=0A=
=0A=
<div class=3D"ecxWordSection1">=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">Hi=2C</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=3B</span></p>=
=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">There =
is a bitbake issue that prevents building an out-of-tree module that is dep=
endent of another out-of-tree module.</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">This i=
ssue has been fixed recently:</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B"><a hre=
f=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next=
&amp=3Bid=3Da9cc27e6916e5affe8b0cc431c3e89abd7681643" target=3D"_blank">htt=
p://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&amp=3Bi=
d=3Da9cc27e6916e5affe8b0cc431c3e89abd7681643</a></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">This f=
ix has been released on yocto 2.1 (krogoth).</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B"></span=
></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">So if =
you are using an older Yocto project=2C you will have to fix two recipes ma=
nually.</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">I hope=
 this will help!</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt=
=3Bfont-family:&quot=3BArial&quot=3B=2Csans-serif=3Bcolor:#707070=3B">Jo=EB=
l Esponde</span></b></p>=0A=
<p class=3D"ecxMsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt=
=3Bfont-family:&quot=3BArial&quot=3B=2Csans-serif=3Bcolor:#707070=3B">Honey=
well=0A=
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt=3Bfont-family:&quo=
t=3BArial&quot=3B=2Csans-serif=3Bcolor:#707070=3B">| Sensing and Productivi=
ty Solutions</span></p>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"">&nbsp=3B</span></=
p>=0A=
<div style=3D"border:none=3Bborder-left:solid blue 1.5pt=3Bpadding:0cm 0cm =
0cm 4.0pt=3B">=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #E1E1E1 1.0pt=3Bpadding:3.0pt =
0cm 0cm 0cm=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt=
=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">De&nbsp=3B:</span><=
/b><span lang=3D"EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCal=
ibri&quot=3B=2Csans-serif=3B"> yocto-bounces@yoctoproject.org [mailto:yocto=
-bounces@yoctoproject.org]=0A=
<b>De la part de</b> Chris Trobridge<br>=0A=
<b>Envoy=E9&nbsp=3B:</b> mardi 10 mai 2016 08:59<br>=0A=
<b>=C0&nbsp=3B:</b> yocto@yoctoproject.org<br>=0A=
<b>Objet&nbsp=3B:</b> Re: [yocto] Formulating Recipe for out-of-tree kernel=
 module</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US">&nbsp=3B</span></p>=0A=
<div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">At the risk of answering my own questio=
n...</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">Splitting a driver package into a modul=
e recipe and a separate recipe for user-mode utilities works in that each r=
ecipe uses the appropriate build process and puts files in the=0A=
 appropriate subdirectory of /work/.</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">I still don't see a way to build one ou=
t-of-tree module against another. &nbsp=3BI am interested in opinion on thi=
s. &nbsp=3BShould I try to get these drivers built in tree? &nbsp=3BThey se=
em to be=0A=
 the only two out-of-tree drivers in the build at present. &nbsp=3BThere is=
 also some facility to add extra modules to the dahdi linux build=2C althou=
gh achieving this with bitbake could be challenging too.<br>=0A=
<br>=0A=
</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">=
Cheers=2C</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2Csans-serif=3B">Chris</span></p>=0A=
<div>=0A=
<div class=3D"ecxMsoNormal" align=3D"center" style=3D"text-align:center=3B"=
><span style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">=0A=
<hr size=3D"2" width=3D"100%" align=3D"center">=0A=
</span></div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span lang=3D"EN-US" style=3D"font-fam=
ily:&quot=3BCalibri&quot=3B=2Csans-serif=3B">From:=0A=
</span><a href=3D"mailto:christrobridge@hotmail.com"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">christrobridge=
@hotmail.com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot=3BCa=
libri&quot=3B=2Csans-serif=3B"><br>=0A=
To: </span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">yocto@yoctopro=
ject.org</span></a><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibr=
i&quot=3B=2Csans-serif=3B"><br>=0A=
Date: Mon=2C 9 May 2016 12:15:26 +0100<br>=0A=
Subject: [yocto] Formulating Recipe for out-of-tree kernel module</span></p=
>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">I am looking to produce a recipe for th=
e amfeltec usb-fxs adaptor (</span><a href=3D"http://amfeltec.com/products/=
piranha-usb-fxs-adapter/" target=3D"_blank"><span lang=3D"EN-US" style=3D"f=
ont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">http://amfeltec.com/pro=
ducts/piranha-usb-fxs-adapter/</span></a><span lang=3D"EN-US" style=3D"font=
-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">)=2C=0A=
 with the intention of contributing this to the meta-telephony layer.</span=
></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">However=2C I have found a few obstacles=
 to getting a clean recipe:</span></p>=0A=
</div>=0A=
<div>=0A=
<ul>=0A=
<li class=3D"ecxMsoNormal" style=3D"">=0A=
<span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-se=
rif=3B">The makefile produces both a kernel module and a user utility=2C wi=
th the latter being hard-coded to build with g++. &nbsp=3BI can produce a r=
ecipe to produce one or other of the components but not both. &nbsp=3BGiven=
=0A=
 the structure of the build directories=2C should this be be achievable=2C =
or should I be spitting up the recipe in two?</span></li><li class=3D"ecxMs=
oNormal" style=3D"">=0A=
<span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-se=
rif=3B">Dahdi header files and Modules.symvers are required. &nbsp=3BA head=
er file is used to deduce the version of Dahdi=2C&nbsp=3BModules.symvers&nb=
sp=3Bis required for the&nbsp=3Bmodule build process. &nbsp=3BHence=2C requ=
ires the location of=0A=
 the Dahdi source/build directory. &nbsp=3BThis can be set relative to the =
amfeltec work directory but this feels wrong.</span></li></ul>=0A=
</div>=0A=
<div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">In more general terms my questions are:=
</span></p>=0A=
</div>=0A=
<div>=0A=
<ul>=0A=
<li class=3D"ecxMsoNormal" style=3D"">=0A=
<span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-se=
rif=3B">Should I split a recipe into kernel and non-kernel components?</spa=
n></li><li class=3D"ecxMsoNormal" style=3D"">=0A=
<span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-se=
rif=3B">How should one out-of-tree recipe access the headers/Module.symvers=
 from another (should that recipe be installing them in ${STAGING_KERNEL_DI=
R} (or somewhere else)?)</span></li></ul>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">Cheers=2C</span></p>=0A=
</div>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">Chris</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B"><br>=0A=
-- _______________________________________________ yocto mailing list </spa=
n><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" style=3D"f=
ont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">yocto@yoctoproject.org<=
/span></a><span style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=
=3B">=0A=
</span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank"><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B">https://lists.yoctoproject.org/listinfo/yocto</span></a><=
span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-ser=
if=3B"></span></p>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div></div></div> 		 	   		  </div></body>
</html>=

--_dc59bfae-c499-4812-b29d-ebada6126d26_--
