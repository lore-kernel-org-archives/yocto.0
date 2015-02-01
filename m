Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D201DE0070B; Sun,  1 Feb 2015 11:39:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A91E00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 11:38:59 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t11JcH7r032549;
	Mon, 2 Feb 2015 06:08:17 +1030
Message-Id: <b35cd8c63423d3c2fdccbdc99a2a45e5d5221898@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>,
	peterengcomau001@adam.com.au, "Martin Jansa" <martin.jansa@gmail.com>, 
	"Simon Bolek" <simon.bolek@googlemail.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <54CE5E14.3020500@dynamicdevices.co.uk>
Date: Mon, 02 Feb 2015 06:08:17 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 01 Feb 2015 19:39:03 -0000
Content-Type: multipart/alternative;
	boundary="=_caadfc7df52620a2517016cc1662a8d7"

--=_caadfc7df52620a2517016cc1662a8d7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,=0AI have no problem with qt5 with daisy and have been using it=
 fine for=0Aover 6 months. During that time I have cleaned my tmp file m=
ultiple=0Atimes which would force a new reload of the sources.=0AAlso I=
 dont have a problem with Dizzy when building=0Acore-image-mininal, core=
-image-full-cmdline and core-image-sato.=0A=0AMy problems occur when i e=
xplicitly use qt5 as follows:=0A=0AIMAGE_INSTALL +=3D "=0A=C2=A0=C2=A0=
=C2=A0 qtbase =0A=C2=A0=C2=A0=C2=A0 qtbase-fonts =0A=C2=A0=C2=A0=C2=A0 q=
tbase-plugins =0A=C2=A0=C2=A0=C2=A0 qtbase-tools =0A=C2=A0=C2=A0=C2=A0 q=
tmultimedia =0A=C2=A0=C2=A0=C2=A0 qtmultimedia-plugins =0A=C2=A0=C2=A0=
=C2=A0 qtmultimedia-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtsvg =0A=C2=A0=C2=
=A0=C2=A0 qtsvg-plugins =0A=C2=A0=C2=A0=C2=A0 qtsensors =0A=C2=A0=C2=A0=
=C2=A0 qtsystems =0A=C2=A0=C2=A0=C2=A0 qtsystems-tools =0A=C2=A0=C2=A0=
=C2=A0 qtsystems-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtscript =0A=C2=A0=C2=
=A0=C2=A0 qtgraphicaleffects-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtconnecti=
vity-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtlocation-plugins =0A=C2=A0=C2=A0=
=C2=A0 qtlocation-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtdeclarative =0A=C2=
=A0=C2=A0=C2=A0 qtdeclarative-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtdeclara=
tive-plugins =0A=C2=A0=C2=A0=C2=A0 qtquick1 =0A=C2=A0=C2=A0=C2=A0 qtquic=
k1-qmlplugins =0A=C2=A0=C2=A0=C2=A0 qtquick1-plugins =0A=C2=A0=C2=A0=C2=
=A0 qtwebkit =0A=C2=A0=C2=A0=C2=A0 qtwebkit-qmlplugins =0A"=0A=0AIf i bi=
tbake my recipe using the -k option, I only get 3 failed=0Arecipes=0A 0:=
 qtbase-native-5.4.0-r0 do_fetch (pid 13279)=0A1: qtbase-5.4.0-r0 do_fet=
ch (pid 13280)=0A2: qtdeclarative-5.4.0-r0 do_fetch (pid 13283)=0A=0Aand=
 these relate two 2 failed fetchs:=0AERROR: Function failed: Fetcher fai=
lure for URL:=0A'http://download.qt-project.org/official_releases/qt/5.4=
/5.4.0/submodules/qtdeclarative-opensource-src-5.4.0.tar.xz'.=0AUnable t=
o fetch URL from any source.=0AERROR: Function failed: Fetcher failure f=
or URL:=0A'http://download.qt-project.org/official_releases/qt/5.4/5.4.0=
/submodules/qtbase-opensource-src-5.4.0.tar.xz'.=0AUnable to fetch URL f=
rom any source.=0A=0AThese take a few minutes to fail, so=C2=A0 it seems=
 as if they can=0Aidentify the file in the source but cant get it to dow=
