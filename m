Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C261AE00B5E; Wed, 31 Oct 2018 08:50:58 -0700 (PDT)
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
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30187E00AE0
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 08:50:57 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id u12-v6so11182799eds.4
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 08:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=26KpT3NmZC8sv3iCf3CzGJEQDcnliMPttEZKgbSL7IA=;
	b=nTklGRaGA1868O/nbp8v5zhjuonV2s/kezSk13EtXGxYTKGsRpRwSVppLNxiglIBVL
	Eb0wbKLknaiQtsE/BTq1RixPmGg1U0t22Qoqa9/QqtObU1XHSbWA2fT8t0vTdsJZQV/R
	K9aFleygMc+Nz1kuTpXr2h+ii8ibMrOtkG1gG4F+x3pfLY527TiC/Z1QTDKJO9aTPx9o
	b7/bgoJOUuJGQk8w1o58JS/ZqtAQ2TyuTc6+tUmYjBvVvJJ+BIyHBNq6IwbJ0uWI2pyI
	kDZiDj2fDMXeW8zdBeIggz66o4q/ggPtv8Fpe2WEOuXP8eYikbXMHBTy2aL1rO91PJtH
	gjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=26KpT3NmZC8sv3iCf3CzGJEQDcnliMPttEZKgbSL7IA=;
	b=qk3F/+ae22HWky+qCiIUOAHddzX9MKIu8jhQmHaegLNBmMdOW3TQS8q3mxbCH7Liu9
	p6uafIuX9Q+N7YY4XwaW8qJ62Aa39OYLURJFbaD7iqhEOlW+xKghTdeqmAVgYCcKLCzF
	Ko2kavLzLMlNBdE11Oh81+bMTfSxEQOq8Y1Qi9BbOy5bhZ3UUn/wm90t2MzkmglgqNzs
	acd7973DZW1qD3vBCnIl/CC/HPL9ADExPrZfPQfIeU0vozORYW/MiVhYIePD2FmMSRk/
	sQow1PPdj5gh257edII0CjDp9hwj0EkTLXMRW31i5Ty0MF7hZ+53RV+OMm+UmS0HUk5k
	C34Q==
X-Gm-Message-State: AGRZ1gKSjKmnipNL7vA47sVwIYfk1LnViRSY440HXYGyAFYXAz9itjuu
	LOS0b2MGTQD4+s9FZN6XWTruIgb1MG+P0cOLHOo=
X-Google-Smtp-Source: AJdET5dELbifeFpsdlLoAoBn5XNgigNWZI+s7fRIwHYOH6CH5XV1U8od00PVEEW1K6NkRtW/yR6Rb1+NYXRJ0u0eP5A=
X-Received: by 2002:a50:985c:: with SMTP id
	h28-v6mr2447663edb.36.1541001057145; 
	Wed, 31 Oct 2018 08:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
	<25f056c7-d6ba-499f-8bf4-b8d1470fff4b@gmail.com>
In-Reply-To: <25f056c7-d6ba-499f-8bf4-b8d1470fff4b@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 31 Oct 2018 08:50:45 -0700
Message-ID: <CAFNP8Otrxa9Zaxb=hMdZrFe-OvUcbf1noC-bMLhmzEj-CUa7CQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 31 Oct 2018 15:50:58 -0000
Content-Type: multipart/alternative; boundary="0000000000009c19e705798844ed"

--0000000000009c19e705798844ed
Content-Type: text/plain; charset="UTF-8"

Can you tell me why "123456" is also not removed?  That string contains
instances of "123" and "456"

Thanks,
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

--0000000000009c19e705798844ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you tell me why &quot;123456&quot; is also not re=
moved?=C2=A0 That string contains instances of &quot;123&quot; and &quot;45=
6&quot;</div><div><br></div><div>Thanks, <br></div><div>Scott<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Oct 31, 2018 at 1=
2:15 AM Robert Berger &lt;<a href=3D"mailto:yocto.user.mailinglist@gmail.co=
m">yocto.user.mailinglist@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hi Scott,<br>
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

--0000000000009c19e705798844ed--
