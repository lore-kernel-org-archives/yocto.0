Return-Path: <peachj@lexmark.com>
Received: from exprod8og120.obsmtp.com (exprod8og120.obsmtp.com [64.18.3.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5108AE011C5
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 05:24:02 -0700 (PDT)
Received: from mail-qa0-f41.google.com ([209.85.216.41]) (using TLSv1) by
	exprod8ob120.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUGwuX6HlYdCKZ+p1Hio0dtoerJm/ykw/@postini.com;
	Wed, 03 Oct 2012 05:24:02 PDT
Received: by mail-qa0-f41.google.com with SMTP id p27so1799296qat.14
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 05:23:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=fGNIrIjOgR0jF3mYx2TaFVOvkY6w2KiDhbtH6xAL134=;
	b=dIhVdlShidAQNXS5C+FghBWu8fADW/L70bpEkRRUVEqDnsJGoe6FCRQfgq1TFzzeTQ
	RufkQT7K0wJbYAxgDTvD3R8LUdyA1qYKz18/Prl1XIHATuUDo9PYRI+E7pG3/uQtZ1RK
	GhKyAt02b14iGqKeCm3GfF4LMlQDvWIerkfeOPdGmaRyaSVOaMjoOJwZithKrddrkCHQ
	qjRk3z0ElA/zpIJg0eVxhXNaL8Rz+q9qBEQbDwXiNPsOq4BcSFEcFfQGP3gpdlJgRqsf
	H+VcoRnJo1KfVKnmKjr/Pyt8yvdT5XtB5u9P8lkH6+xWINu8bCQE4I67k9dAzKRyaYn1
	iuqw==
MIME-Version: 1.0
Received: by 10.224.187.208 with SMTP id cx16mr6994621qab.31.1349267039046;
	Wed, 03 Oct 2012 05:23:59 -0700 (PDT)
Received: by 10.49.41.102 with HTTP; Wed, 3 Oct 2012 05:23:58 -0700 (PDT)
In-Reply-To: <506BF049.2010407@r-finger.com>
References: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
	<506B23D1.5030901@r-finger.com>
	<CA+QkY1COKHqV25RCOJ-7u+eEyFm-WFn1OP=3zFUiMm4UkBeoww@mail.gmail.com>
	<506BF049.2010407@r-finger.com>
Date: Wed, 3 Oct 2012 08:23:58 -0400
Message-ID: <CA+QkY1CiSNK4AtUpkiukpmT8BU5nQN9=gc=ezMeQeUjS8kVmxg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQnnZyvHkc4iXbrlZvqRWH3ukZZsKnkaEbTCr3TYRQm0DnFGh10YzqmKTh+Mwkz7f+utaz92
Cc: yocto@yoctoproject.org
Subject: Re: How do you release distros produced with Yocto? How should I?
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
X-List-Received-Date: Wed, 03 Oct 2012 12:24:02 -0000
Content-Type: multipart/alternative; boundary=20cf303343c591cad504cb26b6de

--20cf303343c591cad504cb26b6de
Content-Type: text/plain; charset=ISO-8859-1

Tomas,

On Wed, Oct 3, 2012 at 3:59 AM, Tomas Frydrych
<tf+lists.yocto@r-finger.com>wrote:

> > However, we'll likely have at least a hundred
> > packages for which we need to set/manipulate revisions.  I would think
> that
> > would get cumbersome, and in an organization the size of ours (500 or so
> > developers across two sites), there's not really going to be one person
> or
> > team who knows what should go in that file for a release.  Moreover, that
> > still leaves the problem of all those developers needing to know there
> are
> > at least two places in which their package revisions may be controlled.
>  Is
> > your organization significantly smaller than that or are we doing
> something
> > wrong?
>
> I would agree that in this scenario it would best to maintain the source
> revisions in the bb recipes themselves, it keeps people rom stepping on
> each others toes and accidentally changing revisions for other packages
> (which is easily done in automatic merge-conflict resolution gone wrong).
>

Okay, so it sounds like my game plan should be to tag my metadata and
branch it only if necessary, i.e. if someone needs to change a BB
file. (That makes sense, of course, but we have had a long, storied history
of branching when it wasn't necessary in our build and library system, so
that is a change for us.)  Even if we branch our metadata, we'll be
creating a new tag once whatever modifications we need have been made.  Can
anyone see a better way to handle releases than that?

Kind regards,

Jerrod

--20cf303343c591cad504cb26b6de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Tomas,<br><br><div class=3D"gmail_quote">On Wed, Oct 3, 2012 at 3:59 AM, To=
mas Frydrych <span dir=3D"ltr">&lt;<a href=3D"mailto:tf+lists.yocto@r-finge=
r.com" target=3D"_blank">tf+lists.yocto@r-finger.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<div class=3D"im">&gt; However, we&#39;ll likely have at least a hundred<br=
>
&gt; packages for which we need to set/manipulate revisions. =A0I would thi=
nk that<br>
&gt; would get cumbersome, and in an organization the size of ours (500 or =
so<br>
&gt; developers across two sites), there&#39;s not really going to be one p=
erson or<br>
&gt; team who knows what should go in that file for a release. =A0Moreover,=
 that<br>
&gt; still leaves the problem of all those developers needing to know there=
 are<br>
&gt; at least two places in which their package revisions may be controlled=
. =A0Is<br>
&gt; your organization significantly smaller than that or are we doing some=
thing<br>
&gt; wrong?<br>
<br>
</div>I would agree that in this scenario it would best to maintain the sou=
rce<br>
revisions in the bb recipes themselves, it keeps people rom stepping on<br>
each others toes and accidentally changing revisions for other packages<br>
(which is easily done in automatic merge-conflict resolution gone wrong).<b=
r></blockquote><div><br></div><div>Okay, so it sounds like my game plan sho=
uld be to tag my metadata and branch it only if necessary, i.e. if someone =
needs to change a BB file.=A0(That makes sense, of course, but we have had =
a long, storied history of branching when it wasn&#39;t necessary in our bu=
ild and library system, so that is a change for us.) =A0Even if we branch o=
ur metadata, we&#39;ll be creating a new tag once whatever modifications we=
 need have been made. =A0Can anyone see a better way to handle releases tha=
n that?</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div></di=
v>

--20cf303343c591cad504cb26b6de--
