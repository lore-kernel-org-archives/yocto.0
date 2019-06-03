Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC566E00C7D; Sun,  2 Jun 2019 21:50:17 -0700 (PDT)
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
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60B17E009EA
	for <yocto@yoctoproject.org>; Sun,  2 Jun 2019 21:50:16 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id r21so2363748otq.6
	for <yocto@yoctoproject.org>; Sun, 02 Jun 2019 21:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OxPI8VhYbfEC6d6Zvo+96EEpmrzzKbbWyoS5PkH95QQ=;
	b=Kxc6wogh4qji8Z2n1DjZn206xDJ+SkDDdAImD/83Dwrl1g7kXZJGrbQ3mUHwkj1Ybe
	AZGDwL2ykbF+p3cNRxeBcKBcmpxaiRfk3S2wGwcn5WfJZywTIhRZLgYIVcv8pl0doNoR
	9rLzS97MHprJ3v9iLztQ/jSEerk0Xi/CLWUD62EWGvBWGKfOjU7fhzwTUWgG7ZuV1ezB
	0VgTv7D+r9yrXVuzoNkgJ2IB6p3966DRSc+osQfFjdPanwpOYEiU8KTSg3e8j71fY06K
	sIQxwH5iTlRPIe3vtBjE81lHOJEO7Sr7+dCcZw9lqCgsw6psc7PaHorUo3GTlDc82p8y
	4w5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OxPI8VhYbfEC6d6Zvo+96EEpmrzzKbbWyoS5PkH95QQ=;
	b=inN92gCro7Iik4Sp43/8kovgfA3YMvB/NnP2lyQ/vYI09NOzwHkvyo3l3lCLw45maa
	r2Yu2usdNgn6hRxy+MlGMaDegLkqDqJ469BBrZky71ZSSwYERBiyx04Zbqh4qhTPetJC
	4s6xd2nTeJIqHajmlwbslFItHWtQ4bbTGf7MNcLitDgMfCcqmTBj/+NlSV4s7sOajRaf
	uIu3SZI73/haMnhYeND1qGVmfV5l085czKAvHOAvoJ0X2FKWbZE6QlBzPk7+QYFkeakR
	Dz+P6XozxL8PFAdAYFptRDxOqTuQVrW23Kw2Sqb9gaHK8W0l+AVoQwiu+B7sWbgFYyR9
	maOg==
X-Gm-Message-State: APjAAAUDkb1+wDLgTlQcsExCnauUpkyBfGASNCicpoirTtk4qCjodwFN
	8UuEdl7iEGB6Ve2p5HCzrcY3YIl7+q87Ys8Yrk8=
X-Google-Smtp-Source: APXvYqw5HhwmlP5ZTWtpWQYZDETkmi1O9K2p2br5WbXCS6GlgK2+TNVT7UBl7cnNFb9jiuMsgRxLPvanc+NOhe0hvtg=
X-Received: by 2002:a9d:2225:: with SMTP id o34mr10709368ota.38.1559537415392; 
	Sun, 02 Jun 2019 21:50:15 -0700 (PDT)
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
	<CAEseUXm_CsT=3u6ro8+8WMh9TAzSVwVyj7ahgYhvdjeJNA25=A@mail.gmail.com>
	<69690341-4b69-eeea-d003-75fd38ccc2f9@windriver.com>
In-Reply-To: <69690341-4b69-eeea-d003-75fd38ccc2f9@windriver.com>
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Sun, 2 Jun 2019 21:50:03 -0700
Message-ID: <CAEseUXkfLj1K6ix0qA4JSGX6ACevwYXODYqpqUzjxEsoM0wOBg@mail.gmail.com>
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
X-List-Received-Date: Mon, 03 Jun 2019 04:50:18 -0000
Content-Type: multipart/alternative; boundary="000000000000a891a5058a6419ab"

--000000000000a891a5058a6419ab
Content-Type: text/plain; charset="UTF-8"

Will do, thanks!

On Sat, Jun 1, 2019, 3:50 PM Mark Hatle, <mark.hatle@windriver.com> wrote:

