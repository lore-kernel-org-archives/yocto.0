Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D13DE00B23; Mon, 14 Oct 2019 08:16:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7614E0091A
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 08:16:27 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id u3so12069895lfl.10
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 08:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=t99fOJhsKeqx7uuNpRkcBjtJaogJgbxJnOXqJ4pykpQ=;
	b=vfJfv6QOcre3QgDMEestjV4+MggM0ue8HwpXMRk6KcUvA0TFvfpPKFD8o3X9eliMhD
	1EW8xG9PsZrzRJhdkHLNMkkRgtZFHVgK6XtsZa+6PqzvN0oihtd5c4Q1SW07CgHxzHEm
	/KIiQiKo9zKQZOXsW8OKB9hf3Lp/q5Q3gjJSa3e5s5kSKDPrMCNediWu6gkq7y0E4sR0
	oDbpCxY+Dmce6sYu8CIDOKBLhYmX0fNacZo845m++qOxkq8UwEnNqvssuJ9v9H8wDpjS
	1A9y6T4wgMBSmvPSPo6riUa0za7+NoV/fa61dZ0TFgRr9Whg2cEb0VkNA9Y/ww1FsQ6j
	aCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=t99fOJhsKeqx7uuNpRkcBjtJaogJgbxJnOXqJ4pykpQ=;
	b=K6R/ZAhAn74QNYga3cb9p36VHhbINLsXE42NDp/MmTFec6oHi3cK5iyVpv1gD2wBgT
	j0CRQMGy340L9SxN/OYRNgeuedu5TDR9EK15ZqTgalG43u2h2ri5h+phZDEXYkGQUIb2
	tHxhyiHlYiSWcelHnlFfjIHDi9f+IrT70tI+EY8Ns5shJwZVwZZE4+GvMgOJpqGhIzWk
	IrEEF/CZSYzqcy8h3hWVXH8qcAa31sENlSnKitsv4vbbp9WdMI8PUiPv0NZw7rxOnHkt
	jk6icLwVtDtfjKJwmzToP1R428tk1kh11NTiGdW8e7vxQucXf+aVO8f34dnGbn+j6Egn
	EEqA==
X-Gm-Message-State: APjAAAWarFS7WfaxNF55wRpySwW71k+XCFb508LKdkoaHE1/qkGVC7MV
	Aa26XORrACNNHwDisnusBYw9KipiOiY+O4zA9+XtRBrHfVU=
X-Google-Smtp-Source: APXvYqyRxVZIJ/fql9Y9HAMSUaNx4cjbhSrdNVtRF6x2c6KUNnwfc/NhjOM07iWEnBLq7wBudeW+JqXP4ZjPwXkqQaI=
X-Received: by 2002:a05:6512:25b:: with SMTP id
	b27mr10949320lfo.146.1571066185955; 
	Mon, 14 Oct 2019 08:16:25 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR01MB51679F138D5E050A2965463688950@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
	<VI1PR01MB51672CA4E502C3442E23AFD888970@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
	<CADkTA4NXzfpVUeuDTWNeZK8vNipN_=wdzyvUTsYE1+_mwcOB1g@mail.gmail.com>
	<VI1PR01MB5167EC235A7240C2A6A40E5688900@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB5167EC235A7240C2A6A40E5688900@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 14 Oct 2019 11:16:13 -0400
Message-ID: <CADkTA4ODyHt65g_83vo+aJe=THdzYYY-2EvA9jiP1vWF_rXCrw@mail.gmail.com>
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patches pulled from BSP definition file are not applied
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
X-List-Received-Date: Mon, 14 Oct 2019 15:16:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2019 at 5:50 AM Diego Santa Cruz
<Diego.SantaCruz@spinetix.com> wrote:
>
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> >
> > On Fri, Oct 11, 2019 at 1:11 PM Diego Santa Cruz
> > <Diego.SantaCruz@spinetix.com> wrote:
> > >
>
> > > Can anyone provide some advice as to what would be the recommended wa=
y
> > to apply kernel patches listed in a mybsp-patches.scc file for a BSP?
> > >
> >
> > The way to do this, is to put your BSP definition file on the SRC_URI, =
and if you
> > are including the standard/ktype or any of the other common kernel meta=
 data
