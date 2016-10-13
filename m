Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D019E00E19; Thu, 13 Oct 2016 07:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E6DCE00BF4
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 07:56:36 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp1-g21.free.fr (Postfix) with ESMTP id CECF8B004D5;
	Thu, 13 Oct 2016 16:56:34 +0200 (CEST)
Date: Thu, 13 Oct 2016 16:56:34 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <547858470.126510775.1476370594532.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <op.yo9yvamsmnlnty@pc-mls.ecafaros.local>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: add dejavu-fonts to image
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
X-List-Received-Date: Thu, 13 Oct 2016 14:56:40 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_126510774_1215150571.1476370594531"

------=_Part_126510774_1215150571.1476370594531
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable




Hello, thanks a lot the build work now !=20

I'm very proud: this is the 1st time I can help someone on Yocto! This mean=
s a lot to me ;-)=20


<blockquote>


But i have another issue, i would like to install the font in /usr/lib/font=
s, this is not the case for the moment (it 's for Qt5.7 use). How i can sai=
d to yocto to install font (.ttf) on this folder please ?=20
</blockquote>
I also need to use Qt5.7, but since I'm currently on other tasks, you disco=
ver the troubles a couple of hours before me. So let's try to debug this to=
gether=E2=80=A6=20
<blockquote>


</blockquote>



1/ File ttf-dejavu_2.37.bb includes (requires) `ttf.inc` that is in the sam=
e folder.=20
2/ File ttf.inc has the following method:=20

do_install() {=20
install -d ${D}${datadir}/fonts/truetype/=20
find ./ -name '*.tt[cf]' -exec install -m 0644 {} ${D}${datadir}/fonts/true=
type/ \;=20
}=20


which is in turn appended by dejavu with:=20

do_install_append () {=20
install -d ${D}${sysconfdir}/fonts/conf.d/=20
install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/c=
onf.d/=20
}=20


3/ The log of the install task of the recipe is /tmp/work/all-poky-linux/tt=
f-dejavu/2.37-r7/temp/run.do_install=20
We have:=20

export datadir=3D"/usr/share"=20

export sysconfdir=3D"/etc"=20



I compared to my Debian system: the files are stored in the same folders. S=
o it seems this is qt that doesn't search in the "correct" place.=20


4/ After some grepping in meta-qt5, I have:=20



classes/qmake5_paths.bbclass=20
OE_QMAKE_PATH_LIBS =3D "${libdir}"=20



classes/qmake5_paths.bbclass=20
OE_QMAKE_PATH_QT_FONTS =3D "${OE_QMAKE_PATH_LIBS}/fonts"=20


5/ But I don't know what is the best solution now. We could change the OE_Q=
MAKE_PATH_QT_FONTS variable. But this implies to recompile many pieces, I b=
elieve.=20


So I opt for changing the do_install function. The quick & dirty solution i=
s to create a ttf-dejavu_2.37.bbappend file that totally redefine the do_in=
stall method.=20




do_install() {=20
install -d ${D}${datadir}/fonts/truetype/=20
find ./ -name '*.tt[cf]' -exec install -m 0644 {} ${D}${ libdir }/fonts/tru=
etype/ \;=20

install -d ${D}${sysconfdir}/fonts/conf.d/=20
install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/c=
onf.d/=20
}=20




I can't test it right now, but I hope this helps you.=20


Michel=20








------=_Part_126510774_1215150571.1476370594531
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style type=3D'text/css'>p { margin: 0; }</style></head><body><=
div style=3D'font-family: times new roman,new york,times,serif; font-size: =
12pt; color: #000000'><blockquote style=3D"color: rgb(0, 0, 0); font-family=
: Helvetica, Arial, sans-serif; font-size: 12pt; border-left: 2px solid rgb=
(16, 16, 255); margin-left: 5px; padding-left: 5px; font-weight: normal; fo=
nt-style: normal; text-decoration: none;"><div id=3D"DWT282">Hello, thanks =
a lot the build work now !</div></blockquote><span style=3D"font-family: He=
lvetica, Arial, sans-serif; font-size: 12pt;">I'm very proud: this is the 1=
st time I can help someone on Yocto! This means a lot to me ;-)</span><div>=
<font face=3D"Helvetica, Arial, sans-serif"><span style=3D"font-size: 16px;=
"><br></span></font><blockquote style=3D"color: rgb(0, 0, 0); font-family: =
Helvetica, Arial, sans-serif; font-size: 12pt; border-left: 2px solid rgb(1=
6, 16, 255); margin-left: 5px; padding-left: 5px; font-weight: normal; font=
-style: normal; text-decoration: none;"><div></div><div id=3D"DWT265"><span=
 style=3D"font-size: 12pt;">But i have another issue, i would like to insta=
