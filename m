Return-Path: <joa_rodrigues@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B37BEE00777; Mon, 16 Feb 2015 13:40:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joa_rodrigues[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.39 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Feb 2015 13:40:31 PST
Received: from DUB004-OMC3S30.hotmail.com (dub004-omc3s30.hotmail.com
	[157.55.2.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0875E00769
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 13:40:31 -0800 (PST)
Received: from DUB117-W139 ([157.55.2.7]) by DUB004-OMC3S30.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Mon, 16 Feb 2015 13:39:26 -0800
X-TMN: [MjoipJ4Squ1yinBlj86BOCrM/ScWDKKc]
X-Originating-Email: [joa_rodrigues@hotmail.com]
Message-ID: <DUB117-W139C9921C5259D684A39848922E0@phx.gbl>
From: joachim rodrigues <joa_rodrigues@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 16 Feb 2015 21:39:26 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Feb 2015 21:39:26.0766 (UTC)
	FILETIME=[098A5CE0:01D04A31]
Subject: Missing packages on image target
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
X-List-Received-Date: Mon, 16 Feb 2015 21:40:33 -0000
Content-Type: multipart/alternative;
	boundary="_2042a7e1-e405-42ab-84c7-4ac9e62f614f_"

--_2042a7e1-e405-42ab-84c7-4ac9e62f614f_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C i installed successfully a linux on my raspberry following this tutor=
ial :https://delog.wordpress.com/2014/09/16/embedded-linux-system-for-raspb=
erry-pi-with-yocto-project/
But once installed in my board=2C crosswalk is not installed although it is=
 included in the recipes-multimediawich are loaded this way :
build-rpi/conf/bblayers.conf : BBLAYERS ?=3D " \  /home/jj/dev/yocto/poky/m=
eta \  /home/jj/dev/yocto/poky/meta-yocto \  /home/jj/dev/yocto/poky/meta-y=
octo-bsp \  /home/jj/dev/yocto/poky/meta-gstreamer1.0 \  /home/jj/dev/yocto=
/poky/meta-raspberrypi \  "
  /home/jj/dev/yocto/poky/meta-raspberrypi/conf/layer.conf : BBFILES +=3D "=
${LAYERDIR}/recipes*/*/*.bb \            ${LAYERDIR}/recipes*/*/*.bbappend"
And i have   /home/jj/dev/yocto/poky/meta-raspberrypi/resipes-multimedia/gs=
treamer/gstreamer1.0-plugins-bad_%.bbappendand   /home/jj/dev/yocto/poky/me=
ta-gstreamer1.0/resipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0=
.bb
in my understanding as the recipe is included in the path it should be incl=
uded in the board once the image installed
Thanks =20
Joachim 		 	   		  =

--_2042a7e1-e405-42ab-84c7-4ac9e62f614f_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div><span style=3D"font-family:=
 'Times New Roman'=3B font-size: 12pt=3B">Hi=2C&nbsp=3B</span></div><div><f=
ont face=3D"Times New Roman">i installed successfully a linux on my raspber=
ry following this tutorial :</font></div><div><a href=3D"https://delog.word=
press.com/2014/09/16/embedded-linux-system-for-raspberry-pi-with-yocto-proj=
ect/" target=3D"_blank">https://delog.wordpress.com/2014/09/16/embedded-lin=
ux-system-for-raspberry-pi-with-yocto-project/</a></div><div><br></div><div=
>But once installed in my board=2C crosswalk is not installed although it i=
s included in the recipes-multimedia</div><div>wich are loaded this way :</=
div><div><br></div><div>build-rpi/conf/bblayers.conf :&nbsp=3B</div><div><d=
iv>BBLAYERS ?=3D " \</div><div>&nbsp=3B /home/jj/dev/yocto/poky/meta \</div=
><div>&nbsp=3B /home/jj/dev/yocto/poky/meta-yocto \</div><div>&nbsp=3B /hom=
e/jj/dev/yocto/poky/meta-yocto-bsp \</div><div>&nbsp=3B /home/jj/dev/yocto/=
poky/meta-gstreamer1.0 \</div><div>&nbsp=3B /home/jj/dev/yocto/poky/meta-ra=
spberrypi \</div><div>&nbsp=3B "</div></div><div><br></div><div>&nbsp=3B /h=
ome/jj/dev/yocto/poky/meta-raspberrypi/conf/layer.conf :&nbsp=3B</div><div>=
<div>BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb \</div><div>&nbsp=3B &nbsp=
=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B ${LAYERDIR}/recipes*/*/*.bbappend"<=
/div></div><div><br></div><div>And i have&nbsp=3B</div><div>&nbsp=3B /home/=
jj/dev/yocto/poky/meta-raspberrypi/resipes-multimedia/gstreamer/gstreamer1.=
0-plugins-bad_%.bbappend</div><div>and&nbsp=3B</div><div>&nbsp=3B /home/jj/=
dev/yocto/poky/meta-gstreamer1.0/<span style=3D"font-size: 12pt=3B">resipes=
-multimedia/gstreamer/</span>gstreamer1.0-plugins-bad_1.4.0.bb</div><div><b=
r></div><div>in my understanding as the recipe is included in the path it s=
hould be included in the board once the image installed</div><div><br></div=
><div>Thanks &nbsp=3B</div><div><br></div><div>Joachim</div> 		 	   		  </d=
iv></body>
</html>=

--_2042a7e1-e405-42ab-84c7-4ac9e62f614f_--
