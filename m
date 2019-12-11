Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6982.1576085565529973836
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 09:32:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oBi/MiDs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66946E01205; Wed, 11 Dec 2019 09:32:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB7FE010DD
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 09:32:44 -0800 (PST)
Received: by mail-ed1-f67.google.com with SMTP id cm12so20072874edb.11
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 09:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2XHZVaXkHH+aTzOBrjcxZdEdBJGvkSth5AxaHKOTmUE=;
        b=oBi/MiDs6wecj94E2YZlTC0T4FN/myqtE1hxF7wVkbUemNgwBveHMPgBgg97aCWSYL
         iWrFvOq/4nXQ9UoHy1D1HafVWGWTvtR4TM5SRkUG//gkAfCrKfkIq5g7Tr6txGEx4Hwa
         XPQz3fuWdcxjWfhMy8BywnFnOGdHDgCjygsdv+eOEwvUz3+9nMYCMbI8oOQJJuRsyEsl
         anmLeu5/IUsOC3R48LrsAwqZ1/+8hOJ/yKoeTZGEZHazwtkbhh0wSY9sT4hgqaXNHBq3
         Wd7mfK9uOwuzQ9ZDp0xePudDkQJ33OqR6aLTo2KkOoJOpd4HfPb5ciakpE4/y1OubsLl
         gLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2XHZVaXkHH+aTzOBrjcxZdEdBJGvkSth5AxaHKOTmUE=;
        b=qWBjQbohYUTHdVWmmhsYtRRF/ffbOhUx+iS71HWEFR+sZJ4A90Gb4LHFnmPiWZILqF
         9Ic10BrVbLhpcYT/+ELmDEaHLcHTGSCsO+xMM6l/lsSc3oBfLGRx3gHWt0Mq9Og0Ueah
         LQQW8UAGszYzutWUDk29O7Zjdkazkgv864cIvIR5iMUPj0DwGadlqG8HKSb2Q/8+Aeo/
         2bYv7lgqZ1EZMCGwMjhh3P0DZRJpx1iM7LqJ2mLBjRkQeOcD7xE1+1kfw6KRU7ka/CwY
         D9gnWcZS/v1PHptUzpeEJAuQNo+7GCiD6D8LlICMkQg9Q8pDhFBJpSkCG6u5sBPGLU5i
         BJjw==
X-Gm-Message-State: APjAAAVjnp6ueziHjY1FMhRUfSOChj9z8gsZMtPe8577EG4wpK8JsMoz
	4yQ1s4HgWvLzlY7a3elTFzArpZnmgwJsVd0Nqkw4Og==
X-Google-Smtp-Source: APXvYqxvNBHb/m7aLyzS4Dy09fjy4RF+aithS/BpVvfOAr1PnaUgXWIB32B+9047w0lac8QPqvm3UzV5Sj+iQbuJRXQ=
X-Received: by 2002:a17:906:434c:: with SMTP id z12mr4549274ejm.168.1576085563244;
 Wed, 11 Dec 2019 09:32:43 -0800 (PST)
MIME-Version: 1.0
References: <20190812195140.900-1-Martin.Jansa@gmail.com> <20190906113210.GA1530@jama>
In-Reply-To: <20190906113210.GA1530@jama>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 11 Dec 2019 18:32:31 +0100
Message-ID: <CA+chaQeQbEsqh8-z47Zd1nmoYMfX0bV-j3NhSxGu693TUv1bJQ@mail.gmail.com>
Subject: Re: [yocto-docs][PATCH] ref-manual: mention PREPROCESS_RELOCATE_DIRS variable
To: Yocto Project <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: Scott Rifenbark <srifenbark@gmail.com>, Herb Kuta <herb.kuta@lge.com>
Content-Type: multipart/alternative; boundary="00000000000022076705997104fb"

--00000000000022076705997104fb
Content-Type: text/plain; charset="UTF-8"

ping again

On Fri, Sep 6, 2019 at 1:32 PM Martin Jansa <martin.jansa@gmail.com> wrote:

> On Mon, Aug 12, 2019 at 07:51:40PM +0000, Martin Jansa wrote:
> > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>
> ping
>
> > ---
> >  documentation/ref-manual/ref-classes.xml   |  5 ++++-
> >  documentation/ref-manual/ref-variables.xml | 21 +++++++++++++++++++++
> >  2 files changed, 25 insertions(+), 1 deletion(-)
> >
> > diff --git a/documentation/ref-manual/ref-classes.xml
> b/documentation/ref-manual/ref-classes.xml
> > index ece47e757..159efb3b1 100644
> > --- a/documentation/ref-manual/ref-classes.xml
> > +++ b/documentation/ref-manual/ref-classes.xml
> > @@ -413,7 +413,10 @@
> >          <filename>cross</filename>, and
> >          <filename>cross-canadian</filename> recipes to change
> >          <filename>RPATH</filename> records within binaries in order to
> make
> > -        them relocatable.
> > +        them relocatable. To extend the list of directories where it
> searches
> > +        for binaries to relocate, you can set
> > +        <link
> linkend='var-PREPROCESS_RELOCATE_DIRS'><filename>PREPROCESS_RELOCATE_DIRS</filename></link>
> > +        variable in your recipe.
> >      </para>
> >  </section>
> >
> > diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> > index 9470a780a..5ac766658 100644
> > --- a/documentation/ref-manual/ref-variables.xml
> > +++ b/documentation/ref-manual/ref-variables.xml
> > @@ -11424,6 +11424,27 @@
> >              </glossdef>
> >          </glossentry>
> >
> > +        <glossentry
> id='var-PREPROCESS_RELOCATE_DIRS'><glossterm>PREPROCESS_RELOCATE_DIRS</glossterm>
> > +            <info>
> > +                PREPROCESS_RELOCATE_DIRS[doc] = "List of extra
> directories where to search for binaries which should be relocatable."
> > +            </info>
> > +            <glossdef>
> > +                <para role="glossdeffirst">
> > +<!--                <para role="glossdeffirst"><imagedata
> fileref="figures/define-generic.png" /> -->
> > +                    List of extra directories with binaries.
> > +                </para>
> > +
> > +                <para>
> > +                    <filename>PREPROCESS_RELOCATE_DIRS</filename> is
> used by
> > +                    chrpath.bbclass to allow extending the list where
> it searches
> > +                    for binaries. By default it searches in:
> > +                    ${bindir} ${sbindir} ${base_sbindir} ${base_bindir}
> ${libdir} ${base_libdir} ${libexecdir}
> > +                    Thus, <filename>PREPROCESS_RELOCATE_DIRS</filename>
> usually doesn't
> > +                    need to be set withing recipes.
> > +                </para>
> > +            </glossdef>
> > +        </glossentry>
> > +
> >          <glossentry id='var-PRIORITY'><glossterm>PRIORITY</glossterm>
> >              <info>
> >                  PRIORITY[doc] = "Indicates the importance of a
> package.  The default value is 'optional'.  Other standard values are
> 'required', 'standard', and 'extra'."
> > --
> > 2.17.1
> >
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--00000000000022076705997104fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping again</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 1:32 PM Martin Jansa &lt;=
<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, Aug=
 12, 2019 at 07:51:40PM +0000, Martin Jansa wrote:<br>
&gt; Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.c=
om" target=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
<br>
ping<br>
<br>
&gt; ---<br>
&gt;=C2=A0 documentation/ref-manual/ref-classes.xml=C2=A0 =C2=A0|=C2=A0 5 +=
+++-<br>
&gt;=C2=A0 documentation/ref-manual/ref-variables.xml | 21 ++++++++++++++++=
+++++<br>
&gt;=C2=A0 2 files changed, 25 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/=
ref-manual/ref-classes.xml<br>
&gt; index ece47e757..159efb3b1 100644<br>
&gt; --- a/documentation/ref-manual/ref-classes.xml<br>
&gt; +++ b/documentation/ref-manual/ref-classes.xml<br>
&gt; @@ -413,7 +413,10 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;cross&lt;/filename&g=
t;, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;cross-canadian&lt;/f=
ilename&gt; recipes to change<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;RPATH&lt;/filename&g=
t; records within binaries in order to make<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 them relocatable.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 them relocatable. To extend the list of d=
irectories where it searches<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 for binaries to relocate, you can set<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;link linkend=3D&#39;var-PREPROCESS_RE=
LOCATE_DIRS&#39;&gt;&lt;filename&gt;PREPROCESS_RELOCATE_DIRS&lt;/filename&g=
t;&lt;/link&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 variable in your recipe.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;<br>
&gt;=C2=A0 &lt;/section&gt;<br>
&gt;=C2=A0 <br>
&gt; diff --git a/documentation/ref-manual/ref-variables.xml b/documentatio=
n/ref-manual/ref-variables.xml<br>
&gt; index 9470a780a..5ac766658 100644<br>
&gt; --- a/documentation/ref-manual/ref-variables.xml<br>
&gt; +++ b/documentation/ref-manual/ref-variables.xml<br>
&gt; @@ -11424,6 +11424,27 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossdef&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossentry&gt;<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;glossentry id=3D&#39;var-PREPROCESS_R=
ELOCATE_DIRS&#39;&gt;&lt;glossterm&gt;PREPROCESS_RELOCATE_DIRS&lt;/glosster=
m&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;info&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PREPROCESS_RE=
LOCATE_DIRS[doc] =3D &quot;List of extra directories where to search for bi=
naries which should be relocatable.&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/info&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;glossdef&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;para role=
=3D&quot;glossdeffirst&quot;&gt;<br>
&gt; +&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;pa=
ra role=3D&quot;glossdeffirst&quot;&gt;&lt;imagedata fileref=3D&quot;figure=
s/define-generic.png&quot; /&gt; --&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 List of extra directories with binaries.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;=
<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;para&gt;<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &lt;filename&gt;PREPROCESS_RELOCATE_DIRS&lt;/filename&gt; is used by<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 chrpath.bbclass to allow extending the list where it searches<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 for binaries. By default it searches in:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ${bindir} ${sbindir} ${base_sbindir} ${base_bindir} ${libdir} ${base_libdi=
r} ${libexecdir}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Thus, &lt;filename&gt;PREPROCESS_RELOCATE_DIRS&lt;/filename&gt; usually do=
esn&#39;t<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 need to be set withing recipes.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossdef&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossentry&gt;<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;glossentry id=3D&#39;var-PRIORIT=
Y&#39;&gt;&lt;glossterm&gt;PRIORITY&lt;/glossterm&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;info&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PRIORITY=
[doc] =3D &quot;Indicates the importance of a package.=C2=A0 The default va=
lue is &#39;optional&#39;.=C2=A0 Other standard values are &#39;required&#3=
9;, &#39;standard&#39;, and &#39;extra&#39;.&quot;<br>
&gt; -- <br>
&gt; 2.17.1<br>
&gt; <br>
<br>
-- <br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a><br>
</blockquote></div>

--00000000000022076705997104fb--
