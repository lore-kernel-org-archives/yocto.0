Return-Path: <akki.sahota@gmail.com>
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48052E01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 22:55:46 -0700 (PDT)
Received: by mail-la0-f49.google.com with SMTP id fp12so436217lab.22
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 22:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Q567W0CZiUkd0ZbtxMvSur5UXGsej15zqtRU0ftA9j0=;
	b=H0FVwRZtBJByL/ZreeYcJIgBUa0kvda0Vu6fN+mqj/co76UZEYM1kwiS4N01OIyrTa
	oluaO4ktBalhU5lF/lsNHqCT4iIadCSZ6zsAqh57YfYAFfNWZkHz0JuWGhOGhJleMu6q
	yt8vK4LZv8kvvi3x/WjOEOhtuHnihzYtLZ/Df729QoQwsXN/Dsp6RCXcTgiFM9zneWK2
	EiohGQFkr8oJzP+OPATLBnrAcb2wbKaZJtmaaXTK5ajZBCbTsOQV+VvsytMLx+nC2M3u
	RbR4LOVvF5DNBrw0FJdbS1GFYKqE+EX6z2f/h+6wUwyEBmlYjBUU2BZLcMZHJR+5JuJD
	xxbg==
MIME-Version: 1.0
X-Received: by 10.152.6.36 with SMTP id x4mr118607lax.40.1370411744569; Tue,
	04 Jun 2013 22:55:44 -0700 (PDT)
Received: by 10.152.134.75 with HTTP; Tue, 4 Jun 2013 22:55:44 -0700 (PDT)
In-Reply-To: <CANwz6nzC4O8bN92q2YCCLtmGKK1S9LwYPLyWR0VZZBY+EiAUtg@mail.gmail.com>
References: <CANwz6nzC4O8bN92q2YCCLtmGKK1S9LwYPLyWR0VZZBY+EiAUtg@mail.gmail.com>
Date: Wed, 5 Jun 2013 11:25:44 +0530
Message-ID: <CAMUsWmD6F_qEm95q5y92xuP5yg3sNeBm+6GnaMQGOge3CmP8xw@mail.gmail.com>
From: Akshay Sahota <akki.sahota@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto with meta-ti
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
X-List-Received-Date: Wed, 05 Jun 2013 05:55:46 -0000
Content-Type: multipart/alternative; boundary=089e013d19203b303304de61d93b

--089e013d19203b303304de61d93b
Content-Type: text/plain; charset=ISO-8859-1

I'm not sure where the problem is, i think we have severe version problems.

This is our local.conf file

*BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"
#BBMASK = "meta-ti/recipes-misc meta-oe/recipes-graphics"
#BBMASK = "meta-oe/recipes-devtools"
#BBMASK = "meta-oe/recipes-graphics"
#
# Parallelism Options*...


and bblayers.conf

*BBLAYERS ?= " \
  /home/asahota/poky-try/poky/meta \
  /home/asahota/poky-try/poky/meta-yocto \
  /home/asahota/poky-try/poky/meta-yocto-bsp \
  /home/asahota/poky-try/poky/meta-ti \
  /home/asahota/poky-try/poky/meta-openembedded/meta-oe \
  "

BBLAYERS_NON_REMOVABLE ?= " \
  /home/asahota/poky-try/poky/meta \
  /home/asahota/poky-try/poky/meta-yocto \
  "*

and the output is :
*$ bitbake -k core-image-minimal
Pseudo is not present but is required, building this first before the main
build
WARNING: Host distribution "Ubuntu 12.04.2 LTS" has not been validated with
this version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
ERROR: ParseError at
/home/asahota/poky-try/poky/meta-openembedded/meta-oe/recipes-devtools/cloud9/
cloud9_0.6.bb:11: Could not inherit file classes/systemd.bbclass
ERROR: Command execution failed: Exited with 1

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
*
What is the mistake, sounds too silly.!


