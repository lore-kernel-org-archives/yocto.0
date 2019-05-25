Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D6E1E00CC9; Sat, 25 May 2019 05:53:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lookatyouhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DBC8E00C4B
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 05:53:25 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id t24so11078197otl.12
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 05:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jlOgpxAg5Ljnjz+Qyqoao+3pZRn0OvY5YJKMr9D6z1k=;
	b=GARiwc/JXdYOq/hrBjFAkGZwa8yk97QZuwTm+YF/y/ndHzToBvM1tu4lf9HOnp4a05
	61FcwUKHfYbeCwpZxRvFNCaQgur4ssxfitQse3MQJCmG8CbliHXiXec8zhOPqsB8GyG9
	PNeFCWckA/oG1SnNWu4ohzeggURzRDdNbFhG095ljpo76i4JvmoZpgc8sgYCAK1B4Vek
	g4/uO+qv5+QYsG1fk/rQBAj48UnljFIucCdGLL4UC/V1587Xu4xWcuNfbyZUSDQ/WMG6
	SI/eg6+N7mvmte3ISoOq4hSpE9dcLM3Vo5OYQsfOtgv4SRv0AXxuiVAuRZfSDBNbnlcb
	L0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jlOgpxAg5Ljnjz+Qyqoao+3pZRn0OvY5YJKMr9D6z1k=;
	b=V0HQopazJ3BZbNR045XZ0YxBD89PdUjAxs1XSuUExrA33L7Ha0cuaZpiRgjaDzZmNo
	c/N5tEv5Bgd5idztJ0Y92yHwQps75omTNV+M/+FBsaTxvEZmKl0e/40tqD+B6RxRgPK0
	k7OCisqHePCxye3Z8bTMferpndSRHr0BCT3BNzznFfNv9/z1oE8cppRa7wi8biO6VHwf
	D5hOXsdSQJ8ojeRz9PjKmV0CDCjWnj6PtTwaELLfef5YAchtb1oe6ky9cSM8/73ogZhi
	bJrpfMw7vwpfIrLRiKT5D2zkdLg670lTF3wQsCLqrkMUck6aglm1FKtfbkGxYwf2PO4w
	/uJA==
X-Gm-Message-State: APjAAAV91PZdRyjFKYqnkQeB3l8KJQoofN0L2qVWxWmiUmEIDXhFbnx2
	9mPoJ233kOJLpgKpMkNw8H70q1zypZjetNjDTB0=
X-Google-Smtp-Source: APXvYqzBGs2vdE5L1njbGQ3+AmI64StRDMtv0y/EAlZXY2Gnso7Zocc07lVAfbTKORGsLVmsR9Pnivfbt55r5HklPSM=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr29087640otp.91.1558788805466; 
	Sat, 25 May 2019 05:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
	<bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
	<CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
	<74876fa3-2e5f-60a6-f5e7-2a4a6242bac1@gmail.com>
	<CAEseUX=BXTxMkvp_QpkWgoSvx9LMPj+mJ_dNc9Oj8uNDMfctTQ@mail.gmail.com>
	<CAMKF1sp0f2=f-kxi01dpRjnc3HQUXv3zi1B4tPwDNuL7+poUtw@mail.gmail.com>
In-Reply-To: <CAMKF1sp0f2=f-kxi01dpRjnc3HQUXv3zi1B4tPwDNuL7+poUtw@mail.gmail.com>
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Sat, 25 May 2019 08:53:14 -0400
Message-ID: <CAEseUXmBKWFP_E84RfHnPJsAcROrVvgSqdyKu_YakY5FLOKYfg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: prelink-cross with -fno-plt
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
X-List-Received-Date: Sat, 25 May 2019 12:53:27 -0000
X-Groupsio-MsgNum: 45349
Content-Type: multipart/mixed; boundary="00000000000007f0f20589b5cdda"

--00000000000007f0f20589b5cdda
Content-Type: multipart/alternative; boundary="00000000000007f0ef0589b5cdd8"

--00000000000007f0ef0589b5cdd8
Content-Type: text/plain; charset="UTF-8"

Patch is attached.  Thank you!

