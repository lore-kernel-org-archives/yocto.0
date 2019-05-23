Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5162DE00B8F; Thu, 23 May 2019 07:32:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCA4CE00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:32:29 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id e13so5660306ljl.11
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OBIeMeJT0C7d+2ueUWFbNxiEXokiXb5PY1fkI9Rfjfk=;
	b=rgo/RwNXd0Tcr4KMNO7OKvFbUWzg3xXua7B/oc6yjTdQ4T17C6uUzD/cGFNJj8lRc8
	+pqPUOXdu0NP45gazVnAovTKol2tL2wHaGDuK354jnuLG1IzUaRZFC5dCmy0/U5TH5by
	Y54xsxkJJNcdJiUBDjQ4JU/Ub4hwuUi47bmu5vvHdsdouWxVEevdnZzXIkiSCJIgOMGV
	cqW+KpQ84Ne9OUYhUQ6M1C3Nm+3jAui0oLpObj0vUB/2Zk2thf1I3D1Bdzvx/yziY+Ik
	pxrgmBGFfHfiR44uLyiV0g3ONrgxjKpw8zjqYfRP2MBbuO6sN21tspBN1HA8/JqwerlE
	jgUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OBIeMeJT0C7d+2ueUWFbNxiEXokiXb5PY1fkI9Rfjfk=;
	b=fq4WBHPUD9dNZVh6W8rasOXy+bJC6PacHlxJq9X2e7Y0K1cDCC9OEWfsI4jrKheNlv
	s6zsoCXbQq0w94osNFWkpZGViotKSuaeZd8VxyfWABuQlINlHf1rk6cJiYUMaHI8/qW+
	WyXBVlAE/DYn2BJuo8wmveKLdlJRNnw3AG+UUXmX/e/RHxPo+ghNHzGo0dg79DT+G+rA
	S64ilAKP8tZjuISw3OhLHDc/kQmmkn0gbyvJgBgeyOCq87soWq5QqUkI0Abz0JkziPEa
	A4DOI5IoA5B1vWNfw5SN0gKu8bwcYK+AWpSQqcQYcCVm7HXnb29Ystu5rLUZ68fWfeQk
	dU9w==
X-Gm-Message-State: APjAAAVTiS57mvcnNTtx69J/2AyZms/NqWFOT2C+cZAI5XH2layQJkxb
	v0QB+L/jCdiXkJN9kiz8DC7FcFlhnCJD/FT8XkhUeICd
X-Google-Smtp-Source: APXvYqzwp87/Dy6v3Yr11igT28GVPJuA9uoMgkq/XfFLrq0FZI4GAnYaXiXQX6YYSqmLM/cAexSDtT2Nh1++Si4IyqI=
X-Received: by 2002:a2e:9310:: with SMTP id e16mr23983677ljh.36.1558621948831; 
	Thu, 23 May 2019 07:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
In-Reply-To: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 May 2019 10:32:17 -0400
Message-ID: <CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: zubair@balena.io, Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-devsrc used to be full source - not the case since thud
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
X-List-Received-Date: Thu, 23 May 2019 14:32:32 -0000
Content-Type: multipart/alternative; boundary="00000000000099744005898ef3f7"

--00000000000099744005898ef3f7
Content-Type: text/plain; charset="UTF-8"

On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hello,
>
> This might have been discussed before. I couldn't find a relevant
> thread, but if it is so, just link me to it.
>
> Since thud, more specific since
>
> commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Sat Aug 18 22:50:44 2018 -0400
>     kernel-devsrc: restructure for out of tree (and on target) module
> builds
>
> ... we switched from a recipe that was deploying the entire source code
> to one that provides mainly the kernel headers (but not only). This
> change broke people expectations of this recipe while the description is
> also confusing: "Development source linux kernel. When built, this
> recipe packages the \source of the preferred virtual/kernel provider and
> makes it available for full kernel \development or external module builds".
>
> If size is not a problem (which can be the case when you compile on a
> builder for example and deploy only a OOT kernel module through other
> means), the full kernel source was a painless experience where things like
>
> commit a9471601fedd1f5087304eaa5fd39b98ae220313
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Thu Aug 30 09:45:41 2018 -0400
>     kernel-devsrc: fix arm/arm64 target module build
>
> ... would not appear. I understand the size impact on target and for
> those cases, continuously maintaining this recipe with new
> files/resources needed from the kernel, makes sense. So my proposal is
> to have two recipes, for example kernel-devsrc and kernel-fullsrc
> (kernel-src etc.) so people can choose what they need/want
> deploying/using. Or even have another devsrc provider. I'm open to any
> implementation detail. I'd just want to have an option for a full kernel
> source recipe.
>

This is already planned, and hidden in bugzilla somewhere. I'll have some
new kernel packaging
options available for the fall release.

Bruce



>
> Regards,
>
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--00000000000099744005898ef3f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan &lt;=
<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
This might have been discussed before. I couldn&#39;t find a relevant<br>
thread, but if it is so, just link me to it.<br>
<br>
Since thud, more specific since<br>
<br>
commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
Date:=C2=A0=C2=A0 Sat Aug 18 22:50:44 2018 -0400<br>
=C2=A0=C2=A0=C2=A0 kernel-devsrc: restructure for out of tree (and on targe=
t) module builds<br>
<br>
... we switched from a recipe that was deploying the entire source code<br>
to one that provides mainly the kernel headers (but not only). This<br>
change broke people expectations of this recipe while the description is<br=
>
also confusing: &quot;Development source linux kernel. When built, this<br>
recipe packages the \source of the preferred virtual/kernel provider and<br=
>
makes it available for full kernel \development or external module builds&q=
uot;.<br>
<br>
If size is not a problem (which can be the case when you compile on a<br>
builder for example and deploy only a OOT kernel module through other<br>
means), the full kernel source was a painless experience where things like<=
br>
<br>
commit a9471601fedd1f5087304eaa5fd39b98ae220313<br>
Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
Date:=C2=A0=C2=A0 Thu Aug 30 09:45:41 2018 -0400<br>
=C2=A0=C2=A0=C2=A0 kernel-devsrc: fix arm/arm64 target module build<br>
<br>
... would not appear. I understand the size impact on target and for<br>
those cases, continuously maintaining this recipe with new<br>
files/resources needed from the kernel, makes sense. So my proposal is<br>
to have two recipes, for example kernel-devsrc and kernel-fullsrc<br>
(kernel-src etc.) so people can choose what they need/want<br>
deploying/using. Or even have another devsrc provider. I&#39;m open to any<=
br>
implementation detail. I&#39;d just want to have an option for a full kerne=
l<br>
source recipe.<br></blockquote><div><br></div><div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">This is already planned, and hidden in bugzi=
lla somewhere. I&#39;ll have some new kernel packaging</div><div class=3D"g=
mail_default" style=3D"font-size:small">options available for the fall rele=
ase.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards,<br>
<br>
-- <br>
Andrei Gherzan<br>
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--00000000000099744005898ef3f7--
