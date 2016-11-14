Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3839E00724; Mon, 14 Nov 2016 07:10:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 862F1E00724
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 07:10:29 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id g23so16191138wme.1
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 07:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wNcE2B0AGK1I4eCPemYT4L+xS5oaDk+wurmjquGYdkQ=;
	b=04SMDqxkayTBbNP3VA+4gSurw/fDjMYkisPEiWG1E+VojGnKgC9kNnZjcshg/jyiCh
	wcsXMqMp4htODW77IOsbGrTXzX+TDR48SXKkrk6LNZP8FU2wKlaOe17z6SYejcy8qPwt
	PecZHtwcem0Q75Wh8BJy+RWb81k5dLGjN5VeuEY+GGTQBdWkm3ZeuxZbrNgr8gToupus
	hhtqDOD7D2h8vezrqmN5KN9dVj5KdtMwOjQLkwWUc+r+Uh3L+W87OF+5eGJbFOUdF+8E
	AyjG8TIbagf6jgJQvj3mvwvyY781Bgd7UpeAo93t7aSqxEr3OOaFlLUOdGzsSnpHTmTu
	8nTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wNcE2B0AGK1I4eCPemYT4L+xS5oaDk+wurmjquGYdkQ=;
	b=QhwZp1Sg64vm2S8O1Ne3ixgj9cuJ6eniAPs9ZoKTVViCsNfB/10RPlzBe4NV9dINw+
	mTP/fNbaZeCYmIYX1NvY+LYfL7UHKp0sFIN7nL9J63Y6mbdFIuu1fv6Z405SKJtF5g1e
	ART9hwIZGq8/s71bUI1oJHSnKQRrYj1EMByZmRQelCK3tx3gGVPfQSe/Hy/yYPc430dD
	SSYSnAQrpTlmEVYtffMRiCF62+SiRdbxbQtBrABgF7BfgPNWeOclATYrFmtzJ4pswBG9
	xVJm6eRiSWN0MH/rI40EknHSdib7mGHx+q6P1rhEXIyo3h3r3/jFOfaIyfNshERG91sn
	mTow==
X-Gm-Message-State: ABUngvdDmdVNvpvm2OJoIaOb/bQqFtbbrH4eFGn9FmGYJgB0Fik1nimJXv5R0Y+RPMe/me01QiB1VilamCGtZQ==
X-Received: by 10.28.17.205 with SMTP id 196mr10611209wmr.78.1479136228753;
	Mon, 14 Nov 2016 07:10:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.157.142 with HTTP; Mon, 14 Nov 2016 07:10:28 -0800 (PST)
In-Reply-To: <1478889473.18810.3.camel@toganlabs.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Mon, 14 Nov 2016 07:10:28 -0800
Message-ID: <CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
To: pidge@toganlabs.com
Cc: Alain Achkar <alain.achkar@triacta.com>, joshua.g.lock@intel.com,
	yocto@yoctoproject.org
Subject: Re: Buildbot / Autobuilder / custom?
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
X-List-Received-Date: Mon, 14 Nov 2016 15:10:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Also, be sure to check the Yocto Project wiki pages:
    https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
in particular, the AB cluster setup and AB maintenance links. Even
though the one link refers to setting up an entire cluster, I've used
that procedure to setup a single autobuilder, as well.

    -Bill

On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
<pidge@toganlabs.com> wrote:
> On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
>> Hello Joshua!
>>
>> We are using Yocto to build for the Variscite DART-6UL SoM which is
>> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php?title=3DD
>> ART-6UL_Yocto_Jethro_R1_build).
>>
>> Currently, developers run builds manually on their desktops. We are
>> considering using a continuous integration server. I found out that
>> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
>> read most of the introductory documentation.
>>
>> Would you recommend that we install only BuildBot and configure it to
>> build what we need?
>>
>> OR
>>
>> Would you recommend that we install Autobuilder (and BuildBot) and
>> configure it to build what we need?
>
> Actually, the yocto-autobuilder already contains buildbot so no need
> for both.
>
> If you read:
>
> http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUIC
> KSTART
>
> and probably some of the other READMEs and the documentation in the
> docs directory of the yocto-autobuilder directory, it should get you
> started in the right direction.
>
> Feel free to ask questions if you need help.
>
> -b
>
> Elizabeth 'pidge' Flanagan
> Founder/CTO Tog=C3=A1n Labs
> www.toganlabs.com
>
>>
>> What is the faster path to get up and running?
>>
>> Thanks!
>> Alain.
>>
>> --
>> Alain Achkar, M.Eng. | Software Engineer
>> Triacta Power Solutions
>> (O) 613.256.2868 (C) 613.406.6520
>> www.triacta.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

