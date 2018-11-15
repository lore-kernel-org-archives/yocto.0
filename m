Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85DFBE00C4E; Wed, 14 Nov 2018 21:01:27 -0800 (PST)
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
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEB89E00A6B
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 21:01:26 -0800 (PST)
Received: by mail-qk1-f195.google.com with SMTP id q1so29974264qkf.13
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 21:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DHt/LLeN6NFer98jdzGGsLVgCln9QQTvCdyGfPGSqzE=;
	b=TmsvBEiEn6HoU99lT8Bynj8QUqHEYQj46DZr/mINwJqR7CUqP0B9V+88dkMgUClwGg
	mPFEEi4Ml4P6jY/5Te04kkFe2xT8Z+RjgcYDhJCRZZbnL9IDIIfOlQI0ZHEezWXCogc7
	rT4I2KxkvEcJgy1I6/G+Af/ULekjeMq/YJJH36nCdSJIK6Dz7VEjvKJVUSEmFqsP4yeb
	D5GqS92BKUn4ISWmIJB7/VEV1csGhwZO6VfdB0BIW17MdcUzJMBFpW9wjw7vWh0kdm2i
	DRqR8FY8s/oQnOUJuDrg/tA3w1w9JWVoNeK6HwnCHXvHt3z6hVfZuQQmvsLI0MmnbHST
	ufUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DHt/LLeN6NFer98jdzGGsLVgCln9QQTvCdyGfPGSqzE=;
	b=m3lpojE8NeuY9OQIGqXc3jRhcGwOQHhTd9xlTzpTGT0kUTc3PlaY9zMzcpj0Lhstnv
	ZYiirYZ2XaGrugYJ/slY7V16OBivvhWow6QO/vRP6DgGJkh4AfH+5vrs7G3opRvOnjA6
	TCyAb947T+g4h48qpA6ALbXJkQeAjRJx+kZvZWQ7GfbQOX4zCJCXIl9pZ9ofxtHD9/Rg
	DSIJMB3iB25dviL/MxTLuzyEQE+CEDh0FL6gxx4aTDkeHdyqBsG1SBirGdMBc3CMGazr
	4muCeWjQlcszcj2Omd0N2LVdFeLPLWrPdmjKFVFBs0MmxZlXhMSRBbBuTvIV6twHRP8S
	/GLQ==
X-Gm-Message-State: AGRZ1gKgvV9jYCdrq8FkyL92tW28KtOyE13ApdvaBu2UAFtVLzF9/I0v
	0EXBRMHrXskVQAdHDQMyUZsqG+zYv05r7JDOr0E=
X-Google-Smtp-Source: AJdET5cMKkQN1fSswEZEcBLn4v5X3n4HsiP8bLG4f4M5c2L+vLeJJ0N4Y4RmqZhHi2evIrMRZ2d8xgNlDpP5SlsRCyA=
X-Received: by 2002:a0c:d80f:: with SMTP id h15mr4807492qvj.228.1542258086140; 
	Wed, 14 Nov 2018 21:01:26 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
	<CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
In-Reply-To: <CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 Nov 2018 21:01:00 -0800
Message-ID: <CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
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
X-List-Received-Date: Thu, 15 Nov 2018 05:01:27 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>
> On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com> wrote:
> >
> > On 11/14/18 9:54 AM, Mark Hatle wrote:
> > > On 11/13/18 3:56 AM, Samuli Piippo wrote:
> > >> Hi,
> > >>
> > >> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result
> > >> a lot of the executables in the toolchain no longer run correctly on Windows.
> > >
> > > Which version of windows?
> > >
> > >> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work
> > >> fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and
> > >> exit without any output.
> > >>
> > >> Has anyone else seen this?
> > >
> > > I've run a toolchain made on mingw after sumo, but before thud's release.  I'll
> > > see if I can find a VM and give it a try later today.
> >
> > I'm running on Windows 7 for my testing (ya, I know old.. but it's what I got.)
> >
> > Can you try adding the following to your conf/local.conf: GCCPIE_mingw32 = ""

this will be effective just for SDK and native versions I hope, but in
cases if we
have this override also applicable for target then this fix is not
correct. We have
to keep using it for target builds.

> >
> > I found that the SDK was not working properly here as well, but only binutils.
> > The above seems to fix the issue.  (You do have to rebuild your SDK.)
>
> I also saw this issue on Windows 7, and your described fix corrected
> it (Thanks!). On the plus side, the automated SDK testing that I'm
> working on discovered it as well (e.g. the tests failed because of
> it), which means that the tests are working and should help prevent
> issues like this in the future once I get it merged.
>
> >
> > > --Mark
> > >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

