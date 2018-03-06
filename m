Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA865E00971; Tue,  6 Mar 2018 11:49:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC27E00971
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 11:49:02 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id c11so310819ith.4
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 11:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7bQmxVBVjFPKAjwp69Wnw0E6Vj7KHumXXKRIbfwGnG0=;
	b=HELLcs4poIzkFMaQ829g8TYtMk/uMiRq52hOKFNagmob/IxdjyTF4Gbxv8iZ1v5AeB
	+QihmrYT1ZZyMtfGY/HJHMcu6kqW0lcETy5v+bA7Oih1oYgUEFsTaJLJZu2+VYsUY+BK
	ueNJH1cObjqTTSRNKP7+/rKc3jONCRTvvT8Os2hbb9tNN9Ji5dc29nOtzyxiHGF8ELcn
	+XnES5srRUlMWdyw2VTjR3zTc9Ma2sbx8Jo6JOmpeCAe/vui6kmHIKH0c4lnF/4EM2sS
	9JMSqrBuVteYomTpRRRW8SzqgTN6dJcLEmlm5D5iXLr+b6tItmdgTcIcxkcekCSB6/rp
	NDEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7bQmxVBVjFPKAjwp69Wnw0E6Vj7KHumXXKRIbfwGnG0=;
	b=VUuSrNPrk/yeLeEuBlc+Kw+eh79ElEQUGspa4Ldq4ZXH4dMumuZksdNCJXy4KYlp9a
	g0h5+FCbg9fTI0GyoSdLrUenNWNx9ql018SqNJHfT3Uz5XApseB9uheNr72DpyFH8JxS
	fxKi/n7NXzMEX8qOkT5WxhnTruD3EV9ZXkGbakA5C48kQ0oBAaIFuJNec0NOgGTnUTVC
	hFQMjQf5i2ohszBYYPwVp5kBOlBjLWA4nXqIYITT2p8wktk//Dra2gNruG8S3p3hM8R0
	nUPnn5Od/NrwINHfEFjA2PG0lQwN22P9foCyLfauRDoQTZe6/gPN09Gw+NroSifQPTUw
	opGQ==
X-Gm-Message-State: AElRT7GVr4NpllBLM8+QcY7666SrBIYCy+ifSqMZ7Ia2bKpFJNy5TysX
	hnalbnFt0Slw8IJUeVwimrVjF4PZ7JA++V7SJcXjqw==
X-Google-Smtp-Source: AG47ELulbnWDV3ExaPQsW3UVipPyeduGwQvPc1FKlbRKxcU+DDt+O4QxlMws+PvkhKC3Rw6t7wiJAStZc+MqqvhinIY=
X-Received: by 10.36.238.65 with SMTP id b62mr19531625iti.122.1520365741494;
	Tue, 06 Mar 2018 11:49:01 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
In-Reply-To: <987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 19:48:51 +0000
Message-ID: <CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 19:49:03 -0000
Content-Type: multipart/alternative; boundary="f403045c08d2f357c90566c3bbe2"

--f403045c08d2f357c90566c3bbe2
Content-Type: text/plain; charset="UTF-8"

Thanks! Sorry to ping again, but I've done something poorly wrong. I
converted this code which now works, to point at the tarball provided by
github instead:

SUMMARY = "OPC UA implementation"
HOMEPAGE = "https://open62541.org/"
SECTION = "devel/libs"
LICENSE = "MPL-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e879eaad64aab8e1f8e63e298f5cea28"
DEPENDS = "openssl python-six-native"

SRC_URI = "https://github.com/open62541/open62541/archive/v${PV}.tar.gz"
SRC_URI[md5sum] = "7c3fedab541e6df22de06c47cb4768fc"
SRC_URI[sha256sum] =
"2fc6eb2eca7d53db68206db7c9c7368f0a034992f050bee971e4823d3d739260"

S = "${WORKDIR}/${PN}-${PV}"

inherit cmake pythonnative

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE = "\
  -DCMAKE_BUILD_TYPE=Release \
"

FILES_${PN}_append = "\
  ${libdir}/cmake \
  ${libdir}/cmake/open62541*.cmake \
"

where PV=0.2 (open62541_0.2.bb). And I see an error on install (full log:
https://gist.github.com/kratsg/5c3740ab72403595d5b9e0e855a3697f)

| CMake Error at cmake_install.cmake:40 (file):
|   file INSTALL cannot find
|
 "/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.2-r0/build/open62541.h".

So I'm wondering if I screwed up something by using the tarball instead of
a clone. I thought I translated it relatively well, and the release matches
the hash I was using.

Giordon

On Tue, Mar 6, 2018 at 1:39 PM Philip Balister <philip@balister.org> wrote:

> On 03/06/2018 02:14 PM, Giordon Stark wrote:
> > Hi Philip,
> >
> > That was it indeed! I've gotten it working. I don't see
> "python-six-native"
> > as a valid recipe in layers.openembedded.org. Is this a special case or
> is
> > there a way to identify these sorts of packages in the future?
>
> The python-six recipe should have a line like:
>
> BBCLASSEXTEND = "native"
>
> This tells bitbake it can build a native version by doing some tweaks to
> the toolchain it uses and where to put the output.
>
> Philip
>
>
> >
> > open62541-0.3+git999-r0 do_compile: NOTE: open62541: compiling from
> > external source tree
> /local/d4/gstark/poky/build/workspace/sources/open62541
> > ERROR: open62541-0.3+git999-r0 do_package: QA Issue: open62541:
> > Files/directories were installed but not shipped in any package:
> >   /usr/lib/cmake
> >   /usr/lib/cmake/open62541ConfigVersion.cmake
> >   /usr/lib/cmake/open62541Targets.cmake
> >   /usr/lib/cmake/open62541-config.cmake
> >   /usr/lib/cmake/open62541Targets-debug.cmake
> > Please set FILES such that these items are packaged. Alternatively if
> they
> > are unneeded, avoid installing them or delete them within do_install.
> > open62541: 5 installed and not shipped files. [installed-vs-shipped]
> > ERROR: open62541-0.3+git999-r0 do_package: Fatal QA errors found, failing
> > task.
> > ERROR: open62541-0.3+git999-r0 do_package: Function failed: do_package
> > ERROR: Logfile of failure stored in:
> >
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/temp/log.do_package.14179
> > ERROR: Task
> >
> (/local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_git.bb:
> do_package)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 506 tasks of which 492 didn't need to be
> > rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /local/d4/gstark/poky/build/workspace/recipes/open62541/
> open62541_git.bb:
> > do_package
> > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> code.
> >
> >
> > I just need to remind myself of cleaning these files up :)
> >
> > Giordon
> >
> > On Tue, Mar 6, 2018 at 1:09 PM Philip Balister <philip@balister.org>
> wrote:
> >
> >> On 03/06/2018 01:42 PM, Burton, Ross wrote:
> >>> Add DEPENDS=python-six
> >>
> >> Maybe:
> >>
> >> DEPENDS = "python-six-native"
> >>
> >> Philip
> >>
> >>>
> >>> Ross
> >>>
> >>> On 6 March 2018 at 18:11, Giordon Stark <kratsg@gmail.com> wrote:
> >>>
> >>>> Hi all,
> >>>>
> >>>> I'm struggling with what should be a simple-ish recipe (I think). I'm
> >>>> writing a recipe implementation for
> >> https://github.com/open62541/open62541
> >>>>  (open62541). So I start with
> >>>>
> >>>> devtool add open62541 https://github.com/open62541/open62541.git
> >>>>
> >>>> then I edit this, so it currently looks like this for me:
> >>>>
> >>>> SUMMARY = "OPC UA implementation"
> >>>> LICENSE = "MPL-2.0"
> >>>> LIC_FILES_CHKSUM =
> "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
> >>>> SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
> >>>> PV = "0.3+git${SRCPV}"
> >>>> SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"
> >>>>
> >>>> S = "${WORKDIR}/git"
> >>>>
> >>>> # NOTE: unable to map the following CMake package dependencies: Check
> >>>> Sphinx ClangTools LATEX MbedTLS Valgrind
> >>>> DEPENDS = "openssl"
> >>>>
> >>>> inherit cmake pythonnative
> >>>>
> >>>> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
> >>>> EXTRA_OECMAKE = ""
> >>>>
> >>>> however, when I run devtool build open62541, I get  errors about "No
> >>>> module named six":
> >>>>
> >>>> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> >>>>
> >>
> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
> >>>> | Traceback (most recent call last):
> >>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >>>> tools/nodeset_compiler/nodeset_compiler.py", line 27, in <module>
> >>>> |     from nodeset import *
> >>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >>>> tools/nodeset_compiler/nodeset.py", line 30, in <module>
> >>>> |     from nodes import *
> >>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >>>> tools/nodeset_compiler/nodes.py", line 21, in <module>
> >>>> |     from datatypes import *
> >>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >>>> tools/nodeset_compiler/datatypes.py", line 29, in <module>
> >>>> |     import six
> >>>> | ImportError: No module named six
> >>>> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe
> for
> >>>> target 'src_generated/ua_namespace0.c' failed
> >>>> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
> >>>> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> >>>>
> >>
> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
> >>>> | CMakeFiles/Makefile2:108: recipe for target
> >> 'CMakeFiles/open62541-generator-namespace.dir/all'
> >>>> failed
> >>>> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all]
> Error
> >> 2
> >>>> | make[1]: *** Waiting for unfinished jobs....
> >>>>
> >>>> How do I get "python-six" added as part of pythonnative?
> >>>>
> >>>> Giordon
> >>>>
> >>>> --
> >>>> Giordon Stark
> >>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>
> >>>>
> >>>
> >>>
> >>>
> >>
>
-- 
Giordon Stark

--f403045c08d2f357c90566c3bbe2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks! Sorry to ping again, but I&#39;ve done something p=
oorly wrong. I converted this code which now works, to point at the tarball=
 provided by github instead:<div><br></div><div><div><font face=3D"monospac=
e">SUMMARY =3D &quot;OPC UA implementation&quot;</font></div><div><font fac=
e=3D"monospace">HOMEPAGE =3D &quot;<a href=3D"https://open62541.org/">https=
://open62541.org/</a>&quot;</font></div><div><font face=3D"monospace">SECTI=
ON =3D &quot;devel/libs&quot;</font></div><div><font face=3D"monospace">LIC=
ENSE =3D &quot;MPL-2.0&quot;</font></div><div><font face=3D"monospace">LIC_=
FILES_CHKSUM =3D &quot;file://LICENSE;md5=3De879eaad64aab8e1f8e63e298f5cea2=
8&quot;</font></div><div><font face=3D"monospace">DEPENDS =3D &quot;openssl=
 python-six-native&quot;</font></div><div><font face=3D"monospace"><br></fo=
nt></div><div><font face=3D"monospace">SRC_URI =3D &quot;<a href=3D"https:/=
/github.com/open62541/open62541/archive/v${PV}.tar.gz">https://github.com/o=
pen62541/open62541/archive/v${PV}.tar.gz</a>&quot;</font></div><div><font f=
ace=3D"monospace"><div>SRC_URI[md5sum] =3D &quot;7c3fedab541e6df22de06c47cb=
4768fc&quot;</div><div>SRC_URI[sha256sum] =3D &quot;2fc6eb2eca7d53db68206db=
7c9c7368f0a034992f050bee971e4823d3d739260&quot;</div><div><br></div></font>=
</div><div><font face=3D"monospace">S =3D &quot;${WORKDIR}/${PN}-${PV}&quot=
;</font></div><div><font face=3D"monospace"><br></font></div><div><font fac=
e=3D"monospace">inherit cmake pythonnative</font></div><div><font face=3D"m=
onospace"><br></font></div><div><div><font face=3D"monospace"><span style=
=3D"font-size:10.5625px"># Specify any options you want to pass to cmake us=
ing EXTRA_OECMAKE:</span></font></div><div><font face=3D"monospace"><span s=
tyle=3D"font-size:10.5625px">EXTRA_OECMAKE =3D &quot;\</span></font></div><=
div><font face=3D"monospace"><span style=3D"font-size:10.5625px">=C2=A0 -DC=
MAKE_BUILD_TYPE=3DRelease \</span></font></div><div><font face=3D"monospace=
"><span style=3D"font-size:10.5625px">&quot;</span></font></div></div><div>=
<br></div><div><font face=3D"monospace">FILES_${PN}_append =3D &quot;\</fon=
t></div><div><font face=3D"monospace">=C2=A0 ${libdir}/cmake \</font></div>=
<div><font face=3D"monospace">=C2=A0 ${libdir}/cmake/open62541*.cmake \</fo=
nt></div><div><font face=3D"monospace">&quot;</font></div></div><div><br></=
div><div>where PV=3D0.2 (<a href=3D"http://open62541_0.2.bb">open62541_0.2.=
bb</a>). And I see an error on install (full log:=C2=A0<a href=3D"https://g=
ist.github.com/kratsg/5c3740ab72403595d5b9e0e855a3697f">https://gist.github=
.com/kratsg/5c3740ab72403595d5b9e0e855a3697f</a>)</div><div><br></div><div>=
<div><span style=3D"font-family:monospace">| CMake Error at cmake_install.c=
make:40 (file):</span><br></div><div><font face=3D"monospace">|=C2=A0 =C2=
=A0file INSTALL cannot find</font></div><div><font face=3D"monospace">|=C2=
=A0 =C2=A0&quot;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/ope=
n62541/0.2-r0/build/open62541.h&quot;.</font></div><div><br></div></div><di=
v>So I&#39;m wondering if I screwed up something by using the tarball inste=
ad of a clone. I thought I translated it relatively well, and the release m=
atches the hash I was using.</div><div><br></div><div>Giordon</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at 1:39 P=
M Philip Balister &lt;<a href=3D"mailto:philip@balister.org">philip@baliste=
r.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 03/06/2018 =
02:14 PM, Giordon Stark wrote:<br>
&gt; Hi Philip,<br>
&gt;<br>
&gt; That was it indeed! I&#39;ve gotten it working. I don&#39;t see &quot;=
python-six-native&quot;<br>
&gt; as a valid recipe in <a href=3D"http://layers.openembedded.org" rel=3D=
"noreferrer" target=3D"_blank">layers.openembedded.org</a>. Is this a speci=
al case or is<br>
&gt; there a way to identify these sorts of packages in the future?<br>
<br>
The python-six recipe should have a line like:<br>
<br>
BBCLASSEXTEND =3D &quot;native&quot;<br>
<br>
This tells bitbake it can build a native version by doing some tweaks to<br=
>
the toolchain it uses and where to put the output.<br>
<br>
Philip<br>
<br>
<br>
&gt;<br>
&gt; open62541-0.3+git999-r0 do_compile: NOTE: open62541: compiling from<br=
>
&gt; external source tree /local/d4/gstark/poky/build/workspace/sources/ope=
n62541<br>
&gt; ERROR: open62541-0.3+git999-r0 do_package: QA Issue: open62541:<br>
&gt; Files/directories were installed but not shipped in any package:<br>
&gt;=C2=A0 =C2=A0/usr/lib/cmake<br>
&gt;=C2=A0 =C2=A0/usr/lib/cmake/open62541ConfigVersion.cmake<br>
&gt;=C2=A0 =C2=A0/usr/lib/cmake/open62541Targets.cmake<br>
&gt;=C2=A0 =C2=A0/usr/lib/cmake/open62541-config.cmake<br>
&gt;=C2=A0 =C2=A0/usr/lib/cmake/open62541Targets-debug.cmake<br>
&gt; Please set FILES such that these items are packaged. Alternatively if =
they<br>
&gt; are unneeded, avoid installing them or delete them within do_install.<=
br>
&gt; open62541: 5 installed and not shipped files. [installed-vs-shipped]<b=
r>
&gt; ERROR: open62541-0.3+git999-r0 do_package: Fatal QA errors found, fail=
ing<br>
&gt; task.<br>
&gt; ERROR: open62541-0.3+git999-r0 do_package: Function failed: do_package=
<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+=
git999-r0/temp/log.do_package.14179<br>
&gt; ERROR: Task<br>
&gt; (/local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_git=
.bb:do_package)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 506 tasks of which 492 didn&#39;t need =
to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/local/d4/gstark/poky/build/workspace/recipes/open62541/<a=
 href=3D"http://open62541_git.bb" rel=3D"noreferrer" target=3D"_blank">open=
62541_git.bb</a>:<br>
&gt; do_package<br>
&gt; Summary: There were 3 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt;<br>
&gt; I just need to remind myself of cleaning these files up :)<br>
&gt;<br>
&gt; Giordon<br>
&gt;<br>
&gt; On Tue, Mar 6, 2018 at 1:09 PM Philip Balister &lt;<a href=3D"mailto:p=
hilip@balister.org" target=3D"_blank">philip@balister.org</a>&gt; wrote:<br=
>
&gt;<br>
&gt;&gt; On 03/06/2018 01:42 PM, Burton, Ross wrote:<br>
&gt;&gt;&gt; Add DEPENDS=3Dpython-six<br>
&gt;&gt;<br>
&gt;&gt; Maybe:<br>
&gt;&gt;<br>
&gt;&gt; DEPENDS =3D &quot;python-six-native&quot;<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ross<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 6 March 2018 at 18:11, Giordon Stark &lt;<a href=3D"mailto:=
kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I&#39;m struggling with what should be a simple-ish recipe=
 (I think). I&#39;m<br>
&gt;&gt;&gt;&gt; writing a recipe implementation for<br>
&gt;&gt; <a href=3D"https://github.com/open62541/open62541" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/open62541/open62541</a><br>
&gt;&gt;&gt;&gt;=C2=A0 (open62541). So I start with<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; devtool add open62541 <a href=3D"https://github.com/open62=
541/open62541.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
open62541/open62541.git</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; then I edit this, so it currently looks like this for me:<=
br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; SUMMARY =3D &quot;OPC UA implementation&quot;<br>
&gt;&gt;&gt;&gt; LICENSE =3D &quot;MPL-2.0&quot;<br>
&gt;&gt;&gt;&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D815ca599c9=
df247a0c7f619bab123dad&quot;<br>
&gt;&gt;&gt;&gt; SRC_URI =3D &quot;gitsm://<a href=3D"http://github.com/ope=
n62541/open62541.git;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank"=
>github.com/open62541/open62541.git;protocol=3Dhttps</a>&quot;<br>
&gt;&gt;&gt;&gt; PV =3D &quot;0.3+git${SRCPV}&quot;<br>
&gt;&gt;&gt;&gt; SRCREV =3D &quot;a6b99dc0579a53207b7dfe1d16423c2c1daa467e&=
quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; # NOTE: unable to map the following CMake package dependen=
cies: Check<br>
&gt;&gt;&gt;&gt; Sphinx ClangTools LATEX MbedTLS Valgrind<br>
&gt;&gt;&gt;&gt; DEPENDS =3D &quot;openssl&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; inherit cmake pythonnative<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; # Specify any options you want to pass to cmake using EXTR=
A_OECMAKE:<br>
&gt;&gt;&gt;&gt; EXTRA_OECMAKE =3D &quot;&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; however, when I run devtool build open62541, I get=C2=A0 e=
rrors about &quot;No<br>
&gt;&gt;&gt;&gt; module named six&quot;:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/bu=
ild/<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+=
git999&#39;<br>
&gt;&gt;&gt;&gt; | Traceback (most recent call last):<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/works=
pace/sources/open62541/<br>
&gt;&gt;&gt;&gt; tools/nodeset_compiler/nodeset_compiler.py&quot;, line 27,=
 in &lt;module&gt;<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from nodeset import *<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/works=
