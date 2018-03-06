Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05375E00E02; Tue,  6 Mar 2018 11:14:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
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
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90CD5E00843
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 11:14:13 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id c11so182747ith.4
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 11:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jTeaRZttUeGsFk9ZYqYSrleROv/Fw8u/m5CPZb2H1VA=;
	b=QkX+R/QomG+8QXbtHidOM8BcROlM69b1/7itHuJojEeiINU28qmAEWfuJXjAuQ1Faa
	HLEK+CF3hM2CIRH/UxD3cot5JSrcUH8l8eLwHOXf3rC0Cu+LacYb3AU7UHQw0XvD1N+1
	+JEW7gR6TIXpBxAN+jR/yUnxLPPIRdkUc0OG50OctzlW97iMIIcRU8P12YvcLgW4jvDt
	Qb6ANep53MTI/z1Jb6IucqzEiJdVWBiPpjRLBx+z+OUzq6gFzIgpf7b0HbWESXlsrvp1
	0+b+PaRdLHFVmA/Wqy+QCeZpxvoacX7pwoXW6XmfD3jWZOeaQks926hUSbW3AuVaPv+K
	QzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jTeaRZttUeGsFk9ZYqYSrleROv/Fw8u/m5CPZb2H1VA=;
	b=XElS/QTd6XL2SNAZV3UopOdUsB/SIrtRpIFmKtZcuDnVubbAUrpDobC+n+IyCfccfM
	Itk1r+PWzTyIgiOKLND/cdpBSU1k3xFG/v7Z3G+Cn5M1sq0vK80deum6O6WnXEE0H0Dh
	rq6FJ6lkvXckrrzR0Kuuk8493M+BY8wqRE36OGe/lEI2qq8bC1MjJKXUQTQKcQ+yJfWl
	aw9mrZyv4nzAUCyJ4b66SuiekGeVeuy7xBb0r+zdoItDMNamoHV/Y4nE76w5xI3qRLyR
	0pj18KtqUPMEIWAaP+juzfEbXklvmYdGs4TjR5X9bBr9otiMp3MV7gPays+0r1PuvUSE
	dQtA==
X-Gm-Message-State: AElRT7FeMnw/qugCc7F8dOO7HQU2kkB0r1EBYiJ6zFupv6zH6A6F1Aq5
	gEpm3vcq0GZfqboeshJzIw/Jwbd9e/d3eCPR/58=
X-Google-Smtp-Source: AG47ELv7zyDgUdZhmFNEuegZiMb+G/6UhVA68z+OuNCRv8T9WGU3Eyhqqub7A0JHeshfyVGFtvDkwyegDioHu7Oc8PY=
X-Received: by 10.36.93.206 with SMTP id w197mr20693157ita.144.1520363652613; 
	Tue, 06 Mar 2018 11:14:12 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
In-Reply-To: <2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 19:14:00 +0000
Message-ID: <CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 06 Mar 2018 19:14:15 -0000
Content-Type: multipart/alternative; boundary="001a1143ac2e718a7b0566c33f38"

--001a1143ac2e718a7b0566c33f38
Content-Type: text/plain; charset="UTF-8"

Hi Philip,

That was it indeed! I've gotten it working. I don't see "python-six-native"
as a valid recipe in layers.openembedded.org. Is this a special case or is
there a way to identify these sorts of packages in the future?

open62541-0.3+git999-r0 do_compile: NOTE: open62541: compiling from
external source tree /local/d4/gstark/poky/build/workspace/sources/open62541
ERROR: open62541-0.3+git999-r0 do_package: QA Issue: open62541:
Files/directories were installed but not shipped in any package:
  /usr/lib/cmake
  /usr/lib/cmake/open62541ConfigVersion.cmake
  /usr/lib/cmake/open62541Targets.cmake
  /usr/lib/cmake/open62541-config.cmake
  /usr/lib/cmake/open62541Targets-debug.cmake
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
open62541: 5 installed and not shipped files. [installed-vs-shipped]
ERROR: open62541-0.3+git999-r0 do_package: Fatal QA errors found, failing
task.
ERROR: open62541-0.3+git999-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in:
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/temp/log.do_package.14179
ERROR: Task
(/local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_git.bb:do_package)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 506 tasks of which 492 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_git.bb:
do_package
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.


I just need to remind myself of cleaning these files up :)

Giordon

On Tue, Mar 6, 2018 at 1:09 PM Philip Balister <philip@balister.org> wrote:

> On 03/06/2018 01:42 PM, Burton, Ross wrote:
> > Add DEPENDS=python-six
>
> Maybe:
>
> DEPENDS = "python-six-native"
>
> Philip
>
> >
> > Ross
> >
> > On 6 March 2018 at 18:11, Giordon Stark <kratsg@gmail.com> wrote:
> >
> >> Hi all,
> >>
> >> I'm struggling with what should be a simple-ish recipe (I think). I'm
> >> writing a recipe implementation for
> https://github.com/open62541/open62541
> >>  (open62541). So I start with
> >>
> >> devtool add open62541 https://github.com/open62541/open62541.git
> >>
> >> then I edit this, so it currently looks like this for me:
> >>
> >> SUMMARY = "OPC UA implementation"
> >> LICENSE = "MPL-2.0"
> >> LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
> >> SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
> >> PV = "0.3+git${SRCPV}"
> >> SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"
> >>
> >> S = "${WORKDIR}/git"
> >>
> >> # NOTE: unable to map the following CMake package dependencies: Check
> >> Sphinx ClangTools LATEX MbedTLS Valgrind
> >> DEPENDS = "openssl"
> >>
> >> inherit cmake pythonnative
> >>
> >> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
> >> EXTRA_OECMAKE = ""
> >>
> >> however, when I run devtool build open62541, I get  errors about "No
> >> module named six":
> >>
> >> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> >>
> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
> >> | Traceback (most recent call last):
> >> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >> tools/nodeset_compiler/nodeset_compiler.py", line 27, in <module>
> >> |     from nodeset import *
> >> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >> tools/nodeset_compiler/nodeset.py", line 30, in <module>
> >> |     from nodes import *
> >> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >> tools/nodeset_compiler/nodes.py", line 21, in <module>
> >> |     from datatypes import *
> >> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> >> tools/nodeset_compiler/datatypes.py", line 29, in <module>
> >> |     import six
> >> | ImportError: No module named six
> >> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe for
> >> target 'src_generated/ua_namespace0.c' failed
> >> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
> >> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> >>
> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
> >> | CMakeFiles/Makefile2:108: recipe for target
> 'CMakeFiles/open62541-generator-namespace.dir/all'
> >> failed
> >> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] Error
> 2
> >> | make[1]: *** Waiting for unfinished jobs....
> >>
> >> How do I get "python-six" added as part of pythonnative?
> >>
> >> Giordon
> >>
> >> --
> >> Giordon Stark
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >
> >
> >
>
-- 
Giordon Stark

--001a1143ac2e718a7b0566c33f38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Philip,<div><br></div><div>That was it indeed! I&#39;ve=
 gotten it working. I don&#39;t see &quot;python-six-native&quot; as a vali=
