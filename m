Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC63BE0108F; Thu, 25 Aug 2016 09:14:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A4DE00DAD
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 09:14:25 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id l94so29254470ual.0
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 09:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fNb+PzFjyKHVGTRtmmG+l1d/oNKB8C+sKvegQD1OfYk=;
	b=pGUKYKjNdMRmgg1zLZlTU01LkjMO21zLZiR8q1r5l9umEg458FVsIlHwpPCBIQ9U2G
	IEbaDIzwt1Gl1xjO8QBfJQ1jcLdzBkiYZnwMTl59E30iO6/SPsM4O0/oIq5t5Gewd3tF
	dQErKXTWfIVh9nWjtKq/rvLp1i4miwfsAMoSGtB7gJwSXzhWleXUtVpfAxb1NFk078MV
	sXRP+QBfT0ycRX/ZcUsY3+mFnvN33X20EOa5y1HWJnaSoCrebC+3lE8k00JiFiltjXA/
	sLjBjPYul3aPb8FR9XTW6LZNtYhNpWVw/aAmUYRMMqQmKY8ppWL4/SUSS09g77AvNLHJ
	1+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fNb+PzFjyKHVGTRtmmG+l1d/oNKB8C+sKvegQD1OfYk=;
	b=OhEvGs6/z7uH2YKc/IuQoNozDTW+1lOWkSx7L4ziJpJ+MuwQXfWZ/qGcqp1/Xn6NOs
	OwyY3GVwRworqLsWDkqvtGnBvrZkIqdnwmibWfO8f3Ktn6z5+GOkoXyNBlpie7z3aUEZ
	RibcMWn0qrZ/ZXt731zuc2Qolgqa+xnqaAXwh+1iBs5dZM/j2HHriPKBp12PD255djxD
	KKNetheVLDM6br+q3WBCAVwNY/CUOTJ3cANaPrpcGv7LAeH1FZrDw13hO0npt8fxm/Nf
	OCeC03avoNN/c5DJPGux3rLNW+cAGn0H59pTGfRStNAp4whIuB7OmIBe33bKFElAhZXD
	6kqA==
X-Gm-Message-State: AEkoout+opfP744RDYqpYjFja3h/KBBJ2oxUlO6NzSudVDH1UwQzoo41XbpzupaBarW8sthKQik2uoSKzO9sQw==
X-Received: by 10.31.21.4 with SMTP id 4mr2134325vkv.135.1472141664311; Thu,
	25 Aug 2016 09:14:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Thu, 25 Aug 2016 09:14:23 -0700 (PDT)
In-Reply-To: <1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<CALbNGRSJKT+9wSKE-mSZbeEo4bWpw3XfpBnpenP7vSvtkMXFqg@mail.gmail.com>
	<CALbNGRRL6-9S_a3r-R=Qtv+_yUbYEW2spNz_v7YT4cPuoy6k1g@mail.gmail.com>
	<1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 25 Aug 2016 18:14:23 +0200
Message-ID: <CALbNGRQCiSe317HT8es4NjWhjOFiyr-nB2AcMWBoUR3MxKU8aA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Thu, 25 Aug 2016 16:14:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 13, 2016 at 6:00 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Fri, 19 Feb 2016 08:05:09 Andreas M=C3=BCller wrote:
>> On Wed, Feb 3, 2016 at 9:06 PM, Andreas M=C3=BCller
>> <schnitzeltony@googlemail.com> wrote:
>> > On Wed, Feb 3, 2016 at 8:10 PM, Paul Eggleton
>> > <paul.eggleton@linux.intel.com> wrote:
>> >> On Wed, 03 Feb 2016 14:41:42 Andreas M=C3=BCller wrote:
>> >>> FAQ for layerindex says recipes are updated every 3 hours but I thin=
k
>> >>> it does not work. E.g meta-oe geis/grail/frame are not mentioned but
>> >>> were committed few days ago.
>> >>
>> >> I do know there's a problem, but I'm honestly not sure what's causing=
 it.
>> >> Unfortunately I don't have time to dig into it now but let me see if =
I
>> >> can resync meta-oe at least.
>> >
>> > No need for manual update - it was just a heads up. I was not sure
>> > that it is a known issue.
>>
>> I checked in history:
>>
>> meta-openwrt added 4 weeks ago is the last layer for that was
>> analyzed. meta-cpan and all published after that were not analysed
>> anymore - they are reported having no recipes.
>>
>> As this is a strong tool I have at daily use: Is there something I can
>> do to get this working again?
>
> So, it was a long time coming, but I finally figured out what was going w=
rong
> at least for some cases - basically, newer versions of GitPython actually
> recognise renamed files instead of treating them as an add and a delete, =
but
> since I didn't know about this change I didn't fix the layer index code t=
o
> accommodate this. With the recent layer index upgrade to support Python 3=
 for
> master, the fix for this issue was also applied, and each layer is also n=
ow
> parsed in a separate subprocess which should finally take care of memory =
leaks
> and any other rubbish being left behind affecting parsing of subsequent
> layers. Hopefully we shouldn't see any more of this type of problem again
> (aside from actually broken metadata) but as always please do let me know=
 if
> you see anything strange.
>
> Cheers,
> Paul
>
Hi,

seems layer list update is broken again e.g I am committing on
meta-qt5-extra regularly but last commit reported is one month ago.

Andreas

