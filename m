Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.11576.1632065208724607613
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Sep 2021 08:26:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mIVjS6ve;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id u11so9469176uaw.3
        for <yocto@lists.yoctoproject.org>; Sun, 19 Sep 2021 08:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lxb8mrMvV+XvWopO3V3nBlWO4+T/XcbA5zBnFOt8SiY=;
        b=mIVjS6vexkWFjK4l4/7MOPp5r10wWf/o2W32cXJ8EGK9zzprt9X1LN/AIEp+WUGPHX
         9XcTPmgmzx58MZ037njEcYyp7TrOWs0SxywJ4KnGJnmd7T06eO2GEsqjGfwVBSLj5Nqr
         3KK7A4bZElB3PBrYicdMIyP/Xwt7fMNfJkzVefW2vtwqph+UhIUWDF3eWI8+tLFOE4m+
         ieVt9ARGQ8O+sd6DyHliYDhk42uCzP+u1nX4xuF1K9+JsvfN8pnnD9WvDYoDrTUHroP0
         AMjndfOBWzCrrwEkxKSr0XMMiumUROCc9e08HoiVU/bw55Ht7jeQifc8YtuiVfzYINfF
         Vlvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lxb8mrMvV+XvWopO3V3nBlWO4+T/XcbA5zBnFOt8SiY=;
        b=avyFXoXHgerfbbRXujVG9psTzxQcpM+XW9jIFKnH9BXqPrWbTqUIzPt05USPejMNJJ
         kYUrUT92SdFVu4yKYIJOjMuZeImp01iDpJj20LfNJGqVuEeGm3N/ixwQvjePKnFnI3Z+
         CRneH1LfyLi+b6hvvCHEzYqezDp77GgzakVoP6RdSNptAgzEZrn1gllq0C5nJ+0AihQ0
         XSS7mczKQZy/yMyz8ZvMlG82L+tEhpF3XQHMBvIa35qTdJq4zKVcar2fwNq78dczZlpV
         iRyAobLpEi28YTy7kW8CmONXgXbnjTDcNXIsc+aGVEnx4YxUDAOUVMNwQxg6nu7jRYmQ
         G9tw==
X-Gm-Message-State: AOAM530sF+w1hGNs9SV8fM2X3QkCcFZ7qlgbtVS8eXHVMUXHvoGtxU4i
	CST+ks81qJKjQJglisxALDrVRB7ttPYnC4OzL3A=
X-Google-Smtp-Source: ABdhPJz9XN8viClrHDVECuJLW3pDGVv4MbEFGONH2SwINTiUZYFpkJyjPZJ3jJyPe2/l5jXG4iIgPfMfB4mDuzcEQ48=
X-Received: by 2002:a05:6130:392:: with SMTP id az18mr10282606uab.71.1632065207559;
 Sun, 19 Sep 2021 08:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210917133800.2436736-1-alex@linutronix.de> <ea5b24e80be3fbec544e1259e5f5684646417e3c.camel@linuxfoundation.org>
In-Reply-To: <ea5b24e80be3fbec544e1259e5f5684646417e3c.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 19 Sep 2021 17:26:36 +0200
Message-ID: <CANNYZj9WDSzUKNAkCqgVam__4Z2adRzkmc+syKNNWj7VubFx+Q@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts/collect-results: copy everything out of tmp/log/oeqa
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Alexander Kanavin <alex@linutronix.de>
Content-Type: multipart/alternative; boundary="000000000000f26ad705cc5aca55"

--000000000000f26ad705cc5aca55
Content-Type: text/plain; charset="UTF-8"

For me it's a different use case: archiving the logs regardless of whether
things fail or not. They can also be just
too large and unwieldy to get printed directly. The patch to
testimage.bbclass splits them into directories by image
name, so there's already some layout. The image sub-directories would
simply show up e.g. here:
https://autobuilder.yocto.io/pub/non-release/20210614-15/testresults/no-x11/

Alex

