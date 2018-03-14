Return-Path: <patryk.las@slabs.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D32E007B3; Wed, 14 Mar 2018 15:31:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00BB2E00474
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 15:31:04 -0700 (PDT)
Received: by mail-wr0-f172.google.com with SMTP id h2so6290110wre.12
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 15:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=slabs-pl.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=K+jW6OPYciB8WjJhVtZeQLHhtyar1/RI0qlhKBnEIt8=;
	b=iY1CCyFOWBy8Jrm3KAtf+DsS4UAijFdVhIhazm6qX2Vs1X3f6+BtGfkpfOBYNupLXi
	qfMkYeP3WqnLsc8I5YimD7S5mRp5tKfvXjXCLuJfv6L/FgxdQvmbHNy/U9wY9xG1hv+K
	lYZh+k9kaLO1VqE/Dcs6Fcz2EoKEWqhxlfZIovveDUWUGwt4Zlrg05YYtO2EncjCSqkg
	uScg7jbSF5PdN/Pb9A25/z98LVzt45RZt6sUbHvu0cGSrLNRHaRI1AECoWs5LKh9fIab
	M7e4zQMiaUkPQ/qhzPz3Cn3i8NmB1aEbn1N4ydBQhAchFDS5+eYyC/FF3HNaycGnKymm
	cqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=K+jW6OPYciB8WjJhVtZeQLHhtyar1/RI0qlhKBnEIt8=;
	b=rHCdJkP0SgsT2YoXx2jgEJu+tZVC/Ok+4H4rqFL6uOvbNOmLmc0VaDlftC2J9Jx3T2
	zX5Hq9oIv3CBQaEAJKEplubPm6YLfpipo9Utz6vnQxzBM/Df7chNkPivX/8f/mDOwPhF
	JyLCeLK76Nm2gsaQcYaEy4596ySWqWNzJQCMlg1cRoPYyNUTH2qXqjeRjS/PMDhF2QXM
	6bJHlWTaQAPrB8pZTBbDsPvl1EaSF5C5uL+GQtNJZIQ/eoLVZByvFkpPvL7xI19G9MWw
	avvqiD1qVN9A/yxsYbRy6mBTweuoeuZd2VmQKnlC900u78hGSvldY6+rxcCf3wLVHAlR
	d7RA==
X-Gm-Message-State: AElRT7Gu7B8GWHh2g5j8E/QHbymJyDSkQPB9zvfoTbg6CTPbflIjM9F+
	Dl6VmrYgRDvGs2muRfbUEsL401sS5SgdarhofIy/sNaw
X-Google-Smtp-Source: AG47ELuER44HPHZkelVhVv52sg9uWCeDkEqiHo4VcPMv09Nho+gQQ5HVdGxJWEgoZG1fF+arsS4GalUisOUjNBJag1c=
X-Received: by 10.223.158.196 with SMTP id b4mr5186617wrf.112.1521066663305;
	Wed, 14 Mar 2018 15:31:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.172.197 with HTTP; Wed, 14 Mar 2018 15:31:02 -0700 (PDT)
From: =?UTF-8?B?UGF0cnlrIMWBYcWb?= <patryk.las@slabs.pl>
Date: Wed, 14 Mar 2018 23:31:02 +0100
Message-ID: <CAC_2qz=FNge1X6dq=K4Snc1cqPy0FYEKeE5+F0siLGyufcM3Ew@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 19 Mar 2018 08:36:15 -0700
Subject: Installing setup.py after cmake build in one recipe
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
X-List-Received-Date: Wed, 14 Mar 2018 22:31:06 -0000
Content-Type: multipart/alternative; boundary="089e082114e0257b3a056766eeda"

--089e082114e0257b3a056766eeda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Since few days I am dealing with problem in compiling my recipe in which I
am downloading git repositories patch them, compiling (via cmake) and
finally running setup.py. I have to do it in mentioned order because cmake
gives me *.so library which is required by setup.py instalator. Python
setup.py is located inside repository like: "${S}/python/setup.py" where
S=3D${WORKDIR}/git.

Recipe compiles fine (bitbake my_recipe) but it does not included in final
system image (added entry to add recipe into main image). What is more
there is not site-packages for build in tmp but setup.py seemd to be
invoked.

My recipe:

LICENSE =3D "CLOSED"
BB_STRICT_CHECKSUM =3D "0"
SECTION =3D "devel/python"
PV =3D "1.0"
DEPENDS =3D "boost udev swig-native python python-setuptools python-native
python-setuptools-native python-distutils-extra-native"

