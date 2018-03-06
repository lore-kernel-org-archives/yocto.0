Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92704E00DA5; Tue,  6 Mar 2018 12:02:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57CB8E00833
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 12:02:43 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id e30so349648ioc.3
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 12:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JCChW85p8DVBYhweTpdkpEF9koa8kRiLxiiG1QVXTG8=;
	b=ulbECoxmT4zjTP9RAQjyoYsMi49mrm0o8Q2xl/krgsEI6UO8sDZ44ykQXNw/sr1yeF
	/W1LWviMAgvAJRt9lNmX6YbhJWU1LhMAigymvZA4jyt9lmYXUjsloF5mnWISINOUfA39
	GfjEpaIW9DmahnXvhxl37cjUeofq1BmF6AbjUrjY4tv/0QstoOQv4wFw2SMAf/kJVxMg
	0NPjyV6jbNXVINkHjYN9/eA65syS2QHoryqj2q5na51LqzDtap5mWEsVT2jTmPuac6UP
	pEws0R45gQpSjs1aarW0wKfzAvA8AP0/poVqz2MA2p28j/t0x8Y+mxce9FLabbGuxiNp
	e8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JCChW85p8DVBYhweTpdkpEF9koa8kRiLxiiG1QVXTG8=;
	b=qq4sdJafZyOWkUuCuLcfJH7hk/QdOpoK8BJECAhyjgyU0GynZqrKWx+Gn2Mppn/y+M
	T1HG9HKA0cE+3ZG0mmy0OfMfPMrIZpHxJEsqO1bC0319sE4tTUJ/pHJcRhK00AODOfMy
	ePSI46LhIUZYaCE84/lTwPHW2dOFK/8p/WhqPTjra07ewjFPk94AA23TM32gkrER4VkI
	jaVN9HoxLsSCEUUFwtd0MdpcA2H7TysRit6YTYTDy1QoYs0pfNqOviqt0fDxwkGNyKy5
	pcAOk0ZUHQwqPn5HYByqnwCeBP4xW9KwzlHkIgBVsmTKzGMUzh3RIwGiQ0990Fs2XHW2
	7mBw==
X-Gm-Message-State: AElRT7E2UkQbu7vS/NprpbynwPcxLWdhNQTX8jFlaecdXt3Kc1WKQbhl
	fZ49YoJCyzDZ0f8wPZo108lBaA1XlTRU6ySdF47SdQ==
X-Google-Smtp-Source: AG47ELvAhvEBEjp8+6rOyukTUWPLzHXbXQHJKCkguJ0o96lPTWgsqgoFn7quPNzbLhXzhgcwVKdHIU1ys+Pt4NF9zLA=
X-Received: by 10.107.183.76 with SMTP id h73mr23178716iof.201.1520366563561; 
	Tue, 06 Mar 2018 12:02:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 12:02:23 -0800 (PST)
In-Reply-To: <2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 20:02:23 +0000
Message-ID: <CAJTo0Lbgc7-cW7dFXJ9i4WxS5q4_cF_LjANXt6ueJtgH-=M86w@mail.gmail.com>
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
X-List-Received-Date: Tue, 06 Mar 2018 20:02:45 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b9e3af3306f0566c3ec30"

--94eb2c0b9e3af3306f0566c3ec30
Content-Type: text/plain; charset="UTF-8"

Sorry, was rushing, yes this. :)

On 6 March 2018 at 19:09, Philip Balister <philip@balister.org> wrote:

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
> >> writing a recipe implementation for https://github.com/open62541/
> open62541
> >>  (open62541). So I start with
> >>
> >> devtool add open62541 https://github.com/open62541/open62541.git
> >>
> >> then I edit this, so it currently looks like this for me:
> >>
> >> SUMMARY = "OPC UA implementation"
> >> LICENSE = "MPL-2.0"
> >> LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123d
> ad"
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
> >> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/
> open62541-0.3+git999'
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
> >> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe
> for
> >> target 'src_generated/ua_namespace0.c' failed
> >> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
> >> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
> >> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/
> open62541-0.3+git999'
> >> | CMakeFiles/Makefile2:108: recipe for target 'CMakeFiles/open62541-
> generator-namespace.dir/all'
> >> failed
> >> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all]
> Error 2
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

