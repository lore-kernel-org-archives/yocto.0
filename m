Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 360C9E00CED; Thu, 17 Jan 2019 23:13:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B397E00CE6
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 23:13:30 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id h50so10351082ede.5
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 23:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Z3j7/BgQ7Lf+qiuZch4sN34Y+QvJm0HTUEvISDHt8c0=;
	b=TZotvKg3kRbMskiozL8iu9KmmxchvPzvoyquApXokeSMJiDXzrw4ZZo6kOFtHeUROu
	r9rTd1VGu3JVL5zjcLtXOQfuAJSJWXUksbyemO4ygIqnkfoMSqYI+UgIG5ECn1setuY/
	BThvWOkb055mh2eZ3+5JGIYhJ7iAycQuEx3CxeOe9BN/uo+MW2Aem7H7aAcu9jEV4x0z
	61Zhf7GRyIIo4Ap1PeLPgWKOzxLDKrSv9E0hb4GQlzIFVVzJnUg7wQsB1MtIVwstdg6b
	P22Kde6z8gDLOzmO6HlqBDan30Gzl6P9K9pI4QdP3Pn0OLWH0+PGPYqcjDdHE47c8KpN
	8CCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Z3j7/BgQ7Lf+qiuZch4sN34Y+QvJm0HTUEvISDHt8c0=;
	b=NPA9dbOnfKnbdXbybUfaMdeHisjS3T7yPGBc4BVZu3ggoVJgvM5QS+cPCtP8YBf2yP
	l1Bn1ujB2bSKed0qhuIeVU0xRSCdo3OcPtnSbmY/2sdYnDv6P+4mVuoIJAUF/MBzu6aP
	JZGRIECXYS7fXrwO+iJCYrxPqeLKSTVCQkhBAYFrKRfRJ84IwuGyncF00jmtI2bO0Csu
	XvRKt6QDRSslTvI1ZFdJ+H6CJC0se/nb+KqfGxTY2Ropzrm/nTF8dSAYT3AM7cHKjfBU
	ayazmpLBpl4ylCZ0CBhy/e4brNzCrwTPDbRcK6SvIhKTx6qxylH3tkyocubplXdo7/Ia
	ggmA==
X-Gm-Message-State: AJcUukc63OEkGoEXcBQaYKLxb40TXzJ7tPr3YZSBJioltZPYTc1EVXJX
	Y0O0BaqAWR5jjMub15/awnUSEcAnzAlJ7p5dEIRbvh5V
X-Google-Smtp-Source: ALg8bN4hPA0bUfIXKlbHYgJick5arFGdM7EndRJ/ZjhKJJP+2Dj/fQT2e7SuQAL3mJu/tFxvBS5tzvSvjaikVwGrqQc=
X-Received: by 2002:a17:906:9613:: with SMTP id
	s19-v6mr13517534ejx.109.1547795608935; 
	Thu, 17 Jan 2019 23:13:28 -0800 (PST)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Fri, 18 Jan 2019 08:13:18 +0100
Message-ID: <CAKpuFddip32aw396yKEtjkU4DL5g217cQBOjY-MWHdbx5BSomQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Add custom license to layer
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
X-List-Received-Date: Fri, 18 Jan 2019 07:13:31 -0000
Content-Type: multipart/alternative; boundary="00000000000074a18c057fb63f2a"

--00000000000074a18c057fb63f2a
Content-Type: text/plain; charset="UTF-8"

Hi,

I have an recipe created from npm with devtool, when i build it generates
the warning:

do_rootfs: The license listed Unlicense was not in the licenses collected
for recipe my-recipe

I have tried to include the license in my layer with "LICENSE_PATH", with
no success.
"Unlicense" is listed in https://spdx.org/licenses/ so maybe it should be
in meta, but that is another discussion.

My setup is following
_____________________________________________________________________________________
Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-xx"
MACHINE              = "xxx"
DISTRO               = "xxxx"
DISTRO_VERSION       = "2.5.1.0"
TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU           = "hard"
meta                 = "sumo:78020fb6395c73d9ea0ce8e3ad8767d6e55021ee"
meta-oe
meta-python
meta-networking
meta-filesystems     = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-yocto-bsp       = "sumo:78020fb6395c73d9ea0ce8e3ad8767d6e55021ee"


My layer configuration is as following
_____________________________________________________________________________________
meta-my-layer/conf/layer.conf

# Additional license directories.
LICENSE_PATH += "${LAYERDIR}/custom-licenses"

#Need this???
#SPDXLICENSEMAP[Unlicense-X] = "Unlicense"

_____________________________________________________________________________________
meta-my-layer/custom-licenses/Unlicense

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>

