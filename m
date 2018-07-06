Return-Path: <owestermann@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9392E0109C; Fri,  6 Jul 2018 05:33:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (owestermann[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA75BE0089D
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 05:33:04 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id h22-v6so6717379vke.4
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 05:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DOsrtNF+KGsoIEhshs+gq1aU0GsACk1loPkYcKOrS2o=;
	b=GH7PtTRB4tmJWbICZtUQgm/1+M0M+hz0LHsUL0YC5km/pOVSepPF96G8iIeO2vAtYL
	uUieootjcMQuLcNZ1IuezkzgjeUEJqPsTS0GoKS9IPKnegjSQSUu7/0vuChpawzMOlys
	H89hnt8LbG2Wkq9a34vDbft8xGDK5qR71E3eHIOTRPD73CVv4iUrfebyT+yjEiyMnoMF
	uvSroqAjo3BTN0FRlS7oKb6LL4miz+3GH1aIvAZ7Akn2lHhGauBfVKV03helG1984emw
	mj4kXPn4cdW5uLSYU2ibWjh+BsElJCQYNldwEyeYnrWZHaoKk1PIq3uo+ZxGJZBEo7IS
	n+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DOsrtNF+KGsoIEhshs+gq1aU0GsACk1loPkYcKOrS2o=;
	b=CCkz/JPXek7B3M1SChtd62KV+uYoYc4pIFnVIm2NDs9jOpZgxhObAYKB9M+LkNFeSl
	ahZc/MCV9awe7u0reVz9f9JBQEGNxH5dWCW+K9GDWvW2eg5mPqe2rQCicyMMSuTtnqmV
	PBMvx8wAv8CSGRBlrQB7eF+Y85lTW4uPBSCwKNAE/txtZQNMSTMGis8j6/srrCEsUK0J
	fmhXLLQV8DgKK86R1RVajEA7A68jiQkv6TZNx56mif6LjMpmFXvW6B8Zl6GkP4MCLFRg
	AIAQr110YtJhSHRJci6nlc+yCdr1Dx5EW2+8aU6lYI4b4zu3yyfeXXRLhzh2xC82ImaZ
	LWDw==
X-Gm-Message-State: APt69E1ty30p2dJ+XrvY6GFKz4oUN+ev+73pHatY73Ce445uK4ygaZva
	KwLJgyqaPzPVnPotUs3GBkNmSjIiV89C+oEprBI=
X-Google-Smtp-Source: AAOMgpdwcw0vEV8OEdE5YFBMkVoqqJBPnRtoQLWVcG96Y9W+6pdmKusyZ5sAw35DpO8v7u9Cq1AQOjAI7t+NbZsiMOE=
X-Received: by 2002:a1f:f845:: with SMTP id
	w66-v6mr5619312vkh.198.1530880383985; 
	Fri, 06 Jul 2018 05:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
From: Oliver Westermann <owestermann@gmail.com>
Date: Fri, 6 Jul 2018 14:32:53 +0200
Message-ID: <CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 12:33:05 -0000
Content-Type: multipart/alternative; boundary="0000000000007b2fc0057053dd2f"

--0000000000007b2fc0057053dd2f
Content-Type: text/plain; charset="UTF-8"

Am Do., 5. Juli 2018 um 12:59 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:

> On 5 July 2018 at 08:26, Oliver Westermann <owestermann@gmail.com> wrote:
> > I'm fiddeling around with yocto. I want to move some python stuff onto an
> > embedded board and use the nxp mx8 yocto. Everything worked as expected
> > until now, I was able to create yocto recipes for python modules like
> pyv4l2
> > (is there any interest for recipes like these to be commited to
> > meta-python?).
> >
> > Now I wanted to install pillow for some image manipulation, but whereas
> > other python module recipes worked fine, this one fails and I don't
> > understand why.
> >
> > Yocto reports missing setuptools:
> >
> > Log data follows:
> > | DEBUG: Executing shell function do_configure
> > | NOTE: make clean
> > | python setup.py clean
> > | Traceback (most recent call last):
> > |   File "setup.py", line 22, in <module>
> > |     from setuptools import Extension, setup
> > | ImportError: No module named setuptools
> >
> > I've googled around and everything suggests that inherit setuptools3 is
> > missing, but it's present in my recipe. This is my
> python3-pillow_5.2.0.bb:
> >
> > SUMMARY = "Pillow (The friendly PIL fork)"
> > HOMEPAGE = "http://python-pillow.org/"
> > LICENSE = "EPLv1"
> > LIC_FILES_CHKSUM = "file://LICENSE;md5=c6379001ecb47e2a0420c40177fc1125"
> >
> > SRC_URI[md5sum] = "52d93a34f4180abcff04876f23eaa9b9"
> >
> > PYPI_PACKAGE = "Pillow"
> >
> > inherit pypi setuptools3
> >
> > BBCLASSEXTEND = "native nativesdk"
> >
> > Any idea whats missing or what I am doing wrong (other than that the
> license
> > line is incorrect)?
>
> Oh, that's a fun one.
>
> So setuptools/distutils/etc doesn't have the concept of a "configure"
> phase but it also doesn't remove the default implementation.  The
> default implementation will try to do a 'make clean' first to remove
> existing build artifacts.  Normally this does nothing with Python code
> as there's never a Makefile, but pillow has a Makefile.  This makefile
> does 'python setup.py clean', which is running the *host* Python2 and
> you don't have distutils installed.  So, it fails.
>
> Three solutions in order of hackiness (more to less)
> 1) Set CLEANBROKEN="1" in the recipe to stop the clean happening
> 2) Nullify do_configure in the recipe with do_configure[noexec] = "1"
> 3) Override do_configure in distutils3.bbclass to call setup.py
> directly to do a clean in do_configure
>
> I'd say do (1) in your recipe and I'll send a patch for (3) to oe-core.
>
> And yes, this recipe would be very welcome in meta-python.
>
> Ross
>

 This does not seem to work as expected. With option 1) and 2) it fails in
