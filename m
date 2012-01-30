Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DB7E0127D
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2012 18:37:58 -0800 (PST)
Received: by pbcc11 with SMTP id c11so4217737pbc.35
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2012 18:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=dGOWjU+WtYNvSwbbJD71d5KSKIZgTi9G2z2NC/UTAU4=;
	b=TYo+DogchQ15L7JMXx8+IjF19WCINC0LMf8RFMwLNPcUJKdSJUQR5zXl+ClIgah5yO
	AlpuJCraCSSsScCod+rMU5hthS7MeUC7viAlQjdDXpyEdrw0OgmFrxQFJGFJYxEESDwr
	FEjIQmTqU88X3j0wFBUj1MZwUqWnZshHyNdcE=
MIME-Version: 1.0
Received: by 10.68.224.105 with SMTP id rb9mr18946420pbc.75.1327891077025;
	Sun, 29 Jan 2012 18:37:57 -0800 (PST)
Received: by 10.143.7.11 with HTTP; Sun, 29 Jan 2012 18:37:56 -0800 (PST)
In-Reply-To: <AE0D9837-DF31-43B5-9904-3DB7F5D84871@gmail.com>
References: <1AECC3C0-6BFC-4584-B201-30122DB2229D@gmail.com>
	<CADkTA4Mc7cLnF3g7G1DyHqBfuveVPpaybs=2aTRB61TSRDeomQ@mail.gmail.com>
	<AE0D9837-DF31-43B5-9904-3DB7F5D84871@gmail.com>
Date: Sun, 29 Jan 2012 21:37:56 -0500
Message-ID: <CADkTA4MDzz2w-hA72FKoP3EfZJ5NjtPTR-hruwmOCWRRj6ZnbA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Understanding the git commits for Yocto and meta
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jan 2012 02:37:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 29, 2012 at 7:00 AM, James Abernathy <jfabernathy@gmail.com> wr=
ote:
>
> On Jan 28, 2012, at 6:25 PM, Bruce Ashfield wrote:
>
> On Sat, Jan 28, 2012 at 9:51 AM, James Abernathy <jfabernathy@gmail.com>
> wrote:
>
> While I've read enough to think I understand git, I get confused when it'=
s
>
> applied to real situations like Yocto. =A0If I look at the Yocto Developm=
ent
>
> Manual, Appendix A, A.5.2.4 Changing Recipes-kernel,=A0It brings up some
>
> questions.
>
>
> 1. The way I see it, when you guys commit something to the linux yocto
>
> master or meta there is a commit string associated with that commit. =A0N=
ot to
>
> any certain branch of the git repository, right?
>
>
> I'm not following your terminology. There's a git has that is used to
> update the SRCREVs
> for bitbake, but that hash is always on the meta branch. Bitbake likes
> git hashes, but the
> kernel build infrastructure talks branches .. since humans can
> remember branches, but
> not git hashes.
>
>
> I'm sure I'm not using the terminology right because, I clearly don't
> understand the whole concept yet. =A0That light bulb has not gone on yet.=
 :-)

The quoting is all messed up in my copy of the email, so apologies if I mis=
s
something on my reply!

>
> Basically, I see from a user perspective that you start the process with
> creating a clone of the Yocto Project files
> repository,=A0git://git.yoctoproject.org/poky, and you also create a clon=
e of
> the meta-intel BSP repository if you are working with the Intel board BSP=
s.
> =A0I have on occasion also cloned the Yocto Linux Kernel and poky extra s=
o I
> could do the Appendix B example. =A0In the examples and my testing, I've
> always checked out the edison branch of both the yocto project files in t=
he
> poky directory and the edison branch in the meta-intel directory. =A0So i=
n my
> primitive =A0thinking, my branch is edison. =A0By examining Appendix B, I=
 see
> where they checkout a branch of the Yocto Linux kernel called,
> common-pc-base, using the command,=A0git checkout -b common-pc-base
> origin/yocto/standard/common-pc/base.=A0 But once changes are made you co=
mmit
> those changes to the local bare clone that will be used in the build
> process. =A0So I think I see that to get the right versions of the Yocto =
Linux
> Kernel, I need to tell bitbake to use a particular branch called
> yocto/standard/common-pc/base. =A0I think the KMACHINE parameter does thi=
s in

