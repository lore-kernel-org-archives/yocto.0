Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47F87E00C1A; Wed, 16 Nov 2016 02:48:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C11E00BF8
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 02:48:23 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp1-g21.free.fr (Postfix) with ESMTP id D7934B00560
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 11:48:21 +0100 (CET)
Date: Wed, 16 Nov 2016 11:48:21 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <669555700.320493216.1479293301778.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <2014071075.320402419.1479292209445.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [46.218.68.98]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: populate_sdk_ext: Unable to locate package nativesdk-buildtools-perl-dummy
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
X-List-Received-Date: Wed, 16 Nov 2016 10:48:27 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_320493215_1043563307.1479293301777"

------=_Part_320493215_1043563307.1479293301777
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 


I try to produce an extensible SDK for core-image-sato with the following configuration: 


BB_VERSION = "1.32.0" 
BUILD_SYS = "x86_64-linux" 
NATIVELSBSTRING = "universal" 
TARGET_SYS = "x86_64-poky-linux" 
MACHINE = "vtc7200" 
DISTRO = "poky-systemd" 
DISTRO_VERSION = "2.2" 
TUNE_FEATURES = "m64 corei7" 


The machine is based on an intel-corei7, with some features removed. And the distro is poky-based, with only systemd (as detailed in the ref manual). And I get the following error: 


ERROR : buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install packages. Command '/mnt/Yocto/vedecom-x86/build/tmp/sysroots/x86_ 
64-linux/usr/bin/apt-get install --force-yes --allow-unauthenticated nativesdk-locale-base-en-us nativesdk-git nativesdk-make native 
sdk-ca-certificates nativesdk-tar nativesdk-python3-modules nativesdk-texinfo nativesdk-python3-git nativesdk-ncurses-terminfo-base n 
ativesdk-chrpath nativesdk-python3-misc nativesdk-git-perltools nativesdk-buildtools-perl-dummy nativesdk-pigz nativesdk-wget natives 
dk-python3-core' returned 100: 
Reading package lists... 
Building dependency tree... 
Reading state information... 
E: Unable to locate package nativesdk-buildtools-perl-dummy 




The package exists and is in: 
tmp/deploy/deb/buildtools-dummy-nativesdk/nativesdk-buildtools-perl-dummy_1.0-r2_allarch.deb 
while the other listed packages are in tmp/deploy/deb/x86_64-nativesdk. 


It seems this package is empty, so maybe I should simply remove it from poky/meta/recipes-core/meta/buildtools-tarball.bb. 


Thanks for your help 
Michel 

------=_Part_320493215_1043563307.1479293301777
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style type=3D'text/css'>p { margin: 0; }</style></head><body><=
div style=3D'font-family: times new roman,new york,times,serif; font-size: =
12pt; color: #000000'><span style=3D"font-family: &quot;times new roman&quo=
t;, &quot;new york&quot;, times, serif; color: rgb(0, 0, 0); font-size: 12p=
t;">Hi,</span><div style=3D"font-family: &quot;times new roman&quot;, &quot=
;new york&quot;, times, serif; color: rgb(0, 0, 0); font-size: 12pt;"><br><=
/div><div style=3D"font-family: &quot;times new roman&quot;, &quot;new york=
&quot;, times, serif; color: rgb(0, 0, 0); font-size: 12pt;">I try to produ=
ce an extensible SDK for core-image-sato with the following configuration:<=
/div><div style=3D"font-family: &quot;times new roman&quot;, &quot;new york=
&quot;, times, serif; color: rgb(0, 0, 0); font-size: 12pt;"><br></div><div=
 style=3D"font-family: &quot;times new roman&quot;, &quot;new york&quot;, t=
imes, serif; color: rgb(0, 0, 0);"><span style=3D"font-family: monospace;">=
<font size=3D"1"><span style=3D"background-color: rgb(255, 255, 255);">BB_V=
ERSION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "1.32.0"
</span><br>BUILD_SYS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "x=
86_64-linux"
<br>NATIVELSBSTRING &nbsp;&nbsp;=3D "universal"
<br>TARGET_SYS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "x86_64-poky-l=
inux"
<br>MACHINE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D=
 "vtc7200"
