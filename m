Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70D5DE009BA; Thu,  2 Feb 2017 09:01:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.45 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21BD8E009A0
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 09:01:36 -0800 (PST)
Received: by mail-vk0-f45.google.com with SMTP id x75so15033073vke.2
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 09:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7PpFez0LMvB8AIc/BlkXPgCHUpLbureJLEY0KjR89Mc=;
	b=EzdYgR+KP9rwpTbFCVaVlfe+C8YcQxh1s5MVi3CfB3yj6YSzMFXr51SYME0gB+71hK
	KgWLlJi3UxPd4eVRRxGjmTdBsttmqDDM0DDQp3G77HQbJtXge/V7I8vdpOjzmWpwukPB
	bJbFTUkh+ZkgIZ/FQFRQhwk9OPMbZowtR/JyLrpyNs2v/TECwMyh/sAI4Tv7vuWCQPll
	BaF20nAAi7X9S2zDQdAmPmID0vIUwJ4IyUd0gHz0jcFVEsMI9KUkprM6YZ6QZ7pUMImc
	6KiuRyTF3kOiumdtsh9E3G6jKTtZO/OL4OGm8lxgCtUPAORzZ+eWZu1+MU2fKLoF2mio
	dCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7PpFez0LMvB8AIc/BlkXPgCHUpLbureJLEY0KjR89Mc=;
	b=RSjYKluVNte5Aorn7iQIiULJiyoa12N8H4WGlxveiZ4YlpkKUKDRKozio/E5KW5BNk
	k0ot6p0jdk9MFP9rfbOnoeS6rSaK2Z0plzACcjhFCMcKMn6bOvd9pPE9D0F92wUxxTzB
	sM1pRDMfkSk8IBaOCn9tiBeN6pKRdfcv8kQGXZXudCsPpAd/xX78u2fZLL6d14QUhVTY
	hU1adfer1Ww6IzM1mxwfx2mY9H3GZGqD3SF4oWDzrdaEm+Ih2PQLZMtkwCRU+WsSIS8V
	YaunIdHo3x8AJ35wx0ZgKiCsxRiffPAQ+jYPq1NZ1SmPLu7d6WPI5LVkBDQfqRuhrUzf
	9T4Q==
X-Gm-Message-State: AIkVDXJ8E6o9xnKJ8zPeJZ/L4KoNOOoZfxvdPxIDCjacVomsekSGvH3GuCBL8qS8pjmPUsOiW0krbyN7n0DUmg==
X-Received: by 10.31.155.75 with SMTP id d72mr4381010vke.55.1486054895884;
	Thu, 02 Feb 2017 09:01:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.91.68 with HTTP; Thu, 2 Feb 2017 09:01:35 -0800 (PST)
In-Reply-To: <20170127074456.04009ae6@host0.betafive.co.uk>
References: <65082de4-2ba6-3b18-1845-00b2d637404e@balister.org>
	<CALbNGRSrXLdfUK3U2bXr20P+fFm4ROArGPRi9Ag=AhXbGjUv+g@mail.gmail.com>
	<bbd8fb9d-8215-c73f-f4aa-b20523291ec0@balister.org>
	<CALbNGRT_H_Vz8b6vcfgJGWYEyVw6og4+zKmLjLZ6P+2O0oY6eA@mail.gmail.com>
	<20170127074456.04009ae6@host0.betafive.co.uk>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 2 Feb 2017 18:01:35 +0100
Message-ID: <CALbNGRSfQrD7us3NCnQt5w56NfEeTwLAPANHKaBLG54Zrg_fmg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Openembedded-architecture] [OE-core] OpenEmbedded Stand at FOSDEM
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
X-List-Received-Date: Thu, 02 Feb 2017 17:01:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 27, 2017 at 8:44 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>
> There's 3 of us from Tog=C3=A1n Labs who'll be able to help out manning t=
he
> stand. I know I can do all day Saturday and up to about 4pm on Sunday
> and I'm happy to be at the stand all day (with the obvious caffeine
> breaks!). Let me know if you need help setting things up and what time
> you need people to turn up on Saturday morning.
I try to be there at 9:00 (have ~3h by car) - anybody there then?

Andreas