It's less "version" and more "right branch for my machine", using the
repository that
was current / specified in the yocto release you are working from.
i.e. edison had
2.6.37 and 3.0 kernels, and the meta/recipes-kernel/linux/linux-yocto*
recipes point
to the right repositories that are known to work for that release, and
the recipes specify
the SRCREVs for the machine and meta branches.

> the Appendix B example. =A0However, in the App. B example, there is no ta=
lk
> about SRCREV anywhere.

That's all correct. The appendix examples typically have a setup that
uses AUTOREV
during local kernel development. This means that you don't need to do
SRCREV updates
to see you changes. If you weren't working with AUTOREV, you would need to =
have
SRCREV updates in a bbappend in the layer of your choice.

> Relating Appendix A recipes-kernel SRCREV to Appendix B example is a prob=
lem
> for me.
>
>
>
> 2. =A0So if I'm building an image for atom-pc using Edison branch, the fi=
rst
>
> SRCREV I'm interested in is=A0yocto/standard/common-pc/atom-pc branch. =
=A0But
>
> the commits I see at
>
>
> =A0http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=3D=
yocto/standard/common-pc/atom-pc
>
>
> are commits not associated with Edison, but Master, right?

They are associated with the 3.0  kernel development. master points at
certain SRCREVs, older
releases have SRCREVs that mark where we tested them. Also note that
as development marches
on for a given kernel version it is done in such a way that the older
release continues to work, with
the same machine branches, just building different points in those
branches (the SRCREVs). If we
add functionality to a kernel that isn't appropriate for a point
release (i.e. 1.1.1) then a maintenance
copy of the repository is created, and the point release branch
recipes are updated to point to that
repository.

>
>
> They are all just commits on the board branch. edison has a snapshot
> in time the SRCREV
> that is used. Master marches on, but the commits that were current in
> the timeframe of edison,
> will always be there.

Exactly.

>
>
> So here is a terminology problem in my mind.
> =A0yocto/standard/common-pc/atom-pc seems to be a branch in the meta-inte=
l
> repository. =A0edison seems to be both a snapshot and branch of poky
> repository.???

Richard probably has the right terminology here, but edison is a yocto
release branch,
which happens in the poky.git repository. The kernel branches are just
that, kernel
branches, and the repositories are associated with yocto releases.

>
> For example, at , http://git.yoctoproject.org/cgit/cgit.cgi/, I see Poky
> listed. clicking on Poky, http://git.yoctoproject.org/cgit/cgit.cgi/poky/=
, I
> go to a summary page that shows edison as a branch of poky. If I look at =
the
> log and commit tabs on that page I see that Scott Rifenbark had a patch t=
hat
> got committed most recently in November:
>
> author Scott Rifenbark <scott.m.rifenbark@intel.com>2011-11-23 18:58:23
> (GMT)
> committer Richard Purdie <richard.purdie@linuxfoundation.org>2011-11-25
> 15:26:48 (GMT)
> commit adcf8bf7b52460b94998438e8c2bf854cdec0a80 (patch) (side-by-side dif=
f)
> tree 02cb7ae971dce7e464b31cdd88d47bc710f0c1e4
> parent fda17235fdba53583b5a0ed8187021cd5c093a09 (diff)
> download poky-edison.zip
> poky-edison.tar.gz
> poky-edison.tar.bz2
>
> So that tells me that If I sticking to edison for everything related to
> poky, then I need to use this commit string to get the latest Edison Poky
> patches, Am I right???
> Where do I put that or is the fact that I checked out edison branch and d=
id
> a recent pull make me current with respect to poky???

It's this. The fact that you checked out edison, gets you what you want. Th=
e
HEAD of the edison branch is that commit, and that's what you'll get and bu=
ild.

>
> So basically, in Appendix A Recipes-kernel section. =A0what exactly are t=
he
> SRCREV statements telling Bitbake and why are there 2 of them.

