Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADF5AE00BFD; Sat,  5 May 2018 00:31:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6095E009E2
	for <yocto@yoctoproject.org>; Sat,  5 May 2018 00:31:24 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id f1-v6so30307257qtj.6
	for <yocto@yoctoproject.org>; Sat, 05 May 2018 00:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TSVcD+p/j92uAKDhI2qs11EBGegRYAMK7gpXdHIoo7A=;
	b=uwGMto3jEwpMRWOn+Cb2p9lktG5J3wUjo2h9EYnXDTdRNI62XZUnf+HtowFpnRkjhW
	l/OjYNJy0NUY/6jqh7ai3Nkaxp2DXbRdOY781yzQYczRESMfvoBsLfHT1jZO31S0BMfD
	cjvKsKPWSaL1Qc2iRQRWxkEM2nkbkGFFsC8eTuIUbqZy6mYsY99iymQFlCmPMztD5+O0
	/vDOLmnoWK04+die+B9ejXbgYKPABxVvaYHWs0wK52EgQPEF1TwtmmofY4pFcjjGm6ha
	HCXe1wgHg5oi2EzXQZiism+cqli1vu8BIPMBLU3Ym8fb1WhtYI/+U8WyZ/1tuiogtHnF
	Ht8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TSVcD+p/j92uAKDhI2qs11EBGegRYAMK7gpXdHIoo7A=;
	b=Zz3KG8YEIXw0bf0+oJDELuKQCFmOkh4tSBe8vDO8MSQsp7GgLCyCnyInfNotkUFlpG
	vvPDJbsyUBFNFmB0SS4EGRs2AvrdhOo0TOvIZvlf63g2FepPpY09iJmhTkb8CFBo2CPh
	MKcpJ0R1tsn+Lxobr4b45XdiSqCFGSQX5vAovOl3Ng8fDb3y1PYZbXkLqItHCO96EOlZ
	EYiwi7h/3HkjH1gmf1Ga0TUFZuL5uoAT6duqQ0jl+Odk4m5ZdVDRg0ujozhRsMlJjXj6
	dMuhNtLDfmaMIYt4nsjK81qdCuejY2AX3j61N2Isfe0dICopLrDOCL/zEfea1yKyGLUQ
	3Rbg==
X-Gm-Message-State: ALQs6tDUBu52qB9DN5O+FQWAYwY1OaGhZS6PQGdoxoM6NHvVUoKw1gfe
	+qVeolkkg9tKG5T+42f0GdbzgbWCW497m5ax7iU=
X-Google-Smtp-Source: AB8JxZqguhKMj5ri0QPg15CkCYBlY1w/nk1ebaSfCIxpWKk2AV+2q943reE6DmpFNsf12Y/tqx7QfqnHM7RXN/w9YkU=
X-Received: by 2002:ac8:18f9:: with SMTP id
	o54-v6mr27725779qtk.353.1525505483569; 
	Sat, 05 May 2018 00:31:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Sat, 5 May 2018 00:31:22 -0700 (PDT)
In-Reply-To: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sat, 5 May 2018 09:31:22 +0200
Message-ID: <CAGAf8LxceSXvK-pgfWYDvYLmcvMMK0D5q==PKG9jeRWs6YEbGA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] GCC 8.1
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
X-List-Received-Date: Sat, 05 May 2018 07:31:25 -0000
Content-Type: text/plain; charset="UTF-8"

> May fourth be with you !!

@off topic!

Who is here (and in wider context) Darth Vader? Bourne Kingpin (BK)? ;-)

Zoran
_______

On Sat, May 5, 2018 at 2:26 AM, Khem Raj <raj.khem@gmail.com> wrote:
> Hi All
>
> As you might have noticed that gcc 8.1 was released this week, I am
> calling out for some testing help on testing branch so we can weed out
> issues you might see in your setups. so if you have your
> builders idling over weekend, then you know what they can do this weekend :)
>
> Highlighted changes are
>
> https://gcc.gnu.org/gcc-8/changes.html
>
> and porting doc is
>
> https://gcc.gnu.org/gcc-8/porting_to.html
>
> The branch is here
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>
> Its uptodate on top of current master oe-core
>
> May fourth be with you !!
>
> Cheers!
>
> -Khem
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

