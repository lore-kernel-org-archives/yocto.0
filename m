Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D099E00AF8; Mon,  2 Nov 2015 08:42:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.189 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm29-vm4.bullet.mail.ne1.yahoo.com
	(nm29-vm4.bullet.mail.ne1.yahoo.com [98.138.91.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FFEBE006D1
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 08:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1446482556; bh=uRqNlOK8z1AAes7P+3ge88G3wd8mbUaErkpIfvAtt60=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=LlrsgyjSeF+KcloI1rgPZzczjawWFkbsqgihgV2fQPzCymMl1KZ1gkd2EPutv5eMMB/2+3qVBv5KhkPbV9S9OCfvinfhtD9OyMWkmcMrEai5gulZ7Ve7vqZZIUPG2GRrHUXx4+mbLMEl8JQ4STg68oEnctn2+dSwR25b7ZNzkhCRyK3hGipfxTIg5TA3hF0nyfgLeV6fW3OQYMVAu8SPGr+jc0D8hzEzouzEibdWFS9Qv6O91DIOzoRcnbDyAnl3xN5zNQXOPp4LUPNowHxIK3jFnhmHyazuo9r1NaTtVdZudecjvdbqvu8AWuiMWHLk6h9XsGfgqVLJuOOB92XWtg==
Received: from [98.138.226.178] by nm29.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Nov 2015 16:42:36 -0000
Received: from [98.138.87.10] by tm13.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Nov 2015 16:42:36 -0000
Received: from [127.0.0.1] by omp1010.mail.ne1.yahoo.com with NNFMP;
	02 Nov 2015 16:42:36 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 120548.94395.bm@omp1010.mail.ne1.yahoo.com
X-YMail-OSG: vmPEuToVM1nl1CLY5jdaqoTfq4A2iOkiY8PsSy2qzqxGOYbJqmucHn_CwMezIyI
	2IWHkriUOs5D1_tbAIc1eo9gK_Vb6RAmAHlE.2UFmrQ_Fgs1NDARakN7e1ynfsHKsJ3ajNTX3eFw
	QYFdDIK9kv8DgJn6LTHnBfKtviEZ2Kdz5pUWDjUFXSuWnfIJlxxXr_C0wf0L8bhgNcpYL_.b9exw
	aEiZQQiTmRb1it34rVft86FIWsHPWZ0BnW1SYhOW_ajOngeCaNCgQUQdYZmKAmhJ93i.w9Zmjk2s
	F6JuPGAJtCUkH48TU72jgkCrN6D6fu0VKA1epU4bRGKVvAStI9kyksShQeccLPhs1Kthe3evHZme
	fSemsIoDt2jHXzu9PQXHSRjc0jyqFc4TT81tm1Kxw8ptIBS6zYqQTgGoBFFj5az7a3Li4f468Lmc
	yFhpB98W7KEVLx.kzZ.gJlWcNGqyLuImuQxMuyLJp2_ZCnfMYUt_HOdXGkt4LXikmlNUYmtnkDfC
	FtN1fNlCmNjyB2J2a7MZz1ibKT6AwS9KGgFvzJ6pvCxbiWWl0Oi2_VWvn6UP_Fqo-
Received: by 98.138.105.223; Mon, 02 Nov 2015 16:42:35 +0000 
Date: Mon, 2 Nov 2015 16:42:35 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1208702155.772292.1446482555256.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1208702155.772292.1446482555256.JavaMail.yahoo@mail.yahoo.com>
Subject: openjpeg on github
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Nov 2015 16:42:40 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_772291_811673067.1446482555253"

------=_Part_772291_811673067.1446482555253
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,When a project is using git instead of tar file which branch is u=
sed?Is best to be using git or tar file with yocto?
Openjepeg is now on github. =C2=A0 The openjpeg 2.1.0 was at SRC_URI =3D "$=
{SOURCEFORGE_MIRROR}/project/${BPN}.mirror/${PV}/${BPN}-${PV}.tar.gz". =C2=
=A0 I did the following to create a new recipe.
recipetool create=C2=A0 -o /home/vidal/wkg/yocto/RaspberryPi2/poky/meta-oe/=
recipes-graphics/openjpeg/openjpeg_git.bb https://github.com/uclouvain/open=
jpeg.git
=C2=A0# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)
#
# Unable to find any files that looked like license statements. Check the a=
ccompanying
# documentation and source headers and set LICENSE and LIC_FILES_CHKSUM acc=
ordingly.
#
# NOTE: LICENSE is being set to "CLOSED" to allow you to at least start bui=
lding - if
# this is not accurate with respect to the licensing of the software being =
built (it
# will not be in most cases) you must specify the correct value before usin=
g this
# recipe for anything other than initial testing/development!
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

SRC_URI =3D "https://github.com/uclouvain/openjpeg.git"
SRC_URI[md5sum] =3D "9ad2bb8d9e833bfd74b4885a0f1d3882"
SRC_URI[sha256sum] =3D "af9d33bcc1485f1938ceb13464e66041dc4538dccc8edf02320=
141b0da9f95c6"
inherit cmake

DEPENDS =3D "libpng tiff lcms"
# NOTE: no Makefile found, unable to determine what needs to be done

do_configure () {
=C2=A0=C2=A0=C2=A0 # Specify any needed configure commands here
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir build
}

do_compile () {
=C2=A0=C2=A0=C2=A0 # Specify compilation commands here
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cd build
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmake ../
}

do_install () {
=C2=A0=C2=A0=C2=A0 # Specify install commands here
}
When I try bitbake openjpeg I get several errors.
The INSTALL file=C2=A0Using cmake (see www.cmake.org)

Type:
=C2=A0 cmake .
=C2=A0 makeOn my system I created a buildcd build=20
cmake ../makeThis builds okay.
Any and all help=C2=A0 is appreaciated.Cheers
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_772291_811673067.1446482555253
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_1_1446481223476_2743"><spa=
n id=3D"yui_3_16_0_1_1446481223476_2772">Hello All,</span></div><div id=3D"=
yui_3_16_0_1_1446481223476_3453"><span id=3D"yui_3_16_0_1_1446481223476_277=
2">When a project is using git instead of tar file which branch is used?</s=
pan></div><div id=3D"yui_3_16_0_1_1446481223476_3450"><span id=3D"yui_3_16_=
0_1_1446481223476_2772">Is best to be using git or tar file with yocto?</sp=
an></div><div id=3D"yui_3_16_0_1_1446481223476_3449"><span id=3D"yui_3_16_0=
_1_1446481223476_2772"><br></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1=
_1446481223476_2773"><span id=3D"yui_3_16_0_1_1446481223476_2772">Openjepeg=
 is now on github. &nbsp; The openjpeg 2.1.0 was at SRC_URI =3D "${SOURCEFO=
RGE_MIRROR}/project/${BPN}.mirror/${PV}/${BPN}-${PV}.tar.gz". &nbsp; I did =
the following to create a new recipe.</span></div><div dir=3D"ltr" id=3D"yu=
i_3_16_0_1_1446481223476_2868"><span id=3D"yui_3_16_0_1_1446481223476_2772"=
></span><span id=3D"yui_3_16_0_1_1446481223476_2772"><br></span></div><div =
id=3D"yui_3_16_0_1_1446481223476_3405" dir=3D"ltr"><span id=3D"yui_3_16_0_1=
_1446481223476_2772">recipetool create&nbsp; -o /home/vidal/wkg/yocto/Raspb=
erryPi2/poky/meta-oe/recipes-graphics/openjpeg/openjpeg_git.bb <a id=3D"yui=
_3_16_0_1_1446481223476_2869" href=3D"https://github.com/uclouvain/openjpeg=
.git">https://github.com/uclouvain/openjpeg.git</a></span></div><div id=3D"=
yui_3_16_0_1_1446481223476_3045" dir=3D"ltr"><br><span id=3D"yui_3_16_0_1_1=
446481223476_2772"></span></div><span id=3D"yui_3_16_0_1_1446481223476_2772=
"></span><div id=3D"yui_3_16_0_1_1446481223476_3100" dir=3D"ltr"><span id=
=3D"yui_3_16_0_1_1446481223476_2772">&nbsp;# Recipe created by recipetool<b=
r class=3D"" id=3D"yui_3_16_0_1_1446481223476_3183"># This is the basis of =
a recipe and may need further editing in order to be fully functional.<br c=
lass=3D"" id=3D"yui_3_16_0_1_1446481223476_3185"># (Feel free to remove the=
se comments when editing.)<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3=
187">#<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3189"># Unable to fin=
d any files that looked like license statements. Check the accompanying<br =
class=3D"" id=3D"yui_3_16_0_1_1446481223476_3191"># documentation and sourc=
e headers and set LICENSE and LIC_FILES_CHKSUM accordingly.<br class=3D"" i=
d=3D"yui_3_16_0_1_1446481223476_3193">#<br class=3D"" id=3D"yui_3_16_0_1_14=
46481223476_3195"># NOTE: LICENSE is being set to "CLOSED" to allow you to =
at least start building - if<br class=3D"" id=3D"yui_3_16_0_1_1446481223476=
_3197"># this is not accurate with respect to the licensing of the software=
 being built (it<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3199"># wil=
l not be in most cases) you must specify the correct value before using thi=
s<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3201"># recipe for anythin=
g other than initial testing/development!<br class=3D"" id=3D"yui_3_16_0_1_=
1446481223476_3203">LICENSE =3D "CLOSED"<br class=3D"" id=3D"yui_3_16_0_1_1=
446481223476_3205">LIC_FILES_CHKSUM =3D ""<br class=3D"" id=3D"yui_3_16_0_1=
_1446481223476_3207"><br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3209">=
SRC_URI =3D "https://github.com/uclouvain/openjpeg.git"<br class=3D"" id=3D=
"yui_3_16_0_1_1446481223476_3211">SRC_URI[md5sum] =3D "9ad2bb8d9e833bfd74b4=
885a0f1d3882"<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3213">SRC_URI[=
sha256sum] =3D "af9d33bcc1485f1938ceb13464e66041dc4538dccc8edf02320141b0da9=
f95c6"<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3215">inherit cmake<b=
r class=3D"" id=3D"yui_3_16_0_1_1446481223476_3317"><br class=3D"" id=3D"yu=
i_3_16_0_1_1446481223476_3319">DEPENDS =3D "libpng tiff lcms"<br class=3D""=
 id=3D"yui_3_16_0_1_1446481223476_3217"># NOTE: no Makefile found, unable t=
o determine what needs to be done<br class=3D"" id=3D"yui_3_16_0_1_14464812=
23476_3219"><br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3221">do_config=
ure () {<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3223">&nbsp;&nbsp;&=
nbsp; # Specify any needed configure commands here<br class=3D"" id=3D"yui_=
3_16_0_1_1446481223476_3225">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mkd=
ir build<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3227">}<br class=3D=
"" id=3D"yui_3_16_0_1_1446481223476_3229"><br class=3D"" id=3D"yui_3_16_0_1=
_1446481223476_3231">do_compile () {<br class=3D"" id=3D"yui_3_16_0_1_14464=
81223476_3233">&nbsp;&nbsp;&nbsp; # Specify compilation commands here<br cl=
ass=3D"" id=3D"yui_3_16_0_1_1446481223476_3235">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; cd build<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_323=
7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmake ../<br class=3D"" id=3D=
"yui_3_16_0_1_1446481223476_3239">}<br class=3D"" id=3D"yui_3_16_0_1_144648=
1223476_3241"><br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3243">do_inst=
all () {<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3245">&nbsp;&nbsp;&=
nbsp; # Specify install commands here<br class=3D"" id=3D"yui_3_16_0_1_1446=
481223476_3247">}<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3144">When=
 I try bitbake openjpeg I get several errors.</span></div><div id=3D"yui_3_=
16_0_1_1446481223476_3355" dir=3D"ltr"><br></div><div class=3D"" id=3D"yui_=
3_16_0_1_1446481223476_3035" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_=
1_1446481223476_2772">The INSTALL file&nbsp;</span></div><div class=3D"" id=
=3D"yui_3_16_0_1_1446481223476_3048" dir=3D"ltr"><span class=3D"" id=3D"yui=
_3_16_0_1_1446481223476_2772">Using cmake (see www.cmake.org)<br class=3D""=
 id=3D"yui_3_16_0_1_1446481223476_3050"><br class=3D"" id=3D"yui_3_16_0_1_1=
446481223476_3052">Type:<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_305=
4">&nbsp; cmake .<br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3056">&nbs=
p; make</span></div><div class=3D"" id=3D"yui_3_16_0_1_1446481223476_3408" =
dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_1446481223476_2772">On my s=
ystem I created a build</span></div><div class=3D"" id=3D"yui_3_16_0_1_1446=
481223476_3081" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_14464812234=
76_2772">cd build <br class=3D"" id=3D"yui_3_16_0_1_1446481223476_3501"></s=
pan></div><div class=3D"" id=3D"yui_3_16_0_1_1446481223476_3082" dir=3D"ltr=
"><span class=3D"" id=3D"yui_3_16_0_1_1446481223476_2772">cmake ../</span><=
/div><div class=3D"" id=3D"yui_3_16_0_1_1446481223476_3101" dir=3D"ltr"><sp=
an class=3D"" id=3D"yui_3_16_0_1_1446481223476_2772">make</span></div><div =
id=3D"yui_3_16_0_1_1446481223476_3507" dir=3D"ltr"><span class=3D"" id=3D"y=
ui_3_16_0_1_1446481223476_2772">This builds okay.</span></div><div id=3D"yu=
i_3_16_0_1_1446481223476_3508" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_=
0_1_1446481223476_2772"><br></span></div><div id=3D"yui_3_16_0_1_1446481223=
476_3481" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1446481223476_2772">Any and =
all help&nbsp; is appreaciated.</span></div><div id=3D"yui_3_16_0_1_1446481=
223476_3354" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1446481223476_2772">Cheer=
s</span></div><div id=3D"yui_3_16_0_1_1446481223476_2868"><br></div><div id=
=3D"yui_3_16_0_1_1446481223476_2744">&nbsp;</div><div id=3D"yui_3_16_0_1_14=
46481223476_2745" class=3D"signature">Edward Vidal Jr. e-mail develone@sbcg=
lobal.net 915-595-1613</div></div></body></html>

------=_Part_772291_811673067.1446482555253--
