Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.5703.1599102406334141508
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 20:06:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QRQXspit;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: simonkbaby@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id l17so1056977edq.12
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2020 20:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ecySdwD4gCcBJ9NmKoHzIwoK0sXMcOwFqJZtxZCg5OE=;
        b=QRQXspitHEaVi6J1v0+bkqR91X+CXjJZOyjG2fYhbH3F3BueBVpB+pSpYbdbupLkCc
         mtVZ7lkaD2tRLAnJaPNkjdPmkimNJ038tfUOW2yH5FWUl4c07+2eYSs5qCo3PGque9+B
         WcS1DFcchVBjnfKWnO1QYiWViti+AnT9I9beOkjlCiqH4Vu5bgBWMh1rCW0Gb8gF2fCi
         J+CT6n4J6mY/LhdgIqCC81Nt+9gvIEGS287DV+vnjOtmPq4xr6f95PujJtkWShcjRDPM
         yEaYrhju/r95mdroTJRUJUGoZ8rZWEIYvGxLNJvYKr/Lcb3zGrXOWP2lVGQ5ynNUEXty
         Hysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ecySdwD4gCcBJ9NmKoHzIwoK0sXMcOwFqJZtxZCg5OE=;
        b=DNrVGrKXfKdqgBs5ZSSy+GKieUtlpfQVnOhaqosggCEUOGzCDsHKjjNi5ppZcbyKBC
         1gIrVXQq+l3bXG8+RAXqsVh7HmxpArlj4TVLHqdDhNTmtwJNx0JPgzvvnENln6ej9/Xl
         gouW3Gu8NNjrhbm5d1uCj1ckyS/wxorsTZY8yiOx2n/po3awud+UWg7Z2g7JhiVpCpdB
         r2LGnExPyfvqYQ1mCtZPrEIVJE0SWN6HepsS4Ek1xQNrakma/C00g5AQjlm3Z6IOlPlC
         FZ0ysbxjkPpHz9+K8ZBlRgrAcL6JCmpurDP/RSIiuWpQ/bdlRjTm1/jHMUghNABp1Huc
         zIig==
X-Gm-Message-State: AOAM532kWsX6b2g818LwTambkyOs+kUWtB5hdcsO1nNtudJcWLaLUP6D
	mr5jyW0Ov2koieAVd9vY8hYAT8p4zpk3dWUhOsg=
X-Google-Smtp-Source: ABdhPJy5iTDOSs3yniGO4+2Py8oKKgomxBTi2T4MSrW7Beu0PRyKqsxZvQ6eUZxtBgg0/fPPi/VGe/FEuFTLxRBa+WM=
X-Received: by 2002:a05:6402:b45:: with SMTP id bx5mr1022636edb.22.1599102404725;
 Wed, 02 Sep 2020 20:06:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:1770:0:0:0:0 with HTTP; Wed, 2 Sep 2020 20:06:44
 -0700 (PDT)
In-Reply-To: <CAMKF1so9gTfy5FuDJu0NvCp9j42SJT=7G+UFHjrbUDHqq2+w7Q@mail.gmail.com>
References: <CAEFUPH3A6vnmB8X-43hchgJY2juvqJp_Lhf+e1iOv2GsPzZWLA@mail.gmail.com>
 <CAMKF1so9gTfy5FuDJu0NvCp9j42SJT=7G+UFHjrbUDHqq2+w7Q@mail.gmail.com>
From: "SIMON BABY" <simonkbaby@gmail.com>
Date: Wed, 2 Sep 2020 20:06:44 -0700
Message-ID: <CAEFUPH3POzgiRgC+TgBMw3ZAb4HDNvt4L3ZHb62tUVW5DqZ8rQ@mail.gmail.com>
Subject: Re: Query on building applications and catch exceptions across different shared libraries
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cb0f6b05ae600a32"

--000000000000cb0f6b05ae600a32
Content-Type: text/plain; charset="UTF-8"

No I am not using -fexceptions compiler flag .

Rgds
Simon

On Wednesday, September 2, 2020, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Sep 2, 2020 at 5:18 PM SIMON BABY <simonkbaby@gmail.com> wrote:
> >
> > Hello,
> >
> > I have an issue with my throw , catch code in c++.  If i throw an error
> after the openssl library call, my application crashes.  If my application
> wishes to throw and catch exceptions across different shared libraries do
> we have any specific settings I can add in my bitbake recipe?
> >
>
> are you using -fexceptions to compile your application ?
>
> > regards
> > Simon
> > 
>

--000000000000cb0f6b05ae600a32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No I am not using -fexceptions compiler flag .<div><br></div><div>Rgds</div=
><div>Simon<br><br>On Wednesday, September 2, 2020, Khem Raj &lt;<a href=3D=
"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Wed, Sep 2, 2020 at 5:18 PM SIMON BABY &lt;<a href=
=3D"mailto:simonkbaby@gmail.com">simonkbaby@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have an issue with my throw , catch code in c++.=C2=A0 If i throw a=
n error after the openssl library call, my application crashes.=C2=A0 If my=
 application wishes to throw and catch exceptions across different shared l=
ibraries do we have any specific settings I can add in my bitbake recipe?<b=
r>
&gt;<br>
<br>
are you using -fexceptions to compile your application ?<br>
<br>
&gt; regards<br>
&gt; Simon<br>
&gt; <br>
</blockquote></div>

--000000000000cb0f6b05ae600a32--
