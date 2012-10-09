Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 690F0E01302
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 19:23:55 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id t2so3490231qcq.28
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2012 19:23:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=rsmKNgUHfDtFNSNUiyjhCn9N7mZNwmHHYq3Il7H3geg=;
	b=jxRRH8DHERwtnUO0kghK1kDI67A1Bn7hv9fCgwgtxo6VI5PfZSfS22afo48wiKzJab
	2H6PyyV+FcZ6wscNscDLfudZGr053sVsyEL+/bCAZPIq3yf3iX7OJCURYeDOQHtwVKHo
	hzyo93K+hMoRbzYyQLieb80Y3NIVEGZ5QUOGlSQgXPWrp/lvuxXzZFlklzjCqDHyAhLF
	jCidGqBErDS6hz41yi+CKWQisc622vn4ZoYmrLwI/XgZ5RGXEZqWw7QzZXmoKD4ILkTx
	pYE8/VOJlqw853rHQFHFCQu9C36OSFdngZfz0u7fkzUNiwkd+n5BfS419ig/dp/1/2ct
	KqGA==
MIME-Version: 1.0
Received: by 10.49.71.77 with SMTP id s13mr45767227qeu.17.1349749432419; Mon,
	08 Oct 2012 19:23:52 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Mon, 8 Oct 2012 19:23:52 -0700 (PDT)
In-Reply-To: <A4CBB3C5-9355-4C1E-8324-55AF1849E0CF@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
	<1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
	<CA+gsK-qzq5dK4QwOq1kw1U8tNbhDt-UZsRha-_ZKu0Kw8AWFAg@mail.gmail.com>
	<A4CBB3C5-9355-4C1E-8324-55AF1849E0CF@gamestop.com>
Date: Mon, 8 Oct 2012 19:23:52 -0700
X-Google-Sender-Auth: KKCxAkPze07H-YT3dm-0JWYXvqc
Message-ID: <CA+gsK-obQLKv9LnMiqAiukKcoPBN3Bijn-oYhdUrvJ9yp12w=g@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Gm-Message-State: ALoCoQkFoiIljiYBKmRsyK7TsbovrD6EqItm1rz+lvENR8ym2Psl3JvUw7EFY4BD2c9H6G9eA0zJ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The BitBake equivalent of "Hello, World!"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Oct 2012 02:23:55 -0000
Content-Type: multipart/alternative; boundary=047d7b6da4cc7486a804cb9707a7

--047d7b6da4cc7486a804cb9707a7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The T variable points to a directory were Bitbake places temporary files
when building a particular package. It is typically set to

T =3D ${WORKDIR}/temp

WORKDIR is the directory into which Bitbake unpacks and builds a package.
The default bitbake.conf file sets this variable.

T is not to be confused with TMPDIR which points to the root of the
directory tree where Bitbake puts the output of an entire build.

:rjs

On Mon, Oct 8, 2012 at 5:30 PM, Patrick Turley
<PatrickTurley@gamestop.com>wrote:

