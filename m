Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54912E00D39; Tue,  3 Oct 2017 10:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52629E00CF6
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 10:58:37 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 03 Oct 2017 17:58:13 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 3 Oct 2017 10:57:14 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 3 Oct 2017 10:57:14 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: trying to initialize a new devtool recipe using mercurial SCM
Thread-Index: AdM5UKO0x3+4CpfiQY65PixC7/UxbQDHAG5Q
Date: Tue, 3 Oct 2017 17:57:14 +0000
Message-ID: <5bf2456e76ce4b0ba3f6406a9816a841@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507053453-321458-14001-4389-3
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185645
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: trying to initialize a new devtool recipe using mercurial SCM
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
X-List-Received-Date: Tue, 03 Oct 2017 17:58:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5bf2456e76ce4b0ba3f6406a9816a841sakurauscom_"

--_000_5bf2456e76ce4b0ba3f6406a9816a841sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there anyone that has any experience with trying to create a recipe with=
 devtool with the source in a mercurial repository?



I did some more searching and it looks like the 'module' is the repository =
that you are trying to pull, so I modified the command to:


devtool add canfestival sources/canfestival -d hg://bitbucket.org/Mongo;mod=
ule=3Dcanfestival-3-asc;protocol=3Dhttps


This did not correct the error:


ERROR: Command 'recipetool --color=3Dalways create -o /tmp/devtool28_yu0qq =
"hg://bitbucket.org/Mongo"  -x /usr/share/sources/canfestival -N canfestiva=
l' failed:
NOTE: Fetching hg://bitbucket.org/Mongo...
ERROR: URL: 'hg://bitbucket.org/Mongo' is missing the required parameter 'm=
odule'

The module & protocol are not being passed to recipetool by devtool, can an=
yone tell me what I'm doing wrong.


Regards,

Greg


Hi list,

I'm a new user of Yocto and I'm trying use devtool to set up a recipe that =
has a source URI that points to a mercurial repository.

Here is the output of running devtool:



devtool add canfestival sources/canfestival -d hg://bitbucket.org/Mongo/can=
festival-3-asc;protocol=3Dhttps

DEBUG: Using basepath /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberry=
pi3

DEBUG: Using standard bitbake path /home/gwilson/Qt-5.9/Yocto-build-RPi3/so=
urces/poky/bitbake

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/p=
oky/scripts/lib/devtool...

DEBUG: Loading plugin deploy

DEBUG: Loading plugin upgrade

DEBUG: Loading plugin package

DEBUG: Loading plugin build_sdk

DEBUG: Loading plugin sdk

DEBUG: Loading plugin search

DEBUG: Loading plugin utilcmds

DEBUG: Loading plugin build

DEBUG: Loading plugin runqemu

DEBUG: Loading plugin build_image

DEBUG: Loading plugin standard

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ras=
pberrypi3/workspace/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/p=
oky/meta-poky/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ras=
pberrypi3/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/p=
oky/meta/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-raspberrypi/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-oe/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-python/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-networking/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-initramfs/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-multimedia/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-boot2qt/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-boot2qt/meta-raspberrypi-extras/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-mingw/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-qt5/lib/devtool...

DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-sakura/lib/devtool...

DEBUG: Reading workspace in /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ras=
pberrypi3/workspace

DEBUG: Executing command "recipetool --color=3Dalways create -o /tmp/devtoo=
l_vu_ossg "hg://bitbucket.org/Mongo/canfestival-3-asc"  -x /home/gwilson/Qt=
-5.9/Yocto-build-RPi3/sources/canfestival -N canfestival"

ERROR: Command 'recipetool --color=3Dalways create -o /tmp/devtool_vu_ossg =
"hg://bitbucket.org/Mongo/canfestival-3-asc"  -x /home/gwilson/Qt-5.9/Yocto=
-build-RPi3/sources/canfestival -N canfestival' failed:

NOTE: Fetching hg://bitbucket.org/Mongo/canfestival-3-asc...

ERROR: URL: 'hg://bitbucket.org/Mongo/canfestival-3-asc' is missing the req=
uired parameter 'module'



I found one reference that implied that adding ';module=3D' might help but =
it made no difference.



I can do a "hg clone https://bitbucket.org/Mongo/canfestival-3-asc'.



Any help would be greatly appreciated.



Greg Wilson-Lindberg

Sakura Finetek

310-783-5075

--_000_5bf2456e76ce4b0ba3f6406a9816a841sakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<div style=3D"">
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D">Is there anyone that has any experience with =
trying to create a recipe with devtool with the source in a mercurial repos=
itory?</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D">I did some more searching and it looks like t=
he 'module' is the repository that you are trying to pull, so I modified th=
e command to:</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D"><br>
</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D"><span style=3D"font-family:monospace">devtool=
 add canfestival sources/canfestival -d hg://bitbucket.org/Mongo;module=3Dc=
