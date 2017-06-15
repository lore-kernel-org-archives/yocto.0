Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B79F2E00B9E; Thu, 15 Jun 2017 11:20:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76373E00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 11:19:56 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id x23so4480541wrb.0
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 11:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u1oBMdmJCTFXOcV9+6UdctfIQe961kILeJqeiPdiMPI=;
	b=mYa0NwKv/Hi3BoB/W7qX50YD9w2jXpJkmWziwzikRqnCClJXhiRW+JdsNRUCN/oTB5
	jKuxwI31RG7eMHCSbyOZyQSiANI92Zfi0VDH3k7Ib99zRrGlMmlS1ncZ7aVkfK7H4Iw6
	7tEe8Qe2sawga/150beSiJQZk/6yf9QKBOVazkL+3/eKDESR12IsIeN7b8+yh9QQ0+4z
	ad4t3pMEVxqVjz+RA21taLkbtSy4+n+t26wH8BfDbR26DpwpLeAtAL2dNw+BvW6QzFLO
	9jsUEtYUEmvsNwD3ZDDuk2LIDL4C+Be8ax/U2MXd1BQCvJ8IqAGZh1/lkWIllVkNz9KE
	DN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u1oBMdmJCTFXOcV9+6UdctfIQe961kILeJqeiPdiMPI=;
	b=kyt4RAOqFSgrGsRSuckjIdn05ACTe+5vYNTX8azq316FMY3p2O4Z+J3GLzfKw6tghr
	D2TvI//x2OerrHVzWOBoDGr/XqP47r8QUD7TkKybz/cR8EAbuu6lmaaBuS5jsudqsCh2
	7C8yjdQY/M3Pflfu5ei/2zemDO+K9L2uXz93rI3BuHdPCV3Grxxs0masVLzxa4pWkuNR
	NJHBpbUiQpynkdgifQtJ05ZN6G+aqTkpB8h13mD4suJD8ZgCfydGFOBwzUHTkcoxt2UZ
	ouhXtDeCsqeZCiaYsTu5tdnzoiafW7yR+EEQ3x324K/XXy/Kk+AHujWDpjz/jO7GS87Z
	8uIQ==
X-Gm-Message-State: AKS2vOxgb6xRrlOKCckybaiROsR5zl9cNzi5GSlWmqp+hrAlrk3gqh3T
	d/+FxZpUXBwq8w9PrCOPFityaSsOtg==
X-Received: by 10.223.170.7 with SMTP id p7mr4929142wrd.72.1497550796109; Thu,
	15 Jun 2017 11:19:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.170 with HTTP; Thu, 15 Jun 2017 11:19:55 -0700 (PDT)
In-Reply-To: <CADkTA4PAG8co3P=4KkJD8f+xwi77bnz4Puq3gqk9srf5nW2nFA@mail.gmail.com>
References: <674A5206CFD34D99AF67A279C9F5E3C1@PAULD>
	<CADkTA4PAG8co3P=4KkJD8f+xwi77bnz4Puq3gqk9srf5nW2nFA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 15 Jun 2017 11:19:55 -0700
Message-ID: <CAJ86T=Viis1KzQJztYbHxg5gP5enORxvJSaj4yHeFW3kbx1+XA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Is linux-yocto-rt kernel compatible with x32 tune?
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
X-List-Received-Date: Thu, 15 Jun 2017 18:20:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 14, 2017 at 11:13 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Thu, Jun 15, 2017 at 4:11 AM, Paul D. DeRocco <pderocco@ix.netcom.com>
> wrote:
>>
>> I've been fighting with this off and on for a week. If I build
>> core-image-minimal for a generic86-64 machine, I can get it to use the x32
>> ABI, or I can switch to the linux-yocto-rt 4.8 kernel, but I can't do
>> both.
>>
>> If I do both, it builds with no complaint other than a lot of bit size
>> errors in grub-efi do_package_qa (which don't seem to matter with the
>> standard kernel). Most binaries, including loadable kernel modules, are
>> properly built as ELF architecture i386:x64-32, but the kernel itself is
>> built as i386:x86-64. The result is an immediate kernel panic trying to
>> run init, because the kernel doesn't know how to load it.

Isn't the point of x32 that the kernel should be full 64bit (and so
able to directly address all memory) and only user space should be
restricted to 32bit pointers?

If so, then the kernel ELF architecture x86-64 seems correct. If that
kernel can't run x32 user space binaries then maybe the kernel config
option to enable support for x32 user space is somehow missing?

>>
>> I understand that not all packages have been updated to work with x32, but
>> the RT kernel? Is this a combination that is known not to work? If it is
>> expected to work, am I the first person to try to boot it on actual
>> hardware? I'd like to know either that this simply won't work, so I can
>> stop wasting time on it, or get some help diagnosing the problem and
>> fixing it. I'm stumped.
>
>
> I can't think of a reason off the top of my head that would prevent this
> from working at the kernel level.
>
> But can you confirm that a non-rt build for the same board works with
> x32 ? It could just be a kernel configuration issue if it does work with
> non-rt, since the -rt variant may not have a BSP entry point defined.
>
> Bruce
>
>>
>>
>> --
>>
>> Ciao,               Paul D. DeRocco
>> Paul                mailto:pderocco@ix.netcom.com
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
> its end"
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