>  I am continuing my work on creating a "Hello, World!" BitBake project.
> Because of the excellent help I got before, things have gone reasonably
> well, but I'm again running into something I don't know how to fix.
>
>  As before, the entire contents of my very small project appear at the
> end of this message. Here's what works fine:
>
>
>      $ ../BitBake/bin/bitbake-layers show-layers
>     Parsing recipes..done.
>
>      layer     path                                    priority
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>     LayerA    /home/pturley/Workspace/Hello/LayerA    1
>
>      $ ../BitBake/bin/bitbake-layers show-recipes
>     Parsing recipes..done.
>     =3D=3D=3D Available recipes: =3D=3D=3D
>     a:
>       LayerA               1
>
>
>  When I tried this:
>
>
>      ../BitBake/bin/bitbake -c listtasks a
>
>
>  I got a Python stack trace that ended here:
>
>
>        File "../BitBake/lib/bb/runqueue.py", line 902, in
> RunQueue.check_stamp_task(task=3D0, taskname=3D'do_listtasks', recurse=3D=
False):
>                  # If the stamp is missing its not current
>         >        if not os.access(stampfile, os.F_OK):
>                      logger.debug(2, "Stampfile %s not available",
> stampfile)
>     TypeError: coercing to Unicode: need string or buffer, NoneType found
>
>
>  This code isn't expecting the "stampfile" variable to be "None" (which
> it is), so it freaks out. I made a very simple fix to get past the proble=
m:
>
>
>      if not stampfile or not os.access(stampfile, os.F_OK):
>
>
>  That made a dramatic difference, and enabled me to get this far:
>
>
>      $ ../BitBake/bin/bitbake -c listtasks a
>     Loading cache: 100%
> |###############################################################| ETA:
>  00:00:00
>     Loaded 2 entries from dependency cache.
>     NOTE: Resolving any missing task queue dependencies
>     NOTE: Preparing runqueue
>     NOTE: Executing RunQueue Tasks
>     NOTE: Running task 1 of 1 (ID: 0, /home/pturley/Workspace/Hello/Layer=
A/
> a.bb, do_listtasks)
>     ERROR: T variable not set, unable to build
>     ERROR: Task 0 (/home/pturley/Workspace/Hello/LayerA/a.bb,
> do_listtasks) failed with exit code '1'
>     NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
>      Summary: 1 task failed:
>       /home/pturley/Workspace/Hello/LayerA/a.bb, do_listtasks
>     Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
>
>      $ ../BitBake/bin/bitbake a
>     Loading cache: 100%
> |###############################################################| ETA:
>  00:00:00
>     Loaded 2 entries from dependency cache.
>     NOTE: Resolving any missing task queue dependencies
>     NOTE: Preparing runqueue
>     NOTE: Executing RunQueue Tasks
>     NOTE: Running task 1 of 1 (ID: 0, /home/pturley/Workspace/Hello/Layer=
A/
> a.bb, do_build)
>     ERROR: T variable not set, unable to build
>     ERROR: Task 0 (/home/pturley/Workspace/Hello/LayerA/a.bb, do_build)
> failed with exit code '1'
>     NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
>      Summary: 1 task failed:
>       /home/pturley/Workspace/Hello/LayerA/a.bb, do_build
>     Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
>
>
>  As you can see, BitBake is expecting the "T" variable to be set.  I
> don't think I've ever seen this variable -- so I don't know what it's for
> or what I should change.
>
>  Can anyone offer a hint?
>
>
>  ------------------------------------------------------------
>
>
>  =E2=94=9C=E2=94=80=E2=94=80 build
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
> =E2=94=82   =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 base.bbclass
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82       |  addtask listtasks
> =E2=94=82   =E2=94=82       |
> =E2=94=82   =E2=94=82       |  do_listtasks[nostamp] =3D "1"
> =E2=94=82   =E2=94=82       |
> =E2=94=82   =E2=94=82       |  python do_listtasks() {
> =E2=94=82   =E2=94=82       |          import sys
> =E2=94=82   =E2=94=82       |          # emit variables and shell functio=
ns
> =E2=94=82   =E2=94=82       |          #bb.data.emit_env(sys.__stdout__, =
d)
> =E2=94=82   =E2=94=82       |          # emit the metadata which isnt val=
id shell
> =E2=94=82   =E2=94=82       |          for e in d.keys():
> =E2=94=82   =E2=94=82       |                  if d.getVarFlag(e, 'task')=
:
> =E2=94=82   =E2=94=82       |                          bb.plain("%s" % e)
> =E2=94=82   =E2=94=82       |  }
> =E2=94=82   =E2=94=82       |
> =E2=94=82   =E2=94=82       |  addtask build
> =E2=94=82   =E2=94=82       |
> =E2=94=82   =E2=94=82       |  do_build() {
> =E2=94=82   =E2=94=82       |      echo "Hello"
> =E2=94=82   =E2=94=82       |  }
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 conf
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=82   +--------------------------------------------=
---
> =E2=94=82       =E2=94=82   |  BBLAYERS ?=3D " \
> =E2=94=82       =E2=94=82   |    /home/pturley/Workspace/Hello/LayerA \
> =E2=94=82       =E2=94=82   |    "
> =E2=94=82       =E2=94=82   +--------------------------------------------=
---
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 bitbake.conf
> =E2=94=82
> =E2=94=82           +-----------------------------------------------
> =E2=94=82           |  CACHE =3D "${TOPDIR}/cache"
> =E2=94=82           +-----------------------------------------------
> =E2=94=82
> =E2=94=9C=E2=94=80=E2=94=80 LayerA
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 a.bb
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82       |  DESCRIPTION =3D "Layer A Main Recipe"
> =E2=94=82   =E2=94=82       |  PN =3D 'a'
> =E2=94=82   =E2=94=82       |  PV =3D '1'
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 conf
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=82
> =E2=94=82           +-----------------------------------------------
> =E2=94=82           |  BBPATH .=3D ":${LAYERDIR}"
> =E2=94=82           |
> =E2=94=82           |  BBFILES +=3D "${LAYERDIR}/*.bb"
> =E2=94=82           |
> =E2=94=82           |  BBFILE_COLLECTIONS +=3D "A"
> =E2=94=82           |  BBFILE_PATTERN_A :=3D "^${LAYERDIR}/"
> =E2=94=82           +-----------------------------------------------
> =E2=94=82
> =E2=94=94=E2=94=80=E2=94=80 BitBake
>
>     The BitBake directory origin is:
>
>         http://git.openembedded.org/bitbake/
>
>     I have the 1.15.2 tag checked out, which is what
>    Yocto denzil uses.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b6da4cc7486a804cb9707a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The T variable points to a directory were Bitbake places temporary files wh=
en building a particular package. It is typically set to<div><br></div><div=
>T =3D ${WORKDIR}/temp</div><div><br></div><div>WORKDIR is the directory in=
to which Bitbake unpacks and builds a package. The default bitbake.conf fil=
e sets this variable.</div>
<div><br></div><div>T is not to be confused with TMPDIR which points to the=
 root of the directory tree where Bitbake puts the output of an entire buil=
