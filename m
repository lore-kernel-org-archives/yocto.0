Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0342BE00BF3; Mon, 14 Nov 2016 10:40:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F841E00BC1
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 10:40:19 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id g23so114635102wme.1
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 10:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=INo4wgLoCCRo5aGv8fOMS9D5ve+p2YsshiRaDXr2yoY=;
	b=rLpY+QnclVdL3DL40zzCr6H98RNDAWpZfomGlv/AHPzl82BCjE54ACgyA7ll0BZVV+
	v71wjMGEUCpev0UD/Wf6wtREvdv2PUxKwGCIhs+FHOvO3U2+ohYWCUHKDAI++yS71rKj
	VtTrftF/lwBXkWFdOVbiYL7OSinTPEOWDENezXMiRzy1dhF76uOtfO2LZMtWXIlg4uN4
	43Hvbs6RsYsfw1v25E1P/ksEfXWYdMQaYmurPyB0rzJWNXTB+4k9VYGvpl6qO1QkJ15q
	z9mcfAMsZpCY+fWD6PPp6qfymWcoICGZxnDatPlkARqhamFVXc1YGhUgmMPyud60kvGO
	t4Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=INo4wgLoCCRo5aGv8fOMS9D5ve+p2YsshiRaDXr2yoY=;
	b=PGp50rsjOH5IlGgRgDcKf8TNCqoh85DItmTDNQTzylP5cdVZZt6/Ypj7tVJoemOUFN
	KIHQMXs5uxp6l5UE7AhO6wWVjclYVbzCMazpCIZ5JUcLtUspsEZMylKI27VQnQOSG2og
	gWov8R1AjL3LBnzLNf7/xqG/3v0ntTrFSk6t4MGjeucsdUYIM9TZTzW7gq6YmZMEWQpt
	HQlKlY3L4PD9HXLitcUYaNBMoKtwDnmRxrDJKT4SNIJKYPdcBppW55mpqJ+y5cEfPybP
	lxe3nRQarAxgfWioT+vwhU/kwY2/q//9QWUch6q7v4bHr+XUWPZolfdFCo4Uie6wA/vu
	obBg==
X-Gm-Message-State: ABUngveZXF3w/BoQsrKudQ8JBpmN3rA8CRmh/AWJxZRNdUnZOKuDMhsbK1yFBo/H9iCX2qRh+IxURCfbVxBdxw==
X-Received: by 10.28.218.213 with SMTP id r204mr12077516wmg.69.1479148818782; 
	Mon, 14 Nov 2016 10:40:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.157.142 with HTTP; Mon, 14 Nov 2016 10:40:18 -0800 (PST)
In-Reply-To: <CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Mon, 14 Nov 2016 10:40:18 -0800
Message-ID: <CA+n--H9FzfDocWHVemzRj49GpAFcQ=jCAfOyP7eJhikYw+H9nw@mail.gmail.com>
To: Alain Achkar <alain.achkar@triacta.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 14 Nov 2016 18:40:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, the 2 TB is for everything you might do with an AutoBuilder. The
actual space used will be closer to your 35 GB, since you're building
only a single image / work product. People have used BuilBot directly
for automated builds, but using the AutoBuilder code (which runs
BuildBot underneath) gives you added flexibility and capability
without much additional overhead.

    -Bill

On Mon, Nov 14, 2016 at 8:13 AM, Alain Achkar <alain.achkar@triacta.com> wr=
ote:
> Thanks for your answers! From reading these links, it is still not clear =
to
> me if this might be overkill for my requirements. AB Cluster Setup talks
> about "the worker requires 2+ TB to hold all the build temp files and git
> repos. If build artifacts and a local sstate mirror are included, additio=
nal
> worker space is required."
>
> Currently, my build only takes 35GB, so I think what these links are talk=
ing
> about is how to replicate what the Autobuilder project
> https://autobuilder.yoctoproject.org/ already does.
>
> To clarify, I am not interested in running builds and tests for everythin=
g
> that Yocto already builds and tests (i.e. all the processor architectures=
,
> all the machine types, etc.).  I am interested in running one build for o=
ne
> machine type (the Variscite DART-6UL i.MX6UL arm-based processor, for whi=
ch
> NXP/Freescale and Variscite have provided recipes and layers for).
>
> I know that autobuilder includes BuildBot (this is why I specified it in
> parentheses) but my question remains: do I only install BuildBot and try =
to
> build my machine type with it, or do I install Autobuilder?
>
> On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <bill.randle@gmail.com> wro=
te:
>>
>> Also, be sure to check the Yocto Project wiki pages:
>>     https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
>> in particular, the AB cluster setup and AB maintenance links. Even
>> though the one link refers to setting up an entire cluster, I've used
>> that procedure to setup a single autobuilder, as well.
>>
>>     -Bill
>>
>> On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
>> <pidge@toganlabs.com> wrote:
>> > On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
>> >> Hello Joshua!
>> >>
>> >> We are using Yocto to build for the Variscite DART-6UL SoM which is
>> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php?title=
=3DD
>> >> ART-6UL_Yocto_Jethro_R1_build).
>> >>
>> >> Currently, developers run builds manually on their desktops. We are
>> >> considering using a continuous integration server. I found out that
>> >> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
>> >> read most of the introductory documentation.
>> >>
>> >> Would you recommend that we install only BuildBot and configure it to
>> >> build what we need?
>> >>
>> >> OR
>> >>
>> >> Would you recommend that we install Autobuilder (and BuildBot) and
>> >> configure it to build what we need?
>> >
>> > Actually, the yocto-autobuilder already contains buildbot so no need
>> > for both.
>> >
>> > If you read:
>> >
>> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUI=
C
>> > KSTART
>> >
>> > and probably some of the other READMEs and the documentation in the
>> > docs directory of the yocto-autobuilder directory, it should get you
>> > started in the right direction.
>> >
>> > Feel free to ask questions if you need help.
>> >
>> > -b
>> >
>> > Elizabeth 'pidge' Flanagan
>> > Founder/CTO Tog=C3=A1n Labs
>> > www.toganlabs.com
>> >
>> >>
>> >> What is the faster path to get up and running?
>> >>
>> >> Thanks!
>> >> Alain.
>> >>
>> >> --
>> >> Alain Achkar, M.Eng. | Software Engineer
>> >> Triacta Power Solutions
>> >> (O) 613.256.2868 (C) 613.406.6520
>> >> www.triacta.com
>> >
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
>
> Alain Achkar, M.Eng. | Software Engineer
>
> Triacta Power Solutions
>
> (O) 613.256.2868 (C) 613.406.6520
>
> www.triacta.com