anfestival-3-asc;protocol=3Dhttps<br>
</span><br>
</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D">This did not correct the error:</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D"><br>
</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D"><span style=3D"font-family:monospace"><span s=
tyle=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>:
<span style=3D"color: rgb(178, 24, 24);">Command 'recipetool --color=3Dalwa=
ys create -o /tmp/devtool28_yu0qq &quot;hg://bitbucket.org/Mongo&quot; &nbs=
p;-x /usr/share/sources/canfestival -N canfestival' failed:</span>
<br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">NOTE</span>: Fe=
tching hg://bitbucket.org/Mongo...<span style=3D"color: rgb(178, 24, 24);">=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;</span>&nbsp;<br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>: <=
span style=3D"color: rgb(178, 24, 24);">
URL: 'hg://bitbucket.org/Mongo' is missing the required parameter 'module'<=
/span><br>
<br>
</span>The module &amp; protocol are not being passed to recipetool by devt=
ool, can anyone tell me what I'm doing wrong.</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D"><br>
</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D">Regards,</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D">Greg</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"color:#1F497D"><br>
</span></p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0in 0in 0i=
n 4.0pt">
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<a name=3D"_MailOriginal">Hi list,</a></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">I'm a new user of Yocto and I'm trying use devtool to set =
up a recipe that has a source URI that points to a mercurial repository.</s=
pan></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">Here is the output of running devtool:</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">devtool add canfestival sources/canfestival -d hg://bitbuc=
ket.org/Mongo/canfestival-3-asc;protocol=3Dhttps</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Using basepath /home/gwilson/Qt-5.9/Yocto-build-RPi=
3/build-raspberrypi3</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Using standard bitbake path /home/gwilson/Qt-5.9/Yo=
cto-build-RPi3/sources/poky/bitbake</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/poky/scripts/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin deploy</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin upgrade</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin package</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin build_sdk</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin sdk</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin search</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin utilcmds</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin build</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin runqemu</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin build_image</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugin standard</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/build-raspberrypi3/workspace/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/poky/meta-poky/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/build-raspberrypi3/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/poky/meta/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-raspberrypi/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-openembedded/meta-oe/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-openembedded/meta-python/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-openembedded/meta-networking/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-openembedded/meta-initramfs/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-openembedded/meta-multimedia/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-boot2qt/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-boot2qt/meta-raspberrypi-extras/lib/devtool...</span><=
/p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-mingw/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-qt5/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/meta-sakura/lib/devtool...</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Reading workspace in /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/build-raspberrypi3/workspace</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">DEBUG: Executing command &quot;recipetool --color=3Dalways=
 create -o /tmp/devtool_vu_ossg &quot;hg://bitbucket.org/Mongo/canfestival-=
3-asc&quot;&nbsp; -x /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/canfesti=
val -N canfestival&quot;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">ERROR: Command 'recipetool --color=3Dalways create -o /tmp=
/devtool_vu_ossg &quot;hg://bitbucket.org/Mongo/canfestival-3-asc&quot;&nbs=
p; -x /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/canfestival -N canfesti=
val' failed:</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">NOTE: Fetching hg://bitbucket.org/Mongo/canfestival-3-asc.=
..</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">ERROR: URL: 'hg://bitbucket.org/Mongo/canfestival-3-asc' i=
s missing the required parameter 'module'</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">I found one reference that implied that adding ';module=3D=
' might help but it made no difference.</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">I can do a &quot;hg clone </span><a href=3D"https://bitbuc=
ket.org/Mongo/canfestival-3-asc" style=3D"color: rgb(5, 99, 193); text-deco=
ration: underline;"><span style=3D"">https://bitbucket.org/Mongo/canfestiva=
l-3-asc</span><span style=3D""></span></a><span style=3D"">'.</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">Any help would be greatly appreciated.</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D""><span style=3D"font-size:10.0pt; font-family:&quot;Arial&q=
uot;,sans-serif">Greg Wilson-Lindberg</span></span><span style=3D""><span s=
tyle=3D"font-size:12.0pt; font-family:&quot;Times New Roman&quot;,serif"></=
span></span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D""><span style=3D"font-size:10.0pt; font-family:&quot;Arial&q=
uot;,sans-serif">Sakura Finetek</span></span><span style=3D""><span style=
=3D"font-size:12.0pt; font-family:&quot;Times New Roman&quot;,serif"></span=
></span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D""><span style=3D"font-size:10.0pt; font-family:&quot;Arial&q=
uot;,sans-serif">310-783-5075</span></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_5bf2456e76ce4b0ba3f6406a9816a841sakurauscom_--