> > files, you need to inhibit any included meta data from adding patches t=
o the
> > patch queue (since they are already applied to the kernel).
> >
> > As an example, here's a 'myqemux86-64.scc' file that I use as a test:
> >
> > ---------------
> > define KMACHINE myqemux86-64
> > define KARCH x86
> > define KTYPE standard
> >
> > include ktypes/standard.scc nopatch
> >
> > patch foo.patch
> > -------------
> >
> > When that is on the SRC_URI, it will be found as the BSP definition, an=
d you'll get
> > "foo.patch" in the patch queue .. but importantly *not* all of the patc=
hes that
> > make up the ktypes/standard.scc (and includes). If you aren't using lin=
ux-yocto,
> > or you aren't building on top of a kernel repository with integrated pa=
tches, then
> > don't add the 'nopatch', since you'd want any found patches to be appli=
ed at
> > build time.
>
> I'm using linux-intel.
>
> >
> > I thought we had documented the nopatch directive in the yocto mega man=
ual,
> > but I just checked the kernel meta data section and I don't see it. I'l=
l follow up
> > and try to figure out where that documentation went ... and get it adde=
d if it is
> > missing.
> >
>
> BTW, the existing documentation about nocfg under https://www.yoctoprojec=
t.org/docs/latest/mega-manual/mega-manual.html#kernel-types  is not very cl=
ear and from what I got from the spp tool's code the nocfg directive is alw=
ays inherited and the "inherit" keyword seems to be ignored. There is also =
the "force" option to kconf which is not documented.

I've made a note to revisit the docs and get anything I missed updated/adde=
d.

>
> > Out of curiosity, how were you getting your BSP definition to be locate=
d by the
> > do_metadata function (there are a few different ways) ?
> > (since you need at least one .scc file or kernel-meta structure on the =
SRC_URI to
> > get it added to the search path).  If you were adding it to the SRC_URI=
 directly
> > and the patches weren't being applied, then that's a bug.
> >
>
> My explanation was probably a bit short. I'm using recipe-space metadata =
as explained at https://www.yoctoproject.org/docs/latest/mega-manual/mega-m=
anual.html#recipe-space-metadata, although the explanation there is a bit s=
hort and I could not make it work until I saw the working example in the me=
ta-xilinx layer if I remember well.
>
> I am using linux-intel (from the meta-intel layer), I have set MACHINE=3D=
"fukiran" (KMACHINE gets the same value) and I have this in my bbappend.
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI_append =3D " file://spx-intel-kmeta;type=3Dkmeta;destsuffix=3Dspx=
-intel-kmeta"
>

That's the best way to maintain a set of fragments and related
patches, so that's good!

