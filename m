Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28FEFE00DCE; Tue,  6 Mar 2018 10:43:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF9B2E00971
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 10:43:17 -0800 (PST)
Received: by mail-it0-f52.google.com with SMTP id d13so100761itf.0
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 10:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VONV9cCUMdSOZKffGyghzyfnx/KT5nImxfCOQAsqWWo=;
	b=WDJgYvZDSLXsK8Q0inwbDQBcSNwYSX/OtKWDyHQ4zqnWrkbwKXJeJPFKNHVAppGB28
	VBkystOR6TLiBAlPirs+G2XQzbz/FqQa0z1ITBUYJzayjOu6JNkmHE0BwJBjd8866c6R
	CKG2cRiwXiObjgwMKNgh/EYPwDkxGGNaYHLFfaPa3c0R17LhtN/nksjgKamIAkxjt0al
	fovhvynl/i8TsMhFRlLJgT9l/PJ8X0Ctm084sv1flr01KD3ksLtnAdYnT/mAoOkuEQNU
	8GqVwjMr3uO9ioxCr8pUFgCMgV1DjAjZmhcnSBcpBdNkRdIbtiPicUHnKXS+LMnu8vTx
	627g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VONV9cCUMdSOZKffGyghzyfnx/KT5nImxfCOQAsqWWo=;
	b=GcK1mqqcO+ar/wAlOpsJkICOoF0vn5KMgeL9KK0ruIidN6P2lMBpFW8ItcQh45ql6b
	SKF/5WZzAtOUVN7SRlbAWIwauKVtz0hiyBVhMyvo1a1JVXy+9SsJOI02r4tmNlM+QNXT
	y8xjhlBE73UD7eOf7Oa2MQnVfnkUF6o3JRUOythAd/Ey8hXpkHWAI5huVC1VXbKHuR8G
	E03BB0i/Q1B6IgvBNU+s4zbysalVlGB58wIPkwHOq/xzWoNxaAc5NAz5WEP9xjX5y5ZN
	6g9nntj1GuG74lZ5qgU27P558aH3jeZk0cQqDA3xavk8HbCAVL/nyOWbEYt6ufQUJcD+
	mBOg==
X-Gm-Message-State: AElRT7FN3xNSAbMKQ0VBG9rERYgPDP3s4F5wiQtDWHh6OcUUEOvfQ70a
	av6JVz0XAzx7G8XLJtTero7QrVaXIbb+hp9xN2csfQ==
X-Google-Smtp-Source: AG47ELvblwYdBzgs1tT4CE6a239m7BhwXrUxWBkYRfl4Vm2RJjh5wZhbrUOiK1B589o499EJXqLnHpR1jNgg0Xd76bg=
X-Received: by 10.36.198.7 with SMTP id j7mr13440636itg.34.1520361796849; Tue,
	06 Mar 2018 10:43:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 10:42:55 -0800 (PST)
In-Reply-To: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 18:42:55 +0000
Message-ID: <CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
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
X-List-Received-Date: Tue, 06 Mar 2018 18:43:19 -0000
Content-Type: multipart/alternative; boundary="94eb2c089ed6d4e7db0566c2d0ee"

--94eb2c089ed6d4e7db0566c2d0ee
Content-Type: text/plain; charset="UTF-8"

Add DEPENDS=python-six

Ross

On 6 March 2018 at 18:11, Giordon Stark <kratsg@gmail.com> wrote:

> Hi all,
>
> I'm struggling with what should be a simple-ish recipe (I think). I'm
> writing a recipe implementation for https://github.com/open62541/open62541
>  (open62541). So I start with
>
> devtool add open62541 https://github.com/open62541/open62541.git
>
> then I edit this, so it currently looks like this for me:
>
> SUMMARY = "OPC UA implementation"
> LICENSE = "MPL-2.0"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
> SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
> PV = "0.3+git${SRCPV}"
> SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"
>
> S = "${WORKDIR}/git"
>
> # NOTE: unable to map the following CMake package dependencies: Check
> Sphinx ClangTools LATEX MbedTLS Valgrind
> DEPENDS = "openssl"
>
> inherit cmake pythonnative
>
> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
> EXTRA_OECMAKE = ""
>
> however, when I run devtool build open62541, I get  errors about "No
> module named six":
>
> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
> | Traceback (most recent call last):
> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> tools/nodeset_compiler/nodeset_compiler.py", line 27, in <module>
> |     from nodeset import *
> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> tools/nodeset_compiler/nodeset.py", line 30, in <module>
> |     from nodes import *
> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> tools/nodeset_compiler/nodes.py", line 21, in <module>
> |     from datatypes import *
> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
> tools/nodeset_compiler/datatypes.py", line 29, in <module>
> |     import six
> | ImportError: No module named six
> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe for
> target 'src_generated/ua_namespace0.c' failed
> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
> | CMakeFiles/Makefile2:108: recipe for target 'CMakeFiles/open62541-generator-namespace.dir/all'
> failed
> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] Error 2
> | make[1]: *** Waiting for unfinished jobs....
>
> How do I get "python-six" added as part of pythonnative?
>
> Giordon
>
> --
> Giordon Stark
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c089ed6d4e7db0566c2d0ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Add DEPENDS=3Dpython-six<div><br></div><div>Ross</div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 6 March 2018=
 at 18:11, Giordon Stark <span dir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gma=
il.com" target=3D"_blank">kratsg@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m=
 struggling with what should be a simple-ish recipe (I think). I&#39;m writ=