ll the font in /usr/lib/fonts, this is not the case for the moment (it 's f=
or Qt5.7 use). How i can said to yocto to install font (.ttf) on this folde=
r please ?</span></div></blockquote><span style=3D"font-family: Helvetica, =
Arial, sans-serif; font-size: 12pt;">I also need to use Qt5.7, but since I'=
m currently on other tasks, you discover the troubles a couple of hours bef=
ore me. So let's try to debug this together=E2=80=A6</span><blockquote styl=
e=3D"color: rgb(0, 0, 0); font-family: Helvetica, Arial, sans-serif; font-s=
ize: 12pt; border-left: 2px solid rgb(16, 16, 255); margin-left: 5px; paddi=
ng-left: 5px; font-weight: normal; font-style: normal; text-decoration: non=
e;"><div></div></blockquote><style>p { margin: 0; }</style><style>body { fo=
nt-family:'Times New Roman'; font-size:13px}</style></div><div><span style=
=3D"font-family: Helvetica, Arial, sans-serif; font-size: 12pt;"><br></span=
></div><div><span style=3D"font-family: Helvetica, Arial, sans-serif; font-=
size: 12pt;"><b>1/</b> File&nbsp;</span><span style=3D"font-size: 16px; fon=
t-family: Helvetica, Arial, sans-serif;">ttf-dejavu_2.37.bb includes (requi=
res) `ttf.inc` that is in the same folder.</span></div><div><span style=3D"=
font-size: 16px; font-family: Helvetica, Arial, sans-serif;"><b>2/</b> File=
 ttf.inc has the following method:</span></div><div><div><span style=3D"fon=
t-size: 16px;"><font face=3D"courier new, courier, monaco, monospace, sans-=
serif">do_install() {</font></span></div><div><span style=3D"font-size: 16p=
x;"><font face=3D"courier new, courier, monaco, monospace, sans-serif">&nbs=
p; &nbsp; install -d ${D}${datadir}/fonts/truetype/</font></span></div><div=
><span style=3D"font-size: 16px;"><font face=3D"courier new, courier, monac=
o, monospace, sans-serif">&nbsp; &nbsp; find ./ -name '*.tt[cf]' -exec inst=
all -m 0644 {} ${D}${datadir}/fonts/truetype/ \;</font></span></div><div><s=
pan style=3D"font-size: 16px;"><font face=3D"courier new, courier, monaco, =
monospace, sans-serif">}</font></span></div></div><div><font face=3D"Helvet=
ica, Arial, sans-serif"><span style=3D"font-size: 16px;"><br></span></font>=
</div><div><font face=3D"Helvetica, Arial, sans-serif"><span style=3D"font-=
size: 16px;">which is in turn appended by dejavu with:</span></font></div><=
div><div><span style=3D"font-size: 16px;"><font face=3D"courier new, courie=
r, monaco, monospace, sans-serif">do_install_append () {</font></span></div=
><div><span style=3D"font-size: 16px;"><font face=3D"courier new, courier, =
monaco, monospace, sans-serif">&nbsp; &nbsp; install -d ${D}${sysconfdir}/f=
onts/conf.d/</font></span></div><div><span style=3D"font-size: 16px;"><font=
 face=3D"courier new, courier, monaco, monospace, sans-serif">&nbsp; &nbsp;=
 install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/=
