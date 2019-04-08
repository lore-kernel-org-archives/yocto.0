Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA7FE00AA9; Mon,  8 Apr 2019 11:50:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FE1EE00A54
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 11:50:24 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id y10so849921itc.1
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 11:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=btRGx0sMD9yFghzf31+t8UjAIUmTcTrxKfZjkT7Hm98=;
	b=UwLMpOe6hKQNx+gcYCxeyiBEIctIBfRJ7p7NnuB6d4C9JfBmYA1Jh1HIxc/k2yacGa
	CRdk4I18CWJvC1xWG5bR+xISDTT3JfZ8U81RKIIq8EIvxvCau27h34EmUQIReYV/LUgM
	rj13eMhJrcEISArV8/E/V/KGXta4VhYOGCcQaVy/vT3VL6daipTZdVKQWM07vJOWnLgv
	FJglIleRX6vzTPtdFgdxHkEJtM/nzRdBFpFBrTuF0SczBf8DjV8z0nZHTQ1dDmnT9sas
	uhdiyOTroSsoZ+wfNwCK0skJA9/5BuDaQrkPxiV5DJhYGZMQE4n+4N9SOoJZxwNic10y
	wAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=btRGx0sMD9yFghzf31+t8UjAIUmTcTrxKfZjkT7Hm98=;
	b=fbl0V4Q3SsyGj2lAFlPopoDnqt+RtahpfusJbUzr7CwaZ3HmgldxiUfiqaG8hyHbOG
	LrCjFh0NSVJQldAAcexhdlg0A5sUBh4Bw6DZ+IRJcmHYPPz9eZzVJE9PGCIgbLtNSPwl
	ZO4CmXE1UZVhsyl5q5/jGtjKDK5Bdn0LiDf8AlEx2zwWV4XJVCMRrw28Z+kVprijIQTB
	ObsIi0IuWRFBraAMCwhPBZQXrAIVQiAfCsPzNBOLf+nBK72rjXxtPbxPZWBQLC8MWCbU
	diHV9TqIZFDeWPSStL7tcYz0Rs5YTsGgrGIsGqL3upviF/JmoPFI6M62sMDxwMrCXrwv
	oXfg==
X-Gm-Message-State: APjAAAVobWJ4MHUSyQYsYEv8L7yyOkieVVDheet1kqUvJew4pd3UtDw1
	xnv7MiRGnF2g1Z8yK5oxfs3l0+tPji5GyPX7ALGUTg==
X-Google-Smtp-Source: APXvYqweTP8A7uXVVOu3EMOQ/+DkFLOan8gYsOFNlfUrDOBdThcRFfGSFGN8IpfJnIpocFNTVzBOvuTykujWCP8Jrmc=
X-Received: by 2002:a24:1749:: with SMTP id 70mr21921922ith.50.1554749424063; 
	Mon, 08 Apr 2019 11:50:24 -0700 (PDT)
MIME-Version: 1.0
References: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
	<CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
	<CAJTo0LbEnsy_Ha5EOHuw8cgzFxH_Kj1U8O7ZsXOje+=y_XsVNA@mail.gmail.com>
	<2b04a1ee-d0a5-8525-7707-c4ff57ca6afe@gmail.com>
In-Reply-To: <2b04a1ee-d0a5-8525-7707-c4ff57ca6afe@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2019 19:50:12 +0100
Message-ID: <CAJTo0LaJxsg56pY9Fn5DTjFP5byrd0yFpNcXQAE4x9CPhjDOmw@mail.gmail.com>
To: Karshi Hasanov <karshi.hasanov@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Installation help
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
X-List-Received-Date: Mon, 08 Apr 2019 18:50:25 -0000
Content-Type: text/plain; charset="UTF-8"

There must be if example.com can't be downloaded from...

On Mon, 8 Apr 2019 at 19:49, Karshi Hasanov <karshi.hasanov@gmail.com> wrote:
>
> There is nothing wrong with my network network!
>
> For now the issue is resolved.
>
> Thanks any way.
>
>
> On 2019-04-08 1:10 p.m., Burton, Ross wrote:
> > The better fix is to fix your network.  If you need a proxy, set it in
> > local.conf.
> >
> > Ross
> >
> > On Mon, 8 Apr 2019 at 18:09, Nataliya Korovkina
> > <malus.brandywine@gmail.com> wrote:
> >> Hello Karshi,
> >>
> >> I had the same message. I added:
> >>
> >> CONNECTIVITY_CHECK_URIS=""
> >>
> >> in conf/local.conf as a QUICK FIX. I hope someone has better solution, please?
> >>
> >> Thanks,
> >> Nataliya
> >>
> >>
> >> On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov <karshi.hasanov@gmail.com> wrote:
> >>> Hi all,
> >>>
> >>> I have followed the
> >>>
> >>> https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
> >>>
> >>> when issue the "bitbake core-image-minimal"
> >>>
> >>> I am keep getting this error:
> >>>
> >>> ERROR:  OE-core's config sanity checker detected a potential
> >>> misconfiguration.
> >>>       Either fix the cause of this error or at your own risk disable the
> >>> checker (see sanity.conf).
> >>>       Following is the list of potential problems / advisories:
> >>>
> >>>       Fetcher failure for URL: 'https://www.example.com/'. URL
> >>> https://www.example.com/ doesn't work.
> >>>       Please ensure your host's network is configured correctly,
> >>>       or set BB_NO_NETWORK = "1" to disable network access if
> >>>       all required sources are on local disk.
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >> --
> >>
> >>
> >> Nataliya Korovkina
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto

