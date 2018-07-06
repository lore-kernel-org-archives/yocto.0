Return-Path: <owestermann@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48369E010F7; Fri,  6 Jul 2018 06:06:45 -0700 (PDT)
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
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20E13E010F3
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 06:06:43 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id r18-v6so7487344ual.13
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 06:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=vAdJLI6JZKKem9wyeDmRQAvjCRqhnn8t8SZYxH70cco=;
	b=hCdMBnD1PUkOUAA30Zt9lv5mUARVh8ErapIidkRS89SmjXSDypC89fp1mUNgu1LsgG
	RY1FBEUaMd1pFEaP9A5SzUtRbSd0MlhRa/U4RzdDPmA7mgIWCiUF+MhVASzSZrWgOq09
	YniiW/aey7h4WXsOm6cpPT8ZdfrRkI/AToQoTqIpnTs2KW68J0sQRq+uqvaKchWSl1CO
	8z0FbJneqlPTTjzpqEJ8czn4t7/HPQAv+uNIhnbuj2Vcsdz1OGOhunyF9NKZRSj1bYmh
	47JUwK99Qzh4LTx8SX3a2vVm1ItLehBKKuZXO4hr37Ak1XU9W/RBpihGAdra3yB7/Auv
	0U9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vAdJLI6JZKKem9wyeDmRQAvjCRqhnn8t8SZYxH70cco=;
	b=HzXp9MoA+PMwAIXE1AdCPQ+rqL5YBLztlDGx3cNPNBA2SfTqUqdvMVjwRrPhcYLc02
	stu141CrktkXkkvnIdiOBX2D8t1nCgnU+zEXNMIpiBw5u27ePs9rQzrXmI7SWNqSBA2g
	UDkVDnFJVsas32LjvgwseAgTU9p5fXffpi4s+3lvzlFV0NclEMYy1i7/C4Am34Noq7Pg
	KSPQ5lx3hlm4+53W9BvWrt8dusOTW33avcAGraH8+P2p5ET6mt1ZNk08ZPDQnlnRmpLN
	HDxcm6uk34jzbd8G/MYC+LF9OToJnpuY/6D/seqrNq7Gh5iFVG6utcm8kMhoLtTnOZ7T
	lrMA==
X-Gm-Message-State: APt69E1P36erhSLkWor3Z8i9QvrsIJktoFCNMW9iNVp25R7ZX5RrIxda
	/9p40jx6YwZVsFgR+t6m8YhLivI55CGNdq58mRg=
X-Google-Smtp-Source: AAOMgpemRC4l3U3Vkl6zkXcEM3KBJSZHlhMyug1rpKTZeTPv3D3FSGi4XXhEfIJJM50hwM1rA3L/PObDZfg81IU7qyo=
X-Received: by 2002:ab0:1724:: with SMTP id j36-v6mr6159433uaf.0.1530882402305;
	Fri, 06 Jul 2018 06:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
	<CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
	<CAJTo0LZTbW7RRUt1rA62VxdwitR9Xac5KrBbuSLtdx5reHrdVQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZTbW7RRUt1rA62VxdwitR9Xac5KrBbuSLtdx5reHrdVQ@mail.gmail.com>
From: Oliver Westermann <owestermann@gmail.com>
Date: Fri, 6 Jul 2018 15:06:31 +0200
Message-ID: <CAGKr=yc-cZArRiH=reK35FCLvUxRs7Rye8eZKnA4evBy+kDCXA@mail.gmail.com>
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
X-List-Received-Date: Fri, 06 Jul 2018 13:06:45 -0000
Content-Type: multipart/alternative; boundary="000000000000c84ee70570545553"

--000000000000c84ee70570545553
Content-Type: text/plain; charset="UTF-8"

Of course, thats the reason I'm here ;)

SUMMARY = "Pillow (The friendly PIL fork)"
HOMEPAGE = "http://python-pillow.org/"
LICENSE = "EPLv1"
LIC_FILES_CHKSUM = "file://LICENSE;md5=c6379001ecb47e2a0420c40177fc1125"

SRC_URI[md5sum] = "52d93a34f4180abcff04876f23eaa9b9"

PYPI_PACKAGE = "Pillow"

inherit pypi setuptools3

BBCLASSEXTEND = "native nativesdk"

DEPENDS = "jpeg zlib"

CLEANBROKEN="1"

So the exact same from above, just with the missing libs as dependencies
and the CLEANBROKEN/do_configure line. I've also deleted and rebuild the
build subdir, are there other things to clean manually to be sure?

Olli

Am Fr., 6. Juli 2018 um 14:58 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:

> What. You've got inherit setuptools3 so it should be using our own
> python3 and have setuptools present. This makes no sense. :/
>
> Can  you share the recipe you're building?
>
> Ross
>
> On 6 July 2018 at 13:56, Oliver Westermann <owestermann@gmail.com> wrote:
> > Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross
> > <ross.burton@intel.com>:
> >>
> >> That's very odd.  I'd suggest maybe something really weird happened,
> >> what happens if you bitbake -cclean python3-pillow ; bitbake
> >> python3-pillow?
> >
> >
> > It fails with another error *dudum*
> >
> > ERROR: python3-pillow-5.2.0-r0 do_compile: python3 setup.py build_ext
> > execution failed.
> > ERROR: python3-pillow-5.2.0-r0 do_compile: Function failed: do_compile
> (log
> > file is located at
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328)
> > ERROR: Logfile of failure stored in:
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | Traceback (most recent call last):
> > |   File "setup.py", line 22, in <module>
> > |     from setuptools import Extension, setup
> > | ImportError: No module named 'setuptools'
> > | ERROR: python3 setup.py build_ext execution failed.
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_compile (log file is located at
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328)
> >
> > Olli
> >
> > Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross
> > <ross.burton@intel.com>:
> >>
> >> On 6 July 2018 at 13:32, Oliver Westermann <owestermann@gmail.com>
> wrote:
> >> >  This does not seem to work as expected. With option 1) and 2) it
> fails
> >> > in
> >> > do_compile:
> >> >
> >> > | DEBUG: Executing shell function do_compile
> >> > |
> >> >
> >> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
> >> > 112:
> >> >
> >> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
> >> >
> >> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
> >> > not found
> >> > | ERROR: python3 setup.py build_ext execution failed.
> >> > | WARNING: exit code 1 from a shell command.
> >> > | ERROR: Function failed: do_compile (log file is located at
> >> >
> >> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)
> >>
> >> That's very odd.  I'd suggest maybe something really weird happened,
> >> what happens if you bitbake -cclean python3-pillow ; bitbake
> >> python3-pillow?
> >>
> >> Ross
>

--000000000000c84ee70570545553
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Of course, thats the reason I&#39;m here ;)<div><br></div>=
<div><div>SUMMARY =3D &quot;Pillow (The friendly PIL fork)&quot;</div><div>=
HOMEPAGE =3D &quot;<a href=3D"http://python-pillow.org/">http://python-pill=
ow.org/</a>&quot;</div><div>LICENSE =3D &quot;EPLv1&quot;</div><div>LIC_FIL=
ES_CHKSUM =3D &quot;file://LICENSE;md5=3Dc6379001ecb47e2a0420c40177fc1125&q=
uot;</div><div><br></div><div>SRC_URI[md5sum] =3D &quot;52d93a34f4180abcff0=
4876f23eaa9b9&quot;</div><div><br></div><div>PYPI_PACKAGE =3D &quot;Pillow&=
quot;</div><div><br></div><div>inherit pypi setuptools3</div><div><br></div=
><div>BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div><br></div><d=
iv>DEPENDS =3D &quot;jpeg zlib&quot;</div><div><br></div><div>CLEANBROKEN=
=3D&quot;1&quot;</div></div><div><br></div><div>So the exact same from abov=
e, just with the missing libs as dependencies and the CLEANBROKEN/do_config=
ure line. I&#39;ve also deleted and rebuild the build subdir, are there oth=
er things to clean manually to be sure?</div><div><br></div><div>Olli</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Am Fr., 6. Juli 2018 =
um 14:58=C2=A0Uhr schrieb Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com">ross.burton@intel.com</a>&gt;:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">What. You&#39;ve got inherit setuptools3 so it should be using our own=
<br>
python3 and have setuptools present. This makes no sense. :/<br>
<br>
Can=C2=A0 you share the recipe you&#39;re building?<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 13:56, Oliver Westermann &lt;<a href=3D"mailto:owesterman=
n@gmail.com" target=3D"_blank">owestermann@gmail.com</a>&gt; wrote:<br>
&gt; Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross<br>
&gt; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; That&#39;s very odd.=C2=A0 I&#39;d suggest maybe something really =
weird happened,<br>
&gt;&gt; what happens if you bitbake -cclean python3-pillow ; bitbake<br>
&gt;&gt; python3-pillow?<br>
&gt;<br>
&gt;<br>
&gt; It fails with another error *dudum*<br>
&gt;<br>
&gt; ERROR: python3-pillow-5.2.0-r0 do_compile: python3 setup.py build_ext<=
br>
&gt; execution failed.<br>
&gt; ERROR: python3-pillow-5.2.0-r0 do_compile: Function failed: do_compile=
 (log<br>
&gt; file is located at<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/temp/log.do_compile.328)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/temp/log.do_compile.328<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | Traceback (most recent call last):<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 22, in &lt;module&gt;<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0from setuptools import Extension, setup<br>
&gt; | ImportError: No module named &#39;setuptools&#39;<br>
&gt; | ERROR: python3 setup.py build_ext execution failed.<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/temp/log.do_compile.328)<br>
&gt;<br>
&gt; Olli<br>
&gt;<br>
&gt; Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross<br>
&gt; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; On 6 July 2018 at 13:32, Oliver Westermann &lt;<a href=3D"mailto:o=
westermann@gmail.com" target=3D"_blank">owestermann@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt; &gt;=C2=A0 This does not seem to work as expected. With option 1) =
and 2) it fails<br>
&gt;&gt; &gt; in<br>
&gt;&gt; &gt; do_compile:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; | DEBUG: Executing shell function do_compile<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky=
-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:<br>
&gt;&gt; &gt; 112:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky=
-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky=
-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native=
/python3:<br>
&gt;&gt; &gt; not found<br>
&gt;&gt; &gt; | ERROR: python3 setup.py build_ext execution failed.<br>
&gt;&gt; &gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt; &gt; | ERROR: Function failed: do_compile (log file is located at<=
br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky=
-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)<br>
&gt;&gt;<br>
&gt;&gt; That&#39;s very odd.=C2=A0 I&#39;d suggest maybe something really =
weird happened,<br>
&gt;&gt; what happens if you bitbake -cclean python3-pillow ; bitbake<br>
&gt;&gt; python3-pillow?<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
</blockquote></div>

--000000000000c84ee70570545553--
