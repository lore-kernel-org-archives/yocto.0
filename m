Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 713CCE00851; Fri, 23 Mar 2018 11:47:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1D3BE00474
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 11:47:08 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id e79so16283283ioi.7
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 11:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=V0MVoaJriGB/VJp1YedSro/Ymj3xMdrXqoAi507E+ZM=;
	b=f6TTPee27kpa8jQNQSDhBwyGyqOakH3ZEyFo5YiOJkAdDmsLWlHliPZ7E/qMfHWd09
	d7yY76FVVSRjEN3rGWegnRyT6eqJ1M13BQAdvaGtmroxs/+nWGBz9b0h47unNzgwebXi
	4zjpH/kqr5zJ784umV+2fm1fMPqaxBdZExKsZO75CannGbLj2Y661gqzVaemZj/WL1qQ
	bIdQ3KxEp4f0dagVytWFIUeRL9vwNl+/5VSci7DdC3m8TJ6bzOwa6EMD1OLvBWggBDu6
	PvL0AhC52V2QfVCvcCZZ7gAVlUmfHTNG9FkVpDHVmfD02k4MVTjOPWiK2c6PSPujgGZJ
	eYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=V0MVoaJriGB/VJp1YedSro/Ymj3xMdrXqoAi507E+ZM=;
	b=eH4IgT3e170nk4Vs8AtXma/caOvQ7HmTCWos0J8HNoph1fDIoq4v1NYhKTpHbOT5i4
	h2bsKn25T4m7udxh5LE39bPDXUn6MscmwgHEndkjgYWSSluDM05zh9kxu8ZfW1v/IebA
	Sb09x4u+/9Zo/ENlTv7MhWHoDnvCvQ2bVrT7g4da03z+s+tRkxxnonoZ+rLgqC0exUkw
	2EhK2VARb+MGZI7FbjPz8t2FpKEn+VsYjvIu4JL8/Oqme+PfgfH5SxnimfZb7g6LWOr/
	Vf1t72aeqoWRsQ1qmj9lpbVBqGswM7ZUtFn24kluV2Facr1eIT/l3JmhGqlsg+U4YfoN
	aCXw==
X-Gm-Message-State: AElRT7HxN3Fz91tZJESW2HvpGHJz0KX8TgfB7tJx4pt8kdeBcUgkZUuM
	Aj80zdVCHrj898RFNU622YJBV0HwAA055dyxD6liRQ==
X-Google-Smtp-Source: AG47ELvxnLbgzVGHAdBgF/LvpCX1WmyAKW+tjGtY+qNJ5lnSOQCeb465EgqZgFkmYHRWl0+ChYEGmwDcy7x9mETptIs=
X-Received: by 10.107.145.214 with SMTP id t205mr29425884iod.62.1521830827672; 
	Fri, 23 Mar 2018 11:47:07 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 23 Mar 2018 18:46:56 +0000
Message-ID: <CAFzUWGk1kpvN-Ujnk8YwUKb4=jFAdv6bQqEBRLVnQ-6+4JA+gQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: No module named setuptools -- even with "inherit setuptools"?
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
X-List-Received-Date: Fri, 23 Mar 2018 18:47:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c055418e447ac056818d93f"

--94eb2c055418e447ac056818d93f
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm a bit perplexed. I don't know what I'm doing wrong here, but this is
the log data:

Log data follows:
| DEBUG: Executing shell function do_compile
| Traceback (most recent call last):
|   File "setup.py", line 2, in <module>
|     from setuptools import setup
| ImportError: No module named setuptools
| ERROR: python setup.py build execution failed.
| WARNING:
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/run.do_compile.3286:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/log.do_compile.3286)
ERROR: Task
(/local/d4/gstark/meta-l1calo/recipes-python/python-construct_2.9.39.bb:do_compile)
failed with exit code '1'

with the recipe looking like this... (below). Any ideas?

