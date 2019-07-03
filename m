Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E567FE00CF4; Wed,  3 Jul 2019 06:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D1D6E00BF7
	for <yocto@lists.yoctoproject.org>;
	Wed,  3 Jul 2019 06:30:15 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id x15so2227780wmj.3
	for <yocto@lists.yoctoproject.org>;
	Wed, 03 Jul 2019 06:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kctWgO81gzAMhTAUBY+u3LrF4AEZ5nFKOVIGeM6reVs=;
	b=ZdwiLX1p2g2Py0L3K+LlKm+vbtGHeh6+Mh1SYcRwrdh7pasutvnuGocA7w9tHWeIXJ
	lvmZpl/U6fKZpG110mEkjF5avDGtyA8byscJ9I47sAGTpRtvixgSqULeGFB+VAg3J5PD
	k5a9ZIgpuPJ3KqeJw/qyrudov/oaQ28POS09oAYJxXR7xr8u7KH7pDccWXVN1mqI/fGc
	gDJZEXnAaVcId66G6OAxky8WuUs7VHCCqa9WyVZVjEXJrbtqTGj4UJcPvdlAbCZr28Zc
	NbpZJvZwVSsT1cIXmkTgKDwij6mituyYwK09TdYtuAKPlPOIulP4YeIxdbuFpB2sqbtY
	bong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kctWgO81gzAMhTAUBY+u3LrF4AEZ5nFKOVIGeM6reVs=;
	b=HHUfOjT0Dtksx7P0b0D+KfawutD4zLVhZQNKtJrTWsUTt+3faVgEsJTgw3yAaDUxQw
	XedP/5kOx8mes8KjWKGvR9sinBMkWgxgmazP+JNPBqpGMQOIyV33EDpKxcR6EhPQwY7u
	TgMNQqhSaNRJ5r7sssWMEVbLgCjS/zv3Droze5K6cAjrhma8jUVx7LFFP8Z0GlIbikQ3
	ZbMsmwVT1vPArr4cDLqi4SUT1EKAqoAkXrqbLjUdmE8A0PXOeUmpVh3RSD36mysURTms
	DcIzrlhLUxsAJE2mrKfTmONBGAeH9n0LfmwFcLUFSVM3nmStSvuvRpTeYc5BPyLSXS6r
	9yyQ==
X-Gm-Message-State: APjAAAXpe1ku/WmfiIRI8Vz3v7aN2BflSd3isMgtEe1l6Yz71+U6zr89
	+I4XKGwIWBwVnk63L7FnR+hjj9CVF+5kZKk2ikdIjg==
X-Google-Smtp-Source: APXvYqwpJCuL8o8LSm7r/HawehkiGKeE1JHrm7Ujkio1n3EPd2qtxo9TwqGubkU7c+aYp+NkyH2aR/AdNSrC2xD6fpk=
X-Received: by 2002:a7b:c8d4:: with SMTP id f20mr8543242wml.90.1562160614210; 
	Wed, 03 Jul 2019 06:30:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190702202132.6715-1-JPEWhacker@gmail.com>
	<20190703060819.GA19611@localhost>
In-Reply-To: <20190703060819.GA19611@localhost>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 3 Jul 2019 08:30:01 -0500
Message-ID: <CAJdd5GYH7Wvm792mZ+kE2s_j5tt77Fq7Uj_96COv1rxkNXXRWQ@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-mingw][PATCH] bzip2: Update to 1.0.7
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
X-List-Received-Date: Wed, 03 Jul 2019 13:30:16 -0000
Content-Type: multipart/alternative; boundary="0000000000007e037c058cc6dc14"

--0000000000007e037c058cc6dc14
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 3, 2019, 1:08 AM Adrian Bunk <bunk@stusta.de> wrote:

> On Tue, Jul 02, 2019 at 03:21:32PM -0500, Joshua Watt wrote:
> > Updates bzip2 to version 1.0.7 to match master in oe-core. The patch to
> > change the path separator was properly upstreamed and hopefully will no
> > longer be necessary going forward.
> >...
> > +--- a/bzip2.c
> > ++++ b/bzip2.c
> > +@@ -128,7 +128,7 @@
> > + #if BZ_LCCWIN32
> > + #   include <io.h>
> > + #   include <fcntl.h>
> > +-#   include <sys\stat.h>
> > ++#   include <sys/stat.h>
> >...
>
> Why is this a bbappend at all?
>
> This should have been part of the package in oe-core from the beginning,
> and could still be added there right now.
>

Yes, that would be better. Unfortunately this was merged quickly to prevent
breaking master with the upgrade in OE core. We can move the patch to OE
core still, but it will require some more coordination to prevent breaking
again.

On the other hand, I did upstream the patch, so hopefully the next release
of bzip2 will also allow us to delete the bbappend from meta-mingw


> cu
> Adrian
>
> --
>
>        "Is there not promise of rain?" Ling Tan asked suddenly out
>         of the darkness. There had been need of rain for many days.
>        "Only a promise," Lao Er said.
>                                        Pearl S. Buck - Dragon Seed
>
>

--0000000000007e037c058cc6dc14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, Jul 3, 2019, 1:08 AM Adrian Bunk &lt;<a href=
=3D"mailto:bunk@stusta.de" target=3D"_blank" rel=3D"noreferrer">bunk@stusta=
.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, Jul 02, =
2019 at 03:21:32PM -0500, Joshua Watt wrote:<br>
&gt; Updates bzip2 to version 1.0.7 to match master in oe-core. The patch t=
o<br>
&gt; change the path separator was properly upstreamed and hopefully will n=
o<br>
&gt; longer be necessary going forward.<br>
&gt;...<br>
&gt; +--- a/bzip2.c<br>
&gt; ++++ b/bzip2.c<br>
&gt; +@@ -128,7 +128,7 @@<br>
&gt; + #if BZ_LCCWIN32<br>
&gt; + #=C2=A0 =C2=A0include &lt;io.h&gt;<br>
&gt; + #=C2=A0 =C2=A0include &lt;fcntl.h&gt;<br>
&gt; +-#=C2=A0 =C2=A0include &lt;sys\stat.h&gt;<br>
&gt; ++#=C2=A0 =C2=A0include &lt;sys/stat.h&gt;<br>
&gt;...<br>
<br>
Why is this a bbappend at all?<br>
<br>
This should have been part of the package in oe-core from the beginning,<br=
>
and could still be added there right now.<br></blockquote></div></div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Yes, that would be better. Unfortu=
nately this was merged quickly to prevent breaking master with the upgrade =
in OE core. We can move the patch to OE core still, but it will require som=
e more coordination to prevent breaking again.</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">On the other hand, I did upstream the patch, so hope=
fully the next release of bzip2 will also allow us to delete the bbappend f=
rom meta-mingw</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
cu<br>
Adrian<br>
<br>
-- <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Is there not promise of rain?&quot; Ling T=
an asked suddenly out<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 of the darkness. There had been need of rain fo=
r many days.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Only a promise,&quot; Lao Er said.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pearl S. =
Buck - Dragon Seed<br>
<br>
</blockquote></div></div></div>

--0000000000007e037c058cc6dc14--
