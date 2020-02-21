Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.14.1582326313350471473
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 15:05:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k4dnDEQx;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpewhacker@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E69B1E0172C; Fri, 21 Feb 2020 15:05:12 -0800 (PST)
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
	*      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7380FE0170D
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2020 15:05:11 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id n10so3811445wrm.1
        for <yocto@yoctoproject.org>; Fri, 21 Feb 2020 15:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qEpo/uA1GT57enEdKLTegd6ovsqh19KNv+EuINJwqnY=;
        b=k4dnDEQx1/6KVoX6qeuzmSui9BX2ZGd9QYggmJltQh8c43HDwSG/LK2uWZ3pxwwrn9
         vnUgN1+CKBywxezQr29KUWCpo5j7nZaiqxUyLVTOJZdrvE2X8IsH+ugdxvYIiSwpG60Q
         wm291EouLuHKH47St2BD6hr8PalqHKARAG54obU+Ty6OnDYdhyMjEEYZFiOEOigXXhs2
         btZwmXD55UZXzR00ICGLoUzQYjOiPgnH4rMzHLERX0F5hVfLpZi4iiOzrJ6On5mfTMyH
         ar9/C84prj1pG5J2YA57NsoRSDpbWtrVGs+s4+wTF/sh5rHaUqEVE2zBDvbuqBrtCR4z
         nTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qEpo/uA1GT57enEdKLTegd6ovsqh19KNv+EuINJwqnY=;
        b=K7QsKHsEYEijSk8XPV4Apn0UUeM1URokNwjEyQbphqEBRaRG1VZVPziwDusgXNFvmL
         e0Ii9pwA4WgVDksIVwfzV/94MdInF8KZLPw/PhU8Tk3Y5dxRd/X8+LHidriQTMDJCpoI
         UbYoyt0wGZj9sz7Y1f4ssVjE5BD6e6L13KoBEHUjQOZOLdpgPDJ3QFMo/8zUa14+Atim
         Wr6yJCUVYY++sIGtasMFwoFIBSx0PDMzAnplyI/bawrI0y6FbLe4aC/MrlITLSC6bLoo
         3EoNK+lNQGg4h8CKFJfIKaZzuz7XQAVu4kl35DDi1LxQHkniHZ2WOwDL3pLDE3iJ2F6e
         CtlQ==
X-Gm-Message-State: APjAAAWUzkounobwiq1K7Ok1lOravayeDjyUoB6sf+J45MnkEAFAmIrK
	dI8/z3yUKKMzhU9jr4LZXAiGy4ky+BF5IRNEw24=
X-Google-Smtp-Source: APXvYqxOuIL6mthxv8D7vG516U3AcblQL61x4n9Wx4TdaWVgvCDkHO98kCOPz0LRPb9ampkfq7mMEWJPAu5E3uDKvuI=
X-Received: by 2002:adf:f7c4:: with SMTP id a4mr51051280wrq.361.1582326310459;
 Fri, 21 Feb 2020 15:05:10 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
 <bfe6eb79ff352439c3ed5d53757421dce5e0b17d.camel@linuxfoundation.org>
 <CAM9ZRVv2Xoq=GBjQOXT+VBunhYG3n_dCw7Bv6XECTdRhdvzg9w@mail.gmail.com>
 <b5158d1f6ef3cebc4bff046b28c8851ba7db29ac.camel@linuxfoundation.org> <CAM9ZRVu-yX0M41SBY5kDzEVL-+EaTfCZiX4dascQQtvuhichdg@mail.gmail.com>
In-Reply-To: <CAM9ZRVu-yX0M41SBY5kDzEVL-+EaTfCZiX4dascQQtvuhichdg@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 21 Feb 2020 17:04:57 -0600
Message-ID: <CAJdd5GZKcWaRtesoG_P0S1Xz-YhD81zX6MBoJ7cH=AgGNk1piw@mail.gmail.com>
Subject: Re: [yocto] Bitbake returning non-zero due to sstate errors
To: Paul Barker <pbarker@konsulko.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a75d75059f1e0d6e"

--000000000000a75d75059f1e0d6e
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 20, 2020, 9:22 AM Paul Barker <pbarker@konsulko.com> wrote:

> On Thu, 20 Feb 2020 at 12:04, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > On Thu, 2020-02-20 at 11:59 +0000, Paul Barker wrote:
> > > I'm now looking into this...
> > >
> > > In sstate_checkhashes() we mark sstate as available if
> > > fetcher.checkstatus() succeeds. Then at a later point
> > > sstate_setscene() calls sstate_installpkg() calls pstaging_fetch()
> > > calls fetcher.download() to actually get the sstate artifact. If the
> > > artifact is removed from the mirror between these two accesses (due
> > > to an sstate mirror clean up running in parallel to a build), or if
> > > there is an intermittent download failure we could see checkstatus()
> > > succeed then download() fail.
> > >
> > > I don't think we should ignore all setscene errors but in the
> > > specific case where it's the download step that fails I think that
> > > should be a warning. Or it could be an error by default with a
> > > variable we can set to turn it into a warning. Does that sound
> > > reasonable? If so I'll work up a patch.
> >
> > Thinking about the code, I'm not sure how you're generically going to
> > tell the difference between a setscene task that fails as the file
> > disappeared compared to a setscene failure with another real error? :/
> >
> > We could make all failed setscene tasks warnings but I think that
> > buries actual real errors.
> >
> > This is probably why I've not changed the code before now.
> >
> > Special exit code values? :/
> >
> > I'm open to proposals.
> >
> > I know we could put in some configuration option but in general I hate
> > these as it just means more test matrix combinations and more ways for
> > people to see different behaviours. They have a time/place but I'm not
> > sure its here.
>
> I agree - I really don't want to have to add additional complexity
> here. But I do think we need to fix this in some way, others are
> affected by this as can be seen from previous discussions. And in the
> case of a public sstate mirror we can't control when users decide to
> run builds, there will always be the chance of a user running a build
> on an old commit while old sstate artifacts are cleaned or starting a
> build just as the mirror is taken offline for some maintenance.
>
> I think we might be able to make this work if we can avoid adding any
> new conditional logic to the fetcher itself. I can see that almost
> every call to logger.error() is followed by raising an error - perhaps
> we could rework the code to include all the relevant info in the
> raised error object and allow higher level code to catch the exception
> and decide what to do with it. Because once logger.error() is called,
> knotty counts an error and bitbake will exit non-zero even if the
> error is safely handled. Once the fetcher simply raises exceptions in
> the case of failed downloads we could handle this neatly in
> sstate.bbclass. Would that be a viable way forward? Or would that
> break the other fetcher use cases?
>

FWIW we also have this problem because our CI nodes all update the sstate
cache via rsync after they finish, which causes races. This hasn't affected
our developers, but I suspect that is only because they aren't doing builds
at 1 AM.

The way we worked around it was to split up the build into two invocations
of bitbake:

 bitbake --setscene-only <target> || true
 bitbake --skip-setscene <target>

Although this will likely not work very well with hash equivalence.


> Thanks,
> Paul
> 
>

--000000000000a75d75059f1e0d6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Feb 20, 2020, 9:22 AM Paul Barker &lt;<a href=
=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">On Thu, 20 Feb 2020 at 12:04, Richard Pu=
rdie<br>
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank=
" rel=3D"noreferrer">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, 2020-02-20 at 11:59 +0000, Paul Barker wrote:<br>
&gt; &gt; I&#39;m now looking into this...<br>
&gt; &gt;<br>
&gt; &gt; In sstate_checkhashes() we mark sstate as available if<br>
&gt; &gt; fetcher.checkstatus() succeeds. Then at a later point<br>
&gt; &gt; sstate_setscene() calls sstate_installpkg() calls pstaging_fetch=
()<br>
&gt; &gt; calls fetcher.download() to actually get the sstate artifact. If=
 the<br>
&gt; &gt; artifact is removed from the mirror between these two accesses (=
due<br>
&gt; &gt; to an sstate mirror clean up running in parallel to a build), or=
 if<br>
&gt; &gt; there is an intermittent download failure we could see checkstat=
us()<br>
&gt; &gt; succeed then download() fail.<br>
&gt; &gt;<br>
&gt; &gt; I don&#39;t think we should ignore all setscene errors but in th=
e<br>
&gt; &gt; specific case where it&#39;s the download step that fails I thin=
k that<br>
&gt; &gt; should be a warning. Or it could be an error by default with a<b=
r>
&gt; &gt; variable we can set to turn it into a warning. Does that sound<b=
r>
&gt; &gt; reasonable? If so I&#39;ll work up a patch.<br>
&gt;<br>
&gt; Thinking about the code, I&#39;m not sure how you&#39;re generically =
going to<br>
&gt; tell the difference between a setscene task that fails as the file<br=
>
&gt; disappeared compared to a setscene failure with another real error? :=
/<br>
&gt;<br>
&gt; We could make all failed setscene tasks warnings but I think that<br>
&gt; buries actual real errors.<br>
&gt;<br>
&gt; This is probably why I&#39;ve not changed the code before now.<br>
&gt;<br>
&gt; Special exit code values? :/<br>
&gt;<br>
&gt; I&#39;m open to proposals.<br>
&gt;<br>
&gt; I know we could put in some configuration option but in general I hat=
e<br>
&gt; these as it just means more test matrix combinations and more ways fo=
r<br>
&gt; people to see different behaviours. They have a time/place but I&#39;=
m not<br>
&gt; sure its here.<br>
<br>
I agree - I really don&#39;t want to have to add additional complexity<br>
here. But I do think we need to fix this in some way, others are<br>
affected by this as can be seen from previous discussions. And in the<br>
case of a public sstate mirror we can&#39;t control when users decide to<b=
r>
run builds, there will always be the chance of a user running a build<br>
on an old commit while old sstate artifacts are cleaned or starting a<br>
build just as the mirror is taken offline for some maintenance.<br>
<br>
I think we might be able to make this work if we can avoid adding any<br>
new conditional logic to the fetcher itself. I can see that almost<br>
every call to logger.error() is followed by raising an error - perhaps<br>
we could rework the code to include all the relevant info in the<br>
raised error object and allow higher level code to catch the exception<br>
and decide what to do with it. Because once logger.error() is called,<br>
knotty counts an error and bitbake will exit non-zero even if the<br>
error is safely handled. Once the fetcher simply raises exceptions in<br>
the case of failed downloads we could handle this neatly in<br>
sstate.bbclass. Would that be a viable way forward? Or would that<br>
break the other fetcher use cases?<br></blockquote></div></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">FWIW we also have this problem because o=
ur CI nodes all update the sstate cache via rsync after they finish, which =
causes races. This hasn&#39;t affected our developers, but I suspect that i=
s only because they aren&#39;t doing builds at 1 AM.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">The way we worked around it was to split up th=
e build into two invocations of bitbake:</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">=C2=A0bitbake --setscene-only &lt;target&gt; || true</div>=
<div dir=3D"auto">=C2=A0bitbake --skip-setscene &lt;target&gt;</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Although this will likely not work v=
ery well with hash equivalence.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Thanks,<br>
Paul<br>
<br>
</blockquote></div></div></div>

--000000000000a75d75059f1e0d6e--
