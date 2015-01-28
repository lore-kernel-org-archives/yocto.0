Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B159CE00872; Wed, 28 Jan 2015 09:38:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C8BE00827
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 09:38:09 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t0SHbxGJ014586;
	Thu, 29 Jan 2015 04:07:59 +1030
Message-Id: <8cdde89235a344f63a941ccfc01140ff820f8702@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Simon Bolek" <simon.bolek@googlemail.com>, yocto@yoctoproject.org,
	peterengcomau001@adam.com.au
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <CAEfap_BLswdcShw-CYsNUu_W3jAhy-K8OrmEmAHWJtWW_jLPKw@mail.gmail.com>
Date: Thu, 29 Jan 2015 04:07:59 +1030
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 28 Jan 2015 17:38:24 -0000
Content-Type: multipart/alternative;
	boundary="=_a1fb876aeee21227d43edb2682e88ffc"

--=_a1fb876aeee21227d43edb2682e88ffc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Simon,=0A=0A=09I had already changed the branch to 'master' becau=
se all the=0Ado_fetch references were to version 5.4.0 and these could n=
ot be=0Afound, ven though they were all located in the master branch of=
 the=0Agit repository. As you say, after changinf to the master branch a=
nd=0Alook in the qt3 recipe it is now 'dev'. =0A=0A=09However running th=
e image still gives the following errors: =0A=0A=09Summary: 7 tasks fail=
ed:  =0A=0A=09=0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtbase-n=
ative_5.4.0.bb,=0Ado_fetch  =0A=0A=09 /home/lachlan/poky-1.7/meta-qt5/re=
cipes-qt/qt5/qtbase_5.4.0.bb,=0Ado_fetch  =0A=0A=09=0A/home/lachlan/poky=
-1.7/meta-qt5/recipes-qt/qt5/qtxmlpatterns_5.4.0.bb,=0Ado_fetch  =0A=0A=
=09 /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.4.0.bb,=0A=
do_fetch  =0A=0A=09=0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtd=
eclarative_5.4.0.bb,=0Ado_fetch  =0A=0A=09=0A/home/lachlan/poky-1.7/meta=
-atmel/recipes-multimedia/gstreamer1.0-plugins/gstreamer1.0-plugins-hant=
ro_1.0.bb,=0Ado_configure  =0A=0A=09=0A/home/lachlan/poky-1.7/meta-atmel=
/recipes-utils/obp-utils/obp-utils_git.bb,=0Ado_install  =0A=0A=09(note=
 that all five of the qt recipes refer to qt5_5.4.0.inc which=0Asets up=
 the sopurce of the downloads).=0A=0A=09If I look at one of the failed d=
ownloads : =0A=0A=09ERROR: Function failed: Fetcher failure for URL:=0A'=
http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules=
/qtbase-opensource-src-5.4.0.tar.xz'.=0AUnable to fetch URL from any sou=
rce. =0A=0A=09And then try to download the file directly as follows: =0A=
=0A=09http://download.qt-project.org/official_releases/qt/5.4/5.4.0/subm=
odules/qtbase-opensource-src-5.4.0.tar.xz=0A[1] =0A=0A=09this works.=C2=
=A0 =0A I notice that when trying to enter the directory:=0Ahttp://downl=
oad.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/=0A[2]=0Ait=
 redirects me to:=0Ahttp://download.qt.io/official_releases/qt/5.4/5.4.0=
/submodules/ [3]=0Abut because the redirection occurs, this should not b=
e a problem.=0A=0ACan you or anyone suggest why these specific recipes h=
ave their=0Ado_fetch fail, when other qt5 recipes in the same repository=
 dont,=0Aand when I can manullay download the recipes using a browser.=
