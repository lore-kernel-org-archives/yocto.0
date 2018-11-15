Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D56FE0095C; Thu, 15 Nov 2018 10:48:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 020D9E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 10:47:59 -0800 (PST)
Received: by mail-qk1-f178.google.com with SMTP id d19so33426850qkg.5
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 10:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8lAnMG0Mc+pfYjS3wTuZrOCVipK6OtjLvOUW6M59UP8=;
	b=DGWRVsR9UOxmatzA12rtOkkWIJtl8psdjZ40WVEUY1ez3W7wqlbKz3MNqHn+K0BVEn
	C7Y4eXBz7EzeXq2NMf24Omvc3/BwShTc86SvRpnmrxW/jfk43ntIishvKFX8gl5xmCYq
	xl0lwNlrxNH/lHlKNRS7PG1QBsCro9htbeP7JWe2pDFkBSZR4rA/06a6mok6I7W1QNbi
	2cDc635iu5HHrJnpR1UXGZszmmMmHJxweL9XiGJQmNYkGbdh/pk5x5VIZv5yyltrlHdi
	I6sGo3OwPbgLaNlFSq0Tprca10Eybbp6PTUCCYCWWTfZynslXBGkktBesKQ2/QSrT/B3
	Ud5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8lAnMG0Mc+pfYjS3wTuZrOCVipK6OtjLvOUW6M59UP8=;
	b=p9NTeLxKxfgfwVKDuuFV/Ri7OCcRO7Z8zqVfGWW05T8hkptbffceWaM5Sgr2jJU1la
	cLDi9OzFr71bYYt2OADBhgQGSKh6EEDxn4FdrD8ZvcaHJ2DpAFw5x5VMuMMJFGiqkV5h
	Ps1a4DHlf1xl06eh56CpGXyCYuaEqxn/6Ql7pwNM5fCFuUOfBhVHONS7IE7xGRxDZDbS
	8+IEOtFSrSfMXbErpnWRb6wp6AVlxnubc5cLTq1kEvI0liY3OvXKrMKrnswvBGWmMewA
	S8ZDJL/14Xs5klKh/ZZpTYbeSZf1rSnFlp02dVWbBhk+JizZL7lKYnDVwy65N7wdqPeG
	7raw==
X-Gm-Message-State: AGRZ1gLKWwBYWpCQ5y/zAwxTp+3gJ2QdGoO27O/NDcWfpE7unQfQVduI
	YYY1OnZEX15fDOonIRaZl7dTlW7PDRDZ5BQsBbU=
X-Google-Smtp-Source: AJdET5cxt1ckKYRFXULbgQUpmKGG75AWiH9GdPLNT/xZIKr3/N2KxYzX1ZdITvZLopRBa/fhqdsVquLmDqKv4UXMsHk=
X-Received: by 2002:ac8:518d:: with SMTP id c13mr6961379qtn.254.1542307679077; 
	Thu, 15 Nov 2018 10:47:59 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
	<CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
	<CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
	<13c4de38-d986-db19-8cd5-39f903afb8a3@windriver.com>
In-Reply-To: <13c4de38-d986-db19-8cd5-39f903afb8a3@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Nov 2018 10:47:33 -0800
Message-ID: <CAMKF1srXJbkz4z5-jTWe9zeKr-Ao_qnKgM4qqqQAvWD_FRUuEQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Thu, 15 Nov 2018 18:48:01 -0000
Content-Type: text/plain; charset="UTF-8"

Ok, thanks.
On Thu, Nov 15, 2018 at 6:48 AM Mark Hatle <mark.hatle@windriver.com> wrote:
>
> On 11/14/18 11:01 PM, Khem Raj wrote:
> > On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
> >>
> >> On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com> wrote:
> >>>
> >>> On 11/14/18 9:54 AM, Mark Hatle wrote:
> >>>> On 11/13/18 3:56 AM, Samuli Piippo wrote:
> >>>>> Hi,
> >>>>>
> >>>>> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result
> >>>>> a lot of the executables in the toolchain no longer run correctly on Windows.
> >>>>
> >>>> Which version of windows?
> >>>>
> >>>>> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work
> >>>>> fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and
> >>>>> exit without any output.
> >>>>>
> >>>>> Has anyone else seen this?
> >>>>
> >>>> I've run a toolchain made on mingw after sumo, but before thud's release.  I'll
> >>>> see if I can find a VM and give it a try later today.
> >>>
> >>> I'm running on Windows 7 for my testing (ya, I know old.. but it's what I got.)
> >>>
> >>> Can you try adding the following to your conf/local.conf: GCCPIE_mingw32 = ""
> >
> > this will be effective just for SDK and native versions I hope, but in
> > cases if we
> > have this override also applicable for target then this fix is not
> > correct. We have
> > to keep using it for target builds.
>
> The mingw32 override is only present when building -nativesdk- mingw32 software.
>  -Not- cross candian and similar.
>
> --Mark
>
> >>>
> >>> I found that the SDK was not working properly here as well, but only binutils.
> >>> The above seems to fix the issue.  (You do have to rebuild your SDK.)
> >>
> >> I also saw this issue on Windows 7, and your described fix corrected
> >> it (Thanks!). On the plus side, the automated SDK testing that I'm
> >> working on discovered it as well (e.g. the tests failed because of
> >> it), which means that the tests are working and should help prevent
> >> issues like this in the future once I get it merged.
> >>
> >>>
> >>>> --Mark
> >>>>
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>

