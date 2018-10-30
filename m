Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A85C8E00BBF; Tue, 30 Oct 2018 14:22:02 -0700 (PDT)
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
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E171BE0097C
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 14:22:01 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id i15-v6so15390005qtr.0
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 14:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7lZ/D0SmDX5p3Ml0JpJo0QCaiWX6hQht+0p6XX50NdM=;
	b=GCgqjjpY6VGE68lcc1q27Gs5jlnLgsVC2mBFfYlo+5mItOMRFwOVoqsII+WCe1uEVO
	8inTH1ehK3UOe1hQafBuvQW9s/sdi5Co4sRkdQBq5Nne1VTkJ6AIyEeSrc+3L9FWweP3
	NHsOZ7C2IYFBKmhQFHryN4EvNc1iE2fGbJqbqH3kjZvpk0Au5bM0l5myUZmr4VchAog9
	vyi9qU99zqoho6M2+YTegzFBXA398VJrSVyumurKxT1O4IzkcolEbDt7Izfqrzas5oqm
	UaUogsjgZcMYcMT/ho5r/6kdvHRRRK61cuSRv5so7ILgFnNwpjKhFsJbgdFnLYDACung
	TsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7lZ/D0SmDX5p3Ml0JpJo0QCaiWX6hQht+0p6XX50NdM=;
	b=ranw6HfEO/QtOIjYg7XGEm77QVI4V4oe4YG5fSx02/XWMAdi6feS1lIdXe4y8ye8fX
	dRZjaVy+VQsB4mCFEIyfZO8y8NAV2OrkPUOyM7sw4mKQSFj55wxW9HEOS009W8ahPq/h
	pjL7rtURu8SwcWyLK41f+9rSFeP+lUk1PQdvMpLg3ueZ2RsUg4l6FI4NoHJ3SxS75iG7
	fLcWehmscfVMCmw6AAUW1DPrReQ8wit634uvsT8Qy/PtuwTdCnNcarTsO9NyVMVh1AZ1
	hKW+qjEJhoY/2QuAb/5kAkDCSO4gU93zKXkAcpM5eMz8ZPHvX+yU8sZ3MkA4t2cOFz9Q
	P8BA==
X-Gm-Message-State: AGRZ1gIYZ9YK6RdcrV36IkrlSFCMk+QFZYAkZRS9yZGw61RLcSQ5Edqz
	vgGLbd8rZg2JmGm0WErvJLuezgxGNtallZ4G3UYkng==
X-Google-Smtp-Source: AJdET5dOhNFD6iNNY+IOfT3+WhgSQbKV735Hq81W9tiUyoesxsDTOrpvjGq+csBE7+SxkjhZDX1svPeJSiU2/h7I7pM=
X-Received: by 2002:a0c:ad47:: with SMTP id v7mr365647qvc.228.1540934520880;
	Tue, 30 Oct 2018 14:22:00 -0700 (PDT)
MIME-Version: 1.0
References: <40261230-160a-83b8-b0f2-eb996ab1fd7b@faresoftware.it>
In-Reply-To: <40261230-160a-83b8-b0f2-eb996ab1fd7b@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 Oct 2018 15:21:34 -0600
Message-ID: <CAMKF1spFYQJ_CNeS=ogO2U797tDq7-1qLAz6C-edmXu6Eft87w@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto and Debian package repositories
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
X-List-Received-Date: Tue, 30 Oct 2018 21:22:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 30, 2018 at 8:14 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> I often work with Debian and I build my own repository accessible with apt.
>
> I look that when I build the image recipe many deb pacakages are
> produced with Packages and Release ready.
>
> How can I use this pakcages to upload all packages to a Debian customer
> server?

So I am assuming you are thinking of installing these .debs onto a
debian base target
if so then its not quite the right direction. with OE build system we
can generate output packages
as ipks, rpms, debs and tarballs, its just another output format but
is not meant to be consumed
on rpm-like or deb-like linux systems which are built using non-OE
distros, because packages have
dependencies and sometimes version specific dependencies which may not
match between two ecosystems.

>
> Best regards,
>
>   MZ
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

