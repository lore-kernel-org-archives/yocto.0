Return-Path: <dresser.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B863E00CE6; Fri, 15 Mar 2019 09:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dresser.net[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF8DE00CB9
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 09:59:06 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id e74so7165995wmg.3
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 09:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uNg2fkBYBftQdqG8ENMQJ/YvHOTsm0gJpd7d/ZGPodk=;
	b=DY0UjUZ2K3qmc5cBvB4c6XNY+5HTH+eUqXUJq5UP746F2h+sChHVHHg6e0ttnmREy/
	UwwP4DOpi6DNzNJi7dZvvmKp0k5/pOvuIWKvQ3JWMl6mAuwx4yZnAoEc4iWI7ugHuApH
	abRcK0m2A11u6iHyg2baQyypet8hYI1VBmBHY51f909BwniOXHeTxbKLOg8MDnAZifhv
	dPGWAnWFaeIzYhAff7nl2SPmRcYnWbV2XzeaRtHWeOe83f98mlzMPYShgu1Ovv3T1HC6
	/gS7EEFrYNv8DNxlUu/tKRZl7+xEm6LYNtAymYVDQkJItdJoEfosBMBimudtplIfGV4J
	FXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uNg2fkBYBftQdqG8ENMQJ/YvHOTsm0gJpd7d/ZGPodk=;
	b=SVIHxmoISr7s5HTkuedozdWlo3N85PelAZAD2mDIAQPdP6kGkx7z7bkuYHg0jx83w6
	UCi2iDOqmakKhodDZmT0o9cuNBToyBLu3rF3VC/kWAq1gvt0BYcgpldveJoVUPJ7NRBJ
	yqGtswZNs6DpMgqnxlsgVHDlMMoPv3Wh5jyH2OqgG+0Gcac1dPhHp80pcBPy6AugwWg0
	z1oRVoGmFd3/uWtmVyjk0QackW4Fwq7HsK8Hn4iN0cM0LGJb7SkCrrceeECPD7GGitrV
	xwDnyZrRE5NEkJqL5L/4vBdmSYc7AxIoqqCJUzTCEq4u/Aq9tWVC8IKizfYH+WwrGdYX
	ZvXw==
X-Gm-Message-State: APjAAAXBTsyO21697nRkIqzj9Z2OAi2wrEFLya4YVHYI2eZci6Ce99zu
	WV4xd7D2u1IdGAX9j0Kn4C9TeSvOyxN5int1m0GAVW0d
X-Google-Smtp-Source: APXvYqzIoGD6kmgX4/3LlGJG9XJ5h4ezRIAyHs5K/hnLT0dueeFhtvSCNnoI1OOoEbwZA+ZxmLf2pPdJFAQAvH3QKmg=
X-Received: by 2002:a05:600c:2143:: with SMTP id
	v3mr2781665wml.14.1552669145162; 
	Fri, 15 Mar 2019 09:59:05 -0700 (PDT)
MIME-Version: 1.0
From: Derek Dresser <dresser.net@gmail.com>
Date: Fri, 15 Mar 2019 12:58:54 -0400
Message-ID: <CADmsHKfN0X-HCCdd_4mi=xEvjybWUKC8YXcoq5c__EZDxRDkZw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: can't find libudev.h
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
X-List-Received-Date: Fri, 15 Mar 2019 16:59:07 -0000
Content-Type: multipart/alternative; boundary="000000000000d9e9dd058424f4ca"

--000000000000d9e9dd058424f4ca
Content-Type: text/plain; charset="UTF-8"

Hello,  I am trying to build a recipe that has a header dependency on
libudev.h.  I have added a

DEPENDS += "systemd"

because it looks like systemd provides libudev, but I continue to get the
following error:

   hid.c:44:21: fatal error: libudev.h: No such file or directory

This is what a find shows:

find /build -name libudev.h 2>/dev/null
/build/multiplexor-glibc/work/corei7-64-oe-linux/systemd/1_241-r0/git/src/libudev/libudev.h
/build/multiplexor-glibc/work/corei7-64-oe-linux/systemd/1_241-r0/sysroot-destdir/usr/include/libudev.h
/build/multiplexor-glibc/work/corei7-64-oe-linux/abc-app/0.1-r0/recipe-sysroot/usr/include/libudev.h
/build/multiplexor-glibc/work/intel_corei7_64-oe-linux/image-multiplexor-dev/1.0-r0/rootfs/usr/include/libudev.h
/build/multiplexor-glibc/sysroots-components/corei7-64/systemd/usr/include/libudev.h

Any thoughts on how to resolve or troubleshoot this are appreciated.
Recipe and full error message are below.

LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

SRC_URI = "\
  git://
git@git.bitbucket.is.company.com/abc/abc.git;protocol=ssh;destsuffix=abc;name=abc
\
  git://
git@git.bitbucket.is.company.com/abc/sequencer.git;protocol=ssh;destsuffix=abc/sequencer;name=sequencer
\
  git://
github.com/kerrydwong/MCP2210-Library.git;destsuffix=abc/MCP2210-Library;name=MCP2210
\
"

# Modify these as desired
#PV = "1.0+git${SRCPV}"
PV = "0.1"
SRCREV_default = "${AUTOREV}"
SRCREV_abc = "${AUTOREV}"
SRCREV_sequencer = "${AUTOREV}"
SRCREV_MCP2210 = "${AUTOREV}"

DEPENDS += "systemd"
RDEPENDS_${PN} += "systemd"

S = "${WORKDIR}/abc"

# NOTE: this is a Makefile-only piece of software, so we cannot generate
much of the
# recipe automatically - you will need to examine the Makefile yourself and
ensure
# that the appropriate arguments are passed in.

do_patch[noexec] = "1"

do_configure () {
        # Specify any needed configure commands here
        :
}

do_compile () {
        # You will almost certainly need to add additional arguments here
        oe_runmake
}

do_install () {
        # NOTE: unable to determine what to put here - there is a Makefile
but no
        # target named "install", so you will need to define this yourself
        :
}


Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 72
| cd MCP2210-Library; make CXXFLAGS=-fPIC CFLAGS=-fPIC all
| make[1]: Entering directory
'/build/multiplexor-glibc/work/corei7-64-oe-linux/abc-app/0.1-r0/abc/MCP2210-Library'
| for CONF in Debug Release ; \
| do \
|     "make" -f nbproject/Makefile-${CONF}.mk QMAKE= SUBPROJECTS=
.build-conf; \
| done
| make[2]: Entering directory
'/build/multiplexor-glibc/work/corei7-64-oe-linux/abc-app/0.1-r0/abc/MCP2210-Library'
| "make"  -f nbproject/Makefile-Debug.mk dist/Debug/GNU-Linux-x86/hidusbtest
| make[3]: Entering directory
'/build/multiplexor-glibc/work/corei7-64-oe-linux/abc-app/0.1-r0/abc/MCP2210-Library'
| mkdir -p build/Debug/GNU-Linux-x86
| rm -f build/Debug/GNU-Linux-x86/hid.o.d
| gcc -fPIC   -c -g -MMD -MP -MF build/Debug/GNU-Linux-x86/hid.o.d -o
build/Debug/GNU-Linux-x86/hid.o hid.c
| hid.c:44:21: fatal error: libudev.h: No such file or directory
| compilation terminated.

--000000000000d9e9dd058424f4ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,=C2=A0 I am trying t=
o build a recipe that has a header dependency on libudev.h.=C2=A0 I have ad=
ded a <br></div><div><br></div><div>DEPENDS +=3D &quot;systemd&quot;</div><=
div><br></div><div>because it looks like systemd provides libudev, but I co=
ntinue to get the following error:</div><div><br></div><div>=C2=A0=C2=A0 hi=
d.c:44:21: fatal error: libudev.h: No such file or directory</div><div><br>=
</div><div>This is what a find shows:</div><div><br></div><div>find /build =
-name libudev.h 2&gt;/dev/null<br>/build/multiplexor-glibc/work/corei7-64-o=
e-linux/systemd/1_241-r0/git/src/libudev/libudev.h<br>/build/multiplexor-gl=
ibc/work/corei7-64-oe-linux/systemd/1_241-r0/sysroot-destdir/usr/include/li=
budev.h<br>/build/multiplexor-glibc/work/corei7-64-oe-linux/abc-app/0.1-r0/=
recipe-sysroot/usr/include/libudev.h<br>/build/multiplexor-glibc/work/intel=
_corei7_64-oe-linux/image-multiplexor-dev/1.0-r0/rootfs/usr/include/libudev=
.h<br>/build/multiplexor-glibc/sysroots-components/corei7-64/systemd/usr/in=
clude/libudev.h<br></div><div><br></div><div>Any thoughts on how to resolve=
 or troubleshoot this are appreciated.=C2=A0 Recipe and full error message =
are below.</div><div><br></div><div>LICENSE =3D &quot;CLOSED&quot;<br>LIC_F=
ILES_CHKSUM =3D &quot;&quot;<br><br>SRC_URI =3D &quot;\<br>=C2=A0 git://<a =
href=3D"http://git@git.bitbucket.is.company.com/abc/abc.git;protocol=3Dssh;=
destsuffix=3Dabc;name=3Dabc">git@git.bitbucket.is.company.com/abc/abc.git;p=
rotocol=3Dssh;destsuffix=3Dabc;name=3Dabc</a> \<br>=C2=A0 git://<a href=3D"=
http://git@git.bitbucket.is.company.com/abc/sequencer.git;protocol=3Dssh;de=
stsuffix=3Dabc/sequencer;name=3Dsequencer">git@git.bitbucket.is.company.com=
/abc/sequencer.git;protocol=3Dssh;destsuffix=3Dabc/sequencer;name=3Dsequenc=
er</a> \<br>=C2=A0 git://<a href=3D"http://github.com/kerrydwong/MCP2210-Li=
brary.git;destsuffix=3Dabc/MCP2210-Library;name=3DMCP2210">github.com/kerry=
dwong/MCP2210-Library.git;destsuffix=3Dabc/MCP2210-Library;name=3DMCP2210</=
a> \<br>&quot;<br><br># Modify these as desired<br>#PV =3D &quot;1.0+git${S=
RCPV}&quot;<br>PV =3D &quot;0.1&quot;<br>SRCREV_default =3D &quot;${AUTOREV=
}&quot;<br>SRCREV_abc =3D &quot;${AUTOREV}&quot;<br>SRCREV_sequencer =3D &q=
uot;${AUTOREV}&quot;<br>SRCREV_MCP2210 =3D &quot;${AUTOREV}&quot;<br><br>DE=
PENDS +=3D &quot;systemd&quot;<br>RDEPENDS_${PN} +=3D &quot;systemd&quot;<b=
r><br>S =3D &quot;${WORKDIR}/abc&quot;<br><br># NOTE: this is a Makefile-on=
ly piece of software, so we cannot generate much of the<br># recipe automat=
ically - you will need to examine the Makefile yourself and ensure<br># tha=
t the appropriate arguments are passed in.<br></div><div><br></div><div>do_=
patch[noexec] =3D &quot;1&quot;<br><br>do_configure () {<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Specify any needed configure commands here<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :<br>}<br><br>do_compile () {<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # You will almost certainly ne=
ed to add additional arguments here<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 oe_runmake<br>}<br><br>do_install () {<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 # NOTE: unable to determine what to put here - there is =
a Makefile but no<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # target na=
med &quot;install&quot;, so you will need to define this yourself<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :<br>}<br><br></div><div><br></div><di=
v>Log data follows:<br>| DEBUG: Executing shell function do_compile<br>| NO=
TE: make -j 72<br>| cd MCP2210-Library; make CXXFLAGS=3D-fPIC CFLAGS=3D-fPI=
C all<br>| make[1]: Entering directory &#39;/build/multiplexor-glibc/work/c=
orei7-64-oe-linux/abc-app/0.1-r0/abc/MCP2210-Library&#39;<br>| for CONF in =
Debug Release ; \<br>| do \<br>|=C2=A0=C2=A0=C2=A0=C2=A0 &quot;make&quot; -=
f nbproject/Makefile-${CONF}.mk QMAKE=3D SUBPROJECTS=3D .build-conf; \<br>|=
 done<br>| make[2]: Entering directory &#39;/build/multiplexor-glibc/work/c=
orei7-64-oe-linux/abc-app/0.1-r0/abc/MCP2210-Library&#39;<br>| &quot;make&q=
uot;=C2=A0 -f nbproject/Makefile-Debug.mk dist/Debug/GNU-Linux-x86/hidusbte=
st<br>| make[3]: Entering directory &#39;/build/multiplexor-glibc/work/core=
i7-64-oe-linux/abc-app/0.1-r0/abc/MCP2210-Library&#39;<br>| mkdir -p build/=
Debug/GNU-Linux-x86<br>| rm -f build/Debug/GNU-Linux-x86/hid.o.d<br>| gcc -=
fPIC=C2=A0=C2=A0 -c -g -MMD -MP -MF build/Debug/GNU-Linux-x86/hid.o.d -o bu=
ild/Debug/GNU-Linux-x86/hid.o hid.c<br>| hid.c:44:21: fatal error: libudev.=
h: No such file or directory<br>| compilation terminated.<br><br><br></div>=
</div></div></div></div></div></div></div>

--000000000000d9e9dd058424f4ca--