_____________________________________________________________________________________
meta-my-layer/recipes-my-recipe/my-recpie/my-recipe_2.0.0.bb

LICENSE = "BSD-3-Clause & Unlicense & Apache-2.0 & \
BSD-2-Clause & ISC & MIT"


LICENSE_${PN}-package = "Unlicense"
_____________________________________________________________________________________

Best regards
Jonas

--00000000000074a18c057fb63f2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have =
an recipe created from npm with devtool, when i build it generates the warn=
ing:</div><div><br></div><div>do_rootfs: The license listed Unlicense was n=
ot in the licenses collected for recipe my-recipe</div><div><br></div><div>=
I have tried to include the license in my layer with &quot;LICENSE_PATH&quo=
t;, with no success.</div><div>&quot;Unlicense&quot; is listed in <a href=
=3D"https://spdx.org/licenses/">https://spdx.org/licenses/</a> so maybe it =
should be in meta, but that is another discussion.</div><div><br></div><div=
>My setup is following</div><div>__________________________________________=
___________________________________________</div><div>Build Configuration:<=
/div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.38=
.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &=
quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;arm-xx&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;xxx&quot;</div><div>DISTRO=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;xxxx&quot;</div><div>DISTRO=
_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5.1.0&quot;</div><div>TUNE_F=
EATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp neon callconven=
tion-hard cortexa9&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;hard&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:78020fb6395c73d9ea0ce8e3a=
d8767d6e55021ee&quot;</div><div>meta-oe</div><div>meta-python</div><div>met=
a-networking</div><div>meta-filesystems=C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:8=
760facba1bceb299b3613b8955621ddaa3d4c3f&quot;</div><div>meta-yocto-bsp=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:78020fb6395c73d9ea0ce8e3ad8767d6e550=
21ee&quot;</div><div><br></div><div><br></div><div>My layer configuration i=
s as following</div><div>__________________________________________________=
___________________________________</div><div>meta-my-layer/conf/layer.conf=
</div><div><br></div><div># Additional license directories.</div><div>LICEN=
SE_PATH +=3D &quot;${LAYERDIR}/custom-licenses&quot;</div><div><br></div><d=
iv>#Need this???</div><div>#SPDXLICENSEMAP[Unlicense-X] =3D &quot;Unlicense=
&quot;</div><div><br></div><div>___________________________________________=
__________________________________________</div><div>meta-my-layer/custom-l=
icenses/Unlicense</div><div><br></div><div>This is free and unencumbered so=
ftware released into the public domain.</div><div><br></div><div>Anyone is =
free to copy, modify, publish, use, compile, sell, or</div><div>distribute =
this software, either in source code form or as a compiled</div><div>binary=
, for any purpose, commercial or non-commercial, and by any</div><div>means=
.</div><div><br></div><div>In jurisdictions that recognize copyright laws, =
the author or authors</div><div>of this software dedicate any and all copyr=
ight interest in the</div><div>software to the public domain. We make this =
dedication for the benefit</div><div>of the public at large and to the detr=
iment of our heirs and</div><div>successors. We intend this dedication to b=
e an overt act of</div><div>relinquishment in perpetuity of all present and=
 future rights to this</div><div>software under copyright law.</div><div><b=
r></div><div>THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY O=
F ANY KIND,</div><div>EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE =
WARRANTIES OF</div><div>MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE A=
ND NONINFRINGEMENT.</div><div>IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR A=
NY CLAIM, DAMAGES OR</div><div>OTHER LIABILITY, WHETHER IN AN ACTION OF CON=
TRACT, TORT OR OTHERWISE,</div><div>ARISING FROM, OUT OF OR IN CONNECTION W=
ITH THE SOFTWARE OR THE USE OR</div><div>OTHER DEALINGS IN THE SOFTWARE.</d=
iv><div><br></div><div>For more information, please refer to &lt;<a href=3D=
"http://unlicense.org/">http://unlicense.org/</a>&gt;</div><div><br></div><=
div>_______________________________________________________________________=
______________</div><div>meta-my-layer/recipes-my-recipe/my-recpie/<a href=
=3D"http://my-recipe_2.0.0.bb">my-recipe_2.0.0.bb</a></div><div><br></div><=
div>LICENSE =3D &quot;BSD-3-Clause &amp; Unlicense &amp; Apache-2.0 &amp; \=
</div><div>BSD-2-Clause &amp; ISC &amp; MIT&quot;</div><div><br></div><div>=
<br></div><div>LICENSE_${PN}-package =3D &quot;Unlicense&quot;</div><div>__=
___________________________________________________________________________=
________</div><div><br></div><div>Best regards</div><div>Jonas</div><div><b=
r></div></div></div>

--00000000000074a18c057fb63f2a--
