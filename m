Return-Path: <owestermann@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBDE9E00D47; Fri,  6 Jul 2018 05:56:29 -0700 (PDT)
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
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92ECE00AD8
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 05:56:28 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id b77-v6so6756285vkb.5
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 05:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Q00WtIM8jUMUqRDycMm3fnP7ETb9esEMxjAgshnpd7Q=;
	b=qPXmJg13h8dxm7/SlUZce/NxkKn1gOXI/IJYhD2qnEA68knBsjbo4mivgYBGfcfkPI
	yyCOyo0bpKy/fI1aRHJVUozgjyMiqfIYNP+cNspDEDEl0Kki47vtH0hc1ihOLq3Cu+s+
	swx8BVrat0PxC1NXc81jfgbK6hp4oJCiW513UOShq6MWf2SxVKwtLALI7UUzxCtIJT7L
	xxBwRzenziSi44jlN/eaf+B98QElGo5UofMRrZ6LPoMjS+EWVYzkVzjQD3TAiEi2cBUT
	aG8r4688vCZUX00j4J2IWW0Od7HHfcqOm5wFlgciEmIbvO6bITw86mY1cQaSbeod9mKz
	+jdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Q00WtIM8jUMUqRDycMm3fnP7ETb9esEMxjAgshnpd7Q=;
	b=JuVr4o/FpT/e54HbOPWoVyCbO0TXaFb4yHlQjIa9pOkTxciuFCCf5wbH895KGD3gpy
	+zTrG8tVs6RBSwd5qop82tOLEB8Lhnr4k/WAfJEG6dJoVckyc9xB9BuoTyxdkqpEKso4
	zCNHUNFTRvGco9/AcdKU1//zZZUFVXZlpX/KztYBoN5Hn1Djjd4qugmxxny0u0TgAqJO
	Up5j/hoBbm3okhFe3IhB1bx6ewy4zoDZk8GlCGnoOHwnto/iBdquINdxjocg59btmOnY
	g3uGqPIeHPxCpXiv/5b1B+2XdWFlm+C7rGbZlYDLlVmEKv5DMaXNuofCvLpk+2dkX9Ke
	rlEg==
X-Gm-Message-State: APt69E1uilOXuYTm/4k4F3Ee48u1WNwxqbYBvzEcEQ/n46gtr6VIf1XR
	GR3ouBxhsq2aEh4UYQ03EzrNAvfk2uF5/OgEQ7I=
X-Google-Smtp-Source: AAOMgpfW1rHYknXAqvhljgOirU7ZFpmkn/pAtfZIiS81pAbT+pht1YRgLqNUuh5dR+pbTVqE0cWDH1F5+Fs8TK6vQYA=
X-Received: by 2002:a1f:4ec6:: with SMTP id
	c189-v6mr5684980vkb.188.1530881788168; 
	Fri, 06 Jul 2018 05:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
From: Oliver Westermann <owestermann@gmail.com>
Date: Fri, 6 Jul 2018 14:56:17 +0200
Message-ID: <CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 06 Jul 2018 12:56:29 -0000
Content-Type: multipart/alternative; boundary="0000000000002d4ea6057054318d"

--0000000000002d4ea6057054318d
Content-Type: text/plain; charset="UTF-8"

 Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:

> That's very odd.  I'd suggest maybe something really weird happened,
> what happens if you bitbake -cclean python3-pillow ; bitbake
> python3-pillow?
>

It fails with another error *dudum*

ERROR: python3-pillow-5.2.0-r0 do_compile: python3 setup.py build_ext
execution failed.
ERROR: python3-pillow-5.2.0-r0 do_compile: Function failed: do_compile (log
file is located at
/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328)
ERROR: Logfile of failure stored in:
/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328
Log data follows:
| DEBUG: Executing shell function do_compile
| Traceback (most recent call last):
|   File "setup.py", line 22, in <module>
|     from setuptools import Extension, setup
| ImportError: No module named 'setuptools'
| ERROR: python3 setup.py build_ext execution failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.328)

Olli

Am Fr., 6. Juli 2018 um 14:38 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:

> On 6 July 2018 at 13:32, Oliver Westermann <owestermann@gmail.com> wrote:
> >  This does not seem to work as expected. With option 1) and 2) it fails
> in
> > do_compile:
> >
> > | DEBUG: Executing shell function do_compile
> > |
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
> > 112:
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
> > not found
> > | ERROR: python3 setup.py build_ext execution failed.
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_compile (log file is located at
> >
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)
>
> That's very odd.  I'd suggest maybe something really weird happened,
> what happens if you bitbake -cclean python3-pillow ; bitbake
> python3-pillow?
>
> Ross
>

--0000000000002d4ea6057054318d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<div dir=3D"ltr" style=3D"font-size:small;text-decoration-style:initial;tex=
t-decoration-color:initial">Am Fr., 6. Juli 2018 um 14:38=C2=A0Uhr schrieb =
Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel=
.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"font-size=
:small;text-decoration-style:initial;text-decoration-color:initial;margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">T=
hat&#39;s very odd.=C2=A0 I&#39;d suggest maybe something really weird happ=
ened,<br>what happens if you bitbake -cclean python3-pillow ; bitbake<br>py=
thon3-pillow?<br></blockquote><div style=3D"font-size:small;text-decoration=
-style:initial;text-decoration-color:initial">=C2=A0</div><div style=3D"fon=
t-size:small;text-decoration-style:initial;text-decoration-color:initial">I=
t fails with another error *dudum*</div><div style=3D"font-size:small;text-=
decoration-style:initial;text-decoration-color:initial"><br></div><div styl=
e=3D"font-size:small;text-decoration-style:initial;text-decoration-color:in=
itial"><div>ERROR: python3-pillow-5.2.0-r0 do_compile: python3 setup.py bui=
ld_ext execution failed.</div><div>ERROR: python3-pillow-5.2.0-r0 do_compil=
e: Function failed: do_compile (log file is located at /data/workspace/yoct=
o-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/tem=
p/log.do_compile.328)</div><div>ERROR: Logfile of failure stored in: /data/=
workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillo=
w/5.2.0-r0/temp/log.do_compile.328</div><div>Log data follows:</div><div>| =
DEBUG: Executing shell function do_compile</div><div>| Traceback (most rece=
nt call last):</div><div>|=C2=A0 =C2=A0File &quot;setup.py&quot;, line 22, =
in &lt;module&gt;</div><div>|=C2=A0 =C2=A0 =C2=A0from setuptools import Ext=
ension, setup</div><div>| ImportError: No module named &#39;setuptools&#39;=
</div><div>| ERROR: python3 setup.py build_ext execution failed.</div><div>=
| WARNING: exit code 1 from a shell command.</div><div>| ERROR: Function fa=
iled: do_compile (log file is located at /data/workspace/yocto-build/build/=
mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compi=
le.328)</div></div><div style=3D"font-size:small;text-decoration-style:init=
ial;text-decoration-color:initial"><br></div><div style=3D"font-size:small;=
text-decoration-style:initial;text-decoration-color:initial">Olli</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr">Am Fr., 6. Juli 2018 um 1=
4:38=C2=A0Uhr schrieb Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.=
com">ross.burton@intel.com</a>&gt;:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On 6 July 2018 at 13:32, Oliver Westermann &lt;<a href=3D"mailto:owesterma=
nn@gmail.com" target=3D"_blank">owestermann@gmail.com</a>&gt; wrote:<br>
&gt;=C2=A0 This does not seem to work as expected. With option 1) and 2) it=
 fails in<br>
&gt; do_compile:<br>
&gt;<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; |<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/temp/run.do_compile.14093:<br>
&gt; 112:<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/temp/run.do_compile.14093:<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:=
<br>
&gt; not found<br>
&gt; | ERROR: python3 setup.py build_ext execution failed.<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/py=
thon3-pillow/5.2.0-r0/temp/log.do_compile.14093)<br>
<br>
That&#39;s very odd.=C2=A0 I&#39;d suggest maybe something really weird hap=
pened,<br>
what happens if you bitbake -cclean python3-pillow ; bitbake<br>
python3-pillow?<br>
<br>
Ross<br>
</blockquote></div>

--0000000000002d4ea6057054318d--
