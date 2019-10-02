Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03CE9E003E1; Wed,  2 Oct 2019 10:41:42 -0700 (PDT)
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
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F2DCE003E1
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 10:41:41 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id z9so7517324wrl.11
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2019 10:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xsZ5pIqwwobqfSBAuLbSsLHdf/47qKHh0+pyd7TpBwQ=;
	b=q9wNUovwwBM//z+KY2yHZaXxmqzwVF48xE02ttLxdEc4/fwhkh5mwVVLQqVemSxjFN
	pvJmnM+J7S1/oIdjnVzQnpLow0DQD08DtI6VNRkoj5WdgKnqX2vlx3KQyoL9jJSONxJY
	oa/5pe5UYp3pIKfx1k/VBDcEnHbxUXbYI3U9C12dixHAr5+AEnIAH4RRZy44ve+Vma2d
	GZobxuYOte/mzd81LmkbsgBN9ma8aMruyEVXBzX/pbsC+JILj4ct8gH/2hnSlz/siI2f
	fOCkwGsa//3TyqnAGwtdLwofOADYzCjvaaxzDMlrxjdJMSb4k+i3iqRqWYAhhZiEgu72
	us9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xsZ5pIqwwobqfSBAuLbSsLHdf/47qKHh0+pyd7TpBwQ=;
	b=bgGdPbxdxzUYyDzefc/DXdCeyzdq5cBfkINy0agfZ8mgpxlD3vmkOIFhmcINCXtQnN
	+hHvdqkPtQCSzE8DZtebr+9YRD5uvFBF1nXnSiNRyqkvMnmJfbdBluvMJhbKYZYzkK7t
	yhMPe3Ij7XTyzUd23lXOYRGKemF+BLHBZkCvRIdpyTyU2kZ7GuPw5UBU4ZFltIXaPHTV
	avSCVDT0GbhbLnrziY5Ssz9xLQ71gWf4RxBRj5xXB+fCzjforzEfxpxl50SrvI0z+bD8
	gr82ZciNsYqcc61138TBPDf0g8IfpBWONB4yoE/dQQFAK02EB3iSMLBiFY3RKq1LO4Tz
	WggQ==
X-Gm-Message-State: APjAAAXLhOSa7Yb32owge3ni3aYF+YmTGRUsUQUa5R6AJLHMoTAuI8+l
	FBMyv6y4wtiZjW0XgfTfwjMV7JZ9HOR7LiBA/W7bZXmz
X-Google-Smtp-Source: APXvYqzltAJz83cayQ6ZtLwpbxvDMJk/CFckdHNfusG3xULtcMHqfCmDVK12tlBN5OwwMDRcxchkygdPVq8BT8L0hwI=
X-Received: by 2002:a5d:4385:: with SMTP id i5mr3567256wrq.353.1570038099833; 
	Wed, 02 Oct 2019 10:41:39 -0700 (PDT)
MIME-Version: 1.0
References: <192ab27f-b9e0-246f-63bf-c49bd49516f2@3mdeb.com>
In-Reply-To: <192ab27f-b9e0-246f-63bf-c49bd49516f2@3mdeb.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 2 Oct 2019 10:41:28 -0700
Message-ID: <CAJdd5GZW0182cGT8kNr3nNzfpwCcO1S1tFhnyQSK1d2DqZbUdQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 02 Oct 2019 17:41:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 5, 2019 at 8:00 AM Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
>
> Hello,
>
> As explained in the mega manual [1], when using the git:// fetcher,
> setting the
> SRCREV to ${AUTOREV} will result in building the latest commit from
> given git
> branch (master, if not specified otherwise).
>
> Using AUTOREV feature in recipe has following implications as far as I
> can see:
>
> - the same recipe might get built using different git commit, depending
> on when
>   the build was run, which breaks the reproducibility,
> - it imposes some potential security risk - by specifying the exact
> commit in
>   the recipe, we can at least say that this revision of this package is fine
>   and we want to build it; with AUTOREV we might not be aware of the
> code we're
>   fetching
>
> I'm wondering whether there are any best practices or strict rules
> written down
> for recipes getting upstream to follow in this area. When inspecting some of
> the layers from the git.yoctoprojects.org, it appears that the AUTOREV
> feature
> is almost not used, besides a few exceptions.
>
> I'm wondering whether it would make sense to raise a warning when git
> fetcher
> with AUTOREV is used, so it would be easier to build on top OE / Yocto with
> reproducibility / security in mind.
>
> I understand that this feature is mostly meant for development purposes. I'm
> just looking for a tools how one could easily make sure that each
> fetched source code
> is verified prior compilation.

Yes, I think warning about using AUTOREV makes a lot of sense for all
the reasons you have raised. I'm not sure that putting that in the git
fetcher is necessarily the best place for that. OE has an extensive
set of QA checks that run when recipes are built, and I think that
this might be a better/easier place to put this check. IMHO, recipes
that force you to use AUTOREV in the base recipe are broken and should
be fixed, in which case a QA check should be sufficient. The harder
part is making sure that it doesn't trigger when someone is using
AUTOREV legitimately for development purposes. OE already has a class
that encapsulates the logic for reproducible builds
(reproducible_build.bbclass); one approach might be to add the QA
check, and then add it to the list of QA checks that fail the build
(ERROR_QA from insane.bbclass) in reproducible_build.bbclass.

As a bonus, the 3.0 zeus release adds a QA check for reproducible
builds, so such a QA check would get detected on the autobuilder if
someone changed a oe-core recipe to use AUTOREV by default. I suspect
that doesn't help your immeidate use case, since I *really* hope none
of the oe-core recipes actually do this, but the QA test can be
extended in your layers to test your own images if you want.

>
> I've already looked at the https:// fetcher (which is mostly used for
> fetching tarballs).
> It requires the recipe to contain valid md5 and sha256 sums. Even if we
> suppress the
> error in case checksum mismatch in the recipe by setting the
> BB_STRICT_CHECKSUM
> to 0, we are still getting the warning, which is the desired behavior I
> believe.
>
>
> [1]:
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-AUTOREV
> [2]:
> https://www.yoctoproject.org/docs/2.0.1/bitbake-user-manual/bitbake-user-manual.html#var-BB_STRICT_CHECKSUM
>
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