DESCRIPTION = "Python declarative parser for binary data"
HOMEPAGE = "http://construct.readthedocs.org/en/latest/"
SECTION = "devel/python"
LICENSE = "BSD-3-Clause"
LIC_FILES_CHKSUM = "file://LICENSE;md5=3fd0f2c25089e629957285e6bc402a20"

PYPI_PACKAGE = "construct"
inherit pypi setuptools

SRC_URI[md5sum] = "39407f91407138f687ea2ecf8d758a1f"
SRC_URI[sha256sum] =
"c23ef47fd5751d821e5c17d9b3b02d1f3c465e66b8a205b9c791c4abef747138"

DEPENDS = "python python-six"
RDEPENDS_${PN} += "python-lang python-shell python-six python-debugger"
-- 
Giordon Stark

--94eb2c055418e447ac056818d93f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m a bit perplexed. I don&#39;=
t know what I&#39;m doing wrong here, but this is the log data:</div><div><=
br></div><div><div><font face=3D"monospace">Log data follows:</font></div><=
div><font face=3D"monospace">| DEBUG: Executing shell function do_compile</=
font></div><div><font face=3D"monospace">| Traceback (most recent call last=
):</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0File &quot;setup=
.py&quot;, line 2, in &lt;module&gt;</font></div><div><font face=3D"monospa=
ce">|=C2=A0 =C2=A0 =C2=A0from setuptools import setup</font></div><div><fon=
t face=3D"monospace">| ImportError: No module named setuptools</font></div>=
<div><font face=3D"monospace">| ERROR: python setup.py build execution fail=
ed.</font></div><div><font face=3D"monospace">| WARNING: /local/d4/gstark/p=
oky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/run.d=
o_compile.3286:1 exit 1 from &#39;exit 1&#39;</font></div><div><font face=
=3D"monospace">| ERROR: Function failed: do_compile (log file is located at=
 /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2=
.9.39-r0/temp/log.do_compile.3286)</font></div><div><font face=3D"monospace=
">ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-python/python-construct=
_2.9.39.bb:do_compile) failed with exit code &#39;1&#39;</font></div></div>=
<div><br></div><div>with the recipe looking like this... (below). Any ideas=
?</div><div><br></div><div><div><font face=3D"monospace">DESCRIPTION =3D &q=
uot;Python declarative parser for binary data&quot;</font></div><div><font =
face=3D"monospace">HOMEPAGE =3D &quot;<a href=3D"http://construct.readthedo=
cs.org/en/latest/">http://construct.readthedocs.org/en/latest/</a>&quot;</f=
ont></div><div><font face=3D"monospace">SECTION =3D &quot;devel/python&quot=
;</font></div><div><font face=3D"monospace">LICENSE =3D &quot;BSD-3-Clause&=
quot;</font></div><div><font face=3D"monospace">LIC_FILES_CHKSUM =3D &quot;=
file://LICENSE;md5=3D3fd0f2c25089e629957285e6bc402a20&quot;</font></div><di=
v><font face=3D"monospace"><br></font></div><div><font face=3D"monospace">P=
YPI_PACKAGE =3D &quot;construct&quot;</font></div><div><font face=3D"monosp=
ace">inherit pypi setuptools</font></div></div><div><div><font face=3D"mono=
space"><br></font></div><div><font face=3D"monospace">SRC_URI[md5sum] =3D &=
quot;39407f91407138f687ea2ecf8d758a1f&quot;</font></div><div><font face=3D"=
monospace">SRC_URI[sha256sum] =3D &quot;c23ef47fd5751d821e5c17d9b3b02d1f3c4=
65e66b8a205b9c791c4abef747138&quot;</font></div><div><font face=3D"monospac=
e"><br></font></div><div><font face=3D"monospace">DEPENDS =3D &quot;python =
python-six&quot;</font></div><div><font face=3D"monospace">RDEPENDS_${PN} +=
=3D &quot;python-lang python-shell python-six python-debugger&quot;</font><=
/div></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--94eb2c055418e447ac056818d93f--