nload. Howeve,=0Ai can downlod them nanually without any problems.=0A=0A=
I originally had qtwebkit errors but after many builds , this is=0Afinal=
ly gone.=0A=0AI dont have problems with teh examples because they are no=
t in my=0Arecipe.=0A=0AAt present I really dont know how to proceeed.=0A=
=0ARegards=0ALachlan=0A=0A----- Original Message -----=0AFrom: "Alex J L=
ennon" =0ATo:, "Martin Jansa" , "Simon Bolek" =0ACc:=0ASent:Sun, 01 Feb=
 2015 18:10:44 +0100=0ASubject:Re: [yocto] meta-qt5 problem in yocto 1.7=
=0A=0A On 31/01/2015 19:10, peterengcomau001@adam.com.au wrote:=0A >=0A=
 > Hi Alex,=0A >=0A > Thanks for confirming the problem exists.=0A > I s=
et QT_MODULE_BRANCH ?=3D "dev" in=0A > meta-qt5/recipes-qt/qt5/qt5-git.i=
nc, but still get the same=0Aproblem. =0A > Do I have the correct file ?=
=0A=0A Lachlan,=0A=0A So I have been building for qemux86 with dizzy,=0A=
=0A Build Configuration:=0A BB_VERSION =3D "1.24.0"=0A BUILD_SYS =3D "x8=
6_64-linux"=0A NATIVELSBSTRING =3D "Ubuntu-14.04"=0A TARGET_SYS =3D "i58=
6-poky-linux"=0A MACHINE =3D "qemux86"=0A DISTRO =3D "poky"=0A DISTRO_VE=
RSION =3D "1.7.1"=0A TUNE_FEATURES =3D "m32 i586"=0A TARGET_FPU =3D ""=
=0A meta=0A meta-yocto =3D "dizzy:9fc095a439c36014c73b3a8f240afba09fe0e4=
d7"=0A meta-oe=0A meta-efl=0A meta-webserver=0A meta-networking =3D "diz=
zy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"=0A meta-mono =3D "master:b7=
3fc7c525cc0068b2ed84fc26b5d2d4d87c6c12"=0A meta-gnome=0A meta-efl =3D "d=
izzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"=0A meta-browser.master=
 =3D=0A"master:14e4829d716db416f62403ddd0941ab97491d707"=0A meta-ruby=0A=
 meta-python =3D "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"=0A met=
a-qt5.dizzy =3D "dizzy:8b0ffbd849203d07164ccfad2535bdb107eecd08"=0A=0A l=
ocal.conf is here http://pastebin.com/0t2GFWhu=0A bblayers.conf is here=
 http://pastebin.com/CK6dF9f5=0A=0A Build command is=0A=0A bitbake -k co=
re-image-minimal=0A=0A So this fails a few times building, which seems t=
o be related to gcc=0A issues, and I've seen on and off for some time.=
=0A=0A Afer a few restarts I get to the point where most of it is built=
 and=0AI have=0A=0A ERROR: Function failed: do_configure (log file is lo=
cated at=0A=0A/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i58=
6-poky-linux/qtwebkit-examples/5.3.2-r0/temp/log.do_configure.26328)=0A=
 ERROR: Logfile of failure stored in:=0A=0A/data_drive/imx6/rootfs_build=
er/qemux86.dizzy/tmp/work/i586-poky-linux/qtwebkit-examples/5.3.2-r0/tem=
p/log.do_configure.26328=0A=0A ERROR: Task 842=0A=0A(/data_drive/imx6/ro=
otfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtwebkit-examples_5.3=
2.bb,=0A do_configure) failed with exit code '1'=0A WARNING: Failed to=
 fetch URL=0A git://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3, atte=