> Thanks, this shows that the prelinking is still working in this case.
> I'll get
> you patch queued up.  If you don't see any progress on it this coming week,
> please feel free to remind me.
>
> --Mark
>
> On 5/29/19 1:42 PM, Shane Peelar wrote:
> > Hi Mark,
> >
> > Thank you for your reply and no problem -- I chose to benchmark ssh-add
> with
> > it.  It contains no `.plt`.
> >
> > The results are as follows:
> >
> > Without prelink (ran prelink -auv):
> >
> >      26019:
> >      26019:     runtime linker statistics:
> >      26019:       total startup time in dynamic loader: 1321674 cycles
> >      26019:                 time needed for relocation: 797948 cycles
> (60.3%)
> >      26019:                      number of relocations: 624
> >      26019:           number of relocations from cache: 3
> >      26019:             number of relative relocations: 9691
> >      26019:                time needed to load objects: 389972 cycles
> (29.5%)
> > Could not open a connection to your authentication agent.
> >      26019:
> >      26019:     runtime linker statistics:
> >      26019:                final number of relocations: 630
> >      26019:     final number of relocations from cache: 3
> >
> > With prelink (ran prelink -av):
> >
> >       1930:
> >       1930:     runtime linker statistics:
> >       1930:       total startup time in dynamic loader: 462288 cycles
> >       1930:                 time needed for relocation: 48730 cycles
> (10.5%)
> >       1930:                      number of relocations: 7
> >       1930:           number of relocations from cache: 134
> >       1930:             number of relative relocations: 0
> >       1930:                time needed to load objects: 286076 cycles
> (61.8%)
> > Could not open a connection to your authentication agent.
> >       1930:
> >       1930:     runtime linker statistics:
> >       1930:                final number of relocations: 9
> >       1930:     final number of relocations from cache: 134
> >
> > I also tested against execstack, which for sure had the assertion fire
> on.
> > Without prelink:
> >
> >      27736:
> >      27736:     runtime linker statistics:
> >      27736:       total startup time in dynamic loader: 1955954 cycles
> >      27736:                 time needed for relocation: 755440 cycles
> (38.6%)
> >      27736:                      number of relocations: 247
> >      27736:           number of relocations from cache: 3
> >      27736:             number of relative relocations: 1353
> >      27736:                time needed to load objects: 710384 cycles
> (36.3%)
> > /usr/bin/execstack: no files given
> >      27736:
> >      27736:     runtime linker statistics:
> >      27736:                final number of relocations: 251
> >      27736:     final number of relocations from cache: 3
> >
> > With prelink:
> >
> >       3268:
> >       3268:     runtime linker statistics:
> >       3268:       total startup time in dynamic loader: 1421206 cycles
> >       3268:                 time needed for relocation: 199396 cycles
> (14.0%)
> >       3268:                      number of relocations: 3
> >       3268:           number of relocations from cache: 88
> >       3268:             number of relative relocations: 0
> >       3268:                time needed to load objects: 696886 cycles
> (49.0%)
> > /usr/bin/execstack: no files given
> >       3268:
> >       3268:     runtime linker statistics:
> >       3268:                final number of relocations: 5
> >       3268:     final number of relocations from cache: 88
> >
> > So, it looks like prelink is working on these :)
> >
> > On Tue, May 28, 2019 at 2:57 PM Mark Hatle <mark.hatle@windriver.com
> > <mailto:mark.hatle@windriver.com>> wrote:
> >
> >     Sorry for my delayed reply.  I was out on a business trip.
> >
> >     Did you try this with the ld.so statistics to see if the relocations
> were indeed
> >     reduced at runtime?
> >
> >     One of my worries with these changes (since I am not an ELF expert
> either) is
> >     that we make a change that doesn't actually do anything -- but
> people expect
> >     it to.
> >
> >     $ LD_DEBUG=help /lib/ld-linux.so.2
> >     Valid options for the LD_DEBUG environment variable are:
> >
> >       libs        display library search paths
> >       reloc       display relocation processing
> >       files       display progress for input file
> >       symbols     display symbol table processing
> >       bindings    display information about symbol binding
> >       versions    display version dependencies
> >       scopes      display scope information
> >       all         all previous options combined
> >       statistics  display relocation statistics
> >       unused      determined unused DSOs
> >       help        display this help message and exit
> >
> >     To direct the debugging output into a file instead of standard output
> >     a filename can be specified using the LD_DEBUG_OUTPUT environment
> variable.
> >
> >     I believe that it's the 'statistics' option.
> >
> >     LD_DEBUG=statistics <executable that's been prelinked>
> >
> >     Should result in something like:
> >
> >         128820:     runtime linker statistics:
> >         128820:       total startup time in dynamic loader: 1974661
> cycles
> >         128820:                 time needed for relocation: 354639
> cycles (17.9%)
> >         128820:                      number of relocations: 90
> >         128820:           number of relocations from cache: 3
> >         128820:             number of relative relocations: 1201
> >         128820:                time needed to load objects: 1303654
> cycles (66.0%)
> >         128820:
> >         128820:     runtime linker statistics:
> >         128820:                final number of relocations: 94
> >         128820:     final number of relocations from cache: 3
> >
> >     If prelink is working, the number of relocations (relative or
> otherwise) will be
> >     significantly reduced from the original non-relocated version.
> >
> >     If you can run this test, it would give me the assurance that the
> patch is safe,
> >     and I'll get it incorporated into the prelink-cross sources.
> >
> >     --Mark
> >
> >     On 5/25/19 2:53 PM, Shane Peelar wrote:
> >     > Patch is attached.  Thank you!
> >     >
> >     > On Sat, May 25, 2019 at 2:30 AM Khem Raj <raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>
> >     > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
> >     >
> >     >     On Fri, May 24, 2019 at 6:58 PM Shane Peelar
> >     <lookatyouhacker@gmail.com <mailto:lookatyouhacker@gmail.com>
> >     >     <mailto:lookatyouhacker@gmail.com <mailto:
> lookatyouhacker@gmail.com>>>
> >     wrote:
> >     >     >
> >     >     > Great!  Would you be willing to accept a patch that makes
> arch-x86_64.c
> >     >     handle that condition like the other arches?
> >     >     >
> >     >
> >     >     yes certainly.
> >     >
> >     >     > -Shane
> >     >     >
> >     >     > On Fri, May 24, 2019 at 12:27 PM Khem Raj <
> raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>
> >     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>
> wrote:
> >     >     >>
> >     >     >>
> >     >     >>
> >     >     >> On 5/24/19 8:10 AM, Shane Peelar wrote:
> >     >     >> > I did some reading into the sources in other
> architectures.  The
> >     closest
> >     >     >> > match, arch_i386.c, makes the write conditional as you
> say.
> >     >     >> > So do other arches, including |arch_arm.c, |arch_sh.c,
> |arch-mips.c,
> >     >     >> > |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
> >     >     >> > ||||||
> >     >     >> > ||||||
> >     >     >> > Notably, |||||||arch-cris.c||||||| has the same assert as
> >     >     >> > |||||||arch-x86_64.c||||||| instead of the conditional.
> >     >     >> >
> >     >     >> > The code roughly looks like follows:||||||||||||||
> >     >     >> > ||||||||||||||
> >     >     >> > |||||||
> >     >     >> > |||||||
> >     >     >> > 1. Check for dso->info[DT_PLTGOT].  If it does not exist,
> return 0
> >     >     >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if
> error
> >     >     >> > 3. Look for the section named ".plt" in the ELF.
> >     >     >> > 4. If the section cannot be found, return 0
> >     >     >> > 5. Otherwise, write the address of .plt + constant
> (dependent on
> >     arch)
> >     >     >> > to got[1]||||||||||||||
> >     >     >> > ||||||||||||||
> >     >     >> > |||||||
> >     >     >> > |||||||
> >     >     >> > In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4)
> above is an
> >     >     >> > assert:|||||||
> >     >     >> >
> >     >     >> > |||||||1. Check for dso->info[DT_PLTGOT].  If it does not
> exist,
> >     return 0
> >     >     >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if
> error
> >     >     >> > 3. Look for the section named ".plt" in the ELF.
> >     >     >> > 4. Assert that the section was found
> >     >     >> > 5. Write the address of .plt + constant (dependent on
> arch) to got[1]
> >     >     >> >
> >     >     >> > I tested out making the assert conditional and nothing
> seemed to
> >     break
> >     >     >> > at least.
> >     >     >> > |||||||
> >     >     >> > |||||||
> >     >     >>
> >     >     >> It seems ok to me.
> >     >     >>
> >     >     >> >
> >     >     >> > On Fri, May 24, 2019 at 12:08 AM Khem Raj <
> raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>
> >     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> >     >     >> > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>> wrote:
> >     >     >> >
> >     >     >> >
> >     >     >> >
> >     >     >> >     On 5/23/19 7:53 PM, Shane Peelar wrote:
> >     >     >> >      > Any of them on the system pretty much, and yes
> they are also
> >     >     >> >     built with
> >     >     >> >      > -fno-plt.
> >     >     >> >
> >     >     >> >     OK, I think its better to them conditionally check
> for .plt
> >     section,
> >     >     >> >     can you describe more of whats going on when sections
> are
> >     checked.
> >     >     >> >
> >     >     >> >      >
> >     >     >> >      > On Thu, May 23, 2019 at 9:59 PM Khem Raj
> >     <raj.khem@gmail.com <mailto:raj.khem@gmail.com>
> >     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> >     >     >> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com
> >
> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>
> >     >     >> >      > <mailto:raj.khem@gmail.com <mailto:
> raj.khem@gmail.com>
> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> >     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>>> wrote:
> >     >     >> >      >
> >     >     >> >      >
> >     >     >> >      >
> >     >     >> >      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
> >     >     >> >      >      > Hi Everyone @ the Yocto project,
> >     >     >> >      >      >
> >     >     >> >      >      > I'm Shane Peelar, a PhD Candidate at the
> University of
> >     >     >> >     Windsor.
> >     >     >> >      >      > I'm writing to you about prelink-cross, as
> part of the
> >     >     >> >     Yocto project.
> >     >     >> >      >      > Specifically, I'm looking at using it with
> executables
> >     >     >> >     built using
> >     >     >> >      >      > `-fno-plt` under GCC.
> >     >     >> >      >      > I wasn't quite sure where to send this
> email to, so I
> >     >     >> >     figured I'd
> >     >     >> >      >     try
> >     >     >> >      >      > here.  If there's a better place to send
> this,
> >     please let
> >     >     >> >     me know.
> >     >     >> >      >      >
> >     >     >> >      >      > Right now, prelink-cross seems to fail an
> assertion in
> >     >     >> >      >     arch-x86_64.c,
> >     >     >> >      >      > line 421, when
> >     >     >> >      >      > using it with an executable built with
> `-fno-plt`:
> >     >     >> >      >      >
> >     >     >> >      >      > ...
> >     >     >> >      >      > assert (i < dso->ehdr.e_shnum)
> >     >     >> >      >      > ...
> >     >     >> >      >      >
> >     >     >> >      >      > This snippet seems to be looking for the
> ".plt"
> >     section and,
> >     >     >> >      >     since it
> >     >     >> >      >      > can't find it, the assertion fires.  This
> makes sense
> >     >     >> >     because in
> >     >     >> >      >      > `-fno-plt` executables, the `.plt` section
> is missing
> >     >     >> >     entirely.
> >     >     >> >      >      > I'm not an expert on ELF stuff, although I
> am learning
> >     >     >> >     quickly.  It
> >     >     >> >      >      > looks like
> >     >     >> >      >      > this code wants to write into GOT[1] the
> address of
> >     ".plt"
> >     >     >> >     + 0x16 --
> >     >     >> >      >      > since ".plt" doesn't
> >     >     >> >      >      > exist, does it make sense to just change
> this
> >     assert to an if
> >     >     >> >      >     statement
> >     >     >> >      >      > like so:
> >     >     >> >      >      >
> >     >     >> >      >      > ...
> >     >     >> >      >      >        if (i < dso->ehdr.e_shnum)
> >     >     >> >      >      >        { ... }
> >     >     >> >      >      > ...
> >     >     >> >      >      >
> >     >     >> >      >      > and skip over that part?  Or is this a real
> error
> >     >     >> >     condition for
> >     >     >> >      >      > prelink-cross and it really should not
> continue?  The
> >     >     >> >     executable in
> >     >     >> >      >      > question is also non-PIE, if that makes a
> difference.
> >     >     >> >      >      >
> >     >     >> >      >
> >     >     >> >      >     what shared libs is this linking to ? are they
> also
> >     built with
> >     >     >> >      >     -fno-plt ?
> >     >     >> >      >
> >     >     >> >      >      > Thanks for your time,
> >     >     >> >      >      > Shane
> >     >     >> >      >      >
> >     >     >> >      >
> >     >     >> >
> >     >
> >     >
> >
>
>

