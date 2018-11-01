Return-Path: <darknighte@darknighte.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8394E00C10; Thu,  1 Nov 2018 13:00:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53406E00A0A
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 13:00:39 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id d6so190947itl.4
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 13:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=darknighte.com; s=darknighte;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zG+TsPdJkasGv4zjc7MaZfztgy2P2Bv5zB9XX+m4Yvs=;
	b=d4OENCDi9cxs4Uniu1FJvqYe0ctrkJR6KxXbp2VoBHgSXRFShRJfA/C5Cuj8Ch+uN1
	Ds3XLqI84rvVBCv6x+9NquQGp+EnjoBQVRPU5ikKUZDOsU/vIlKGhQBl5L5szGAaz0LN
	v4qSfRitL6R1oRfai8iXm9MJDFRq5okFIQY+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zG+TsPdJkasGv4zjc7MaZfztgy2P2Bv5zB9XX+m4Yvs=;
	b=heVGC6j2Y3p34f28SyxEnkGVMVGm4PmIxWEigwOAXSgS3nlgZMfRN8vDt/2DjiDWLh
	Jg8Is4W/vP97a+WEKCp8GlLOpACLj3ydYslR6B9TNrLNK6VqOnPQ9YGbHUFF2Rdfp0MC
	M7vAuskXdmeGMip1NhNK8CtTQsd2bzvtk42Sb6Wn8ApffyqQRSYRukD7Bpb1PkGbmQ3x
	ogTX//anxcgFMWq3BKpUZi8Ia7n2J1aVjLC32ekgZr2IUL0/j9xPYsrzI+cwaK8+BU5M
	dX/6PdRYw5nReY2qVSrKhgBnp6Sa732aSQq1xCc18YbgbxKi8RxJqZkMVZklz6FSH0Xq
	e7aQ==
X-Gm-Message-State: AGRZ1gJ3Dz0KgNPS3Pvat2PRf64pc9ce6hF6itnMdY1YN9U/1UG4ix5p
	l8w3Rw83JJQeZMJHU3PLT5JiaBf6igh1lgbTMnIHnQ==
X-Google-Smtp-Source: AJdET5esB9xthYr+4rXVEgnY1KiZYK3mcdRjIeuRjerujNn3joLxhNU0b1jYooQydyj4yedFXZHiPy935L3QY9+ox4s=
X-Received: by 2002:a02:f94:: with SMTP id 20-v6mr7476711jao.76.1541102438499; 
	Thu, 01 Nov 2018 13:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <20181101140417.GA12376@linux-uys3>
	<CAPoiz9y_prstnR5dsxHNwSk81ShLmkybEXySEESTgZrpgKXMcA@mail.gmail.com>
In-Reply-To: <CAPoiz9y_prstnR5dsxHNwSk81ShLmkybEXySEESTgZrpgKXMcA@mail.gmail.com>
From: darknighte <darknighte@darknighte.com>
Date: Thu, 1 Nov 2018 15:00:27 -0500
Message-ID: <CAKM2CV+7hnwSickD5gWPqnbP=Kr-kuqJama5SppUh_FpsVF0dA@mail.gmail.com>
To: jdmason@kudzu.us
X-Mailman-Approved-At: Fri, 02 Nov 2018 08:46:10 -0700
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	yocto-advocacy@yoctoproject.org
Subject: Re: [OE-core] OEDAM @ SCaLE 2019
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
X-List-Received-Date: Thu, 01 Nov 2018 20:00:40 -0000
Content-Type: text/plain; charset="UTF-8"

OE folks,

  The OE board hasn't made a final decision yet, but plan to make one
soon.  We will send an update as soon as we have.
  In the meantime, if folks who are interested in attending something
at SCaLE, it will be factored into the board's decision making
process.
On Thu, Nov 1, 2018 at 2:57 PM Jon Mason <jdmason@kudzu.us> wrote:
>
> On Thu, Nov 1, 2018 at 10:04 AM Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > Hello Fellow YP/OE Enthusiasts!
> >
> > There were discussions at our recent OEDEM regarding:
> > - our next developers meeting
> > - SCaLE 2019
> > - expanding/adding to the YP/OE presence at conferences (i.e. our own
> >   miniconf?)
> >
> > Please see time indices: 12:13 and 16:45
> > https://docs.google.com/document/d/1YDAHjIOXCIgvSZVOKCYLxa8h26dkruX8zspoge7zCpk
> >
> > Unfortunately, although lots of opinions were expressed, nothing concrete was
> > decided. Many people pointed out that their travel budgets are already
> > strained or maxed out, so adding another conference would be difficult if not
> > impossible. It's unclear how many "core" YP/OE people might show up at next
> > year's SCaLE. Also, given that this year's ELC scheduling hiccup is a one-off,
> > maybe it doesn't make as much sense to put in all the work required to run an
> > OEDAM at SCaLE if it's only ever going to happen once. Therefore I think I can
> > safely say the organizing committee for YP/OE Things at SCaLE 2019 is leaning
> > towards not running an OEDAM.
> >
> > It's not too late to change our plans. If a large number of core people reply
> > to this email saying they want and OEDAM in March and will be available in
> > Pasadena, then we could accommodate it. It's just that we didn't leave
> > Edinburgh with the feeling that an OEDAM at SCaLE was feasible. Also, at this
> > point SCaLE isn't on the radars of many of the core YP/OE people, and
> > currently the conference tends to attract users rather than developers (or so
> > is my impression).
> >
> > Thoughts?
>
> I am planning on being at SCaLE (assuming the OEDEM happens there).
>
> Many corporate travel budgets are tied to presenting at conferences.
> So, if we could somehow get a track there (which might be too late in
> the game to do now), then we might be able to get enough people
> present to make it happen and pull in others whose budget is more
> flexible.
>
> Thanks,
> Jon
>
> >
> > Best regards,
> >         Trevor
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

