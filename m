Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73C7FE00D6B; Tue,  2 Jul 2019 02:06:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A1B9E00BB5
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 02:05:58 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id r9so16086154ljg.5
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 02:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s7tCtn0NXrP8eR8LNMUkjUGut578zmCOh/oG07xRg9Q=;
	b=f5dNkltrSemqSy4nE1Jf+zVmgryruqUzMIOcZLw7xiWfZqodkGcdIAl474n4ZM7Pt5
	dM9gCjcVD9jhDoWQUrfRin2cUDgixpWnz8B3LlGfx40BB65ZWvVl1PntpdEZG0ydFbhM
	dKDNL8reshBweAxZeENwoMtaVKbv13REt0EjFW7h8UkivULnQIGS31/zLQG0eh/MRt8q
	5qF9YEK1/KKnpxnkz+cR4Nrj9lRwi32qEF2Pl6BHeoTgPgIul+H74boSfN5CdswoRovB
	VGqtCMNIT/ZeqL5wscFK3Pj8CWbRVpJ9Im084wr2WzsHK2B3NopshxYc2b7NU+UZeudd
	1XEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s7tCtn0NXrP8eR8LNMUkjUGut578zmCOh/oG07xRg9Q=;
	b=k/gGUzb0HKTx8hk0uLTBYOjzZZa8+nv44e4mhsxYHx5NnXKWDODtBzDBG8220m3wOX
	iz8kzOtFQ4uSzrMXJRXX6ZsHfZLXPKsHU/08ZB8kZN2dwLpdmr7d+LnpZcyC4o2moMSt
	2UUbuSEqKMamRZZ0mmwAlBE5vJ28dUeXRxb7CBqc0THXVr511NzUfE8619Q9NBXKUBHc
	R09f3HQvG0L4OZiTbmM5N1mYL+mXPszzItFPsGA4Uv+MBB90Q+tYguVWQluclw8YeDNU
	2w17vGOg4zGTccAdRt/uJ+5bSfAGZ4mcEV347W0crKtqT6LvolvY5PrIgOstM2ebUOQw
	BGsg==
X-Gm-Message-State: APjAAAVCd5K1AeaE4oorg+/v91rAqguUe7vlsYDmpvNAKCrUSo7nne0G
	aRzmSjDL2M4M3Ia3rNdNyNmhFrnpeSbARKgRF2/QSg==
X-Google-Smtp-Source: APXvYqyLqBwiKlyW6wSmAtuAR6keYEeOa8xQc5W5H92y18HRlT0BTBS2X4YZfFGI0vw8XPCUN6r5pVKJ20DYzbpPPlc=
X-Received: by 2002:a2e:7604:: with SMTP id r4mr16733517ljc.225.1562058357283; 
	Tue, 02 Jul 2019 02:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCCs+z5ctCrmM25YHh84S2L9y+E85KnuDvKNNFqe304Uw@mail.gmail.com>
	<CAAx3WaCPyfPKHDsrHa5EP_WxSAg0xsr+HW2DwiRem7N6pQmOWw@mail.gmail.com>
	<d2d4cc62-efb4-1b2b-0cae-65fa52b4a36d@topic.nl>
In-Reply-To: <d2d4cc62-efb4-1b2b-0cae-65fa52b4a36d@topic.nl>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 2 Jul 2019 11:05:45 +0200
Message-ID: <CAAx3WaAnpZr96xoWc81FEnWn9C8wgxgPZt66pbdmPkRMH5dE_w@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting a package PV from another
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
X-List-Received-Date: Tue, 02 Jul 2019 09:06:00 -0000
Content-Type: multipart/alternative; boundary="0000000000008123f6058caf0dde"

--0000000000008123f6058caf0dde
Content-Type: text/plain; charset="UTF-8"

Hi Mike,

thank you for your reply. The meta-layer that we use are locked (they won't
be changed once in production, so the git hash won't tell much about). I
need that information for tracking/distribution purposes, since I already
have a way to get it at runtime.

Gabriele

Il giorno lun 1 lug 2019 alle ore 15:23 Mike Looijmans <
mike.looijmans@topic.nl> ha scritto:

> The version of your OE layer is all the version that you'll ever
> (technically)
> need. That version (usually a git hash) dictates all other versions.
>
> When asked for version numbers of included packages, I always just dump
> the
> manifest file into their lap.
>
> You can also ask and report the version numbers at runtime (e.g. using
> opkg or
> dpkg). That also prevents lying to your users :)
>
> On 01-07-19 11:28, Gabriele Zampieri wrote:
> > Up, with more details:
> >
> > I have a top recipe that depends on *my-image:do_build*. I'd like to
> retrieve
> > the PV of a couple of packages (from that top recipe) that are used to
> mark
> > our custom software. Any suggestions?
> >
> > Gabriele
> >
> > Il giorno ven 28 giu 2019 alle ore 11:25 Gabriele Zampieri
> > <gabbla.malist@gmail.com <mailto:gabbla.malist@gmail.com>> ha scritto:
> >
> >     Hi all,
> >
> >     is there a way to get a specific package version from another?
> >
> >     Best regards,
> >     Gabriele
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008123f6058caf0dde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mike,</div><div><br></div><div>thank you for your =
reply. The meta-layer that we use are locked (they won&#39;t be changed onc=
e in production, so the git hash won&#39;t tell much about). I need that in=
formation for tracking/distribution purposes, since I already have a way to=
 get it at runtime.</div><div><br></div><div>Gabriele<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno lu=
n 1 lug 2019 alle ore 15:23 Mike Looijmans &lt;<a href=3D"mailto:mike.looij=
mans@topic.nl">mike.looijmans@topic.nl</a>&gt; ha scritto:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">The version of your OE layer is =
all the version that you&#39;ll ever (technically) <br>
need. That version (usually a git hash) dictates all other versions.<br>
<br>
When asked for version numbers of included packages, I always just dump the=
 <br>
manifest file into their lap.<br>
<br>
You can also ask and report the version numbers at runtime (e.g. using opkg=
 or <br>
dpkg). That also prevents lying to your users :)<br>
<br>
On 01-07-19 11:28, Gabriele Zampieri wrote:<br>
&gt; Up, with more details:<br>
&gt; <br>
&gt; I have a top recipe that depends on *my-image:do_build*. I&#39;d like =
to retrieve <br>
&gt; the PV of a couple of packages (from that top recipe) that are used to=
 mark <br>
&gt; our custom software. Any suggestions?<br>
&gt; <br>
&gt; Gabriele<br>
&gt; <br>
&gt; Il giorno ven 28 giu 2019 alle ore 11:25 Gabriele Zampieri <br>
&gt; &lt;<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbl=
a.malist@gmail.com</a> &lt;mailto:<a href=3D"mailto:gabbla.malist@gmail.com=
" target=3D"_blank">gabbla.malist@gmail.com</a>&gt;&gt; ha scritto:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi all,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0is there a way to get a specific package version fr=
om another?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Gabriele<br>
&gt; <br>
&gt; <br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000008123f6058caf0dde--
