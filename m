Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1146.1581491761473158556
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 23:16:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVXR9mn0;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F7BEE0167E; Tue, 11 Feb 2020 23:16:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8F6E006EC
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 23:16:00 -0800 (PST)
Received: by mail-vk1-f170.google.com with SMTP id i78so238603vke.0
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 23:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pLBiG5ZrauBXCEdnMZy5qLbtruW6xFu4xW4DH1zemBY=;
        b=WVXR9mn05W6klvuVIbwoHP0yEJIcmzfjKDOaisQ9LJm4eZCktKrniRtaJKb+xSzZjF
         x97FVbtY14WfOjDrGQxdTbVUTsKVj7oJtMJX3CzrbfS3wDKfWQrgz+xEGtQqvxXWaQ3Q
         JOAPlVwi+JHtzmvKLdY6UroBQn8UNsE8HqfLb7aQqT0yym2uLBrOQEi+vax2s181R5qx
         NzHo57h/nIbu88JGxNC7VfkVb2d9/21SwHxIcrnh4aeWP7utw6IPM5uIabmXj5ZD9f++
         u3sXxZxYgz2a6Vw/xF7uaBnfRXvbkzxwTsOHR0QRzBW9h+4buXHbmj2WJkNRvR+2CVbv
         pgcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pLBiG5ZrauBXCEdnMZy5qLbtruW6xFu4xW4DH1zemBY=;
        b=P7HxiKu2jhyivjEDF6R8ngGFz9EWSP1w0FPLxOwowj8zQLqF4Cdn29INfOeH0xl5AX
         slSaIWmFmLEBD4nljWqbSwEtEQOnKcgdKExDivZrG0l3WdG9Bbzsqg2WrAaS2CnC6yqO
         oSVizeOVIPUCglTYK1L2biZ2P8By6pcA6r+SZ0rKTvPgv62I+z6DzZnPTNI8EP9OdgIX
         0um7AAGt0E6UaPOd6OxrfNrVgr40O8hUae5sWOCjrHBM3tEMwnWFNl5B0P52XOZgTvue
         t3bJhEbEDNjJBpRVX1J39OJniOIyKaGjtjKjbN2O4KAHn4p3SE25bgeubWT37FBCxvY6
         Wmkg==
X-Gm-Message-State: APjAAAX8PfpV+WoUKFIG7nLD0jM2EtqYND4EQi1Dxb+ptPr0ca925kKP
	CKKP9Kis3EQPfYGgLM2yHSbBeeEWo7Iacmd7ipA=
X-Google-Smtp-Source: APXvYqxho7PhwNTYc9STzNabI50TxYpxSdsgMQT0jSzDr42S8N1ccybjmzVyPHwE9885Xu5k0uIaSKocTd3Ejq6Gsi8=
X-Received: by 2002:a1f:7cc2:: with SMTP id x185mr6799239vkc.1.1581491759621;
 Tue, 11 Feb 2020 23:15:59 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCX2OfGLaDwMVxraim6mp35WjUbY_wVb45EZxV8YFF3QXA@mail.gmail.com>
 <CANNYZj8pMsUepCAa=+S89mpxCSf=4JPO86ek_gA01RWZ8a5hyQ@mail.gmail.com> <CAK4PFCXVMVOtHAEuxK5yexUFTKTZ+1naFJR-HYCyvAC-085KrQ@mail.gmail.com>
In-Reply-To: <CAK4PFCXVMVOtHAEuxK5yexUFTKTZ+1naFJR-HYCyvAC-085KrQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 12 Feb 2020 08:15:48 +0100
Message-ID: <CANNYZj8939k8eFET+rgyJ_yfK8Fj-G5P4UDuYLHH2qF9NnT2eA@mail.gmail.com>
Subject: Re: [yocto] how to remove a package from image
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008c2b69059e5bbe1f"

--0000000000008c2b69059e5bbe1f
Content-Type: text/plain; charset="UTF-8"

Yocto is a community project. If you think such a tool is missing, patches
are welcome. Talk to your employer about ability to contribute under your
real name.

Alex

On Wed 12. Feb 2020 at 0.50, Kent Dorfman <kent.dorfman766@gmail.com> wrote:

> was able to modify the vendor's machine/inc file to remove the
> offending package.
> Since the whole tree is in git now, I suppose that's OK, but I do wish
> yocto had better tools for managing inclusions and introspection into
> what is in an image and at what level it's defined.
>
>
> On 2/11/20, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> > You need to modify the image recipe so that those packagegroups are not
> > pulled in. If you cannot do that because it's in a layer controlled by
> > someone else etc, then make a new image recipe, and build that image
> > instead.
> >
> > Alex
> >
> > On Tue, 11 Feb 2020 at 18:05, Kent Dorfman <kent.dorfman766@gmail.com>
> > wrote:
> >
> >> My vendor finally realized that I needed a full yocto release and not
> >> the eSDK.  Anyway, I can build their image, but when I modify the
> >> kernel to remove CAN drivers I get the errors that
> >>
> >> packagegroup-can-support
> >> packagegroup-ow-support
> >>
> >> are required.
> >>
> >> What is the "yocto way"  to remove those packages and dependencies
> >> from the build?
> >>
> >>
> >
> 
>

--0000000000008c2b69059e5bbe1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Yocto is a community project. If you think such a to=
ol is missing, patches are welcome. Talk to your employer about ability to =
contribute under your real name.</div></div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed 12. Feb 2020 at 0.50, Kent Dorfman &lt;<a hr=
ef=3D"mailto:kent.dorfman766@gmail.com">kent.dorfman766@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">was able to modify the vendor=
&#39;s machine/inc file to remove the<br>
offending package.<br>
Since the whole tree is in git now, I suppose that&#39;s OK, but I do wish=
<br>
yocto had better tools for managing inclusions and introspection into<br>
what is in an image and at what level it&#39;s defined.<br>
<br>
<br>
On 2/11/20, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com=
" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt; You need to modify the image recipe so that those packagegroups are n=
ot<br>
&gt; pulled in. If you cannot do that because it&#39;s in a layer controll=
ed by<br>
&gt; someone else etc, then make a new image recipe, and build that image<=
br>
&gt; instead.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Tue, 11 Feb 2020 at 18:05, Kent Dorfman &lt;<a href=3D"mailto:kent=
.dorfman766@gmail.com" target=3D"_blank">kent.dorfman766@gmail.com</a>&gt;<=
br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; My vendor finally realized that I needed a full yocto release and=
 not<br>
&gt;&gt; the eSDK.=C2=A0 Anyway, I can build their image, but when I modif=
y the<br>
&gt;&gt; kernel to remove CAN drivers I get the errors that<br>
&gt;&gt;<br>
&gt;&gt; packagegroup-can-support<br>
&gt;&gt; packagegroup-ow-support<br>
&gt;&gt;<br>
&gt;&gt; are required.<br>
&gt;&gt;<br>
&gt;&gt; What is the &quot;yocto way&quot;=C2=A0 to remove those packages =
and dependencies<br>
&gt;&gt; from the build?<br>
&gt;&gt; <br>
&gt;&gt;<br>
&gt;<br>
<br>
</blockquote></div></div>

--0000000000008c2b69059e5bbe1f--
