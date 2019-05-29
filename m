Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99380E00D45; Wed, 29 May 2019 11:42:56 -0700 (PDT)
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
	*      [209.85.210.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CED83E00C46
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 11:42:54 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id s19so3081240otq.5
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 11:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AQnzBPCJ0BJHykVrkZIkjaKRYey+e2knVcKBHEDGUck=;
	b=Y5X1QiQVV4RubUpDoYZZqoyE78+KbGIXNPbOzroJBf/TbcvCK4Xt62vU1ObWpXjInx
	M3gWfLnsRAK4N1eb314Qky64dmfrrlQilIB14zBKmFPoB0c2f4eELlY9yAHjyi/49/fF
	W4np6Nv98X1Ssg+JXtpMOs1kkTnM7qZV/5w1ksMn+fE1ckUsYxDHYJP9had6OiGZI00m
	5ZWoxBFar0fjOYgFidbwNfQMlGegUjJL18npxUgWVlkumWNmV7DKSRxs76uNSvRFq97P
	jfOw5g5jUCnYw0ji0wUtlXfUEVe4NrPaS/uxxzSds7N3j7kJcljAlVfnfJ8bbl0IZZho
	cckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AQnzBPCJ0BJHykVrkZIkjaKRYey+e2knVcKBHEDGUck=;
	b=XmLZIEPAsYdNQibc+mczIQNPTymDo1a8LKdJUuEdlonpenFEsvlmcDSZiHX6nHf4Rx
	ZdZ72p8umhpdoiL7WOVq98IrOAZ56z61kFSfdtEyiJyxDQi+ikXBFpOgrTx1ArwAbYto
	YVwpN5dReG0diz1oqe5vYv9TLiRhZ8aYl0WZOf+512CqNdE4McsHSE06zfKIeEPmi80V
	/k7C1XgZfn9Wa5S/Xy+5oX9jEWTVBq//K0SV/wr04Z7VpewnY6cxb/dzewSRa7f+P8nh
	KS+QW6VOTeZ/bIj94yMubrnCfICzII+nw0StkYNdp6M3ELQ9ROn/38uLHx0jWf+xLap1
	kmtA==
X-Gm-Message-State: APjAAAVay8x2+/Yc63shTqItNxOkfe7Y7lZCWcB0V0M+CRfgBhJL2QJ9
	+uEQHqHS6pqnpV3m1CuGy/OIrehETHHvnzIxGtU=
X-Google-Smtp-Source: APXvYqzdDEKJb5+Pv8Ls6tB5cCWY+yzjOu2QoyDn/GL9aELvEJw5g19O/4WfyUkHJNUsHjNdjG2nS6mSKE6wjhI/zy0=
X-Received: by 2002:a9d:362:: with SMTP id 89mr39244812otv.17.1559155373947;
	Wed, 29 May 2019 11:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
	<bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
	<CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
	<74876fa3-2e5f-60a6-f5e7-2a4a6242bac1@gmail.com>
	<CAEseUX=BXTxMkvp_QpkWgoSvx9LMPj+mJ_dNc9Oj8uNDMfctTQ@mail.gmail.com>
	<CAMKF1sp0f2=f-kxi01dpRjnc3HQUXv3zi1B4tPwDNuL7+poUtw@mail.gmail.com>
	<CAEseUXmBKWFP_E84RfHnPJsAcROrVvgSqdyKu_YakY5FLOKYfg@mail.gmail.com>
	<1f06f439-6ce2-63b9-45e4-be211f6925c9@windriver.com>
In-Reply-To: <1f06f439-6ce2-63b9-45e4-be211f6925c9@windriver.com>
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Wed, 29 May 2019 14:42:44 -0400
Message-ID: <CAEseUXm_CsT=3u6ro8+8WMh9TAzSVwVyj7ahgYhvdjeJNA25=A@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Wed, 29 May 2019 18:42:56 -0000
Content-Type: multipart/alternative; boundary="00000000000036c1a7058a0b26ef"

--00000000000036c1a7058a0b26ef
Content-Type: text/plain; charset="UTF-8"

Hi Mark,

Thank you for your reply and no problem -- I chose to benchmark ssh-add
with it.  It contains no `.plt`.

The results are as follows:

Without prelink (ran prelink -auv):

     26019:
     26019:     runtime linker statistics:
     26019:       total startup time in dynamic loader: 1321674 cycles
     26019:                 time needed for relocation: 797948 cycles
(60.3%)
     26019:                      number of relocations: 624
     26019:           number of relocations from cache: 3
     26019:             number of relative relocations: 9691
     26019:                time needed to load objects: 389972 cycles
(29.5%)
Could not open a connection to your authentication agent.
     26019:
     26019:     runtime linker statistics:
     26019:                final number of relocations: 630
     26019:     final number of relocations from cache: 3

With prelink (ran prelink -av):

      1930:
      1930:     runtime linker statistics:
      1930:       total startup time in dynamic loader: 462288 cycles
      1930:                 time needed for relocation: 48730 cycles (10.5%)
      1930:                      number of relocations: 7
      1930:           number of relocations from cache: 134
      1930:             number of relative relocations: 0
      1930:                time needed to load objects: 286076 cycles
(61.8%)
Could not open a connection to your authentication agent.
      1930:
      1930:     runtime linker statistics:
      1930:                final number of relocations: 9
      1930:     final number of relocations from cache: 134

I also tested against execstack, which for sure had the assertion fire on.
Without prelink:

     27736:
     27736:     runtime linker statistics:
     27736:       total startup time in dynamic loader: 1955954 cycles
     27736:                 time needed for relocation: 755440 cycles
(38.6%)
     27736:                      number of relocations: 247
     27736:           number of relocations from cache: 3
     27736:             number of relative relocations: 1353
     27736:                time needed to load objects: 710384 cycles
(36.3%)
/usr/bin/execstack: no files given
     27736:
     27736:     runtime linker statistics:
     27736:                final number of relocations: 251
     27736:     final number of relocations from cache: 3

With prelink:

      3268:
      3268:     runtime linker statistics:
      3268:       total startup time in dynamic loader: 1421206 cycles
      3268:                 time needed for relocation: 199396 cycles
(14.0%)
      3268:                      number of relocations: 3
      3268:           number of relocations from cache: 88
      3268:             number of relative relocations: 0
      3268:                time needed to load objects: 696886 cycles
(49.0%)
/usr/bin/execstack: no files given
      3268:
      3268:     runtime linker statistics:
      3268:                final number of relocations: 5
      3268:     final number of relocations from cache: 88

So, it looks like prelink is working on these :)

