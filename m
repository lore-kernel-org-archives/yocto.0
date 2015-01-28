Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38DD6E00815; Tue, 27 Jan 2015 19:47:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [202.136.110.238 listed in list.dnswl.org]
Received: from webmail2.adam.net.au (webmail2.adam.net.au [202.136.110.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4422DE007BA
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 19:47:36 -0800 (PST)
Received: from localhost (webmail2.adam.net.au [127.0.0.1])
	by webmail2.adam.net.au (8.13.8/8.13.8) with ESMTP id t0S3lWQl012609
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 14:17:32 +1030
Message-Id: <4619dc853a3f21c5f09af94bba73bfc483c6fd44@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Wed, 28 Jan 2015 14:17:32 +1030
MIME-Version: 1.0
Subject: core-image-sato builds but core-image-sato-sdk fails on poky 1.7
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
X-List-Received-Date: Wed, 28 Jan 2015 03:47:42 -0000
Content-Type: multipart/alternative;
	boundary="=_7bbd89d4307702098e6b8b2fafe50ba3"

--=_7bbd89d4307702098e6b8b2fafe50ba3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am trying to build images that I can do development on with=0AQTCreato=
r (QT5). Although I can create core-image-sato without any=0Aproblems, I=
 cannot create core-image-sato-sdk=0AI have cloned these three repositor=
ies.=0A$ git clone git://git.yoctoproject.org/poky poky-1.7$ cd poky-1.7=
$=0Agit checkout =E2=80=93b dizzy origin/dizzy$ cd ..=0A$ git clone git:=
//git.openembedded.org/meta-openembedded$ cd=0Ameta-openembedded$ git ch=
eckout -b dizzy origin/dizzy$ cd ..=0A$ git clone git://github.com/meta-=
qt5/meta-qt5.git$ cd meta-qt5$ git=0Acheckout-b dizzy origin/dizzy$ cd .=
=0A$ source oe-init-build-env=0A$ bitbake core-image-sato =C2=A0 =C2=A0=
 - THIS WORKS FINE=0AHowever when I try$ bitbake core-image-sato-sdk =C2=
=A0 - I get fetch=0Aerrors:=0AERROR: Fetcher failure: Fetch command fail=
ed with exit code 4, no=0AoutputERROR: Function failed: Fetcher failure=
 for URL:=0A'http://download.qt-project.org/official_releases/qt/4.8/4.8=
6/qt-everywhere-opensource-src-4.8.6.tar.gz'.=0AUnable to fetch URL fro=
m any source.ERROR: Logfile of failure stored=0Ain:=0A/home/lachlan/poky=
-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qt4-x11-fr=
ee/4.8.6-r0/temp/log.do_fetch.29869ERROR:=0ATask 3137=0A(/home/lachlan/p=
oky-1.7/meta/recipes-qt/qt4/qt4-x11-free_4.8.6.bb,=0Ado_fetch) failed wi=
th exit code '1'=0AI expect this is reasonable because I have not instal=
led meta qt4 I=0Ahave only installed meta-qt5 which only contains a qt5=
 directory and=0Anot a qt4 directory.=0AHowever, I dont want to use QT4=
 but want to use QT5.=0AWhen I look at core-image-sato-sdk.bb it contain=
s the following three=0Alines:QT4PKG =3D "qt4-pkgs"QT4PKG_mips64 =3D ""I=
MAGE_FEATURES +=3D "dev-pkgs=0Atools-sdk ${QT4PKG}"=0AIf I substitute QT=
5 where it references QT4 and re-run $ bitbake=0Acore-image-sato-sdk I g=
et the errors:ERROR: 'qt5-pkgs' in=0AIMAGE_FEATURES is not a valid image=
 feature.=0AIf I remove the references to QT4 and re-run $ bitbake=0Acor=
e-image-sato-sdk the image builds ok.=0ACan anyone tell me if removing Q=
T4 references will be detrimental to=0Ausing QTCreator(5) in the futureo=
r should I instead, leave them and=0Aclone the QT4 repository. If I need=
 the QT4 repository then I cannot=0Aseemto find it, so could someone adv=
ise how I get reference to it.=0AThank you for your help.Lachlan=C2=A0=
=0A=0A---- Message sent via Adam Internet WebMail - http://www.adam.com.=
au/

--=_7bbd89d4307702098e6b8b2fafe50ba3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div>I am trying to build images that I can do development o=
n with QTCreator (QT5). Although I can create core-image-sato without an=
y problems, I cannot create core-image-sato-sdk</div><div><br /></div><d=
iv>I have cloned these three repositories.</div><div><br /></div><div>$=
 git clone git://git.yoctoproject.org/poky poky-1.7</div><div>$ cd poky-=
1.7</div><div>$ git checkout =E2=80=93b dizzy origin/dizzy</div><div>$ c=
d ..</div><div><br /></div><div>$ git clone git://git.openembedded.org/m=
eta-openembedded</div><div>$ cd meta-openembedded</div><div>$ git checko=
ut -b dizzy origin/dizzy</div><div>$ cd ..</div><div><br /></div><div>$=
 git clone git://github.com/meta-qt5/meta-qt5.git</div><div>$ cd meta-qt=
5</div><div>$ git checkout-b dizzy origin/dizzy</div><div>$ cd ..</div><=
div><br /></div><div>$ source oe-init-build-env</div><div><br /></div><d=
iv>$ bitbake core-image-sato =C2=A0 =C2=A0 - THIS WORKS FINE</div><div><=
br /></div><div>However when I try</div><div>$ bitbake core-image-sato-s=
dk =C2=A0 - I get fetch errors:</div><div><br /></div><div>ERROR: Fetche=
r failure: Fetch command failed with exit code 4, no output</div><div>ER=
ROR: Function failed: Fetcher failure for URL: 'http://download.qt-proje=
ct.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6=
tar.gz'. Unable to fetch URL from any source.</div><div>ERROR: Logfile=
 of failure stored in: /home/lachlan/poky-1.7/build-atmel/tmp/work/corte=
xa5t2hf-vfp-poky-linux-gnueabi/qt4-x11-free/4.8.6-r0/temp/log.do_fetch.2=
9869</div><div>ERROR: Task 3137 (/home/lachlan/poky-1.7/meta/recipes-qt/=
qt4/qt4-x11-free_4.8.6.bb, do_fetch) failed with exit code '1'</div><div=
><br /></div><div>I expect this is reasonable because I have not install=
ed meta qt4 I have only installed meta-qt5 which only contains a qt5 dir=
ectory and not a qt4 directory.</div><div><br /></div><div>However, I do=
nt want to use QT4 but want to use QT5.</div><div><br /></div><div>When=
 I look at core-image-sato-sdk.bb it contains the following three lines:=
</div><div>QT4PKG =3D "qt4-pkgs"</div><div>QT4PKG_mips64 =3D ""</div><di=
v>IMAGE_FEATURES +=3D "dev-pkgs tools-sdk ${QT4PKG}"</div><div><br /></d=
iv><div>If I substitute QT5 where it references QT4 and re-run $ bitbake=
 core-image-sato-sdk I get the errors:</div><div>ERROR: 'qt5-pkgs' in IM=
AGE_FEATURES is not a valid image feature.</div><div><br /></div><div>If=
 I remove the references to QT4 and re-run $ bitbake core-image-sato-sdk=
 the image builds ok.</div><div><br /></div><div>Can anyone tell me if r=
emoving QT4 references will be detrimental to using QTCreator(5) in the=
 future</div><div>or should I instead, leave them and clone the QT4 repo=
sitory. If I need the QT4 repository then I cannot seem</div><div>to fin=
d it, so could someone advise how I get reference to it.</div><div><br /=
></div><div>Thank you for your help.</div><div>Lachlan=C2=A0</div><div><=
br /></div>=0A=09=09=09=09<br />---- Message sent via Adam Internet WebM=
ail  - http://www.adam.com.au/</body></html>

--=_7bbd89d4307702098e6b8b2fafe50ba3--
