Return-Path: <joa_rodrigues@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88D4EE007AB; Tue, 17 Feb 2015 00:50:40 -0800 (PST)
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
	*      [157.55.2.11 listed in list.dnswl.org]
Received: from DUB004-OMC3S2.hotmail.com (dub004-omc3s2.hotmail.com
	[157.55.2.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D94B1E0078E
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 00:50:35 -0800 (PST)
Received: from DUB117-W40 ([157.55.2.9]) by DUB004-OMC3S2.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Tue, 17 Feb 2015 00:50:34 -0800
X-TMN: [GG4Wi1UAsOZoM+IYoMSBkwu/XirzJcqZ]
X-Originating-Email: [joa_rodrigues@hotmail.com]
Message-ID: <DUB117-W40DA159C517EC34803CA52922F0@phx.gbl>
From: joachim rodrigues <joa_rodrigues@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 17 Feb 2015 08:50:34 +0000
Importance: Normal
In-Reply-To: <DUB117-W139C9921C5259D684A39848922E0@phx.gbl>
References: <DUB117-W139C9921C5259D684A39848922E0@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 17 Feb 2015 08:50:34.0883 (UTC)
	FILETIME=[CB356530:01D04A8E]
Subject: Re: Missing packages on image target
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
X-List-Received-Date: Tue, 17 Feb 2015 08:50:40 -0000
Content-Type: multipart/alternative;
	boundary="_7c7ee98b-c943-413f-b86d-ce72e95e5820_"

--_7c7ee98b-c943-413f-b86d-ce72e95e5820_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry i made an error in the package name. The package not installed is : g=
streamer

Hi=2C i installed successfully a linux on my raspberry following this tutor=
ial :https://delog.wordpress.com/2014/09/16/embedded-linux-system-for-raspb=
erry-pi-with-yocto-project/
But once installed in my board=2C gstreamer is not installed although it is=
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
Joachim 		 	   		   		 	   		  =

--_7c7ee98b-c943-413f-b86d-ce72e95e5820_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div><div dir=3D"ltr"><div><span=
 style=3D"font-family:'Times New Roman'=3Bfont-size:12pt=3B">Sorry i made a=
n error in the package name. The package not installed is :&nbsp=3B</span><=
span style=3D"font-size: 12pt=3B">gstreamer</span></div><div><span style=3D=
"font-size: 12pt=3B"><br></span></div><div><span style=3D"font-size: 12pt=
=3B"><br></span></div><div><span style=3D"font-family:'Times New Roman'=3Bf=
ont-size:12pt=3B">Hi=2C&nbsp=3B</span></div><div><font face=3D"Times New Ro=
man">i installed successfully a linux on my raspberry following this tutori=
al :</font></div><div><a href=3D"https://delog.wordpress.com/2014/09/16/emb=
edded-linux-system-for-raspberry-pi-with-yocto-project/" target=3D"_blank">=
https://delog.wordpress.com/2014/09/16/embedded-linux-system-for-raspberry-=
pi-with-yocto-project/</a></div><div><br></div><div>But once installed in m=
y board=2C&nbsp=3Bgstreamer&nbsp=3Bis not installed although it is included=
 in the recipes-multimedia</div><div>wich are loaded this way :</div><div><=
br></div><div>build-rpi/conf/bblayers.conf :&nbsp=3B</div><div><div>BBLAYER=
S ?=3D " \</div><div>&nbsp=3B /home/jj/dev/yocto/poky/meta \</div><div>&nbs=
p=3B /home/jj/dev/yocto/poky/meta-yocto \</div><div>&nbsp=3B /home/jj/dev/y=
octo/poky/meta-yocto-bsp \</div><div>&nbsp=3B /home/jj/dev/yocto/poky/meta-=
gstreamer1.0 \</div><div>&nbsp=3B /home/jj/dev/yocto/poky/meta-raspberrypi =
\</div><div>&nbsp=3B "</div></div><div><br></div><div>&nbsp=3B /home/jj/dev=
/yocto/poky/meta-raspberrypi/conf/layer.conf :&nbsp=3B</div><div><div>BBFIL=
ES +=3D "${LAYERDIR}/recipes*/*/*.bb \</div><div>&nbsp=3B &nbsp=3B &nbsp=3B=
 &nbsp=3B &nbsp=3B &nbsp=3B ${LAYERDIR}/recipes*/*/*.bbappend"</div></div><=
div><br></div><div>And i have&nbsp=3B</div><div>&nbsp=3B /home/jj/dev/yocto=
/poky/meta-raspberrypi/resipes-multimedia/gstreamer/gstreamer1.0-plugins-ba=
d_%.bbappend</div><div>and&nbsp=3B</div><div>&nbsp=3B /home/jj/dev/yocto/po=
ky/meta-gstreamer1.0/<span style=3D"font-size:12pt=3B">resipes-multimedia/g=
streamer/</span>gstreamer1.0-plugins-bad_1.4.0.bb</div><div><br></div><div>=
in my understanding as the recipe is included in the path it should be incl=
uded in the board once the image installed</div><div><br></div><div>Thanks =
&nbsp=3B</div><div><br></div><div>Joachim</div> 		 	   		  </div></div><sty=
le><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style> 		 	   		  </div></body>
</html>=

--_7c7ee98b-c943-413f-b86d-ce72e95e5820_--