mpting=0AMIRRORS=0A if available=0A ERROR: Fetcher failure: Unable to fi=
nd revision=0A aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 ev=
en from=0Aupstream=0A ERROR: Function failed: Fetcher failure for URL:=
=0A 'git://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3'. Unable to=0A=
fetch=0A URL from any source.=0A ERROR: Logfile of failure stored in:=0A=
=0A/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linu=
x/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetc=
h.26325=0A ERROR: Task 756=0A=0A(/data_drive/imx6/rootfs_builder/sources=
/meta-qt5.dizzy/recipes-qt/qt5/qtsystems_git.bb,=0A do_fetch) failed wit=
h exit code '1'=0A=0A ...=0A=0A Note from the above that qtbase has buil=
t ok without modifications=0Ato=0A meta-qt5=0A=0A To double check the qt=
base and also to get qtwebkit building I=0A=0A bitbake -f -c cleansstate=
 qtbase=0A bitbake qtbase=0A=0A This builds OK=0A=0A ...=0A=0A Then=0A=
=0A bitbake -k core-image-minimal=0A=0A Gives=0A=0A ERROR: Task 843=0A=
=0A(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt=
5/qtwebkit-examples_5.3.2.bb,=0A do_compile) failed with exit code '1'=
=0A WARNING: Failed to fetch URL=0A git://qt.gitorious.org/qt/qtsystems.=
git;branch=3D5.3, attempting=0AMIRRORS=0A if available=0A ERROR: Fetcher=
 failure: Unable to find revision=0A aa651c73bf7bc57c1b6b1bfcfa9afe90188=
4a102 in branch 5.3 even from=0Aupstream=0A ERROR: Function failed: Fetc=
her failure for URL:=0A 'git://qt.gitorious.org/qt/qtsystems.git;branch=
=3D5.3'. Unable to=0Afetch=0A URL from any source.=0A ERROR: Logfile of=
 failure stored in:=0A=0A/data_drive/imx6/rootfs_builder/qemux86.dizzy/t=
mp/work/i586-poky-linux/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73=
bf-r0/temp/log.do_fetch.21451=0A ERROR: Task 756=0A=0A(/data_drive/imx6/=
rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtsystems_git.bb,=
=0A do_fetch) failed with exit code '1'=0A=0A ...=0A=0A Changing the bra=
nch in qtsystems_git gets qtsystems building=0A=0A #QT_MODULE_BRANCH =3D=
 "5.3"=0A QT_MODULE_BRANCH =3D "dev"=0A=0A ...=0A=0A I then removed the=
 qtwebkit examples from local.conf as there's some=0A strange linker pro=
blem there=0A=0A # qtwebkit-examples-examples =0A=0A I then had to remov=
e the qt examples packages as for some reason=0Athey=0A aren't getting b=
uilt at all=0A=0A # qtbase-examples =0A=0A ...=0A=0A That gets me to the=
 point I get a dizzy root filesystem built. Next=0AI=0A need to understa=
nd why I am not getting the examples packages built.=0A=0A Hope that hel=
ps somewhat.=0A=0A Cheers,=0A=0A Alex=0A and =0A---- Message sent via Ad=
am Internet WebMail - http://www.adam.com.au/

--=_caadfc7df52620a2517016cc1662a8d7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Hi Alex,<br />I have no problem with qt5 with daisy and have=
 been using it fine for over 6 months. During that time I have cleaned m=
