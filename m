Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76362E00C75; Wed, 28 Nov 2018 04:42:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8219E00C71
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:42:31 -0800 (PST)
Received: by mail-qk1-f195.google.com with SMTP id w204so16693700qka.2
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xzglizzxHhMZmEMnTHI5xG1EVOoWJ/wvcobsXMoKGgA=;
	b=ZohZpr/2a8gMoDZpgVoQ8syvEKD5XjVASNVLsjOGle2+os0w0O7fFOoA2CJ1Z15UQZ
	WXSoLD6HGjRcjoMXFQuGgPAIojtp8HXUBTgbNVIqfXzDxBxZEqWpNV+YCOTLFlu2Oj9y
	qf0qxHn7A0XTr4duh5vVgtQEjwGxiK5vsc8QGv0pCgGAeHyywm7iNiKYXkwxdla18MPZ
	F1UeLxuQThsl6KfHKDvGi8izQkKqdRCs9ryr+VVy7eG0A97w31krY6c+7Y1HYGT0FJMA
	1dBSpsPd6KRy4Tp8Ktwt/YXqqukuYAXM6LEZjOHthg62GJm2EfGEUD8HxUVQnilAZiTc
	9+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xzglizzxHhMZmEMnTHI5xG1EVOoWJ/wvcobsXMoKGgA=;
	b=f7jgrHUZpqz0wlDX7PWfXm/VtU8oj0saJUAKqfL0Pah4uzp74fLQPBHlWr8xqhuy0+
	3DoaGtt3Os4iwbXgNIaeQJkWwffA3ZWfLmtDr40Pjw8uqOnq0QrGtzdz+16uwvjHCZgk
	FNMXAtxl/+BgOH/IEZugXLSPTZg79YJgUxz8hwEmOnPKDV7uwlX//8PST+CkHHu3lPj6
	1n4OXCLNoFg0IgS+C0kmE4ocVJqyUajZgbcLPgWueNOUANKFN7MwsOstJZSeawFlSf7S
	1oOM5d4s8JNZ7vjcL3+S7Jw/VMGTn/x+2JyZr04hacnU9fhq+cK0ypL7L1CaIzyRbVjA
	+YlA==
X-Gm-Message-State: AA+aEWZn5btmUlgttf4wH1RsdhJM+bKyBDqkGwwRBDHajObqve5JDWq0
	rUG3wbsmqo6ev7o91mQLTJhEES3FI/PrqBvVI1Q=
X-Google-Smtp-Source: AFSGD/UmKbOcve346D2Hwn47nQDvR65IOOFmstnwQGZGK/s3e2YwdIKhkS6+TqlEC1EzLO1B1quRmUx9ghizUI3wMYw=
X-Received: by 2002:a37:2b5b:: with SMTP id r88mr34744311qkh.336.1543408951027;
	Wed, 28 Nov 2018 04:42:31 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	<CAJTo0LayJuXgtpzOCTnPPh5-sQQABBFU9V-eFU9mbNui1GP_dQ@mail.gmail.com>
	<CAGAf8LzXyVS1N3C3b7aG73Tn-Cs-ga71f9M_Y6A4hucnxekKtQ@mail.gmail.com>
	<CAJTo0LYpWRRHAW2V+btYmWMu5sT-Q21aL4NoK0PE91vLYusmQg@mail.gmail.com>
In-Reply-To: <CAJTo0LYpWRRHAW2V+btYmWMu5sT-Q21aL4NoK0PE91vLYusmQg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 28 Nov 2018 13:42:19 +0100
Message-ID: <CAGAf8Lys-HNqArNa7cqJ-swg8YQbdRmaXpK58RMaoM64bukRsw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Jan Kiszka <jan.kiszka@siemens.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 12:42:32 -0000
Content-Type: text/plain; charset="UTF-8"

> What can you not do with Yocto's git repositories?

Please, refer to my initial email. Not referring to Poky, I guess, the
Poky repo is equivalent to kernel.org. In other words, everything with
it can be done with git tool.

I am referring to many others, associated with github. Maybe it is
ONLY github, which does not support git tool in full extend.

So, as I said/wrote in the initial email. The concrete meta-bbb does
not support git tag, git describe.

Once I have no tags, I could not do anything with git log. And... You
can imagine.

Sorry for creating waves. No intent to offend anybody. Just a (strong) thought.

I guess, github has some significant problems supporting completely
git tool. Since I see that gitlab does support it (after reading, I
assume this is done for gitlab in full extend).

Peace!

Best Regards,
Zoran
_______
On Wed, Nov 28, 2018 at 12:27 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Wed, 28 Nov 2018 at 11:22, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > Since with git I can do almost whatever with kernel.org (and
> > derivatives, all known distros) git... Very opposite to YOCTO. And I
> > like git, It is VERY powerful. Maybe I finally started to understand
> > the tool.
>
> What can you not do with Yocto's git repositories?
>
> Ross

