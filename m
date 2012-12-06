Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 441E4E0141C
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 14:25:57 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so6054414lah.35
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2012 14:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=2Nd6lHVvsvOMnqrOq3l2z/q3HYAXvpEv0R4UTydyqa4=;
	b=kIBw0E5qbUZGeHFUMHmW4mwJMzhtTd0TOePDAsh98RzdanHKTtEioyoWyHsQbt5uqP
	OKKvqV8JsFoMx2QZS4+zDn0hjMCwEV3mQyxQi6vNAgwq5tg5QV30Zhryf6MuRWk7Jkh/
	FKIpRCV8sH7bPEv5GZ0/ukD7Ae0jepnXqPBaQ8LPtV/xRQ6dsvDfLt6LgM055v1/2SXr
	g7pj/8jOwXtVtG+bwRLE1KftfwazFYgXbt353tSrS3jyLHmuYXGvHdWvz3H2DH2XNK7T
	2qOy60i1HvNkuD1EpMp8+cRiJyei6zbis2kXswL2LDkweUaT4mMfIxPqAhFSWjGvnZmg
	MKgQ==
Received: by 10.112.16.69 with SMTP id e5mr1211021lbd.43.1354832756056; Thu,
	06 Dec 2012 14:25:56 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Thu, 6 Dec 2012 14:25:35 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212061650350.4116@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 6 Dec 2012 15:25:35 -0700
X-Google-Sender-Auth: 4VZ1Q9cpnAEwB-Fr9cmQaryJT6w
Message-ID: <CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
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
X-List-Received-Date: Thu, 06 Dec 2012 22:25:57 -0000
Content-Type: multipart/alternative; boundary=f46d0401fb4127a28404d0369523

--f46d0401fb4127a28404d0369523
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>   in addition, there is absolutely no need to add a ":" to the value
> as the processing adds that for you, so the many, many examples of
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> is potentially confusing to folks reading the code.  (that trailing
> ":" doesn't hurt, but it has no value.)
>

This is wrong. You only don't need the leading : if FILESEXTRAPATHS was
empty to begin with, which is only the case if that is the first and only
bbappend adding to it. As soon as you get more than one, you'll end up with
concatenated values and no separator.
-- 
Christopher Larson

--f46d0401fb4127a28404d0369523
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Dec 6=
, 2012 at 2:59 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto=
:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":p1">=C2=A0 in addition, there is=
 absolutely no need to add a &quot;:&quot; to the value<br>
as the processing adds that for you, so the many, many examples of<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
is potentially confusing to folks reading the code. =C2=A0(that trailing<br=
>
&quot;:&quot; doesn&#39;t hurt, but it has no value.)</div></blockquote></d=
iv><br>This is wrong. You only don&#39;t need the leading : if FILESEXTRAPA=
THS was empty to begin with, which is only the case if that is the first an=
d only bbappend adding to it. As soon as you get more than one, you&#39;ll =
end up with concatenated values and no separator.<br>

-- <br>Christopher Larson<br>
</div>

--f46d0401fb4127a28404d0369523--
