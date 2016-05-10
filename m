Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01AEEE00CE5; Mon,  9 May 2016 23:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.17 listed in list.dnswl.org]
Received: from DUB004-OMC3S8.hotmail.com (dub004-omc3s8.hotmail.com
	[157.55.2.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E9C2E00C39
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 23:59:10 -0700 (PDT)
Received: from DUB130-W83 ([157.55.2.7]) by DUB004-OMC3S8.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 9 May 2016 23:59:09 -0700
X-TMN: [6yacLpaVPSow6S+0qYGjSI5wrRr48Vy7]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 10 May 2016 07:59:08 +0100
Importance: Normal
In-Reply-To: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>
References: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 10 May 2016 06:59:09.0377 (UTC)
	FILETIME=[73662310:01D1AA89]
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
X-List-Received-Date: Tue, 10 May 2016 06:59:15 -0000
Content-Type: multipart/alternative;
	boundary="_2e4fd4c1-2f45-47cf-8f87-efc9da37e218_"

--_2e4fd4c1-2f45-47cf-8f87-efc9da37e218_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

At the risk of answering my own question...
Splitting a driver package into a module recipe and a separate recipe for u=
ser-mode utilities works in that each recipe uses the appropriate build pro=
cess and puts files in the appropriate subdirectory of /work/.
I still don't see a way to build one out-of-tree module against another.  I=
 am interested in opinion on this.  Should I try to get these drivers built=
 in tree?  They seem to be the only two out-of-tree drivers in the build at=
 present.  There is also some facility to add extra modules to the dahdi li=
nux build=2C although achieving this with bitbake could be challenging too.

Cheers=2CChris

From: christrobridge@hotmail.com
To: yocto@yoctoproject.org
Date: Mon=2C 9 May 2016 12:15:26 +0100
Subject: [yocto] Formulating Recipe for out-of-tree kernel module

=0A=
=0A=
=0A=
I am looking to produce a recipe for the amfeltec usb-fxs adaptor (http://a=
mfeltec.com/products/piranha-usb-fxs-adapter/)=2C with the intention of con=
tributing this to the meta-telephony layer.
However=2C I have found a few obstacles to getting a clean recipe:The makef=
ile produces both a kernel module and a user utility=2C with the latter bei=
ng hard-coded to build with g++.  I can produce a recipe to produce one or =
other of the components but not both.  Given the structure of the build dir=
ectories=2C should this be be achievable=2C or should I be spitting up the =
recipe in two?Dahdi header files and Modules.symvers are required.  A heade=
r file is used to deduce the version of Dahdi=2C Modules.symvers is require=
d for the module build process.  Hence=2C requires the location of the Dahd=
i source/build directory.  This can be set relative to the amfeltec work di=
rectory but this feels wrong.
In more general terms my questions are:Should I split a recipe into kernel =
and non-kernel components?How should one out-of-tree recipe access the head=
ers/Module.symvers from another (should that recipe be installing them in $=
{STAGING_KERNEL_DIR} (or somewhere else)?)
Cheers=2CChris
 		 	   		  =0A=

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_2e4fd4c1-2f45-47cf-8f87-efc9da37e218_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div>At the risk of answering my=
 own question...</div><div><br></div>Splitting a driver package into a modu=
le recipe and a separate recipe for user-mode utilities works in that each =
recipe uses the appropriate build process and puts files in the appropriate=
 subdirectory of /work/.<div><br></div><div>I still don't see a way to buil=
d one out-of-tree module against another. &nbsp=3BI am interested in opinio=
n on this. &nbsp=3BShould I try to get these drivers built in tree? &nbsp=
=3BThey seem to be the only two out-of-tree drivers in the build at present=
. &nbsp=3BThere is also some facility to add extra modules to the dahdi lin=
ux build=2C although achieving this with bitbake could be challenging too.<=
br><br>Cheers=2C</div><div>Chris<br><br><div><hr id=3D"stopSpelling">From: =
christrobridge@hotmail.com<br>To: yocto@yoctoproject.org<br>Date: Mon=2C 9 =
May 2016 12:15:26 +0100<br>Subject: [yocto] Formulating Recipe for out-of-t=
ree kernel module<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">I am looking to produce a recipe for the amfeltec usb-fxs =
adaptor (<a href=3D"http://amfeltec.com/products/piranha-usb-fxs-adapter/" =
target=3D"_blank">http://amfeltec.com/products/piranha-usb-fxs-adapter/</a>=
)=2C with the intention of contributing this to the meta-telephony layer.<d=
iv><br></div><div>However=2C I have found a few obstacles to getting a clea=
n recipe:</div><div><ul><li>The makefile produces both a kernel module and =
a user utility=2C with the latter being hard-coded to build with g++. &nbsp=
=3BI can produce a recipe to produce one or other of the components but not=
 both. &nbsp=3BGiven the structure of the build directories=2C should this =
be be achievable=2C or should I be spitting up the recipe in two?</li><li><=
span style=3D"font-size:12pt=3B">Dahdi header files and Modules.symvers are=
 required. &nbsp=3BA header file is used to deduce the version of Dahdi=2C&=
nbsp=3BModules.symvers&nbsp=3Bis required for the&nbsp=3Bmodule build proce=
ss. &nbsp=3BHence=2C r</span><span style=3D"font-size:12pt=3B">equires the =
location of the Dahdi source/build directory. &nbsp=3BThis can be set relat=
ive to the amfeltec work directory but this feels wrong.</span></li></ul></=
div><div><div><br></div></div><div>In more general terms my questions are:<=
/div><div><ul><li>Should I split a recipe into kernel and non-kernel compon=
ents?</li><li>How should one out-of-tree recipe access the headers/Module.s=
ymvers from another (should that recipe be installing them in ${STAGING_KER=
NEL_DIR} (or somewhere else)?)</li></ul><div><br></div><div>Cheers=2C</div>=
</div><div>Chris</div><div><br></div> 		 	   		  </div>=0A=
<br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div></div> 		 	   		  </div>=
</body>
</html>=

--_2e4fd4c1-2f45-47cf-8f87-efc9da37e218_--
