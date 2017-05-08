Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28C85E00A31; Mon,  8 May 2017 01:36:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1604E009C2
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 01:36:36 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id k74so46029912qke.1
	for <yocto@yoctoproject.org>; Mon, 08 May 2017 01:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=k6dd3cmksV1YdZDmt3qZpVVkJpyaxu6ro6ZR0rqvtck=;
	b=h7FAMek2oNhJLDXRbEkXPUtqRX3oaodNC/Vg8lgyL2NYUXqoDzGhP15yzEvUIA1VaT
	0tplLR8W9eNSDEMYKeSJnqRLH3CZeJGkv1AjhcdAwn53o8C5QFoV3AAZKV5j/+2+RH7J
	Yt1AfltCgjz0a3g3/3AR1e7IcYsBPNwHwdvoGWY2zyDGYQiyFPlDD2IIG6QgECYl4p40
	qgiBOrpVPYJjBSmo3MUJHIkQSmb7borZpTcx8Tv66C6TgTa0jCmen1FRxxPM3MKf1Ql0
	OsbV5mksWLji9/b6ZSJRu3BFXijNjogDScwNbjSObogBZn748bFWFcHdrMCtm6sivN+f
	VsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=k6dd3cmksV1YdZDmt3qZpVVkJpyaxu6ro6ZR0rqvtck=;
	b=BfraEaNOOZw3NHp2mEhCm/+i1IdEgnS/G4A+/rPZZv/yDcBb5X51RuJtI17G4ytj9r
	F0YMdh549UbAnDbXKV5pNbDkGq9eJQpCyaWkEOsJe/rWZnkOk0qjYIN1vHxFc+Ubzu9M
	C6aQ4ym366aC19ya6RLr2uv5aZbMvMytD/lugIxAibKfHFwE6RUkz7sSi1olS1BecA/K
	Lb1hXFn7rLMbM+hxRzvraLDKVMARy3UqTUwiHr/GF/8Z0fsLSdBtHn8+3AETO4tAiI5Z
	5zQoPo0V0DkrB9VEEmq8+Sxhna3uL/7Qgo/U50pkpPP+P3LxRVIVBd7UBmldg3q8m4U5
	ZN3A==
X-Gm-Message-State: AODbwcAL+tSX2C0FNbO4csJT16ePN8NXj4dA0tevrmxjxNlPL9xr1Gsu
	MHDkvMRnWWqJkDif+gmp4xI96ECvtg==
X-Received: by 10.55.15.96 with SMTP id z93mr25049887qkg.288.1494232595886;
	Mon, 08 May 2017 01:36:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Mon, 8 May 2017 01:36:35 -0700 (PDT)
Received: by 10.140.85.167 with HTTP; Mon, 8 May 2017 01:36:35 -0700 (PDT)
In-Reply-To: <CAMKF1sr-=PQm7-un_tAf1ndRBq6+0Kg+wnfDZfoXRhmw5Kg8cA@mail.gmail.com>
References: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
	<CAMKF1sr-=PQm7-un_tAf1ndRBq6+0Kg+wnfDZfoXRhmw5Kg8cA@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 8 May 2017 09:36:35 +0100
Message-ID: <CAPyrkgxJVOert9x-8tE6C_BimzMxKy7bwsPG0rpqej9fnHxVdQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Stable branch plans
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
X-List-Received-Date: Mon, 08 May 2017 08:36:40 -0000
Content-Type: multipart/alternative; boundary=001a1147409217221d054eff23d6

--001a1147409217221d054eff23d6
Content-Type: text/plain; charset=UTF-8

On 3 May 2017 2:41 a.m., "Khem Raj" <raj.khem@gmail.com> wrote:

On Tue, May 2, 2017 at 4:19 AM, Paul Barker <pbarker@toganlabs.com> wrote:
>
> I'd like to propose the following for the pyro branch:
>
> * We should create the pyro branch within a week or two of the oe-core
> pyro release.

What do we get by branching early  ?


I'd like to be able to say to users that all layers should be on the same
branch, it's confusing if some need to be on pyro and others on master. It
also makes our release much easier as we can point our scripts at the pyro
branch early and not have to worry about future breakage.

I don't mind as much if pyro tracks master for the first few weeks until
things settle down, but I think it's really beneficial to have a pyro
branch in each layer from around the time of the oe-core release.

--001a1147409217221d054eff23d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote=
">On 3 May 2017 2:41 a.m., &quot;Khem Raj&quot; &lt;<a href=3D"mailto:raj.k=
hem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br type=3D"attribution"><b=
lockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div class=3D"elided-text">On Tue, May 2, 2017 at 4:=
19 AM, Paul Barker &lt;<a href=3D"mailto:pbarker@toganlabs.com">pbarker@tog=
anlabs.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;d like to propose the following for the pyro branch:<br>
&gt;<br>
&gt; * We should create the pyro branch within a week or two of the oe-core=
<br>
&gt; pyro release.<br><br></div></blockquote></div></div></div><div dir=3D"=
auto"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote cla=
ss=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div class=3D"elided-text">
</div>What do we get by branching early=C2=A0 ?</blockquote></div></div></d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;d like to be able to=
 say to users that all layers should be on the same branch, it&#39;s confus=
ing if some need to be on pyro and others on master. It also makes our rele=
ase much easier as we can point our scripts at the pyro branch early and no=
t have to worry about future breakage.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">I don&#39;t mind as much if pyro tracks master for the first=
 few weeks until things settle down, but I think it&#39;s really beneficial=
 to have a pyro branch in each layer from around the time of the oe-core re=
lease.</div><div dir=3D"auto"></div></div>

--001a1147409217221d054eff23d6--
