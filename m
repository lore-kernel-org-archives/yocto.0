Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33B87E00DFE; Tue,  6 Mar 2018 11:00:37 -0800 (PST)
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
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04238E00843
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 11:00:34 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id 30so142965iog.2
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 11:00:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sE+xrPoVAdYOjb9DgGFtiQZmVFGzBOtVbEBJOQJO7xQ=;
	b=Po6ppenAf6zwRqcAS4kxQlJUNm4A5eTZZQjLj6fTZM87ldGU6KbSd+4xPhTCGcogle
	XkdBcVWKW7/kQD4/y8vv4cYrSHi92mEjzojy8pZdFxTMiPRKKZMo9yCFgHfcusMcFqfM
	7D5hFwpemRto1cCoe+QP1foxpdwHs1SMOiszlZug3aSeRNXUHRJopnMW3c2O85SVJB4v
	7A9VDpAirMsd5vSJl9Wy4g/s1PmSeoUb3JVVRftZ0wYnYpNUSn6gGQA3H7qY7KqElaS1
	4zom7bhiPC+TDjPS12snAhXohRnHbO638Om+XDIEoClHf4433V5Sg4LTKV2K1wuORIvX
	Bbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sE+xrPoVAdYOjb9DgGFtiQZmVFGzBOtVbEBJOQJO7xQ=;
	b=ga4dEiyK0h47On7cKLsTWjt4nlYHgnNbo/+Sb0K2pVG2eLTxiKblCvT7nnGRW94KFU
	IZ0mgDlYgnLFtt7uL5Jfyty2jZ/I0WYkVqcwNElKIOJvrFmdmQLNPnU+SxqxW75MC3Ob
	j8WaF2oLfw+sfYBIBsyDh0fU3LnObT6iOYfcmjNYJMATTvZc4Z06Ktn1EEVNA9h7Xm1b
	IoWGFqayt0U2tHUw7ojFmkkC+Q+1fASIjhWjhYPb8RdvNxuhRvfc/eosJ2vIHAPrXgWl
	VBNaP09sjr3PWTsfDw5iQTvmmyKLHomnmazUTmir2tl2FLNocpR/fM20qmeT+DRh97/z
	JVFw==
X-Gm-Message-State: APf1xPCd7Uh3C4HrZvLL+XATXhinARFxP50kNxEl1ZKcvxTMRBfIdD7k
	QiTFo9xea7bEWE/kfASmWb0KixZZTpNqkTGAYy8=
X-Google-Smtp-Source: AG47ELtvTbkE6jy87KDeB9T0aHaS6sylBPKYcijamjaeA9Y2eVMLYFclt8Iu1RArYyjqsx/GKAPimqttUjZzcV3ryi0=
X-Received: by 10.107.213.5 with SMTP id m5mr23467557iog.62.1520362833159;
	Tue, 06 Mar 2018 11:00:33 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<CAFzUWGmv_SeW_=nmVV-yJNgFty-xiE+saga9-uWVex8PLz48cw@mail.gmail.com>
In-Reply-To: <CAFzUWGmv_SeW_=nmVV-yJNgFty-xiE+saga9-uWVex8PLz48cw@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 19:00:22 +0000
Message-ID: <CAFzUWGnYzVXebufLDQ1UWfx-R3xS-epgiD94QY1SiagJ+fFUdA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Tue, 06 Mar 2018 19:00:37 -0000
Content-Type: multipart/alternative; boundary="f4f5e80e204099ad450566c30e36"

--f4f5e80e204099ad450566c30e36
Content-Type: text/plain; charset="UTF-8"

More specifically, the problem is that "six" is not a package that was
installed as part of pythonnative:

kratsg@dc:/local/d4/gstark/poky/build$
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/bin/python-native/python
Python 2.7.13 (default, Jan  3 2018, 08:10:02)
[GCC 5.4.0 20160609] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import six
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named six
>>> import sys
>>> sys.path
['', '/users/kratsg/L1TriggerAnalysis/.local/lib/python2.6/site-packages',
'/local/d4/gstark/poky/build',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python27.zip',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7/plat-linux2',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7/lib-tk',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7/lib-old',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7/lib-dynload',
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7/site-packages']

And I have a hard time googling/searching to figure out how to solve this
since most answers are about installing python packages on a target
machine, rather than for the host's pythonnative.

Giordon


On Tue, Mar 6, 2018 at 12:50 PM Giordon Stark <kratsg@gmail.com> wrote:

> Hi,
>
> I tried this and it didn't work.
>
> Giordon
> On Tue, Mar 6, 2018 at 12:43 Burton, Ross <ross.burton@intel.com> wrote:
>
>> Add DEPENDS=python-six
>>
>> Ross
>>
>> On 6 March 2018 at 18:11, Giordon Stark <kratsg@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> I'm struggling with what should be a simple-ish recipe (I think). I'm
>>> writing a recipe implementation for
>>> https://github.com/open62541/open62541 (open62541). So I start with
>>>
>>> devtool add open62541 https://github.com/open62541/open62541.git
>>>
>>> then I edit this, so it currently looks like this for me:
>>>
>>> SUMMARY = "OPC UA implementation"
>>> LICENSE = "MPL-2.0"
>>> LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
>>> SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
>>> PV = "0.3+git${SRCPV}"
>>> SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"
>>>
>>> S = "${WORKDIR}/git"
>>>
>>> # NOTE: unable to map the following CMake package dependencies: Check
>>> Sphinx ClangTools LATEX MbedTLS Valgrind
>>> DEPENDS = "openssl"
>>>
>>> inherit cmake pythonnative
>>>
>>> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
>>> EXTRA_OECMAKE = ""
>>>
>>> however, when I run devtool build open62541, I get  errors about "No
>>> module named six":
>>>
>>> | make[2]: Leaving directory
>>> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
>>> | Traceback (most recent call last):
>>> |   File
>>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset_compiler.py",
>>> line 27, in <module>
>>> |     from nodeset import *
>>> |   File
>>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset.py",
>>> line 30, in <module>
>>> |     from nodes import *
>>> |   File
>>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodes.py",
>>> line 21, in <module>
>>> |     from datatypes import *
>>> |   File
>>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/datatypes.py",
>>> line 29, in <module>
>>> |     import six
>>> | ImportError: No module named six
>>> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe for
>>> target 'src_generated/ua_namespace0.c' failed
>>> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
>>> | make[2]: Leaving directory
>>> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
>>> | CMakeFiles/Makefile2:108: recipe for target
>>> 'CMakeFiles/open62541-generator-namespace.dir/all' failed
>>> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] Error 2
>>> | make[1]: *** Waiting for unfinished jobs....
>>>
>>> How do I get "python-six" added as part of pythonnative?
>>>
>>> Giordon
>>>
>>> --
>>> Giordon Stark
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> --
> Giordon Stark
>
-- 
Giordon Stark