On Sat, May 25, 2019 at 2:30 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, May 24, 2019 at 6:58 PM Shane Peelar <lookatyouhacker@gmail.com>
> wrote:
> >
> > Great!  Would you be willing to accept a patch that makes arch-x86_64.c
> handle that condition like the other arches?
> >
>
> yes certainly.
>
> > -Shane
> >
> > On Fri, May 24, 2019 at 12:27 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >>
> >> On 5/24/19 8:10 AM, Shane Peelar wrote:
> >> > I did some reading into the sources in other architectures.  The
> closest
> >> > match, arch_i386.c, makes the write conditional as you say.
> >> > So do other arches, including |arch_arm.c, |arch_sh.c, |arch-mips.c,
> >> > |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
> >> > ||||||
> >> > ||||||
> >> > Notably, |||||||arch-cris.c||||||| has the same assert as
> >> > |||||||arch-x86_64.c||||||| instead of the conditional.
> >> >
> >> > The code roughly looks like follows:||||||||||||||
> >> > ||||||||||||||
> >> > |||||||
> >> > |||||||
> >> > 1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
> >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> >> > 3. Look for the section named ".plt" in the ELF.
> >> > 4. If the section cannot be found, return 0
> >> > 5. Otherwise, write the address of .plt + constant (dependent on arch)
> >> > to got[1]||||||||||||||
> >> > ||||||||||||||
> >> > |||||||
> >> > |||||||
> >> > In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above is an
> >> > assert:|||||||
> >> >
> >> > |||||||1. Check for dso->info[DT_PLTGOT].  If it does not exist,
> return 0
> >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> >> > 3. Look for the section named ".plt" in the ELF.
> >> > 4. Assert that the section was found
> >> > 5. Write the address of .plt + constant (dependent on arch) to got[1]
> >> >
> >> > I tested out making the assert conditional and nothing seemed to break
> >> > at least.
> >> > |||||||
> >> > |||||||
> >>
> >> It seems ok to me.
> >>
> >> >
> >> > On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com
> >> > <mailto:raj.khem@gmail.com>> wrote:
> >> >
> >> >
> >> >
> >> >     On 5/23/19 7:53 PM, Shane Peelar wrote:
> >> >      > Any of them on the system pretty much, and yes they are also
> >> >     built with
> >> >      > -fno-plt.
> >> >
> >> >     OK, I think its better to them conditionally check for .plt
> section,
> >> >     can you describe more of whats going on when sections are checked.
> >> >
> >> >      >
> >> >      > On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com
> >> >     <mailto:raj.khem@gmail.com>
> >> >      > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>
> wrote:
> >> >      >
> >> >      >
> >> >      >
> >> >      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
> >> >      >      > Hi Everyone @ the Yocto project,
> >> >      >      >
> >> >      >      > I'm Shane Peelar, a PhD Candidate at the University of
> >> >     Windsor.
> >> >      >      > I'm writing to you about prelink-cross, as part of the
> >> >     Yocto project.
> >> >      >      > Specifically, I'm looking at using it with executables
> >> >     built using
> >> >      >      > `-fno-plt` under GCC.
> >> >      >      > I wasn't quite sure where to send this email to, so I
> >> >     figured I'd
> >> >      >     try
> >> >      >      > here.  If there's a better place to send this, please
> let
> >> >     me know.
> >> >      >      >
> >> >      >      > Right now, prelink-cross seems to fail an assertion in
> >> >      >     arch-x86_64.c,
> >> >      >      > line 421, when
> >> >      >      > using it with an executable built with `-fno-plt`:
> >> >      >      >
> >> >      >      > ...
> >> >      >      > assert (i < dso->ehdr.e_shnum)
> >> >      >      > ...
> >> >      >      >
> >> >      >      > This snippet seems to be looking for the ".plt" section
> and,
> >> >      >     since it
> >> >      >      > can't find it, the assertion fires.  This makes sense
> >> >     because in
> >> >      >      > `-fno-plt` executables, the `.plt` section is missing
> >> >     entirely.
> >> >      >      > I'm not an expert on ELF stuff, although I am learning
> >> >     quickly.  It
> >> >      >      > looks like
> >> >      >      > this code wants to write into GOT[1] the address of
> ".plt"
> >> >     + 0x16 --
> >> >      >      > since ".plt" doesn't
> >> >      >      > exist, does it make sense to just change this assert to
> an if
> >> >      >     statement
> >> >      >      > like so:
> >> >      >      >
> >> >      >      > ...
> >> >      >      >        if (i < dso->ehdr.e_shnum)
> >> >      >      >        { ... }
> >> >      >      > ...
> >> >      >      >
> >> >      >      > and skip over that part?  Or is this a real error
> >> >     condition for
> >> >      >      > prelink-cross and it really should not continue?  The
> >> >     executable in
> >> >      >      > question is also non-PIE, if that makes a difference.
> >> >      >      >
> >> >      >
> >> >      >     what shared libs is this linking to ? are they also built
> with
> >> >      >     -fno-plt ?
> >> >      >
> >> >      >      > Thanks for your time,
> >> >      >      > Shane
> >> >      >      >
> >> >      >
> >> >
>