On Tue, May 28, 2019 at 2:57 PM Mark Hatle <mark.hatle@windriver.com> wrote:

> Sorry for my delayed reply.  I was out on a business trip.
>
> Did you try this with the ld.so statistics to see if the relocations were
> indeed
> reduced at runtime?
>
> One of my worries with these changes (since I am not an ELF expert either)
> is
> that we make a change that doesn't actually do anything -- but people
> expect it to.
>
> $ LD_DEBUG=help /lib/ld-linux.so.2
> Valid options for the LD_DEBUG environment variable are:
>
>   libs        display library search paths
>   reloc       display relocation processing
>   files       display progress for input file
>   symbols     display symbol table processing
>   bindings    display information about symbol binding
>   versions    display version dependencies
>   scopes      display scope information
>   all         all previous options combined
>   statistics  display relocation statistics
>   unused      determined unused DSOs
>   help        display this help message and exit
>
> To direct the debugging output into a file instead of standard output
> a filename can be specified using the LD_DEBUG_OUTPUT environment variable.
>
> I believe that it's the 'statistics' option.
>
> LD_DEBUG=statistics <executable that's been prelinked>
>
> Should result in something like:
>
>     128820:     runtime linker statistics:
>     128820:       total startup time in dynamic loader: 1974661 cycles
>     128820:                 time needed for relocation: 354639 cycles
> (17.9%)
>     128820:                      number of relocations: 90
>     128820:           number of relocations from cache: 3
>     128820:             number of relative relocations: 1201
>     128820:                time needed to load objects: 1303654 cycles
> (66.0%)
>     128820:
>     128820:     runtime linker statistics:
>     128820:                final number of relocations: 94
>     128820:     final number of relocations from cache: 3
>
> If prelink is working, the number of relocations (relative or otherwise)
> will be
> significantly reduced from the original non-relocated version.
>
> If you can run this test, it would give me the assurance that the patch is
> safe,
> and I'll get it incorporated into the prelink-cross sources.
>
> --Mark
>
> On 5/25/19 2:53 PM, Shane Peelar wrote:
> > Patch is attached.  Thank you!
> >
> > On Sat, May 25, 2019 at 2:30 AM Khem Raj <raj.khem@gmail.com
> > <mailto:raj.khem@gmail.com>> wrote:
> >
> >     On Fri, May 24, 2019 at 6:58 PM Shane Peelar <
> lookatyouhacker@gmail.com
> >     <mailto:lookatyouhacker@gmail.com>> wrote:
> >     >
> >     > Great!  Would you be willing to accept a patch that makes
> arch-x86_64.c
> >     handle that condition like the other arches?
> >     >
> >
> >     yes certainly.
> >
> >     > -Shane
> >     >
> >     > On Fri, May 24, 2019 at 12:27 PM Khem Raj <raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>> wrote:
> >     >>
> >     >>
> >     >>
> >     >> On 5/24/19 8:10 AM, Shane Peelar wrote:
> >     >> > I did some reading into the sources in other architectures.
> The closest
> >     >> > match, arch_i386.c, makes the write conditional as you say.
> >     >> > So do other arches, including |arch_arm.c, |arch_sh.c,
> |arch-mips.c,
> >     >> > |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
> >     >> > ||||||
> >     >> > ||||||
> >     >> > Notably, |||||||arch-cris.c||||||| has the same assert as
> >     >> > |||||||arch-x86_64.c||||||| instead of the conditional.
> >     >> >
> >     >> > The code roughly looks like follows:||||||||||||||
> >     >> > ||||||||||||||
> >     >> > |||||||
> >     >> > |||||||
> >     >> > 1. Check for dso->info[DT_PLTGOT].  If it does not exist,
> return 0
> >     >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> >     >> > 3. Look for the section named ".plt" in the ELF.
> >     >> > 4. If the section cannot be found, return 0
> >     >> > 5. Otherwise, write the address of .plt + constant (dependent
> on arch)
> >     >> > to got[1]||||||||||||||
> >     >> > ||||||||||||||
> >     >> > |||||||
> >     >> > |||||||
> >     >> > In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above
> is an
> >     >> > assert:|||||||
> >     >> >
> >     >> > |||||||1. Check for dso->info[DT_PLTGOT].  If it does not
> exist, return 0
> >     >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> >     >> > 3. Look for the section named ".plt" in the ELF.
> >     >> > 4. Assert that the section was found
> >     >> > 5. Write the address of .plt + constant (dependent on arch) to
> got[1]
> >     >> >
> >     >> > I tested out making the assert conditional and nothing seemed
> to break
> >     >> > at least.
> >     >> > |||||||
> >     >> > |||||||
> >     >>
> >     >> It seems ok to me.
> >     >>
> >     >> >
> >     >> > On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>
> >     >> > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
> >     >> >
> >     >> >
> >     >> >
> >     >> >     On 5/23/19 7:53 PM, Shane Peelar wrote:
> >     >> >      > Any of them on the system pretty much, and yes they are
> also
> >     >> >     built with
> >     >> >      > -fno-plt.
> >     >> >
> >     >> >     OK, I think its better to them conditionally check for .plt
> section,
> >     >> >     can you describe more of whats going on when sections are
> checked.
> >     >> >
> >     >> >      >
> >     >> >      > On Thu, May 23, 2019 at 9:59 PM Khem Raj <
> raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>
> >     >> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> >     >> >      > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>> wrote:
> >     >> >      >
> >     >> >      >
> >     >> >      >
> >     >> >      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
> >     >> >      >      > Hi Everyone @ the Yocto project,
> >     >> >      >      >
> >     >> >      >      > I'm Shane Peelar, a PhD Candidate at the
> University of
> >     >> >     Windsor.
> >     >> >      >      > I'm writing to you about prelink-cross, as part
> of the
> >     >> >     Yocto project.
> >     >> >      >      > Specifically, I'm looking at using it with
> executables
> >     >> >     built using
> >     >> >      >      > `-fno-plt` under GCC.
> >     >> >      >      > I wasn't quite sure where to send this email to,
> so I
> >     >> >     figured I'd
> >     >> >      >     try
> >     >> >      >      > here.  If there's a better place to send this,
> please let
> >     >> >     me know.
> >     >> >      >      >
> >     >> >      >      > Right now, prelink-cross seems to fail an
> assertion in
> >     >> >      >     arch-x86_64.c,
> >     >> >      >      > line 421, when
> >     >> >      >      > using it with an executable built with `-fno-plt`:
> >     >> >      >      >
> >     >> >      >      > ...
> >     >> >      >      > assert (i < dso->ehdr.e_shnum)
> >     >> >      >      > ...
> >     >> >      >      >
> >     >> >      >      > This snippet seems to be looking for the ".plt"
> section and,
> >     >> >      >     since it
> >     >> >      >      > can't find it, the assertion fires.  This makes
> sense
> >     >> >     because in
> >     >> >      >      > `-fno-plt` executables, the `.plt` section is
> missing
> >     >> >     entirely.
> >     >> >      >      > I'm not an expert on ELF stuff, although I am
> learning
> >     >> >     quickly.  It
> >     >> >      >      > looks like
> >     >> >      >      > this code wants to write into GOT[1] the address
> of ".plt"
> >     >> >     + 0x16 --
> >     >> >      >      > since ".plt" doesn't
> >     >> >      >      > exist, does it make sense to just change this
> assert to an if
> >     >> >      >     statement
> >     >> >      >      > like so:
> >     >> >      >      >
> >     >> >      >      > ...
> >     >> >      >      >        if (i < dso->ehdr.e_shnum)
> >     >> >      >      >        { ... }
> >     >> >      >      > ...
> >     >> >      >      >
> >     >> >      >      > and skip over that part?  Or is this a real error
> >     >> >     condition for
> >     >> >      >      > prelink-cross and it really should not continue?
> The
> >     >> >     executable in
> >     >> >      >      > question is also non-PIE, if that makes a
> difference.
> >     >> >      >      >
> >     >> >      >
> >     >> >      >     what shared libs is this linking to ? are they also
> built with
> >     >> >      >     -fno-plt ?
> >     >> >      >
> >     >> >      >      > Thanks for your time,
> >     >> >      >      > Shane
> >     >> >      >      >
> >     >> >      >
> >     >> >
> >
> >
>
>

