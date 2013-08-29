Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 082D0E015A9
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 03:24:51 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n10so225578oag.27
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 03:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=wGylF21IMYHb855qFSl8wuAU1wO0oehQ28lQ7bcJBxY=;
	b=gk0/5uKuXDEoT4qJHdKjwR7sSRNhyaPt2/MuPJ/8mOEv1YERFrGmKSYwjlaNEvTF0w
	5wb+x7SpF/4RSEjWgsIxC9ETHqswUKtJpOs76quKwmXEiL5zbR883j6PUaoYKZltoyp4
	D20Un98pVLoCpat6FpDaJjXUoWfzcrlIlci5dLqWmhPsUnbEt6RPJMtVuhjg44sb/MRJ
	SVqxwnds0drR+W6qU8TV8wrP9VyZC1AlX7VKvxSmxfTht0SHk8unO9IDhkn47gg4RTdY
	aNBcC90GI55qgPPfD0ujfxcW68qOgppCRo44Um8oqzT+hUnIroCzCLjjg+rxoj5GT39S
	uVPw==
MIME-Version: 1.0
X-Received: by 10.182.72.137 with SMTP id d9mr1805601obv.99.1377771890748;
	Thu, 29 Aug 2013 03:24:50 -0700 (PDT)
Received: by 10.182.109.36 with HTTP; Thu, 29 Aug 2013 03:24:50 -0700 (PDT)
In-Reply-To: <1530065.yztlOAqnHJ@helios>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<68887874.AzlMtbdLCe@helios> <521E4DFC.2040704@gmail.com>
	<1530065.yztlOAqnHJ@helios>
Date: Thu, 29 Aug 2013 12:24:50 +0200
Message-ID: <CAFyqS9pB69-qb8XGoYW2UHUvzD9XWKMh3oMKM15igCgN-SFHUA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Thu, 29 Aug 2013 10:24:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Thu, Aug 29, 2013 at 10:58 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Hans,
>
> On Wednesday 28 August 2013 21:22:36 Hans Beckerus wrote:
>> On 2013-08-28 6:06, Paul Eggleton wrote:
>> > On Wednesday 28 August 2013 17:08:41 Hans Beck=E9rus wrote:
>> >> Hi, I am a little bit confused about how to handle these two and what
>> >> they are supposed to solve. I have so far never used RDEPENDS but onl=
y
>> >> DEPENDS.
>> >
>> > DEPENDS means a build-time dependency i.e. between recipes, RDEPENDS m=
eans
>> > a runtime dependency i.e. between packages. It is worth noting though
>> > that an explicitly stated RDEPENDS will cause bitbake to actually buil=
d
>> > the recipe providing the package named in the RDEPENDS value, just at =
a
>> > different time. To explain exactly what each of these do:
>> >
>> > * DEPENDS =3D "b" in recipe "a" will translate to a's do_configure tas=
k
>> > depending on recipe b's do_populate_sysroot task, so that anything rec=
ipe
>> > b puts into the sysroot is available for when a configures itself.
>> >
>> > * RDEPENDS_${PN} =3D "b" in recipe "a" will translate to a's do_build =
task
>> > depending on recipe b's do_package_write task, so that the package fil=
e b
>> > is available when the output for a has been completely built (of cours=
e
>> > assuming that recipe b produces a package called "b", which it will wi=
th
>> > the default value of PACKAGES). More importantly it will also ensure t=
hat
>> > package "a" is marked as depending on "b" in a manner understood by th=
e
>> > package manager being used e.g. rpm / opkg / dpkg.
>>
>> Thanks a lot! This was definitely more than I got from the description
>> of DEPENDS and RDEPENDS in the manual.
>> But I probably just read the wrong one ;)
>
> We probably should explain things to that level, I'm fairly sure we don't=
 at
> the moment. I'll talk to Scott to see if we can work something like the a=
bove
> into the manual.
>
Great! Your input has been really helpful.