--00000000000007f0ef0589b5cdd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Patch is attached.=C2=A0 Thank you!</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May =
25, 2019 at 2:30 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Fri, May 24, 2019 at 6:58 PM Shane Peelar &lt;<a href=3D"m=
ailto:lookatyouhacker@gmail.com" target=3D"_blank">lookatyouhacker@gmail.co=
m</a>&gt; wrote:<br>
&gt;<br>
&gt; Great!=C2=A0 Would you be willing to accept a patch that makes arch-x8=
6_64.c handle that condition like the other arches?<br>
&gt;<br>
<br>
yes certainly.<br>
<br>
&gt; -Shane<br>
&gt;<br>
&gt; On Fri, May 24, 2019 at 12:27 PM Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 5/24/19 8:10 AM, Shane Peelar wrote:<br>
&gt;&gt; &gt; I did some reading into the sources in other architectures.=
=C2=A0 The closest<br>
&gt;&gt; &gt; match, arch_i386.c, makes the write conditional as you say.<b=
r>
&gt;&gt; &gt; So do other arches, including |arch_arm.c, |arch_sh.c, |arch-=
mips.c,<br>
&gt;&gt; &gt; |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||<br>
&gt;&gt; &gt; ||||||<br>
&gt;&gt; &gt; ||||||<br>
&gt;&gt; &gt; Notably, |||||||arch-cris.c||||||| has the same assert as<br>
&gt;&gt; &gt; |||||||arch-x86_64.c||||||| instead of the conditional.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The code roughly looks like follows:||||||||||||||<br>
&gt;&gt; &gt; ||||||||||||||<br>
&gt;&gt; &gt; |||||||<br>
&gt;&gt; &gt; |||||||<br>
&gt;&gt; &gt; 1. Check for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does not ex=
ist, return 0<br>
&gt;&gt; &gt; 2. Call addr_to_sec on dso-&gt;info[DT_PLTGOT], return 1 if e=
rror<br>
&gt;&gt; &gt; 3. Look for the section named &quot;.plt&quot; in the ELF.<br=
>
&gt;&gt; &gt; 4. If the section cannot be found, return 0<br>
&gt;&gt; &gt; 5. Otherwise, write the address of .plt + constant (dependent=
 on arch)<br>
&gt;&gt; &gt; to got[1]||||||||||||||<br>
&gt;&gt; &gt; ||||||||||||||<br>
&gt;&gt; &gt; |||||||<br>
&gt;&gt; &gt; |||||||<br>
&gt;&gt; &gt; In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) abov=
e is an<br>
&gt;&gt; &gt; assert:|||||||<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; |||||||1. Check for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does=
 not exist, return 0<br>
&gt;&gt; &gt; 2. Call addr_to_sec on dso-&gt;info[DT_PLTGOT], return 1 if e=
rror<br>
&gt;&gt; &gt; 3. Look for the section named &quot;.plt&quot; in the ELF.<br=
>
&gt;&gt; &gt; 4. Assert that the section was found<br>
&gt;&gt; &gt; 5. Write the address of .plt + constant (dependent on arch) t=
o got[1]<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I tested out making the assert conditional and nothing seemed=
 to break<br>
&gt;&gt; &gt; at least.<br>
&gt;&gt; &gt; |||||||<br>
&gt;&gt; &gt; |||||||<br>
&gt;&gt;<br>
&gt;&gt; It seems ok to me.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Fri, May 24, 2019 at 12:08 AM Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a><br>
&gt;&gt; &gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_b=
lank">raj.khem@gmail.com</a>&gt;&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 7:53 PM, Shane Peelar wrote:<br=
>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Any of them on the system pretty muc=
h, and yes they are also<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0built with<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; -fno-plt.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0OK, I think its better to them conditional=
ly check for .plt section,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0can you describe more of whats going on wh=
en sections are checked.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Thu, May 23, 2019 at 9:59 PM Khem=
 Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a><br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;mailto:<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a> &lt;mailto:<a href=3D=
"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;&gt=
;&gt; wrote:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 8:05 A=
M, Shane Peelar wrote:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi Everyone=
 @ the Yocto project,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m Sha=
ne Peelar, a PhD Candidate at the University of<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Windsor.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m wri=
ting to you about prelink-cross, as part of the<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Yocto project.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Specificall=
y, I&#39;m looking at using it with executables<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0built using<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` =
under GCC.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I wasn&#39;=
t quite sure where to send this email to, so I<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0figured I&#39;d<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0try<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; here.=C2=A0=
 If there&#39;s a better place to send this, please let<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0me know.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Right now, =
