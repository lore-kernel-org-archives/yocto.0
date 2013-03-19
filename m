Return-Path: <sudhangathan@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 347ECE01472
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:11:37 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id k14so5290892wer.39
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=5DZXhKtt0Z8c8nwaS/pZs3WmFiLOKzCjwgZfH9FU4Wo=;
	b=h9DupHb9Wphh7kJ29vAnyF1m9fMdDMrCrD6y29y2ORt9xmZlEqG5T+ekkZWSChbLjL
	FO3YYWUfIECIrzDPKteCsUfq3h63+4uxch5sOmcvCe+qCrlQmShL5Vr42Jm6n0gt/bCN
	zv2UgyofXsoPjmiyr8PtiwRIURvNVTGzg8RmyheaNd36YiGDCi37eoxd98dLCSKLMbXS
	rHVLPHAdby5APJDgbTEaSM7LIrmL49FfJi4mvg2j1/chBOamkIV421bgJCTUhkqnbxly
	PelNl8OPRorwt/Te+LuJEoga2OCwKrP+Z7qBF18d07wM7uuTB1LdZCW8tYraAdgVY35S
	EdNA==
X-Received: by 10.194.11.70 with SMTP id o6mr189715wjb.29.1363659096797; Mon,
	18 Mar 2013 19:11:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.242.10 with HTTP; Mon, 18 Mar 2013 19:11:16 -0700 (PDT)
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Tue, 19 Mar 2013 07:41:16 +0530
Message-ID: <CAGX3a9-_cLyZWY=L1=yB3_aDYMPgP4hvcHP3LZ7v1PYrXom-kw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: bitbaking error with hello world recipe
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
X-List-Received-Date: Tue, 19 Mar 2013 02:11:38 -0000
Content-Type: multipart/alternative; boundary=047d7b5d456c0f390604d83da01c

--047d7b5d456c0f390604d83da01c
Content-Type: text/plain; charset=ISO-8859-1

Hello, I'm new to oe and yocto project..

I simply created my own meta-dese layer, added it in layers.conf

*This is the structure of meta-dese folder:*
*
*
suan@edcn400:~/pokybuilds$ ls -R /home/suan/poky/meta-dese/
/home/suan/poky/meta-dese/:
conf  recipes-dese

/home/suan/poky/meta-dese/conf:
layer.conf

/home/suan/poky/meta-dese/recipes-dese:
files  hello-1.0.bb

/home/suan/poky/meta-dese/recipes-dese/files:
hello.c
suan@edcn400:~/pokybuilds$


*I have quoted the output here:*
*
*
suan@edcn400:~/pokybuilds$ bitbake core-image-minimal
Loading cache: 100%
|###################################################################################################################################|
ETA:  00:00:00
Loaded 1118 entries from dependency cache.
WARNING: No bb files matched BBFILE_PATTERN_dese
'^/home/suan/poky/meta-dese/'

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130319"
TUNE_FEATURES     = "armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp
meta-dese         = "master:164a4cb2fc64e76836182ad2d412343a7b26b964"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'hello' (but
/home/suan/poky/meta/recipes-core/images/core-image-minimal.bb RDEPENDS on
or otherwise requires it)
NOTE: Runtime target 'hello' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['hello']
ERROR: Required build target 'core-image-minimal' has no buildable
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal', 'hello']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
suan@edcn400:~/pokybuilds$

How can I proceed from here..??
---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------

--047d7b5d456c0f390604d83da01c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, I&#39;m new to oe and yocto project..<div><br></div=
><div>I simply created my own meta-dese layer, added it in layers.conf</div=
><div><br></div><div style><b>This is the structure of meta-dese folder:</b=
></div>

<div style><b><br></b></div><div style><div>suan@edcn400:~/pokybuilds$ ls -=
R /home/suan/poky/meta-dese/</div><div>/home/suan/poky/meta-dese/:</div><di=
v>conf =A0recipes-dese</div><div><br></div><div>/home/suan/poky/meta-dese/c=
onf:</div>

<div>layer.conf</div><div><br></div><div>/home/suan/poky/meta-dese/recipes-=
dese:</div><div>files =A0<a href=3D"http://hello-1.0.bb">hello-1.0.bb</a></=
div><div><br></div><div>/home/suan/poky/meta-dese/recipes-dese/files:</div>

<div>hello.c</div><div>suan@edcn400:~/pokybuilds$=A0</div><div><br></div></=
div><div><br></div><div style><b>I have quoted the output here:</b></div><d=
iv style><b><br></b></div><div style><div>suan@edcn400:~/pokybuilds$ bitbak=
e core-image-minimal</div>

<div>Loading cache: 100% |#################################################=
###########################################################################=
#######| ETA: =A000:00:00</div><div>Loaded 1118 entries from dependency cac=
he.</div>

<div>WARNING: No bb files matched BBFILE_PATTERN_dese &#39;^/home/suan/poky=
/meta-dese/&#39;</div><div><br></div><div>Build Configuration:</div><div>BB=
_VERSION =A0 =A0 =A0 =A0=3D &quot;1.17.1&quot;</div><div>BUILD_SYS =A0 =A0 =
=A0 =A0 =3D &quot;i686-linux&quot;</div>

<div>NATIVELSBSTRING =A0 =3D &quot;Ubuntu-12.04&quot;</div><div>TARGET_SYS =
=A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =A0=
 =A0 =A0 =A0 =A0 =3D &quot;qemuarm&quot;</div><div>DISTRO =A0 =A0 =A0 =A0 =
=A0 =A0=3D &quot;poky&quot;</div><div>

DISTRO_VERSION =A0 =A0=3D &quot;1.3+snapshot-20130319&quot;</div><div>TUNE_=
FEATURES =A0 =A0 =3D &quot;armv5 thumb dsp&quot;</div><div>TARGET_FPU =A0 =
=A0 =A0 =A0=3D &quot;soft&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0<=
/div><div>meta-yocto =A0 =A0 =A0 =A0</div>

<div>meta-yocto-bsp =A0 =A0</div><div>meta-dese =A0 =A0 =A0 =A0 =3D &quot;m=
aster:164a4cb2fc64e76836182ad2d412343a7b26b964&quot;</div><div><br></div><d=
iv>NOTE: Resolving any missing task queue dependencies</div><div>ERROR: Not=
hing RPROVIDES &#39;hello&#39; (but /home/suan/poky/meta/recipes-core/image=
s/<a href=3D"http://core-image-minimal.bb">core-image-minimal.bb</a> RDEPEN=
DS on or otherwise requires it)</div>

<div>NOTE: Runtime target &#39;hello&#39; is unbuildable, removing...</div>=
<div>Missing or unbuildable dependency chain was: [&#39;hello&#39;]</div><d=
iv>ERROR: Required build target &#39;core-image-minimal&#39; has no buildab=
le providers.</div>

<div>Missing or unbuildable dependency chain was: [&#39;core-image-minimal&=
#39;, &#39;hello&#39;]</div><div><br></div><div>Summary: There was 1 WARNIN=
G message shown.</div><div>Summary: There were 2 ERROR messages shown, retu=
rning a non-zero exit code.</div>

<div>suan@edcn400:~/pokybuilds$</div><div><br></div><div style>How can I pr=
oceed from here..??</div></div><div><div>---------------------------------<=
br>Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>----------------------------=
-----</div>


</div></div>

--047d7b5d456c0f390604d83da01c--
