Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAF5FE00D1B; Thu, 31 Jan 2019 02:40:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F84E00D15
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:40:42 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id c9so3329389itj.1
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XWnWZHjNQZ1RexnzVP6cH9iVeojuPJlwqvqlTc8qF6o=;
	b=qXcCwGJcaILCNxUJFb+/2Rl3Ud/A55sFcGywaQozcK+myiyYzh3I7QYiABvGBZxZFW
	/WDM7mDEQgTIPfwVTHNWLL4Ny0v4ZXBqpnPv74XN+qKnsd81hzaA1OGjcpR2Nj43wPYT
	2IPcyPWPXjhu0oXyvYVCm9hTUGlygOtoraK2ODkM23PUxFsPl/SUPOL2aQiGNKQ3+wnj
	Q206AG4wwz79mwW+GwONN1zodw0/r+dwP1EYGPjNjI1LVe8sGWlF5PWQHqisiwAVKqGm
	oA0p8rFR98ws6yxvzrHGIkB5uHqS15ANs5/EI+R7QFW1ECmZbAvysZypJNOKutkRmUG3
	V50w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XWnWZHjNQZ1RexnzVP6cH9iVeojuPJlwqvqlTc8qF6o=;
	b=QI3Qv5wMlEmEkFeczhcq2FM+Bg+nRvipSfa2dVy0jA7MgCRXm6+f9DvILU5/fJ8fvV
	XngN11NUrG9I1XHSREkYRHU71AQwAvcx7g0djw7XukU4iSp+b2fuJ5yvp21dBGDNMJMa
	dlq9Qpur4F8qlgNmUdgK4MNMwpXlMM5mkDcgWn70cykz5ScAadkbq66BfQ5cBW5RBL+9
	561BE/coPKwXrEBqxxI25Yghcw7RE8m9kLZSw9pTvv/mmZcwV2XzqExez+cFRVgLCTja
	U6/1z26rL/haQQxRO5E5gX6DWdy7nabNGrdzDrPAbR38BCFOc3LRu6sJPziQxKJYjomp
	lD7g==
X-Gm-Message-State: AJcUukciYUx/Fc8+jcbI4c+r/7pOzV9kdCXJzhjTKQKKShytLl2JH4EQ
	RcOpV3o8t3VwMttKx942DS/VJ1f8RbO59qzW9Qs=
X-Google-Smtp-Source: ALg8bN7ttKyHKTy9b4mGMsuTGd16kh1Bz2/AAkvnDQKPIfZ3jphvdPzVhSC85SieUN5giuQVfj7NItoKbcOUqwN1xJ4=
X-Received: by 2002:a02:b381:: with SMTP id p1mr20238505jan.46.1548931241970; 
	Thu, 31 Jan 2019 02:40:41 -0800 (PST)
MIME-Version: 1.0
References: <CAHUNapTBZZRA4+RiFLVHYX6CAkAC8_s9jA0KrFc8Rvs0ksLG-Q@mail.gmail.com>
In-Reply-To: <CAHUNapTBZZRA4+RiFLVHYX6CAkAC8_s9jA0KrFc8Rvs0ksLG-Q@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 31 Jan 2019 11:40:30 +0100
Message-ID: <CAC+thW3KsvrR3X++ywQRQvqjNcs7z7pocq9CBH_s7-jYJXe9bg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-members@lists.openembedded.org,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] OE Summit @ SCaLE 17x - Sunday March 10th 2019 - Pasadena CA
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
X-List-Received-Date: Thu, 31 Jan 2019 10:40:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 31, 2019 at 8:26 AM Trevor Woerner <twoerner@gmail.com> wrote:
>
> We're excited to announce the inaugural "OpenEmbedded Summit" taking place
> Sunday March 10th 2019 as part of the Southern California Linux Expo
> (SCaLE) 17x at the Pasadena Convention Center.
>
> For the past few years there's been an ever-growing OpenEmbedded event as
> part of SCaLE. This year, with the missing Spring ELC, we felt it was time
> to do something more "formally" so OE enthusiasts could get together
> without having to wait until August.
>
> The initial suggestion for this summit came at last year's OEDEM in
> Edinburgh. At that time an idea was also floated to hold this year's OEDAM
> at the same time. Just to be absolutely clear: this suggestion was
> rejected; there will be no OEDAM at the OE Summit at SCaLE 17x. However,
> this summit is taking place with the full approval of the OpenEmbedded
> Board of Directors, many of whom have also been helping out with its
> organization.
>
> The schedule for the OE Summit has been posted:
> https://www.socallinuxexpo.org/scale/17x/schedule/sunday
> https://www.socallinuxexpo.org/scale/17x/open-embedded-summit-0

To whoever can double check and fix the schedule... it looks like
there's a typo at the second link, where Alistair's talk is listed
twice. From the first link "Lokesh Kumar Goel
OpenEmbedded in LG Products" should be at 11.30am instead.

>
> So if you're in the Southern California area, or are generally interested
> in hanging out with some OpenEmbedded people, please join us in Pasadena on
> March 10th!
>
> Your OE Summit organizing committee:
>   Tom King
>   Behan Webster
>   Trevor Woerner
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel

