Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8B94E00D89; Wed,  2 Oct 2019 10:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80D29E006D2
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 10:55:31 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id o18so20644340wrv.13
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2019 10:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=C+vPO5M/VRT47WnNtooDUdtfGxERoyGtvjpmfIQXurg=;
	b=Wj6nGBMJj3f+5PcSnU+Bb/hiAh36wXMPIO0I1vAglJ2+S83rnPIb5JHggRoiH43+Gf
	RoTvwT/cBwklsvNUuJikGwybjkQPjNxKVRkeDgrZNgshE9oZNXDboOOULcVmNotWvUc3
	m16sQv/GzpmsKtBLXSHz68COk43zKlzIfBn0NnVUggTgD9Qw7RPyH8fGiRJOlQ+MS6P2
	gWbWmjLnFpWaJhSID9cm348ij7eBKfo0tOxZ4OPCpiHANvrh3jluSO9TEX57NYDTWaeQ
	R8DRUhEY7EWC8OY1b4kAgkX5v3Pr30e7liJ+1NPL0F2TfUmMFg1EIgEu0ngyKodoXH37
	nNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=C+vPO5M/VRT47WnNtooDUdtfGxERoyGtvjpmfIQXurg=;
	b=JsfkIY6ZvKGxDG5GjMA5ASa6RxtP8deU87aqYGsZACOWU6g5dIW2+pjvNXQeGjdEAM
	uAE5wbhwED1VjRfXoENyYEd0/y0lIiLPAznbXcIARvlC+MCuJ9LEmi+aM8m6G7iTe7A1
	mwl2X90rRIjgnnd0+R8MyDqkzHYBPvU017o0L5ZNUsMFqnVvV7A6+17QrfbOstqe/34/
	zzOnVV8oqgco35D1mpikX3lMhpan2JyuN2ncKQtq2Q72AzTxfxWl7EYifeuGpEytzP2t
	bzhqbHNHpKs0qiqvBcUlCKxWyLjt+sQNhzqOtwyE8ZcGv4IctAo9oO/rqeU6TgKqyDs1
	25gQ==
X-Gm-Message-State: APjAAAWZy2f6pf7Eg3jYworBi8LsSEkZQF15KOeT1vCyqnBtK/BX6QOG
	rT2XfMFhft/gih2Rgic71T/6zwmzh19HsD9t+4g=
X-Google-Smtp-Source: APXvYqzqG2t+tCaz+RQUlI0IOECD1FcVnm5sufF17Z4/biHylQq67e1qWiukznajb7gISHPctdjha2W1tZD/xTdEhK0=
X-Received: by 2002:adf:fcc7:: with SMTP id f7mr3640436wrs.319.1570038930573; 
	Wed, 02 Oct 2019 10:55:30 -0700 (PDT)
MIME-Version: 1.0
References: <192ab27f-b9e0-246f-63bf-c49bd49516f2@3mdeb.com>
	<CAJdd5GZW0182cGT8kNr3nNzfpwCcO1S1tFhnyQSK1d2DqZbUdQ@mail.gmail.com>
In-Reply-To: <CAJdd5GZW0182cGT8kNr3nNzfpwCcO1S1tFhnyQSK1d2DqZbUdQ@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 2 Oct 2019 10:55:19 -0700
Message-ID: <CAJdd5GamcCNEc366E4yPFvCeqBYM5R08kx_DbxYRTy5pkb_2YQ@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	marmarek@invisiblethingslab.com,
	=?UTF-8?Q?Piotr_Kr=C3=B3l?= <piotr.krol@3mdeb.com>
Subject: Re: git fetcher - AUTOREV and best practices
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
X-List-Received-Date: Wed, 02 Oct 2019 17:55:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 2, 2019 at 10:41 AM Joshua Watt <jpewhacker@gmail.com> wrote:
>
> On Wed, Jun 5, 2019 at 8:00 AM Maciej Pijanowski
> <maciej.pijanowski@3mdeb.com> wrote:
> >
> > Hello,
> >
> > As explained in the mega manual [1], when using the git:// fetcher,
> > setting the
> > SRCREV to ${AUTOREV} will result in building the latest commit from
> > given git
> > branch (master, if not specified otherwise).
> >
> > Using AUTOREV feature in recipe has following implications as far as I
> > can see:
> >
> > - the same recipe might get built using different git commit, depending
> > on when
> >   the build was run, which breaks the reproducibility,
> > - it imposes some potential security risk - by specifying the exact
> > commit in
> >   the recipe, we can at least say that this revision of this package is fine
> >   and we want to build it; with AUTOREV we might not be aware of the
> > code we're
> >   fetching
> >
> > I'm wondering whether there are any best practices or strict rules
> > written down
> > for recipes getting upstream to follow in this area. When inspecting some of
> > the layers from the git.yoctoprojects.org, it appears that the AUTOREV
> > feature
> > is almost not used, besides a few exceptions.
> >
> > I'm wondering whether it would make sense to raise a warning when git
> > fetcher
> > with AUTOREV is used, so it would be easier to build on top OE / Yocto with
> > reproducibility / security in mind.
> >
> > I understand that this feature is mostly meant for development purposes. I'm
> > just looking for a tools how one could easily make sure that each
> > fetched source code
> > is verified prior compilation.
>
> Yes, I think warning about using AUTOREV makes a lot of sense for all
> the reasons you have raised. I'm not sure that putting that in the git
> fetcher is necessarily the best place for that. OE has an extensive
> set of QA checks that run when recipes are built, and I think that
> this might be a better/easier place to put this check. IMHO, recipes
> that force you to use AUTOREV in the base recipe are broken and should
> be fixed, in which case a QA check should be sufficient. The harder
> part is making sure that it doesn't trigger when someone is using
> AUTOREV legitimately for development purposes. OE already has a class
> that encapsulates the logic for reproducible builds
> (reproducible_build.bbclass); one approach might be to add the QA
> check, and then add it to the list of QA checks that fail the build
> (ERROR_QA from insane.bbclass) in reproducible_build.bbclass.
>
> As a bonus, the 3.0 zeus release adds a QA check for reproducible
> builds, so such a QA check would get detected on the autobuilder if
> someone changed a oe-core recipe to use AUTOREV by default. I suspect
> that doesn't help your immeidate use case, since I *really* hope none
> of the oe-core recipes actually do this, but the QA test can be
> extended in your layers to test your own images if you want.

FYI: I raised a bugzilla to track this:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13567

>
> >
> > I've already looked at the https:// fetcher (which is mostly used for
> > fetching tarballs).
> > It requires the recipe to contain valid md5 and sha256 sums. Even if we
> > suppress the
> > error in case checksum mismatch in the recipe by setting the
> > BB_STRICT_CHECKSUM
> > to 0, we are still getting the warning, which is the desired behavior I
> > believe.
> >
> >
> > [1]:
> > https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-AUTOREV
> > [2]:
> > https://www.yoctoproject.org/docs/2.0.1/bitbake-user-manual/bitbake-user-manual.html#var-BB_STRICT_CHECKSUM
> >
> > --
> > Maciej Pijanowski
> > Embedded Systems Engineer
> > https://3mdeb.com | @3mdeb_com
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