SRC_URI =3D " \
    git://github.com/myrepo1;protocol=3Dhttps;name=3DA \
    git://github.com/myrepo2;protocol=3Dhttps;name=3DB \
    file://0001-patch1.patch \
"
SRCREV_A =3D "404ff3eeff0d79c15cbfdbc126c4bff2996baea6"
SRCREV_B =3D "5e883c2a3f5373dbd1ea34e6095f9433bea2b0b3"

S =3D "${WORKDIR}/git"


PARALLEL_MAKEINST =3D ""

DISTUTILS_INSTALL_ARGS +=3D
"--install-lib=3D${libdir}/${PYTHON_DIR}/site-packages"

inherit cmake

FILES_${PN} +=3D "${libdir}/${PYTHON_DIR}/*"

do_compile_prepend() {
    export STAGING_LIBDIR=3D${STAGING_LIBDIR}
    export STAGING_INCDIR=3D${STAGING_INCDIR}
}

do_install() {
    export STAGING_LIBDIR=3D${STAGING_LIBDIR}
    export STAGING_INCDIR=3D${STAGING_INCDIR}
    ${STAGING_BINDIR_NATIVE}/python-native/python ${S}/python/setup.py
install
}

--=20

*Patryk =C5=81a=C5=9B*

Embedded Specialist

+ 48 503 165 819


*patryk.las@slabs.pl <patryk.las@slabs.pl>*

Dworska 1A/1U

30-314 Krak=C3=B3w

Polska
NIP 9452185706

