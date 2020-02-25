Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.260.1582659136174864071
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 11:32:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=FT82oW+3;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0936BE0175E; Tue, 25 Feb 2020 11:32:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B2FE003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 11:32:15 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id a142so470874oii.7
        for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 11:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cv+PNgWZztfqaKmXlAmaxvZC9vjSTsUYVKUBQLCdKXE=;
        b=FT82oW+3SrectDdKas0LEj8Lr7Gcdx6/p9UtfOilFecy6suSCU3X78FQV9CwKEznVB
         +Eu+wODDfUWIGbViOeRDiN4Bk5A5aYs1DSdvFKoeWxML1PA236azKz/XNxfNo7bjelGp
         He45T6GutkXlqe+qWXO3GKQ4OcZZ87HBgmJUQObGMq7pK3zYiTUD4BKMkA4NLdZxZ3/h
         HKfrcnrKnLduSVZs5Q52cVfgcHP4+zJLzphmO0GOwJbJcN6+484YkvZlhb4htabANKEh
         3Rp6KpATkquVJbUnlY785YIwInKkGhYQp2q/PBge2gFSqxoQlp7GZTlALs+QhLCNMyDx
         WF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cv+PNgWZztfqaKmXlAmaxvZC9vjSTsUYVKUBQLCdKXE=;
        b=spAL7TE7KtIZgGvLgQ8ZWy07UidAboVEKL2eNU5zV8Nd2t0u1rdamv7xMTKm/imKZB
         4Loyf1AHLSU4NLL+4Hscv3hmuqEDnMi/woS7+lVERweDFw7CJnLB9HIJxBLuTP8L+j4+
         PEduyqhSXLa5G4AUzgUmCVd1Vdix8upfPqDD++QjMmO3l49ZyzwBKfMmfa43MGxZdE/c
         Ckqzy1HD9lJ+RHR8Yw7ygFZmRuXIIMb/XrctLzPWSUD2hRMllYXLkoFtXFhFXjqbHDKq
         xs0+f/R6WpEzAwW6NA7Y+Rn81AtlbOtEda9beSTmvc9jaqpNv1lML9GiOogvlDOKiMEG
         ADcg==
X-Gm-Message-State: APjAAAXl13QWGhhxfm0JpnEpjGYaGbk5Xwx4k5nJE5A3pyYMOclwt7Yd
	UKXTA3NYT46vfod/SoDXS47NhYbYQbJvlgFlhL7brQ==
X-Google-Smtp-Source: APXvYqy+Vob9BeNKwdJPfTw6NWChXC2UupVhtBf9gnnzmo6MyYx4Ix7B/r8DsEf4E8UCsLbpEMSEKZYeaEpOhd+qk+I=
X-Received: by 2002:a05:6808:30d:: with SMTP id i13mr381065oie.144.1582659134411;
 Tue, 25 Feb 2020 11:32:14 -0800 (PST)
MIME-Version: 1.0
References: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
 <20200225183024.GA1578@denix.org> <CAFSZm+jMJYU3JNCSQLNQwXs0chBh-yoYx2vE2v+Eti=xTDZYsg@mail.gmail.com>
 <20200225192818.bbv3zouozqbxvta4@jama>
In-Reply-To: <20200225192818.bbv3zouozqbxvta4@jama>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 25 Feb 2020 14:32:03 -0500
Message-ID: <CAFSZm+ibicFeUd_X9hM8TjHAeR15r3pj2xY09Lq3Vms5NobkyQ@mail.gmail.com>
Subject: Re: [yocto] Using "latest git" versions of recipes
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000081ed79059f6b8b81"

--00000000000081ed79059f6b8b81
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 25, 2020 at 2:28 PM Martin Jansa <martin.jansa@gmail.com> wrote:

> On Tue, Feb 25, 2020 at 02:10:15PM -0500, Joel A Cohen wrote:
>
>
> > PV_pn-recipe1 = "1.0.1+git${SRCPV}"  # I'm not sure if this would
> actually
> > work?
>
> Yes, this is how SRCPV is supposed to be used, but you can have this in
> the normal recipe without the override.
>

Everything else you said makes sense to me, but why would I want to append
"+git${SRCPV}" to the actual recipe? Surely I only want to append the git
suffix stuff if I'm using a "latest" version, and I want the PV to be set
by the filename in the default case?

--Aaron

--00000000000081ed79059f6b8b81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 25, 2020 at 2:28 PM Marti=
n Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>On Tue, Feb 25, 2020 at 02:10:15PM -0500, Joel A Cohen wrote:<br><br>
<br>
&gt; PV_pn-recipe1 =3D &quot;1.0.1+git${SRCPV}&quot;=C2=A0 # I&#39;m not su=
re if this would actually<br>
&gt; work?<br>
<br>
Yes, this is how SRCPV is supposed to be used, but you can have this in<br>
the normal recipe without the override.<br></blockquote><div><br></div><div=
>Everything else you said makes sense to me, but why would I want to append=
 &quot;+git${SRCPV}&quot; to the actual recipe? Surely I only want to appen=
d the git suffix stuff if I&#39;m using a &quot;latest&quot; version, and I=
 want the PV to be set by the filename in the default case?</div><div><br><=
/div><div>--Aaron</div><div>=C2=A0</div></div></div>

--00000000000081ed79059f6b8b81--
