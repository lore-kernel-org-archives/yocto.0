Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E017AE00D24; Fri, 21 Dec 2018 08:49:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yw1-f42.google.com (mail-yw1-f42.google.com
	[209.85.161.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3370E00C58
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 08:49:08 -0800 (PST)
Received: by mail-yw1-f42.google.com with SMTP id p65so1199412ywe.0
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 08:49:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SXGjqvCGfTPDZgtPgYlhTLLKGXxBuPG6qIhMNLxWblo=;
	b=p5HgtaYpcSRjo/QQ9Z6Ukd6NsscqqUSJsYkEKJ+asMf/Gzdo52nfBOtVNufdB7ro3L
	TqeceEqk70Fe20QRqiNdsRrBStAvnIts8Qgo0JXi++rOlkmmTsOLmbdB3CsmYOY5LePz
	RE+lryltJa5wvCJPkwFpYuIehmRfT6LIevW7Ia1S3FcicwYUp9Vvxq47SIzwrKfAVs8Z
	rXAG+x7afE1QWllySG1tSFweCWSGsW5VabvH5HgDvuQQY26kvolmJYMOTFqXkwyxWynS
	H81Xgwlq83OUUTtfTH6lkgJmB5J41Vfqa1pJEOeCOZA+mGxfu8JV8k74glVw5iREer6p
	3N/w==
X-Gm-Message-State: AA+aEWaaaLk6HGall2T/KzlvyV04/MSW/htv6gRtvwPBIW6rbDhqJEcF
	oj4ngiA5opIVFh1Dc/x+7z7ybLWRG8z8jgeEbHpOVw==
X-Google-Smtp-Source: AFSGD/WyihDnSkOBLOD4vDsOM1U8ikRYSOPtQ2bcjVsIl8LIyz+DuodQZlna6GhZDgTaVVd/jk2TDhzx2v9r4RTrxr4=
X-Received: by 2002:a81:7ad0:: with SMTP id v199mr3311959ywc.149.1545410947673;
	Fri, 21 Dec 2018 08:49:07 -0800 (PST)
MIME-Version: 1.0
References: <CAB6-Vt+dvn1VwmvX7Q854rDvZ2qPqkRhm=uX3sgS0nfBkokLXg@mail.gmail.com>
	<CAJTo0Lau_jdwPCxHZtd+MN7a-fVscq-w4fkPvPAzr3tBpibsqQ@mail.gmail.com>
	<CAB6-VtLLHe+8Doe1jqbi0SKQkvBcq7u=u+89rWhT7HSofv5BFA@mail.gmail.com>
In-Reply-To: <CAB6-VtLLHe+8Doe1jqbi0SKQkvBcq7u=u+89rWhT7HSofv5BFA@mail.gmail.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Fri, 21 Dec 2018 17:48:56 +0100
Message-ID: <CAB6-VtLP18=1zjKUdL0ewjMW9tOMSx+1i6ar6NBQQ-eMJqjuiQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Python3 and pathlib/ntpath
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
X-List-Received-Date: Fri, 21 Dec 2018 16:49:10 -0000
Content-Type: multipart/alternative; boundary="0000000000009189f3057d8b0674"

--0000000000009189f3057d8b0674
Content-Type: text/plain; charset="UTF-8"

Adding python3-misc did not seem to make a difference.

// Einar

Den fre 21 dec. 2018 15:16 skrev Einar Vading <yocto-ml@vading.se>:

> I'm installing using the recipe.
>
> Running Sumo and the meson recipe has:
> RDEPENDS_${PN} = "ninja python3-core python3-modules"
>
> I'll try to add python3-misc to RDEPENDS.
>
> // Einar
>
> On Fri, Dec 21, 2018 at 2:58 PM Burton, Ross <ross.burton@intel.com>
> wrote:
> >
> > pathlib is in python3-misc:
> >
> > $ oe-pkgdata-util find-path */pathlib.py
> > python3-misc: /usr/lib/python3.5/pathlib.py
> >
> > And Meson in Thud at least has a dependency on python3-misc, so you
> > shoudn't need to do anything.
> >
> > What release are you using?
> >
> > Or, are you trying to install Meson from source inside the image,
> > instead of using the recipe?  In that case ensure that you have all of
> > Python installed, easiest way is to add python3 to IMAGE_INSTALL.
> >
> > Ross
> >
> > On Fri, 21 Dec 2018 at 13:17, Einar Vading <yocto-ml@vading.se> wrote:
> > >
> > > Hi,
> > >
> > > I was trying to install meson on target for a machine that creates a
> > > docker image for us. When I try to start meson however I get an error
> > > message that pathlib can't be found. With the patch below I got it to
> > > work but my question is if there is another way? Or if the patch would
> > > be acceptable upstream?
> > >
> > > Best regards,
> > > Einar
> > >
> > > diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json
> > > b/meta/recipes-devtools/python/python3/python3-manifest.json
> > > index 2491f36db2..42a5680c65 100644
> > > --- a/meta/recipes-devtools/python/python3/python3-manifest.json
> > > +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
> > > @@ -154,10 +154,12 @@
> > >              "${libdir}/python3.5/__pycache__/keyword.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/linecache.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/locale.*.pyc",
> > > +            "${libdir}/python3.5/__pycache__/ntpath.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/opcode.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/operator.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/optparse.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/os.*.pyc",
> > > +            "${libdir}/python3.5/__pycache__/pathlib.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/platform.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/posixpath.*.pyc",
> > >              "${libdir}/python3.5/__pycache__/re.*.pyc",
> > > @@ -269,10 +271,12 @@
> > >              "${libdir}/python3.5/linecache.py",
> > >              "${libdir}/python3.5/locale.py",
> > >              "${libdir}/python3.5/new.py",
> > > +            "${libdir}/python3.5/ntpath.py",
> > >              "${libdir}/python3.5/opcode.py",
> > >              "${libdir}/python3.5/operator.py",
> > >              "${libdir}/python3.5/optparse.py",
> > >              "${libdir}/python3.5/os.py",
> > > +            "${libdir}/python3.5/pathlib.py",
> > >              "${libdir}/python3.5/platform.py",
> > >              "${libdir}/python3.5/posixpath.py",
> > >              "${libdir}/python3.5/re.py",
> > > @@ -1146,4 +1150,4 @@
> > >          ],
> > >          "summary": "Python XML-RPC support"
> > >      }
> > > -}
> > > \ No newline at end of file
> > > +}
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000009189f3057d8b0674
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Adding python3-misc did not seem to make a differenc=
e.</div><div dir=3D"auto"><br></div><div dir=3D"auto">// Einar<br><br><div =
class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr">Den fre 21 dec. 2018 15=
:16 skrev Einar Vading &lt;<a href=3D"mailto:yocto-ml@vading.se">yocto-ml@v=
ading.se</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;m installin=
g using the recipe.<br>
<br>
Running Sumo and the meson recipe has:<br>
RDEPENDS_${PN} =3D &quot;ninja python3-core python3-modules&quot;<br>
<br>
I&#39;ll try to add python3-misc to RDEPENDS.<br>
<br>
// Einar<br>
<br>
On Fri, Dec 21, 2018 at 2:58 PM Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank" rel=3D"noreferrer">ross.burton@intel.com</=
a>&gt; wrote:<br>
&gt;<br>
&gt; pathlib is in python3-misc:<br>
&gt;<br>
&gt; $ oe-pkgdata-util find-path */pathlib.py<br>
&gt; python3-misc: /usr/lib/python3.5/pathlib.py<br>
&gt;<br>
&gt; And Meson in Thud at least has a dependency on python3-misc, so you<br=
>
&gt; shoudn&#39;t need to do anything.<br>
&gt;<br>
&gt; What release are you using?<br>
&gt;<br>
&gt; Or, are you trying to install Meson from source inside the image,<br>
&gt; instead of using the recipe?=C2=A0 In that case ensure that you have a=
ll of<br>
&gt; Python installed, easiest way is to add python3 to IMAGE_INSTALL.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On Fri, 21 Dec 2018 at 13:17, Einar Vading &lt;<a href=3D"mailto:yocto=
-ml@vading.se" target=3D"_blank" rel=3D"noreferrer">yocto-ml@vading.se</a>&=
gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I was trying to install meson on target for a machine that create=
s a<br>
&gt; &gt; docker image for us. When I try to start meson however I get an e=
rror<br>
&gt; &gt; message that pathlib can&#39;t be found. With the patch below I g=
ot it to<br>
&gt; &gt; work but my question is if there is another way? Or if the patch =
would<br>
&gt; &gt; be acceptable upstream?<br>
&gt; &gt;<br>
&gt; &gt; Best regards,<br>
&gt; &gt; Einar<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/meta/recipes-devtools/python/python3/python3-manifes=
t.json<br>
&gt; &gt; b/meta/recipes-devtools/python/python3/python3-manifest.json<br>
&gt; &gt; index 2491f36db2..42a5680c65 100644<br>
&gt; &gt; --- a/meta/recipes-devtools/python/python3/python3-manifest.json<=
br>
&gt; &gt; +++ b/meta/recipes-devtools/python/python3/python3-manifest.json<=
br>
&gt; &gt; @@ -154,10 +154,12 @@<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/keyword.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/linecache.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/locale.*.pyc&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/python=
3.5/__pycache__/ntpath.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/opcode.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/operator.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/optparse.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/os.*.pyc&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/python=
3.5/__pycache__/pathlib.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/platform.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/posixpath.*.pyc&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/__pycache__/re.*.pyc&quot;,<br>
&gt; &gt; @@ -269,10 +271,12 @@<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/linecache.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/locale.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/new.py&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/python=
3.5/ntpath.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/opcode.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/operator.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/optparse.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/os.py&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/python=
3.5/pathlib.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/platform.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/posixpath.py&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/p=
ython3.5/re.py&quot;,<br>
&gt; &gt; @@ -1146,4 +1150,4 @@<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;summary&quot;: &quot;Pyth=
on XML-RPC support&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt; -}<br>
&gt; &gt; \ No newline at end of file<br>
&gt; &gt; +}<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=
=3D"noreferrer">yocto@yoctoproject.org</a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/lis=
tinfo/yocto</a><br>
</blockquote></div></div></div>

--0000000000009189f3057d8b0674--