On Wed, Jun 5, 2013 at 1:11 AM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Michael wrote
>
> Hi,
>
> As a quick hack you can mask out recipes-misc by adding the following line
> to your conf/local.conf :
>
> BBMASK = "meta-ti/recipes-misc"
>
> It seem to mask out everything in meta-ti/recipes-misc.
>
> This was a suggestion I found on the net. The better way would be if
> meta-ti would be split into multiple layers where one of them is a
> meta-ti-bsp layer.
>
> Best regards
> Michael
>
> I build with yocto and meta-ti for the beaglebone and pandaboard.
>
> This is what I add to local.conf
> MACHINE ?= "beaglebone"
> MACHINE ?= "pandaboard"
> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"
>
> and in bblayers.conf
> BBLAYERS ?= " \
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta \
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto \
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta-ti \
>
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta-oe/meta-oe \
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto-bsp \
>   "
> BBLAYERS_NON_REMOVABLE ?= " \
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta \
>
>   /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto \
>
> This works okay see the post
> [yocto] beaglebone beagleboard pandaboard <https://lists.yoctoproject.org/pipermail/yocto/2013-June/016393.html> *Edward Vidal
> *
>
> *Let me know if this helps I am  using dylan branch with an older version of meta-ti
> commit d61bfa88ed3df9190ac9fd5643c27f77b34c5f01
> Author: Denys Dmytriyenko <denys@ti.com>
>
> Date:   Mon Feb 25 22:48:33 2013 -0500
>
>     linux-omapl138: fix alignment issue of 2.6.37 kernel with gcc-4.7
>
>     Patch by Steve Sakoman
>
>     Signed-off-by: Denys Dmytriyenko <denys@ti.com>
> *
>
> *I hope this helps
> *
>
> *Ed Vidal
> *
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Akshay Sahota**
*Fourth Year Undergraduate
Department of Electronics & Electrical Engineering
Indian Institute of Technology Kharagpur

--089e013d19203b303304de61d93b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;m not sure where the problem is, i th=
ink we have severe version problems.<br></div><div><br>This is our local.co=
nf file<br><br><i>BBMASK ?=3D &quot;.*/meta-ti/recipes-(misc|bsp/formfactor=
|graphics/mesa)/&quot;<br>
#BBMASK =3D &quot;meta-ti/recipes-misc meta-oe/recipes-graphics&quot;<br>#B=
BMASK =3D &quot;meta-oe/recipes-devtools&quot;<br>#BBMASK =3D &quot;meta-oe=
/recipes-graphics&quot;<br>#<br># Parallelism Options</i>...<br><br><br></d=
iv>
and bblayers.conf<br><br><i>BBLAYERS ?=3D &quot; \<br>=A0 /home/asahota/pok=
y-try/poky/meta \<br>=A0 /home/asahota/poky-try/poky/meta-yocto \<br>=A0 /h=
ome/asahota/poky-try/poky/meta-yocto-bsp \<br>=A0 /home/asahota/poky-try/po=
ky/meta-ti \<br>
=A0 /home/asahota/poky-try/poky/meta-openembedded/meta-oe \<br>=A0 &quot;<b=
r><br>BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>=A0 /home/asahota/poky-try/po=
ky/meta \<br>=A0 /home/asahota/poky-try/poky/meta-yocto \<br>=A0 &quot;</i>=
<br><br>
</div>and the output is :<br><i>$ bitbake -k core-image-minimal<br>Pseudo i=
s not present but is required, building this first before the main build<br=
>WARNING: Host distribution &quot;Ubuntu 12.04.2 LTS&quot; has not been val=
idated with this version of the build system; you may possibly experience u=
nexpected failures. It is recommended that you use a tested distribution.<b=
r>
ERROR: ParseError at /home/asahota/poky-try/poky/meta-openembedded/meta-oe/=
recipes-devtools/cloud9/<a href=3D"http://cloud9_0.6.bb:11">cloud9_0.6.bb:1=
1</a>: Could not inherit file classes/systemd.bbclass<br>ERROR: Command exe=
cution failed: Exited with 1<br>
<br>Summary: There was 1 WARNING message shown.<br>Summary: There were 2 ER=
ROR messages shown, returning a non-zero exit code.<br></i><br></div>What i=
s the mistake, sounds too silly.!<br></div><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Wed, Jun 5, 2013 at 1:11 AM, Edward Vidal=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com" target=
=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
<div dir=3D"ltr">Michael wrote<br><pre>Hi,