--00000000000036c1a7058a0b26ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mark,</div><div><br></div><div>Thank you for your =
reply and no problem -- I chose to benchmark ssh-add with it.=C2=A0 It cont=
ains no `.plt`.</div><div><br></div><div>The results are as follows:<br><br=
></div><div>Without prelink (ran prelink -auv):<br><br>=C2=A0 =C2=A0=C2=A0 =
26019:<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 runtime linker statistic=
s:<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 total startup time in=
 dynamic loader: 1321674 cycles<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time needed for relocation: 7979=
48 cycles (60.3%)<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 624=
<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number of=
 relocations from cache: 3<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 number of relative relocations: 9691<br>=C2=A0 =C2=
=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tim=
e needed to load objects: 389972 cycles (29.5%)<br>Could not open a connect=
ion to your authentication agent.<br>=C2=A0 =C2=A0 =C2=A026019:<br>=C2=A0 =
=C2=A0 =C2=A026019: =C2=A0 =C2=A0 runtime linker statistics:<br>=C2=A0 =C2=
=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fin=
al number of relocations: 630<br>=C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 f=
inal number of relocations from cache: 3</div><div><br></div><div>With prel=
ink (ran prelink -av):</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0 1930:<=
br>=C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 runtime linker statistics:<br>=
=C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 total startup time in dynam=
ic loader: 462288 cycles<br>=C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time needed for relocation: 48730 cycle=
s (10.5%)<br>=C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 7<br>=C2=A0=
 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number of relocatio=
