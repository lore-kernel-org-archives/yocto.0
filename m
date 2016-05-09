Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A68BAE00EC3; Mon,  9 May 2016 04:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S31.hotmail.com (dub004-omc3s31.hotmail.com
	[157.55.2.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B56E008BA
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 04:15:28 -0700 (PDT)
Received: from DUB130-W50 ([157.55.2.8]) by DUB004-OMC3S31.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 9 May 2016 04:15:27 -0700
X-TMN: [rSET571ggjB5srUF2kuAAm66ojROBl32]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 9 May 2016 12:15:26 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 09 May 2016 11:15:27.0725 (UTC)
	FILETIME=[173211D0:01D1A9E4]
Subject: Formulating Recipe for out-of-tree kernel module
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
X-List-Received-Date: Mon, 09 May 2016 11:15:33 -0000
Content-Type: multipart/alternative;
	boundary="_89868f93-4e05-40ca-a694-2d310405e812_"

--_89868f93-4e05-40ca-a694-2d310405e812_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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
 		 	   		  =

--_89868f93-4e05-40ca-a694-2d310405e812_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I am looking to produce a recipe=
 for the amfeltec usb-fxs adaptor (<a href=3D"http://amfeltec.com/products/=
piranha-usb-fxs-adapter/" target=3D"_blank">http://amfeltec.com/products/pi=
ranha-usb-fxs-adapter/</a>)=2C with the intention of contributing this to t=
he meta-telephony layer.<div><br></div><div>However=2C I have found a few o=
bstacles to getting a clean recipe:</div><div><ul><li>The makefile produces=
 both a kernel module and a user utility=2C with the latter being hard-code=
d to build with g++. &nbsp=3BI can produce a recipe to produce one or other=
 of the components but not both. &nbsp=3BGiven the structure of the build d=
irectories=2C should this be be achievable=2C or should I be spitting up th=
e recipe in two?</li><li><span style=3D"font-size: 12pt=3B">Dahdi header fi=
les and Modules.symvers are required. &nbsp=3BA header file is used to dedu=
ce the version of Dahdi=2C&nbsp=3BModules.symvers&nbsp=3Bis required for th=
e&nbsp=3Bmodule build process. &nbsp=3BHence=2C r</span><span style=3D"font=
-size: 12pt=3B">equires the location of the Dahdi source/build directory. &=
nbsp=3BThis can be set relative to the amfeltec work directory but this fee=
ls wrong.</span></li></ul></div><div><div><br></div></div><div>In more gene=
ral terms my questions are:</div><div><ul><li>Should I split a recipe into =
kernel and non-kernel components?</li><li>How should one out-of-tree recipe=
 access the headers/Module.symvers from another (should that recipe be inst=
alling them in ${STAGING_KERNEL_DIR} (or somewhere else)?)</li></ul><div><b=
r></div><div>Cheers=2C</div></div><div>Chris</div><div><br></div> 		 	   		=
  </div></body>
</html>=

--_89868f93-4e05-40ca-a694-2d310405e812_--
