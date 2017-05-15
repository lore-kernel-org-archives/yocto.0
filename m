Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BF77E00B02; Mon, 15 May 2017 09:00:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9903EE00901
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 09:00:17 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id y201so100652146qka.0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 09:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6dTEy5yfNTTGDkEZoox+NJkU3oA02O4NzNQJo6/1DR0=;
	b=KeKJj5n4jl70BpD1PW55dkZliR72jFe9hPVnoR8APnWYE4tGb9LzkqeDWkkVoDOqFH
	87zRStDjVMUAYDH6cfdvku+nECCwefjL3YjKR0NpiYa1DvR4q1gylAsqZ3b3mnjyM9dH
	RcjHsW/BrvlSZO7Hb6YQbcQRBrw5aSEW5xFuwAzDkQs6a28BSAYI7jKzjSjk8S5JPR+4
	JcT08MlzXXu7FyNNeIWDnLqFABg+pbi6vPPefY6ed2rPAauFDUODV0670uPAuegXfMvs
	nCjrTj5hbmGjgb46LSzPVKbPQleHupPnRuJLJMCGoaeqr4yE5/aY3I96ATh2P0C1OoHM
	sGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6dTEy5yfNTTGDkEZoox+NJkU3oA02O4NzNQJo6/1DR0=;
	b=qEwpi3grW8g6lCOJ8uPYvWb6hJsFbwIATP3UT/QNtwFehXHDd3gXEMdLy7vbqHBYGw
	+Vp1ymkRwRZv56BrtKAwHF95r/DRmyXpEzgDloN5t0hRtVq1BJU6NdpM5kc4shZTXDK/
	5Bn/V+JuX56gEwpCW1RFTl2114Ch2DpRBy6YF/DHZypC6cojX0Z7NmMITQqSZnbNvWSg
	B/qpVHblzLrOPlNthsoCYEjoidpNWFQICJ8tNMbab7YYYkIcLGvsWPxfusSpbqhp7s29
	pDaOuBXkJ0FzyWL3jlAK71dVdbLa0saP7ECHythUzYTyG/dq59OSHL7rBaVOSlpSTSMZ
	71Iw==
X-Gm-Message-State: AODbwcA49jHQj+eJYdAuy8/vW9V6VOVw7Qha52E3INl5RurRJBgmKnGQ
	pEuXlNAdsU1/eaWGElA1VXt79BXHqQ==
X-Received: by 10.80.137.56 with SMTP id e53mr5372959ede.67.1494864016739;
	Mon, 15 May 2017 09:00:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Mon, 15 May 2017 08:59:46 -0700 (PDT)
In-Reply-To: <CAPyrkgxZjwcX0h9KgWDi-uxRbp2k-bGpox00YP66soQz4mSiAg@mail.gmail.com>
References: <CAPyrkgxZjwcX0h9KgWDi-uxRbp2k-bGpox00YP66soQz4mSiAg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 May 2017 08:59:46 -0700
Message-ID: <CAMKF1sq=qdb4gp25+XYnatYmU-p=-m0rDWip7=LrCZoaCcS0BQ@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Pyro branch
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
X-List-Received-Date: Mon, 15 May 2017 16:00:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 15, 2017 at 2:14 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> Hi all,
>
> Yocto Project 2.3 has now been released so I think it's time to create
> a pyro branch for meta-raspberrypi.
>
> I've briefly discussed stable branch maintainership with Andrei and
> I'd like to volunteer as maintainer of the pyro branch. That should
> spread the workload out a little bit. Does anyone have any thoughts or
> objections to that?

That would be good.

>
> Cheers,
>
> --
> Paul Barker
> Co-Founder & Principal Engineer
> Tog=C3=A1n Labs Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