--94eb2c0b9e3af3306f0566c3ec30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, was rushing, yes this. :)</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On 6 March 2018 at 19:09, Philip Bali=
ster <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@balister.org" target=3D=
"_blank">philip@balister.org</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On 03/06/2018 01:42 PM, Burton, Ross wrote:<br>
&gt; Add DEPENDS=3Dpython-six<br>
<br>
Maybe:<br>
<br>
DEPENDS =3D &quot;python-six-native&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Philip<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 6 March 2018 at 18:11, Giordon Stark &lt;<a href=3D"mailto:kratsg@g=
mail.com">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m struggling with what should be a simple-ish recipe (I thin=
k). I&#39;m<br>
&gt;&gt; writing a recipe implementation for <a href=3D"https://github.com/=
open62541/open62541" rel=3D"noreferrer" target=3D"_blank">https://github.co=
m/open62541/<wbr>open62541</a><br>
&gt;&gt;=C2=A0 (open62541). So I start with<br>
&gt;&gt;<br>
&gt;&gt; devtool add open62541 <a href=3D"https://github.com/open62541/open=
62541.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/open6254=
1/<wbr>open62541.git</a><br>
&gt;&gt;<br>
&gt;&gt; then I edit this, so it currently looks like this for me:<br>
&gt;&gt;<br>
&gt;&gt; SUMMARY =3D &quot;OPC UA implementation&quot;<br>
&gt;&gt; LICENSE =3D &quot;MPL-2.0&quot;<br>
&gt;&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D<wbr>815ca599c9df2=
47a0c7f619bab123d<wbr>ad&quot;<br>
&gt;&gt; SRC_URI =3D &quot;gitsm://<a href=3D"http://github.com/open62541/o=
pen62541.git;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.=
com/open62541/<wbr>open62541.git;protocol=3Dhttps</a>&quot;<br>
&gt;&gt; PV =3D &quot;0.3+git${SRCPV}&quot;<br>
&gt;&gt; SRCREV =3D &quot;<wbr>a6b99dc0579a53207b7dfe1d16423c<wbr>2c1daa467=
e&quot;<br>
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
&gt;&gt; tmp/work/aarch64-poky-linux/<wbr>open62541/0.3+git999-r0/<wbr>open=
62541-0.3+git999&#39;<br>
&gt;&gt; | Traceback (most recent call last):<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<wbr>workspac=
e/sources/open62541/<br>
&gt;&gt; tools/nodeset_compiler/<wbr>nodeset_compiler.py&quot;, line 27, in=
 &lt;module&gt;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from nodeset import *<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<wbr>workspac=
e/sources/open62541/<br>
&gt;&gt; tools/nodeset_compiler/<wbr>nodeset.py&quot;, line 30, in &lt;modu=
le&gt;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from nodes import *<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<wbr>workspac=
e/sources/open62541/<br>
&gt;&gt; tools/nodeset_compiler/nodes.<wbr>py&quot;, line 21, in &lt;module=
&gt;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0from datatypes import *<br>
&gt;&gt; |=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/<wbr>workspac=
e/sources/open62541/<br>
&gt;&gt; tools/nodeset_compiler/<wbr>datatypes.py&quot;, line 29, in &lt;mo=
dule&gt;<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0import six<br>
&gt;&gt; | ImportError: No module named six<br>
&gt;&gt; | CMakeFiles/open62541-<wbr>generator-namespace.dir/build.<wbr>mak=
e:71: recipe for<br>
&gt;&gt; target &#39;src_generated/ua_namespace0.<wbr>c&#39; failed<br>
&gt;&gt; | make[2]: *** [src_generated/ua_namespace0.<wbr>c] Error 1<br>
&gt;&gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/build/<br>
&gt;&gt; tmp/work/aarch64-poky-linux/<wbr>open62541/0.3+git999-r0/<wbr>open=
62541-0.3+git999&#39;<br>
&gt;&gt; | CMakeFiles/Makefile2:108: recipe for target &#39;CMakeFiles/open=
62541-<wbr>generator-namespace.dir/all&#39;<br>
&gt;&gt; failed<br>
&gt;&gt; | make[1]: *** [CMakeFiles/open62541-<wbr>generator-namespace.dir/=
all] Error 2<br>
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
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/y=
octo</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--94eb2c0b9e3af3306f0566c3ec30--
