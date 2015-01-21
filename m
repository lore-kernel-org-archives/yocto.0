Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C32E008A7; Wed, 21 Jan 2015 13:43:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0806EE0084E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 13:43:08 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id hs14so42704947lab.11
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 13:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=O1F47x3AZYboGZ2rJ02B/pbe6IgzIxIaJDvfvwhqlXc=;
	b=hAx7nSVnPcOPAy4uFmiwPZ7ZVxkh3+NXcrAATDlVSJuF4mKyPWKT9VxnDzscrRvgoZ
	jGJ9pYs84e9TwK/pCqlh8Il/7lwP9jyjoeIs8sDznSY9aPHxA9ERfbcALE8Uv21BD75B
	LWxYtm/Ff5v97u2BgrXKLb7U41AN0v9MgV+Eqei8eJNU3RDx366hLHLxnVj3MfxSZNY6
	9Suj+3OUF1/P+3EcWkAp+7xNtQw69zyNFePqGfa7C0BeHmmdxOb62ebD2an66xIslo2t
	ddJNifVieO9jB7hsoVhYGFyX4D103twncfk8159xZ8DF3Ymd8jY2ir/caMeP/6OJ7a/N
	V2Dg==
MIME-Version: 1.0
X-Received: by 10.112.14.6 with SMTP id l6mr47127555lbc.91.1421876586716; Wed,
	21 Jan 2015 13:43:06 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.12 with HTTP; Wed, 21 Jan 2015 13:43:06 -0800 (PST)
Date: Wed, 21 Jan 2015 19:43:06 -0200
X-Google-Sender-Auth: Db0cyj_Hnwwt8HtURFrN5CLYWp4
Message-ID: <CABKVDBB5PioZdX48N2eRBYNz3QBH+8FVz6+GK5emqC4GRO8EAA@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem recipe build with package debian
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
X-List-Received-Date: Wed, 21 Jan 2015 21:43:20 -0000
Content-Type: multipart/alternative; boundary=001a11c36de8dda33f050d307049

--001a11c36de8dda33f050d307049
Content-Type: text/plain; charset=UTF-8

I have a deb package with several scripts and configurations that I want to
use the BBB.
I created a recipe, as well as other modules and packages to install.


The recipe I'm using is equal below, (removed some details, is just the
example base)



SUMMARY = ""
DESCRIPTION = ""
HOMEPAGE = ""



LIC_FILES_CHKSUM = "file://LICENSE;md5=1726e2117494ba3e13e1c3d93f795360"

SRC_URI = "file://my_pkg.deb"

SRC_URI[md5sum] = ""
SRC_URI[sha256sum] = ""

S = "${WORKDIR}/my_pkg-${PV}"

inherit package_deb


do_install_append() {
    install -m 755 -D ${WORKDIR}/my_pkg.deb
}




Has anyone created recipe to install deb packages?




My bibake process build...


Reading package lists...
Building dependency tree...
Reading state information...
Package pkgAll is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

W: Unable to read /home/bueno/yocto/poky/projTest/tmp/work/qemux86-
poky-linux/projTest/1.0-r0/apt/preferences.d/ - DirectoryExists (2: No such
file or directory)
E: Package 'pkgAll' has no installation candidate

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/bueno/yocto/poky/
projTest/tmp/work/qemux86-poky-linux/projTest/1.0-r0/
temp/log.do_rootfs.27791
ERROR: Task 7 (/home/bueno/yocto/poky/projTest//../meta-pkgAll/
recipes-core/images/projTest.bb, do_rootfs) failed with exit code '1'



Now, my recipe the package deb:

SUMMARY = "XXXXXX"
DESCRIPTION = "XXXXXXXXXXXXXX"

LICENSE = "CLOSED"


SRC_URI = "file://projTest_1.0.deb"

SRC_URI[md5sum] = "32d0c2b332440a47dd370eXXXXXXXXXX"
SRC_URI[sha256sum] = "42ebcf856aa626aa6d021173f4d931
e0c84a0a27808d147db89942XXXXXXXXXX"



inherit bin_package pkgconfig


install_deb() {

    ${STAGING_BINDIR_NATIVE}/dpkg --root=${IMAGE_ROOTFS}/
--admindir=${IMAGE_ROOTFS}/var/lib/dpkg/ -i file://projTest_1.0.deb
}

