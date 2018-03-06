Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04BC2E00E4C; Tue,  6 Mar 2018 10:11:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA1EE00DE2
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 10:11:34 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id 30so23060226iog.2
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 10:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=M6zUbTdUvD6f1Dq3wjUQbMRXad/uoebqeVfskXmbVPg=;
	b=KFgvK9kQWS/6M37mqvDYJAQYzDN2e6gnGBROIg2dvdShLCgcLam2ZWzt80ZKtd34ZY
	9eHKHqMBNPHBZOclua/jpAXtVXIsD/k2wz024XTycay5ysjl1MDQCAooSULo4hEoP0W6
	j79bYfqpzTS6xEf9we5CNjfwirNP4yuWuOEEBNmMTCkW3Ixp3aqMMNHzh5UnF/LuY25Q
	RxDPrl5/6mrru6VfTLuPj2iky3dUf4WOLv2vUa82JYzKtEpfcnW1+DSCaWdo/QsrfqPu
	gKnHy6L+71zkWSjb5ahAeXVBDNa3kdTzCyDbQJK9+Tt+/0gjxpVTFiWRm8nTlNr23148
	G4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=M6zUbTdUvD6f1Dq3wjUQbMRXad/uoebqeVfskXmbVPg=;
	b=hS+92bLeVAy2owVxpNbobckXc8Op76CkDllQ0IptF70HkqZm61QQodKY83tYNrBP4z
	ZYXLICL03Vud+NcL//pbGi4s1QFpCX11Xu2GoIZwL33qbpZuagdQ0F0KgCRnbR0rZZpO
	1Y4bX5hpJLA7PNXIR1+mgU3jblx4Gmpo4elKfWsjr4YiPsf0ce3aNUzGtLcb6j8qkZVk
	5RWjfOMXfRIbpdRNm24BViAaLGRb7LQ1qKNo6VPyjOm+q2xFBum2yFi3pcdM3pqGDjWl
	Wz6TpPBBjKFiZGZJtTWupq+TuFoXPl0TpWG+HPTAqarNNcFzgoklwtDpOqmQ3DvsyYQL
	0A4w==
X-Gm-Message-State: APf1xPAKNnjx/ThFXvZcr2fwqReJnO+qpcdWWsQ3Rj7iVBX7FvhgEnHU
	iA3iYAwsB5Q2J24mEMfUL9zqUHTloy24bKGwJYn7aQ==
X-Google-Smtp-Source: AG47ELtO2roH8KwCqTFLQh3zlrTtUTZ3RRW4j767Yny/l68ZbCnFWh2o9vPcRD5fBkU1PI9ym2s0GHFrs+c/Wvpgx74=
X-Received: by 10.107.213.5 with SMTP id m5mr23298035iog.62.1520359893301;
	Tue, 06 Mar 2018 10:11:33 -0800 (PST)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 18:11:22 +0000
Message-ID: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 18:11:35 -0000
Content-Type: multipart/alternative; boundary="f4f5e80e20405efe650566c25f0f"

--f4f5e80e20405efe650566c25f0f
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm struggling with what should be a simple-ish recipe (I think). I'm
writing a recipe implementation for
https://github.com/open62541/open62541 (open62541).
So I start with

devtool add open62541 https://github.com/open62541/open62541.git

then I edit this, so it currently looks like this for me:

SUMMARY = "OPC UA implementation"
LICENSE = "MPL-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
PV = "0.3+git${SRCPV}"
SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"

S = "${WORKDIR}/git"

# NOTE: unable to map the following CMake package dependencies: Check
Sphinx ClangTools LATEX MbedTLS Valgrind
DEPENDS = "openssl"

inherit cmake pythonnative

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE = ""

however, when I run devtool build open62541, I get  errors about "No module
named six":

| make[2]: Leaving directory
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
| Traceback (most recent call last):
|   File
"/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset_compiler.py",
line 27, in <module>
|     from nodeset import *
|   File
"/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset.py",
line 30, in <module>
|     from nodes import *
|   File
"/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodes.py",
line 21, in <module>
|     from datatypes import *
|   File
"/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/datatypes.py",
line 29, in <module>
|     import six
| ImportError: No module named six
| CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe for
target 'src_generated/ua_namespace0.c' failed
| make[2]: *** [src_generated/ua_namespace0.c] Error 1
| make[2]: Leaving directory
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
| CMakeFiles/Makefile2:108: recipe for target
'CMakeFiles/open62541-generator-namespace.dir/all' failed
| make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] Error 2
| make[1]: *** Waiting for unfinished jobs....

How do I get "python-six" added as part of pythonnative?

Giordon

-- 
Giordon Stark

