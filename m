Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B483E00D89; Fri,  7 Jun 2019 16:19:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C371E00D68
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2019 16:19:13 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id z23so3349730ote.13
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2019 16:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=R0Tktkv9Wsdi+iwQ5db+LBHIFqiwd7O5DPb6ttaOfCQ=;
	b=Wjud0R2QgKlr6wzq8zIhL0FXMeDuUqWP7fanDgemcE6ceXUGhzGbtRg8v4yE8uKGxY
	62vPeYGtUdOnJxZrritKYN6tE01IH8rnaOU21fnQMFsQ3YlNbuuljnODItKkyhuDCAWh
	NKnddSJkw7//vJlV9PmO4l7v5+bBozBMoRlRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=R0Tktkv9Wsdi+iwQ5db+LBHIFqiwd7O5DPb6ttaOfCQ=;
	b=QU857oBRNZ6h5gzjae7eGo/nkWdWl02W1A/MUR9wZtafEsSzm0hfI/zILvEEUr0+PH
	gztpQpH2tVCbynTW/lTIl6PdQKZV0lUrObe2GLRT5QRtpAiS/SCFZwGAcqblOs/3n7Mt
	J7xTxWshLJ0wz1x4XJXilSeTMagRlTH6KlxS5UXdsRyaohyqMAEbCTBQtaBrFSeKGJT3
	431GZMj7xK1MFwQ43AsAaKjNeRobNnvvO/lFjSSDrZvUv6yKOI5OLups7TKm2MpJWdxU
	xhtMZlbt0o65OuUb2XY+QuPCC0mUw+ZUOMcc7w/bCRDLmEQ/3pdFsWkn+AcM3PtoLe2F
	wO4Q==
X-Gm-Message-State: APjAAAVeR/h5o3z3+ba1LswmUbrF/MfWU966gAoUT8J94JQ9rEmQLCJF
	n8Gu939IQHLx6XTiy6qgcAuI8J6QhmYDqYSt4VDUQw==
X-Google-Smtp-Source: APXvYqxomwNIi0zFpxNhJ3fwa3KXEAQwtfCHm58W2gn5fQt87x4UtNz+RV6C2ysUZTBmv/UjzA/Z41IO3AJBnlePb3Y=
X-Received: by 2002:a9d:66d8:: with SMTP id t24mr7066480otm.349.1559949552554; 
	Fri, 07 Jun 2019 16:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190606234656.28343-1-mhalstead@linuxfoundation.org>
	<1a8c9eb7-3866-4b98-ca7c-95fc00bf4989@gmail.com>
In-Reply-To: <1a8c9eb7-3866-4b98-ca7c-95fc00bf4989@gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 7 Jun 2019 16:19:01 -0700
Message-ID: <CADfgfoaEqEV60KbQp2wEfJ5DrH64P=a1L8b30YKOvWrWJvbHpQ@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-docs] ref-manual: Corrected openSUSE essential packages
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
X-List-Received-Date: Fri, 07 Jun 2019 23:19:14 -0000
Content-Type: multipart/alternative; boundary="000000000000f2aedb058ac40e18"

--000000000000f2aedb058ac40e18
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 6, 2019 at 5:07 PM akuster808 <akuster808@gmail.com> wrote:

>
>
> On 6/6/19 4:46 PM, Michael Halstead wrote:
> > Some packages were bumped onto the pip3 install line. Install them with
> zypper as before.
> with backport? ie is Warrior or Thud affected, I suspect so
>

Yes for Warrior. Thud is fine.

Is there anything I need to do for the Warrior backport?


>
> - armin
> >
> > Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
> > ---
> >  documentation/poky.ent | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/documentation/poky.ent b/documentation/poky.ent
> > index b5f600969..a436d9027 100644
> > --- a/documentation/poky.ent
> > +++ b/documentation/poky.ent
> > @@ -68,8 +68,8 @@
> >       python3-jinja2 SDL-devel xterm">
> >  <!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL "python gcc gcc-c++ git
> chrpath make wget python-xml \
> >       diffstat makeinfo python-curses patch socat python3 python3-curses
> tar python3-pip \
> > -     python3-pexpect xz which python3-Jinja2 Mesa-libEGL1
> > -     $ sudo pip3 install GitPython libSDL-devel xterm">
> > +     python3-pexpect xz which python3-Jinja2 Mesa-libEGL1 libSDL-devel
> xterm
> > +     $ sudo pip3 install GitPython">
> >  <!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL "-y epel-release
> >       $ sudo yum makecache
> >       $ sudo yum install gawk make wget tar bzip2 gzip python unzip perl
> patch \
>
>

--000000000000f2aedb058ac40e18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 6, 2019 at 5:07 PM akuste=
r808 &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 6/6/19 4:46 PM, Michael Halstead wrote:<br>
&gt; Some packages were bumped onto the pip3 install line. Install them wit=
h zypper as before.<br>
with backport? ie is Warrior or Thud affected, I suspect so<br></blockquote=
><div><br></div><div>Yes for Warrior. Thud is fine.</div><div><br></div><di=
v>Is there anything I need to do for the Warrior backport?=C2=A0</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
- armin<br>
&gt;<br>
&gt; Signed-off-by: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxf=
oundation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 documentation/poky.ent | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/documentation/poky.ent b/documentation/poky.ent<br>
&gt; index b5f600969..a436d9027 100644<br>
&gt; --- a/documentation/poky.ent<br>
&gt; +++ b/documentation/poky.ent<br>
&gt; @@ -68,8 +68,8 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0python3-jinja2 SDL-devel xterm&quot;&gt;<br>
&gt;=C2=A0 &lt;!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL &quot;python gcc gc=
c-c++ git chrpath make wget python-xml \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0diffstat makeinfo python-curses patch socat =
python3 python3-curses tar python3-pip \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0python3-pexpect xz which python3-Jinja2 Mesa-libE=
GL1<br>
&gt; -=C2=A0 =C2=A0 =C2=A0$ sudo pip3 install GitPython libSDL-devel xterm&=
quot;&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0python3-pexpect xz which python3-Jinja2 Mesa-libE=
GL1 libSDL-devel xterm<br>
&gt; +=C2=A0 =C2=A0 =C2=A0$ sudo pip3 install GitPython&quot;&gt;<br>
&gt;=C2=A0 &lt;!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL &quot;-y epel-release=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$ sudo yum makecache<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$ sudo yum install gawk make wget tar bzip2 =
gzip python unzip perl patch \<br>
<br>
</blockquote></div></div>

--000000000000f2aedb058ac40e18--