>> > By default, if recipe "foo" changes and it is mentioned in the "someap=
p"
>> > recipe's DEPENDS, then someapp's do_configure and all tasks that depen=
d
>> > upon it will be re-executed next time it is called for i.e. you
>> > explicitly build someapp or build an image that contains it or some ot=
her
>> > recipe that depends upon it. The fact that you are getting the behavio=
ur
>> > described suggests that this is either not happening, or more likely i=
t
>> > is not having the desired effect; e.g. if internally someapp's build
>> > system doesn't drop or invalidate all of its  build output when it is
>> > reconfigured then you will get this kind of behaviour. Setting up B (t=
he
>> > directory in which a recipe's source code is built) separate to S (the
>> > directory in which the recipe's source code has been unpacked to) can
>> > help with this since if they are separate, our build system will know =
it
>> > can delete B before re-executing do_compile after do_configure and you=
'll
>> > never have stale build output. Being able to set this up however is
>> > highly dependent on the software being built by the individual recipe;
>> > some lend themselves to this and others don't.
>>
>> Well, I have been struggling before with packages not properly
>> supporting different build and source folders so I can definitely relate
>> to what you are saying. But, does that mean I actually *have* to do it
>> this way for build dependencies to work correctly?
>
> I wouldn't have thought so, to be honest I'm just positing one situation =
where
> I can see how this kind of thing might be able to happen. Either do_confi=
gure,
> do_compile etc. are not re-executing (and by default they should - *if* t=
he
> build system has a means to know about the change you have made), or they=
 are
> re-executing but the re-execution didn't materially change the output,
> certainly not to the point where it linked against the new library versio=
n. It
> would be pretty easy to figure out which of the two happened by looking a=
t task
> logs - either you'd see no extra task logs or you'd see in the latest
> do_compile/do_configure log that nothing much was being done.
>
>> In my case we are talking two simple autotools enabled packages and I
>> (naively?) assumed this was not something I had to take care of myself.
>
> In the ideal case it should not be.
>
>> What strikes me is that you say ""if recipe "foo" changes"", which is
>> actually not the case here! What is changed is the actual source code on=
ly.
>> Is that what is going wrong here? If I change my "foo" recipe version, w=
ould
>> that be different than to simply fetch/unpack the "foo" package source c=
ode?
>> Is "someapp" going to become purged differently in such a  scenario?
>
> OK, so just to make sure I understand what changes you are making - are y=
ou
> changing configuration/recipes/files pointed to in SRC_URI at all, or jus=
t
> modifying the unpacked source in the recipe's work directory?
>
It is the source code in the source repo that has changed. I.e. before
the change the repo for 'foo' contained version 1.0.0 of the library.
After the change the library revision was stepped to 3.0.0 due to it
not being compatible anymore and pushed. Common libtool version
handling that is.

>> What is still somewhat unclear to me is the difference between DEPENDS
>> and RDEPENDS in a simple case as this. A simple application needing a
>> dynamic library is obviously a subject for DEPENDS but to me that also
>> sounds like a typical RDEPENDS?
>>
>> However, when I build an image and include 'someapp', will 'libfoo.so.x'
>> automatically be installed or is that what I need to tell it to do using
>> RDEPENDS?
>
> For dynamically linked libraries there is one additional aspect that I di=
dn't
> mention - we have some code in meta/classes/package.bbclass called during
> do_package that looks at the shared libraries that all binaries in a pack=
age
> link to, and automatically adds RDEPENDS for these so that the appropriat=
e
> libraries always get installed. The subtlety though is that this happens =
too
> late for the build system to be able to ensure that the corresponding bui=
ld-
> time requirements of the recipe are always satisfied; thus, it is possibl=
e if
> one of the libraries is rebuilding due to some other change and its recip=
e is
> not in your application recipe's DEPENDS, problems can occur. Bottom line=
 is,
> if your application needs to link to a library, the recipe that builds th=
at
> library must be in your application recipe's DEPENDS. Because of the auto=
matic
> RDEPENDS addition at packaging time you don't need to also add the librar=
y to
> RDEPENDS yourself though; the only time you need to add something to RDEP=
ENDS
> is when you know that a runtime dependency exists that the build system c=
an't
> detect - examples would be packages providing shell commands that your
> application relies upon, perl, python and other such module dependencies,=
 etc.
>
I see. The picture is getting clearer ;)
As stated before, of course I could simply do a complete clean and get
away with it. But in this case we are dealing with several developers
and it would simplify things a lot if changes like this got populated
to everyone automagically. At least now I know how it is supposed to
work, which is a giant leap forward :)

Thanks again!
Hans

> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