ns from cache: 134<br>=C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 number of relative relocations: 0<br>=C2=A0 =C2=A0 =C2=A0=
 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time needed t=
o load objects: 286076 cycles (61.8%)<br>Could not open a connection to you=
r authentication agent.<br>=C2=A0 =C2=A0 =C2=A0 1930:<br>=C2=A0 =C2=A0 =C2=
=A0 1930: =C2=A0 =C2=A0 runtime linker statistics:<br>=C2=A0 =C2=A0 =C2=A0 =
1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0final number o=
f relocations: 9<br>=C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 final number o=
f relocations from cache: 134<br></div><div><br></div><div>I also tested ag=
ainst execstack, which for sure had the assertion fire on.<br></div><div>Wi=
thout prelink:<br><br>=C2=A0 =C2=A0=C2=A0 27736:<br>=C2=A0 =C2=A0 =C2=A0277=
36: =C2=A0 =C2=A0 runtime linker statistics:<br>=C2=A0 =C2=A0 =C2=A027736: =
=C2=A0 =C2=A0 =C2=A0 total startup time in dynamic loader: 1955954 cycles<b=
r>=C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 time needed for relocation: 755440 cycles (38.6%)<br>=C2=A0 =C2=
=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0number of relocations: 247<br>=C2=A0 =C2=A0 =C2=A027736=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number of relocations from cache: 3<br=
>=C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 numbe=
r of relative relocations: 1353<br>=C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time needed to load objects: 7103=
84 cycles (36.3%)<br>/usr/bin/execstack: no files given<br>=C2=A0 =C2=A0 =
=C2=A027736:<br>=C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 runtime linker sta=
tistics:<br>=C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0final number of relocations: 251<br>=C2=A0 =C2=A0 =C2=
=A027736: =C2=A0 =C2=A0 final number of relocations from cache: 3</div><div=
><br></div><div>With prelink:<br><br>=C2=A0 =C2=A0 =C2=A0 3268:<br>=C2=A0 =
=C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 runtime linker statistics:<br>=C2=A0 =C2=
=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 total startup time in dynamic loader:=
 1421206 cycles<br>=C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 time needed for relocation: 199396 cycles (14.0=
%)<br>=C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 3<br>=C2=A0 =C2=A0=
 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number of relocations from=
 cache: 88<br>=C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 number of relative relocations: 0<br>=C2=A0 =C2=A0 =C2=A0 3268: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time needed to load obj=
