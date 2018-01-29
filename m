Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E335E00E36; Sun, 28 Jan 2018 23:45:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9CA6E00971
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 23:45:12 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id l64so4389212qke.13
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 23:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yyrGdoZeuzPzLwEv3MXHVkX1dtjNupgnYVy7vzdRvqc=;
	b=emnz9wB+Re8NMidIS8TNZ0ISyV3+xf1kemRcL+yhJ2Fww1kUKvTTWFoM2Dsr6Kt+rV
	2XAGqWILT3J4aZ8nlmYvVJj+AnXYduaQlfXZWOA5Mj26ko50vU4/MLuy41nuzaYO10ps
	V5l52wHAwDXjFqXUhaJqEJ8heUzRqBTqhrqUveFRv4TY4SxqQi6SVAmN8Ukn6jbTpwa8
	G9RPMC4sx8mK5phUVasr+lnGpoAsaVSSxACqiH/m6dkPzHFaREWJnyehacCYJjs9atjl
	TMueZt3FocLd/nMrG7N9D7nWmEEevjorQnUWVFBnvKoET+nRMshBDOJ3phGZpcOiRzBS
	tSEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yyrGdoZeuzPzLwEv3MXHVkX1dtjNupgnYVy7vzdRvqc=;
	b=Zc1M60cPcZu1yny/jMrtpqpN063Roz6EUPBccpZTbucsbYp1KcdVbh21GEr+slXU7N
	gBYFxVeIEgje24csNsVZ7rYBXbqqMiNAINd5AqUxg+T+aRfMRPVip4q5rpfRxfA92U6/
	e6jqQdl2uHzSoR9rGbXg5ut54i3oqQQQ7/xwbZZMK22EHdy9bkFrA2ZJeu35hdOgI/Iq
	7np+qNW8W8zldD3S7ki4R1o61KZoJ8bENfxWqAXZWcl9SO28wyy/12XDFU1uoj01n5l2
	HuRbpd9I7q57uMCRQHLDJXVBV73mCdWouiqhgFyHqQD4Xa9p5prZfjM5QVvbkFEaMKZ0
	E2zQ==
X-Gm-Message-State: AKwxytdhgwhhVm6FoJ43cPsQNLhcTrmlb0NSpGcWwqnlG9LvvreqJ6J8
	/I6y91jtZyvUw9lDzru5Gx7NW+excPw8v12O6+8UZA==
X-Google-Smtp-Source: AH8x225rsirP87MMmMy+6Hqrm2fYhK//laKBJ4ynsqprMR/1IZsRPBza7fY6Pu0Ldotm/gsYaEAerMcJjjhiSUqJwm0=
X-Received: by 10.55.169.211 with SMTP id s202mr34789853qke.57.1517211911790; 
	Sun, 28 Jan 2018 23:45:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.66 with HTTP; Sun, 28 Jan 2018 23:45:11 -0800 (PST)
In-Reply-To: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
References: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 29 Jan 2018 08:45:11 +0100
Message-ID: <CAGAf8LyPoW5XORJ=uCBOVT8S2zWvQW6wkzU7yctKwR26We=aGA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] Glibc 2.27
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
X-List-Received-Date: Mon, 29 Jan 2018 07:45:13 -0000
Content-Type: text/plain; charset="UTF-8"

This one will be tough to integrate. Most of the packages depend on
this one, which is critical one. On the very bottom. I would say, this
is a big step, since here somewhere you should draw clear line. And
this line will be the following: which releases you/YOCTO crew will
support (back-port to) with Glibc 2.27, and which not?!

Zoran
_______

On Sat, Jan 27, 2018 at 10:44 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Hi All
>
> glibc 2.27 is releasing soon in few weeks. I have put together the recipes
> for upgrade, along with fixes for some of packages that I ran into here
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/glibc-2.27
>
> This has gotten limited testing. I plan to put the package fixes as we
> plough through. Please test this out in your setups and report problems or
> fixes ( preferred ) to get various packages working on 2.27 release
>
> Thanks
> -Khem
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

