Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13914E00B45; Tue, 16 Oct 2018 06:22:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E207AE00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:22:17 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id u197-v6so17989055oif.5
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eDcZCWiE5eIfyneWxtic2X4YY2m9NPdI3BfxYSzXYTQ=;
	b=kYzBrgEtqBCqsIIyRBvFyU3/YoXVHSUf1PsTLJw6CooAc2PGlGpfo6bS9lu4i6Rygx
	DgvF04LhAlPwX3DLM4fZsawdQvASwrSwBc3fy2k8zdmrlalJRTvgct+biMX42Jqsno3u
	umpiqFeCxcui2w2Jqv0zkuA4KAf2OfbhoNzRg15no/QG18WHwr9cFiiojaAIvfZUWIqD
	xUstoyVEG9bP4qSq2rbbvwxQH9eDuVfFk8gi7LWq4AIADOiC49wpfAH3qSB5LWgo6sYZ
	C3uYbeYjRJgqHAf8TrhZRT2DL+enBrwWghq2jXYt1szetpVxaCPpRjF8DT58JnhKO66p
	6r/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eDcZCWiE5eIfyneWxtic2X4YY2m9NPdI3BfxYSzXYTQ=;
	b=MUKC8Fb3k6kTuM8poPEnpzUT7LAWkQoepqp/l4cafMEFI3cnyfDAkubTRviYVujZkW
	8JRBSUsqwBvLwtdG7RtApFKFl/x/V1U3N5XBKgnKCAtrrDZlJ05xw71qqky40zs24EH3
	Y5yCJqElusUhmdFU3Jtb/PyOCbP9e44jvWAXMH96kBwpkoM00WyyFnucwVDD8Nf9cwmy
	+Ghcz9Wv2trWL9FZPeUGZDoasGbtqyECCIxMgvt8p1ZQR1FFaF7Fcb/ZET+v32fnX86W
	LHzwODWgBBKeD0PKTm7XOoti3oYMprWaqFYL1QN42MI55Zx1d/ZXucoZuBH8SXEsYwN7
	DaCw==
X-Gm-Message-State: ABuFfogfnyx72yI7KeA+xI1GbWtVzdo3Njux5VfvkGVsl+KzfBcDwsnw
	OQn5ckO4Z9y0JVeL9d4Bf6OC6brrRHDdeHSQL+c=
X-Google-Smtp-Source: ACcGV63NyoH9GJ3m4SysIvkTpigUoSOSQGYUdVMXfJOERXdFrZceMlKSa8+rV0XpLj7fbK1DqmiaP6ZuI9u7nruXpN8=
X-Received: by 2002:aca:4083:: with SMTP id
	n125-v6mr12001118oia.108.1539696137189; 
	Tue, 16 Oct 2018 06:22:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
	<CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
	<CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
	<CAJTo0LYj47+tp3cfN9_9rdw-gFz8MWy2Mwq4Beqb25hwKSbAwA@mail.gmail.com>
In-Reply-To: <CAJTo0LYj47+tp3cfN9_9rdw-gFz8MWy2Mwq4Beqb25hwKSbAwA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 16 Oct 2018 15:22:05 +0200
Message-ID: <CAEhQi8m5Vs9dyoFkGefqU5NHcvJzf_nMmzWEOk6fdxRznDSGfw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Tue, 16 Oct 2018 13:22:20 -0000
Content-Type: multipart/alternative; boundary="00000000000051be1205785871be"

--00000000000051be1205785871be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok so it is not supported to have the already-stripped on a package level?
I cannot set it on PN because I have some so-files that is already stripped
and others that is not so that was why I wanted to create a package for the
already-stripped so-files and use the already-stripped on that package.
Anyway thanks for the help I ended up creating a new recipe for the
already-stripped so-files. But is all the INSANE_SKIP flags only supported
for PN? I think I have seen dev-so used on an package level?

BR
M=C3=A5ns Zigher

Den m=C3=A5n 15 okt. 2018 kl 22:23 skrev Burton, Ross <ross.burton@intel.co=
m>:

> Ah yes, of course.  Stripping happens *before* package splitting, so
> it doesn't make sense to have it set on PN-package1.  Just set it on
> PN and it should work.
>
> Ross
> On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher <mans.zigher@gmail.com> wr=
ote:
> >
> > Hi,
> >
> > Sorry I see now that there is a typo. What I mean is that in the defaul=
t
> package I am not suing INSANE_SKIP but for packag1 I need already-strippe=
d
> >
> > INSANE_SKIP_${PN}-package1 =3D " \
> > dev-so \
> > already-stripped \
> > "
> >
> > But I continuously get the error that they are already-stripped. So is
> it supposed to work because I don't understand  the code in the
> package.bbclass since it looks like it is only checking for
> already-stripped in ${PN} and not ${PN}-package1?
> >
> > BR
> > M=C3=A5ns Zigher
> >
> >
> >
> > Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross <ross.burton@intel.com
> >:
> >>
> >> On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail.com>
> wrote:
> >> > I have been struggling with a problem where I need to create a
> package in a recipe and set already-stripped for that package. The packag=
e
> in question is not the the default one so I am trying to set it by using
> >> >
> >> > INSANE_SKIP_${PN} +=3D " \
> >> > dev-so \
> >> > already-stripped \
> >> > "
> >>
> >> You say no the default one, but PN is "the default" one, so that's
> >> probably why that doesn't work.
> >>
> >> Ross
>

--00000000000051be1205785871be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok so it is not supported to have the already-stripped on =
a package level? I cannot set it on PN because I have some so-files that is=
 already stripped and others that is not so that was why I wanted to create=
 a package for the already-stripped so-files and use the already-stripped o=
n that package. Anyway thanks for the help I ended up creating a new recipe=
 for the already-stripped so-files. But is all the INSANE_SKIP flags only s=
upported for PN? I think I have seen dev-so used on an package level?<div><=
br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">Den m=C3=A5n 15 okt. 2018 kl 22:23 skrev Burton=
, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</=
a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Ah yes, of course.=C2=A0 St=
ripping happens *before* package splitting, so<br>
it doesn&#39;t make sense to have it set on PN-package1.=C2=A0 Just set it =
on<br>
PN and it should work.<br>
<br>
Ross<br>
On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.z=
igher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Sorry I see now that there is a typo. What I mean is that in the defau=
lt package I am not suing INSANE_SKIP but for packag1 I need already-stripp=
ed<br>
&gt;<br>
&gt; INSANE_SKIP_${PN}-package1 =3D &quot; \<br>
&gt; dev-so \<br>
&gt; already-stripped \<br>
&gt; &quot;<br>
&gt;<br>
&gt; But I continuously get the error that they are already-stripped. So is=
 it supposed to work because I don&#39;t understand=C2=A0 the code in the p=
ackage.bbclass since it looks like it is only checking for already-stripped=
 in ${PN} and not ${PN}-package1?<br>
&gt;<br>
&gt; BR<br>
&gt; M=C3=A5ns Zigher<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross &lt;<a href=3D"mailto=
:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;:<br=
>
&gt;&gt;<br>
&gt;&gt; On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher &lt;<a href=3D"mail=
to:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt; &gt; I have been struggling with a problem where I need to create =
a package in a recipe and set already-stripped for that package. The packag=
e in question is not the the default one so I am trying to set it by using<=
br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; INSANE_SKIP_${PN} +=3D &quot; \<br>
&gt;&gt; &gt; dev-so \<br>
&gt;&gt; &gt; already-stripped \<br>
&gt;&gt; &gt; &quot;<br>
&gt;&gt;<br>
&gt;&gt; You say no the default one, but PN is &quot;the default&quot; one,=
 so that&#39;s<br>
&gt;&gt; probably why that doesn&#39;t work.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
</blockquote></div>

--00000000000051be1205785871be--