ing a recipe implementation for=C2=A0<a href=3D"https://github.com/open6254=
1/open62541" target=3D"_blank">https://github.com/<wbr>open62541/open62541<=
/a>=C2=A0(<wbr>open62541). So I start with</div><div><br></div><div><font f=
ace=3D"monospace">devtool add open62541 <a href=3D"https://github.com/open6=
2541/open62541.git" target=3D"_blank">https://github.com/open62541/<wbr>ope=
n62541.git</a><br></font></div><div><br></div><div>then I edit this, so it =
currently looks like this for me:</div><div><br></div><div><div><font face=
=3D"monospace">SUMMARY =3D &quot;OPC UA implementation&quot;</font></div><d=
iv><font face=3D"monospace">LICENSE =3D &quot;MPL-2.0&quot;</font></div><di=
v><font face=3D"monospace">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D=
<wbr>815ca599c9df247a0c7f619bab123d<wbr>ad&quot;</font></div><div><font fac=
e=3D"monospace">SRC_URI =3D &quot;gitsm://<a href=3D"http://github.com/open=
62541/open62541.git;protocol=3Dhttps" target=3D"_blank">github.com/open6254=
1/<wbr>open62541.git;protocol=3Dhttps</a>&quot;</font></div><div><font face=
=3D"monospace">PV =3D &quot;0.3+git${SRCPV}&quot;</font></div><div><font fa=
ce=3D"monospace">SRCREV =3D &quot;<wbr>a6b99dc0579a53207b7dfe1d16423c<wbr>2=
c1daa467e&quot;</font></div><div><font face=3D"monospace"><br></font></div>=
<div><font face=3D"monospace">S =3D &quot;${WORKDIR}/git&quot;</font></div>=
<div><font face=3D"monospace"><br></font></div><div><font face=3D"monospace=
"># NOTE: unable to map the following CMake package dependencies: Check Sph=
inx ClangTools LATEX MbedTLS Valgrind</font></div><div><font face=3D"monosp=
ace">DEPENDS =3D &quot;openssl&quot;</font></div><div><font face=3D"monospa=
ce"><br></font></div><div><font face=3D"monospace">inherit cmake pythonnati=
ve</font></div><div><font face=3D"monospace"><br></font></div><div><font fa=
ce=3D"monospace"># Specify any options you want to pass to cmake using EXTR=
A_OECMAKE:</font></div><div><font face=3D"monospace">EXTRA_OECMAKE =3D &quo=
t;&quot;</font></div></div><div><font face=3D"monospace"><br></font></div><=
div>however, when I run <font face=3D"monospace">devtool build open62541</f=
ont>, I get=C2=A0 errors about &quot;No module named six&quot;:</div><div><=
br></div><div><div><font face=3D"monospace">| make[2]: Leaving directory &#=
39;/local/d4/gstark/poky/build/<wbr>tmp/work/aarch64-poky-linux/<wbr>open62=
541/0.3+git999-r0/<wbr>open62541-0.3+git999&#39;</font></div><div><font fac=
e=3D"monospace">| Traceback (most recent call last):</font></div><div><font=
 face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<w=
br>workspace/sources/open62541/<wbr>tools/nodeset_compiler/<wbr>nodeset_com=
piler.py&quot;, line 27, in &lt;module&gt;</font></div><div><font face=3D"m=
onospace">|=C2=A0 =C2=A0 =C2=A0from nodeset import *</font></div><div><font=
 face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<w=
br>workspace/sources/open62541/<wbr>tools/nodeset_compiler/<wbr>nodeset.py&=
quot;, line 30, in &lt;module&gt;</font></div><div><font face=3D"monospace"=
>|=C2=A0 =C2=A0 =C2=A0from nodes import *</font></div><div><font face=3D"mo=
nospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<wbr>workspac=
e/sources/open62541/<wbr>tools/nodeset_compiler/nodes.<wbr>py&quot;, line 2=
1, in &lt;module&gt;</font></div><div><font face=3D"monospace">|=C2=A0 =C2=
=A0 =C2=A0from datatypes import *</font></div><div><font face=3D"monospace"=
>|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<wbr>workspace/source=
s/open62541/<wbr>tools/nodeset_compiler/<wbr>datatypes.py&quot;, line 29, i=
n &lt;module&gt;</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =
=C2=A0import six</font></div><div><font face=3D"monospace">| ImportError: N=
o module named six</font></div><div><font face=3D"monospace">| CMakeFiles/o=
pen62541-<wbr>generator-namespace.dir/build.<wbr>make:71: recipe for target=
 &#39;src_generated/ua_namespace0.<wbr>c&#39; failed</font></div><div><font=
 face=3D"monospace">| make[2]: *** [src_generated/ua_namespace0.<wbr>c] Err=
or 1</font></div><div><font face=3D"monospace">| make[2]: Leaving directory=
 &#39;/local/d4/gstark/poky/build/<wbr>tmp/work/aarch64-poky-linux/<wbr>ope=
n62541/0.3+git999-r0/<wbr>open62541-0.3+git999&#39;</font></div><div><font =
face=3D"monospace">| CMakeFiles/Makefile2:108: recipe for target &#39;CMake=
Files/open62541-<wbr>generator-namespace.dir/all&#39; failed</font></div><d=
iv><font face=3D"monospace">| make[1]: *** [CMakeFiles/open62541-<wbr>gener=
ator-namespace.dir/all] Error 2</font></div><div><font face=3D"monospace">|=
 make[1]: *** Waiting for unfinished jobs....</font></div></div><div><br></=
div><div>How do I get &quot;python-six&quot; added as part of pythonnative?=
</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Gi=
ordon</div><div><br></div></font></span></div><span class=3D"HOEnZb"><font =
color=3D"#888888">-- <br><div dir=3D"ltr" class=3D"m_1127724042352983272gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon S=
tark</div></div>
</font></span><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c089ed6d4e7db0566c2d0ee--
