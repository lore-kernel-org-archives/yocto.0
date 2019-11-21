Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16D23E00DB7; Thu, 21 Nov 2019 13:14:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EC6BE00A9A
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:14:22 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id z10so6126905wrs.12
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=VGeyRMwzn9xgCHm04bnkf753Uq/HMdgrsCLJxPXgEDU=;
	b=AzCGcNQrM47NxJabF37T2YYJJApUte7QCAAV8Jm0SpxEGTvUZ706fM/vSi7GAQNyX1
	67DVsxNyHtObqgS8ZAJBo/prz1K/0CCh+M1DlX9ur8jcU+lxHXaQcOEp9IHRiKKri+7I
	t27NrAw9HfaX/oYFt6qdWZ997A1ph6qSj7WP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=VGeyRMwzn9xgCHm04bnkf753Uq/HMdgrsCLJxPXgEDU=;
	b=iDRQ0C4pA+qp8b8A/z1dXPr07iz0EfhxgF31WGPtkuFE+Njxi1JaMbt5R7HIMD2Zkm
	rfpFrqAcPp5X6OrJAvQoGNFXndOzM/pV85u8C5WaDJURxdwhyUB3Zc/CwyYy0X6iWzlr
	cWwcU16pQymQbOQ2+tDuMf5eZIFaqXrNI2cPba49vX+xFbcbvwRoMJ3aS6IR3trHXafn
	afsICt5pKzEORMpdWuQIzIqIFIeafWk1l4PrnUiJrN4lfpo+Pt0uoQi4j6KuPPTNxI/B
	XiNMp3BjGHvdrRIrg91P9oYQTqTW13b8bVIvwpoKTctq6yBDsyt3FqgTe9G7uou8VYY+
	Rexw==
X-Gm-Message-State: APjAAAXnyB+/KgyMWA+iHazq7IdS4UGP6rRRL3VFhy3sBwIy86SGHl/K
	L+GDpvRiLsybMPnTLcWAKPeQRA==
X-Google-Smtp-Source: APXvYqxjkTr/o/Rrw4dYJ0X3wTjRRG5slJNNC7uvTru6Hrta+8dTFVGHGum0VqPwoOIU+N6vauipkA==
X-Received: by 2002:adf:fdca:: with SMTP id i10mr13957167wrs.356.1574370861646;
	Thu, 21 Nov 2019 13:14:21 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	h16sm4664586wrs.48.2019.11.21.13.14.20
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 21 Nov 2019 13:14:21 -0800 (PST)
Message-ID: <8718f67e43e75680f066d1249d59eedfc4d87e97.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>, Kai Kang <kai.kang@windriver.com>
Date: Thu, 21 Nov 2019 21:14:19 +0000
In-Reply-To: <2392384.1fjsgAbKtY@shodan>
References: <alpine.LFD.2.21.1911211401001.10307@localhost.localdomain>
	<1be248c5919e879aa09f544c702ae548cc34a83d.camel@linuxfoundation.org>
	<2392384.1fjsgAbKtY@shodan>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is there a rationale for YP using sysvinit as default init manager?
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
X-List-Received-Date: Thu, 21 Nov 2019 21:14:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-11-22 at 10:08 +1300, Paul Eggleton wrote:
> On Friday, 22 November 2019 9:40:35 AM NZDT Richard Purdie wrote:
> > On Thu, 2019-11-21 at 14:02 -0500, Robert P. J. Day wrote:
> > >   don't get me wrong, i have no problem with that, but a
> > > colleague
> > > asked me what the reason was for using sysvinit as the *default*.
> > > i
> > > hemmed and hawed and suggested it was for simplicity and
> > > reliability,
> > > and that a lot of embedded systems didn't need the flashy
> > > features of
> > > systemd, and so on.
> > > 
> > >   is there any short answer to give to that question?
> > 
> > The project existed before systemd and we haven't changed the
> > default.
> > 
> > We can change the default, it just means someone going through and
> > fixing the build failures it generates and rewriting all the test
> > metadata to invert poky and poky-altcfg. Personally I've got other
> > things I'd prefer to do...
> 
> Kai was working on changing this in the last cycle but AFAICT not all
> issues were able to be resolved in time. Kai, do you have a status
> update?

We got so far and after looking at the position we ended up I decided
it was easier to switch poky-altcfg rather than change poky and/or OE
defaults. I resolved that bug as "complete" as we now had testing of
systemd on a near enough equal footing to sysvinit which was the
concern people had raised. There are problems in oe-selftest and some
other corner cases but nothing people seem to be running into day-to-
day.

There has been representation at OE meetings, in surveys and from YP
members for us not to switch the default FWIW.

Cheers,

Richard


