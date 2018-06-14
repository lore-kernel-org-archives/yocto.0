Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE25DE0145D; Thu, 14 Jun 2018 07:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D462AE007CE
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 07:28:37 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id 74-v6so4256792uav.1
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 07:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xAryLkQ2Q+LKgDbzxaDvtBZa2TqNvQIKt09D4tNoFy8=;
	b=pZhAGNvFswale1VOmrsBEB+Xq0Iia0/+AFdFspy/GHrlX9zyNn8HO4pk6vIgurwBod
	myiq7AFljgDIIl1mx1/xrrBf8xQ680iB2T7lD39KdF7auCoyHd4TInqR4NiWP3S7Hq8j
	OXAdeqTqz81DEbhdWg5RDAymSIL5Wa7z0HJzdWUtZHtWRBjUmbWQa8qu7bCx1rKO/3om
	nJFDr4fPlySLZ7jR2Skv1M3dO1CdbDGQMhPIH8UPg0eUWVerDY38GKIeL4QKnEoXaqR+
	k/OLHtQSjh1tAUFMYc2hih6h5LuYc+A2CSUNh+xghuISs28GfWQ8P6HAN6neF9wRtcnh
	on7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xAryLkQ2Q+LKgDbzxaDvtBZa2TqNvQIKt09D4tNoFy8=;
	b=kM6rhOXlAW7EoNGexx+fl7Zd1vALQT4CSdIbG8sZFdq/CuMnWyC+06IOvfIwkIXl79
	sdgOvYR1W9Cv0QNOCqIvqJHPbD46QmR2w6CCx7MiOMWAuYVCWO6DcQa5nnqFyelVEqbm
	2otb54m7pjGNfUukZuJPAQZW8ib6QVijplzugqo2O/IQ7GfDckyxSCH6+AFljtkOR7ZB
	UqkDCZzdto0e9O3Pyv4lxnIkdPPy+CuVHEi/m2oFlzw3UGKxqQUveWZOFp63tgGhwGXA
	Bg7mriAPx6wMWCnBt0ByKZ2e7bWcw5N0wQXd006uS5EEmPd/gVjZsPCrGH5sAKuLEDmk
	CZ4g==
X-Gm-Message-State: APt69E367GDxVQ8PKQybuEnhqsIf3hYJ9W01PsKU/9s9z1mxOYk7iAda
	OITF6DHdv6CnQuxqghlKOwVGKMtHu78V04jALj4=
X-Google-Smtp-Source: ADUXVKL25S4/TVkkOz26gfvKNJaJQfsCC5AUfua/thGx7CTFYfP68RQPPJvLZcAQEMcBEJ/mo9oNrQ0sqkkVSe5NiYM=
X-Received: by 2002:ab0:5851:: with SMTP id
	p17-v6mr1844354uac.164.1528986516801; 
	Thu, 14 Jun 2018 07:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
	<536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
	<a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
	<CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
	<67f8156f-28dd-d3b8-f2ac-c03bcd587d50@here.com>