pace/sources/open62541/<br>
&gt;&gt;&gt;&gt; tools/nodeset_compiler/nodeset.py&quot;, line 30, in &lt;m=
odule&gt;<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from nodes import *<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/works=
pace/sources/open62541/<br>
&gt;&gt;&gt;&gt; tools/nodeset_compiler/nodes.py&quot;, line 21, in &lt;mod=
ule&gt;<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from datatypes import *<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/works=
pace/sources/open62541/<br>
&gt;&gt;&gt;&gt; tools/nodeset_compiler/datatypes.py&quot;, line 29, in &lt=
;module&gt;<br>
&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0import six<br>
&gt;&gt;&gt;&gt; | ImportError: No module named six<br>
&gt;&gt;&gt;&gt; | CMakeFiles/open62541-generator-namespace.dir/build.make:=
71: recipe for<br>
&gt;&gt;&gt;&gt; target &#39;src_generated/ua_namespace0.c&#39; failed<br>
&gt;&gt;&gt;&gt; | make[2]: *** [src_generated/ua_namespace0.c] Error 1<br>
&gt;&gt;&gt;&gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/bu=
ild/<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+=
git999&#39;<br>
&gt;&gt;&gt;&gt; | CMakeFiles/Makefile2:108: recipe for target<br>
&gt;&gt; &#39;CMakeFiles/open62541-generator-namespace.dir/all&#39;<br>
&gt;&gt;&gt;&gt; failed<br>
&gt;&gt;&gt;&gt; | make[1]: *** [CMakeFiles/open62541-generator-namespace.d=
ir/all] Error<br>
&gt;&gt; 2<br>
&gt;&gt;&gt;&gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; How do I get &quot;python-six&quot; added as part of pytho=
nnative?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Giordon<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; Giordon Stark<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinf=
o/yocto</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--f403045c08d2f357c90566c3bbe2--
