Return-Path: <ja.kaisrlik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7066EE00D54; Tue, 17 Sep 2019 00:18:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ja.kaisrlik[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1187AE00D33
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 00:18:08 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id h33so2268671edh.12
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 00:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XPicQaZ08+TSnWjVdtRufls1zpA6zQTYhsH0fWgDBRM=;
	b=VwJN94OhAp1Di+EvIFjdZvos9clslZ0JypXvnFldImtO5g6r49mCUPfO1xyeWv1PWM
	UclO+JHQ/UFsNBzohWUPGJbdD9fgSEipP/XLgGbnkvDDyXdxp8wUFhp6pacRxfjCt2U8
	6ghc6PL4nUvlPgMhPK94rTZoSE+FJT1MRVQARlO5YnPGWtshLTsA0keRIdt8mIXeUR0f
	FL/lhVXe2SSO8NpU2UfpjsG6dCVJiHNTSHQDNBM+K9osKJlhSi3Et4uHTwIYgFp7MNKo
	tkcgt/+il47tVJz2UaAKvosOqmzsuVbmMbCzMNT2iihOOBMyCbhrYmZ6C6Fu5kZGPMxw
	J08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XPicQaZ08+TSnWjVdtRufls1zpA6zQTYhsH0fWgDBRM=;
	b=CgFqdBBcXUUDFADl3CDr9Tz6Bep6KtGa0HxA6/ZD8F4T3NZtpqUlRyKiFMMcu7sKK/
	M0KOVcNqF1A1z8r0YChy7kjkAkfW5BGL+fU1DE4IoYzSlpXT/HWAo2qZ7jkgyqgENa2j
	ELccl7yelPVQhcmYzks01ECLW8OpQ5/crZKYhOuqLC3EyjJE3ymA9fwtDd+EYutUuXrG
	jXtWE42bQvy4ewlIlSQ0PVioKf3xhmu9omRlMjQq46u34uB9Ai/7YDylWJz7bMgz2RrL
	Y3KwVdvp4B3QvWev++5WwDVDjNUXTQIO/qpxnINfFN3UhdPZ1Ujf0T8Ds3OqsPiK6Ocx
	JD3A==
X-Gm-Message-State: APjAAAVXb4nTc6NB4euxqrK+lRiG5etubK+7JfAb5jPyRQ1NadKrnRLD
	p0kXMXTeI7VcTQY/PvyvFqPFf8/JjmZBp0J0ih3SDfSl
X-Google-Smtp-Source: APXvYqyeL42qdM1t7NovNUX61Yt7MW5CInE0bMbgPfmuPl8fVD9ivAVDkdf8R3BVFIF0hDiIAxcbOYO69g8E/MDI//I=
X-Received: by 2002:a17:906:8494:: with SMTP id
	m20mr3459543ejx.30.1568704688148; 
	Tue, 17 Sep 2019 00:18:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAPnxhu4Vy4kgSLnhoOmsVVGT8ovrtPL4UxL_cZtfmX50tEfyuw@mail.gmail.com>
	<2851546.8Xxn2JrY6M@linux.fritz.box>
In-Reply-To: <2851546.8Xxn2JrY6M@linux.fritz.box>
From: Jan Kaisrlik <ja.kaisrlik@gmail.com>
Date: Tue, 17 Sep 2019 09:17:57 +0200
Message-ID: <CAPnxhu5O94RqXKanPHOUOAKgBrVORgf5ccE8U6EDp8pTpUBZSw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Extension of package name by distro version
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
X-List-Received-Date: Tue, 17 Sep 2019 07:18:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 16, 2019 at 10:43 PM Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> Hi Jan
>
> On Monday, 16 September 2019 8:55:00 PM NZST Jan Kaisrlik wrote:
> > I would like to ask if it is possible to extend all package names by
> > some string f.e. by string corresponding to the version of the
> > distribution (+fw2.6.1)
> > * without distro string - kernel-5.3.0-rc3_5.3.0+git0+e21a712a96-2_arm64.deb
> > * with distro string -
> > kernel-5.3.0-rc3_5.3.0+git0+e21a712a96-2+fw2.6.1_arm64.deb
> > I've checked manuals and code and I do not see any easy way how to
> > append some string to the version of the package.
> >
> > What I've played with it so far I added the mentioned string to PR in
> > bbclasses' in poky. Honestly, I do not believe this is the best idea
> > (on other hands it is working xD ) ...
>
> I would say PR_append = "${DISTRO_VERSION}" in your custom distro config work
> - did you try that?

Hooray, that's what I were looking for. Somehow I skipped this option.
Thank you!

Best regards,
Jan

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>

