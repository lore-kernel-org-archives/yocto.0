Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 838F3E00B5E; Wed, 31 Oct 2018 08:33:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF40E00AE0
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 08:33:52 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id x31-v6so13995589edd.8
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 08:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eB2jZ2VU5O2fKWlQqC8QAWaigxrSxTnlisHVfTAIz+U=;
	b=G0pL+qeT+S9hYdUSjnS7ROFap+uGws0CHuESXgq4jRCXbyDgGvKXF66KbpJhFQIAlF
	1SdeUp5MQoBTTrQldviwGaqohA+F/QLMWGsXG9YtLYwHdV+S6g6wtaKoLY3LmGO+9+cl
	zJP4Hh2Uu4MXEBvIzWFydGvOo6z0V3FMdEu7MaAMDw3jC+HJZl/XHk/dw29skpmbQs5K
	RRxhBE2s9J90F4xK9QEB+vfYG2Vz8I7JujvFu9b/pCVm8DkYtT6gcD+RzLl2roIIPs7X
	HLPtEstGqSv/kQ0PbkAe5VI2QR6iuTWcx/J0UJwq5o9R954/JcnwPGh2Rqaz2xRxVGU8
	IZug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eB2jZ2VU5O2fKWlQqC8QAWaigxrSxTnlisHVfTAIz+U=;
	b=Q5J3YNo/NunfhLfvZrH84kz/gPE0JREZebuJkxeXlT6iWihqn8eMDIaoUtfinxLamK
	ieosjnDE13O3ZLvpQJctgSkQUwlSwIf4kgTRBGzT2qKS1RqQnR1z/ruZAI0M6PfKTg8c
	cf3EWN4JjN5zYDndb1D2Nk/Pdz8DBoLmDVK/oZEl4KQQU4YHLOHj1OgpKglHtMnWJwEA
	0wWDwW+0cUgLnss8rH/QYniuge336lqA1xdhxbQFuL7ZICBv6HpD3SBJ/SI/Dfo4S3i0
	x1YtdBSThWoiQP/UMHpnWgrLYllxLDN+oAJoK/tgeq/UhhKSv+KWz1k3X6BqtWCy1KBD
	bS/A==
X-Gm-Message-State: AGRZ1gLFs1NeVNbzWsBZZ2Wz614qWipecUqOpYUrEnGEhXNWc3n1HZPQ
	fLWUutNMDgyFI6u6p+Us8ttXyBqCzBGl0Zm7xr90Xg==
X-Google-Smtp-Source: AJdET5c4esamMr8ci3XJhZCul2jt6gYqip023VND3wrvTjkXZh50BDD45D0+f33wOJfhgqTspDclHy1Qyf4jgSPMI2w=
X-Received: by 2002:a17:906:1a49:: with SMTP id
	j9-v6mr1932903ejf.45.1541000032013; 
	Wed, 31 Oct 2018 08:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
	<25f056c7-d6ba-499f-8bf4-b8d1470fff4b@gmail.com>
In-Reply-To: <25f056c7-d6ba-499f-8bf4-b8d1470fff4b@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 31 Oct 2018 08:33:40 -0700
Message-ID: <CAFNP8OtRYQQ4_YL+wfVutXfb8u6T0gufKOY78-Rw8oRnpnQzSQ@mail.gmail.com>
To: yocto.user.mailinglist@gmail.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: 2.6 migration guide
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
X-List-Received-Date: Wed, 31 Oct 2018 15:33:53 -0000
Content-Type: multipart/alternative; boundary="00000000000081d08b057988072c"

--00000000000081d08b057988072c
Content-Type: text/plain; charset="UTF-8"

Thanks Robert...  I will do that.

Scott

On Wed, Oct 31, 2018 at 12:15 AM Robert Berger <
yocto.user.mailinglist@gmail.com> wrote:

> Hi Scott,
>
> On 31.10.18 00:06, Scott Rifenbark wrote:
> >
> > I have an initial section at
> >
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release,
>
> > which is based on Richard's input.  I am sure there are more items.
>
> You might want to add a link to the bitbake manual or some example from
> there for the new functionality of _remove operator:
>
>
> http://git.openembedded.org/bitbake/tree/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml?id=c0a23dd9155c50a6b7df796980bc7b612cac7994#n334
>
> FOO = "123 456 789 123456 123 456 123 456"
> FOO_remove = "123"
> FOO_remove = "456"
>
> FOO is now: "  789 123456    " instead of "789 123456"
>
> >
> > Thanks,
> > Scott
>
> Regards,
>
> Robert
>
>

--00000000000081d08b057988072c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Robert...=C2=A0 I will do that.</div><div><br>=
</div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Wed, Oct 31, 2018 at 12:15 AM Robert Berger &lt;<a href=3D"mailto:y=
octo.user.mailinglist@gmail.com">yocto.user.mailinglist@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">Hi Scott,<br>
<br>
On 31.10.18 00:06, Scott Rifenbark wrote:<br>
&gt; <br>
&gt; I have an initial section at <br>
&gt; <a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.htm=
l#moving-to-the-yocto-project-2.6-release" rel=3D"noreferrer" target=3D"_bl=
ank">https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to=
-the-yocto-project-2.6-release</a>, <br>
&gt; which is based on Richard&#39;s input.=C2=A0 I am sure there are more =
items.<br>
<br>
You might want to add a link to the bitbake manual or some example from <br=
>
there for the new functionality of _remove operator:<br>
<br>
<a href=3D"http://git.openembedded.org/bitbake/tree/doc/bitbake-user-manual=
/bitbake-user-manual-metadata.xml?id=3Dc0a23dd9155c50a6b7df796980bc7b612cac=
7994#n334" rel=3D"noreferrer" target=3D"_blank">http://git.openembedded.org=
/bitbake/tree/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml?id=
=3Dc0a23dd9155c50a6b7df796980bc7b612cac7994#n334</a><br>
<br>
FOO =3D &quot;123 456 789 123456 123 456 123 456&quot;<br>
FOO_remove =3D &quot;123&quot;<br>
FOO_remove =3D &quot;456&quot;<br>
<br>
FOO is now: &quot;=C2=A0 789 123456=C2=A0 =C2=A0 &quot; instead of &quot;78=
9 123456&quot;<br>
<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Scott<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
</blockquote></div>

--00000000000081d08b057988072c--