--f4f5e80e20405efe650566c25f0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m struggling with what sh=
ould be a simple-ish recipe (I think). I&#39;m writing a recipe implementat=
ion for=C2=A0<a href=3D"https://github.com/open62541/open62541">https://git=
hub.com/open62541/open62541</a>=C2=A0(open62541). So I start with</div><div=
><br></div><div><font face=3D"monospace">devtool add open62541 <a href=3D"h=
ttps://github.com/open62541/open62541.git">https://github.com/open62541/ope=
n62541.git</a><br></font></div><div><br></div><div>then I edit this, so it =
currently looks like this for me:</div><div><br></div><div><div><font face=
=3D"monospace">SUMMARY =3D &quot;OPC UA implementation&quot;</font></div><d=
iv><font face=3D"monospace">LICENSE =3D &quot;MPL-2.0&quot;</font></div><di=
v><font face=3D"monospace">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D=
815ca599c9df247a0c7f619bab123dad&quot;</font></div><div><font face=3D"monos=
pace">SRC_URI =3D &quot;gitsm://<a href=3D"http://github.com/open62541/open=
62541.git;protocol=3Dhttps">github.com/open62541/open62541.git;protocol=3Dh=
ttps</a>&quot;</font></div><div><font face=3D"monospace">PV =3D &quot;0.3+g=
it${SRCPV}&quot;</font></div><div><font face=3D"monospace">SRCREV =3D &quot=
;a6b99dc0579a53207b7dfe1d16423c2c1daa467e&quot;</font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace">S =3D &quot;$=
{WORKDIR}/git&quot;</font></div><div><font face=3D"monospace"><br></font></=
div><div><font face=3D"monospace"># NOTE: unable to map the following CMake=
 package dependencies: Check Sphinx ClangTools LATEX MbedTLS Valgrind</font=
></div><div><font face=3D"monospace">DEPENDS =3D &quot;openssl&quot;</font>=
</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mon=
ospace">inherit cmake pythonnative</font></div><div><font face=3D"monospace=
"><br></font></div><div><font face=3D"monospace"># Specify any options you =
want to pass to cmake using EXTRA_OECMAKE:</font></div><div><font face=3D"m=
onospace">EXTRA_OECMAKE =3D &quot;&quot;</font></div></div><div><font face=
=3D"monospace"><br></font></div><div>however, when I run <font face=3D"mono=
space">devtool build open62541</font>, I get=C2=A0 errors about &quot;No mo=
dule named six&quot;:</div><div><br></div><div><div><font face=3D"monospace=
">| make[2]: Leaving directory &#39;/local/d4/gstark/poky/build/tmp/work/aa=
rch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999&#39;</font></=
div><div><font face=3D"monospace">| Traceback (most recent call last):</fon=
t></div><div><font face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gs=
tark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset_=
compiler.py&quot;, line 27, in &lt;module&gt;</font></div><div><font face=
=3D"monospace">|=C2=A0 =C2=A0 =C2=A0from nodeset import *</font></div><div>=
<font face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/bui=
ld/workspace/sources/open62541/tools/nodeset_compiler/nodeset.py&quot;, lin=
e 30, in &lt;module&gt;</font></div><div><font face=3D"monospace">|=C2=A0 =
=C2=A0 =C2=A0from nodes import *</font></div><div><font face=3D"monospace">=
|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sources/open=
62541/tools/nodeset_compiler/nodes.py&quot;, line 21, in &lt;module&gt;</fo=
nt></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0from datatypes =
import *</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0File &quot=
;/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_comp=
iler/datatypes.py&quot;, line 29, in &lt;module&gt;</font></div><div><font =
face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0import six</font></div><div><font f=
ace=3D"monospace">| ImportError: No module named six</font></div><div><font=
 face=3D"monospace">| CMakeFiles/open62541-generator-namespace.dir/build.ma=
ke:71: recipe for target &#39;src_generated/ua_namespace0.c&#39; failed</fo=
nt></div><div><font face=3D"monospace">| make[2]: *** [src_generated/ua_nam=
espace0.c] Error 1</font></div><div><font face=3D"monospace">| make[2]: Lea=
ving directory &#39;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux=
/open62541/0.3+git999-r0/open62541-0.3+git999&#39;</font></div><div><font f=
ace=3D"monospace">| CMakeFiles/Makefile2:108: recipe for target &#39;CMakeF=
iles/open62541-generator-namespace.dir/all&#39; failed</font></div><div><fo=
nt face=3D"monospace">| make[1]: *** [CMakeFiles/open62541-generator-namesp=
ace.dir/all] Error 2</font></div><div><font face=3D"monospace">| make[1]: *=
** Waiting for unfinished jobs....</font></div></div><div><br></div><div>Ho=
w do I get &quot;python-six&quot; added as part of pythonnative?</div><div>=
<br></div><div>Giordon</div><div><br></div></div>-- <br><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
>Giordon Stark</div></div>

--f4f5e80e20405efe650566c25f0f--