ROOTFS_POSTPROCESS_COMMAND += "install_deb; "




-- 

*Att,Cleiton Bueno*

--001a11c36de8dda33f050d307049
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:Arial,Helvetica,sans-serif;font=
-size:13px">I have a deb package with several scripts and configurations th=
at I want to use the BBB.</span><br style=3D"font-family:Arial,Helvetica,sa=
ns-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-se=
rif;font-size:13px">I created a recipe, as well as other modules and packag=
es to install.</span><br style=3D"font-family:Arial,Helvetica,sans-serif;fo=
nt-size:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size=
:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=
<span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">The r=
ecipe I&#39;m using is equal below, (removed some details, is just the exam=
ple base)</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-si=
ze:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px=
"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><br s=
tyle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">SUMMARY =3D &quo=
t;&quot;</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-siz=
e:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">DESCRIPTION =3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvet=
ica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">HOMEPAGE =3D &quot;&quot;</span><br style=3D"font=
-family:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family=
:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,=
Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Helveti=
ca,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sa=
ns-serif;font-size:13px">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D</=
span><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=
1726e2117494ba3e13e1c3d93f7953</span><span style=3D"font-family:Arial,Helve=
tica,sans-serif;font-size:13px">60&quot;</span><br style=3D"font-family:Ari=
al,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Helv=
etica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px">SRC_URI =3D &quot;file://my_pkg.deb&quot;</span=
><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><br st=
yle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[md5sum] =
=3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvetica,sans-serif;=
font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-=
size:13px">SRC_URI[sha256sum] =3D &quot;&quot;</span><br style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Aria=
l,Helvetica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:13px">S =3D &quot;${WORKDIR}/my_pkg-${PV}&quot;=
</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=
<br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span s=
tyle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">inherit pack=
age_deb</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size=
:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=
<br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span s=
tyle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">do_install_a=
ppend() {</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-si=
ze:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13=
px">=C2=A0=C2=A0=C2=A0 install -m 755 -D ${WORKDIR}/my_pkg.deb</span><br st=
yle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">}</span><br styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"fo=
nt-family:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Aria=
l,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Helve=
tica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,=
sans-serif;font-size:13px">Has anyone created recipe to install deb package=
s?</span><div><font face=3D"Arial, Helvetica, sans-serif"><br></font></div>=
<div><font face=3D"Arial, Helvetica, sans-serif"><br></font></div><div><fon=
t face=3D"Arial, Helvetica, sans-serif"><br></font></div><div><font face=3D=
"Arial, Helvetica, sans-serif"><br></font></div><div><span style=3D"font-fa=
mily:Arial,Helvetica,sans-serif;font-size:13px">My bibake process build...<=
/span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><=
br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><br styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=3D"=
font-family:Arial,Helvetica,sans-serif;font-size:13px">Reading package list=
s...</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13=
px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">B=
uilding dependency tree...</span><br style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-s=
erif;font-size:13px">Reading state information...</span><br style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:13px"><span style=3D"font-family=
:Arial,Helvetica,sans-serif;font-size:13px">Package pkgAll is not available=
, but is referred to by another package.</span><br style=3D"font-family:Ari=
al,Helvetica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,He=
lvetica,sans-serif;font-size:13px">This may mean that the package is missin=
g, has been obsoleted, or</span><br style=3D"font-family:Arial,Helvetica,sa=
ns-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-se=
rif;font-size:13px">is only available from another source</span><br style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=3D"font-fam=
ily:Arial,Helvetica,sans-serif;font-size:13px">W: Unable to read /home/buen=
o/yocto/poky/</span><span style=3D"font-family:Arial,Helvetica,sans-serif;f=
ont-size:13px">projTest/tmp/work/qemux86-</span><span style=3D"font-family:=
Arial,Helvetica,sans-serif;font-size:13px">poky-linux/projTest/1.0-r0/</spa=
n><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">apt=
/preferences.d/ - DirectoryExists (2: No such file or directory)</span><br =
style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">E: Package &#39;=
pkgAll&#39; has no installation candidate</span><br style=3D"font-family:Ar=
ial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetic=
a,sans-serif;font-size:13px">ERROR: Function failed: do_rootfs</span><br st=
yle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">ERROR: Logfile o=
f failure stored in: /home/bueno/yocto/poky/</span><span style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:13px">projTest/tmp/work/qemux86-</s=
pan><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">p=
oky-linux/projTest/1.0-r0/</span><span style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px">temp/log.do_rootfs.27791</span><br style=3D"fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=3D"font-fam=
ily:Arial,Helvetica,sans-serif;font-size:13px">ERROR: Task 7 (/home/bueno/y=
octo/poky/</span><span style=3D"font-family:Arial,Helvetica,sans-serif;font=
-size:13px">projTest//../meta-pkgAll/</span><span style=3D"font-family:Aria=
l,Helvetica,sans-serif;font-size:13px">recipes-core/images/projTest.</span>=
<span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">bb, d=
o_rootfs) failed with exit code &#39;1&#39;</span><br style=3D"font-family:=
Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,H=
elvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Helvetic=
a,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Helvetica,sans-=
serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif=
;font-size:13px">Now, my recipe the package deb:</span><br style=3D"font-fa=
mily:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Ar=
ial,Helvetica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,H=
elvetica,sans-serif;font-size:13px">SUMMARY =3D &quot;XXXXXX&quot;</span><b=
r style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span sty=
le=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">DESCRIPTION =
=3D &quot;XXXXXXXXXXXXXX&quot;</span><br style=3D"font-family:Arial,Helveti=
ca,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-seri=
f;font-size:13px">LICENSE =3D &quot;CLOSED&quot;</span><br style=3D"font-fa=
mily:Arial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Ar=
ial,Helvetica,sans-serif;font-size:13px"><br style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetic=
a,sans-serif;font-size:13px">SRC_URI =3D &quot;file://projTest_1.0.deb&quot=
;</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span =
style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[md5=
sum] =3D &quot;</span><span style=3D"font-family:Arial,Helvetica,sans-serif=
;font-size:13px">32d0c2b332440a47dd370eXXXXXXXX</span><span style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:13px">XX&quot;</span><br style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=3D"f=
ont-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[sha256sum] =
=3D &quot;</span><span style=3D"font-family:Arial,Helvetica,sans-serif;font=
-size:13px">42ebcf856aa626aa6d021173f4d931</span><span style=3D"font-family=
:Arial,Helvetica,sans-serif;font-size:13px">e0c84a0a27808d147db89942XXXXXX<=
/span><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>XXXX&quot;</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-=
size:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13=
px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><br=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">inherit bin_pac=
kage pkgconfig</span><br style=3D"font-family:Arial,Helvetica,sans-serif;fo=
nt-size:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size=
:13px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=
<span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">insta=
ll_deb() {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-family:Arial=
,Helvetica,sans-serif;font-size:13px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span=
><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=C2=
=A0=C2=A0=C2=A0</span><br style=3D"font-family:Arial,Helvetica,sans-serif;f=
ont-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-s=
ize:13px">=C2=A0=C2=A0=C2=A0 ${STAGING_BINDIR_NATIVE}/dpkg --root=3D${IMAGE=
_ROOTFS}/ --admindir=3D${IMAGE_ROOTFS}/</span><span style=3D"font-family:Ar=
ial,Helvetica,sans-serif;font-size:13px">var/lib/dpkg/ -i file://projTest_1=
.0.deb</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:=
13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>}=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-family:Arial,Helvetic=
a,sans-serif;font-size:13px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span st=
yle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><br style=3D"font-family:Arial,Helv=
etica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px">ROOTFS_POSTPROCESS_COMMAND +=3D &quot;install_d=
eb; &quot;</span></div><div><font face=3D"Arial, Helvetica, sans-serif"><br=
></font></div><div><font face=3D"Arial, Helvetica, sans-serif"><br></font><=
/div><div><font face=3D"Arial, Helvetica, sans-serif"><br clear=3D"all"></f=
ont><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr"><i><b>Att,<br>Cleiton Bueno</b></i><br><div><br></div></div></d=
iv></div></div></div></div></div></div></div></div>
</div></div>

--001a11c36de8dda33f050d307049--