--f4f5e80e204099ad450566c30e36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">More specifically, the problem is that &quot;six&quot; is =
not a package that was installed as part of pythonnative:<div><br></div><di=
v><div><font face=3D"monospace">kratsg@dc:/local/d4/gstark/poky/build$ /loc=
al/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0=
/recipe-sysroot-native/usr/bin/python-native/python</font></div><div><font =
face=3D"monospace">Python 2.7.13 (default, Jan=C2=A0 3 2018, 08:10:02)=C2=
=A0</font></div><div><font face=3D"monospace">[GCC 5.4.0 20160609] on linux=
2</font></div><div><font face=3D"monospace">Type &quot;help&quot;, &quot;co=
pyright&quot;, &quot;credits&quot; or &quot;license&quot; for more informat=
ion.</font></div><div><font face=3D"monospace">&gt;&gt;&gt; import six</fon=
t></div><div><font face=3D"monospace">Traceback (most recent call last):</f=
ont></div><div><font face=3D"monospace">=C2=A0 File &quot;&lt;stdin&gt;&quo=
t;, line 1, in &lt;module&gt;</font></div><div><font face=3D"monospace">Imp=
ortError: No module named six</font></div></div><div><div><font face=3D"mon=
ospace">&gt;&gt;&gt; import sys</font></div><div><font face=3D"monospace">&=
gt;&gt;&gt; sys.path</font></div><div><font face=3D"monospace">[&#39;&#39;,=
 &#39;/users/kratsg/L1TriggerAnalysis/.local/lib/python2.6/site-packages&#3=
9;, &#39;/local/d4/gstark/poky/build&#39;, &#39;/local/d4/gstark/poky/build=
/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/=
usr/lib/python27.zip&#39;, &#39;/local/d4/gstark/poky/build/tmp/work/aarch6=
4-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.=
7&#39;, &#39;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62=
541/0.3+git999-r0/recipe-sysroot-native/usr/lib/python2.7/plat-linux2&#39;,=
 &#39;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3=
+git999-r0/recipe-sysroot-native/usr/lib/python2.7/lib-tk&#39;, &#39;/local=
/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/r=
ecipe-sysroot-native/usr/lib/python2.7/lib-old&#39;, &#39;/local/d4/gstark/=
poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysro=
ot-native/usr/lib/python2.7/lib-dynload&#39;, &#39;/local/d4/gstark/poky/bu=
ild/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/recipe-sysroot-nati=
ve/usr/lib/python2.7/site-packages&#39;]</font></div></div><div><br></div><=
div>And I have a hard time googling/searching to figure out how to solve th=
is since most answers are about installing python packages on a target mach=
ine, rather than for the host&#39;s pythonnative.</div><div><br></div><div>=
Giordon</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Tue, Mar 6, 2018 at 12:50 PM Giordon Stark &lt;<a href=3D"mailt=
o:kratsg@gmail.com">kratsg@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi,<br><br>I tried this and it didn&#39;t work. <br><br>Gi=
ordon<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at=
 12:43 Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"=
_blank">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">Add DEPENDS=3Dpython-six<div><br></div><div>Ross=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"></div=
></div><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 6 March 201=
8 at 18:11, Giordon Stark <span dir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gm=
ail.com" target=3D"_blank">kratsg@gmail.com</a>&gt;</span> wrote:<br></div>=
</div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m struggl=
ing with what should be a simple-ish recipe (I think). I&#39;m writing a re=
cipe implementation for=C2=A0<a href=3D"https://github.com/open62541/open62=
541" target=3D"_blank">https://github.com/open62541/open62541</a>=C2=A0(ope=
n62541). So I start with</div><div><br></div><div><font face=3D"monospace">=
devtool add open62541 <a href=3D"https://github.com/open62541/open62541.git=
" target=3D"_blank">https://github.com/open62541/open62541.git</a><br></fon=
t></div><div><br></div><div>then I edit this, so it currently looks like th=
is for me:</div><div><br></div><div><div><font face=3D"monospace">SUMMARY =
=3D &quot;OPC UA implementation&quot;</font></div><div><font face=3D"monosp=
ace">LICENSE =3D &quot;MPL-2.0&quot;</font></div><div><font face=3D"monospa=
ce">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D815ca599c9df247a0c7f619=
bab123dad&quot;</font></div><div><font face=3D"monospace">SRC_URI =3D &quot=
;gitsm://<a href=3D"http://github.com/open62541/open62541.git;protocol=3Dht=
tps" target=3D"_blank">github.com/open62541/open62541.git;protocol=3Dhttps<=
/a>&quot;</font></div><div><font face=3D"monospace">PV =3D &quot;0.3+git${S=
RCPV}&quot;</font></div><div><font face=3D"monospace">SRCREV =3D &quot;a6b9=
9dc0579a53207b7dfe1d16423c2c1daa467e&quot;</font></div><div><font face=3D"m=
onospace"><br></font></div><div><font face=3D"monospace">S =3D &quot;${WORK=
DIR}/git&quot;</font></div><div><font face=3D"monospace"><br></font></div><=
div><font face=3D"monospace"># NOTE: unable to map the following CMake pack=
age dependencies: Check Sphinx ClangTools LATEX MbedTLS Valgrind</font></di=
v><div><font face=3D"monospace">DEPENDS =3D &quot;openssl&quot;</font></div=
><div><font face=3D"monospace"><br></font></div><div><font face=3D"monospac=
e">inherit cmake pythonnative</font></div><div><font face=3D"monospace"><br=
></font></div><div><font face=3D"monospace"># Specify any options you want =
to pass to cmake using EXTRA_OECMAKE:</font></div><div><font face=3D"monosp=
ace">EXTRA_OECMAKE =3D &quot;&quot;</font></div></div><div><font face=3D"mo=
nospace"><br></font></div><div>however, when I run <font face=3D"monospace"=
>devtool build open62541</font>, I get=C2=A0 errors about &quot;No module n=
amed six&quot;:</div><div><br></div><div><div><font face=3D"monospace">| ma=
ke[2]: Leaving directory &#39;/local/d4/gstark/poky/build/tmp/work/aarch64-=
poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999&#39;</font></div><d=
iv><font face=3D"monospace">| Traceback (most recent call last):</font></di=
v><div><font face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/p=
oky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset_compil=
er.py&quot;, line 27, in &lt;module&gt;</font></div><div><font face=3D"mono=
space">|=C2=A0 =C2=A0 =C2=A0from nodeset import *</font></div><div><font fa=
ce=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/works=
pace/sources/open62541/tools/nodeset_compiler/nodeset.py&quot;, line 30, in=
 &lt;module&gt;</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =
=C2=A0from nodes import *</font></div><div><font face=3D"monospace">|=C2=A0=
 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sources/open62541/t=
ools/nodeset_compiler/nodes.py&quot;, line 21, in &lt;module&gt;</font></di=
v><div><font face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0from datatypes import =
*</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local=
/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/da=
tatypes.py&quot;, line 29, in &lt;module&gt;</font></div><div><font face=3D=
"monospace">|=C2=A0 =C2=A0 =C2=A0import six</font></div><div><font face=3D"=
monospace">| ImportError: No module named six</font></div><div><font face=
=3D"monospace">| CMakeFiles/open62541-generator-namespace.dir/build.make:71=
: recipe for target &#39;src_generated/ua_namespace0.c&#39; failed</font></=
div><div><font face=3D"monospace">| make[2]: *** [src_generated/ua_namespac=
e0.c] Error 1</font></div><div><font face=3D"monospace">| make[2]: Leaving =
directory &#39;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open=
62541/0.3+git999-r0/open62541-0.3+git999&#39;</font></div><div><font face=
=3D"monospace">| CMakeFiles/Makefile2:108: recipe for target &#39;CMakeFile=
s/open62541-generator-namespace.dir/all&#39; failed</font></div><div><font =
face=3D"monospace">| make[1]: *** [CMakeFiles/open62541-generator-namespace=
.dir/all] Error 2</font></div><div><font face=3D"monospace">| make[1]: *** =
Waiting for unfinished jobs....</font></div></div><div><br></div><div>How d=
o I get &quot;python-six&quot; added as part of pythonnative?</div><span cl=
ass=3D"m_-4813325049014325541m_-6791734627418191580HOEnZb"><font color=3D"#=
888888"><div><br></div><div>Giordon</div><div><br></div></font></span></div=
><span class=3D"m_-4813325049014325541m_-6791734627418191580HOEnZb"><font c=
olor=3D"#888888">-- <br><div dir=3D"ltr" class=3D"m_-4813325049014325541m_-=
6791734627418191580m_1127724042352983272gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>
</font></span><br></blockquote></div></div><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div></div></blockquote></div>-- <br><div dir=3D"ltr" cla=
ss=3D"m_-4813325049014325541gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr">Giordon Stark</div></div></blockquote></div>-- <br><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr">Giordon Stark</div></div>

--f4f5e80e204099ad450566c30e36--