y tmp file multiple times which would force a new reload of the sources.=
<br />Also I dont have a problem with Dizzy when building core-image-min=
inal, core-image-full-cmdline and core-image-sato.<br /><br />My problem=
s occur when i explicitly use qt5 as follows:<br /><br />IMAGE_INSTALL +=
=3D "\<br />=C2=A0=C2=A0=C2=A0 qtbase \<br />=C2=A0=C2=A0=C2=A0 qtbase-f=
onts \<br />=C2=A0=C2=A0=C2=A0 qtbase-plugins \<br />=C2=A0=C2=A0=C2=A0=
 qtbase-tools \<br />=C2=A0=C2=A0=C2=A0 qtmultimedia \<br />=C2=A0=C2=A0=
=C2=A0 qtmultimedia-plugins \<br />=C2=A0=C2=A0=C2=A0 qtmultimedia-qmlpl=
ugins \<br />=C2=A0=C2=A0=C2=A0 qtsvg \<br />=C2=A0=C2=A0=C2=A0 qtsvg-pl=
ugins \<br />=C2=A0=C2=A0=C2=A0 qtsensors \<br />=C2=A0=C2=A0=C2=A0 qtsy=
stems \<br />=C2=A0=C2=A0=C2=A0 qtsystems-tools \<br />=C2=A0=C2=A0=C2=
=A0 qtsystems-qmlplugins \<br />=C2=A0=C2=A0=C2=A0 qtscript \<br />=C2=
=A0=C2=A0=C2=A0 qtgraphicaleffects-qmlplugins \<br />=C2=A0=C2=A0=C2=A0=
 qtconnectivity-qmlplugins \<br />=C2=A0=C2=A0=C2=A0 qtlocation-plugins=
 \<br />=C2=A0=C2=A0=C2=A0 qtlocation-qmlplugins \<br />=C2=A0=C2=A0=C2=
=A0 qtdeclarative \<br />=C2=A0=C2=A0=C2=A0 qtdeclarative-qmlplugins \<b=
r />=C2=A0=C2=A0=C2=A0 qtdeclarative-plugins \<br />=C2=A0=C2=A0=C2=A0 q=
tquick1 \<br />=C2=A0=C2=A0=C2=A0 qtquick1-qmlplugins \<br />=C2=A0=C2=
=A0=C2=A0 qtquick1-plugins \<br />=C2=A0=C2=A0=C2=A0 qtwebkit \<br />=C2=
=A0=C2=A0=C2=A0 qtwebkit-qmlplugins \<br />"<br /><br />If i bitbake my=
 recipe using the -k option, I only get 3 failed recipes<br />=0A=09=09=
=09=090: qtbase-native-5.4.0-r0 do_fetch (pid 13279)<br />1: qtbase-5.4.=
0-r0 do_fetch (pid 13280)<br />2: qtdeclarative-5.4.0-r0 do_fetch (pid 1=
3283)<br /><br />and these relate two 2 failed fetchs:<br />ERROR: Funct=
ion failed: Fetcher failure for URL: 'http://download.qt-project.org/off=
icial_releases/qt/5.4/5.4.0/submodules/qtdeclarative-opensource-src-5.4.=
0.tar.xz'. Unable to fetch URL from any source.<br />ERROR: Function fai=
led: Fetcher failure for URL: 'http://download.qt-project.org/official_r=
eleases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz'. Una=
ble to fetch URL from any source.<br /><br />These take a few minutes to=
 fail, so=C2=A0 it seems as if they can identify the file in the source=
 but cant get it to download. Howeve, i can downlod them nanually withou=
