Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 678EEE00D75; Sun,  3 Nov 2019 05:19:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AAB5E00D60
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 05:19:04 -0800 (PST)
Received: by mail-qt1-f195.google.com with SMTP id x21so19723112qto.12
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2019 05:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=lZQJPlnZXAv3HY/CqQBVylQYsonXMeTqMCbtsvKl36k=;
	b=FVk9tQ54Ti+zHQXErKPnG/o3dU60hS/H1lNLc7boTu18Wp4pxdCfjR/8o8PfcK2AY4
	7Msaa25dGnZLJSzrTWZkRqlXU5RTMMJoGPAhnoXB8yA9AU8z4wWBoeIgLsxjBxROci4U
	expX6sKYoE3JN+EXFRZD9RAqUGy3G7b1D+PBWUyZQlFu8RShxReyqT3Q04w5BNhAK7hP
	q3xuaNIcPUb5phLbn2uOwYbQ0ieLJaJOuEnDBfXXmmNP3kzSOqzgzgJ6XIVAJ0GZFCXV
	M69khDknHdjDQNVvDo+nbZSR4rZTLbSRA4hSS05ccArDM27FVjCiND5jSaqHz/93UxjY
	e3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=lZQJPlnZXAv3HY/CqQBVylQYsonXMeTqMCbtsvKl36k=;
	b=MZPtAYo7cIWaV50wFypRHWMG+O78+Y0rWPbMdpc9fzpxnS9zSgQ6zA9276bSpVTnDa
	kSzX56X3ig0iIcDePv1iCNDnxkiJlmbnDcVs6Vuq5FGnhJo7X9/ZSUbQ8Hr9G5oiyiS0
	Fsm5X/z/NXtaGrjHCP2X/Q8vBZBGJrB05yBEgelwplWiGh8otpp1iPsEpucaZabaovnt
	WfpxoAoFqhcLAPnO3Zq/YgDZ5PpRwa4NEC8ZI7OuGeh0K8plOsVKy6bd6YWCwxQxxr5d
	OoAcsYG7TH9WPEitdC3CwymqiDoWE1xuM6+kvP2qGs3VeQED/LcNvsRl7U3eJ/cSq8YM
	k4ug==
X-Gm-Message-State: APjAAAWzUYJb+LkcZPlkW19A3zp50c9Fp1CKg8tSggaZK+8T3XiQSR9h
	RXOkoY8ZEIT65yzaHKceJ39KFImEITmk7NkcPzOTa3aK
X-Google-Smtp-Source: APXvYqze4B5V3om/rQw4ohMIF3cI89nkhhJtSO3T3axMLjdO8LFG+V0qzlVP+Wn3oiEVzEdk943cBH0pM62VfJnu2dk=
X-Received: by 2002:ad4:5349:: with SMTP id v9mr17054198qvs.55.1572787143873; 
	Sun, 03 Nov 2019 05:19:03 -0800 (PST)
MIME-Version: 1.0
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
In-Reply-To: <097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 3 Nov 2019 05:18:53 -0800
Message-ID: <CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Sun, 03 Nov 2019 13:19:06 -0000
Content-Type: multipart/alternative; boundary="00000000000004975a0596710b79"

--00000000000004975a0596710b79
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

> On 01/11/2019 17:18, Khem Raj wrote:
> > On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan <andrei@gherzan.ro> wrote=
:
> >>
> >> Hi Steve,
> >>
> >> On 01/11/2019 05:32, Steve Pavao wrote:
> >>> poky linux build fails when ARM erratum mfix linker switch is specifi=
ed
> >>> in local.conf:
> >>>
> >>> TARGET_LD_ARCH_append +=3D " -mfix-cortex-a53-843419=E2=80=9D
> >>>
> >>> causes build failure.
> >>>
> >>> Please advise how to use this switch successfully.  I am synced curre=
nt
> >>> in master branch in all layers as of today.  The switch causes libtoo=
l
> >>> link to fail due to missing libbz2.so.  If I don=E2=80=99t specify th=
e switch,
> >>> the build completes without errors.
> >>>
> >>> It is important to be able to build poky linux with this switch to
> avoid
> >>> certain crash conditions as described in the ARM errata document.
> >>
> >> I haven't tried this erratum fix. It is indeed implemented at the
> >> linker's lever. It's curious though to see the bz2 dependency. Can you
> >> share the specific error? I assume you are doing this on RPi3.
> >>
> >
> > this will impact rpi3 in 64bit mode, don't think 32bit needs this. I
> > think its best to
> > add this option in raspberrypi3-64.conf perhaps via TUNE_CCARGS
>
> I was thinking about this. The erratum seems to show that this applies
> to all revisions of a53. So it sounds like we should add it in
> `tune-cortexa53.inc`.
>

Up to r0b4 only so maybe not all a53 implementations are impacted

>
> --
> Andrei Gherzan
>

--00000000000004975a0596710b79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan &lt;<a href=
=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On 01/11/2019 17:18, Khem Raj wrote:<br>
&gt; On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan &lt;<a href=3D"mailto:an=
drei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Steve,<br>
&gt;&gt;<br>
&gt;&gt; On 01/11/2019 05:32, Steve Pavao wrote:<br>
&gt;&gt;&gt; poky linux build fails when ARM erratum mfix linker switch is =
specified<br>
&gt;&gt;&gt; in local.conf:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; TARGET_LD_ARCH_append +=3D &quot; -mfix-cortex-a53-843419=E2=
=80=9D<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; causes build failure.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Please advise how to use this switch successfully.=C2=A0 I am =
synced current<br>
&gt;&gt;&gt; in master branch in all layers as of today.=C2=A0 The switch c=
auses libtool<br>
&gt;&gt;&gt; link to fail due to missing libbz2.so.=C2=A0 If I don=E2=80=99=
t specify the switch,<br>
&gt;&gt;&gt; the build completes without errors.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; It is important to be able to build poky linux with this switc=
h to avoid<br>
&gt;&gt;&gt; certain crash conditions as described in the ARM errata docume=
nt.<br>
&gt;&gt;<br>
&gt;&gt; I haven&#39;t tried this erratum fix. It is indeed implemented at =
the<br>
&gt;&gt; linker&#39;s lever. It&#39;s curious though to see the bz2 depende=
ncy. Can you<br>
&gt;&gt; share the specific error? I assume you are doing this on RPi3.<br>
&gt;&gt;<br>
&gt; <br>
&gt; this will impact rpi3 in 64bit mode, don&#39;t think 32bit needs this.=
 I<br>
&gt; think its best to<br>
&gt; add this option in raspberrypi3-64.conf perhaps via TUNE_CCARGS<br>
<br>
I was thinking about this. The erratum seems to show that this applies <br>
to all revisions of a53. So it sounds like we should add it in <br>
`tune-cortexa53.inc`.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Up to r0b4 only =
so maybe not all a53 implementations are impacted=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><br>
-- <br>
Andrei Gherzan<br>
</blockquote></div></div>

--00000000000004975a0596710b79--
