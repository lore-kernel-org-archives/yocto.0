Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 141F1E00B94; Sun,  8 Jun 2014 02:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A829CE00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 02:46:19 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id hw13so6638058qab.32
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 02:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HQGH4NuFc3NTeEAxfgh0jK7lo306LSC4XMxE+lCH/+U=;
	b=wmpNhT5dTCkrPGRm1XFa+Xun+OBEoC5E6dDHmGfJTr4lmWvb2cyBWbKmctWcoIg31j
	UZqdUug1i/CI8mWqkeFDaUaaINnGspeDWBD4tf/7Erfe7j7DGRqGb0EG6Uorl6qRFBG/
	yBBK6smYys1Ig0KtT8oyLu7+tDO5t04DpfxDX2i+b6PNXLIukMHAs8AerQNfyJAWIR/x
	o9p207ldnGBSWFHQJiSXi5ZBTpeLSOj9M11NHrYvnIxV1qDSzp2rnrvMGP2CZIPHZYP3
	/TLqN4kk+fQaT42+EmyeB7aUho8yBiB4wFjR0WHNawXyxX4o3TRQG2sPeZWViy17X2S/
	870g==
X-Received: by 10.140.101.212 with SMTP id u78mr22345446qge.32.1402220779247; 
	Sun, 08 Jun 2014 02:46:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Sun, 8 Jun 2014 02:45:59 -0700 (PDT)
In-Reply-To: <5393FD24.6090807@galauner.de>
References: <5393FD24.6090807@galauner.de>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sun, 8 Jun 2014 06:45:59 -0300
Message-ID: <CAMCfZKEskKHED-Z2PQJRv2tDFw5KHFU5izAtKAaZ6xwQ8e9HCg@mail.gmail.com>
To: Andreas Galauner <andreas@galauner.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python3-distribute-native build fails in daisy
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
X-List-Received-Date: Sun, 08 Jun 2014 09:46:29 -0000
Content-Type: multipart/alternative; boundary=001a11c16cfe71c7a004fb4ff798

--001a11c16cfe71c7a004fb4ff798
Content-Type: text/plain; charset=ISO-8859-1

Andreas,

On Sun, Jun 8, 2014 at 3:05 AM, Andreas Galauner <andreas@galauner.de>
wrote:

> Hi all,
>
> I'm currently trying to add a few python packages to my image for which
> I need Python 3.3 because a few of them depend on asyncio. These
> packages (asyncio itself, websockets and django) are installed with the
> usual distribute setup.py scripts either using setuptools or distribute.
>
> Now when trying to build python3-distribute-native as a build dependency
> for any of these packages, bitbake fails with the following message:
>
> ----------------------------> snip <----------------------------
> > | copying DEVGUIDE.txt -> build/src
> > | copying CHANGES.txt -> build/src
> > | copying README.txt -> build/src
> > | copying MANIFEST.in -> build/src
> > | copying launcher.c -> build/src
> > | Traceback (most recent call last):
> > |   File "setup.py", line 34, in <module>
> > |     util.run_2to3(outfiles_2to3)
> > |   File
> "/media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/distutils/util.py",
> line 507, in run_2to3
> > |     from lib2to3.refactor import RefactoringTool,
> get_fixers_from_package
> > |   File
> "/media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/lib2to3/refactor.py",
> line 19, in <module>
> > |     import logging
> > |   File
> "/media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/logging/__init__.py",
> line 26, in <module>
> > |     import sys, os, time, io, traceback, warnings, weakref
> > | ImportError: No module named 'time'
> > | ERROR: python3 setup.py build_ext execution failed.
> > | WARNING:
> /media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/work/x86_64-linux/python3-distribute-native/0.6.32-ml5/temp/run.do_compile.1363:1
> exit 1 from
> > |   exit 1
> > | ERROR: Function failed: do_compile (log file is located at
> /media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/work/x86_64-linux/python3-distribute-native/0.6.32-ml5/temp/log.do_compile.1363)
> ----------------------------> snip <----------------------------
> (Note: even if the path says openembedded, it's yocto)
>
> When using the devshell to launch python3 and trying to import time, it
> fails in the same way.
> I'm using an up-to-date checkout of the daisy branch.
>
> Any ideas what the cause for this could be and how to solve this?
>
> - Andy
>

I'm getting the same problem for python3-distribute. Take a look bug #6373
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=6373>.
Try to do a "bitbake python3-native -fccompile ; bitbake python3-native -f"
and see if you can go further than me.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c16cfe71c7a004fb4ff798
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Andreas,</div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Sun, Jun 8, 2014 at 3:05 AM, An=
dreas Galauner <span dir=3D"ltr">&lt;<a href=3D"mailto:andreas@galauner.de"=
 target=3D"_blank">andreas@galauner.de</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":48h" class=3D"" style=3D"overflow:hidden">Hi a=
ll,<br>


<br>
I&#39;m currently trying to add a few python packages to my image for which=
<br>
I need Python 3.3 because a few of them depend on asyncio. These<br>
packages (asyncio itself, websockets and django) are installed with the<br>
usual distribute setup.py scripts either using setuptools or distribute.<br=
>
<br>
Now when trying to build python3-distribute-native as a build dependency<br=
>
for any of these packages, bitbake fails with the following message:<br>
<br>
----------------------------&gt; snip &lt;----------------------------<br>
&gt; | copying DEVGUIDE.txt -&gt; build/src<br>
&gt; | copying CHANGES.txt -&gt; build/src<br>
&gt; | copying README.txt -&gt; build/src<br>
&gt; | copying MANIFEST.in -&gt; build/src<br>
&gt; | copying launcher.c -&gt; build/src<br>
&gt; | Traceback (most recent call last):<br>
&gt; | =A0 File &quot;setup.py&quot;, line 34, in &lt;module&gt;<br>
&gt; | =A0 =A0 util.run_2to3(outfiles_2to3)<br>
&gt; | =A0 File &quot;/media/andy/Data/Zedboard/openembedded/build_poky/tmp=
-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/distutils/util.py&quot;, li=
ne 507, in run_2to3<br>
&gt; | =A0 =A0 from lib2to3.refactor import RefactoringTool, get_fixers_fro=
m_package<br>
&gt; | =A0 File &quot;/media/andy/Data/Zedboard/openembedded/build_poky/tmp=
-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/lib2to3/refactor.py&quot;, =
line 19, in &lt;module&gt;<br>
&gt; | =A0 =A0 import logging<br>
&gt; | =A0 File &quot;/media/andy/Data/Zedboard/openembedded/build_poky/tmp=
-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/logging/__init__.py&quot;, =
line 26, in &lt;module&gt;<br>
&gt; | =A0 =A0 import sys, os, time, io, traceback, warnings, weakref<br>
&gt; | ImportError: No module named &#39;time&#39;<br>
&gt; | ERROR: python3 setup.py build_ext execution failed.<br>
&gt; | WARNING: /media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglib=
c/work/x86_64-linux/python3-distribute-native/0.6.32-ml5/temp/run.do_compil=
e.1363:1 exit 1 from<br>
&gt; | =A0 exit 1<br>
&gt; | ERROR: Function failed: do_compile (log file is located at /media/an=
dy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/work/x86_64-linux/pytho=
n3-distribute-native/0.6.32-ml5/temp/log.do_compile.1363)<br>
----------------------------&gt; snip &lt;----------------------------<br>
(Note: even if the path says openembedded, it&#39;s yocto)<br>
<br>
When using the devshell to launch python3 and trying to import time, it<br>
fails in the same way.<br>
I&#39;m using an up-to-date checkout of the daisy branch.<br>
<br>
Any ideas what the cause for this could be and how to solve this?<br>
<br>
- Andy</div></blockquote></div><br>I&#39;m getting the same problem for pyt=
hon3-distribute. Take a look bug <a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6373">#6373</a>.</div><div class=3D"gmail_extra">Try t=
o do a=A0<span style=3D"color:rgb(0,0,0);white-space:pre-wrap">&quot;bitbak=
e python3-native -fccompile ; bitbake python3-native -f&quot; and see if yo=
u can go further than me.</span></div>

<div class=3D"gmail_extra"><br><br clear=3D"all"><div><div dir=3D"ltr"><div=
>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrado=
r do Embarcados<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Das=
sinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Emai=
l%20Diego" target=3D"_blank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c16cfe71c7a004fb4ff798--
