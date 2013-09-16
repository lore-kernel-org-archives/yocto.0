Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EAD8E0159E
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:37:47 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id lv10so3417436lab.24
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=loMLiAE2rm++6QF7nMmR1OmXykYQlzCQWa9rrTNl2g8=;
	b=OdZsnwOplV/CHUkQHQq0mDLxHM2O1HYhlJd0STJEck7bbINRQyRRUg644OCncoCGe8
	R1cwqm/Zfjs2UHwZ9ZBvX3Cqb/A7mS9/F0n3NOHHkSiHWw0gtGGVbrkLKLOntt/JKe2L
	FDEqyRZJD41NW6QQXTbSpoSc61G+/pD/zo5eIpKac44neyjsuIHL1CFvoyLPclSweKLK
	OpUiQFRDbr1JYjO1lDxs0XpBM+GVPRYhYZp9o1rUsJ+mctnhCWhmAJ7EJM1iiL1PqsgJ
	JJpR1+4c3dJKy/1hUOPbBpbYLBZ37rOG2zFBG9LVJDOZfyRtRHzadLPx1GXqv5vE8wUR
	Fizw==
X-Received: by 10.152.29.103 with SMTP id j7mr25437920lah.7.1379356665929;
	Mon, 16 Sep 2013 11:37:45 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Mon, 16 Sep 2013 11:37:25 -0700 (PDT)
In-Reply-To: <A713D66A57B545848DDD45415085C8D0@PAULD>
References: <A8F6DAF6C594463B96E491611B8DF873@PAULD>
	<CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com>
	<A713D66A57B545848DDD45415085C8D0@PAULD>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 16 Sep 2013 11:37:25 -0700
X-Google-Sender-Auth: yMMGkRCfxi_tqIjrMvpXTc5TzaQ
Message-ID: <CABcZANnJY5-6PM2_QR-Jygxq10TQQB5ct_2BrFvC7HqBhAH2QQ@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to find the source of a variable value?
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
X-List-Received-Date: Mon, 16 Sep 2013 18:37:48 -0000
Content-Type: multipart/alternative; boundary=089e0160b82817658404e6848027

--089e0160b82817658404e6848027
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 16, 2013 at 11:34 AM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> > > On Mon, Sep 16, 2013 at 10:02 AM, Paul D. DeRocco
> > > <pderocco@ix.netcom.com> wrote:
> > >
> > > This image recipe has some Python that complains
> > > because "x11" is in
> > > DISTRO_FEATURES. How do I find out where that "x11" is
> > > coming from? This
> > > is a Gumstix build, so I suspect it's indirectly
> > > related to my selecting
> > > "overo" as the MACHINE, because otherwise building this
> > > image would never
> > > have worked with the plain Yocto meta-data. So how do I
> > > track this down?
>
> > From: Chris Larson
> >
> > Assuming you're using recent metadata, bitbake -e somerecipe
> > will show you this.
>
> This isn't working for me. The image I'm trying to build is
> core-image-gtk-directfb. The recipe is in meta/recipes-graphics/images. If
> I just type "bitbake -k core-image-gtk-directfb", I get two errors:
>
> ERROR: Nothing PROVIDES 'core-image-gtk-directfb'
> ERROR: core-image-gtk-directfb was skipped: FEATURE "x11" is in
> DISTRO_FEATURES, Please remove "x11" from DISTRO_FEATURES, use
> "gtk-directfb" instead of it
>
> I don't understand the "Nothing PROVIDES" error. Doesn't a recipe called
> x.bb PROVIDE x by default? The second error comes from the bit of Python
> in that recipe, which at least proves that it's reading that recipe.
>

It does, but in this case it 'skips' itself, telling bitbake it's not
available to be built given the current context, hence isn't provided by
that recipe.

If I type "bitbake -e core-image-gtk-directfb", I just get the first
> error. This happens almost instantly, before it's done any real work, so
> I'm not getting any further output.


It's raising that error to bitbake in the parsing process, unfortunately,
which means it can't be used as a target even for informational purposes
like -e.

To look at a global variable like DISTRO_FEATURES, use bitbake -e without
any arguments.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0160b82817658404e6848027
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Sep 16, 2013 at 11:34 AM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a =
href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">&gt; &gt; On Mon, Sep 16, =
2013 at 10:02 AM, Paul D. DeRocco<br>
&gt; &gt; &lt;<a href=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.=
com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; This image recipe has some Python that complains<br>
&gt; &gt; because &quot;x11&quot; is in<br>
&gt; &gt; DISTRO_FEATURES. How do I find out where that &quot;x11&quot; is<=
br>
&gt; &gt; coming from? This<br>
&gt; &gt; is a Gumstix build, so I suspect it&#39;s indirectly<br>
&gt; &gt; related to my selecting<br>
&gt; &gt; &quot;overo&quot; as the MACHINE, because otherwise building this=
<br>
&gt; &gt; image would never<br>
&gt; &gt; have worked with the plain Yocto meta-data. So how do I<br>
&gt; &gt; track this down?<br>
<br>
</div>&gt; From: Chris Larson<br>
<div class=3D"im">&gt;<br>
&gt; Assuming you&#39;re using recent metadata, bitbake -e somerecipe<br>
&gt; will show you this.<br>
<br>
</div>This isn&#39;t working for me. The image I&#39;m trying to build is<b=
r>
core-image-gtk-directfb. The recipe is in meta/recipes-graphics/images. If<=
br>
I just type &quot;bitbake -k core-image-gtk-directfb&quot;, I get two error=
s:<br>
<br>
ERROR: Nothing PROVIDES &#39;core-image-gtk-directfb&#39;<br>
ERROR: core-image-gtk-directfb was skipped: FEATURE &quot;x11&quot; is in<b=
r>
DISTRO_FEATURES, Please remove &quot;x11&quot; from DISTRO_FEATURES, use<br=
>
&quot;gtk-directfb&quot; instead of it<br>
<br>
I don&#39;t understand the &quot;Nothing PROVIDES&quot; error. Doesn&#39;t =
a recipe called<br>
<a href=3D"http://x.bb" target=3D"_blank">x.bb</a> PROVIDE x by default? Th=
e second error comes from the bit of Python<br>
in that recipe, which at least proves that it&#39;s reading that recipe.<br=
></blockquote><div><br></div><div style>It does, but in this case it &#39;s=
kips&#39; itself, telling bitbake it&#39;s not available to be built given =
the current context, hence isn&#39;t provided by that recipe.</div>

<div style><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
If I type &quot;bitbake -e core-image-gtk-directfb&quot;, I just get the fi=
rst<br>
error. This happens almost instantly, before it&#39;s done any real work, s=
o<br>
I&#39;m not getting any further output.</blockquote><div><br></div><div sty=
le>It&#39;s raising that error to bitbake in the parsing process, unfortuna=
tely, which means it can&#39;t be used as a target even for informational p=
urposes like -e.</div>

</div><br>To look at a global variable like DISTRO_FEATURES, use bitbake -e=
 without any arguments.<br>-- <br>Christopher Larson<br>clarson at kergoth =
dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tsli=
b<br>

Senior Software Engineer, Mentor Graphics
</div></div>

--089e0160b82817658404e6848027--
