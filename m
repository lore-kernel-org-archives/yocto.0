Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33C01C83F1A
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 18:16:46 +0000 (UTC)
Subject: Re: [yocto] Environmental variable present in do_compile() {}, bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: joseph.maniaci@seagate.com, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Jul 2025 11:16:40 -0700
References: <27507.1752773309289469706@lists.yoctoproject.org>
In-Reply-To: <27507.1752773309289469706@lists.yoctoproject.org>
Message-ID: <29250.1752776200152802991@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b3tImmNuIIbtEgsqZdQD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 18:16:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65679

--b3tImmNuIIbtEgsqZdQD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Okay, maybe one more question for the next poor soul that has the same-ish =
issue

Why does this work:

*** Prior to bitbake ***

export ABC=3D"AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"
export BB_ENV_PASSTHROUGH_ADDITIONS=3D"$BB_ENV_PASSTHROUGH_ADDITIONS ABC"

*** bitbake recipe ***
....
do_configure () {
export ABC=3D${ABC} && cmake_do_configure } <<<--- Obviously referencing an=
d seeing ${ABC}
....

CMAKE configures and compiles successfully

but this doesn't

*** bitbake recipe ***
....
do_configure () {
cmake_do_configure <<<--- =C2=A0${ABC} doesn't make it to cmake
}
....

*** cmakelists.txt ***

if ( NOT DEFINED ENV{ABC})
message (FATAL_ERROR "Undefined environmental variable: ABC \n " )
endif ()

*** bitbake output ***
....
| DEBUG: Executing shell function do_configure
....

*** cmake output ***
| CMake Error at CMakeLists.txt:12 (message):
| =C2=A0 Undefined environmental variable: ABC

Even doing something like the following makes it visible to CMAKE

SOME_VAR =3D "${ABC}"
do_configure () {
export ABC=3D${SOME_VAR} && cmake_do_configure
}

--b3tImmNuIIbtEgsqZdQD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Okay, maybe one more question for the next poor soul that has the same=
-ish issue</div>
<div>&nbsp;</div>
<div>Why does this work:</div>
<div>&nbsp;</div>
<div>*** Prior to bitbake ***</div>
<div>&nbsp;</div>
<div>export ABC=3D"AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"</div>
<div>export BB_ENV_PASSTHROUGH_ADDITIONS=3D"$BB_ENV_PASSTHROUGH_ADDITIONS A=
BC"</div>
<div>&nbsp;</div>
<div>*** bitbake recipe ***</div>
<div>....</div>
<div>do_configure () {<br />&nbsp; &nbsp; export ABC=3D${ABC} &amp;&amp; cm=
ake_do_configure } &lt;&lt;&lt;--- Obviously referencing and seeing ${ABC}<=
/div>
<div>....</div>
<div>&nbsp;</div>
<div>CMAKE configures and compiles successfully</div>
<div>&nbsp;</div>
<div>but this doesn't</div>
<div>&nbsp;</div>
<div>
<div>*** bitbake recipe ***</div>
<div>....</div>
</div>
<div>do_configure () {<br />&nbsp; &nbsp; cmake_do_configure &lt;&lt;&lt;--=
- &nbsp;${ABC} doesn't make it to cmake<br />}</div>
<div>....</div>
<div>&nbsp;</div>
<div>*** cmakelists.txt ***</div>
<div>&nbsp;</div>
<div>
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><span style=3D"color: #569cd6;">if</span><span style=3D"color: #cccccc=
;">( </span><span style=3D"color: #569cd6;">NOT</span><span style=3D"color:=
 #cccccc;"> </span><span style=3D"color: #569cd6;">DEFINED</span><span styl=
e=3D"color: #cccccc;"> ENV{ABC})</span></div>
<div><span style=3D"color: #569cd6;">&nbsp; &nbsp; message</span><span styl=
e=3D"color: #cccccc;">(FATAL_ERROR </span><span style=3D"color: #ce9178;">"=
Undefined environmental variable: ABC</span><span style=3D"color: #d7ba7d;"=
>\n</span><span style=3D"color: #ce9178;">"</span><span style=3D"color: #cc=
cccc;">)</span></div>
<div><span style=3D"color: #569cd6;">endif</span><span style=3D"color: #ccc=
ccc;">()</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #cccccc;">*** bitbake output ***</span></div>
<div><span style=3D"color: #cccccc;">....</span></div>
<div><span style=3D"color: #cccccc;">| DEBUG: Executing shell function do_c=
onfigure</span></div>
<div><span style=3D"color: #cccccc;">....</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #cccccc;"><span style=3D"color: #cccccc;">*** cm=
ake output ***</span></span></div>
<div><span style=3D"color: #cccccc;">| CMake Error at CMakeLists.txt:12 (me=
ssage):<br />| &nbsp; Undefined environmental variable: ABC</span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"color: #cccccc;">Even doing something like the followin=
g makes it visible to CMAKE</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #cccccc;">SOME_VAR =3D "${ABC}"<br />do_configur=
e () {<br />&nbsp; export ABC=3D${SOME_VAR} &amp;&amp; cmake_do_configure<b=
r />}</span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>
</div>

--b3tImmNuIIbtEgsqZdQD--

