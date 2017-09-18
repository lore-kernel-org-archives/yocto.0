Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F5C2E00CB0; Mon, 18 Sep 2017 01:50:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCA99E00C82
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 01:50:40 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id 21so402209iof.6
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 01:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=x3pbzlHZ4bTFQ6IC24xnZ6W9y4zpAE6zDTCfdeO3hKQ=;
	b=kZLGfMVVNVBl/detGbYSlPeG2udgaVy0pTD0UNUOthTJkjYj0Kw9txX2lorPhUEEC/
	Z0u5IuRKM9SDBwh/2XHQRe/+F0o6yd87oVjeKZR+WCWCA3E7JMMklbNpRNc+Rwtud81n
	7Y3A7a89yEkejemdls0pGK+2o4v8+UPP/A7Sf08sykbjOVcCUUUV+Ad/OB5qqeT6rBk1
	qpDVKxVigHcE8X1onGXPw08Gm0/gryvIIMoLVQHBlozmKyOB3XFC1GkmAK5FBn70p8n6
	JK3l0jEaYt8iUyDnyeMTlV3GCPgkJGEeveCNOCcpWlN/c+lk300fgl6OMX7ZmpHjv49Z
	TtsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=x3pbzlHZ4bTFQ6IC24xnZ6W9y4zpAE6zDTCfdeO3hKQ=;
	b=ckKEO83wiljMmogXkb8CyPsO/7oJRLht63h1aveN48qyGGegxYRZ5U1S5txHVQhCzw
	pXsUhewrw1y4fvUW1bxv0TtJXAaPRx9rx27HLpLYScqncyCdYhHYzjgys6zznLWnMcHd
	/HfqKkEykKjOlTiV0j0kfj6omy6P7I+BuILlYNmyXEkFlTEPw6MhflY3MJnHVLVlaEAS
	AeAacF6vWnlgxZh+zK/x4cLQRuLUBKaCfWukHUUq4vQ4ybc+Tq/vzV2+xpkXsVDgHabQ
	C3TyshmRWlC6+tSAztww7LAlIl3JXlGrtPTJvtNPLpuOzyAP/ju6UhDWg58mOKztLs5d
	X6Nw==
X-Gm-Message-State: AHPjjUha0qMWw8pZtE4TcJVQopCELFTE7AdPANVDZdYhWI4udUIva8bO
	t2qZxq3qastsHbtY1SB2yh9T+QVyl2QmIpea/PJKPQ==
X-Google-Smtp-Source: AOwi7QBJf3NiKmS8f5mQiYQjZCpVtveEHN+UibW773Rd8JLJ/yJZ433x5MVX8ZPC4W2pfWVk0kLTgLXuvs/0H0oyZiw=
X-Received: by 10.107.133.92 with SMTP id h89mr16967829iod.208.1505724639944; 
	Mon, 18 Sep 2017 01:50:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Mon, 18 Sep 2017 01:50:19 -0700 (PDT)
In-Reply-To: <3D8D4134BBBF450586E55FD9CF1E9B71@PAULD>
References: <3D8D4134BBBF450586E55FD9CF1E9B71@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 18 Sep 2017 09:50:19 +0100
Message-ID: <CAJTo0LaWOOp7c_MtuwAYQtBgkWnHh88iMy+9pJuriDAsbD4gMw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't find Python oe package
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
X-List-Received-Date: Mon, 18 Sep 2017 08:50:41 -0000
Content-Type: multipart/alternative; boundary="001a113ff7d04b3ad8055972d6df"

--001a113ff7d04b3ad8055972d6df
Content-Type: text/plain; charset="UTF-8"

Aah. There was a very weird bug where py3 was dropping .pyc files around
that was upsetting py2.  The solution is not pretty and it only impacts
people who downgrade in a git repo.

A fresh clone should solve it, or do git clean -Xn to list files that git
is ignoring and can be deleted (just -X will delete) them.  I suspect
they'll be a load of .pyc files in meta/lib/oe/ and Py2 can't import them
(because this is another instance of where the py2/py3 migration was a
disaster).

Ross

On 18 September 2017 at 02:16, Paul D. DeRocco <pderocco@ix.netcom.com>
wrote:

> I thought this was a morty->pyro upgrade issue, but trying morty again, on
> a freshly installed Ubuntu system, didn't change anything. In
> meta/classes/patch.bbclass, patch_do_patch() is barfing when it tries to
> import oe.patch. I carefully reinstalled poky, meta-intel, and
> meta-openembedded from git, and I get this error, and a bunch more related
> to the oe package. The package is there, in poky/meta/lib/oe, so why isn't
> it being found? Am I supposed to have a non-empty PYTHONPATH somehow? What
> kind of misconfiguration could cause this? This worked on morty before I
> had to do a fresh Ubuntu install, so I doubt it's anything in my own
> simple layers.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ff7d04b3ad8055972d6df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Aah. There was a very weird bug where py3 was dropping .py=
c files around that was upsetting py2.=C2=A0 The solution is not pretty and=
 it only impacts people who downgrade in a git repo.<div><br></div><div>A f=
resh clone should solve it, or do git clean -Xn to list files that git is i=
gnoring and can be deleted (just -X will delete) them.=C2=A0 I suspect they=
&#39;ll be a load of .pyc files in meta/lib/oe/ and Py2 can&#39;t import th=
em (because this is another instance of where the py2/py3 migration was a d=
isaster).</div><div><br></div><div>Ross</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 18 September 2017 at 02:16, Paul D. De=
Rocco <span dir=3D"ltr">&lt;<a href=3D"mailto:pderocco@ix.netcom.com" targe=
t=3D"_blank">pderocco@ix.netcom.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">I thought this was a morty-&gt;pyro upgrade issue, but try=
ing morty again, on<br>
a freshly installed Ubuntu system, didn&#39;t change anything. In<br>
meta/classes/patch.bbclass, patch_do_patch() is barfing when it tries to<br=
>
import oe.patch. I carefully reinstalled poky, meta-intel, and<br>
meta-openembedded from git, and I get this error, and a bunch more related<=
br>
to the oe package. The package is there, in poky/meta/lib/oe, so why isn&#3=
9;t<br>
it being found? Am I supposed to have a non-empty PYTHONPATH somehow? What<=
br>
kind of misconfiguration could cause this? This worked on morty before I<br=
>
had to do a fresh Ubuntu install, so I doubt it&#39;s anything in my own<br=
>
simple layers.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a113ff7d04b3ad8055972d6df--