t any problems.<br /><br />I originally had qtwebkit errors but after ma=
ny builds , this is finally gone.<br /><br />I dont have problems with t=
eh examples because they are not in my recipe.<br /><br />At present I r=
eally dont know how to proceeed.<br /><br />Regards<br />Lachlan<br /><b=
lockquote><br />----- Original Message -----<br /><div style=3D"width:10=
0%;background:rgb(228,228,228);"><div style=3D"font-weight:bold;">From:<=
/div> "Alex J Lennon" &lt;ajlennon@dynamicdevices.co.uk&gt;</div><br /><=
div style=3D"font-weight:bold;">To:</div>&lt;peterengcomau001@adam.com.a=
u&gt;, "Martin Jansa" &lt;martin.jansa@gmail.com&gt;, "Simon Bolek" &lt;=
simon.bolek@googlemail.com&gt;<br /><div style=3D"font-weight:bold;">Cc:=
</div>&lt;yocto@yoctoproject.org&gt;<br /><div style=3D"font-weight:bold=
;">Sent:</div>Sun, 01 Feb 2015 18:10:44 +0100<br /><div style=3D"font-we=
ight:bold;">Subject:</div>Re: [yocto] meta-qt5 problem in yocto 1.7<br /=
><br /><br /><br />=0AOn 31/01/2015 19:10, peterengcomau001@adam.com.au=
 wrote:<br />=0A&gt;<br />=0A&gt; Hi Alex,<br />=0A&gt;<br />=0A&gt; Tha=
nks for confirming the problem exists.<br />=0A&gt; I set QT_MODULE_BRAN=
CH ?=3D "dev" in<br />=0A&gt; meta-qt5/recipes-qt/qt5/qt5-git.inc, but s=
till get the same problem. <br />=0A&gt; Do I have the correct file ?<br=
 /><br />=0ALachlan,<br /><br />=0ASo I have been building for qemux86 w=
ith dizzy,<br /><br />=0ABuild Configuration:<br />=0ABB_VERSION       =
 =3D "1.24.0"<br />=0ABUILD_SYS         =3D "x86_64-linux"<br />=0ANATIV=
ELSBSTRING   =3D "Ubuntu-14.04"<br />=0ATARGET_SYS        =3D "i586-poky=
-linux"<br />=0AMACHINE           =3D "qemux86"<br />=0ADISTRO         =
   =3D "poky"<br />=0ADISTRO_VERSION    =3D "1.7.1"<br />=0ATUNE_FEATURE=
S     =3D "m32 i586"<br />=0ATARGET_FPU        =3D ""<br />=0Ameta<br />=
=0Ameta-yocto        =3D "dizzy:9fc095a439c36014c73b3a8f240afba09fe0e4d7=
"<br />=0Ameta-oe<br />=0Ameta-efl<br />=0Ameta-webserver<br />=0Ameta-n=
etworking   =3D "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"<br />=
=0Ameta-mono         =3D "master:b73fc7c525cc0068b2ed84fc26b5d2d4d87c6c1=
2"<br />=0Ameta-gnome<br />=0Ameta-efl          =3D "dizzy:200f6cafc878d=
4c26871fc56d21ecc8eaa9aa61b"<br />=0Ameta-browser.master =3D "master:14e=
4829d716db416f62403ddd0941ab97491d707"<br />=0Ameta-ruby<br />=0Ameta-py=
thon       =3D "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"<br />=0A=
meta-qt5.dizzy    =3D "dizzy:8b0ffbd849203d07164ccfad2535bdb107eecd08"<b=
r /><br />=0Alocal.conf is here http://pastebin.com/0t2GFWhu<br />=0Abbl=
ayers.conf is here http://pastebin.com/CK6dF9f5<br /><br />=0ABuild comm=
and is<br /><br />=0Abitbake -k core-image-minimal<br /><br />=0ASo this=
 fails a few times building, which seems to be related to gcc<br />=0Ais=
sues, and I've seen on and off for some time.<br /><br />=0AAfer a few r=
estarts I get to the point where most of it is built and I have<br /><br=
 />=0AERROR: Function failed: do_configure (log file is located at<br />=
=0A/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linu=
x/qtwebkit-examples/5.3.2-r0/temp/log.do_configure.26328)<br />=0AERROR:=
 Logfile of failure stored in:<br />=0A/data_drive/imx6/rootfs_builder/q=