SRCREVs are what recipes that track upstream projects via their SCM use to
specify exactly what to build. poky itself isn't tracked by SRCREVs,
since it isn't
a recipe .. it's the project.

The two kernel SRCREVS are what we were discussion, the two of them describ=
e
the configuration for a board (the meta branch) and the code/content (the b=
oard
branch). We use them to make sure you get exactly what you expect from
the kernel
repository when you build.

>
> Thanks,
>
>
>
> 3. =A0How do I find the commit string for a particular branch, like Ediso=
n,
>
> for something like yocto/standard/common-pc/atom-pc?
>
>
> I'm not following the terminology again. Maybe if you describe what
> you are trying to
> achieve ? git will tell you what branch has any commit .. just use git
> branch --contains <hash>
>
>
> 4. =A0To me, branches are things like Edison, Bernard, etc. =A0But on the=
 page:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/refs/heads?h=3D=
yocto/standard/common-pc/atom-pc
>
>
> yocto/standard/common-pc/atom-pc, master, and meta are all listed as
>
> branches. =A0What is the difference??
>
>
> edison and bernard are yocto branches. The kernel is a separate
> repository and can actually be
> used standalone (which I do). It has branches for it's meta data and
> to isolate board changes.
> A particular kernel repository is referenced by the yocto kernel
> recipes. They are what follow the
> yocto branches .. not the kernel itself.
>
>
> I think I see part of my problem. =A0(Other than too much bourbon over th=
e
> last 40 years)
> The Yocto project (poky) repository has edison, bernard, master as branch=
es
> of that repository. I need to keep that thinking separate from the
> meta-intel repository where edison and bernard are also branches.
>
> Plus, the yocto linux kernel is yet another git repository which has
> branches like meta, crownbay, common-pc, etc?? =A0did I get that right?? =
=A0is
> this the only part that needs a SRCREV??

Correct. Separate repositories, that can have separate branching
strategies and if it is
part of a recipe (the kernel), the right part of it to build is
tracked via SRCREVs.

>
>
>
>
> 5. =A0The second SRCREV seems to be associated with meta. =A0How does tha=
t
>
> relate to my whole confusion on branches.
>
>
> A board build is composed of two things the meta data (configuration,
> patches) that
> describe the BSP and the actual code changes (the board branch).
>
>
> So in the Appendix A example, which SRCREV is tied to what? =A0Below is t=
he
> 1st SRCREV for the board branch(actual code changes)? and the Second one =
the
> Meta data?:

Correct. I'll ramble below.

>
>  COMPATIBLE_MACHINE_mymachine =3D "mymachine"
>      KMACHINE_mymachine  =3D "yocto/standard/common-pc/atom-pc"
>      KERNEL_FEATURES_append_mymachine +=3D " cfg/smp.scc"
>
>      SRCREV_machine_pn-linux-yocto_mymachine ?=3D \
>         "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"

The ''machine' branch is the yocto/standard/<BSP> branch. As I hinted
at, a person could work
completely via SRCREVs, but the yocto kernel build infrastructure
likes to talk branches and is
used in multiple build systems .. that and humans can remember branch
names better than
git hashes. So both are specified, the branches and the SRCREV.
bitbake uses the SRCREV to
make sure that the upstream SCM repository is properly fetched.

>      SRCREV_meta_pn-linux-yocto_mymachine ?=3D \
>         "d05450e4aef02c1b7137398ab3a9f8f96da74f52"

This is the meta branch, which in current repositories is literally
called "meta".

>
>
>
>
>
>
> 6. =A0To me, if you are working with Edison and a particular BSP, then th=
ese 2
>
> commit strings should be constant forever, right?
>
>
> Yes, for the official / known BSP. If you do local work, you can of
> course have your
> own tree and advance both.
>
> Cheers,
>
> Bruce
>
>
> Thanks for taking the time to help me with this confusion.

I think we are getting there ! :)

Bruce

>
> Jim A
>
>
>
>
> _______________________________________________
>
> yocto mailing list
>
> yocto@yoctoproject.org
>
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

