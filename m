Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3AC0E00B9F; Tue, 10 May 2016 06:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC4S10.hotmail.com (dub004-omc4s10.hotmail.com
	[157.55.2.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C44BAE00B7A
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 06:57:21 -0700 (PDT)
Received: from DUB130-W19 ([157.55.2.71]) by DUB004-OMC4S10.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 10 May 2016 06:57:19 -0700
X-TMN: [l6EfuSq6XgP8wsPrcGWe8CmNWJrTSNKV]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W19EB88C4F751D5BB05C761DA710@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Esponde, Joel" <joel.esponde@honeywell.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 10 May 2016 14:57:19 +0100
Importance: Normal
In-Reply-To: <F6CD090A69E64C4289DC608E1C5D2024253EE422@DE08W1305.global.ds.honeywell.com>
References: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>,
	<DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>,
	<F6CD090A69E64C4289DC608E1C5D2024253EE345@DE08W1305.global.ds.honeywell.com>,
	<DUB130-W57477F296DFD10B36D06BDA710@phx.gbl>,
	<F6CD090A69E64C4289DC608E1C5D2024253EE422@DE08W1305.global.ds.honeywell.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 10 May 2016 13:57:19.0559 (UTC)
	FILETIME=[DE501570:01D1AAC3]
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
X-List-Received-Date: Tue, 10 May 2016 13:57:26 -0000
Content-Type: multipart/alternative;
	boundary="_9651b651-a3e6-47bd-ace0-8415c45bfcc4_"

--_9651b651-a3e6-47bd-ace0-8415c45bfcc4_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Joel=2C
I can build the module but I am trying to find out the best way to do this =
with yocto/bitbake.
The build process for the second module I have requires the location of the=
 first and then does copy the Module.symvers and accesses the header files =
and ".version" file.
The question was more about how it should find these.
What I have just tried out=2C is to copy the above files  (Module.symvers=
=2C .version and include/* to ${STAGING_KERNEL_BUILDDIR}/out-of-tree/${PN}=
=2C which is hence easily accessible by the second recipe.
This works but may not be the preferred way?  I suspect the preferred way i=
s to build in the kernel.
Cheers=2CChris

From: Joel.Esponde@Honeywell.com
To: christrobridge@hotmail.com=3B yocto@yoctoproject.org
Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module
Date: Tue=2C 10 May 2016 13:29:30 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Ok! I better understand your need now.=0A=
The fix solves the case where an out of tree module is dependent of a kerne=
l module which is not built as a built-in module.=0A=
=0A=
 =0A=
Just in case=2C did you have a look on these links?=0A=
http://stackoverflow.com/a/33718934/1729117=0A=
https://www.kernel.org/doc/Documentation/kbuild/modules.txt=0A=
 (Chapter 6.2 and 6.3)=0A=
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
De : Chris Trobridge [mailto:christrobridge@hotmail.com]=0A=

=0A=
Envoy=E9 : mardi 10 mai 2016 13:28
=0A=
=C0 : Esponde=2C Joel=3B yocto@yoctoproject.org
=0A=
Objet : RE: [yocto] Formulating Recipe for out-of-tree kernel module=0A=
=0A=
=0A=
 =0A=
=0A=
Thanks Joel=2C=0A=
=0A=
 =0A=
=0A=
=0A=
I am on Krogoth.=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
My reading of that patch is that it allows out-of-tree modules to depend on=
 symbols from the kernel but I don't see how it would help with depending o=
n another out-of-tree module?=0A=
  Those symbols are not added to the kernel Module.symvers.=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
I've been following some other usage I read that 'out-of-tree' means compil=
ing outside/after the kernel build=2C which may not be 100% accurate?=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
Anyway=2C it suggests to me that copying the first module's Module.symvers =
to the shared kernel staging area and then referencing that from the second=
 module is probably better than=0A=
 my current solution=2C provided I don't break any conventions on using the=
 staging area.=0A=
=0A=
=0A=
 =0A=
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
Joel.Esponde@Honeywell.com
=0A=
To: christrobridge@hotmail.com=3B=0A=
yocto@yoctoproject.org
=0A=
Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module
=0A=
Date: Tue=2C 10 May 2016 10:06:37 +0000=0A=
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
De :=0A=
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=0A=
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
=0A=
=0A=
=0A=
=0A=
=0A=
 		 	   		  =

--_9651b651-a3e6-47bd-ace0-8415c45bfcc4_
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
v>I can build the module but I am trying to find out the best way to do thi=
s with yocto/bitbake.</div><div><br></div><div>The build process for the se=
cond module I have requires the location of the first and then does copy th=
e Module.symvers and accesses the header files and ".version" file.</div><d=
iv><br></div><div>The question was more about how it should find these.</di=
v><div><br></div><div>What I have just tried out=2C is to copy the above fi=
les &nbsp=3B(Module.symvers=2C .version and include/* to&nbsp=3B${STAGING_K=
ERNEL_BUILDDIR}/out-of-tree/${PN}=2C which is hence easily accessible by th=
e second recipe.</div><div><br></div><div>This works but may not be the pre=
ferred way? &nbsp=3BI suspect the preferred way is to build in the kernel.<=
/div><div><br></div><div>Cheers=2C</div><div>Chris<br><br><div><hr id=3D"st=
opSpelling">From: Joel.Esponde@Honeywell.com<br>To: christrobridge@hotmail.=
com=3B yocto@yoctoproject.org<br>Subject: RE: [yocto] Formulating Recipe fo=
r out-of-tree kernel module<br>Date: Tue=2C 10 May 2016 13:29:30 +0000<br><=
br>=0A=
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
.ExternalClass p.ecxmsonormal=2C .ExternalClass li.ecxmsonormal=2C .Externa=
lClass div.ecxmsonormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsochpdefault=2C .ExternalClass li.ecxmsochpdefault=2C =
.ExternalClass div.ecxmsochpdefault {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsonormal1=2C .ExternalClass li.ecxmsonormal1=2C .Exter=
nalClass div.ecxmsonormal1 {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsochpdefault1=2C .ExternalClass li.ecxmsochpdefault1=
=2C .ExternalClass div.ecxmsochpdefault1 {=0A=
font-size:10.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlink {=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlinkfollowed {=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle18 {=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle19 {=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlink1 {=0A=
color:blue=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlinkfollowed1 {=0A=
color:purple=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle181 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:#400000=3B=0A=
font-weight:normal=3B=0A=
font-style:normal=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle191 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:#400000=3B=0A=
font-weight:normal=3B=0A=
font-style:normal=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle30 {=0A=
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
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">Ok! I =
better understand your need now.</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">The fi=
x solves the case where an out of tree module is dependent of a kernel modu=
le which is not built as a built-in module.=0A=
</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">Just i=
n case=2C did you have a look on these links?</span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B"><a hre=
f=3D"http://stackoverflow.com/a/33718934/1729117" target=3D"_blank">http://=
stackoverflow.com/a/33718934/1729117</a></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B"><a hre=
f=3D"https://www.kernel.org/doc/Documentation/kbuild/modules.txt" target=3D=
"_blank">https://www.kernel.org/doc/Documentation/kbuild/modules.txt</a>=0A=
 (Chapter 6.2 and 6.3)</span></p>=0A=
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
ibri&quot=3B=2Csans-serif=3B"> Chris Trobridge [mailto:christrobridge@hotma=
il.com]=0A=
<br>=0A=
<b>Envoy=E9&nbsp=3B:</b> mardi 10 mai 2016 13:28<br>=0A=
<b>=C0&nbsp=3B:</b> Esponde=2C Joel=3B yocto@yoctoproject.org<br>=0A=
<b>Objet&nbsp=3B:</b> RE: [yocto] Formulating Recipe for out-of-tree kernel=
 module</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US">&nbsp=3B</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">Thanks Joel=2C</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">I am on Krogoth.</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">My reading of that patch is that it all=
ows out-of-tree modules to depend on symbols from the kernel but I don't se=
e how it would help with depending on another out-of-tree module?=0A=
 &nbsp=3BThose symbols are not added to the kernel Module.symvers.</span></=
p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">I've been following some other usage I =
read that 'out-of-tree' means compiling outside/after the kernel build=2C w=
hich may not be 100% accurate?</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">Anyway=2C it suggests to me that copyin=
g the first module's Module.symvers to the shared kernel staging area and t=
hen referencing that from the second module is probably better than=0A=
 my current solution=2C provided I don't break any conventions on using the=
 staging area.</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">Cheers=2C</span></p>=0A=
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
</span><a href=3D"mailto:Joel.Esponde@Honeywell.com"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">Joel.Esponde@H=
oneywell.com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot=3BCa=
libri&quot=3B=2Csans-serif=3B"><br>=0A=
To: </span><a href=3D"mailto:christrobridge@hotmail.com"><span lang=3D"EN-U=
S" style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">christrobr=
idge@hotmail.com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">=3B=0A=
</span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" style=
=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">yocto@yoctoproject=
.org</span></a><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&qu=
ot=3B=2Csans-serif=3B"><br>=0A=
Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module<br>=
=0A=
Date: Tue=2C 10 May 2016 10:06:37 +0000</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">Hi=2C<=
/span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=2Cs=
ans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">There =
is a bitbake issue that prevents building an out-of-tree module that is dep=
endent of another out-of-tree module.</span><span lang=3D"EN-US" style=3D"f=
ont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">This i=
ssue has been fixed recently:</span><span lang=3D"EN-US" style=3D"font-fami=
ly:&quot=3BCalibri&quot=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><a href=3D"http://git.yoctoproject.org/cgit/cgit.=
cgi/poky/commit/?h=3Dmaster-next&amp=3Bid=3Da9cc27e6916e5affe8b0cc431c3e89a=
bd7681643" target=3D"_blank"><span lang=3D"EN-US" style=3D"font-size:11.0pt=
=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">http://git.yoctopro=
ject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&amp=3Bid=3Da9cc27e6916e=
5affe8b0cc431c3e89abd7681643</span></a><span lang=3D"EN-US" style=3D"font-f=
amily:&quot=3BCalibri&quot=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">This f=
ix has been released on yocto 2.1 (krogoth).</span><span lang=3D"EN-US" sty=
le=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">So if =
you are using an older Yocto project=2C you will have to fix two recipes ma=
nually.</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quo=
t=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">I hope=
 this will help!</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCa=
libri&quot=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt=3B=
font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#400000=3B">&nbsp=
=3B</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B"></span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt=
=3Bfont-family:&quot=3BArial&quot=3B=2Csans-serif=3Bcolor:#707070=3B">Jo=EB=
l Esponde</span></b><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalib=
ri&quot=3B=2Csans-serif=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt=
=3Bfont-family:&quot=3BArial&quot=3B=2Csans-serif=3Bcolor:#707070=3B">Honey=
well=0A=
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt=3Bfont-family:&quo=
t=3BArial&quot=3B=2Csans-serif=3Bcolor:#707070=3B">| Sensing and Productivi=
ty Solutions</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibr=
i&quot=3B=2Csans-serif=3B"></span></p>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
<div style=3D"border:none=3Bborder-left:solid blue 1.5pt=3Bpadding:0cm 0cm =
0cm 4.0pt=3B">=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #E1E1E1 1.0pt=3Bpadding:3.0pt =
0cm 0cm 0cm=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt=
=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">De&nbsp=3B:</span><=
/b><span lang=3D"EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCal=
ibri&quot=3B=2Csans-serif=3B">=0A=
</span><a href=3D"mailto:yocto-bounces@yoctoproject.org"><span lang=3D"EN-U=
S" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-s=
erif=3B">yocto-bounces@yoctoproject.org</span></a><span lang=3D"EN-US" styl=
e=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B=
"> [</span><a href=3D"mailto:yocto-bounces@yoctoproject.org"><span lang=3D"=
EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csa=
ns-serif=3B">mailto:yocto-bounces@yoctoproject.org</span></a><span lang=3D"=
EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csa=
ns-serif=3B">]=0A=
<b>De la part de</b> Chris Trobridge<br>=0A=
<b>Envoy=E9&nbsp=3B:</b> mardi 10 mai 2016 08:59<br>=0A=
<b>=C0&nbsp=3B:</b> </span><a href=3D"mailto:yocto@yoctoproject.org"><span =
lang=3D"EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">yocto@yoctoproject.org</span></a><span lang=3D"EN-US" =
style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-seri=
f=3B"><br>=0A=
<b>Objet&nbsp=3B:</b> Re: [yocto] Formulating Recipe for out-of-tree kernel=
 module</span><span lang=3D"EN-US" style=3D"font-family:&quot=3BCalibri&quo=
t=3B=2Csans-serif=3B"></span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
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
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">Chris</span></p>=0A=
<div>=0A=
<div class=3D"ecxMsoNormal" align=3D"center" style=3D"text-align:center=3B"=
><span style=3D"font-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">=0A=
<hr size=3D"2" width=3D"100%" align=3D"center">=0A=
</span></div>=0A=
<p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
=3BCalibri&quot=3B=2Csans-serif=3B">From:=0A=
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
</div>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div></div></div> 		 	   		  </div></body>
</html>=

--_9651b651-a3e6-47bd-ace0-8415c45bfcc4_--
