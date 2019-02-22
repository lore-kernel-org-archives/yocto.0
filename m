Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0595DE00CAF; Fri, 22 Feb 2019 09:32:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4591DE00BE8
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 09:32:29 -0800 (PST)
Received: by mail-qk1-f178.google.com with SMTP id x9so1629821qkf.0
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 09:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Uw3XDuoJqBLwfp+rgXjLpsZ9IwKdToRb8ESMMUPf6vc=;
	b=Cu6DM36tK/av19R84Mxya85q8dTzbGXVxczXrwLQA+fLkLhDK1V32D8OBxVJwNChqQ
	CYBRbzgH4jFTGhu2eQSkZJjBREairsH5TmdNdl0PAz405hA5/AS2+MM9LmqqZYotSJix
	lxdPuzy17e/KtPdL6kqpMG3HsZIY8U/S2huAUclOwYInt29Jln+iKvhwSD92nr1RPKN2
	0fsEOodK3PnCEC985PV/ayWQUcqSFxgEnHqYr450n6GxNZ5BlzkMURXpK8PF7iuSkiYg
	V49ysJ21XWKWQzZol9hIV0JJWMz03Ir26EzNCMS0qz5q1EyVfseWEoH7dlSeVDwWLcj4
	PNaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Uw3XDuoJqBLwfp+rgXjLpsZ9IwKdToRb8ESMMUPf6vc=;
	b=VCB+Tf4ADhoYxSHA3ur1uOMMQc6G7mfbfa+vAAmux+Tr0S5zx67zFP24z9KbsoqOqn
	z+WTX+ubIehhPfBek4gwa/TpITHp9/Uvfb64IYfpj/v738ZG4gyTroo2FcKx+Tr2FG+9
	dBu4BMD1cYMODm3FzZ4Dac1Zb+EXkiF2Ld+VksR0Em3ef9+TugATt25q8rnl4jFa9vs2
	dl8Zn6Nuq1s7x+WoRd90b6D0++o6cBbXN/LHtcqh0NYc+hkXM+o0hrAtpiq0B9710rIV
	w9Nw83QILeGMqbgHdO63E6SgZClwSdn4CEoOhcPEjrZ/i6uadYHCO0rJpjrotm8MMvjz
	Y8jA==
X-Gm-Message-State: AHQUAuYSeCKQo16QTtDzZKe4YFdwKP9hXDeLN82zvCstc+VUbUPvk471
	nSAa9ImfQ6Df+lIuKX4PSvghXgHyDNdET76Wydo=
X-Google-Smtp-Source: AHgI3IZZZhgyCBGvXjOPep9jaSeLF/yO61sdikdnwfRq1OrCyCtE+hGJUZzN1dKffxkDiuxqqINAJ/0qorWJe5oMIP0=
X-Received: by 2002:a37:9e15:: with SMTP id h21mr3990806qke.2.1550856748673;
	Fri, 22 Feb 2019 09:32:28 -0800 (PST)
MIME-Version: 1.0
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Feb 2019 09:32:02 -0800
Message-ID: <CAMKF1srcik08nkrE0KRGKXrsVBZ_dstTRJL=JQeCfxkOv9j8Xw@mail.gmail.com>
To: Stephen Lawrence <stephen.lawrence@renesas.com>
Cc: "lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Fri, 22 Feb 2019 17:32:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 22, 2019 at 8:51 AM Stephen Lawrence
<stephen.lawrence@renesas.com> wrote:
>
> Hi Hongxu,
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Behalf
> > Of Hongxu Jia
> > Sent: 21 February 2019 11:37
> > To: richard.purdie@linuxfoundation.org; mhalstead@linuxfoundation.org;
> > ross.burton@intel.com; raj.khem@gmail.com; paul.eggleton@linux.intel.com;
> > yocto@yoctoproject.org
> > Cc: lpd-cdc-core-dev@windriver.com; Zhangle.Yang@windriver.com
> > Subject: [yocto] Review request 0/13: Contribute meta-tensorflow to Yocto
> >
> > Hi RP and Yocto folks,
> >
> > Currently AI on IoT edge becomes more and more popular, but there is no
> > machine learning framework in Yocto/OE. With the support of Eric
> > <Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com>
> > and Randy <randy.macleod@windriver.com>, after two months effort, I've
> > integrated TensorFlow to Yocto.
>
> Good work.
>
> You might be interested in the yocto layers for tensorflow, tensorflow-lite and caffe2
> on github here [1]. I'm not part of the team that developed that work but I forwarded
> your announcement to them. Perhaps there is the opportunity for some collaboration
> on the platform independent parts. The maintainer details are in the readme.
>
> [1] https://github.com/renesas-rz/meta-renesas-ai
>
> The layers were developed for the industrial focused Renesas RZ/G1 platforms.
>

It would be great to cherry-pick goodies from these layers and
maintain a single layer
which can be sustained and support wide variety of platforms and distributions.

> Regards
>
> Steve