--000000000000a891a5058a6419ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Will do, thanks!=C2=A0</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun 1, 2019, 3:50 PM Mark H=
atle, &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@windriver.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Thanks, this sho=
ws that the prelinking is still working in this case.=C2=A0 I&#39;ll get<br=
>
you patch queued up.=C2=A0 If you don&#39;t see any progress on it this com=
ing week,<br>
please feel free to remind me.<br>
<br>
--Mark<br>
<br>
On 5/29/19 1:42 PM, Shane Peelar wrote:<br>
&gt; Hi Mark,<br>
&gt; <br>
&gt; Thank you for your reply and no problem -- I chose to benchmark ssh-ad=
d with<br>
&gt; it.=C2=A0 It contains no `.plt`.<br>
&gt; <br>
&gt; The results are as follows:<br>
&gt; <br>
&gt; Without prelink (ran prelink -auv):<br>
&gt; <br>
&gt; =C2=A0 =C2=A0=C2=A0 26019:<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 total startup time in =
dynamic loader: 1321674 cycles<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 time needed for relocation: 797948 cycles (60.3%)<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 624<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number o=
f relocations from cache: 3<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
umber of relative relocations: 9691<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0time needed to load objects: 389972 cycles (29.5%)<br>
&gt; Could not open a connection to your authentication agent.<br>
&gt; =C2=A0 =C2=A0 =C2=A026019:<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0final number of relocations: 630<br>
&gt; =C2=A0 =C2=A0 =C2=A026019: =C2=A0 =C2=A0 final number of relocations f=
rom cache: 3<br>
&gt; <br>
&gt; With prelink (ran prelink -av):<br>
&gt; <br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 total startup time in =
dynamic loader: 462288 cycles<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 time needed for relocation: 48730 cycles (10.5%)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 7<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number o=
f relocations from cache: 134<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
umber of relative relocations: 0<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0time needed to load objects: 286076 cycles (61.8%)<br>
&gt; Could not open a connection to your authentication agent.<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0final number of relocations: 9<br>
&gt; =C2=A0 =C2=A0 =C2=A0 1930: =C2=A0 =C2=A0 final number of relocations f=
rom cache: 134<br>
&gt; <br>
&gt; I also tested against execstack, which for sure had the assertion fire=
 on.<br>