emux86.dizzy/tmp/work/i586-poky-linux/qtwebkit-examples/5.3.2-r0/temp/lo=
g.do_configure.26328<br /><br />=0AERROR: Task 842<br />=0A(/data_drive/=
imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtwebkit-examp=
les_5.3.2.bb,<br />=0Ado_configure) failed with exit code '1'<br />=0AWA=
RNING: Failed to fetch URL<br />=0Agit://qt.gitorious.org/qt/qtsystems.g=
it;branch=3D5.3, attempting MIRRORS<br />=0Aif available<br />=0AERROR:=
 Fetcher failure: Unable to find revision<br />=0Aaa651c73bf7bc57c1b6b1b=
fcfa9afe901884a102 in branch 5.3 even from upstream<br />=0AERROR: Funct=
ion failed: Fetcher failure for URL:<br />=0A'git://qt.gitorious.org/qt/=
qtsystems.git;branch=3D5.3'. Unable to fetch<br />=0AURL from any source=
<br />=0AERROR: Logfile of failure stored in:<br />=0A/data_drive/imx6/=
rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsystems/5.3.99+5=
4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.26325<br />=0AERRO=
R: Task 756<br />=0A(/data_drive/imx6/rootfs_builder/sources/meta-qt5.di=
zzy/recipes-qt/qt5/qtsystems_git.bb,<br />=0Ado_fetch) failed with exit=
 code '1'<br /><br />=0A...<br /><br />=0ANote from the above that qtbas=
e has built ok without modifications to<br />=0Ameta-qt5<br /><br />=0AT=
o double check the qtbase and also to get qtwebkit building I<br /><br /=
>=0Abitbake -f -c cleansstate qtbase<br />=0Abitbake qtbase<br /><br />=
=0AThis builds OK<br /><br />=0A...<br /><br />=0AThen<br /><br />=0Abit=
bake -k core-image-minimal<br /><br />=0AGives<br /><br />=0AERROR: Task=
 843<br />=0A(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/rec=
ipes-qt/qt5/qtwebkit-examples_5.3.2.bb,<br />=0Ado_compile) failed with=
 exit code '1'<br />=0AWARNING: Failed to fetch URL<br />=0Agit://qt.git=
orious.org/qt/qtsystems.git;branch=3D5.3, attempting MIRRORS<br />=0Aif=
 available<br />=0AERROR: Fetcher failure: Unable to find revision<br />=
=0Aaa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upst=
ream<br />=0AERROR: Function failed: Fetcher failure for URL:<br />=0A'g=
it://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3'. Unable to fetch<br=
 />=0AURL from any source.<br />=0AERROR: Logfile of failure stored in:<=
br />=0A/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky=
-linux/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do=
_fetch.21451<br />=0AERROR: Task 756<br />=0A(/data_drive/imx6/rootfs_bu=
ilder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtsystems_git.bb,<br />=0Ado=
_fetch) failed with exit code '1'<br /><br />=0A...<br /><br />=0AChangi=
ng the branch in qtsystems_git gets qtsystems building<br /><br />=0A#QT=
_MODULE_BRANCH =3D "5.3"<br />=0AQT_MODULE_BRANCH =3D "dev"<br /><br />=
=0A...<br /><br />=0AI then removed the qtwebkit examples from local.con=
f as there's some<br />=0Astrange linker problem there<br /><br />=0A# =
   qtwebkit-examples-examples \<br /><br />=0AI then had to remove the q=
t examples packages as for some reason they<br />=0Aaren't getting built=
 at all<br /><br />=0A# qtbase-examples \<br /><br />=0A...<br /><br />=
=0AThat gets me to the point I get a dizzy root filesystem built. Next I=
<br />=0Aneed to understand why I am not getting the examples packages b=
uilt.<br /><br />=0AHope that helps somewhat.<br /><br />=0ACheers,<br /=
><br />=0AAlex<br />=0Aand <br /></blockquote>---- Message sent via Adam=
 Internet WebMail  - http://www.adam.com.au/</body></html>

--=_caadfc7df52620a2517016cc1662a8d7--
