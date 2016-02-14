Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C80B2E00C1D; Sun, 14 Feb 2016 07:18:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D0B7E00ACF
	for <yocto@yoctoproject.org>; Sun, 14 Feb 2016 07:18:17 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id y89so95646000qge.2
	for <yocto@yoctoproject.org>; Sun, 14 Feb 2016 07:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QxdXpVyqGgyB0ygvek11ApUf4nQseamrUUr+F+H9kVU=;
	b=tF8RY4Y/XkjA7PpgenG8OrKmV6tjKr3nEfH3++fTI2ug3Z/Hnto8J3Vhcf6ZKhSnzV
	oxwsjhKQ6UuBbF9k5a6QtXclzD4PECAPJt+mb4ItXSZfLGdwjwh9qFc4tdhcWnvhU7AV
	F1I1fQgIQ5ypQfJFJIi1GVCCBBuhnjp/5BvmxQSHLdyJuXxuFPUY/ZUOtsaaht85IYxj
	gmwbt06ZodBGAx+1s2RwTum2aONlg0kmYBGrHFoqbf2susSaZ56/o40QZkpRyvI9vNYC
	AO4WInEYMihduFA58Qoi/XuaC7bivBA+O/klKLgwbSy7Ke8byx2pXFV+mUrsOMJ4FSpT
	nIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QxdXpVyqGgyB0ygvek11ApUf4nQseamrUUr+F+H9kVU=;
	b=Nqi3OAozGTHXKRIgTaKqQTaH+iJidIq+9WnHOccG/sEjtEq5JqSEP3q53MDtv9lDG/
	3UG9ZyszzExen8VzmMzWNIXfbRA0v05dHAagLCkFaTP88jfcAhWadpXUzR3W6rd9Gryi
	idzHm2EHhOSpUckRvY9mbVOt4hyALZiQ4yd0G6m2IKcac9Q8i6KyK6ocAF5cCFNxDBrF
	V5rSPA5ekpG0RIhLPPRi2tST0BaWet48Re1XAUe/CEv57ArA/mxbi7pMhF/FO5Bt5sgU
	V3pDPcRdbm/3C6ZjBhCRweu2N62Lnia2jjq0SmB3i/ZkGVgpY5v3X+h5GuKNzQ8GlKzZ
	HHCA==
X-Gm-Message-State: AG10YOSt/0L8zRdSWDuBeuzZPtkdbAZdVU8NMIewmXS5Jc1f/IGwStxNzruaKQzI695o8ahuBN8lsL6KTEMBbw==
X-Received: by 10.140.94.198 with SMTP id g64mr15016139qge.57.1455463095533;
	Sun, 14 Feb 2016 07:18:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sun, 14 Feb 2016 07:17:46 -0800 (PST)
In-Reply-To: <1455445493.16142.384.camel@linuxfoundation.org>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
	<2ABA8704-6F76-49C0-8DD4-8C74295CF4EB@gmail.com>
	<1455384501.16142.372.camel@linuxfoundation.org>
	<CAMKF1spdna7gtQvgAR7KH584G4xj-DV8PzVrWYKRsvfnVfiQ-Q@mail.gmail.com>
	<1455445493.16142.384.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 14 Feb 2016 07:17:46 -0800
Message-ID: <CAMKF1spk19o2ZMmc5T7efGEpHTW-8hkUHgE04r=WDJeqPBhHpg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Nick Leverton <nick@leverton.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Sun, 14 Feb 2016 15:18:18 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 14, 2016 at 2:24 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Sat, 2016-02-13 at 10:12 -0800, Khem Raj wrote:
>> On Sat, Feb 13, 2016 at 9:28 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>> > On Sat, 2016-02-13 at 15:30 +0100, Jens Rehsack wrote:
>> > > > Am 11.02.2016 um 15:32 schrieb Burton, Ross <
>> > > > ross.burton@intel.com>
>> > > > :
>> > > >
>> > > >
>> > > > On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org>
>> > > > wrote:
>> > > > Possibly a little early - Debian 7 will be going onto LTS
>> > > > security
>> > > > support for
>> > > > two years, starting some time this month.  Quoting from
>> > > > https://wiki.debian.org/LTS
>> > > >
>> > > > Ah yes, I'd forgotten about the LTS project and was looking at
>> > > > the
>> > > > security team.
>> > > >
>> > > > This does make it less clear, but it's still an old release and
>> > > > we
>> > > > can't support/test on everything.
>> > >
>> > > Sure, but are there some serious/expensive maintaining efforts
>> > > continuing support Debian 7?
>> > > Or is it an approach to kick Debian from list of supported
>> > > distributions for (above?) reasons?
>> > >
>> > > Since I run some build instances on a Debian 7 machine which is
>> > > not
>> > > going to be upgraded that
>> > > soon (don't want Debian 8, but don't want to reinstall from
>> > > scratch
>> > > and migrate my Xen VM's ...),
>> > > dropping support for "it's just time to move on" is more a
>> > > Desktop
>> > > philosophy, not for embedded/datacenter
>> > > approaches ...
>> >
>> > For example, we'd like to use the sparse option when building
>> > rootfs:
>> >
>> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=9099
>> >
>> > This support isn't available in the version of dd in debian 7. Our
>> > options are:
>> >
>> > * Build a dd -native
>>
>> For core feature like sparse files its better to control our own
>> destiny and use dd-native regardless.
>
> There are certain core utilities which its very hard to add into the
> dependency chains correctly. With xz, I recently gave up trying to get
> the patches right. I'm sure it could be done, it didn't seem worth the
> effort though. dd and other coreutils fall into the same category, very
> hard to get right without races. There is probably a redesign of the
> some of the way staging happens needed to make it work and that is a
> low priority right now.
>
>>  But that does not mean we should
>> not drop debian7 or arcane centos distros that we keep supporting for
>> ever. I still see patches for centos 5.8 in metadata.
>
> We did retire centos 6 recently (qemu wouldn't run there correctly for
> any of the automated tests).

ver good. we can remove

fix_for_centos_5.8.patch from glibc
meta/recipes-devtools/apt/apt/0001-fix-the-gcc-version-check.patch
meta/recipes-devtools/apt/apt/0001-remove-Wsuggest-attribute-from-CFLAGS.patch

>
> Cheers,
>
> Richard
>