d recipe in <a href=3D"http://layers.openembedded.org">layers.openembedded.=
org</a>. Is this a special case or is there a way to identify these sorts o=
f packages in the future?</div><div><br><div><font face=3D"monospace">open6=
2541-0.3+git999-r0 do_compile: NOTE: open62541: compiling from external sou=
rce tree /local/d4/gstark/poky/build/workspace/sources/open62541</font></di=
v><div><font face=3D"monospace">ERROR: open62541-0.3+git999-r0 do_package: =
QA Issue: open62541: Files/directories were installed but not shipped in an=
y package:</font></div><div><font face=3D"monospace">=C2=A0 /usr/lib/cmake<=
/font></div><div><font face=3D"monospace">=C2=A0 /usr/lib/cmake/open62541Co=
nfigVersion.cmake</font></div><div><font face=3D"monospace">=C2=A0 /usr/lib=
/cmake/open62541Targets.cmake</font></div><div><font face=3D"monospace">=C2=
=A0 /usr/lib/cmake/open62541-config.cmake</font></div><div><font face=3D"mo=
nospace">=C2=A0 /usr/lib/cmake/open62541Targets-debug.cmake</font></div><di=
v><font face=3D"monospace">Please set FILES such that these items are packa=
ged. Alternatively if they are unneeded, avoid installing them or delete th=
em within do_install.</font></div><div><font face=3D"monospace">open62541: =
5 installed and not shipped files. [installed-vs-shipped]</font></div><div>=
<font face=3D"monospace">ERROR: open62541-0.3+git999-r0 do_package: Fatal Q=
A errors found, failing task.</font></div><div><font face=3D"monospace">ERR=
OR: open62541-0.3+git999-r0 do_package: Function failed: do_package</font><=
/div><div><font face=3D"monospace">ERROR: Logfile of failure stored in: /lo=
cal/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r=
0/temp/log.do_package.14179</font></div><div><font face=3D"monospace">ERROR=
: Task (/local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_g=
it.bb:do_package) failed with exit code &#39;1&#39;</font></div><div><font =
face=3D"monospace">NOTE: Tasks Summary: Attempted 506 tasks of which 492 di=
dn&#39;t need to be rerun and 1 failed.</font></div><div><font face=3D"mono=
space"><br></font></div><div><font face=3D"monospace">Summary: 1 task faile=
d:</font></div><div><font face=3D"monospace">=C2=A0 /local/d4/gstark/poky/b=
uild/workspace/recipes/open62541/open62541_git.bb:do_package</font></div><d=
iv><font face=3D"monospace">Summary: There were 3 ERROR messages shown, ret=
urning a non-zero exit code.</font></div></div><div><font face=3D"monospace=
"><br></font></div><div><br></div><div>I just need to remind myself of clea=
ning these files up :)</div><div><br></div><div>Giordon</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at 1:09 PM Phil=
ip Balister &lt;<a href=3D"mailto:philip@balister.org">philip@balister.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 03/06/2018 01:42 =
PM, Burton, Ross wrote:<br>
&gt; Add DEPENDS=3Dpython-six<br>
<br>
Maybe:<br>
<br>
DEPENDS =3D &quot;python-six-native&quot;<br>
<br>
Philip<br>
<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 6 March 2018 at 18:11, Giordon Stark &lt;<a href=3D"mailto:kratsg@g=
mail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m struggling with what should be a simple-ish recipe (I thin=
k). I&#39;m<br>
&gt;&gt; writing a recipe implementation for <a href=3D"https://github.com/=
open62541/open62541" rel=3D"noreferrer" target=3D"_blank">https://github.co=
m/open62541/open62541</a><br>
&gt;&gt;=C2=A0 (open62541). So I start with<br>
&gt;&gt;<br>
&gt;&gt; devtool add open62541 <a href=3D"https://github.com/open62541/open=
62541.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/open6254=
1/open62541.git</a><br>
&gt;&gt;<br>
&gt;&gt; then I edit this, so it currently looks like this for me:<br>
&gt;&gt;<br>
&gt;&gt; SUMMARY =3D &quot;OPC UA implementation&quot;<br>
&gt;&gt; LICENSE =3D &quot;MPL-2.0&quot;<br>
&gt;&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D815ca599c9df247a0c=
7f619bab123dad&quot;<br>
&gt;&gt; SRC_URI =3D &quot;gitsm://<a href=3D"http://github.com/open62541/o=
pen62541.git;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.=
com/open62541/open62541.git;protocol=3Dhttps</a>&quot;<br>
&gt;&gt; PV =3D &quot;0.3+git${SRCPV}&quot;<br>
&gt;&gt; SRCREV =3D &quot;a6b99dc0579a53207b7dfe1d16423c2c1daa467e&quot;<br=
>
&gt;&gt;<br>
&gt;&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt;<br>
&gt;&gt; # NOTE: unable to map the following CMake package dependencies: Ch=
eck<br>
&gt;&gt; Sphinx ClangTools LATEX MbedTLS Valgrind<br>
&gt;&gt; DEPENDS =3D &quot;openssl&quot;<br>
&gt;&gt;<br>
&gt;&gt; inherit cmake pythonnative<br>
&gt;&gt;<br>
&gt;&gt; # Specify any options you want to pass to cmake using EXTRA_OECMAK=
E:<br>
&gt;&gt; EXTRA_OECMAKE =3D &quot;&quot;<br>
&gt;&gt;<br>
&gt;&gt; however, when I run devtool build open62541, I get=C2=A0 errors ab=
out &quot;No<br>
&gt;&gt; module named six&quot;:<br>
&gt;&gt;<br>
&gt;&gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/build/<br>
&gt;&gt; tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+=
git999&#39;<br>
&gt;&gt; | Traceback (most recent call last):<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sou=
rces/open62541/<br>
&gt;&gt; tools/nodeset_compiler/nodeset_compiler.py&quot;, line 27, in &lt;=
module&gt;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from nodeset import *<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sou=
rces/open62541/<br>
&gt;&gt; tools/nodeset_compiler/nodeset.py&quot;, line 30, in &lt;module&gt=
;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from nodes import *<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sou=
rces/open62541/<br>
&gt;&gt; tools/nodeset_compiler/nodes.py&quot;, line 21, in &lt;module&gt;<=
br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from datatypes import *<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sou=
rces/open62541/<br>
&gt;&gt; tools/nodeset_compiler/datatypes.py&quot;, line 29, in &lt;module&=
gt;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0import six<br>
&gt;&gt; | ImportError: No module named six<br>
&gt;&gt; | CMakeFiles/open62541-generator-namespace.dir/build.make:71: reci=
pe for<br>
&gt;&gt; target &#39;src_generated/ua_namespace0.c&#39; failed<br>
&gt;&gt; | make[2]: *** [src_generated/ua_namespace0.c] Error 1<br>
&gt;&gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/build/<br>
&gt;&gt; tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+=
git999&#39;<br>
&gt;&gt; | CMakeFiles/Makefile2:108: recipe for target &#39;CMakeFiles/open=
62541-generator-namespace.dir/all&#39;<br>
&gt;&gt; failed<br>
&gt;&gt; | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] =
Error 2<br>
&gt;&gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;&gt;<br>
&gt;&gt; How do I get &quot;python-six&quot; added as part of pythonnative?=
<br>
&gt;&gt;<br>
&gt;&gt; Giordon<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Giordon Stark<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a1143ac2e718a7b0566c33f38--