ects: 696886 cycles (49.0%)<br>/usr/bin/execstack: no files given<br>=C2=A0=
 =C2=A0 =C2=A0 3268:<br>=C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 runtime li=
nker statistics:<br>=C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0final number of relocations: 5<br>=C2=A0 =C2=A0 =
=C2=A0 3268: =C2=A0 =C2=A0 final number of relocations from cache: 88</div>=
<div><br></div><div>So, it looks like prelink is working on these :)<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue, May 28, 2019 at 2:57 PM Mark Hatle &lt;<a href=3D"mailto:mark.ha=
tle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Sorry for my delayed reply.=C2=
=A0 I was out on a business trip.<br>
<br>
Did you try this with the ld.so statistics to see if the relocations were i=
ndeed<br>
reduced at runtime?<br>
<br>
One of my worries with these changes (since I am not an ELF expert either) =
is<br>
that we make a change that doesn&#39;t actually do anything -- but people e=
xpect it to.<br>
<br>
$ LD_DEBUG=3Dhelp /lib/ld-linux.so.2<br>
Valid options for the LD_DEBUG environment variable are:<br>
<br>
=C2=A0 libs=C2=A0 =C2=A0 =C2=A0 =C2=A0 display library search paths<br>
=C2=A0 reloc=C2=A0 =C2=A0 =C2=A0 =C2=A0display relocation processing<br>
=C2=A0 files=C2=A0 =C2=A0 =C2=A0 =C2=A0display progress for input file<br>
=C2=A0 symbols=C2=A0 =C2=A0 =C2=A0display symbol table processing<br>
=C2=A0 bindings=C2=A0 =C2=A0 display information about symbol binding<br>
=C2=A0 versions=C2=A0 =C2=A0 display version dependencies<br>
=C2=A0 scopes=C2=A0 =C2=A0 =C2=A0 display scope information<br>
=C2=A0 all=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0all previous options combined<b=
r>
=C2=A0 statistics=C2=A0 display relocation statistics<br>
=C2=A0 unused=C2=A0 =C2=A0 =C2=A0 determined unused DSOs<br>
=C2=A0 help=C2=A0 =C2=A0 =C2=A0 =C2=A0 display this help message and exit<b=
r>
<br>
To direct the debugging output into a file instead of standard output<br>
a filename can be specified using the LD_DEBUG_OUTPUT environment variable.=
<br>
<br>
I believe that it&#39;s the &#39;statistics&#39; option.<br>
<br>
LD_DEBUG=3Dstatistics &lt;executable that&#39;s been prelinked&gt;<br>
<br>
Should result in something like:<br>
<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0runtime linker statistics:<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0total startup time in dynam=
ic loader: 1974661 cycles<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0time needed for relocation: 354639 cycles (17.9%)<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 number of relocations: 90<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of rel=
ocations from cache: 3<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number=
 of relative relocations: 1201<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 time needed to load objects: 1303654 cycles (66.0%)<br>