> The recipe-space metadata tree is as follows
>
> files/
> `-- spx-intel-kmeta
>     |-- backports
>     |   `-- drivers
>     |       |-- 0001-tty-Add-NULL-TTY-driver.patch
>     |       |-- null-tty.cfg
>     |       `-- null-tty.scc
>     |-- bsp
>     |   `-- spx-intel
>     |       |-- 0001-platform-x86-spx-fukiran-info-new-driver-for-Spineti=
.patch
>     |       |-- fukiran.cfg
>     |       |-- fukiran-patches.scc
>     |       |-- fukiran.scc
>     |       `-- fukiran-standard.scc
>     |-- cfg
>     |   `-- fs
>     |       |-- squashfs.cfg
>     |       `-- squashfs.scc
>     `-- features
>         |-- media
>         |   |-- media-cec.cfg
>         |   `-- media-cec.scc
>         `-- wifi
>             |-- atheros-10k-pci.cfg
>             `-- atheros-10k-pci.scc
>
> The BSP definition file fukiran-standard.scc with the content below is th=
us located automatically (I followed the best I can the instructions in the=
 Yocto docs to write the BSP definition file, although I did not quite get =
what is the "branch" directive for, I guess it is used when composing a ker=
nel repo tree).

You are correct. *if* it is in a .scc that is being applied without
patching inhibited the branch will be created. They are mainly used
when creating a tree from scratch, but can also be used when applying
a fragment from the SRC_URI (but since those patches are applied each
build, you don't really have to worry about co-existence of the
patches, so having a branch to contain them doesn't make a lot of
sense .. but it would delimit them for debugging, etc).

>
> # fukiran-standard.scc
> #
> # Standard ktype for Fukiran (Apollo Lake SoC).
> #
>
> define KMACHINE fukiran
> define KARCH x86_64
> define KTYPE standard
>
> include ktypes/standard/standard.scc
> branch fukiran
>
> include bsp/intel-common/intel-common-drivers.scc
> include bsp/intel-common/intel-corei7-64.scc
> include fukiran.scc
>
> And fukiran.scc is
>
> kconf hardware fukiran.cfg
>
> patch 0001-platform-x86-spx-fukiran-info-new-driver-for-Spineti.patch
>
> include features/media/media-cec.scc
>
> > A short description of what is happening behind the scenes. The kernel =
meta-
> > data is used in two ways: to construct a new kernel repo from scratch (=
i.e. when
> > I start a new reference kernel version, or when building on top of a no=
n
> > integrated repository) and to construct a configuration for the kernel.=
 Patches
> > and config data are kept together, so everything you need for a feature=
 is in one
> > place. When you are building, the meta data gathering routine is runnin=
g in that
> > 2nd mode. Hence why the BSP definition is not used for patching, but is=
 only
> > used to generate the configuration queue. Only elements on the SRC_URI =
are
> > always added to the patch queue .. since those patches are not already =
applied
> > to the base repo (and if they are, you shouldn't have them on the SRC_U=
RI and
> > you'll get a patch error) .. There's even a longer winded explanation a=
bout how
> > the original build processing attempted to detected which patches weren=
't
> > already applied ... and was horribly complex and fragile, hence why the
> > simpler/split processing I described is used.
> >
>
> I see, that was the key bit of information I was lacking: that the patche=
s are already applied in the linux-yocto repo, so they need to be skipped w=
hen building.

I'll make sure a variant of that gets into the docs. I know that when
I'm working on things like this, I prefer the extra information so I
can figure things out myself, versus being only handed a set of
cut&paste instructions.

>
> As in my case the BSP specific patches are not applied to the kernel repo=
 then I should add the BSP definition file to SRC_URI. I have thus changed =
my bbappend to have
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI_append =3D " file://spx-intel-kmeta;type=3Dkmeta;destsuffix=3Dspx=
-intel-kmeta"
> SRC_URI_append_fukiran =3D " file://spx-intel-kmeta/bsp/spx-intel/fukiran=
-${LINUX_KERNEL_TYPE}.scc"
>
> And also tweaked fukiran-standard.scc to have this line
>
> include ktypes/standard/standard.scc nopatch
>
> > Let me know if that tweak doesn't work (and if you can, supply your BSP
> > definition / layer) .. since there may be a bug (see my comment on what=
 you had
> > on your SRC_URI above and how your bsp definition was being located).
> >
>
> With the above tweaks it does work as expected and I understand why :-) T=
here's no bug I can see, just the documentation which is a bit lacking or h=
ard to follow.
>
> BTW, the linux-intel kernel repo does not have the patches from ktypes/st=
andard/standard.scc applied and they are not being applied during build eit=
her (I do not see any scc file with patches being added to SRC_URI or KERNE=
L_FEATURES in the linux-intel recipe and in my test none are added to the p=
atch queue), so it appears that the meta-intel layer has decided to build w=
ithout those patches.

Correct. We are sharing the fragments (a good thing), but not forcing
everyone to necessarily follow the cadence of versions, updates or
even take the patches that I'm contributed (see the xlnx-soc patches I
carry). Hence why you see the common include, but not the patches.
Over time, we've been splitting out more patches from the config data
(see the foo-enable.scc style fragments) so the need for 'nopatch'
will eventually go away.

>
> Many thanks for the long explanation which made things clear!
>

Glad to hear it is working!

Bruce

> Best,
>
> Diego
>
> > Cheers,
> >
> > Bruce
> >
> > >
> > >
> > > Adding the =E2=80=9Cmybsp-patches.scc=E2=80=9D file to KERNEL_FEATURE=
S works for me, but
> > seems a bit awkward given that there is a BSP definition scc file. It f=
eels more
> > natural to include the mybsp-patches.scc from the BSP definition scc fi=
le, but
> > that does not work for me, the patches are ignored.
> > >
> > >
> > >
> > > Thanks,
> > >
> > >
> > >
> > > Diego
> > >
> > > --
> > > Diego Santa Cruz, PhD
> > > Technology Architect
> > > T +41 21 341 15 50
> > > diego.santacruz@spinetix.com
> > > spinetix.com
> > >
> > >
> > >
> > > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> > > On Behalf Of Diego Santa Cruz
> > > Sent: 09 October 2019 23:58
> > > To: yocto@yoctoproject.org
> > > Subject: [yocto] Kernel patches pulled from BSP definition file are
> > > not applied
> > >
> > >
> > >
> > > Hello there,
> > >
> > >
> > >
> > > I am trying to add a few BSP specific kernel patches for my BSP and I=
 wanted
> > to pull them from the BSP definition scc file. However, I cannot get th=
ose
> > patches applied (I am using thud). After looking around the kernel-yoct=
o.bbclass
> > it seems that patches which get pulled from the BSP definition file are=
 ignored.
> > What is the rationale behind that behavior? How should I go about it?
> > >
> > >
> > >
> > > To be more specific I have the following structure within my (recipe-=
space)
> > kernel metadata.
> > >
> > >
> > >
> > > bsp
> > >
> > > `-- mybsp
> > >
> > >     |-- mypatch.patch
> > >
> > >     |-- mybsp.cfg
> > >
> > >     |-- msbsp.scc
> > >
> > >     `-- mybsp-standard.scc
> > >
> > >
> > >
> > > The mybsp-standard.scc is the BSP definition file, which includes
> > > mybsp.scc (among other things). The mybsp.scc file looks as follows
> > >
> > >
> > >
> > > kconf hardware mybsp.cfg
> > >
> > > patch mypatch.patch
> > >
> > >
> > >
> > > The mypatch.patch file does not get applied when building the kernel,
> > > I checked and it is not added to the patch.queue file. But if I add
> > > the following to the recipe
> > >
> > >
> > >
> > > KERNEL_FEATURES +=3D " bsp/mybsp/mybsp.scc"
> > >
> > >
> > >
> > > Then the patch is added to patch.queue and is applied.
> > >
> > >
> > >
> > > Looking into do_kernel_metadata in kernel-yocto.bbclass it parses the=
 scc files
> > in two steps, run1 and run2.
> > >
> > >
> > >
> > > The run1 step uses elements=3D"`echo -n ${bsp_definition} ${sccs} ${p=
atches}
> > ${KERNEL_FEATURES}`" and generates cfg, merge and meta, so that picks u=
p the
> > mybsp.scc file contents, but this step does not generate the patch queu=
e.
> > >
> > >
> > >
> > > The run2 step uses elements=3D"`echo -n ${sccs} ${patches}
> > ${KERNEL_FEATURES}`" and generates the patch queue, but this only inclu=
des
> > the scc files in SRC_URI and KERNEL_FEATURES, but specifically leaves o=
ut the
> > BSP definition file.
> > >
> > >
> > >
> > > Adding the mybsp.scc file to KERNEL_FEATURES to get this to work seem=
s a bit
> > odd. What is the recommended way of applying BSP specific kernel patche=
s?
> > >
> > >
> > >
> > > Thanks,
> > >
> > >
> > >
> > > Diego
> > >
> > > --
> > > Diego Santa Cruz, PhD
> > > Technology Architect
> > > spinetix.com
> > >
> > >
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await t=
hee at
> > its end
> > - "Use the force Harry" - Gandalf, Star Trek II
>
> --
> Diego Santa Cruz, PhD
> Technology Architect
> spinetix.com
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