d.</div><div><br></div><div>:rjs<br><br><div class=3D"gmail_quote">On Mon, =
Oct 8, 2012 at 5:30 PM, Patrick Turley <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:PatrickTurley@gamestop.com" target=3D"_blank">PatrickTurley@gamestop.co=
m</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">



<div style=3D"word-wrap:break-word">
<div>I am continuing my work on creating a &quot;Hello, World!&quot; BitBak=
e project. Because of the excellent help I got before, things have gone rea=
sonably well, but I&#39;m again running into something I don&#39;t know how=
 to fix.</div>

<div><br>
</div>
<div>As before, the entire contents of my very small project appear at the =
end of this message. Here&#39;s what works fine:</div>
<div><br>
</div>
<div><br>
</div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 $ ../BitBa=
ke/bin/bitbake-layers show-layers</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Parsing re=
cipes..done.</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 layer =C2=
=A0 =C2=A0 path =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priority<=
/font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 LayerA =C2=
=A0 =C2=A0/home/pturley/Workspace/Hello/LayerA =C2=A0 =C2=A01</font></div><=
div class=3D"im">
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 $ ../BitBa=
ke/bin/bitbake-layers show-recipes</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Parsing re=
cipes..done.</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =3D=3D=3D =
Available recipes: =3D=3D=3D</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 a:</font><=
/div>
</div><div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=
=A0 LayerA =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1</font></div>
<div><br>
</div>
<div><br>
</div>
<div>When I tried this:</div>
<div><br>
</div>
<div><br>
</div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 ../BitBake=
/bin/bitbake -c listtasks a</font></div>
<div><br>
</div>
<div><br>
</div>
<div>I got a Python stack trace that ended here:</div>
<div><br>
</div>
<div><br>
</div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 Fil=
e &quot;../BitBake/lib/bb/runqueue.py&quot;, line 902, in RunQueue.check_st=
amp_task(task=3D0, taskname=3D&#39;do_listtasks&#39;, recurse=3DFalse):</fo=
nt></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# If the stamp is missing its not cur=
rent</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0if not os.access(stampfile, os.F_OK):</=
font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger.debug(2, &quot;S=
tampfile %s not available&quot;, stampfile)</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 TypeError:=
 coercing to Unicode: need string or buffer, NoneType found</font></div>
<div><br>
</div>
<div><br>
</div>
<div>This code isn&#39;t expecting the &quot;<span style=3D"font-size:14px"=
><font face=3D"Menlo">stampfile</font></span>&quot; variable to be &quot;<f=
ont face=3D"Menlo" style=3D"font-size:14px">None</font>&quot; (which it is)=
, so it freaks out. I made a very simple fix to get past the
 problem:</div>
<div><br>
</div>
<div><br>
</div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 if not sta=
mpfile or not os.access(stampfile, os.F_OK):</font></div>
<div><br>
</div>
<div><br>
</div>
<div>That made a dramatic difference, and enabled me to get this far:</div>
<div><br>
</div>
<div><br>
</div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 $ ../BitBa=
ke/bin/bitbake -c listtasks a</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Loading ca=
che: 100% |###############################################################|=
 ETA: =C2=A000:00:00</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Loaded 2 e=
ntries from dependency cache.</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Reso=
lving any missing task queue dependencies</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Prep=
aring runqueue</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Exec=
uting RunQueue Tasks</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Runn=
ing task 1 of 1 (ID: 0, /home/pturley/Workspace/Hello/LayerA/<a href=3D"htt=
p://a.bb" target=3D"_blank">a.bb</a>, do_listtasks)</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 ERROR: T v=
ariable not set, unable to build</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 ERROR: Tas=
k 0 (/home/pturley/Workspace/Hello/LayerA/<a href=3D"http://a.bb" target=3D=
"_blank">a.bb</a>, do_listtasks) failed with exit code &#39;1&#39;</font></=
div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Task=
s Summary: Attempted 1 tasks of which 0 didn&#39;t need to be rerun and 1 f=
ailed.</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Summary: 1=
 task failed:</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 /ho=
me/pturley/Workspace/Hello/LayerA/<a href=3D"http://a.bb" target=3D"_blank"=
>a.bb</a>, do_listtasks</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Summary: T=
here was 1 ERROR message shown, returning a non-zero exit code.</font></div=
>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 $ ../BitBa=
ke/bin/bitbake a</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Loading ca=
che: 100% |###############################################################|=
 ETA: =C2=A000:00:00</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Loaded 2 e=
ntries from dependency cache.</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Reso=
lving any missing task queue dependencies</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Prep=
aring runqueue</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Exec=
uting RunQueue Tasks</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Runn=
ing task 1 of 1 (ID: 0, /home/pturley/Workspace/Hello/LayerA/<a href=3D"htt=
p://a.bb" target=3D"_blank">a.bb</a>, do_build)</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 ERROR: T v=
ariable not set, unable to build</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 ERROR: Tas=
k 0 (/home/pturley/Workspace/Hello/LayerA/<a href=3D"http://a.bb" target=3D=
"_blank">a.bb</a>, do_build) failed with exit code &#39;1&#39;</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 NOTE: Task=
s Summary: Attempted 1 tasks of which 0 didn&#39;t need to be rerun and 1 f=
ailed.</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Summary: 1=
 task failed:</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 /ho=
me/pturley/Workspace/Hello/LayerA/<a href=3D"http://a.bb" target=3D"_blank"=
>a.bb</a>, do_build</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 Summary: T=
here was 1 ERROR message shown, returning a non-zero exit code.</font></div=
>
<div><br>
</div>
<div><br>
</div>
<div>As you can see, BitBake is expecting the &quot;T&quot; variable to be =
set. =C2=A0I don&#39;t think I&#39;ve ever seen this variable -- so I don&#=
39;t know what it&#39;s for or what I should change.</div>
<div><br>
</div>
<div>Can anyone offer a hint?</div>
<div><br>
</div>
<div><br>
</div>
<div><font face=3D"Menlo" style=3D"font-size:14px">------------------------=
------------------------------------</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=9C=E2=94=80=E2=94=
=80 build</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 classes</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 base.bbclass</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</=
font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0addtask listtasks</font></div><div class=
=3D"im">
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 |</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0do_listtasks[nostamp] =3D &quot;1&quot;</f=
ont></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 |</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0python do_listtasks() {</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0import sys</fo=
nt></div>
</div><div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =
=E2=94=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# emit v=
ariables and shell functions</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#bb.data.emit_=
env(sys.__stdout__, d)</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# emit the met=
adata which isnt valid shell</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for e in d.key=
s():</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0if d.getVarFlag(e, &#39;task&#39;):</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.plain(&quot;%s&quot; % e)</fon=
t></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0}</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 |</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0addtask build</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 |</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0do_build() {</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0echo &quot;Hello&quot;</font=
></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0}</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</=
font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=94=E2=94=80=E2=94=80 conf</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 +-----------------------------------------------</f=
ont></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 | =C2=A0BBLAYERS ?=3D &quot; \</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 | =C2=A0 =C2=A0/home/pturley/Workspace/Hello/LayerA=
 \</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 | =C2=A0 =C2=A0&quot;</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 +-----------------------------------------------</f=
ont></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=94=E2=94=80=E2=94=80 bitbake.conf</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</font=
></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0CACHE =3D &quot;${TOPDIR}/cache&quot;</font></=
div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</font=
></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=9C=E2=94=80=E2=94=
=80 LayerA</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 <a href=3D"http://a.bb" target=3D"_blank">a.bb</a></f=
ont></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</=
font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0DESCRIPTION =3D &quot;Layer A Main Recipe&=
quot;</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0PN =3D &#39;a&#39;</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 | =C2=A0PV =3D &#39;1&#39;</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</=
font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =E2=94=
=94=E2=94=80=E2=94=80 conf</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=94=E2=94=80=E2=94=80 layer.conf</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</font=
></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0BBPATH .=3D &quot;:${LAYERDIR}&quot;</font></d=
iv><div class=3D"im">
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0BBFILES +=3D &quot;${LAYERDIR}/*.bb&quot;</fon=
t></div>
</div><div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0BBFILE_COLLECTIONS +=3D &quot;A&quot;</font></=
div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0BBFILE_PATTERN_A :=3D &quot;^${LAYERDIR}/&quot=
;</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 +-----------------------------------------------</font=
></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=82</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=E2=94=94=E2=94=80=E2=94=
=80 BitBake</font></div><div class=3D"im">
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0The BitBake=
 directory origin is:</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<a href=3D"http://git.openembedded.org/bitbake/" target=3D"_blank">http:=
//git.openembedded.org/bitbake/</a></font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px"><br>
</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0I have the =
1.15.2 tag checked out, which is what</font></div>
<div><font face=3D"Menlo" style=3D"font-size:14px">=C2=A0 =C2=A0Yocto denzi=
l uses.</font></div>
<div><br>
</div>
</div></div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b6da4cc7486a804cb9707a7--