=C2=A0 =C2=A0 128820:<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0runtime linker statistics:<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 final number of relocations: 94<br>
=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0final number of relocations from c=
ache: 3<br>
<br>
If prelink is working, the number of relocations (relative or otherwise) wi=
ll be<br>
significantly reduced from the original non-relocated version.<br>
<br>
If you can run this test, it would give me the assurance that the patch is =
safe,<br>
and I&#39;ll get it incorporated into the prelink-cross sources.<br>
<br>
--Mark<br>
<br>
On 5/25/19 2:53 PM, Shane Peelar wrote:<br>
&gt; Patch is attached.=C2=A0 Thank you!<br>
&gt; <br>
&gt; On Sat, May 25, 2019 at 2:30 AM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Fri, May 24, 2019 at 6:58 PM Shane Peelar &lt;<a=
 href=3D"mailto:lookatyouhacker@gmail.com" target=3D"_blank">lookatyouhacke=
r@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:lookatyouhacker@gmail.=
com" target=3D"_blank">lookatyouhacker@gmail.com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Great!=C2=A0 Would you be willing to accept a =
patch that makes arch-x86_64.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0handle that condition like the other arches?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0yes certainly.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; -Shane<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Fri, May 24, 2019 at 12:27 PM Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; On 5/24/19 8:10 AM, Shane Peelar wrote:<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; I did some reading into the sources i=
n other architectures.=C2=A0 The closest<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; match, arch_i386.c, makes the write c=
onditional as you say.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; So do other arches, including |arch_a=
rm.c, |arch_sh.c, |arch-mips.c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |arch-s390.c, |arch-s390x.c, and |arc=
h-ia64.c.||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; ||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; ||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; Notably, |||||||arch-cris.c||||||| ha=
s the same assert as<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||arch-x86_64.c||||||| instead o=
f the conditional.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; The code roughly looks like follows:|=
|||||||||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; ||||||||||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 1. Check for dso-&gt;info[DT_PLTGOT].=
=C2=A0 If it does not exist, return 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 2. Call addr_to_sec on dso-&gt;info[D=
T_PLTGOT], return 1 if error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 3. Look for the section named &quot;.=
plt&quot; in the ELF.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 4. If the section cannot be found, re=
turn 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 5. Otherwise, write the address of .p=
lt + constant (dependent on arch)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; to got[1]||||||||||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; ||||||||||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; In |||||||arch-x86_64.c and arch-cris=
.c|||||||, step (4) above is an<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; assert:|||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||1. Check for dso-&gt;info[DT_P=
LTGOT].=C2=A0 If it does not exist, return 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 2. Call addr_to_sec on dso-&gt;info[D=
T_PLTGOT], return 1 if error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 3. Look for the section named &quot;.=
plt&quot; in the ELF.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 4. Assert that the section was found<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 5. Write the address of .plt + consta=
nt (dependent on arch) to got[1]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; I tested out making the assert condit=
ional and nothing seemed to break<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; at least.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; It seems ok to me.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; On Fri, May 24, 2019 at 12:08 AM Khem=
 Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; &lt;mailto:<a href=3D"mailto:raj.khem=
