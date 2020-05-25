Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.37400.1590433834814533141
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 12:10:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YN+i4PQN;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E6F9E01C16; Mon, 25 May 2020 12:10:34 -0700 (PDT)
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
	*      [209.85.208.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4646AE01BC8
	for <yocto@yoctoproject.org>; Mon, 25 May 2020 12:10:33 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id k19so15810690edv.9
        for <yocto@yoctoproject.org>; Mon, 25 May 2020 12:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YfBj9cyglOxA3MW/cv0ES39wSTeA1gbYuMMJ3e1B2VQ=;
        b=YN+i4PQNBGxLPD2t3b27t60MJBjPBx/zL5eOBiWnKcsNrAgZIfNiD3ME/s70btnXKk
         /vWXMkz3a8xVNt7EK8elmCQgENkLNigF3UQArKdH4cKs3gtlxEjNu0QWlRRNwkXC36hQ
         HhwssKYNEWXn90ZIiztiuucMd3JAQNfEwS7EiAkL/ImuT13xYfgsObELhUopYwQXtUfL
         tFzrR4fugYlbiNJvq9pHl8D3lHajqCGnHcyWHmw3sStJKxD18RvjNHsZuUgzXcLGj4YH
         DV7BQyv8BAL39QZjijcStUlsSY5RxGR3Xx8Ztt/eNOXcsc1K81sTi9Xye9WWhTodKNrS
         GnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YfBj9cyglOxA3MW/cv0ES39wSTeA1gbYuMMJ3e1B2VQ=;
        b=FMKlqiZob8gWGnm7YgAk6owHng7pb9uRajYNCSIP2ADqsF726koNlheiUo+PcIjX5R
         5IZV9mxXY7OHlcRuIoiKH9KLVgYGslc1ZyYRJU1+fCx4Sf/+oLCDKuzDbCXctZ1YfAOi
         a+aJqFi04rZXsa0F0hr37mOM3F3LaUnMtPNkvYxdlWu3ElL6/VqC5Gwu7yFd3sptK5kH
         DAU4DuknSFRM26wxB0i/t1T03UPve9BNP4mVl7q3WIT3xabKs4Fk54jpmZA1suKVkgua
         tJn2NbsZecLEDZK3Xf0ErWL2/6bR85PrreDiRd+8f9KqBgFIxxBCU72DiPGcfg1xriF4
         KFsw==
X-Gm-Message-State: AOAM531prvyB/mI0Q+O6t3opB9M5DTTs9KGiZkeH7UFmN9Ypx1IbfgEg
	hJp340mPUvdHQai/H6Keev0oEDh8GZi21FOq/4I=
X-Google-Smtp-Source: ABdhPJzrc6IVto/BoExk3J9jriOPBFbeiQ7ZeeAw+/pmzD3V/Yx7iaDPEjLx9smSc6VDlknidqYj7o2E9c6L358Dwpk=
X-Received: by 2002:a05:6402:22a6:: with SMTP id cx6mr16631668edb.76.1590433832396;
 Mon, 25 May 2020 12:10:32 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005251229340.1134347@localhost.localdomain>
 <CA+chaQe56NiFV+MFagQiQDBpKwt_YcgNY06zOLn=Ov2is9C1vQ@mail.gmail.com>
 <alpine.LFD.2.21.2005251321230.1137699@localhost.localdomain>
 <CA+chaQcOhHznYMp2WCArqdW4Oj3fVjTFJZWO330jWGJOusGe+A@mail.gmail.com>
 <161256105F0FE409.13804@lists.yoctoproject.org> <alpine.LFD.2.21.2005251339240.1138672@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005251339240.1138672@localhost.localdomain>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 25 May 2020 21:10:21 +0200
Message-ID: <CA+chaQfCYYSgTccwrwys5736k4Sa97BVyBC+pN-v0ue04ZBXvQ@mail.gmail.com>
Subject: Re: [yocto] how to un-blacklist a blacklisted recipe?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009e6b8d05a67dbb47"

--0000000000009e6b8d05a67dbb47
Content-Type: text/plain; charset="UTF-8"

Yes, it's worth. Thanks

On Mon, May 25, 2020 at 7:40 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Mon, 25 May 2020, Robert P. J. Day wrote:
>
> > On Mon, 25 May 2020, Martin Jansa wrote:
> >
> > > Yes, in local.conf or distro config, both work fine. Maybe your
> > > PNBLACKLIST you're trying to unblacklist is using normal assignment
> > > instead of weak one? See
> >
> >   i just now determined that that is exactly what is happening --
> > tried it with nanopb recipe from meta-oe, which contains:
> >
> >   PNBLACKLIST[nanopb] = "Needs forward porting to use python3"
> >
> > switched that to weak assignment, all good. does that imply that,
> > other than in perhaps exceptional circumstances, *all* blacklisting
> > should use weak assignment?
>
>   never mind, just took a look at the commit which does exactly this.
> is it worth submitting a patch to tweak the few hard assignments?
>
> rday
>

--0000000000009e6b8d05a67dbb47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, it&#39;s worth. Thanks<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 25, 2020 at 7:4=
0 PM Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@c=
rashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On Mon, 25 May 2020, Robert P. J. Day wrote:<br>
<br>
&gt; On Mon, 25 May 2020, Martin Jansa wrote:<br>
&gt;<br>
&gt; &gt; Yes, in local.conf or distro config, both work fine. Maybe your<b=
r>
&gt; &gt; PNBLACKLIST you&#39;re trying to unblacklist is using normal assi=
gnment<br>
&gt; &gt; instead of weak one? See<br>
&gt;<br>
&gt;=C2=A0 =C2=A0i just now determined that that is exactly what is happeni=
ng --<br>
&gt; tried it with nanopb recipe from meta-oe, which contains:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0PNBLACKLIST[nanopb] =3D &quot;Needs forward porting to use=
 python3&quot;<br>
&gt;<br>
&gt; switched that to weak assignment, all good. does that imply that,<br>
&gt; other than in perhaps exceptional circumstances, *all* blacklisting<br=
>
&gt; should use weak assignment?<br>
<br>
=C2=A0 never mind, just took a look at the commit which does exactly this.<=
br>
is it worth submitting a patch to tweak the few hard assignments?<br>
<br>
rday<br>
</blockquote></div>

--0000000000009e6b8d05a67dbb47--