On Sun, 19 Sept 2021 at 12:37, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2021-09-17 at 15:38 +0200, Alexander Kanavin wrote:
> > There are additional logs there (such as task log or qemu
> > console output), which can be useful for debugging test failures.
> >
> > [YOCTO #14518]
> >
> > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> > ---
> >  scripts/collect-results | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/scripts/collect-results b/scripts/collect-results
> > index 93834d6..3663330 100755
> > --- a/scripts/collect-results
> > +++ b/scripts/collect-results
> > @@ -3,11 +3,9 @@ WORKDIR=$1
> >  DEST=$2
> >  target=$3
> >
> > -RESFILE=$WORKDIR/tmp/log/oeqa/testresults.json
> > -
> > -if [ -e $RESFILE ]; then
> > -    mkdir -p $DEST/$target
> > -    cp $WORKDIR/tmp/log/oeqa/testresults.json  $DEST/$target/
> > +mkdir -p $DEST
> > +if [ -e $WORKDIR/tmp/log/oeqa/ ]; then
> > +    cp -rf $WORKDIR/tmp/log/oeqa/ $DEST/$target
> >  fi
> >
> >  if [ -e $WORKDIR/buildhistory ]; then
>
> I'm not sure about this since it has the potential to add a lot of files
> to the
> release directories and I suspect that will confuse the releases and people
> looking at them. At the very least we need to think about layout here...
>
> When I proposed we improve the logging on the autobuilder, I was thinking
> more
> about printing the logfiles on the console in the failure case. That way
> the
> logs are immediately visible on the autobuilder log output people are
> looking at
> and you don't have to go digging for the files. I can see pros/cons to both
> approaches though.
>
> Cheers,
>
> Richard
>
>

--000000000000f26ad705cc5aca55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For me it&#39;s a different use case: archiving the l=
ogs regardless of whether things fail or not. They can also be just</div><d=
iv>too large and unwieldy to get printed directly. The patch to testimage.b=
bclass splits them into directories by image <br></div><div>name, so there&=
#39;s already some layout. The image sub-directories would simply show up e=
.g. here:</div><div><a href=3D"https://autobuilder.yocto.io/pub/non-release=
/20210614-15/testresults/no-x11/">https://autobuilder.yocto.io/pub/non-rele=
ase/20210614-15/testresults/no-x11/</a><br></div><div><br></div><div>Alex<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, 19 Sept 2021 at 12:37, Richard Purdie &lt;<a href=3D"mailto=
:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On F=
ri, 2021-09-17 at 15:38 +0200, Alexander Kanavin wrote:<br>
&gt; There are additional logs there (such as task log or qemu<br>
&gt; console output), which can be useful for debugging test failures.<br>
&gt; <br>
&gt; [YOCTO #14518]<br>
&gt; <br>
&gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex@linutronix=
.de" target=3D"_blank">alex@linutronix.de</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 scripts/collect-results | 8 +++-----<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 5 deletions(-)<br>
&gt; <br>
&gt; diff --git a/scripts/collect-results b/scripts/collect-results<br>
&gt; index 93834d6..3663330 100755<br>
&gt; --- a/scripts/collect-results<br>
&gt; +++ b/scripts/collect-results<br>
&gt; @@ -3,11 +3,9 @@ WORKDIR=3D$1<br>
&gt;=C2=A0 DEST=3D$2<br>
&gt;=C2=A0 target=3D$3<br>
&gt;=C2=A0 <br>
&gt; -RESFILE=3D$WORKDIR/tmp/log/oeqa/testresults.json <br>
&gt; -<br>
&gt; -if [ -e $RESFILE ]; then<br>
&gt; -=C2=A0 =C2=A0 mkdir -p $DEST/$target<br>
&gt; -=C2=A0 =C2=A0 cp $WORKDIR/tmp/log/oeqa/testresults.json=C2=A0 $DEST/$=
target/<br>
&gt; +mkdir -p $DEST<br>
&gt; +if [ -e $WORKDIR/tmp/log/oeqa/ ]; then<br>
&gt; +=C2=A0 =C2=A0 cp -rf $WORKDIR/tmp/log/oeqa/ $DEST/$target<br>
&gt;=C2=A0 fi<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 if [ -e $WORKDIR/buildhistory ]; then<br>
<br>
I&#39;m not sure about this since it has the potential to add a lot of file=
s to the<br>
release directories and I suspect that will confuse the releases and people=
<br>
looking at them. At the very least we need to think about layout here...<br=
>
<br>
When I proposed we improve the logging on the autobuilder, I was thinking m=
ore<br>
about printing the logfiles on the console in the failure case. That way th=
e<br>
logs are immediately visible on the autobuilder log output people are looki=
ng at<br>
and you don&#39;t have to go digging for the files. I can see pros/cons to =
both<br>
approaches though.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000f26ad705cc5aca55--