--089e082114e0257b3a056766eeda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Since few days I am dealing with pr=
oblem in compiling my recipe in which I am downloading git repositories pat=
ch them, compiling (via cmake) and finally running setup.py. I have to do i=
t in mentioned order because cmake gives me *.so library which is required =
by setup.py instalator. Python setup.py is located inside repository like: =
&quot;${S}/python/setup.py&quot; where S=3D${WORKDIR}/git.</div><div><br></=
div><div>Recipe compiles fine (bitbake my_recipe) but it does not included =
in final system image (added entry to add recipe into main image). What is =
more there is not site-packages for build in tmp but setup.py seemd to be i=
nvoked.</div><div><br></div><div>My recipe:</div><div><br></div><div><div>L=
ICENSE =3D &quot;CLOSED&quot;</div><div>BB_STRICT_CHECKSUM =3D &quot;0&quot=
;</div><div>SECTION =3D &quot;devel/python&quot;</div><div>PV =3D &quot;1.0=
&quot;</div><div>DEPENDS =3D &quot;boost udev swig-native python python-set=
uptools python-native python-setuptools-native python-distutils-extra-nativ=
e&quot;</div><div><br></div><div>SRC_URI =3D &quot; \</div><div>=C2=A0 =C2=
=A0 git://<a href=3D"http://github.com/myrepo1;protocol=3Dhttps;name=3DA">g=
ithub.com/myrepo1;protocol=3Dhttps;name=3DA</a> \=C2=A0=C2=A0</div><div>=C2=
=A0 =C2=A0 git://<a href=3D"http://github.com/myrepo2;protocol=3Dhttps;name=
=3DB">github.com/myrepo2;protocol=3Dhttps;name=3DB</a> \=C2=A0=C2=A0</div><=
div>=C2=A0 =C2=A0 file://0001-patch1.patch \</div><div>&quot;</div><div>SRC=
REV_A =3D &quot;404ff3eeff0d79c15cbfdbc126c4bff2996baea6&quot;</div><div>SR=
CREV_B =3D &quot;5e883c2a3f5373dbd1ea34e6095f9433bea2b0b3&quot;</div><div><=
br></div><div>S =3D &quot;${WORKDIR}/git&quot;</div><div><br></div><div><br=
></div><div>PARALLEL_MAKEINST =3D &quot;&quot;</div><div><br></div><div>DIS=
TUTILS_INSTALL_ARGS +=3D &quot;--install-lib=3D${libdir}/${PYTHON_DIR}/site=
-packages&quot;</div><div><br></div><div>inherit cmake</div><div><br></div>=
<div>FILES_${PN} +=3D &quot;${libdir}/${PYTHON_DIR}/*&quot;</div><div><br><=
/div><div>do_compile_prepend() {</div><div>=C2=A0 =C2=A0 export STAGING_LIB=
DIR=3D${STAGING_LIBDIR}</div><div>=C2=A0 =C2=A0 export STAGING_INCDIR=3D${S=
TAGING_INCDIR}</div><div>}</div><div><br></div><div>do_install() {</div><di=
v>=C2=A0 =C2=A0 export STAGING_LIBDIR=3D${STAGING_LIBDIR}</div><div>=C2=A0 =
=C2=A0 export STAGING_INCDIR=3D${STAGING_INCDIR}</div><div>=C2=A0 =C2=A0 ${=
STAGING_BINDIR_NATIVE}/python-native/python ${S}/python/setup.py install</d=
iv><div>}</div></div><div><div><br></div>-- <br><div class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><table style=3D"font-size:12.=
8px;border:none;border-collapse:collapse"><tbody><tr style=3D"height:0px"><=
td colspan=3D"3" style=3D"border:0px solid rgb(0,0,0);vertical-align:top;pa=
dding:7px"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><font size=3D"1"><b style=3D"white-space:pre-wrap;color:rgb(0,56=
,62);font-family:Arial">Patryk =C5=81a=C5=9B</b><br></font></p><p dir=3D"lt=
r" style=3D"margin-top:0pt;margin-bottom:0pt"><font color=3D"#00383e" face=
=3D"Arial" size=3D"1"><span style=3D"line-height:20.24px;white-space:pre-wr=
ap">Embedded Specialist </span></font></p><p dir=3D"ltr" style=3D"margin-to=
p:0pt;margin-bottom:0pt"><font color=3D"#00383e" face=3D"Arial" size=3D"1">=
<span style=3D"white-space:pre-wrap">+ 48 503 165 819</span></font></p></td=
><td colspan=3D"2" style=3D"border:0px solid rgb(0,0,0);vertical-align:top;=
padding:7px"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt"><br></p></td></tr><tr style=3D"height:0px"><td colspan=3D"5" s=
tyle=3D"border:0px solid rgb(0,0,0);vertical-align:top;padding:7px"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><u><a =
href=3D"mailto:patryk.las@slabs.pl" target=3D"_blank"><font size=3D"1">patr=
yk.las@slabs.pl</font></a></u></p></td></tr><tr style=3D"height:0px"><td st=
yle=3D"border:0px solid rgb(0,0,0);vertical-align:top;padding:7px"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-al=
ign:justify"><span style=3D"font-family:arial;color:rgb(0,0,0);vertical-ali=
gn:baseline;white-space:pre-wrap;background-color:transparent"> <img src=3D=
"https://docs.google.com/a/s-labs.io/uc?id=3D0B4AXUKpwZOlILVlnSWI2ekhJRTg&a=
mp;export=3Ddownload" width=3D"96" height=3D"30"></span></p></td><td style=
=3D"border-style:solid;border-color:rgb(0,0,0);border-width:0px 1px 0px 0px=
;vertical-align:middle;padding:7px"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;text-align:center"><span style=3D"font-f=
amily:arial;color:rgb(0,56,62);vertical-align:baseline;white-space:pre-wrap=
;background-color:transparent"><font size=3D"1">Dworska 1A/1U</font></span>=
</p></td><td style=3D"border-style:solid;border-color:rgb(0,0,0);border-wid=
th:0px 1px;vertical-align:middle;padding:7px"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt;text-align:center"><span style=
=3D"font-family:arial;color:rgb(0,56,62);vertical-align:baseline;white-spac=
e:pre-wrap;background-color:transparent"><font size=3D"1">30-314 Krak=C3=B3=
w</font></span></p></td><td style=3D"border-style:solid;border-color:rgb(0,=
0,0);border-width:0px 1px;vertical-align:middle;padding:7px"><p dir=3D"ltr"=
 style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align:cent=
er"><span style=3D"font-family:arial;color:rgb(0,56,62);vertical-align:base=
line;white-space:pre-wrap;background-color:transparent"><font size=3D"1">Po=
lska</font></span></p></td><td style=3D"border-style:solid;border-color:rgb=
(0,0,0);border-width:0px 0px 0px 1px;vertical-align:middle;padding:7px"><fo=
nt color=3D"#134f5c" size=3D"1">NIP 9452185706<br></font><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align:center">=
</p></td></tr></tbody></table><br><br></div></div></div></div></div></div><=
/div></div></div></div>
</div></div>

--089e082114e0257b3a056766eeda--