&gt; Without prelink:<br>
&gt; <br>
&gt; =C2=A0 =C2=A0=C2=A0 27736:<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 total startup time in =
dynamic loader: 1955954 cycles<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 time needed for relocation: 755440 cycles (38.6%)<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 247<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number o=
f relocations from cache: 3<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
umber of relative relocations: 1353<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0time needed to load objects: 710384 cycles (36.3%)<br>
&gt; /usr/bin/execstack: no files given<br>
&gt; =C2=A0 =C2=A0 =C2=A027736:<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0final number of relocations: 251<br>
&gt; =C2=A0 =C2=A0 =C2=A027736: =C2=A0 =C2=A0 final number of relocations f=
rom cache: 3<br>
&gt; <br>
&gt; With prelink:<br>
&gt; <br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 total startup time in =
dynamic loader: 1421206 cycles<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 time needed for relocation: 199396 cycles (14.0%)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0number of relocations: 3<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number o=
f relocations from cache: 88<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
umber of relative relocations: 0<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0time needed to load objects: 696886 cycles (49.0%)<br>
&gt; /usr/bin/execstack: no files given<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 runtime linker statistics:<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0final number of relocations: 5<br>
&gt; =C2=A0 =C2=A0 =C2=A0 3268: =C2=A0 =C2=A0 final number of relocations f=
rom cache: 88<br>
&gt; <br>
&gt; So, it looks like prelink is working on these :)<br>
&gt; <br>
&gt; On Tue, May 28, 2019 at 2:57 PM Mark Hatle &lt;<a href=3D"mailto:mark.=
hatle@windriver.com" target=3D"_blank" rel=3D"noreferrer">mark.hatle@windri=
ver.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blan=
k" rel=3D"noreferrer">mark.hatle@windriver.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Sorry for my delayed reply.=C2=A0 I was out on a bu=
siness trip.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Did you try this with the ld.so statistics to see i=
f the relocations were indeed<br>
&gt;=C2=A0 =C2=A0 =C2=A0reduced at runtime?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0One of my worries with these changes (since I am no=
t an ELF expert either) is<br>
&gt;=C2=A0 =C2=A0 =C2=A0that we make a change that doesn&#39;t actually do =
anything -- but people expect<br>
&gt;=C2=A0 =C2=A0 =C2=A0it to.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0$ LD_DEBUG=3Dhelp /lib/ld-linux.so.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0Valid options for the LD_DEBUG environment variable=
 are:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 libs=C2=A0 =C2=A0 =C2=A0 =C2=A0 display libr=