@gmail.com" target=3D"_blank">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;&gt;=
&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 7:53 PM=
, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Any of them =
on the system pretty much, and yes they are also<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; -fno-plt.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0OK, I think its be=
tter to them conditionally check for .plt section,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0can you describe m=
ore of whats going on when sections are checked.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Thu, May =
23, 2019 at 9:59 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a> &lt=
;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gm=
ail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;mailto:<=
a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</=
a> &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.k=
hem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;&gt;&gt;&gt; wrote=
:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0On 5/23/19 8:05 AM, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; Hi Everyone @ the Yocto project,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; I&#39;m Shane Peelar, a PhD Candidate at the University of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Windsor.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; I&#39;m writing to you about prelink-cross, as part of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Yocto project.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; Specifically, I&#39;m looking at using it with executables<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0built using<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; `-fno-plt` under GCC.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; I wasn&#39;t quite sure where to send this email to, so I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0figured I&#39;d<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0try<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; here.=C2=A0 If there&#39;s a better place to send this, please=
 let<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0me know.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; Right now, prelink-cross seems to fail an assertion in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0arch-x86_64.c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; line 421, when<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; using it with an executable built with `-fno-plt`:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; assert (i &lt; dso-&gt;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; This snippet seems to be looking for the &quot;.plt&quot; sect=
ion and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0since it<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; can&#39;t find it, the assertion fires.=C2=A0 This makes sense=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0because in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; `-fno-plt` executables, the `.plt` section is missing<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0entirely.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; I&#39;m not an expert on ELF stuff, although I am learning<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0quickly.=C2=A0 It<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; looks like<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; this code wants to write into GOT[1] the address of &quot;.plt=
&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0+ 0x16 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; since &quot;.plt&quot; doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; exist, does it make sense to just change this assert to an if<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0statement<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; like so:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i &lt; dso-&gt;ehdr.e_shnum)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 { ... }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; and skip over that part?=C2=A0 Or is this a real error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0condition for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; prelink-cross and it really should not continue?=C2=A0 The<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0executable in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; question is also non-PIE, if that makes a difference.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0what shared libs is this linking to ? are they also built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0-fno-plt ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; Thanks for your time,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt; Shane<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--00000000000036c1a7058a0b26ef--