<br>DISTRO &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;=3D "poky-systemd"
<br>DISTRO_VERSION &nbsp;&nbsp;&nbsp;=3D "2.2"
<br>TUNE_FEATURES &nbsp;&nbsp;&nbsp;&nbsp;=3D "m64 corei7"<br></font>
<br></span></div><div style=3D"font-family: &quot;times new roman&quot;, &q=
uot;new york&quot;, times, serif; color: rgb(0, 0, 0); font-size: 12pt;">Th=
e machine is based on an intel-corei7, with some features removed. And the =
distro is poky-based, with only systemd (as detailed in the ref manual). An=
d&nbsp;<span style=3D"font-size: 12pt;">I get the following error:</span></=
div><div style=3D"font-family: &quot;times new roman&quot;, &quot;new york&=
quot;, times, serif; color: rgb(0, 0, 0); font-size: 12pt;"><br></div><div =
style=3D"font-family: &quot;times new roman&quot;, &quot;new york&quot;, ti=
mes, serif;"><span style=3D"font-family: monospace;"><font size=3D"1"><span=
 style=3D"font-weight: bold; background-color: rgb(255, 255, 255);">ERROR</=
span><span style=3D"background-color: rgb(255, 255, 255);">: </span><span s=
tyle=3D"background-color: rgb(255, 255, 255);">buildtools-tarball-1.0-r0 do=
_populate_sdk: Unable to install packages. Command '/mnt/Yocto/vedecom-x86/=
build/tmp/sysroots/x86_</span><br>64-linux/usr/bin/apt-get &nbsp;install --=
force-yes --allow-unauthenticated nativesdk-locale-base-en-us nativesdk-git=
 nativesdk-make native<br>sdk-ca-certificates nativesdk-tar nativesdk-pytho=
n3-modules nativesdk-texinfo nativesdk-python3-git nativesdk-ncurses-termin=
fo-base n<br>ativesdk-chrpath nativesdk-python3-misc nativesdk-git-perltool=
s nativesdk-buildtools-perl-dummy nativesdk-pigz nativesdk-wget natives<br>=
dk-python3-core' returned 100:<span style=3D"background-color: rgb(255, 255=
, 255);">
</span><br><span style=3D"background-color: rgb(255, 255, 255);">Reading pa=
ckage lists... &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span=
 style=3D"background-color: rgb(255, 255, 255);">&nbsp;</span><br><span sty=
le=3D"background-color: rgb(255, 255, 255);">Building dependency tree... &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"background-color: rgb(255=
, 255, 255);">&nbsp;</span><br><span style=3D"background-color: rgb(255, 25=
5, 255);">Reading state information... &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span=
 style=3D"background-color: rgb(255, 255, 255);">&nbsp;</span><br><span sty=
le=3D"background-color: rgb(255, 255, 255);">E: Unable to locate package na=
tivesdk-buildtools-perl-dummy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br><=
/font></span></div><div style=3D"font-family: &quot;times new roman&quot;, =
&quot;new york&quot;, times, serif;"><font size=3D"1"></font></div><p style=
=3D"font-family: &quot;times new roman&quot;, &quot;new york&quot;, times, =
serif; color: rgb(0, 0, 0); font-size: 12pt;"><span style=3D"font-weight: n=
ormal;"><br></span></p><p><span style=3D"color: rgb(0, 0, 0); font-family: =
&quot;times new roman&quot;, &quot;new york&quot;, times, serif; font-size:=
 12pt; font-weight: normal;">The package exists and is in:</span></p><p><fo=
nt face=3D"times new roman, new york, times, serif"><span style=3D"font-siz=
e: 16px;">tmp/deploy/deb/buildtools-dummy-nativesdk/nativesdk-buildtools-pe=
rl-dummy_1.0-r2_allarch.deb</span></font></p><p><font face=3D"times new rom=
an, new york, times, serif"><span style=3D"font-size: 16px;">while the othe=
r listed packages are in&nbsp;tmp/deploy/deb/x86_64-nativesdk.</span></font=
></p><p><font face=3D"times new roman, new york, times, serif"><span style=
=3D"font-size: 16px;"><br></span></font></p><p><font face=3D"times new roma=
n, new york, times, serif"><span style=3D"font-size: 16px;">It seems this p=
ackage is empty, so maybe I should simply remove it from&nbsp;poky/meta/rec=
ipes-core/meta/buildtools-tarball.bb.</span></font></p><p><font face=3D"tim=
es new roman, new york, times, serif"><span style=3D"font-size: 16px;"><br>=
</span></font></p><p><font face=3D"times new roman, new york, times, serif"=
><span style=3D"font-size: 16px;">Thanks for your help</span></font></p><p>=
<font face=3D"times new roman, new york, times, serif"><span style=3D"font-=
size: 16px;">Michel</span></font></p></div></body></html>

------=_Part_320493215_1043563307.1479293301777--