=0A=0AIs it possible to download these recipes manually and load them=0A=
somewhere in the build directory so they can be retrieved by bitbake=0Aa=
nd therfore=C2=A0 bypassing the do_fetch=C2=A0 that fails? If so, where=
=0Awould they need to be placed?=0A=0AThanks for any help.=0A=0ARegards=
=0ALachlan=0A=0A----- Original Message -----=0AFrom: "Simon Bolek" =0ATo=
:, =0ACc:=0ASent:Wed, 28 Jan 2015 10:56:11 +0100=0ASubject:Re: [yocto] m=
eta-qt5 problem in yocto 1.7=0A=0A Hi Lachlan,=0A=0A In case you have no=
t solved the problem yet. =0A Look at the recipe of qt3d, once you check=
ed it out of git. There is=0Aa line: =0A=0AQT_MODULE_BRANCH =3D "master"=
=0A=0A just change it to "dev" and it should work. It is already correct=
ed=0Ain the upstream of meta-qt5, but in dizzy it is still "master". If=
=0Ayou look at the gitorious of qt you will find this=0ASRCDEV=3D"8a9723=
d7420829a2ba0141a9f7d8dc8cd11d8331" in dev" branch. =0AThat is, at least=
, what i figured out. =0A=0AHope that will help.=0A=0Abest regards=0Asim=
on :-)=0A=0A Message: 7=0A Date: Tue, 27 Jan 2015 01:32:43 +1030=0A From=
: peterengcomau001@adam.com.au [4]=0A To: yocto@yoctoproject.org [5]=0A=
 Subject: [yocto] meta-qt5 problem in yocto 1.7=0A Message-ID:=0A =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =0A Content-Type: text/plain; charset=3D"utf-8"=0A=
=0A I have just downloaded yocto poky 1.7 and try to build an image. I=
=0Aget=0A teh follwing problems with fetching qt5 source:=0A Summary: 5=
 tasks failed:=0A ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_=
git.bb,=0A do_fetch=0A ?=0A=0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt=
/qt5/qtmultimedia_5.3.2.bb,=0A do_fetch=0A ? /home/lachlan/poky-1.7/meta=
-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,=0A do_fetch=0A ?=0A=0A/home/lachl=
an/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/gstreamer=
1.0-plugins-hantro_1.0.bb,=0A do_configure=0A ?=0A=0A/home/lachlan/poky-=
1.7/meta-atmel/recipes-utils/obp-utils/obp-utils_git.bb,=0A do_install=
=0A=0A I presume the last two problems(do_configure & do_install)? resul=
t=0A from dependencies on the previous three failed fetches.=0A=0A The m=
ore complete error code for teh first three errors is:=0A WARNING: Faile=
d to fetch URL=0A git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster [7]=
, attempting=0AMIRRORS=0A if available=0A ERROR: Fetcher failure: Unable=
 to find revision=0A 8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch=
 master even from=0A upstream=0A ERROR: Function failed: Fetcher failure=
 for URL:=0A 'git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster [8]'. U=
nable to=0Afetch=0A URL from any source.=0A ERROR: Logfile of failure st=
ored in:=0A=0A/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-v=
fp-poky-linux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/t=
emp/log.do_fetch.29304=0A ERROR: Task 1993=0A (/home/lachlan/poky-1.7/me=
ta-qt5/recipes-qt/qt5/qt3d_git.bb,=0A do_fetch) failed with exit code '1=
'=0A WARNING: Failed to fetch URL=0Ahttp://download.qt-project.org/offic=
ial_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.t=
ar.xz=0A[9],=0A attempting MIRRORS if available=0A ERROR: Fetcher failur=
e: Fetch command failed with exit code 4, no=0A output=0A ERROR: Functio=
n failed: Fetcher failure for URL:=0A=0A'http://download.qt-project.org/=
official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.=
3.2.tar.xz=0A[10]'.=0A Unable to fetch URL from any source.=0A ERROR: Lo=
gfile of failure stored in:=0A=0A/home/lachlan/poky-1.7/build-atmel/tmp/=
work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtmultimedia/5.3.2-r0/temp/log.=
do_fetch.7762=0A ERROR: Task 535=0A=0A(/home/lachlan/poky-1.7/meta-qt5/r=
ecipes-qt/qt5/qtmultimedia_5.3.2.bb,=0A do_fetch) failed with exit code=
 '1'=0A WARNING: Failed to fetch URL=0Ahttp://www.apache.org/dist/subver=
