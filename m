Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BBFAE00D40; Sat,  1 Jun 2019 15:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427D7E00B5F
	for <yocto@yoctoproject.org>; Sat,  1 Jun 2019 15:50:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x51MoCX5017198
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 1 Jun 2019 15:50:12 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Sat, 1 Jun 2019 15:50:11 -0700
To: Shane Peelar <lookatyouhacker@gmail.com>
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
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	mQENBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAG0JU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT6JATcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrrkBDQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABiQEfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <69690341-4b69-eeea-d003-75fd38ccc2f9@windriver.com>
Date: Sat, 1 Jun 2019 17:50:10 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAEseUXm_CsT=3u6ro8+8WMh9TAzSVwVyj7ahgYhvdjeJNA25=A@mail.gmail.com>
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
X-List-Received-Date: Sat, 01 Jun 2019 22:50:15 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Thanks, this shows that the prelinking is still working in this case.  I'll get
you patch queued up.  If you don't see any progress on it this coming week,
please feel free to remind me.

--Mark

On 5/29/19 1:42 PM, Shane Peelar wrote:
> Hi Mark,
> 
> Thank you for your reply and no problem -- I chose to benchmark ssh-add with
> it.  It contains no `.plt`.
> 
> The results are as follows:
> 
> Without prelink (ran prelink -auv):
> 
>      26019:
>      26019:     runtime linker statistics:
>      26019:       total startup time in dynamic loader: 1321674 cycles
>      26019:                 time needed for relocation: 797948 cycles (60.3%)
>      26019:                      number of relocations: 624
>      26019:           number of relocations from cache: 3
>      26019:             number of relative relocations: 9691
>      26019:                time needed to load objects: 389972 cycles (29.5%)
> Could not open a connection to your authentication agent.
>      26019:
>      26019:     runtime linker statistics:
>      26019:                final number of relocations: 630
>      26019:     final number of relocations from cache: 3
> 
> With prelink (ran prelink -av):
> 
>       1930:
>       1930:     runtime linker statistics:
>       1930:       total startup time in dynamic loader: 462288 cycles
>       1930:                 time needed for relocation: 48730 cycles (10.5%)
>       1930:                      number of relocations: 7
>       1930:           number of relocations from cache: 134
>       1930:             number of relative relocations: 0
>       1930:                time needed to load objects: 286076 cycles (61.8%)
> Could not open a connection to your authentication agent.
>       1930:
>       1930:     runtime linker statistics:
>       1930:                final number of relocations: 9
>       1930:     final number of relocations from cache: 134
> 
> I also tested against execstack, which for sure had the assertion fire on.
> Without prelink:
> 
>      27736:
>      27736:     runtime linker statistics:
>      27736:       total startup time in dynamic loader: 1955954 cycles
>      27736:                 time needed for relocation: 755440 cycles (38.6%)
>      27736:                      number of relocations: 247
>      27736:           number of relocations from cache: 3
>      27736:             number of relative relocations: 1353
>      27736:                time needed to load objects: 710384 cycles (36.3%)
> /usr/bin/execstack: no files given
>      27736:
>      27736:     runtime linker statistics:
>      27736:                final number of relocations: 251
>      27736:     final number of relocations from cache: 3
> 
> With prelink:
> 
>       3268:
>       3268:     runtime linker statistics:
>       3268:       total startup time in dynamic loader: 1421206 cycles
>       3268:                 time needed for relocation: 199396 cycles (14.0%)
>       3268:                      number of relocations: 3
>       3268:           number of relocations from cache: 88
>       3268:             number of relative relocations: 0
>       3268:                time needed to load objects: 696886 cycles (49.0%)
> /usr/bin/execstack: no files given
>       3268:
>       3268:     runtime linker statistics:
>       3268:                final number of relocations: 5
>       3268:     final number of relocations from cache: 88
> 
> So, it looks like prelink is working on these :)
> 
> On Tue, May 28, 2019 at 2:57 PM Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     Sorry for my delayed reply.  I was out on a business trip.
> 
>     Did you try this with the ld.so statistics to see if the relocations were indeed
>     reduced at runtime?
> 
>     One of my worries with these changes (since I am not an ELF expert either) is
>     that we make a change that doesn't actually do anything -- but people expect
>     it to.
> 
>     $ LD_DEBUG=help /lib/ld-linux.so.2
>     Valid options for the LD_DEBUG environment variable are:
> 
>       libs        display library search paths
>       reloc       display relocation processing
>       files       display progress for input file
>       symbols     display symbol table processing
>       bindings    display information about symbol binding
>       versions    display version dependencies
>       scopes      display scope information
>       all         all previous options combined
>       statistics  display relocation statistics
>       unused      determined unused DSOs
>       help        display this help message and exit
> 
>     To direct the debugging output into a file instead of standard output
>     a filename can be specified using the LD_DEBUG_OUTPUT environment variable.
> 
>     I believe that it's the 'statistics' option.
> 
>     LD_DEBUG=statistics <executable that's been prelinked>
> 
>     Should result in something like:
> 
>         128820:     runtime linker statistics:
>         128820:       total startup time in dynamic loader: 1974661 cycles
>         128820:                 time needed for relocation: 354639 cycles (17.9%)
>         128820:                      number of relocations: 90
>         128820:           number of relocations from cache: 3
>         128820:             number of relative relocations: 1201
>         128820:                time needed to load objects: 1303654 cycles (66.0%)
>         128820:
>         128820:     runtime linker statistics:
>         128820:                final number of relocations: 94
>         128820:     final number of relocations from cache: 3
> 
>     If prelink is working, the number of relocations (relative or otherwise) will be
>     significantly reduced from the original non-relocated version.
> 
>     If you can run this test, it would give me the assurance that the patch is safe,
>     and I'll get it incorporated into the prelink-cross sources.
> 
>     --Mark
> 
>     On 5/25/19 2:53 PM, Shane Peelar wrote:
>     > Patch is attached.  Thank you!
>     >
>     > On Sat, May 25, 2019 at 2:30 AM Khem Raj <raj.khem@gmail.com
>     <mailto:raj.khem@gmail.com>
>     > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
>     >
>     >     On Fri, May 24, 2019 at 6:58 PM Shane Peelar
>     <lookatyouhacker@gmail.com <mailto:lookatyouhacker@gmail.com>
>     >     <mailto:lookatyouhacker@gmail.com <mailto:lookatyouhacker@gmail.com>>>
>     wrote:
>     >     >
>     >     > Great!  Would you be willing to accept a patch that makes arch-x86_64.c
>     >     handle that condition like the other arches?
>     >     >
>     >
>     >     yes certainly.
>     >
>     >     > -Shane
>     >     >
>     >     > On Fri, May 24, 2019 at 12:27 PM Khem Raj <raj.khem@gmail.com
>     <mailto:raj.khem@gmail.com>
>     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
>     >     >>
>     >     >>
>     >     >>
>     >     >> On 5/24/19 8:10 AM, Shane Peelar wrote:
>     >     >> > I did some reading into the sources in other architectures.  The
>     closest
>     >     >> > match, arch_i386.c, makes the write conditional as you say.
>     >     >> > So do other arches, including |arch_arm.c, |arch_sh.c, |arch-mips.c,
>     >     >> > |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
>     >     >> > ||||||
>     >     >> > ||||||
>     >     >> > Notably, |||||||arch-cris.c||||||| has the same assert as
>     >     >> > |||||||arch-x86_64.c||||||| instead of the conditional.
>     >     >> >
>     >     >> > The code roughly looks like follows:||||||||||||||
>     >     >> > ||||||||||||||
>     >     >> > |||||||
>     >     >> > |||||||
>     >     >> > 1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
>     >     >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
>     >     >> > 3. Look for the section named ".plt" in the ELF.
>     >     >> > 4. If the section cannot be found, return 0
>     >     >> > 5. Otherwise, write the address of .plt + constant (dependent on
>     arch)
>     >     >> > to got[1]||||||||||||||
>     >     >> > ||||||||||||||
>     >     >> > |||||||
>     >     >> > |||||||
>     >     >> > In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above is an
>     >     >> > assert:|||||||
>     >     >> >
>     >     >> > |||||||1. Check for dso->info[DT_PLTGOT].  If it does not exist,
>     return 0
>     >     >> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
>     >     >> > 3. Look for the section named ".plt" in the ELF.
>     >     >> > 4. Assert that the section was found
>     >     >> > 5. Write the address of .plt + constant (dependent on arch) to got[1]
>     >     >> >
>     >     >> > I tested out making the assert conditional and nothing seemed to
>     break
>     >     >> > at least.
>     >     >> > |||||||
>     >     >> > |||||||
>     >     >>
>     >     >> It seems ok to me.
>     >     >>
>     >     >> >
>     >     >> > On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com
>     <mailto:raj.khem@gmail.com>
>     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
>     >     >> > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
>     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>> wrote:
>     >     >> >
>     >     >> >
>     >     >> >
>     >     >> >     On 5/23/19 7:53 PM, Shane Peelar wrote:
>     >     >> >      > Any of them on the system pretty much, and yes they are also
>     >     >> >     built with
>     >     >> >      > -fno-plt.
>     >     >> >
>     >     >> >     OK, I think its better to them conditionally check for .plt
>     section,
>     >     >> >     can you describe more of whats going on when sections are
>     checked.
>     >     >> >
>     >     >> >      >
>     >     >> >      > On Thu, May 23, 2019 at 9:59 PM Khem Raj
>     <raj.khem@gmail.com <mailto:raj.khem@gmail.com>
>     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
>     >     >> >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
>     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>
>     >     >> >      > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
>     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
>     >     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>
>     <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>>>> wrote:
>     >     >> >      >
>     >     >> >      >
>     >     >> >      >
>     >     >> >      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
>     >     >> >      >      > Hi Everyone @ the Yocto project,
>     >     >> >      >      >
>     >     >> >      >      > I'm Shane Peelar, a PhD Candidate at the University of
>     >     >> >     Windsor.
>     >     >> >      >      > I'm writing to you about prelink-cross, as part of the
>     >     >> >     Yocto project.
>     >     >> >      >      > Specifically, I'm looking at using it with executables
>     >     >> >     built using
>     >     >> >      >      > `-fno-plt` under GCC.
>     >     >> >      >      > I wasn't quite sure where to send this email to, so I
>     >     >> >     figured I'd
>     >     >> >      >     try
>     >     >> >      >      > here.  If there's a better place to send this,
>     please let
>     >     >> >     me know.
>     >     >> >      >      >
>     >     >> >      >      > Right now, prelink-cross seems to fail an assertion in
>     >     >> >      >     arch-x86_64.c,
>     >     >> >      >      > line 421, when
>     >     >> >      >      > using it with an executable built with `-fno-plt`:
>     >     >> >      >      >
>     >     >> >      >      > ...
>     >     >> >      >      > assert (i < dso->ehdr.e_shnum)
>     >     >> >      >      > ...
>     >     >> >      >      >
>     >     >> >      >      > This snippet seems to be looking for the ".plt"
>     section and,
>     >     >> >      >     since it
>     >     >> >      >      > can't find it, the assertion fires.  This makes sense
>     >     >> >     because in
>     >     >> >      >      > `-fno-plt` executables, the `.plt` section is missing
>     >     >> >     entirely.
>     >     >> >      >      > I'm not an expert on ELF stuff, although I am learning
>     >     >> >     quickly.  It
>     >     >> >      >      > looks like
>     >     >> >      >      > this code wants to write into GOT[1] the address of
>     ".plt"
>     >     >> >     + 0x16 --
>     >     >> >      >      > since ".plt" doesn't
>     >     >> >      >      > exist, does it make sense to just change this
>     assert to an if
>     >     >> >      >     statement
>     >     >> >      >      > like so:
>     >     >> >      >      >
>     >     >> >      >      > ...
>     >     >> >      >      >        if (i < dso->ehdr.e_shnum)
>     >     >> >      >      >        { ... }
>     >     >> >      >      > ...
>     >     >> >      >      >
>     >     >> >      >      > and skip over that part?  Or is this a real error
>     >     >> >     condition for
>     >     >> >      >      > prelink-cross and it really should not continue?  The
>     >     >> >     executable in
>     >     >> >      >      > question is also non-PIE, if that makes a difference.
>     >     >> >      >      >
>     >     >> >      >
>     >     >> >      >     what shared libs is this linking to ? are they also
>     built with
>     >     >> >      >     -fno-plt ?
>     >     >> >      >
>     >     >> >      >      > Thanks for your time,
>     >     >> >      >      > Shane
>     >     >> >      >      >
>     >     >> >      >
>     >     >> >
>     >
>     >
> 