do_compile:

| DEBUG: Executing shell function do_compile
|
/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
112: /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
not found
| ERROR: python3 setup.py build_ext execution failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)

Option 3 seems to be out of my league right now, I'm still missing some
understanding of what happens when in which context :O

But thanks already for the help :)

Olli

--0000000000007b2fc0057053dd2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Am Do., 5. Jul=
i 2018 um 12:59=C2=A0Uhr schrieb Burton, Ross &lt;<a href=3D"mailto:ross.bu=
rton@intel.com">ross.burton@intel.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 5 July 2018 at 08:26, Oliver Westermann=
 &lt;<a href=3D"mailto:owestermann@gmail.com" target=3D"_blank">owestermann=
@gmail.com</a>&gt; wrote:<br>
&gt; I&#39;m fiddeling around with yocto. I want to move some python stuff =
onto an<br>
&gt; embedded board and use the nxp mx8 yocto. Everything worked as expecte=
d<br>
&gt; until now, I was able to create yocto recipes for python modules like =
pyv4l2<br>
&gt; (is there any interest for recipes like these to be commited to<br>
&gt; meta-python?).<br>
&gt;<br>
&gt; Now I wanted to install pillow for some image manipulation, but wherea=
s<br>
&gt; other python module recipes worked fine, this one fails and I don&#39;=
t<br>
&gt; understand why.<br>
&gt;<br>
&gt; Yocto reports missing setuptools:<br>
&gt;<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_configure<br>
&gt; | NOTE: make clean<br>
&gt; | python setup.py clean<br>
&gt; | Traceback (most recent call last):<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 22, in &lt;module&gt;<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0from setuptools import Extension, setup<br>
&gt; | ImportError: No module named setuptools<br>
&gt;<br>
&gt; I&#39;ve googled around and everything suggests that inherit setuptool=
s3 is<br>
&gt; missing, but it&#39;s present in my recipe. This is my <a href=3D"http=
://python3-pillow_5.2.0.bb" rel=3D"noreferrer" target=3D"_blank">python3-pi=
llow_5.2.0.bb</a>:<br>
&gt;<br>
&gt; SUMMARY =3D &quot;Pillow (The friendly PIL fork)&quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://python-pillow.org/" rel=3D"norefe=
rrer" target=3D"_blank">http://python-pillow.org/</a>&quot;<br>
&gt; LICENSE =3D &quot;EPLv1&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dc6379001ecb47e2a0420c4=
0177fc1125&quot;<br>
&gt;<br>
&gt; SRC_URI[md5sum] =3D &quot;52d93a34f4180abcff04876f23eaa9b9&quot;<br>
&gt;<br>
&gt; PYPI_PACKAGE =3D &quot;Pillow&quot;<br>
&gt;<br>
&gt; inherit pypi setuptools3<br>
&gt;<br>
&gt; BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
&gt;<br>
&gt; Any idea whats missing or what I am doing wrong (other than that the l=
icense<br>
&gt; line is incorrect)?<br>
<br>
Oh, that&#39;s a fun one.<br>
<br>
So setuptools/distutils/etc doesn&#39;t have the concept of a &quot;configu=
re&quot;<br>
phase but it also doesn&#39;t remove the default implementation.=C2=A0 The<=
br>
default implementation will try to do a &#39;make clean&#39; first to remov=
e<br>
existing build artifacts.=C2=A0 Normally this does nothing with Python code=
<br>
as there&#39;s never a Makefile, but pillow has a Makefile.=C2=A0 This make=
file<br>
does &#39;python setup.py clean&#39;, which is running the *host* Python2 a=
nd<br>
you don&#39;t have distutils installed.=C2=A0 So, it fails.<br>
<br>
Three solutions in order of hackiness (more to less)<br>
1) Set CLEANBROKEN=3D&quot;1&quot; in the recipe to stop the clean happenin=
g<br>
2) Nullify do_configure in the recipe with do_configure[noexec] =3D &quot;1=
&quot;<br>
3) Override do_configure in distutils3.bbclass to call setup.py<br>
directly to do a clean in do_configure<br>
<br>
I&#39;d say do (1) in your recipe and I&#39;ll send a patch for (3) to oe-c=
ore.<br>
<br>
And yes, this recipe would be very welcome in meta-python.<br>
<br>
Ross<br></blockquote><div><br></div><div>=C2=A0This does not seem to work a=
s expected. With option 1) and 2) it fails in do_compile:</div><div><br></d=
iv><div><div></div><div>| DEBUG: Executing shell function do_compile</div><=
div>| /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/p=
ython3-pillow/5.2.0-r0/temp/run.do_compile.14093: 112: /data/workspace/yoct=
o-build/build/<span style=3D"font-size:small;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">mysys</span>/tmp/work/aarch64-poky-linux/python3-pillow/5.2=
.0-r0/temp/run.do_compile.14093: /data/workspace/yocto-build/build/<span st=
yle=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline">mysys<=
/span>/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-n=
ative/usr/bin/python3-native/python3: not found</div><div>| ERROR: python3 =
setup.py build_ext execution failed.</div><div>| WARNING: exit code 1 from =
a shell command.</div><div>| ERROR: Function failed: do_compile (log file i=
s located at /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-=
linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)</div></div><div><b=
r></div><div>Option 3 seems to be out of my league right now, I&#39;m still=
 missing some understanding of what happens when in which context :O</div><=
div><br></div><div>But thanks already for the help :)</div><div><br></div><=
div>Olli<br><br></div></div></div>

--0000000000007b2fc0057053dd2f--