sion/subversion-1.8.9.tar.bz2 [11],=0A attempting MIRRORS if available=
=0A WARNING: Failed to fetch URL=0Ahttp://download.qt-project.org/offici=
al_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz=
=0A[12],=0A attempting MIRRORS if available=0A ERROR: Fetcher failure: F=
etch command failed with exit code 4, no=0A output=0A ERROR: Function fa=
iled: Fetcher failure for URL:=0A=0A'http://download.qt-project.org/offi=
cial_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.=
xz=0A[13]'.=0A Unable to fetch URL from any source.=0A ERROR: Logfile of=
 failure stored in:=0A=0A/home/lachlan/poky-1.7/build-atmel/tmp/work/cor=
texa5t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.195=
87=0A ERROR: Task 675=0A (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5=
/qtwebkit_5.3.2.bb,=0A do_fetch) failed with exit code '1'=0A NOTE: vali=
dating kernel config, see log.do_kernel_configcheck for=0A details=0A=0A=
 If I manually download the one of the files, e.g.? :=0A=0A'http://downl=
oad.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-op=
ensource-src-5.3.2.tar.xz=0A[14]=0A This works fine.=0A=0A Can anyone su=
ggest what I can look fro to determine the problem. I=0A have tried this=
 a number of time over 24 hours and get the exact=0Asame=0A failures.=0A=
=0A Thank you for any suggestions moving forward.=0A=0A Regards=0A Lachl=
an=0A=0A ---- Message sent via Adam Internet WebMail -=0Ahttp://www.adam=
com.au/ [15]=0A -------------- next part --------------=0A An HTML atta=
chment was scrubbed...=0A URL: =0A=0A ------------------------------=0A=
=0A --=0A _______________________________________________=0A yocto maili=
ng list=0Ayocto@yoctoproject.org [17]=0Ahttps://lists.yoctoproject.org/l=
istinfo/yocto [18]=0A=0A End of yocto Digest, Vol 52, Issue 86=0A ******=
*******************************=0A=0A  ---- Message sent via Adam Intern=
et WebMail -=0Ahttp://www.adam.com.au/=0A=0ALinks:=0A------=0A[1]=0Ahttp=
://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtb=
ase-opensource-src-5.4.0.tar.xz=0A[2]=0Ahttp://download.qt-project.org/o=
fficial_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar=
xz=0A[3]=0Ahttp://download.qt-project.org/official_releases/qt/5.4/5.4.=
0/submodules/qtbase-opensource-src-5.4.0.tar.xz=0A[4] mailto:peterengcom=
au001@adam.com.au=0A[5] mailto:yocto@yoctoproject.org=0A[6]=0Amailto:f90=
2a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au=0A[7] http://q=
t.gitorious.org/qt/qt3d.git;branch=3Dmaster=0A[8] http://qt.gitorious.or=
g/qt/qt3d.git;branch=3Dmaster=0A[9]=0Ahttp://download.qt-project.org/off=
icial_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2=
tar.xz=0A[10]=0Ahttp://download.qt-project.org/official_releases/qt/5.3=
/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz=0A[11] http:/=
/www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2=0A[12]=0Ahttp:/=
/download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtweb=
kit-opensource-src-5.3.2.tar.xz=0A[13]=0Ahttp://download.qt-project.org/=
official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.=
tar.xz=0A[14]=0Ahttp://download.qt-project.org/official_releases/qt/5.3/=
5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz=0A[15] http://www.=
adam.com.au/=0A[16]=0Ahttp://lists.yoctoproject.org/pipermail/yocto/atta=
chments/20150127/7d948cb1/attachment.html=0A[17] mailto:yocto@yoctoproje=
ct.org=0A[18] https://lists.yoctoproject.org/listinfo/yocto=0A

--=_a1fb876aeee21227d43edb2682e88ffc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks Simon,<br /><p style=3D"margin-bottom:0in;line-height=
:100%;">I had already=0Achanged the branch to 'master' because all the d=
o_fetch references=0Awere to version 5.4.0 and these could not be found,=
 ven though they=0Awere all located in the master branch of the git repo=
sitory. As you=0Asay, after changinf to the master branch and look in th=
e qt3 recipe=0Ait is now 'dev'.</p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line-height:10=
0%;">However running the=0Aimage still gives the following errors:</p>=
=0A=0A<p style=3D"margin-bottom:0in;line-height:100%;">Summary: 7 tasks=
=0Afailed:=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
 =0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtbase-native_5.4.0.b=
b,=0Ado_fetch=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
 =0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtbase_5.4.0.bb,=0Ado=
_fetch=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> =0A/ho=
me/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtxmlpatterns_5.4.0.bb,=0Ado=
_fetch=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> =0A/ho=
me/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.4.0.bb,=0Ado_fetc=
h=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> =0A/home/la=
chlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtdeclarative_5.4.0.bb,=0Ado_fetc=
h=0A</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> =0A/home/la=
chlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/gstrea=
mer1.0-plugins-hantro_1.0.bb,=0Ado_configure=0A</p>=0A<p style=3D"margin=
-bottom:0in;line-height:100%;"> =0A/home/lachlan/poky-1.7/meta-atmel/rec=
ipes-utils/obp-utils/obp-utils_git.bb,=0Ado_install=0A</p>=0A<p style=3D=
"margin-bottom:0in;line-height:100%;">(note that all five of the qt reci=
pes refer to qt5_5.4.0.inc which sets up the sopurce of the downloads).<=
/p><p style=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A<p styl=
e=3D"margin-bottom:0in;line-height:100%;">If I look at one of=0Athe fail=
ed downloads :</p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">ER=
ROR: Function=0Afailed: Fetcher failure for URL:=0A'http://download.qt-p=
roject.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-s=
rc-5.4.0.tar.xz'.=0AUnable to fetch URL from any source.</p>=0A=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;">And then try to=0Adownload th=
e file directly as follows:</p>=0A<p style=3D"margin-bottom:0in;line-hei=
ght:100%;"><a href=3D"http://download.qt-project.org/official_releases/q=
t/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz">http://downlo=
ad.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opens=
ource-src-5.4.0.tar.xz</a></p>=0A=0A<p style=3D"margin-bottom:0in;line-h=
eight:100%;">this works.</p>=C2=A0=0A=0A<br />=0A=09=09=09=09I notice th=
at when trying to enter the directory:<br /><a href=3D"http://download.q=
t-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensourc=
e-src-5.4.0.tar.xz">http://download.qt-project.org/official_releases/qt/=
5.4/5.4.0/submodules/</a><br />it redirects me to:<br /><a href=3D"http:=
//download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtba=
se-opensource-src-5.4.0.tar.xz">http://download.qt.io/official_releases/=
qt/5.4/5.4.0/submodules/</a><br />but because the redirection occurs, th=
is should not be a problem.<br /><br />Can you or anyone suggest why the=
se specific recipes have their do_fetch fail, when other qt5 recipes in=
 the same repository dont, and when I can manullay download the recipes=
 using a browser.<br /><br />Is it possible to download these recipes ma=
nually and load them somewhere in the build directory so they can be ret=
rieved by bitbake and therfore=C2=A0 bypassing the do_fetch=C2=A0 that f=
ails? If so, where would they need to be placed?<br /><br />Thanks for a=
ny help.<br /><br />Regards<br />Lachlan<br /><blockquote><br />----- Or=
iginal Message -----<br /><div style=3D"width:100%;background:rgb(228,22=
8,228);"><div style=3D"font-weight:bold;">From:</div> "Simon Bolek" &lt;=
simon.bolek@googlemail.com&gt;</div><br /><div style=3D"font-weight:bold=
;">To:</div>&lt;yocto@yoctoproject.org&gt;, &lt;peterengcomau001@adam.co=
m.au&gt;<br /><div style=3D"font-weight:bold;">Cc:</div><br /><div style=
=3D"font-weight:bold;">Sent:</div>Wed, 28 Jan 2015 10:56:11 +0100<br /><=
div style=3D"font-weight:bold;">Subject:</div>Re: [yocto] meta-qt5 probl=
em in yocto 1.7<br /><br /><br /><div dir=3D"ltr">=0A<div>Hi Lachlan,<br=
 /><br /></div>=0A<div>In case you have not solved the problem yet. <br=
 /></div>=0A<div>Look at the recipe of qt3d, once you checked it out of=
 git. There is a line: <br /><br />QT_MODULE_BRANCH =3D "master"<br /><b=