In-Reply-To: <67f8156f-28dd-d3b8-f2ac-c03bcd587d50@here.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Jun 2018 07:28:07 -0700
Message-ID: <CAMKF1sptHV5Pc8WZ+zw=7VOUn=kMiekcV-7fFtMBynJgpvmy9Q@mail.gmail.com>
To: Patrick Vacek <patrick.vacek@here.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot not being populated
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
X-List-Received-Date: Thu, 14 Jun 2018 14:28:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 14, 2018 at 5:45 AM Patrick Vacek <patrick.vacek@here.com> wrote:
>
> On 12.06.2018 00:48, Andre McCurdy wrote:
> > On Fri, Jun 8, 2018 at 2:42 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
> >> On 08.06.2018 10:26, Khem Raj wrote:
> >>> On 6/8/18 12:27 AM, Patrick Vacek wrote:
> >>>> On 07.06.2018 19:06, Khem Raj wrote:
> >>>>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek
> >>>>> <patrick.vacek@here.com> wrote:
> >>>>>> I have a recipe (aktualizr-hsm-prov) that depends on another
> >>>>>> (aktualizr)
> >>>>>> to provide an executable and a config file. The former recipe includes
> >>>>>> `DEPENDS = "aktualizr-native"`, and my do_install() for
> >>>>>> aktualizr-hsm-prov has a line something like this:
> >>>>>>
> >>>>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
> >>>>>>
> >>>>>> The binary executable (aktualizr) runs, which tells me that the recipe
> >>>>>> can find that. (Although to be honest, I'm not sure which version
> >>>>>> it is
> >>>>>> running.) However, it doesn't find the config file, and sure enough,
> >>>>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I
> >>>>>> expect. I
> >>>>>> can see that aktualizr-native is populating its sysroot-destdir,
> >>>>>> but it
> >>>>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
> >>>>>>
> >>>>>> I see this problem in sumo and master, although previously this logic
> >>>>>> has worked just fine in morty/pyro/rocko.
> >>>>>>
> >>>>>> What am I doing wrong? What changed between rocko and sumo?
> >>> Can you check location of sota.conf in the build tree for
> >>> aktualizr-native in directory called package/
> >> Oddly, I do not see a package subdirectory inside the aktualizr-native
> >> directory in the build tree. I do see it inside the aktualizr directory,
> >> though, and it contains everything that I would expect. Is there some
> >> sort of configuration of the packaging system for a native recipe that I
> >> haven't done correctly?
> > No, what you see is expected - there's no packaging for -native recipes.
> >
> > Back to the original problem, I think you should consider the
> > aktualizr executable and the sota.conf file as two separate things.
> > The host executable should always be provided by aktualizr-native.
> > It's less clear what should provide sota.conf - it depends whether
> > it's just required for building other recipes (ie like a header file)
> > or whether it needs to be present in the final rootfs? If it's only
> > required for building other packages, then it should be in the -dev
> > package for aktualizr. If it needs to be present in the final rootfs
> > then it should be in the default package for aktualizr. Either way,
> > recipes which need to find sota.conf in sysroot would then depend on
> > "aktualizr". Therefore recipes which need both the host executable and
> > sota.conf in sysroot should depend on both aktualizr and
> > aktualizr-native.
> Actually, after some further research, it appears that my problem is not
> entirely resolved. The explanation of packaging and native vs. target
> dependencies all makes sense to me and usually works. However, this is
> not the case for one specific condition which happens to be part of my
> test suite.
>
> One of my tests is to change the MACHINE in my local.conf, add some
> additional layers, change some other variables, and then bitbake. Then I
> undo that and bitbake again. For the most part, that works fine. In
> rocko and before, it worked consistently. But it seems like on sumo and
> master, when I do the test by changing the MACHINE and the layers, it
> somehow clears out everything in my recipe's work directory, despite
> that that recipe is not used by that test. In fact, it removes every
> single file in tmp/work/core2-64-poky-linux (but leaves most of the
> directories). When I switch back to how it was before and bitbake, most
> of the files get recreated or re-copied, but not all. I have to
> explicitly run `bitbake -c cleanall aktualizr aktualizr-hsm-prov` to get
> things to work again. (Perhaps cleanall isn't necessary, but some form
> of cleaning is, and it has to be both recipes.)
>
> Can someone help explain why I am seeing this behavior? I don't
> understand why the files get erased, why they don't get repopulated, and
> why this was different back in rocko.
>

when machine and other variables are changed then its mostly
resulting in hash changes which is enforcing it to rebuild and when
rebuild happens it will clear the recipe specific build area for that
given recipe and repopulate it as it has to rebuild/repackage it since
this time it will get most of build artifacts from shared state as it
has been bullt with same hash once before. so it will most probably be
re-using that.

If doing clean build is helping then this might mean that they
are not staging all the files that you depend on. When you do
clean build they get staged into build area during compile phase and
it silently uses it. So ensure that all files you need are accounted
for in do_install

> Thanks!
> Patrick
>