ary search paths<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 reloc=C2=A0 =C2=A0 =C2=A0 =C2=A0display relo=
cation processing<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 files=C2=A0 =C2=A0 =C2=A0 =C2=A0display prog=
ress for input file<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 symbols=C2=A0 =C2=A0 =C2=A0display symbol ta=
ble processing<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 bindings=C2=A0 =C2=A0 display information ab=
out symbol binding<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 versions=C2=A0 =C2=A0 display version depend=
encies<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 scopes=C2=A0 =C2=A0 =C2=A0 display scope inf=
ormation<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 all=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0all pre=
vious options combined<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 statistics=C2=A0 display relocation statisti=
cs<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 unused=C2=A0 =C2=A0 =C2=A0 determined unused=
 DSOs<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 help=C2=A0 =C2=A0 =C2=A0 =C2=A0 display this=
 help message and exit<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0To direct the debugging output into a file instead =
of standard output<br>
&gt;=C2=A0 =C2=A0 =C2=A0a filename can be specified using the LD_DEBUG_OUTP=
UT environment variable.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I believe that it&#39;s the &#39;statistics&#39; op=
tion.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0LD_DEBUG=3Dstatistics &lt;executable that&#39;s bee=
n prelinked&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Should result in something like:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0runtime li=
nker statistics:<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0tot=
al startup time in dynamic loader: 1974661 cycles<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time needed for relocation: 354639 cycles=
 (17.9%)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 number of relocations: 90<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0number of relocations from cache: 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0number of relative relocations: 1201<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 time needed to load objects: 1303654 cycles (66=
.0%)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0runtime li=
nker statistics:<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 final number of relocations: 94<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 128820:=C2=A0 =C2=A0 =C2=A0final numb=
er of relocations from cache: 3<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0If prelink is working, the number of relocations (r=
elative or otherwise) will be<br>
&gt;=C2=A0 =C2=A0 =C2=A0significantly reduced from the original non-relocat=
ed version.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0If you can run this test, it would give me the assu=
rance that the patch is safe,<br>
&gt;=C2=A0 =C2=A0 =C2=A0and I&#39;ll get it incorporated into the prelink-c=
ross sources.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0--Mark<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/25/19 2:53 PM, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Patch is attached.=C2=A0 Thank you!<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Sat, May 25, 2019 at 2:30 AM Khem Raj &lt;<=
a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">r=
aj.khem@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<=
a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">r=
aj.khem@gmail.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0On Fri, May 24, 2019 at 6:5=
8 PM Shane Peelar<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:lookatyouhacker@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">lookatyouhacker@gmail.com</a> &lt;mailto=
:<a href=3D"mailto:lookatyouhacker@gmail.com" target=3D"_blank" rel=3D"nore=
ferrer">lookatyouhacker@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:lookatyouhacker@gmail.com" target=3D"_blank" rel=3D"noreferrer">lookatyou=
hacker@gmail.com</a> &lt;mailto:<a href=3D"mailto:lookatyouhacker@gmail.com=
" target=3D"_blank" rel=3D"noreferrer">lookatyouhacker@gmail.com</a>&gt;&gt=
;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Great!=C2=A0 Would you=
 be willing to accept a patch that makes arch-x86_64.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0handle that condition like =
the other arches?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0yes certainly.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; -Shane<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Fri, May 24, 2019 a=
t 12:27 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">raj.khem@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.c=
om</a> &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">raj.khem@gmail.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; On 5/24/19 8:10 AM=
, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; I did some re=
ading into the sources in other architectures.=C2=A0 The<br>
&gt;=C2=A0 =C2=A0 =C2=A0closest<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; match, arch_i=
386.c, makes the write conditional as you say.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; So do other a=
rches, including |arch_arm.c, |arch_sh.c, |arch-mips.c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |arch-s390.c,=
 |arch-s390x.c, and |arch-ia64.c.||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; ||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; ||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; Notably, ||||=
|||arch-cris.c||||||| has the same assert as<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||arch-x=
86_64.c||||||| instead of the conditional.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; The code roug=
hly looks like follows:||||||||||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||||||||=
|<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 1. Check for =
dso-&gt;info[DT_PLTGOT].=C2=A0 If it does not exist, return 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 2. Call addr_=
to_sec on dso-&gt;info[DT_PLTGOT], return 1 if error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 3. Look for t=
he section named &quot;.plt&quot; in the ELF.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 4. If the sec=
tion cannot be found, return 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 5. Otherwise,=
 write the address of .plt + constant (dependent on<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; to got[1]||||=
||||||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||||||||=
|<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; In |||||||arc=
h-x86_64.c and arch-cris.c|||||||, step (4) above is an<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; assert:||||||=
|<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||1. Che=
ck for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does not exist,<br>
&gt;=C2=A0 =C2=A0 =C2=A0return 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 2. Call addr_=
to_sec on dso-&gt;info[DT_PLTGOT], return 1 if error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 3. Look for t=
he section named &quot;.plt&quot; in the ELF.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 4. Assert tha=
t the section was found<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; 5. Write the =
address of .plt + constant (dependent on arch) to got[1]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; I tested out =
making the assert conditional and nothing seemed to<br>
&gt;=C2=A0 =C2=A0 =C2=A0break<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; at least.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; |||||||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; It seems ok to me.=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; On Fri, May 2=
4, 2019 at 12:08 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.c=
om</a> &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">raj.khem@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt; &lt;mailto:<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">ra=
j.khem@gmail.com</a> &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.kh=
em@gmail.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0On 5/23/19 7:53 PM, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt; Any of them on the system pretty much, and yes they are also<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt; -fno-plt.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0OK, I think its better to them conditionally check for .plt<br>
&gt;=C2=A0 =C2=A0 =C2=A0section,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0can you describe more of whats going on when sections are<br>
&gt;=C2=A0 =C2=A0 =C2=A0checked.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt; On Thu, May 23, 2019 at 9:59 PM Khem Raj<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"ma=
ilto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmai=
l.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.c=
om</a> &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">raj.khem@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" re=
l=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&g=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.kh=
em@gmail.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"mailto:=
raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com=
</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.kh=
em@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.c=
om</a> &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a> &lt;mailto:<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.kh=
em@gmail.com</a>&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 8:05 AM, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi Everyone @ the Yocto project,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m Shane Peelar, a PhD Candidate =
at the University of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0Windsor.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m writing to you about prelink-c=
ross, as part of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0Yocto project.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Specifically, I&#39;m looking at using=
 it with executables<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0built using<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` under GCC.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I wasn&#39;t quite sure where to send =
this email to, so I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0figured I&#39;d<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0try<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; here.=C2=A0 If there&#39;s a better pl=
ace to send this,<br>
&gt;=C2=A0 =C2=A0 =C2=A0please let<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0me know.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Right now, prelink-cross seems to fail=
 an assertion in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0arch-x86_64.c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; line 421, when<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; using it with an executable built with=
 `-fno-plt`:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; assert (i &lt; dso-&gt;ehdr.e_shnum)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; This snippet seems to be looking for t=
he &quot;.plt&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0section and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0since it<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; can&#39;t find it, the assertion fires=
.=C2=A0 This makes sense<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0because in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` executables, the `.plt` sec=
tion is missing<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0entirely.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m not an expert on ELF stuff, al=
though I am learning<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0quickly.=C2=A0 It<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; looks like<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; this code wants to write into GOT[1] t=
he address of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;.plt&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0+ 0x16 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; since &quot;.plt&quot; doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; exist, does it make sense to just chan=
ge this<br>
&gt;=C2=A0 =C2=A0 =C2=A0assert to an if<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0statement<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; like so:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i &lt; =
dso-&gt;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 { ... }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; and skip over that part?=C2=A0 Or is t=
his a real error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0condition for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; prelink-cross and it really should not=
 continue?=C2=A0 The<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0executable in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; question is also non-PIE, if that make=
s a difference.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0what shared libs is this linking to ? are th=
ey also<br>
&gt;=C2=A0 =C2=A0 =C2=A0built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0-fno-plt ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks for your time,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Shane<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;=C2=A0 =C2=A0 =
=C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; <br>
<br>
</blockquote></div>

--000000000000a891a5058a6419ab--