As a quick hack you can mask out recipes-misc by adding the following line
to your conf/local.conf :

BBMASK =3D &quot;meta-ti/recipes-misc&quot;

It seem to mask out everything in meta-ti/recipes-misc.

This was a suggestion I found on the net. The better way would be if
meta-ti would be split into multiple layers where one of them is a
meta-ti-bsp layer.

Best regards
Michael
<br></pre><pre>I build with yocto and meta-ti for the beaglebone and pandab=
oard.<br></pre><pre>This is what I add to local.conf<br>MACHINE ?=3D &quot;=
beaglebone&quot;<br>MACHINE ?=3D &quot;pandaboard&quot;<br>BBMASK ?=3D &quo=
t;.*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/&quot;<br>

</pre><pre>and in bblayers.conf<br>BBLAYERS ?=3D &quot; \<br>  /home/vidal/=
POKY/build060213_dylan_panda/poky/meta \<br>  /home/vidal/POKY/build060213_=
dylan_panda/poky/meta-yocto \<br>  /home/vidal/POKY/build060213_dylan_panda=
/poky/meta-ti \<br>

  /home/vidal/POKY/build060213_dylan_panda/poky/meta-oe/meta-oe \<br>  /hom=
e/vidal/POKY/build060213_dylan_panda/poky/meta-yocto-bsp \<br>  &quot;<br>B=
BLAYERS_NON_REMOVABLE ?=3D &quot; \<br>  /home/vidal/POKY/build060213_dylan=
_panda/poky/meta \<br>

  /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto \<br><br></pre><=
pre>This works okay see the post <br><a href=3D"https://lists.yoctoproject.=
org/pipermail/yocto/2013-June/016393.html" target=3D"_blank">[yocto] beagle=
bone beagleboard pandaboard
</a><a name=3D"13f10b5f60b270f1_16393">=A0</a>
<i>Edward Vidal<br></i></pre><pre><i>Let me know if this helps I am  using =
dylan branch with an older version of meta-ti<br>commit d61bfa88ed3df9190ac=
9fd5643c27f77b34c5f01<br>Author: Denys Dmytriyenko &lt;<a href=3D"mailto:de=
nys@ti.com" target=3D"_blank">denys@ti.com</a>&gt;<br>

Date:   Mon Feb 25 22:48:33 2013 -0500<br><br>    linux-omapl138: fix align=
ment issue of 2.6.37 kernel with gcc-4.7<br>    <br>    Patch by Steve Sako=
man<br>    <br>    Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"mailto:d=
enys@ti.com" target=3D"_blank">denys@ti.com</a>&gt;<br>

</i></pre><pre><i>I hope this helps<br></i></pre><pre><i>Ed Vidal <br></i><=
/pre></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><s=
pan style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(13=
6,136,136)"><b>Akshay Sahota</b></span></span><span style=3D"color:rgb(136,=
136,136);background-color:rgb(255,255,255)"><b><font style=3D"background-co=
lor:rgb(255,255,255)" color=3D"#666666"><br style=3D"font-family:&#39;couri=
er new&#39;,monospace">
</font></b><font style=3D"font-family:arial,sans-serif;font-size:13px;backg=
round-color:rgb(255,255,255)" color=3D"#666666"><font style=3D"font-family:=
georgia,serif;color:rgb(153,153,153)" size=3D"1"><font color=3D"#666666"><f=
ont size=3D"1">Fourth</font></font> </font></font><font style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><font style=3D"font-family:georgia,serif=
" size=3D"1"><span style=3D"background-color:rgb(255,255,255);color:rgb(153=
,153,153)">Year Undergraduate</span><br>
</font><font style=3D"font-family:georgia,serif" size=3D"1" color=3D"#99999=
9">Department of Electronics &amp; Electrical Engineering<br></font><span s=
tyle=3D"font-family:&#39;courier new&#39;,monospace"><font style=3D"font-fa=
mily:georgia,serif" size=3D"1" color=3D"#999999">Indian Institute of Techno=
logy Kharagpur</font><br>
</span></font></span></div>
</div>

--089e013d19203b303304de61d93b--
