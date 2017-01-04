Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C49DE0043B; Tue,  3 Jan 2017 19:01:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92C7E003DB
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 19:01:37 -0800 (PST)
Received: by mail-ua0-f176.google.com with SMTP id y9so8812043uae.2
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2017 19:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=g2XgqoUu0lU0nK1ZJXhS5Lf19SNOqnt7SB2pWmACpIk=;
	b=BbmODtp0qIg4s/fyNx1+qL1DpP4eSjlkLUjqDbqFIBTfrBdgS/SGqsGZeN2bSF8DDU
	LAT7Zz2COyunUTdtZSDZ0yuPRX9rolJU7siHvr2hFbHJjcyvceiVcYR6RoYoyekZZzMr
	f2FZdc3AFbrHIu521qGve6HcxeCo87HIY/8TnGPMji0DGiuFzi+r0iAhEI5SXlc4Gad4
	8DZtKRf6uaEl9gZeWlX3/cNBa4GSNwO5HEjdbmGW4aoIVujNsLOw2JRRRkmaaMPuNifc
	s4FAbuuHJJEDfWyn4JFTee6l1L3xvvVProu4BX2B7VG/GPAfvbEg/mHZ5Z9s+SFORp4t
	H6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=g2XgqoUu0lU0nK1ZJXhS5Lf19SNOqnt7SB2pWmACpIk=;
	b=Mt1dfFPB6UFcgg3c5jr1v/vHF7WLmdEG2vIv+IXwJM+UPu/EgyZZJVeDR4DXHdUxOC
	baW6kAGS8IFiX//jpoUAuqR51X6n+WnReBD8xL3Cv5hoCWhydDVGLGjx1l9kVjHHxT52
	TgH1nPgCFwU3NM5DURNCMIyiNkBOR7jJE0inIQSEwOiYdnrcS+ADFUE1QK3Iw1efh99o
	1kzrh9+xXVcWhQDFiXOqJNaUYdTdbt/FKZkK4lMwAVrRjVboWukrhS+JWIC6HHnYnVcv
	nVR0NqloU8HIzw/zzFFy9+RiEO40Q3ILV/XrtQa9GWisGEJzpeFGJXxL156BzpdnSUJP
	1IdQ==
X-Gm-Message-State: AIkVDXIPUq+Gucsoq+70x9IeF3p78PLy7h98W0c/irkJk7V8dS5TzVAn+A0YjGmrY4kYHK20rMgsyj6lVggeFA==
X-Received: by 10.159.37.227 with SMTP id 90mr48066178uaf.67.1483498896985;
	Tue, 03 Jan 2017 19:01:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Tue, 3 Jan 2017 19:01:36 -0800 (PST)
In-Reply-To: <CALbNGRTSd1DWt_kK6esOjBT0HFqRVjcgwvJ+RRyXKs6q1vX83g@mail.gmail.com>
References: <20170103193831.16829-1-twoerner@gmail.com>
	<20170103193831.16829-2-twoerner@gmail.com>
	<CALbNGRTSd1DWt_kK6esOjBT0HFqRVjcgwvJ+RRyXKs6q1vX83g@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 4 Jan 2017 04:01:36 +0100
Message-ID: <CALbNGRSjfwYLCMAgzFHbezZ49or4G6pELoE_jRrJDE0Gk94O=w@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-rt: add
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
X-List-Received-Date: Wed, 04 Jan 2017 03:01:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 4, 2017 at 1:05 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Tue, Jan 3, 2017 at 8:38 PM, Trevor Woerner <twoerner@gmail.com> wrote=
:
>> Add an -rt kernel option for Raspberry Pi that includes the FIQ patch wh=
ich
>> adds stability to the -rt kernel (with full preemption enabled) and is a=
n
>> improvement to simply disabling FIQ on the kernel cmdline.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> I played around with rt-kernel too but had no solution for the crashes
> so far. Will test soon and hope you are my hero..
>
Have a rt-kernel on raspi without crashes. FIQ patch is it: Thanks so
much for sorting this out!

Andreas