r /></div>=0A<div>just change it to "dev" and it should work. It is alre=
ady corrected in the upstream of meta-qt5, but in dizzy it is still "mas=
ter". If you look at the gitorious of qt you will find this SRCDEV=3D"8a=
9723d7420829a2ba0141a9f7d8dc8cd11d8331" in dev" branch. <br />That is, a=
t least, what i figured out. <br /></div>=0A<div>=0A<br />Hope that will=
 help.<br /></div>=0A<br />best regards<br />simon :-)<br /><div><div><d=
iv class=3D"gmail_extra">=0A<div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px .8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex;">=0A<br />=0AMessage: 7<br />=0ADate=
: Tue, 27 Jan 2015 01:32:43 +1030<br />=0AFrom: <a href=3D"mailto:petere=
ngcomau001@adam.com.au">peterengcomau001@adam.com.au</a><br />=0ATo: <a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br />=
=0ASubject: [yocto] meta-qt5 problem in yocto 1.7<br />=0AMessage-ID:<br=
 />=0A=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:f902a9d11fd7326c=
8f53a3fadfde295f6231fbcb@webmail.adam.com.au">f902a9d11fd7326c8f53a3fadf=
de295f6231fbcb@webmail.adam.com.au</a>&gt;<br />=0AContent-Type: text/pl=
ain; charset=3D"utf-8"<br /><br />=0AI have just downloaded yocto poky 1=
7 and try to build an image. I get<br />=0Ateh follwing problems with f=
etching qt5 source:<br />=0ASummary: 5 tasks failed:<br />=0A? /home/lac=
hlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"">qt3d_git.bb</a>,<br /=
>=0Ado_fetch<br />=0A?<br />=0A/home/lachlan/poky-1.7/meta-qt5/recipes-q=
t/qt5/<a href=3D"">qtmultimedia_5.3.2.bb</a>,<br />=0Ado_fetch<br />=0A?=
 /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"">qtwebkit_5.=
3.2.bb</a>,<br />=0Ado_fetch<br />=0A?<br />=0A/home/lachlan/poky-1.7/me=
ta-atmel/recipes-multimedia/gstreamer1.0-plugins/<a href=3D"">gstreamer1=
0-plugins-hantro_1.0.bb</a>,<br />=0Ado_configure<br />=0A?<br />=0A/ho=
me/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/<a href=3D"">obp-=
utils_git.bb</a>,<br />=0Ado_install<br /><br />=0AI presume the last tw=
o problems(do_configure &amp; do_install)? result<br />=0Afrom dependenc=
ies on the previous three failed fetches.<br /><br />=0AThe more complet=
e error code for teh first three errors is:<br />=0AWARNING: Failed to f=
etch URL<br />=0Agit://<a href=3D"http://qt.gitorious.org/qt/qt3d.git;br=
anch=3Dmaster">qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a>, attempt=
ing MIRRORS<br />=0Aif available<br />=0AERROR: Fetcher failure: Unable=
 to find revision<br />=0A8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in br=
anch master even from<br />=0Aupstream<br />=0AERROR: Function failed: F=
etcher failure for URL:<br />=0A'git://<a href=3D"http://qt.gitorious.or=
g/qt/qt3d.git;branch=3Dmaster">qt.gitorious.org/qt/qt3d.git;branch=3Dmas=
ter</a>'. Unable to fetch<br />=0AURL from any source.<br />=0AERROR: Lo=
gfile of failure stored in:<br />=0A/home/lachlan/poky-1.7/build-atmel/t=
mp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitA=
UTOINC+8a9723d742-r0/temp/log.do_fetch.29304<br />=0AERROR: Task 1993<br=
 />=0A(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"">qt3d_=
git.bb</a>,<br />=0Ado_fetch) failed with exit code '1'<br />=0AWARNING:=
 Failed to fetch URL<br /><a href=3D"http://download.qt-project.org/offi=
cial_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.=
tar.xz">http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtmultimedia-opensource-src-5.3.2.tar.xz</a>,<br />=0Aattemptin=
g MIRRORS if available<br />=0AERROR: Fetcher failure: Fetch command fai=
led with exit code 4, no<br />=0Aoutput<br />=0AERROR: Function failed:=
 Fetcher failure for URL:<br />=0A'<a href=3D"http://download.qt-project=
org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-s=
rc-5.3.2.tar.xz">http://download.qt-project.org/official_releases/qt/5.3=
/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz</a>'.<br />=
=0AUnable to fetch URL from any source.<br />=0AERROR: Logfile of failur=
e stored in:<br />=0A/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa=
5t2hf-vfp-poky-linux-gnueabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.776=
2<br />=0AERROR: Task 535<br />=0A(/home/lachlan/poky-1.7/meta-qt5/recip=
es-qt/qt5/<a href=3D"">qtmultimedia_5.3.2.bb</a>,<br />=0Ado_fetch) fail=
ed with exit code '1'<br />=0AWARNING: Failed to fetch URL<br /><a href=
=3D"http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2">http=
://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2</a>,<br />=0A=
attempting MIRRORS if available<br />=0AWARNING: Failed to fetch URL<br=
 /><a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.=
3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz">http://download.qt-=
project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensourc=
e-src-5.3.2.tar.xz</a>,<br />=0Aattempting MIRRORS if available<br />=0A=
ERROR: Fetcher failure: Fetch command failed with exit code 4, no<br />=
=0Aoutput<br />=0AERROR: Function failed: Fetcher failure for URL:<br />=
=0A'<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5=
3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz">http://download.qt=
-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensour=
ce-src-5.3.2.tar.xz</a>'.<br />=0AUnable to fetch URL from any source.<b=
r />=0AERROR: Logfile of failure stored in:<br />=0A/home/lachlan/poky-1=
7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3=
2-r0/temp/log.do_fetch.19587<br />=0AERROR: Task 675<br />=0A(/home/lac=
hlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"">qtwebkit_5.3.2.bb</a>=
,<br />=0Ado_fetch) failed with exit code '1'<br />=0ANOTE: validating k=
ernel config, see log.do_kernel_configcheck for<br />=0Adetails<br /><br=
 />=0AIf I manually download the one of the files, e.g.? :<br />=0A'<a h=
ref=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/sub=
modules/qtwebkit-opensource-src-5.3.2.tar.xz">http://download.qt-project=
org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5=
3.2.tar.xz</a><br />=0AThis works fine.<br /><br />=0ACan anyone sugges=
t what I can look fro to determine the problem. I<br />=0Ahave tried thi=
s a number of time over 24 hours and get the exact same<br />=0Afailures=
<br /><br />=0AThank you for any suggestions moving forward.<br /><br /=
>=0ARegards<br />=0ALachlan<br /><br />=0A---- Message sent via Adam Int=
ernet WebMail - <a href=3D"http://www.adam.com.au/">http://www.adam.com.=
au/</a><br />=0A-------------- next part --------------<br />=0AAn HTML=
 attachment was scrubbed...<br />=0AURL: &lt;<a href=3D"http://lists.yoc=
toproject.org/pipermail/yocto/attachments/20150127/7d948cb1/attachment.h=
tml">http://lists.yoctoproject.org/pipermail/yocto/attachments/20150127/=
7d948cb1/attachment.html</a>&gt;<br /><br />=0A-------------------------=
-----<br /><span><font color=3D"#888888"><br />=0A--<br />=0A___________=
____________________________________<br />=0Ayocto mailing list<br /><a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br />=
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.=
yoctoproject.org/listinfo/yocto</a><br /><br /><br />=0AEnd of yocto Dig=
est, Vol 52, Issue 86<br />=0A*************************************<br /=
></font></span>=0A</blockquote></div>=0A<br /></div></div></div>=0A</div=
>=0A=0A</blockquote>---- Message sent via Adam Internet WebMail  - http:=
//www.adam.com.au/</body></html>

--=_a1fb876aeee21227d43edb2682e88ffc--