prelink-cross seems to fail an assertion in<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0arch-x86_64.c,<br=
>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; line 421, w=
hen<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; using it wi=
th an executable built with `-fno-plt`:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; assert (i &=
lt; dso-&gt;ehdr.e_shnum)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; This snippe=
t seems to be looking for the &quot;.plt&quot; section and,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0since it<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; can&#39;t f=
ind it, the assertion fires.=C2=A0 This makes sense<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0because in<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` =
executables, the `.plt` section is missing<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0entirely.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m not=
 an expert on ELF stuff, although I am learning<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0quickly.=C2=A0 It<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; looks like<=
br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; this code w=
ants to write into GOT[1] the address of &quot;.plt&quot;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0+ 0x16 --<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; since &quot=
;.plt&quot; doesn&#39;t<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; exist, does=
 it make sense to just change this assert to an if<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0statement<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; like so:<br=
>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (i &lt; dso-&gt;ehdr.e_shnum)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 { ... }<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; and skip ov=
er that part?=C2=A0 Or is this a real error<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0condition for<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; prelink-cro=
ss and it really should not continue?=C2=A0 The<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0executable in<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; question is=
 also non-PIE, if that makes a difference.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0what shared libs =
is this linking to ? are they also built with<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0-fno-plt ?<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks for =
your time,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Shane<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;<br>
</blockquote></div>

--00000000000007f0ef0589b5cdd8--

--00000000000007f0f20589b5cdda
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-arch-x86_64.c-Make-assert-conditional.patch"
Content-Disposition: attachment; 
	filename="0001-arch-x86_64.c-Make-assert-conditional.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jw3igwyb0>
X-Attachment-Id: f_jw3igwyb0

RnJvbSAyY2MxZDU4Y2FhYmE5OTQ4NTU1MTZiNTBkNWFmMDU3ODU0Yzk0ZmU4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTaGFuZSBQZWVsYXIgPGxvb2thdHlvdWhhY2tlckBnbWFpbC5j
b20+CkRhdGU6IFNhdCwgMjUgTWF5IDIwMTkgMDg6NDU6NDUgLTA0MDAKU3ViamVjdDogW1BBVENI
XSBhcmNoLXg4Nl82NC5jOiBNYWtlIGFzc2VydCBjb25kaXRpb25hbAoKTWFrZSB0aGUgYXNzZXJ0
IGluIGFyY2hfcHJlbGluayBhIGNvbmRpdGlvbiBpbnN0ZWFkIG9mIGFuIGFzc2VydCwKa2VlcGlu
ZyB0aGluZ3MgY29uc2lzdGVudCB3aXRoIHRoZSBvdGhlciBhcmNoZXMuICBUaGlzIG1ha2VzCnBy
ZWxpbmsgbm90IGJhaWwgb3V0IG9uIGAtZm5vLXBsdGAgZXhlY3V0YWJsZXMuCgpTaWduZWQtb2Zm
LWJ5OiBTaGFuZSBQZWVsYXIgPGxvb2thdHlvdWhhY2tlckBnbWFpbC5jb20+Ci0tLQogc3JjL2Fy
Y2gteDg2XzY0LmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9hcmNoLXg4Nl82NC5jIGIvc3JjL2FyY2gteDg2
XzY0LmMKaW5kZXggMmY2YzU1MS4uYWE3MzllNiAxMDA2NDQKLS0tIGEvc3JjL2FyY2gteDg2XzY0
LmMKKysrIGIvc3JjL2FyY2gteDg2XzY0LmMKQEAgLTQxOCw3ICs0MTgsOCBAQCB4ODZfNjRfYXJj
aF9wcmVsaW5rIChzdHJ1Y3QgcHJlbGlua19pbmZvICppbmZvKQogCQkJICIucGx0IikpCiAJYnJl
YWs7CiAKLSAgICAgIGFzc2VydCAoaSA8IGRzby0+ZWhkci5lX3NobnVtKTsKKyAgICAgIGlmIChp
ID09IGRzby0+ZWhkci5lX3NobnVtKQorCXJldHVybiAwOwogICAgICAgZGF0YSA9IGRzby0+c2hk
cltpXS5zaF9hZGRyICsgMHgxNjsKICAgICAgIHdyaXRlX2xlNjQgKGRzbywgZHNvLT5pbmZvW0RU
X1BMVEdPVF0gKyA4LCBkYXRhKTsKICAgICB9Ci0tIAoyLjIxLjAKCg==

--00000000000007f0f20589b5cdda--