conf.d/</font></span></div><div><span style=3D"font-size: 16px;"><font face=
=3D"courier new, courier, monaco, monospace, sans-serif">}</font></span></d=
iv><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px=
;"><b><br></b></div></div><div style=3D"font-family: Helvetica, Arial, sans=
-serif; font-size: 16px;"><b>3/ </b>The log of the install task of the reci=
pe is&nbsp;/tmp/work/all-poky-linux/ttf-dejavu/2.37-r7/temp/run.do_install<=
/div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16=
px;">We have:</div><div><div style=3D"font-size: 16px;"><font face=3D"couri=
er new, courier, monaco, monospace, sans-serif">export datadir=3D"/usr/shar=
e"</font></div><div><div><span style=3D"font-size: 16px;"><font face=3D"cou=
rier new, courier, monaco, monospace, sans-serif">export sysconfdir=3D"/etc=
"</font></span></div></div><div style=3D"font-family: Helvetica, Arial, san=
s-serif; font-size: 16px;"><div><br></div></div><div style=3D"font-family: =
Helvetica, Arial, sans-serif; font-size: 16px;">I compared to my Debian sys=
tem: the files are stored in the same folders. So it seems this is qt that =
doesn't search in the "correct" place.</div><div style=3D"font-family: Helv=
etica, Arial, sans-serif; font-size: 16px;"><br></div><div style=3D"font-fa=
mily: Helvetica, Arial, sans-serif; font-size: 16px;"><b>4/</b> After some =
grepping in meta-qt5, I have:</div><div style=3D"font-family: Helvetica, Ar=
ial, sans-serif; font-size: 16px;"><br></div><div style=3D"font-family: Hel=
vetica, Arial, sans-serif; font-size: 16px;"><div>classes/qmake5_paths.bbcl=
ass</div><div>OE_QMAKE_PATH_LIBS =3D "${libdir}"</div><div><br></div></div>=
<div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;">=
<div>classes/qmake5_paths.bbclass</div><div>OE_QMAKE_PATH_QT_FONTS =3D "${O=
E_QMAKE_PATH_LIBS}/fonts"</div><div><br></div></div><div style=3D"font-fami=
ly: Helvetica, Arial, sans-serif; font-size: 16px;"><b>5/</b> But I don't k=
now what is the best solution now. We could change the&nbsp;OE_QMAKE_PATH_Q=
T_FONTS variable. But this implies to recompile many pieces, I believe.</di=
v><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;=
"><br></div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-s=
ize: 16px;">So I opt for changing the do_install function. The quick &amp; =
dirty solution is to create a&nbsp;ttf-dejavu_2.37.bbappend file that total=
ly redefine the do_install method.</div><div style=3D"font-family: Helvetic=
a, Arial, sans-serif; font-size: 16px;"><br></div><div style=3D"font-family=
: Helvetica, Arial, sans-serif; font-size: 16px;"><div><div><font face=3D"c=
ourier new, courier, monaco, monospace, sans-serif">do_install() {</font></=
div><div><font face=3D"courier new, courier, monaco, monospace, sans-serif"=
>&nbsp; &nbsp; install -d ${D}${datadir}/fonts/truetype/</font></div><div><=
font face=3D"courier new, courier, monaco, monospace, sans-serif">&nbsp; &n=
bsp; find ./ -name '*.tt[cf]' -exec install -m 0644 {} ${D}${<b>libdir</b>}=
/fonts/truetype/ \;</font></div></div><div><div style=3D"font-family: &quot=
;times new roman&quot;, &quot;new york&quot;, times, serif;"><font face=3D"=
courier new, courier, monaco, monospace, sans-serif">&nbsp; &nbsp; install =
-d ${D}${sysconfdir}/fonts/conf.d/</font></div><div style=3D"font-family: &=
quot;times new roman&quot;, &quot;new york&quot;, times, serif;"><font face=
=3D"courier new, courier, monaco, monospace, sans-serif">&nbsp; &nbsp; inst=
all -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/conf.=
d/</font></div><div style=3D"font-family: &quot;times new roman&quot;, &quo=
t;new york&quot;, times, serif;"><font face=3D"courier new, courier, monaco=
, monospace, sans-serif">}</font></div></div><div><font face=3D"courier new=
, courier, monaco, monospace, sans-serif"><br></font></div></div><div style=
=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;"><br></div>=
<div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;">=
I can't test it right now, but I hope this helps you.</div><div style=3D"fo=
nt-family: Helvetica, Arial, sans-serif; font-size: 16px;"><br></div><div s=
tyle=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;">Michel=
</div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 1=
6px;"><br></div><div style=3D"font-family: Helvetica, Arial, sans-serif; fo=
nt-size: 16px;"><br></div><div style=3D"font-family: Helvetica, Arial, sans=
-serif; font-size: 16px;"><br></div><div style=3D"font-family: Helvetica, A=
rial, sans-serif; font-size: 16px;"><br></div></div></div></body></html>

------=_Part_126510774_1215150571.1476370594531--
