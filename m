Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FAB4E00563; Wed, 21 Sep 2016 13:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.179 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD862E00509
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 13:43:41 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id i129so74898566ywb.0
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 13:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YMGNVjsvJKNxHtXTxCU+MmZujSOR8tbx6IUWzjJ1bOs=;
	b=xqEhg3shLDLmu+PCGZWzoOSiyRlM+d5vuj70fYJY9dOAE86g3a895zxqGsKu47+gbo
	R4agkwwEAWltFLiiXHB9i5Q+NyI+SBgxcraAOq6VrpR42FF+FR4xoaUswtbfljL6e7iC
	MJVpGA/RaT2jGKNW0gaz4F25vHGDp9LcsxVuv54qSxMXBb0PG+hICFm1d5W/bbR6wRST
	TsTTv/1maxhmSp+Gzbx3dFXAUUJRO23x/xQajbjrI8UtPg7rfRJMIlqG9Hl+736DqYep
	TAD533A+rojsYydcgvZf78z9w8izAWLfB6zIAteVEEHDYzHNZa69Q9XPgcB4mcRQk4Mz
	Tf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YMGNVjsvJKNxHtXTxCU+MmZujSOR8tbx6IUWzjJ1bOs=;
	b=iKGNiFIIu1b1CuHioepxzo27mWycWZMbYJrIzCCuC1xiIPQMh9Kl4bQNLnE3W4wX9r
	kMyoZdQmd7/uGazGSj53MfWdaP3IcQETpg2bHq2/GJSuqNDDjclPea/0H6anZ/xqk3AT
	dIo3OKTEG/ln/Yub859/676X17/GHBmqPuk/72Bc41uRhvXq4y+pblwwCQpghkW1hW2P
	MW1y1jjibI3tEJROTjHbhLH5RbIu4nprrqJ1gex962CEItgAsxGgedSFR/+4HZ7TM+qL
	eZeGAQt7nch9Wle9EDA9p3YudfkE3AYUXNd/RAJmhz2hWHtIt/M/wMB0l9OTWMXnq9om
	2pgg==
X-Gm-Message-State: AE9vXwPc+jUd40p5+uxrh6x5YxmmRcL8IhC72jYs0fBT8AHBlJHvywtPlAXnuEKdt0zqOp1g/afd6qkYxixAtA==
X-Received: by 10.13.225.211 with SMTP id k202mr31818735ywe.322.1474490620753; 
	Wed, 21 Sep 2016 13:43:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Wed, 21 Sep 2016 13:43:40 -0700 (PDT)
In-Reply-To: <d737a38e-82c3-5f54-b8d6-1ec3b3bbc748@balister.org>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRQCiSe317HT8es4NjWhjOFiyr-nB2AcMWBoUR3MxKU8aA@mail.gmail.com>
	<2136602.cfMx8aiKfc@peggleto-mobl.ger.corp.intel.com>
	<d737a38e-82c3-5f54-b8d6-1ec3b3bbc748@balister.org>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 21 Sep 2016 22:43:40 +0200
Message-ID: <CALbNGRRp_DL3C84wj3c3fyNnr7k-+yE=w_x-GC9_CFW7-O9HXg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 21 Sep 2016 20:43:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2016 at 7:05 PM, Philip Balister <philip@balister.org> wrot=
e:
> On 09/20/2016 07:29 PM, Paul Eggleton wrote:
>> On Thu, 25 Aug 2016 18:14:23 Andreas M=C3=BCller wrote:
>>> seems layer list update is broken again e.g I am committing on
>>> meta-qt5-extra regularly but last commit reported is one month ago.
>>
>> OK, finally we should be back up and running with updates. We're still f=
ixing
>> an issue to do with registering new accounts but that too should be sort=
ed in
>> the next day or so. Sorry about the delay.
>
> I'm working on PyQt5, does that belong in meta-qt5 or meta-qt5-extras?
>
> Philip
>
> PS: Checking commit og in case it is in -extras already :)
I'd prefer putting them to meta-qt5. There they are under the quality
hood of Martin's world

Andreas

