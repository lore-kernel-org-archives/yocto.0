Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6A03E00CF2; Mon, 25 Apr 2016 04:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94B09E00CAE
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 04:47:15 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id u185so180408598iod.3
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 04:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q4elNkQ9rvqBmSmDftWnlrgIls9QwfCc98HKYrQugAg=;
	b=rlbxXBPllTFR1+oNQIe8AwLvSX7RwqFGWqTJxej1QxhPYFNBrhUwX8TVIb614jThSe
	VRZlhJ1hOgO3t51r+twBrF8rasNb/jObaZxOK9RxLRZzsWiKXnBI4Qfz1fLhYmNHChex
	xrX3GNN2WDRozTa5bfFfzF+8npnaJd1/lZaEemFg4SbGqn9W1QcvjjCxcF5AatG8MCEF
	7PBq1bIOpv7Dpus4HPcMOHvNxlUR4pMI4EAwJOZGd+yfXtxFCqoAX7njbe6ZNKn/q7D3
	bWm9o1rS3HVtaMJLIXzYnQo9fjYnIudxQ1jp2KdKMbWpPtH1nXzedXdr3Tye/dcInN/8
	fvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q4elNkQ9rvqBmSmDftWnlrgIls9QwfCc98HKYrQugAg=;
	b=Ly66MT7s+N0N+GLi2j7uL0KphuZ+IIJqHosk3WgLhBo+TVbKrJ8E6jnSxZECrhgtgm
	h+WEGYS5Lr7PaO6ZUvFxjOmq+zHVJrFulyXayvShFW35WgLeBii4HDFcL4bH6fuqo1vE
	gQNXvM+/NjH7UYzqYBWCzcx2PCM2XCbo2TVBnDzROf5iU5bwwIjzOMcWrM1udMbN8HOn
	88cnpCiFNfAq5C1ZZ2cB+RW6sqAPhbczAt9IzOSVd0/GxB9LA2J8J/nkp8W7Zi/olS8f
	6URTn1lRyASh0ncz/5fJXUGUobsF9IOnuUtRHFyX3iPUwoxjg4kEUNSwzgpy7SZKPF3Z
	utYg==
X-Gm-Message-State: AOPr4FUxflo8umpRMp0UqK/sHLqK1wCNhIWvZDgGJxWzou7VJNmQKrhthYJY95g1kGg9UH+anJ9C0WKd8QEP+LG/
X-Received: by 10.107.179.136 with SMTP id c130mr22394297iof.99.1461584834584; 
	Mon, 25 Apr 2016 04:47:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Mon, 25 Apr 2016 04:46:54 -0700 (PDT)
In-Reply-To: <571DBD45.5070607@intel.com>
References: <571DBD45.5070607@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Apr 2016 12:46:54 +0100
Message-ID: <CAJTo0Laq1SN6GG4kG_vA3L3pMtAx8AOdY9-0B+e=LXN2AjOjMg@mail.gmail.com>
To: Amarnath Valluri <amarnath.valluri@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enable a recipe/package only when other dependent recipe/package is part of image.
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
X-List-Received-Date: Mon, 25 Apr 2016 11:47:18 -0000
Content-Type: multipart/alternative; boundary=001a1148578ce0178c05314dbc0a

--001a1148578ce0178c05314dbc0a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 25 April 2016 at 07:46, Amarnath Valluri <amarnath.valluri@intel.com>
wrote:

> I would like to provide a pakcagegroup-config, that should automatically
> select the configuration packages that are part of image configuration. S=
ay
> if =E2=80=98connman=E2=80=99 is part of image then it should add =E2=80=
=98connman-conf=E2=80=99 to its
> RDEPENDS_${PN}.
>
>
You can't do that.

A packagegroup is just a recipe that generates packages with no contents,
just dependencies.  They are built once and don't know what image they're
being "built for", or what other packages are being built.  What would you
packagegroup do if it were built directly, not via dependencies from an
image?

The low-fi way to implement this would be for the layer that adds
connman-conf to also add a bbappend for connman to depend on connman-conf.

An alternative would be to have some naming pattern for conf packages
(-conf is reasonable) and invent a new image-feature called conf-packages
that uses a glob to find all complementary packages matching the *-conf
pattern.  This is how dev-pkgs, dbg-pkgs, doc-pkgs etc work.  I believe
this is just a matter of setting COMPLEMENTARY_GLOB[conf-pkgs] =3D '*-conf'
in your configuration.

Ross

--001a1148578ce0178c05314dbc0a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 April 2016 at 07:46, Amarnath Valluri <span dir=3D"ltr">&lt;<a href=
=3D"mailto:amarnath.valluri@intel.com" target=3D"_blank">amarnath.valluri@i=
ntel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal"=
><span lang=3D"EN-US">I would like to provide a
        pakcagegroup-config, that should automatically select the
        configuration packages that are part of image configuration. Say
        if =E2=80=98connman=E2=80=99 is part of image then it should add =
=E2=80=98connman-conf=E2=80=99
        to its RDEPENDS_${PN}.=C2=A0 <u></u><u></u></span></p>
    <p class=3D"MsoNormal"></p></blockquote></div><br>You can&#39;t do that=
.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">A pa=
ckagegroup is just a recipe that generates packages with no contents, just =
dependencies.=C2=A0 They are built once and don&#39;t know what image they&=
#39;re being &quot;built for&quot;, or what other packages are being built.=
=C2=A0 What would you packagegroup do if it were built directly, not via de=
pendencies from an image?</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">The low-fi way to implement this would be for the layer=
 that adds connman-conf to also add a bbappend for connman to depend on con=
nman-conf.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">An alternative would be to have some naming pattern for conf packages =
(-conf is reasonable) and invent a new image-feature called conf-packages t=
hat uses a glob to find all complementary packages matching the *-conf patt=
ern.=C2=A0 This is how dev-pkgs, dbg-pkgs, doc-pkgs etc work.=C2=A0 I belie=
ve this is just a matter of setting=C2=A0COMPLEMENTARY_GLOB[conf-pkgs] =3D =
&#39;*-conf&#39; in your configuration.</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">Ross</div></div>

--001a1148578ce0178c05314dbc0a--
